"""Focused tests for this feature. CPU stand-ins are never FlagTree evidence."""
import copy
import importlib.util
import os
from pathlib import Path
import sys
import unittest
import weakref

from common import ARMS, choose_card, load_bridge, load_planner, parse_cards, require_idle, require_mapping, summarize
from runtime import Arena, plan_binding, run_graph

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[2]
if os.environ.get('F08_REQUIRE_TORCH') == '1' and importlib.util.find_spec('torch') is None:
    raise RuntimeError('server CPU gate requires torch; skipping actual execution tests is not allowed')


RAW = '''| 1 PPU-ZW810E N/A | bus | 0 |
| N/A 37C N/A 82W / 400W | 18MiB / 98304MiB | 0% Default |
| | | Disabled |
| 7 PPU-ZW810E N/A | bus | 0 |
| N/A 37C N/A 82W / 400W | 10MiB / 98304MiB | 0% Default |
| | | Disabled |
| Processes: |
| PPU GI CI PID Type Process name PPU Memory |
'''


class DeviceTests(unittest.TestCase):
    def test_auto_select_not_fixed_14(self):
        self.assertEqual(choose_card(parse_cards(RAW)), 1)

    def test_busy_process_excluded_even_utilization_zero(self):
        self.assertEqual(choose_card(parse_cards(RAW + '| 1 N/A N/A 123 C other 1MiB |\n')), 7)

    def test_explicit_card_supported(self):
        self.assertEqual(choose_card(parse_cards(RAW), '7'), 7)

    def test_reserved_card_excluded(self):
        self.assertEqual(choose_card(parse_cards(RAW), excluded=[1]), 7)

    def test_no_idle_card_fails(self):
        with self.assertRaisesRegex(ValueError, 'no idle'):
            choose_card(parse_cards(RAW), excluded=[1, 7])

    def test_missing_process_table_fails(self):
        with self.assertRaises(ValueError):
            parse_cards(RAW.split('Processes:')[0])

    def test_missing_utilization_fails(self):
        with self.assertRaises(ValueError):
            parse_cards(RAW.replace('0% Default', 'N/A Default'))

    def test_unknown_process_row_fails(self):
        with self.assertRaises(ValueError):
            parse_cards(RAW + '| 7 unknown |\n')

    def test_mapping_requires_own_pid_and_no_other_pid(self):
        cards = parse_cards(RAW + '| 7 N/A N/A 123 C self 1MiB |\n')
        require_mapping(cards, 7, 123)
        with self.assertRaises(ValueError):
            require_mapping(cards, 1, 123)
        cards[7]['pids'].append(456)
        with self.assertRaises(ValueError):
            require_mapping(cards, 7, 123)

    def test_no_automatic_baseline_relaxation(self):
        with self.assertRaises(ValueError):
            choose_card(parse_cards(RAW), limit=19)
        cards = parse_cards(RAW)
        cards[1]['used_mib'] = 19
        with self.assertRaises(ValueError):
            require_idle(cards, 1, 18)


class SummaryTests(unittest.TestCase):
    def records(self):
        return [{'arm': arm, 'rep': rep, 'samples_s': [.01] * 30,
                 'gate_sha256': 'gate', 'physical_card': 7, 'output_sha256': 'out',
                 'identity_sha256': 'identity', 'compiler_set_sha256': 'compiled',
                 'memory': {'peak_allocated_bytes': 128, 'peak_reserved_bytes': 256}}
                for rep in range(1, 4) for arm in ARMS]

    def test_complete_results_keep_zero_gain(self):
        report = summarize(self.records(), 3)
        self.assertEqual(report['g2_effect']['allocated_reduction_bytes'], 0)
        self.assertAlmostEqual(report['flagtree-arena']['p50_ms'], 10)

    def test_partial_results_not_summarized(self):
        with self.assertRaises(ValueError):
            summarize(self.records()[:-1], 3)

    def test_mixed_cards_not_summarized(self):
        records = self.records(); records[0]['physical_card'] = 14
        with self.assertRaises(ValueError):
            summarize(records, 3)

    def test_mixed_output_not_summarized(self):
        records = self.records(); records[0]['output_sha256'] = 'different'
        with self.assertRaises(ValueError):
            summarize(records, 3)


def plan_fixture():
    plan = {'schema_version': 'f08-g01-model-plan/0.1', 'plan_id': 'runtime-fixture',
            'model_id': 'synthetic-not-PPU-evidence', 'tasks': [], 'tensors': [], 'storages': [],
            'regions': [], 'shape_bindings': {}}
    names = ('gelu', 'consume', 'gelu_1', 'consume_1')
    for index, name in enumerate(names):
        selected = name.startswith('gelu')
        inputs = ['tensor.x'] if selected else ['tensor.' + ('gelu' if index == 1 else 'gelu_1')]
        plan['tasks'].append({'task_id': 'task.' + name, 'kernel_id': 'aten.gelu.default' if selected else 'aten.sum.default',
            'predecessors': ['task.' + names[index - 1]] if index else [], 'inputs': inputs,
            'outputs': ['tensor.' + name], 'source_node': name, 'region_id': None, 'device': 'cuda:0', 'stream': 'stream:0'})
    for name in ('x', *names):
        full = name == 'x' or name.startswith('gelu')
        consumers = ['task.gelu', 'task.gelu_1'] if name == 'x' else (
            ['task.consume' if name == 'gelu' else 'task.consume_1'] if name.startswith('gelu') else [])
        plan['tensors'].append({'tensor_id': 'tensor.' + name, 'storage_id': 'storage.' + name,
            'producer': None if name == 'x' else 'task.' + name, 'consumers': consumers,
            'dtype': 'float32', 'shape': [16] if full else [1], 'storage_offset_bytes': None,
            'source_value': name, 'is_graph_output': name.startswith('consume'),
            'is_persistent': False, 'is_mutated': False})
        plan['storages'].append({'storage_id': 'storage.' + name, 'size_bytes': 64 if full else 4,
            'alignment': 1, 'device': 'cuda:0', 'allocation_kind': 'input' if name == 'x' else 'temporary', 'source': 'fixture'})
    selected = {name: {'shape': [16], 'input_node': 'x'} for name in ('gelu', 'gelu_1')}
    records = {name: {'shape': [16], 'dtype': 'float32', 'contiguous': True, 'byte_offset': 0, 'nbytes': 64}
               for name in selected}
    return plan, selected, records


class PlannerBindingTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        directory = REPO / 'python/flagtree/memory_planner'
        if not (directory / 'offset_planner.py').exists():
            directory = REPO.parent / '参考资料/f08-g02_minilm_cpu_20260928_v2/sources/memory_planner'
        cls.planner, _ = load_planner(directory)

    def setUp(self):
        self.plan, self.selected, self.records = plan_fixture()

    def build(self):
        return plan_binding(self.plan, self.records, self.selected, self.planner)

    def test_real_planner_consumed_without_changing_input(self):
        before = copy.deepcopy(self.plan)
        bound = self.build()
        self.assertEqual(self.plan, before)
        self.assertEqual(bound['arena_plan']['arena_size_bytes'], 64)
        self.assertEqual(bound['chain'], ['gelu', 'gelu_1'])
        self.assertTrue(bound['arena_plan']['runtime_binding_blockers'])

    def test_live_overlap_rejected(self):
        self.plan['tensors'][1]['consumers'].append('task.consume_1')
        self.plan['tasks'][3]['inputs'].append('tensor.gelu')
        with self.assertRaises(ValueError):
            self.build()

    def test_protected_output_rejected(self):
        self.plan['tensors'][1]['is_graph_output'] = True
        with self.assertRaises(ValueError):
            self.build()

    def test_alias_rejected(self):
        alias = copy.deepcopy(self.plan['tensors'][1])
        alias['tensor_id'] = 'tensor.alias'; alias['source_value'] = 'alias'
        self.plan['tensors'].append(alias)
        with self.assertRaises(ValueError):
            self.build()

    def test_nonzero_offset_rejected(self):
        self.records['gelu']['byte_offset'] = 4
        with self.assertRaises(ValueError):
            self.build()

    def test_capacity_mismatch_rejected(self):
        self.records['gelu']['nbytes'] = 128
        with self.assertRaises(ValueError):
            self.build()


@unittest.skipUnless(importlib.util.find_spec('torch'), 'torch unavailable locally; server must run actual CPU tests')
class ActualTorchTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        import torch
        cls.torch = torch
        load_bridge(HERE.parent / 'f08_flagtree_eval')

    def setUp(self):
        torch = self.torch
        graph = torch.fx.Graph()
        x = graph.placeholder('x')
        def call(target, args, name):
            return graph.create_node('call_function', target, args, {}, name=name)
        p = call(torch.mul, (x, 2), 'pre')
        y = call(torch.ops.aten.gelu.default, (p,), 'gelu')
        s = call(torch.sum, (y,), 'sum1')
        p2 = call(torch.mul, (x, 3), 'pre2')
        y2 = call(torch.ops.aten.gelu.default, (p2,), 'gelu_1')
        s2 = call(torch.sum, (y2,), 'sum2')
        out = call(torch.add, (s, s2), 'add')
        graph.output(out)
        self.module = torch.fx.GraphModule({}, graph)
        self.x = torch.linspace(-2, 2, 16)
        self.binding = {'task_order': ['task.' + n.name for n in graph.nodes if n.op == 'call_function'],
            'nodes': {'gelu': {'shape': [16], 'writer_position': 1, 'last_consumer_position': 2},
                      'gelu_1': {'shape': [16], 'writer_position': 4, 'last_consumer_position': 5}},
            'arena_plan': {'arena_size_bytes': 64, 'base_alignment': 64}}
        # Explicit CPU stand-in to test binding/release mechanics, NOT FlagTree.
        self.calls = {n: lambda x, dest: torch.ops.aten.gelu.out(x, out=dest) for n in self.binding['nodes']}

    def execute(self, mode='flagtree-arena', **kwargs):
        arena = Arena(self.binding, 'cpu') if mode == 'flagtree-arena' else None
        return run_graph(self.module, [self.x], self.calls, mode, self.binding,
                         arena=arena, barrier=lambda: None, **kwargs)

    def test_all_four_arms_bitwise_and_input_unchanged(self):
        before = self.x.clone()
        expected = self.module(self.x)
        for mode in ('torch', 'flagtree-out', 'flagtree-arena', 'flagtree-inplace'):
            self.assertTrue(self.torch.equal(self.execute(mode), expected))
            self.assertTrue(self.torch.equal(self.x, before))

    def test_two_distinct_producers_write_same_arena_pointer(self):
        diagnostic = {'nodes': {}, 'writes': []}
        self.execute(diagnostics=diagnostic)
        self.assertEqual(len(diagnostic['writes']), 2)
        self.assertEqual(len({r['storage_pointer'] for r in diagnostic['writes']}), 1)
        self.assertTrue(all(r['source_pointer'] != r['destination_pointer'] for r in diagnostic['writes']))

    def test_source_arena_alias_rejected(self):
        arena = Arena(self.binding, 'cpu')
        with self.assertRaises(ValueError):
            arena.destination('gelu', arena.owner)

    def test_wrong_returned_storage_rejected(self):
        self.calls['gelu'] = lambda x, dest: x.clone()
        with self.assertRaises(ValueError):
            self.execute()

    def test_order_change_rejected_before_call(self):
        self.binding['task_order'].reverse()
        with self.assertRaises(ValueError):
            self.execute()

    def test_reference_auxiliary_output_not_retained(self):
        refs = []
        first = self.calls['gelu']
        second = self.calls['gelu_1']
        def capture(x, dest):
            value = first(x, dest); refs.append(weakref.ref(value)); return value
        def check_dead(x, dest):
            self.assertIsNone(refs[0]())
            return second(x, dest)
        self.calls = {'gelu': capture, 'gelu_1': check_dead}
        self.execute('flagtree-out')


if __name__ == '__main__':
    unittest.main()
