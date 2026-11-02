"""Three-route same-process comparison on the exact report117 inputs and host protocol."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import statistics
import sys
import time
import traceback

ROOT = Path(__file__).resolve().parent


def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def main():
    p = argparse.ArgumentParser()
    p.add_argument('--output', type=Path, required=True)
    p.add_argument('--repeat-index', type=int, required=True)
    p.add_argument('--smoke', action='store_true')
    args = p.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    manifest = json.loads((ROOT / 'source_manifest.json').read_text())
    for name, digest in manifest['files'].items():
        assert sha(ROOT / name) == digest, name
    import torch
    import triton
    import triton.experimental
    from triton._C import libtriton
    from triton.runtime import driver
    from torch._inductor.utils import run_and_get_code
    triton.experimental.__path__.insert(0, str(ROOT / 'source/python/triton/experimental'))
    from triton.experimental import graph_fusion as gf
    from triton.experimental import fusion as integration
    assert str(Path(integration.__file__).resolve()).startswith(str(ROOT / 'source') + '/')
    assert str(Path(gf.__file__).resolve()).startswith(str(ROOT / 'source') + '/')
    from coverage_cases import build_cpu_case, cases
    torch.set_num_threads(1)
    torch.backends.cuda.matmul.allow_tf32 = False
    torch.backends.cudnn.allow_tf32 = False
    torch.backends.cuda.matmul.allow_fp16_reduced_precision_reduction = False
    torch.backends.cuda.matmul.allow_bf16_reduced_precision_reduction = False
    torch._dynamo.config.suppress_errors = False
    expected_identity = json.loads((ROOT / 'baseline_identity.json').read_text())
    package = Path(triton.__file__).parent
    identity = dict(torch=torch.__version__, triton=triton.__version__,
                    native_sha256=sha(libtriton.__file__),
                    compiler_sha256=sha(package / 'backends/nvidia/compiler.py'),
                    driver_sha256=sha(package / 'backends/nvidia/driver.py'),
                    fusion_logic_sha256={n: sha(Path(torch.__file__).parent / n)
                                         for n in expected_identity['fusion_logic_sha256']})
    assert identity == expected_identity, (identity, expected_identity)
    assert type(driver.active).__module__ == 'triton.backends.nvidia.driver'
    assert '4090' in torch.cuda.get_device_name()
    assert torch.cuda.device_count() == 1
    assert sorted(os.sched_getaffinity(0)) == [0]
    report = dict(status='running', started_at=time.time(), pid=os.getpid(),
                  repeat_index=args.repeat_index, identity=identity,
                  source_revision=json.loads((ROOT / 'revision.json').read_text()),
                  device=torch.cuda.get_device_name(), source_manifest=manifest,
                  affinity=sorted(os.sched_getaffinity(0)), script_sha256=sha(__file__),
                  protocol=dict(warmup_calls=8, rounds=7, calls_per_round=40,
                                cpu_preheat_seconds=0.5, threads=1,
                                timing='synchronized host wall including Python and output allocation',
                                compile_excluded=True, cuda_graph=False, device_diagnostic='all numerically valid routes, all 135 cases: five alternating CUDA graph trials,20ms each; separate from host results', tf32=False,
                                low_precision_reduction=False, seed=61,
                                aggregation='median per process, median across two processes, geomean per-case ratios',
                                correctness='original report tolerances, retained outputs, perturbed input and immutability',
                                special_values='not included in original report protocol'),
                  route_definitions=dict(eager='original FX graph',
                                         inductor='torch.compile backend=inductor fullgraph=True dynamic=False default mode',
                                         current_static='current graph_fusion.compile static_inference=True avoid_bias_materialization=True fullgraph=True dynamic=False'),
                  cases=[])

    def save():
        tmp = args.output / 'results.tmp'
        tmp.write_text(json.dumps(report, indent=2, default=str) + '\n')
        tmp.replace(args.output / 'results.json')

    def fatal(exc):
        text = str(exc).lower()
        return any(word in text for word in ('illegal memory', 'device-side assert',
                   'device lost', 'out of memory', 'status700', 'status 700', 'cuda error'))

    def snapshot_execution(fn):
        result = {}
        for name in ('plan_info', 'fast_calls', 'fallback_calls', 'last_fallback_reason', '_f06_static_rejection'):
            value = getattr(fn, name, None)
            if value is not None:
                result[name] = value
        return result

    save()
    selected = cases()
    if args.smoke:
        selected = [selected[i] for i in (0, 10, 117, 134)]
    try:
        with torch.no_grad():
            for spec in selected:
                row = {k: spec[k] for k in ('ordinal', 'case_id', 'kind', 'dtype', 'M', 'N', 'K', 'tolerance')}
                row.update(status='started', routes={})
                report['cases'].append(row)
                save()
                graph, cpu_inputs, _, binding = build_cpu_case(spec)
                row['template_matches'] = gf.composition_candidates(graph)
                graph = graph.to('cuda')
                # Preserve report parameter requires_grad and all graph semantics.
                inputs = tuple(x.to('cuda') for x in cpu_inputs)
                row['input_binding'] = binding
                originals = tuple(x.clone() for x in inputs)
                params_before = {n: x.clone() for n, x in graph.named_parameters()}
                expected = graph(*inputs)
                torch.cuda.synchronize()
                valid = {}
                for label in ('eager', 'inductor', 'current_static'):
                    rec = row['routes'][label] = dict(status='preparing')
                    save()
                    try:
                        start = time.perf_counter()
                        if label == 'eager':
                            fn = graph
                        else:
                            torch._dynamo.reset()
                            if label == 'inductor':
                                fn = torch.compile(graph, backend='inductor', fullgraph=True, dynamic=False)
                            else:
                                fn = gf.compile(graph, inputs, fullgraph=True, dynamic=False,
                                                     static_inference=True, avoid_bias_materialization=True)
                            if hasattr(fn, 'generated_sources'):
                                sources = fn.generated_sources
                                fn(*inputs)
                            else:
                                _, sources = run_and_get_code(fn, *inputs)
                            rec['generated_sources'] = []
                            for index, source in enumerate(sources):
                                ext = "py"
                                name = f"{spec['ordinal']:03d}-{label}-{index}.{ext}"
                                (args.output / name).write_text(source)
                                rec['generated_sources'].append(dict(file=name, sha256=sha(args.output / name)))
                        torch.cuda.synchronize()
                        rec['setup_seconds'] = time.perf_counter() - start
                        value = fn(*inputs)
                        difference = (value.double() - expected.double()).abs()
                        rec.update(max_abs_error=difference.max().item(),
                                   max_rel_error=(difference / expected.double().abs().clamp_min(1e-8)).max().item(),
                                   rmse=difference.square().mean().sqrt().item(),
                                   all_finite=bool(torch.isfinite(value).all()),
                                   execution=snapshot_execution(fn))
                        torch.testing.assert_close(value, expected, **spec['tolerance'])
                        held = [fn(*inputs) for _ in range(3)]
                        assert len({v.data_ptr() for v in held}) == 3, 'output storage reused'
                        changed = tuple(x + 0.015 for x in inputs)
                        changed_actual, changed_expected = fn(*changed), graph(*changed)
                        rec['perturbed_max_abs_error'] = (changed_actual.double()-changed_expected.double()).abs().max().item()
                        torch.testing.assert_close(changed_actual, changed_expected, **spec['tolerance'])
                        for value in held:
                            torch.testing.assert_close(value, expected, **spec['tolerance'])
                            assert all(value.data_ptr() != x.data_ptr() for x in inputs)
                        for a, b in zip(inputs, originals):
                            torch.testing.assert_close(a, b, atol=0, rtol=0)
                        for name, value in graph.named_parameters():
                            torch.testing.assert_close(value, params_before[name], atol=0, rtol=0)
                        rec.update(status='valid', execution=snapshot_execution(fn),
                                   max_abs_error=float((held[0].float() - expected.float()).abs().max()))
                        valid[label] = fn
                    except Exception as exc:
                        rec.update(status='numerical_failure' if isinstance(exc, AssertionError) else 'error',
                                   error=f'{type(exc).__name__}: {exc}', traceback=traceback.format_exc())
                        save()
                        if fatal(exc):
                            raise
                for fn in valid.values():
                    for _ in range(8):
                        fn(*inputs)
                torch.cuda.synchronize()
                end_preheat = time.perf_counter() + 0.5
                while time.perf_counter() < end_preheat:
                    pass
                samples = {label: [] for label in valid}
                order = list(valid)
                for j in range(7):
                    labels = order[j % len(order):] + order[:j % len(order)]
                    if (j + args.repeat_index) % 2:
                        labels = labels[::-1]
                    for label in labels:
                        torch.cuda.synchronize()
                        start = time.perf_counter_ns()
                        for _ in range(40):
                            valid[label](*inputs)
                        torch.cuda.synchronize()
                        samples[label].append((time.perf_counter_ns() - start) / 40000)
                for label, fn in valid.items():
                    torch.testing.assert_close(fn(*inputs), expected, **spec['tolerance'])
                    for a, b in zip(inputs, originals):
                        torch.testing.assert_close(a, b, atol=0, rtol=0)
                    for name, value in graph.named_parameters():
                        torch.testing.assert_close(value, params_before[name], atol=0, rtol=0)
                    row['routes'][label].update(status='passed', wall_us=samples[label],
                        median_us=statistics.median(samples[label]), execution=snapshot_execution(fn),
                        post_timing_correctness=True, inputs_parameters_unchanged=True)
                if False:
                    execution = row['routes']['current_static'].get('execution', {})
                    assert execution.get('plan_info', {}).get('prepared_launch') == 'enabled', execution
                    assert execution.get('fallback_calls') == 0, execution
                if valid:
                    from triton.testing import do_bench_cudagraph
                    device_samples = {k: [] for k in valid}
                    for j in range(5):
                        labels = order[j % len(order):] + order[:j % len(order)]
                        if (j+args.repeat_index)%2: labels.reverse()
                        for label in labels:
                            fn=valid[label]
                            device_samples[label].append(1000*float(do_bench_cudagraph(lambda fn=fn:fn(*inputs),rep=20)))
                    for label, values in device_samples.items():
                        row['routes'][label].update(device_us=statistics.median(values),device_samples_us=values)
                row['status'] = 'completed' 
                save()
                print(json.dumps(dict(ordinal=spec['ordinal'], case_id=spec['case_id'],
                      routes={k: dict(status=v['status'], us=v.get('median_us')) for k, v in row['routes'].items()})), flush=True)
        report['case_specs'] = selected
        report.update(status='completed', ended_at=time.time())
        save()
    except BaseException as exc:
        report.update(status='aborted', error=f'{type(exc).__name__}: {exc}', traceback=traceback.format_exc())
        save()
        raise


if __name__ == '__main__':
    main()
