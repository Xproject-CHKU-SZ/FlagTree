"""Real FlagTree GELU: strict fresh gate, isolated matched arm, bounded longrun.

The existing graph executor uses one current stream and reference counting.
This is G03 same-address lowering, NOT removal of G02 arena completion barriers.
"""
from __future__ import annotations
import argparse
import json
import os
from pathlib import Path
import sys
import time
import traceback
from suite_contracts import (ARMS, HERE, SHARED, PROTOCOL, fingerprint, load_bridge,
    read_cards, require, require_idle, require_mapping, save, sha)


def identity(bridge, args):
    return fingerprint({'environment': bridge.environment(),
        'sources': {p.name: sha(p) for p in HERE.glob('*.py')},
        'shared_sources': {n: sha(SHARED / n) for n in ('common.py', 'run_models.py')},
        'planner_sources': {n: sha(args.legality.parent / n) for n in
                            ('schema.py', 'liveness.py', 'offset_planner.py', 'inplace_legality.py')},
        'physical_card': args.physical_card, 'protocol': PROTOCOL})


def same(bridge, left, right):
    check = bridge.same_output(left, right, 0, 0)
    require(check['passed'] and check['max_abs_diff'] == 0, 'strict 0/0 numerical gate failed')
    return check


def fresh_gate(bridge, args, case):
    import torch
    from graph import graph_identity, make_plan, run_graph, trace
    initial = identity(bridge, args)
    wrapper, module, values, inputs, kinds, pipeline = bridge.build(case)
    protected = bridge.protected_digest(values)
    graph_sha = graph_identity(module.graph)
    records, samples = trace(module, values[0])  # keep-all is diagnostics ONLY
    plan = make_plan(module.graph, records, kinds, case['model_id'],
                     f'stream:{torch.cuda.current_stream().cuda_stream}')
    legality = bridge.load_legality(args.legality)
    plan_sha = legality.plan_fingerprint(plan)
    tensors = {t['source_value']: t for t in plan['tensors']}
    evidence = {'tensor.'+n: {**f, 'tensor_id': 'tensor.'+n,
        'storage_id': tensors[n]['storage_id'], 'plan_id': plan['plan_id'],
        'plan_sha256': plan_sha, 'graph_fingerprint': graph_sha, 'scope': 'ppu_runtime',
        'physical_card': args.physical_card, 'source': 'fresh PPU diagnostic, never timing'}
        for n, f in records.items()}
    analysis = legality.analyze_op_candidates(plan, [t['task_id'] for t in plan['tasks']],
        binding_evidence=evidence, expected_graph_fingerprint=graph_sha,
        expected_physical_card=args.physical_card,
        plan_identity={'derived_plan_canonical_sha256': plan_sha})
    save(args.output_dir/'model-plan.json', plan)
    save(args.output_dir/'bindings.json', evidence)
    save(args.output_dir/'legality.json', analysis)
    require(not analysis['plan_validation']['plan_issue_codes'] and
            not analysis['plan_validation']['order_problems'], 'G1/G03 plan/order rejected')
    allowed = {c['task_id'] for c in analysis['candidates']
               if c['decision'] == 'allowed' and c['ppu_runtime_evidence'] == 'provided'}
    selected, excluded = {}, {}
    for node in module.graph.nodes:
        if str(node.target) != 'aten.gelu.default':
            continue
        x = samples[node.name]
        if 'task.'+node.name not in allowed:
            excluded[node.name] = 'G03 whole-storage legality rejected'
        elif not (x.dtype == torch.float32 and x.is_contiguous() and x.storage_offset() == 0
                  and node.kwargs.get('approximate', 'none') == 'none'):
            excluded[node.name] = 'exact dense fp32 offset-zero bridge only'
        else:
            selected[node.name] = {'shape': list(x.shape), 'approximate': 'none',
                                   'input_node': node.args[0].name}
    save(args.output_dir/'lowering.json', {'selected': selected, 'excluded': excluded})
    if not selected:
        return {'status': 'not_applicable', 'reason': 'no legal exact GELU; no fake FlagTree success',
                'case_sha256': fingerprint(case), 'excluded': excluded}
    calls, compiler = bridge.compile_selected(selected, samples, args.output_dir/'compiler')
    probes = {}
    for name, call in calls.items():
        x = samples[name]
        independent = call(x, torch.empty_like(x))
        alias = x.clone(); call(alias, alias); torch.cuda.synchronize()
        probes[name] = {'torch_vs_flagtree': same(bridge, torch.ops.aten.gelu.default(x), independent),
                        'same_kernel_out_vs_inplace': same(bridge, independent, alias),
                        'independent_output_is_separate': independent.data_ptr() != x.data_ptr(),
                        'inplace_pointer': alias.data_ptr(),
                        'inplace_storage_pointer': alias.untyped_storage().data_ptr(),
                        'actual_launch_synchronized': True}
        require(probes[name]['independent_output_is_separate'], 'independent baseline unexpectedly aliases input')
    save(args.output_dir/'kernel-probes.json', probes)
    comparisons = []
    for batch, user in zip(values, inputs):
        native = run_graph(module, batch, {})
        a, b = {}, {}
        out = run_graph(module, batch, calls, records=a)
        inplace = run_graph(module, batch, calls, inplace=True, records=b)
        comparisons.append({'native_forward': same(bridge, native, wrapper(*user.values())),
            'torch_vs_flagtree': same(bridge, native, out),
            'out_vs_inplace': same(bridge, out, inplace), 'node_digests_equal': a == b})
        require(a == b, 'per-node outputs changed')
    torch.cuda.synchronize()
    require(protected == bridge.protected_digest(values), 'protected input/parameter overwritten')
    require(initial == identity(bridge, args), 'source/environment changed during gate')
    save(args.output_dir/'compare.json', comparisons)
    return {'status': 'passed', 'selected': selected, 'excluded': excluded,
            'case_sha256': fingerprint(case), 'identity_sha256': initial,
            'graph_sha256': graph_sha, 'input_sha256': protected,
            'compiler_set_sha256': bridge.compiler_identity(compiler), 'compiler': compiler,
            'pipeline': pipeline, 'protocol': PROTOCOL,
            'scope': 'opt-in exact GELU FlagTree lowering; other operators native; not full-model FlagTree'}


def measured(bridge, args, case):
    import torch
    from graph import graph_identity, run_graph, digest
    gate_sha = sha(args.gate)
    gate = json.loads(args.gate.read_text())
    require(gate['status'] == 'passed' and gate['case_sha256'] == fingerprint(case), 'case/gate mismatch')
    require(gate['identity_sha256'] == identity(bridge, args), 'environment/source/card changed')
    wrapper, module, values, _inputs, _kinds, pipeline = bridge.build(case)
    require(graph_identity(module.graph) == gate['graph_sha256'] and
            bridge.protected_digest(values) == gate['input_sha256'], 'graph/input/weights changed')
    def compile_only():
        # Samples and compile destinations are gone before either arm is measured.
        samples = {n: torch.zeros(info['shape'], dtype=torch.float32, device='cuda:0')
                   for n, info in gate['selected'].items()}
        return bridge.compile_selected(gate['selected'], samples, args.output_dir/'compiler')
    calls, compiler = compile_only()
    require(bridge.compiler_identity(compiler) == gate['compiler_set_sha256'], 'compiled identity changed')
    def batch_once(batch, collect=False):
        output = run_graph(module, batch, calls if args.mode != 'torch' else {},
                           inplace=args.mode == 'flagtree-inplace')
        return digest(output) if collect else None
    def once(collect=False):
        return [batch_once(batch, collect) for batch in values]
    start = time.perf_counter(); once(); torch.cuda.synchronize()
    cold = time.perf_counter()-start
    checksum = fingerprint(once(True))
    for _ in range(5):
        once(); torch.cuda.synchronize()
    warm = {'allocated_bytes': torch.cuda.memory_allocated(), 'reserved_bytes': torch.cuda.memory_reserved()}
    torch.cuda.reset_peak_memory_stats()
    samples, growth = [], []
    rounds = args.longrun_rounds or 30
    for index in range(1, rounds+1):
        torch.cuda.synchronize(); start = time.perf_counter(); once(); torch.cuda.synchronize()
        samples.append(time.perf_counter()-start)
        if args.longrun_rounds and (index == 1 or index % 100 == 0 or index == rounds):
            growth.append({'round': index, 'allocated_bytes': torch.cuda.memory_allocated(),
                            'reserved_bytes': torch.cuda.memory_reserved(), 'output_sha256': fingerprint(once(True))})
            require(growth[-1]['output_sha256'] == checksum, 'longrun output changed')
    memory = {'peak_allocated_bytes': torch.cuda.max_memory_allocated(),
              'peak_reserved_bytes': torch.cuda.max_memory_reserved()}
    require(checksum == fingerprint(once(True)) and bridge.protected_digest(values) == gate['input_sha256'],
            'output or protected data changed')
    require(identity(bridge, args) == gate['identity_sha256'] and sha(args.gate) == gate_sha, 'identity drift')
    return {'status': 'passed', 'arm': args.mode, 'rep': args.rep, 'physical_card': args.physical_card,
            'gate_sha256': gate_sha, 'case_sha256': fingerprint(case),
            'identity_sha256': gate['identity_sha256'], 'protocol_sha256': fingerprint(PROTOCOL),
            'compiler_set_sha256': gate['compiler_set_sha256'], 'output_sha256': checksum,
            'samples_s': samples, 'memory': memory, 'post_warmup': warm, 'cold_graph_s': cold,
            'longrun_rounds': args.longrun_rounds, 'growth_checkpoints': growth,
            'allocated_end_minus_warm_bytes': torch.cuda.memory_allocated()-warm['allocated_bytes'],
            'boundary': 'longrun checkpoints include separate checksum work; not performance samples' if growth else
                        'fixed short controlled forward; no STS/A100 or speedup acceptance',
            'pipeline': pipeline, 'protocol': PROTOCOL}


def main():
    p = argparse.ArgumentParser(allow_abbrev=False)
    p.add_argument('--case', type=Path, required=True); p.add_argument('--output-dir', type=Path, required=True)
    p.add_argument('--bridge-dir', type=Path, required=True); p.add_argument('--legality', type=Path, required=True)
    p.add_argument('--physical-card', type=int, required=True); p.add_argument('--idle-mib-max', type=int, default=18)
    p.add_argument('--mode', choices=('gate', *ARMS), required=True); p.add_argument('--gate', type=Path)
    p.add_argument('--rep', type=int, default=0); p.add_argument('--longrun-rounds', type=int, choices=(0,1000), default=0)
    a = p.parse_args()
    require(a.physical_card >= 0 and 0 <= a.idle_mib_max <= 18, 'invalid card/idle limit')
    require(a.mode == 'gate' or (a.gate and a.rep > 0), 'measurement requires gate/repetition')
    require(not a.longrun_rounds or a.mode in ('flagtree-out','flagtree-inplace'), 'longrun arm invalid')
    a.output_dir.mkdir(parents=True, exist_ok=False)
    try:
        require(os.environ.get('FLAGTREE_BACKEND') == 'ppu' and
                os.environ.get('CUDA_VISIBLE_DEVICES') == str(a.physical_card), 'device visibility mismatch')
        raw, cards = read_cards(); save(a.output_dir/'preflight.json', {'raw': raw, 'cards': cards})
        require_idle(cards, a.physical_card, a.idle_mib_max)
        import torch
        torch.set_grad_enabled(False); torch.manual_seed(0)
        require(torch.cuda.is_available() and torch.cuda.device_count() == 1 and
                'PPU' in torch.cuda.get_device_name(0), 'not one masked PPU')
        probe = torch.zeros(1024, device='cuda:0'); torch.cuda.synchronize()
        raw, cards = read_cards(); require_mapping(cards, a.physical_card, os.getpid())
        save(a.output_dir/'mapping.json', {'raw': raw, 'cards': cards, 'pid': os.getpid(),
                                         'physical_card': a.physical_card, 'logical_device': 0})
        del probe
        bridge = load_bridge(a.bridge_dir)
        case = json.loads(a.case.read_text())
        result = fresh_gate(bridge, a, case) if a.mode == 'gate' else measured(bridge, a, case)
        raw, cards = read_cards(); require_mapping(cards, a.physical_card, os.getpid())
        save(a.output_dir/'exit-mapping.json', {'raw': raw, 'cards': cards, 'pid': os.getpid(),
                                               'physical_card': a.physical_card})
        save(a.output_dir/'result.json', result)
        return 0
    except Exception as error:
        save(a.output_dir/'failure.json', {'error': str(error), 'traceback': traceback.format_exc()})
        return 2


if __name__ == '__main__':
    raise SystemExit(main())
