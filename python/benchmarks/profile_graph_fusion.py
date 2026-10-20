"""Paired F06 wall-time, launch-only and Python profile measurements.

All throughput comparisons allocate a new result each call. The prepared
callable timing measures independent component cost and records whether its
two held results actually reuse storage; component timings are not device-only.
"""
import argparse
import cProfile
import hashlib
import importlib.util
import json
from pathlib import Path
import pstats
import statistics
import time


def load_package(name, path):
    import sys
    spec = importlib.util.spec_from_file_location(name, path / '__init__.py',
                                                submodule_search_locations=[str(path)])
    module = importlib.util.module_from_spec(spec)
    sys.modules[name] = module
    spec.loader.exec_module(module)
    return module


def _cpu_xpu_bf16_mm_round(value):
    """XPU BF16 matrix materialization: nearest, ties away from zero.

    Controlled P800 probes found RNU here with zero mismatches for normal
    values; a generic CPU BF16 cast is RNE.  Quantize the FP32 bit pattern by
    adding half a BF16 ulp and truncating.  Infinities stay infinite and NaNs
    are quieted, never converted to infinities.  Subnormal FTZ is not modeled.
    """
    import torch
    value = value.float()
    bits = value.view(torch.int32).to(torch.int64) & 0xffffffff
    rounded = torch.where(torch.isfinite(value), (bits + 0x8000) & 0xffff0000, bits)
    rounded = torch.where(torch.isnan(value), (bits | 0x00400000) & 0xffff0000, rounded)
    signed = torch.where(rounded >= 0x80000000, rounded - 0x100000000, rounded)
    return signed.to(torch.int32).view(torch.float32).to(torch.bfloat16)


def _cpu_xpu_bf16_mm_interval(product, absproductsum, bias, reduction, relu):
    """Bound materialized BF16 mm over normal-range FP32 accumulation error.

    For exact double product P and S=sum(abs(a)*abs(b)), finite FP32 FMA /
    reduction satisfies |fp32(P)-P| <= gamma*S with gamma=K*u/(1-K*u) and
    u=2^-24.  Convert both double bounds to FP32 and widen one FP32 ulp
    outward before XPU BF16 RNU materialization.  The bias add remains RNE.
    """
    import torch
    u = 2.0 ** -24
    gamma = reduction * u / (1.0 - reduction * u)
    lo32 = (product - gamma * absproductsum).float()
    hi32 = (product + gamma * absproductsum).float()
    lo32 = torch.nextafter(lo32, torch.full_like(lo32, float('-inf')))
    hi32 = torch.nextafter(hi32, torch.full_like(hi32, float('inf')))
    if not bool(torch.isfinite(lo32).all() and torch.isfinite(hi32).all()):
        raise AssertionError('non-finite FP32 accumulation interval')
    lo = _cpu_xpu_bf16_mm_round(lo32)
    hi = _cpu_xpu_bf16_mm_round(hi32)
    lo = (lo.double() + bias).to(torch.bfloat16)
    hi = (hi.double() + bias).to(torch.bfloat16)
    if relu:
        lo, hi = torch.relu(lo), torch.relu(hi)
    if not bool(torch.isfinite(lo).all() and torch.isfinite(hi).all()):
        raise AssertionError('non-finite BF16 interval endpoint')
    if not bool((lo <= hi).all()):
        raise AssertionError('invalid BF16 accumulation interval')
    return lo, hi, gamma


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--source-root', type=Path, required=True)
    parser.add_argument('--baseline-root', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--profile', action='store_true')
    parser.add_argument('--lowp-profile', action='store_true')
    parser.add_argument('--bench', action='store_true')
    parser.add_argument('--extended', action='store_true')
    parser.add_argument('--lowp-extended', action='store_true')
    parser.add_argument('--sweep', action='store_true')
    parser.add_argument('--sweep-matmul', action='store_true')
    args = parser.parse_args()
    lowp_profile = args.lowp_profile
    profile_mode = args.profile or lowp_profile
    args.output.mkdir(parents=True, exist_ok=True)
    import torch
    import triton
    import triton.experimental
    from triton.runtime import driver
    torch.set_num_threads(1)
    torch.backends.cuda.matmul.allow_tf32 = False
    torch.backends.cuda.matmul.allow_fp16_reduced_precision_reduction = False
    torch.backends.cuda.matmul.allow_bf16_reduced_precision_reduction = False
    packages = {name: load_package('triton.experimental.f06_' + name,
                                  root / 'python/triton/experimental/graph_fusion')
                for name, root in [('baseline', args.baseline_root), ('candidate', args.source_root)]}
    test_path = args.source_root / 'python/test/unit/runtime/test_graph_fusion.py'
    triton.experimental.__path__.insert(0, str(args.source_root / 'python/triton/experimental'))
    spec = importlib.util.spec_from_file_location('f06_cases', test_path)
    cases = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(cases)
    report = {'device': torch.cuda.get_device_name(), 'torch': torch.__version__,
              'driver': type(driver.active).__module__, 'triton': triton.__version__,
              'policy': 'paired rotated-order synchronized wall time; fresh outputs; TF32 disabled',
              'profile_mode': 'lowp_profile' if lowp_profile else 'profile' if args.profile else None,
              'sources': {name: {p.name: hashlib.sha256(p.read_bytes()).hexdigest()
                                  for p in (root / 'python/triton/experimental/graph_fusion').glob('*.py')}
                          for name, root in [('baseline', args.baseline_root), ('candidate', args.source_root)]},
              'cases': []}

    def save():
        (args.output / 'results.json').write_text(json.dumps(report, indent=2) + '\n')

    def measure(function, count=40):
        torch.cuda.synchronize()
        start = time.perf_counter_ns()
        for _ in range(count):
            function()
        torch.cuda.synchronize()
        return (time.perf_counter_ns() - start) / count / 1000

    lowp_extended = args.lowp_extended
    dtypes = ((torch.float16, torch.bfloat16) if (lowp_extended or lowp_profile) else
              (torch.float32,) if (args.profile or args.extended) else
              (torch.float32, torch.float16, torch.bfloat16))
    sizes = ((32, 256),) if profile_mode else ((16, 128), (32, 256), (64, 1024), (128, 512))
    save()
    if args.sweep_matmul:
        from triton.experimental.f06_candidate import _kernels
        report['sweep'] = []
        for rows, cols in ((32,256),(64,1024)):
            x,w,b=cases.inputs_for('matmul_bias_relu','cuda',torch.float32,rows=rows,columns=cols)
            y=torch.empty((rows,cols),device='cuda')
            expected=(x@w+b).relu()
            for bn in (256,512):
                for cores in ((64,32) if bn == 256 else (64,)):
                    kernel_args=(x,w,b,y,rows,cols,64,0,1,True,bn)
                    grid=(rows*triton.cdiv(cols,bn),1,1)
                    compiled=_kernels._matmul_xpu_tiled.warmup(*kernel_args,grid=grid,core_num=cores,
                        buffer_size_limit=512,is_use_mask_zero=False,enable_fp_fusion=False,isCloseUnrollControl=True)
                    launch=compiled[grid]
                    launch(*kernel_args)
                    torch.testing.assert_close(y,expected,rtol=3e-4,atol=3e-4)
                    samples=[measure(lambda:launch(*kernel_args),40) for _ in range(5)]
                    row={'shape':[rows,cols,64],'cores':cores,'bn':bn,'wall_us':samples,'median_us':statistics.median(samples)}
                    report['sweep'].append(row);save();print(json.dumps(row),flush=True)
        return 0
    if args.sweep and '.xpu.' in report['driver']:
        from triton.experimental.f06_candidate import _kernels
        report['sweep'] = []
        for cols in (1024,):
            x, r = cases.inputs_for('add_softmax', 'cuda', torch.float32, rows=32, columns=cols)
            y = torch.empty_like(x)
            expected = (x+r).softmax(-1)
            for cores in (64, 32, 16, 8):
                kernel_args=(x,r,y,cols,0,True,triton.next_power_of_2(cols))
                compiled=_kernels._softmax.warmup(*kernel_args,grid=(32,),core_num=cores,
                    buffer_size_limit=512,is_use_mask_zero=False,enable_fp_fusion=False)
                launch=compiled[(32,1,1)]
                launch(*kernel_args)
                torch.testing.assert_close(y,expected,rtol=3e-4,atol=3e-4)
                samples=[measure(lambda: launch(*kernel_args),100) for _ in range(7)]
                row={'shape':[32,cols],'cores':cores,'wall_us':samples,'median_us':statistics.median(samples)}
                report['sweep'].append(row);save();print(json.dumps(row),flush=True)
        return 0
    if args.sweep:
        from triton.experimental.f06_candidate import _kernels
        import itertools
        report['sweep'] = []
        for rows, columns, dtype in itertools.product((16, 64), (128, 1024), (torch.float32, torch.float16)):
            inputs = cases.inputs_for('matmul_bias_relu', 'cuda', dtype, rows=rows, columns=columns)
            x, w, b = inputs
            y = torch.empty((rows, columns), device='cuda', dtype=dtype)
            expected = (x @ w + b).relu()
            configurations = [(32,64,32,4,3), (16,32,32,4,2), (16,64,32,4,2),
                              (16,32,32,4,1), (32,32,32,4,2), (16,64,64,4,2)]
            for bm,bn,bk,warps,stages in configurations:
                kernel_args = (*inputs,y,rows,columns,64,0,1,True,bm,bn,bk)
                compiled = _kernels._matmul.warmup(*kernel_args,
                    grid=(triton.cdiv(rows,bm),triton.cdiv(columns,bn)),num_warps=warps,
                    num_stages=stages,enable_fp_fusion=False)
                launch=compiled[(triton.cdiv(rows,bm),triton.cdiv(columns,bn),1)]
                launch(*kernel_args)
                torch.testing.assert_close(y,expected,rtol=3e-3,atol=3e-3)
                graph_capture=torch.cuda.CUDAGraph()
                with torch.cuda.graph(graph_capture):
                    for _ in range(100): launch(*kernel_args)
                samples=[]
                for _ in range(5):
                    start,end=torch.cuda.Event(enable_timing=True),torch.cuda.Event(enable_timing=True)
                    start.record();graph_capture.replay();end.record();end.synchronize()
                    samples.append(start.elapsed_time(end)*10)
                row={'shape':[rows,columns,64],'dtype':str(dtype),'config':[bm,bn,bk,warps,stages],
                     'device_us':statistics.median(samples)}
                report['sweep'].append(row);save();print(json.dumps(row),flush=True)
        return 0
    with torch.no_grad():
        for model, kind in cases.MODELS:
            if (lowp_extended or lowp_profile) and not kind.startswith("matmul"):
                continue
            for dtype in dtypes:
                dimensions = [(m, n, 64) for m, n in sizes]
                if lowp_profile:
                    dimensions = [(32, 256, 64)]
                elif lowp_extended:
                    dimensions = [(17,129,63), (32,128,256), (16,128,1024), (256,1024,256)]
                elif args.extended:
                    dimensions = ([(17,129,63), (32,128,256), (16,128,1024), (256,1024,256)]
                                  if kind.startswith("matmul") else [(256,1024,0), (32,2048,0), (32,4096,0)])
                for rows, columns, reduction in dimensions:
                    print(kind, str(dtype), rows, columns, flush=True)
                    inputs = cases.inputs_for(kind, 'cuda', dtype, rows=rows, columns=columns)
                    if kind.startswith("matmul") and reduction != 64:
                        gen = torch.Generator().manual_seed(61)
                        inputs = (torch.randn((rows, reduction), generator=gen).to(device='cuda', dtype=dtype),
                                  torch.randn((reduction, columns), generator=gen).to(device='cuda', dtype=dtype),
                                  inputs[2])
                    graph = torch.fx.symbolic_trace(model())
                    plans = {name: package.compile(graph, inputs) for name, package in packages.items()}
                    expected = graph(*inputs)
                    cpu_expected = None
                    interval = None
                    if lowp_extended:
                        product = (inputs[0].detach().cpu().double()
                                   @ inputs[1].detach().cpu().double())
                        if dtype == torch.bfloat16 and '.xpu.' in report['driver']:
                            cpu_product = _cpu_xpu_bf16_mm_round(product)
                            mm_rounding = 'xpu_bf16_nearest_ties_away'
                            absproductsum = (inputs[0].detach().cpu().double().abs()
                                             @ inputs[1].detach().cpu().double().abs())
                            interval = _cpu_xpu_bf16_mm_interval(
                                product, absproductsum, inputs[2].detach().cpu().double(),
                                reduction, kind == "matmul_bias_relu")
                        else:
                            cpu_product = product.to(dtype)
                            mm_rounding = 'nearest_even'
                        cpu_expected = (cpu_product.double()
                                        + inputs[2].detach().cpu().double()).to(dtype)
                        if kind == "matmul_bias_relu":
                            cpu_expected = torch.relu(cpu_expected)
                    entry = {'kind': kind, 'dtype': str(dtype), 'shape': [rows, columns], 'reduction': reduction,
                             'wall_us': {}, 'plans': {}, 'first_call_ms': {}}
                    if lowp_extended:
                        entry['cpu_correctness'] = {}
                        entry['mm_rounding'] = mm_rounding
                        entry['reference_policy'] = ('xpu_bf16_fp32_accum_interval' if interval is not None
                                                     else 'point_dtype_materialization')
                        if interval is not None:
                            entry['gamma'] = interval[2]
                    for name, plan in plans.items():
                        torch.cuda.synchronize()
                        start = time.perf_counter_ns()
                        actual = plan(*inputs)
                        torch.cuda.synchronize()
                        entry['first_call_ms'][name] = (time.perf_counter_ns()-start)/1e6
                        tolerance = ((3e-3, 3e-3) if dtype == torch.float16 else
                                     (3e-3, 3e-2) if dtype == torch.bfloat16 else (3e-4, 3e-4))
                        torch.testing.assert_close(actual, expected, rtol=tolerance[0], atol=tolerance[1])
                        if lowp_extended:
                            actual_cpu = actual.detach().cpu()
                            actual_float = actual_cpu.float()
                            expected_float = cpu_expected.float()
                            delta = (actual_float - expected_float).abs()
                            point_bad = ~(delta <= tolerance[1] + tolerance[0] * expected_float.abs())
                            point_mismatch_count = int(point_bad.sum())
                            stats = {
                                'max_abs': float(delta.max()) if delta.numel() else 0.0,
                                'nan': bool(torch.isnan(actual_cpu).any() or torch.isnan(cpu_expected).any()),
                                'point_mismatch_count': point_mismatch_count,
                                'point_strict_passed': point_mismatch_count == 0,
                                'reference_policy': ('xpu_bf16_fp32_accum_interval' if interval is not None
                                                     else 'point_dtype_materialization')}
                            if interval is not None:
                                lo, hi, gamma = interval
                                inside = (torch.isfinite(actual_cpu)
                                          & (actual_cpu >= lo) & (actual_cpu <= hi))
                                interval_mismatch_count = int((~inside).sum())
                                stats.update({'interval_mismatch_count': interval_mismatch_count,
                                              'interval_passed': interval_mismatch_count == 0,
                                              'gamma': gamma})
                                assert interval_mismatch_count == 0, (name, interval_mismatch_count)
                            else:
                                torch.testing.assert_close(actual_cpu, cpu_expected, rtol=tolerance[0],
                                                           atol=tolerance[1])
                            entry['cpu_correctness'][name] = stats
                        entry['plans'][name] = json.loads(json.dumps(plan.explain()))
                        _, reject = packages[name]._backend.check(kind, inputs)
                        assert reject or plan.last_report['mode'] == 'fused', plan.explain()
                    functions = {'eager': lambda: graph(*inputs),
                                 **{name: (lambda p=p: p(*inputs)) for name, p in plans.items()}}
                    for function in functions.values():
                        for _ in range(8):
                            function()
                    labels = list(functions)
                    for round_index in range(7):
                        order = labels[round_index % len(labels):] + labels[:round_index % len(labels)]
                        if round_index % 2:
                            order.reverse()
                        for label in order:
                            entry['wall_us'].setdefault(label, []).append(measure(functions[label]))
                    entry['median_us'] = {k: statistics.median(v) for k, v in entry['wall_us'].items()}
                    if profile_mode:
                        entry['profiles'] = {}
                        for label in plans:
                            profile = cProfile.Profile()
                            torch.cuda.synchronize()
                            profile.enable()
                            for _ in range(100):
                                plans[label](*inputs)
                            profile.disable()
                            torch.cuda.synchronize()
                            profile.dump_stats(str(args.output / (kind + '-' + label + '.prof')))
                            stats = pstats.Stats(profile)
                            entry['profiles'][label] = sorted([
                                {'function': '%s:%s:%s' % key, 'calls': value[1],
                                 'self_us_per_call': value[2]*1e4, 'cumulative_us_per_call': value[3]*1e4}
                                for key, value in stats.stats.items()],
                                key=lambda v: v['self_us_per_call'], reverse=True)[:35]
                        entry['components_us'] = {}
                        for label, package in packages.items():
                            backend, reason = package._backend.check(kind, inputs)
                            if reason:
                                continue
                            prepared = package._backend.prepare(kind, inputs, backend)
                            first_output, _ = prepared()
                            second_output, _ = prepared()
                            reuses_output = first_output.data_ptr() == second_output.data_ptr()
                            entry['components_us'][label] = {
                                'prepared_callable_us': statistics.median(measure(prepared) for _ in range(5)),
                                'prepared_callable_reuses_output': reuses_output,
                                'backend_check': measure(lambda: package._backend.check(kind, inputs,)),
                                'prepare_without_launch': measure(lambda: package._backend.prepare(kind, inputs, backend)),
                                'graph_string': measure(lambda: str(graph.graph)),
                                'fresh_output_allocation': measure(lambda: torch.empty_like(expected)),
                            }
                    report['cases'].append(entry)
                    save()
                    print(json.dumps(entry['median_us']), flush=True)
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
