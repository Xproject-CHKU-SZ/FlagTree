"""F06 core suite: identical GPU capture; ordinary host latencies measured separately."""
import argparse
import gc
import hashlib
import json
import os
from pathlib import Path
import statistics
import time
import traceback

ROOT = Path(__file__).resolve().parent

def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeat-index', type=int, required=True)
    parser.add_argument('--route', choices=('eager', 'inductor', 'f06'), required=True)
    parser.add_argument('--smoke', action='store_true')
    parser.add_argument('--candidate', default='original', choices=('original','max_only','max_no_pattern'))
    parser.add_argument('--scope', default='large_activation', choices=('all','large_activation','diagnostic'))
    args = parser.parse_args()
    args.output.mkdir(exist_ok=False)
    manifest = json.loads((ROOT / 'source_manifest.json').read_text())
    for name, digest in manifest.items():
        assert sha(ROOT / name) == digest, name
    import torch
    import triton
    import triton.experimental
    from torch._dynamo.utils import counters
    from triton._C import libtriton
    triton.experimental.__path__.insert(0, str(ROOT / 'source/python/triton/experimental'))
    from triton.experimental import graph_fusion as gf
    from triton.experimental.graph_fusion import _inference
    _inference._LARGE_MATMUL_OPTIONS['max_epilogue_benchmarked_choices'] = 8
    from coverage_cases import cases, build_cpu_case
    assert str(Path(gf.__file__).resolve()).startswith(str(ROOT / 'source') + '/')
    torch.set_num_threads(1)
    torch.backends.cuda.matmul.allow_tf32 = False
    torch.backends.cudnn.allow_tf32 = False
    torch.backends.cuda.matmul.allow_fp16_reduced_precision_reduction = False
    torch.backends.cuda.matmul.allow_bf16_reduced_precision_reduction = False
    torch._dynamo.config.suppress_errors = False
    assert sorted(os.sched_getaffinity(0)) == [0]
    assert torch.cuda.device_count() == 1 and '4090' in torch.cuda.get_device_name()
    expected_identity = json.loads((ROOT / 'baseline_identity.json').read_text())
    package = Path(triton.__file__).parent
    identity = dict(torch=torch.__version__, triton=triton.__version__,
                    native_sha256=sha(libtriton.__file__),
                    compiler_sha256=sha(package / 'backends/nvidia/compiler.py'),
                    driver_sha256=sha(package / 'backends/nvidia/driver.py'),
                    fusion_logic_sha256={n: sha(Path(torch.__file__).parent / n)
                                         for n in expected_identity['fusion_logic_sha256']})
    assert identity == expected_identity
    mode_options = torch._inductor.list_mode_options()['max-autotune-no-cudagraphs']
    assert mode_options['max_autotune'] and mode_options['coordinate_descent_tuning']
    assert not mode_options.get('triton.cudagraphs', False)
    report = dict(status='running', route=args.route, repeat=args.repeat_index,
                  started_at=time.time(), identity=identity, device=torch.cuda.get_device_name(),
                  source_manifest=manifest, source_revision=json.loads((ROOT / 'revision.json').read_text()),
                  mode_options=mode_options,
                  route_definitions=dict(eager='original FX graph',
                    inductor='torch.compile backend=inductor fullgraph=True dynamic=False mode=max-autotune-no-cudagraphs',
                    f06='graph_fusion.compile static_inference=True avoid_bias_materialization=True fullgraph=True dynamic=False'),
                  protocol=dict(warmup_calls=256, cpu_preheat_seconds=0.2, threads=1, cpu_affinity=[0],
                    e2e='31 independent host timings: synchronize before start; one ordinary call; synchronize before stop; median',
                    host_batch='7 groups of 400 ordinary calls, synchronized at boundaries; median average call time',
                    gpu='same external CUDA Graph protocol for every route; 64 calls per graph except 8 for M=2048 MatMul; 7 groups of 20 replays; CUDA Events',
                    graph_warmup_replays=3, graph_side_stream_warmup=16,
                    tf32=False, reduced_precision_reduction=False, seed=61,
                    compile_autotune_capture_excluded=True, profiling_outside_timing=True,
                    numerical_tolerance='unchanged per-case historical thresholds',
                    shape_scope='fixed shapes, repeated fixed device input addresses, warm cache',
                    isolation='one process per route per round; reset only between cases; reverse route and case order in round B'),
                  cases=[])

    def save():
        temp = args.output / 'results.tmp'
        temp.write_text(json.dumps(report, indent=2, default=str))
        temp.replace(args.output / 'results.json')

    def counter_snapshot():
        return {k: dict(v) for k, v in counters.items() if k in ('stats', 'frames', 'inductor')}

    def execution(fn):
        return {name: getattr(fn, name) for name in ('plan_info', 'fast_calls', 'fallback_calls', 'last_fallback_reason') if hasattr(fn, name)}

    def fatal(exc):
        return any(s in str(exc).lower() for s in ('illegal memory', 'device-side assert', 'device lost', 'out of memory', 'cuda error', 'status 700'))

    def run_case(spec, row):
        torch._dynamo.reset()
        gc.collect()
        row['stage'] = 'build'
        gm, cpu_inputs, _, binding = build_cpu_case(spec)
        gm = gm.cuda()
        inputs = tuple(t.cuda() for t in cpu_inputs)
        row['input_binding'] = binding
        expected = gm(*inputs)
        originals = tuple(t.clone() for t in inputs)
        parameters = {n: t.clone() for n, t in gm.named_parameters()}
        torch.cuda.synchronize()
        row['stage'] = 'compile'
        start = time.perf_counter()
        if args.route == 'eager':
            fn = gm
        elif args.route == 'inductor':
            fn = torch.compile(gm, backend='inductor', fullgraph=True, dynamic=False, mode='max-autotune-no-cudagraphs')
        else:
            options = {} if args.candidate == 'original' else dict(max_autotune=True, coordinate_descent_tuning=True)
            if args.candidate == 'max_no_pattern':
                options['pattern_matcher'] = False
            with torch._inductor.config.patch(options):
                fn = gf.compile(gm, inputs, fullgraph=True, dynamic=False, static_inference=True, avoid_bias_materialization=True)
            row['candidate_options'] = options
            path = args.output / f"source-{spec['ordinal']}.py"
            path.write_text('\n\n'.join(fn.generated_sources))
            row['generated_source_file'] = path.name
        if args.route == 'inductor':
            from torch._inductor.utils import run_and_get_code
            value, sources = run_and_get_code(fn, *inputs)
            path = args.output / f"source-{spec['ordinal']}.py"
            path.write_text('\n\n'.join(sources))
            row['generated_source_file'] = path.name
        else:
            value = fn(*inputs)
        torch.cuda.synchronize()
        row['setup_seconds'] = time.perf_counter() - start
        row['execution'] = execution(fn)
        row['stage'] = 'initial_numerics'
        row['max_abs_error'] = (value.double() - expected.double()).abs().max().item()
        torch.testing.assert_close(value, expected, **spec['tolerance'])
        del value
        row['stage'] = 'retained_output_numerics'
        held = [fn(*inputs).clone() for _ in range(3)]
        for value in held:
            torch.testing.assert_close(value, expected, **spec['tolerance'])
        del held, value
        row['stage'] = 'changed_address_numerics'
        changed = tuple(t + 0.015 for t in inputs)
        actual, target = fn(*changed).clone(), gm(*changed)
        row['perturbed_max_abs_error'] = (actual.double() - target.double()).abs().max().item()
        torch.testing.assert_close(actual, target, **spec['tolerance'])
        del changed, actual, target
        row['stage'] = 'warmup'
        for _ in range(256):
            fn(*inputs)
        torch.cuda.synchronize()
        until = time.perf_counter() + 0.2
        while time.perf_counter() < until:
            pass
        row['stage'] = 'host_timing'
        row['counters_before_host'] = counter_snapshot()
        samples = []
        for _ in range(31):
            torch.cuda.synchronize()
            start = time.perf_counter_ns()
            fn(*inputs)
            torch.cuda.synchronize()
            samples.append((time.perf_counter_ns() - start) / 1000)
        row['e2e_us'] = dict(median_us=statistics.median(samples), samples_us=samples)
        samples = []
        for _ in range(7):
            torch.cuda.synchronize()
            start = time.perf_counter_ns()
            for _ in range(400):
                fn(*inputs)
            torch.cuda.synchronize()
            samples.append((time.perf_counter_ns() - start) / 400000)
        row['host_batch_us'] = dict(median_us=statistics.median(samples), samples_us=samples)
        row['counters_after_host'] = counter_snapshot()
        row['stage'] = 'host_timing_compile_check'
        assert row['counters_before_host'] == row['counters_after_host'], 'compiler counters changed inside host timing'
        row['stage'] = 'post_host_numerics'
        torch.testing.assert_close(fn(*inputs), expected, **spec['tolerance'])

        row['stage'] = 'capture'
        stream = torch.cuda.Stream()
        stream.wait_stream(torch.cuda.current_stream())
        with torch.cuda.stream(stream):
            for _ in range(16):
                fn(*inputs)
        stream.synchronize()
        repetitions = 8 if spec['K'] and spec['M'] == 2048 else 64
        captured = torch.cuda.CUDAGraph()
        with torch.cuda.graph(captured, stream=stream):
            for _ in range(repetitions - 1):
                fn(*inputs)
            capture_output = fn(*inputs)
        for _ in range(3):
            captured.replay()
        torch.cuda.synchronize()
        row['stage'] = 'capture_numerics'
        torch.testing.assert_close(capture_output, expected, **spec['tolerance'])
        # Check replay uses current input contents, with copies outside timing.
        for t in inputs:
            t.add_(0.015)
        captured.replay()
        torch.testing.assert_close(capture_output, gm(*inputs), **spec['tolerance'])
        for t, original in zip(inputs, originals):
            t.copy_(original)
        captured.replay()
        torch.testing.assert_close(capture_output, expected, **spec['tolerance'])
        row['stage'] = 'gpu_timing'
        row['counters_before_gpu'] = counter_snapshot()
        samples = []
        for _ in range(7):
            start_event, end_event = torch.cuda.Event(enable_timing=True), torch.cuda.Event(enable_timing=True)
            torch.cuda.synchronize()
            start_event.record()
            for _ in range(20):
                captured.replay()
            end_event.record()
            end_event.synchronize()
            samples.append(start_event.elapsed_time(end_event) * 1000 / (20 * repetitions))
        row['gpu_us'] = dict(median_us=statistics.median(samples), samples_us=samples,
                             invocations_per_graph=repetitions, replays_per_sample=20)
        row['counters_after_gpu'] = counter_snapshot()
        row['stage'] = 'gpu_timing_compile_check'
        assert row['counters_before_gpu'] == row['counters_after_gpu'], 'compiler counters changed inside GPU timing'
        row['stage'] = 'post_gpu_numerics'
        torch.testing.assert_close(capture_output, expected, **spec['tolerance'])
        del capture_output, captured
        row['stage'] = 'immutability'
        for t, original in zip(inputs, originals):
            torch.testing.assert_close(t, original, atol=0, rtol=0)
        for name, t in gm.named_parameters():
            torch.testing.assert_close(t, parameters[name], atol=0, rtol=0)
        row['stage'] = 'profile'
        with torch.profiler.profile(activities=[torch.profiler.ProfilerActivity.CPU, torch.profiler.ProfilerActivity.CUDA]) as prof:
            fn(*inputs)
            torch.cuda.synchronize()
        row['profile_gpu_events'] = [dict(name=e.name, duration_us=e.time_range.elapsed_us()) for e in prof.events() if e.device_type == torch.autograd.DeviceType.CUDA]
        row['profile_cpu_graph_events'] = [dict(name=e.key, count=e.count) for e in prof.key_averages() if 'graph' in e.key.lower()]
        row['execution'] = execution(fn)
        row['stage'] = 'route_check'
        assert not any(e['name'] == 'cudaGraphLaunch' for e in row['profile_cpu_graph_events']), 'unexpected native graph in ordinary route'
        assert row['execution'].get('fallback_calls', 0) == 0, 'F06 fallback was used'
        row.update(status='passed', stage='completed')

    selected = cases()
    if args.scope != 'all':
        selected = [s for s in selected if s['K'] and s['M'] >= 128 and s['kind'] != 'matmul_bias']
    if args.scope == 'diagnostic':
        selected = [s for s in selected if s['kind'] == 'matmul_bias_relu']
    if args.smoke:
        selected = [selected[i] for i in (0, 27, 114, 155, 194, 206)]
    if args.repeat_index:
        selected = list(reversed(selected))
    save()
    try:
        with torch.no_grad():
            for spec in selected:
                row = {k: spec[k] for k in ('ordinal', 'case_id', 'kind', 'dtype', 'M', 'N', 'K', 'tolerance')}
                row.update(status='running')
                report['cases'].append(row)
                save()
                try:
                    run_case(spec, row)
                except Exception as exc:
                    stage = row.get('stage', '')
                    status = 'numerical_failure' if isinstance(exc, AssertionError) and 'numerics' in stage else 'error'
                    row.update(status=status, error=f'{type(exc).__name__}: {exc}', traceback=traceback.format_exc())
                    save()
                    if fatal(exc):
                        raise
                save()
                print(json.dumps(dict(case_id=row['case_id'], route=args.route, status=row['status'], stage=row['stage'],
                    gpu_us=row.get('gpu_us', {}).get('median_us'), e2e_us=row.get('e2e_us', {}).get('median_us'),
                    host_batch_us=row.get('host_batch_us', {}).get('median_us'))), flush=True)
                gc.collect()
        report.update(status='completed', ended_at=time.time())
        save()
    except BaseException as exc:
        report.update(status='failed', error=str(exc), traceback=traceback.format_exc())
        save()
        raise

if __name__ == '__main__':
    main()
