"""Fresh PPU gate or one isolated measurement arm; imports GPU only after guard."""
from __future__ import annotations
import argparse
import json
import os
from pathlib import Path
import sys
import time
import traceback

from common import (ARMS, fingerprint, load_bridge, load_planner, read_cards, require,
                    require_idle, require_mapping, save, sha)
from runtime import Arena, plan_binding, run_graph


def identity(bridge, args):
    return fingerprint({'bridge_environment': bridge.environment(),
                        'runtime_sources': {p.name: sha(p) for p in Path(__file__).parent.glob('*.py')},
                        'planner_sources': {n: sha(args.planner_dir / (n + '.py'))
                                            for n in ('schema', 'liveness', 'offset_planner')},
                        'legality': sha(args.legality), 'physical_card': args.physical_card})


def synchronize():
    import torch
    torch.cuda.synchronize()


def compile_calls(bridge, selected, directory):
    import torch
    # Samples and compile destinations die here, in every arm equally.
    samples = {name: torch.zeros(info['shape'], dtype=torch.float32, device='cuda:0')
               for name, info in selected.items()}
    return bridge.compile_selected(selected, samples, directory)


def check_same(bridge, left, right):
    value = bridge.same_output(left, right, 0, 0)
    require(value['passed'] and value['max_abs_diff'] == 0, 'strict 0/0 numerical gate failed')
    return value


def gate(bridge, args, case):
    import torch
    from graph import graph_identity, make_plan, trace, digest
    initial_identity = identity(bridge, args)
    wrapper, module, values, inputs, kinds, pipeline = bridge.build(case)
    protected = bridge.protected_digest(values)
    graph_sha = graph_identity(module.graph)
    records, samples = trace(module, values[0])
    stream = f'stream:{torch.cuda.current_stream().cuda_stream}'
    plan = make_plan(module.graph, records, kinds, case['model_id'], stream)
    legality = bridge.load_legality(args.legality)
    plan_sha = legality.plan_fingerprint(plan)
    tensors = {t['source_value']: t for t in plan['tensors']}
    evidence = {'tensor.' + name: {**fact, 'tensor_id': 'tensor.' + name,
                'storage_id': tensors[name]['storage_id'], 'plan_id': plan['plan_id'],
                'plan_sha256': plan_sha, 'graph_fingerprint': graph_sha,
                'scope': 'ppu_runtime', 'physical_card': args.physical_card,
                'source': 'fresh G02 PPU keep-alive diagnostic, never performance data'}
                for name, fact in records.items()}
    order = [t['task_id'] for t in plan['tasks']]
    analysis = legality.analyze_op_candidates(plan, order, binding_evidence=evidence,
        expected_graph_fingerprint=graph_sha, expected_physical_card=args.physical_card,
        plan_identity={'derived_plan_canonical_sha256': plan_sha})
    save(args.output_dir / 'model-plan.json', plan)
    save(args.output_dir / 'bindings.json', evidence)
    save(args.output_dir / 'legality.json', analysis)
    require(not analysis['plan_validation']['plan_issue_codes']
            and not analysis['plan_validation']['order_problems'], 'G1/G03 plan rejected')
    allowed = {c['task_id'] for c in analysis['candidates']
               if c['decision'] == 'allowed' and c['ppu_runtime_evidence'] == 'provided'}
    selected = {}
    for node in module.graph.nodes:
        if str(node.target) != 'aten.gelu.default':
            continue
        require('task.' + node.name in allowed, 'G03 rejected a selected GELU; no inplace arm permission')
        sample = samples[node.name]
        require(sample.dtype == torch.float32 and sample.is_contiguous() and sample.storage_offset() == 0
                and node.kwargs.get('approximate', 'none') == 'none', 'unsupported GELU layout/attribute')
        selected[node.name] = {'shape': list(sample.shape), 'approximate': 'none',
                               'input_node': node.args[0].name}
    planner, hashes = load_planner(args.planner_dir)
    binding = plan_binding(plan, records, selected, planner)
    save(args.output_dir / 'runtime-binding.json', binding)
    calls, compiler = bridge.compile_selected(selected, samples, args.output_dir / 'compiler')
    probes = {}
    for name, call in calls.items():
        source = samples[name]
        separate = call(source, torch.empty_like(source))
        native = torch.ops.aten.gelu.default(source, approximate='none')
        same = source.clone()
        call(same, same)
        synchronize()
        probes[name] = {'torch_vs_flagtree': check_same(bridge, native, separate),
                        'out_vs_inplace': check_same(bridge, separate, same)}
    save(args.output_dir / 'kernel-probes.json', probes)
    arena = Arena(binding, 'cuda:0')
    comparisons, writes = [], []
    for index, (batch, user_input) in enumerate(zip(values, inputs)):
        outputs, node_records = {}, {}
        for arm in ARMS:
            diagnostic = {'nodes': {}, 'writes': []}
            outputs[arm] = run_graph(module, batch, calls, arm, binding,
                                    arena=arena if arm == 'flagtree-arena' else None,
                                    diagnostics=diagnostic, barrier=synchronize)
            node_records[arm] = diagnostic['nodes']
            if arm == 'flagtree-arena':
                require(len(diagnostic['writes']) == len(selected), 'arena write coverage missing')
                require({row['storage_pointer'] for row in diagnostic['writes']} == {arena.pointer},
                        'planned shared arena not used by every compiled producer')
                writes.append({'batch': index, 'writes': diagnostic['writes'],
                               'chain': binding['chain'], 'arena_pointer': arena.pointer,
                               'last_consumers': {n: binding['nodes'][n]['last_consumer_position']
                                                  for n in binding['chain']}})
        comparisons.append({arm: check_same(bridge, outputs['torch'], outputs[arm]) for arm in ARMS})
        require(all(nodes == node_records['torch'] for nodes in node_records.values()),
                'per-node outputs differ between arms')
        check_same(bridge, outputs['torch'], wrapper(*user_input.values()))
    require(bridge.protected_digest(values) == protected, 'inputs/parameters were overwritten')
    save(args.output_dir / 'compare.json', comparisons)
    save(args.output_dir / 'arena-writes.json', writes)
    require(identity(bridge, args) == initial_identity, 'source/environment changed during gate')
    return {'status': 'passed', 'case': case, 'case_sha256': fingerprint(case),
            'graph_sha256': graph_sha, 'input_sha256': protected, 'selected': selected,
            'runtime_binding': binding, 'compiler': compiler,
            'compiler_set_sha256': bridge.compiler_identity(compiler),
            'planner_sources': hashes, 'identity_sha256': initial_identity,
            'physical_card': args.physical_card, 'pipeline': pipeline,
            'g2_runtime_applied_in_this_gate': True, 'arena_bytes': binding['arena_plan']['arena_size_bytes'],
            'mechanism': 'distinct GELU output lifetimes, one explicitly bound FlagTree destination arena',
            'boundary': 'GELU-only offset-zero mechanism, completion barriers in every arm; not production acceptance'}


def measure(bridge, args, case):
    import torch
    from graph import graph_identity, digest
    gate_file_sha = sha(args.gate)
    original = json.loads(args.gate.read_text())
    require(original['status'] == 'passed' and original['case_sha256'] == fingerprint(case), 'case/gate mismatch')
    require(original['physical_card'] == args.physical_card
            and original['identity_sha256'] == identity(bridge, args), 'source/environment/card changed after gate')
    wrapper, module, values, _inputs, _kinds, pipeline = bridge.build(case)
    require(graph_identity(module.graph) == original['graph_sha256']
            and bridge.protected_digest(values) == original['input_sha256'], 'graph/input/weights changed')
    calls, compiler = compile_calls(bridge, original['selected'], args.output_dir / 'compiler')
    require(bridge.compiler_identity(compiler) == original['compiler_set_sha256'], 'compiled kernel identity changed')
    binding = original['runtime_binding']
    before_arena = torch.cuda.memory_allocated()
    arena = Arena(binding, 'cuda:0') if args.mode == 'flagtree-arena' else None
    arena_allocated_delta = torch.cuda.memory_allocated() - before_arena
    def batch_once(batch, collect):
        output = run_graph(module, batch, calls, args.mode, binding, arena=arena, barrier=synchronize)
        return digest(output) if collect else None
    def round_once(collect=False):
        # Function boundary prevents output/aux references spanning batches.
        return [batch_once(batch, collect) for batch in values]
    start = time.perf_counter(); round_once(); synchronize()
    cold_s = time.perf_counter() - start
    checksum = fingerprint(round_once(True))
    for _ in range(5):
        round_once(); synchronize()
    warm = {'allocated_bytes': torch.cuda.memory_allocated(), 'reserved_bytes': torch.cuda.memory_reserved()}
    torch.cuda.reset_peak_memory_stats()
    samples = []
    for _ in range(30):
        synchronize(); start = time.perf_counter(); round_once(); synchronize()
        samples.append(time.perf_counter() - start)
    memory = {'peak_allocated_bytes': torch.cuda.max_memory_allocated(),
              'peak_reserved_bytes': torch.cuda.max_memory_reserved()}
    require(checksum == fingerprint(round_once(True))
            and bridge.protected_digest(values) == original['input_sha256'], 'measurement output/protected data changed')
    require(identity(bridge, args) == original['identity_sha256'], 'source/environment changed during measurement')
    require(sha(args.gate) == gate_file_sha, 'gate file changed during measurement')
    return {'status': 'passed', 'arm': args.mode, 'rep': args.rep, 'physical_card': args.physical_card,
            'gate_sha256': gate_file_sha, 'identity_sha256': original['identity_sha256'],
            'compiler_set_sha256': original['compiler_set_sha256'], 'output_sha256': checksum,
            'memory': memory, 'post_warmup': warm, 'samples_s': samples, 'cold_graph_s': cold_s,
            'arena_requested_bytes': binding['arena_plan']['arena_size_bytes'] if arena else 0,
            'arena_observed_allocated_delta_bytes': arena_allocated_delta, 'compiler': compiler,
            'pipeline': pipeline, 'protocol': {'sentences': 64, 'warmup': 5, 'measured': 30,
            'completion_barrier_before_every_selected_node_in_all_arms': True,
            'no_diagnostic_pointer_hash_or_keep_all_in_timing': True,
            'boundary': 'barrier-bearing mechanism executor; not directly comparable to prior no-barrier tables'}}


def main():
    parser = argparse.ArgumentParser(allow_abbrev=False)
    parser.add_argument('--case', type=Path, required=True)
    parser.add_argument('--output-dir', type=Path, required=True)
    parser.add_argument('--bridge-dir', type=Path, required=True)
    parser.add_argument('--planner-dir', type=Path, required=True)
    parser.add_argument('--legality', type=Path, required=True)
    parser.add_argument('--physical-card', type=int, required=True)
    parser.add_argument('--idle-mib-max', type=int, default=18)
    parser.add_argument('--mode', choices=('gate', *ARMS), required=True)
    parser.add_argument('--gate', type=Path)
    parser.add_argument('--rep', type=int, default=0)
    args = parser.parse_args()
    if args.physical_card < 0 or not 0 <= args.idle_mib_max <= 18:
        parser.error('invalid card/approved idle threshold')
    if args.mode != 'gate' and (args.gate is None or args.rep < 1):
        parser.error('measurement requires gate and positive repetition')
    args.output_dir.mkdir(parents=True, exist_ok=False)
    try:
        require(os.environ.get('FLAGTREE_BACKEND') == 'ppu'
                and os.environ.get('CUDA_VISIBLE_DEVICES') == str(args.physical_card), 'device visibility mismatch')
        raw, cards = read_cards(); save(args.output_dir / 'preflight.json', {'raw': raw, 'cards': cards})
        require_idle(cards, args.physical_card, args.idle_mib_max)
        import torch
        torch.manual_seed(0); torch.set_grad_enabled(False)
        require(torch.cuda.is_available() and torch.cuda.device_count() == 1
                and 'PPU' in torch.cuda.get_device_name(0), 'expected one masked PPU device')
        probe = torch.zeros(1024, device='cuda:0'); synchronize()
        raw, cards = read_cards(); require_mapping(cards, args.physical_card, os.getpid())
        save(args.output_dir / 'mapping.json', {'raw': raw, 'cards': cards, 'pid': os.getpid(),
                                               'physical_card': args.physical_card, 'logical_device': 0})
        del probe
        bridge = load_bridge(args.bridge_dir)
        case = json.loads(args.case.read_text())
        start = time.perf_counter()
        with torch.no_grad():
            result = gate(bridge, args, case) if args.mode == 'gate' else measure(bridge, args, case)
        result['worker_wall_s'] = time.perf_counter() - start
        save(args.output_dir / 'result.json', result)
        return 0
    except Exception as error:
        save(args.output_dir / 'failure.json', {'error': str(error), 'traceback': traceback.format_exc()})
        print('BLOCKED:', error, file=sys.stderr)
        return 2


if __name__ == '__main__':
    raise SystemExit(main())
