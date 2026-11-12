"""One isolated P800 case/resource. The parent enforces timeout and idle-device checks.

All runtime caches and temporary files must be under the confirmed remote
zhaoweiming directory. This script does not install or modify the runtime.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import statistics
import time
import traceback

ROOT = Path(__file__).resolve().parent


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--ordinal', type=int, required=True)
    parser.add_argument('--route', choices=('eager', 'sdnn', 'cluster', 'split'), required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--write-root', type=Path, required=True)
    parser.add_argument('--repeat', type=int, default=0)
    parser.add_argument('--timing', choices=('graph', 'e2e_only'), default='graph')
    args = parser.parse_args()
    allowed = args.write_root.resolve()
    assert allowed.name == 'zhaoweiming', 'confirm the actual user-owned zhaoweiming directory first'
    assert ROOT.is_relative_to(allowed) and args.output.resolve().is_relative_to(allowed)
    for name in ('TMPDIR', 'TRITON_CACHE_DIR', 'TORCHINDUCTOR_CACHE_DIR', 'CUDA_CACHE_PATH', 'XDG_CACHE_HOME'):
        assert name in os.environ and Path(os.environ[name]).resolve().is_relative_to(allowed), name
    assert os.environ.get('PYTHONDONTWRITEBYTECODE') == '1'
    args.output.mkdir(exist_ok=False)
    report = dict(status='running', route=args.route, ordinal=args.ordinal, repeat=args.repeat,
                  timing=args.timing, started_at=time.time())

    def save():
        temp = args.output/'result.tmp'
        temp.write_text(json.dumps(report, indent=2, default=str))
        temp.replace(args.output/'result.json')

    def stage(name):
        report['stage'] = name
        save()
        print(name, flush=True)

    try:
        stage('imports')
        import torch
        import triton
        import triton.experimental
        from triton._C import libtriton
        triton.experimental.__path__.insert(0, str(ROOT/'source/python/triton/experimental'))
        from triton.experimental.graph_fusion import _inference, _resource_codegen as codegen
        from coverage_cases import cases, build_cpu_case
        from torch._inductor import config
        from torch._dynamo.utils import counters
        assert Path(_inference.__file__).resolve().is_relative_to(ROOT/'source')
        target = codegen.baidu_target()
        assert target and target['arch'] == 3 and target['warp_size'] == 1, target
        assert torch.cuda.device_count() == 1, 'parent must select one idle physical P800'
        torch.set_num_threads(1)
        torch.backends.cuda.matmul.allow_tf32 = False
        torch.backends.cudnn.allow_tf32 = False
        torch.backends.cuda.matmul.allow_fp16_reduced_precision_reduction = False
        torch.backends.cuda.matmul.allow_bf16_reduced_precision_reduction = False
        torch._dynamo.config.suppress_errors = False
        report.update(torch=torch.__version__, triton=triton.__version__, target=target,
                      device=torch.cuda.get_device_name(), affinity=sorted(os.sched_getaffinity(0)),
                      native_sha256=hashlib.sha256(Path(libtriton.__file__).read_bytes()).hexdigest())
        props = torch.cuda.get_device_properties(0)
        report['cuda_compatibility_properties'] = dict(
            capability=torch.cuda.get_device_capability(0),
            shared_memory_per_block_optin=getattr(props, 'shared_memory_per_block_optin', None),
            multiprocessor_count=props.multi_processor_count)
        spec = cases()[args.ordinal]
        report['case'] = spec

        def snapshot():
            return {k:dict(v) for k,v in counters.items() if k in ('stats','frames','inductor')}

        def close(actual, expected):
            # CPU comparison avoids vendor device-side comparison implementation
            # issues. Transfer and validation are always outside timing.
            torch.testing.assert_close(actual.detach().cpu(), expected.detach().cpu(), **spec['tolerance'])

        with torch.no_grad():
            stage('build_inputs')
            gm, cpu_inputs, _, binding = build_cpu_case(spec)
            gm = gm.cuda()
            inputs = tuple(t.cuda() for t in cpu_inputs)
            originals = tuple(t.clone() for t in inputs)
            attrs = {n:t.detach().clone() for n,t in gm.named_parameters()}
            expected = gm(*inputs)
            torch.cuda.synchronize()
            import subprocess
            physical_device = int(os.environ['F06_PHYSICAL_DEVICE'])
            monitor_env = {k:v for k,v in os.environ.items() if k not in ('LD_LIBRARY_PATH', 'LD_PRELOAD')}
            physical_proof = subprocess.check_output(
                ['xpu-smi', '-q', '-d', 'PIDS', '-i', str(physical_device)],
                text=True, env=monitor_env, timeout=10)
            import re
            assert re.search(r'\b' + str(os.getpid()) + r'\b', physical_proof), physical_proof
            report.update(physical_device=physical_device, physical_process_proof=physical_proof)
            report['input_binding'] = binding
            stage('compile')
            begin = time.perf_counter()
            if args.route == 'eager':
                fn = gm
            else:
                analysis = _inference._analyze(gm, inputs)
                lifted = _inference._lift_graph_module(gm, analysis.placeholders, analysis.attr_targets)
                flat = inputs + analysis.attr_values
                options = dict(emulate_precision_casts=True, pattern_matcher=False,
                               epilogue_fusion=True, benchmark_epilogue_fusion=False,
                               size_asserts=False, **{'triton.cudagraphs':False})
                if hasattr(config, 'use_static_cuda_launcher'):
                    # The actual target is Baidu XPU; preserve its native Triton
                    # launcher and inspect the binary bound to that launcher.
                    options['use_static_cuda_launcher'] = False
                if hasattr(config, 'max_autotune_prune_choices_based_on_shared_mem'):
                    # NVIDIA staging/shared-memory estimates do not describe
                    # P800 resources; the XPU backend validates native configs.
                    options['max_autotune_prune_choices_based_on_shared_mem'] = False
                # Keep identical numerical semantics on both resources. Missing
                # compiler support is an error, never a reason to weaken casts.
                with config.patch(options):
                    if args.route == 'split':
                        from split_compile_v2 import compile_split
                        compiled, proof = compile_split(lifted, flat, codegen)
                    else:
                        compiled, proof = codegen.compile_region(
                            lifted, flat, args.route, matmul_path='template' if spec['K'] else 'external')
                assert proof['resource_verified'] and not proof['external_calls'], proof
                report['resource_proof'] = proof
                report['compiler_options'] = options
                (args.output/'generated.py').write_text(proof['source_code'])

                def fn(*xs):
                    values = tuple(_inference._resolve_attr(gm, name) for name in analysis.attr_targets)
                    return compiled(list(xs + values))[0]

            actual = fn(*inputs)
            torch.cuda.synchronize()
            report['setup_seconds'] = time.perf_counter()-begin
            stage('initial_numerics')
            report['max_abs_error'] = (actual.cpu().double()-expected.cpu().double()).abs().max().item()
            close(actual, expected)
            held = [fn(*inputs) for _ in range(3)]
            assert len({t.data_ptr() for t in held}) == 3
            changed = tuple(t+0.015 for t in inputs)
            close(fn(*changed), gm(*changed))
            for t in held:
                close(t, expected)
            del held, changed, actual
            stage('special_numerics')
            special = tuple(t.clone() for t in inputs)
            special[0].view(-1)[:5] = torch.tensor(
                [float('nan'),float('inf'),-float('inf'),0.,-0.],
                device=inputs[0].device,dtype=inputs[0].dtype)
            got, want = fn(*special).cpu(), gm(*special).cpu()
            torch.testing.assert_close(got, want, equal_nan=True, **spec['tolerance'])
            assert torch.equal(torch.isnan(got),torch.isnan(want))
            assert torch.equal(torch.isinf(got),torch.isinf(want))
            del special, got, want
            stage('warmup')
            for _ in range(256):
                fn(*inputs)
            torch.cuda.synchronize()
            report['counters_before'] = snapshot()
            stage('e2e_timing')
            samples=[]
            for _ in range(31):
                torch.cuda.synchronize()
                begin=time.perf_counter_ns()
                fn(*inputs)
                torch.cuda.synchronize()
                samples.append((time.perf_counter_ns()-begin)/1000)
            report['e2e_us'] = dict(median_us=statistics.median(samples), samples_us=samples)
            close(fn(*inputs), expected)
            if args.timing == 'graph':
                stage('graph_capture')
                stream = torch.cuda.Stream()
                # The deployed XPU runtime may lack stream-wait-event; use a
                # device barrier before side-stream preparation, outside timing.
                torch.cuda.synchronize()
                with torch.cuda.stream(stream):
                    for _ in range(16):
                        fn(*inputs)
                torch.cuda.synchronize()
                repetitions = 8 if spec['K'] and spec['M']==2048 else 64
                graph = torch.cuda.CUDAGraph()
                with torch.cuda.graph(graph, stream=stream):
                    for _ in range(repetitions-1):
                        fn(*inputs)
                    output = fn(*inputs)
                for _ in range(3):
                    graph.replay()
                torch.cuda.synchronize()
                stage('graph_numerics')
                close(output, expected)
                for t in inputs:
                    t.add_(0.015)
                graph.replay()
                close(output, gm(*inputs))
                for t, original in zip(inputs, originals):
                    t.copy_(original)
                graph.replay()
                close(output, expected)
                stage('gpu_timing')
                samples=[]
                for _ in range(7):
                    a,b = torch.cuda.Event(enable_timing=True),torch.cuda.Event(enable_timing=True)
                    torch.cuda.synchronize()
                    a.record()
                    for _ in range(20):
                        graph.replay()
                    b.record()
                    b.synchronize()
                    samples.append(a.elapsed_time(b)*1000/(20*repetitions))
                report['gpu_us'] = dict(median_us=statistics.median(samples), samples_us=samples,
                                        invocations_per_graph=repetitions, replays_per_sample=20)
                close(output, expected)
            if args.route == 'split':
                stage('component_diagnostics')
                from split_compile_v2 import measure_components
                report['component_diagnostics'] = measure_components(compiled, spec)
            stage('final_checks')
            report['counters_after'] = snapshot()
            assert report['counters_before'] == report['counters_after']
            for t,original in zip(inputs,originals):
                torch.testing.assert_close(t.cpu(), original.cpu(), atol=0, rtol=0)
            for name,t in gm.named_parameters():
                torch.testing.assert_close(t.cpu(), attrs[name].cpu(), atol=0, rtol=0)
            report.update(status='passed',stage='completed',ended_at=time.time())
            save()
    except BaseException as exc:
        text = str(exc)
        import sys
        policy = sys.modules.get('triton.experimental.graph_fusion._p800_compiler')
        rejected = policy.rejections() if policy and hasattr(policy, 'rejections') else []
        report['resource_rejections'] = rejected
        if ('unsupported_resource' in text or 'Cluster resource cannot compile an SDNN-required kernel' in text
                or (rejected and 'NoValidChoicesError' in text)):
            status='unsupported_resource'
        elif isinstance(exc, AssertionError) and 'numerics' in report.get('stage',''):
            status='numerical_failure'
        else:
            status='error'
        report.update(status=status,error=f'{type(exc).__name__}: {exc}',traceback=traceback.format_exc())
        save()
        raise


if __name__ == '__main__':
    main()
