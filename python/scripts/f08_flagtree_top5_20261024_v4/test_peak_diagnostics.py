"""Metadata contracts plus real CPU release tests; no fake PPU success."""
import ast
import copy
import gc
import json
import os
from pathlib import Path
from types import SimpleNamespace as NS
import unittest
import weakref

from support import HERE, fingerprint, load_bridge, sha
from peak_diagnostics import SnapshotCatalog, plan_index, storage_snapshot, selected_binding
from summarize_peak import markdown, snapshot_groups, summarize


class FakeTensor:
    """Metadata fixture only; never accepted as device execution evidence."""
    def __init__(self, pointer, nbytes=24, shape=(2, 3), offset=0, dtype='torch.float32'):
        self.pointer, self.nbytes, self.shape, self.offset = pointer, nbytes, shape, offset
        self.dtype, self.device = dtype, 'cpu'
    def untyped_storage(self):
        return NS(data_ptr=lambda: self.pointer, nbytes=lambda: self.nbytes)
    def stride(self):
        return (3, 1) if len(self.shape) == 2 else (1,)
    def storage_offset(self):return self.offset
    def element_size(self):return 8 if self.dtype == 'torch.int64' else 4


def metadata_index(names):
    return {'tensors': {n: {'tensor_id': 'tensor.' + n, 'plan_storage_id': 'storage.' + n,
                            'is_persistent': False} for n in names}}


def synthetic_summary_inputs():
    def batch(i):
        snapshot = {'dynamic_storage_refs': [], 'replaced_static_refs': [],
                    'observed_live_storage_bytes': 0, 'observed_live_storage_count': 0}
        node = {'node': 'mul', 'operation': 'aten.mul.Tensor', 'flagtree_selected': True,
                'before_allocated_bytes': 0, 'after_allocated_bytes': 0,
                'node_peak_allocated_bytes': 20, 'within_node_excess_over_endpoints_bytes': 20,
                'live_before': copy.deepcopy(snapshot), 'live_after': copy.deepcopy(snapshot)}
        return {'batch_index': i, 'output_sha256': 'batch' + str(i), 'nodes': [node],
                'diagnostic_peak_allocated_bytes': 20, 'logical_plan_index': {'tensors': {}},
                'static_live_refs': [], 'storage_catalog': {}}
    from support import PROTOCOL
    identity = {k: 'same' for k in ('case_sha256', 'graph_sha256', 'gate_sha256', 'identity_sha256',
                                  'compiler_set_sha256', 'top5_identity_sha256', 'model_plan_sha256')}
    identity.update(status='passed', physical_card=6, output_sha256=fingerprint(['batch0', 'batch1']),
                    protocol_sha256=fingerprint(PROTOCOL))
    normal = [{**identity, 'arm': a, 'samples_s': [.1]*30, 'protocol': copy.deepcopy(PROTOCOL),
               'memory': {'peak_allocated_bytes': 30, 'peak_reserved_bytes': 40},
               'post_warmup': {'allocated_bytes': 10, 'reserved_bytes': 40}}
              for a in ('flagtree-out', 'flagtree-inplace')]
    diagnostic = [{**identity, 'mode': mode, 'rep': rep,
                   'diagnostic_protocol': {'batches': 2, 'per_node_synchronize': True, 'timing_claim': False},
                   'batches': [batch(0), batch(1)]}
                  for rep in (1, 2) for mode in ('diagnose-out', 'diagnose-inplace')]
    return normal, diagnostic


class MetadataTests(unittest.TestCase):
    def test_alias_counted_once(self):
        x = FakeTensor(1024)
        groups = storage_snapshot({'x': x, 'view': x}, metadata_index(['x', 'view']), {}, FakeTensor)
        self.assertEqual(len(groups), 1)
        self.assertEqual(sum(g['storage_nbytes'] for g in groups), 24)
        self.assertEqual(len(groups[0]['members']), 2)

    def test_tuple_two_leaves_and_projection_deduplicated(self):
        a, b = FakeTensor(1024), FakeTensor(2048, 16, (2,), dtype='torch.int64')
        index = metadata_index(['max.output0', 'max.output1', 'getitem'])
        groups = storage_snapshot({'max': (a, b), 'getitem': a}, index,
                                  {'max': ['max.output0', 'max.output1']}, FakeTensor)
        self.assertEqual(len(groups), 2)
        self.assertEqual(sum(g['storage_nbytes'] for g in groups), 40)

    def test_tuple_unknown_container_rejected(self):
        for value in ((FakeTensor(1),), [FakeTensor(1)], {'x': FakeTensor(1)}):
            with self.subTest(value=type(value).__name__), self.assertRaisesRegex(ValueError, 'unknown live container'):
                storage_snapshot({'bad': value}, metadata_index([]), {}, FakeTensor)

    def test_missing_logical_binding_rejected(self):
        with self.assertRaisesRegex(ValueError, 'unmapped live tensor'):
            storage_snapshot({'x': FakeTensor(1)}, metadata_index([]), {}, FakeTensor)

    def test_offsets_strides_dtype_are_runtime_metadata(self):
        g = storage_snapshot({'x': FakeTensor(1, 32, (2,), 1, 'torch.int64')},
                             metadata_index(['x']), {}, FakeTensor)[0]
        self.assertEqual(g['members'][0]['byte_offset'], 8)
        self.assertEqual(g['members'][0]['stride'], [1])
        self.assertEqual(g['members'][0]['dtype'], 'int64')

    def test_empty_storage_not_fake_alias(self):
        groups = storage_snapshot({'a': FakeTensor(0, 0, (0,)), 'b': FakeTensor(0, 0, (0,))},
                                  metadata_index(['a', 'b']), {}, FakeTensor)
        self.assertEqual(len(groups), 2)

    def test_inconsistent_capacity_rejected(self):
        with self.assertRaisesRegex(ValueError, 'inconsistent live alias capacity'):
            storage_snapshot({'a': FakeTensor(1, 24), 'b': FakeTensor(1, 32)},
                             metadata_index(['a', 'b']), {}, FakeTensor)

    def test_catalog_contains_no_fixture_objects(self):
        tensor = FakeTensor(1024)
        ref = weakref.ref(tensor)
        catalog = SnapshotCatalog()
        catalog.encode(storage_snapshot({'x': tensor}, metadata_index(['x']), {}, FakeTensor))
        del tensor
        gc.collect()
        self.assertIsNone(ref())
        json.dumps(catalog.records)  # only JSON data may escape

    def test_parameter_view_joins_and_leaves_base_group(self):
        index = metadata_index(['x', 'view'])
        tensor = FakeTensor(1024)
        catalog = SnapshotCatalog()
        initial = catalog.encode(storage_snapshot({'x': tensor}, index, {}, FakeTensor))
        joined = catalog.encode(storage_snapshot({'x': tensor, 'view': tensor}, index, {}, FakeTensor))
        self.assertEqual(joined['observed_live_storage_bytes'], 24)
        self.assertEqual(len(joined['replaced_static_refs']), 1)
        b = {'static_live_refs': catalog.base_refs, 'storage_catalog': catalog.records}
        self.assertEqual(len(snapshot_groups(b, {'live_before': joined}, 'before')), 1)
        left = catalog.encode(storage_snapshot({'x': tensor}, index, {}, FakeTensor))
        self.assertEqual(left, initial)

    def test_lost_placeholder_rejected(self):
        catalog = SnapshotCatalog()
        catalog.encode(storage_snapshot({'x': FakeTensor(1024)}, metadata_index(['x']), {}, FakeTensor))
        with self.assertRaisesRegex(ValueError, 'lost or changed placeholder'):
            catalog.encode([])

    def test_pointer_reuse_not_global_allocation_identity(self):
        catalog = SnapshotCatalog()
        catalog.encode([])
        a = catalog.encode(storage_snapshot({'a': FakeTensor(1)}, metadata_index(['a']), {}, FakeTensor))
        catalog.encode([])
        b = catalog.encode(storage_snapshot({'b': FakeTensor(1)}, metadata_index(['b']), {}, FakeTensor))
        self.assertNotEqual(a['dynamic_storage_refs'], b['dynamic_storage_refs'])

    def test_duplicate_source_rejected(self):
        tensor = {'source_value': 'x', 'tensor_id': 'tensor.x', 'storage_id': 's', 'producer': None,
                  'consumers': [], 'is_persistent': False, 'is_graph_output': False}
        plan = {'tasks': [], 'storages': [{'storage_id': 's', 'allocation_kind': 'input',
                                         'source': 'fixture'}], 'tensors': [tensor, tensor]}
        with self.assertRaisesRegex(ValueError, 'duplicate plan tensor'):
            plan_index(plan)

    def test_selected_address_relation_enforced(self):
        before = storage_snapshot({'silu': FakeTensor(1)}, metadata_index(['silu']), {}, FakeTensor)
        for address, inplace in ((1, True), (2, False)):
            after = storage_snapshot({'mul': FakeTensor(address)}, metadata_index(['mul']), {}, FakeTensor)
            self.assertEqual(selected_binding('mul', 'silu', before, after, inplace)['observed_same_address'], inplace)
            with self.assertRaises(ValueError):selected_binding('mul', 'silu', before, after, not inplace)

    def test_exact_v3_executor_kernel_and_bindings_preserved(self):
        pins = json.loads((HERE / 'V3-PINS.json').read_text())
        for filename, expected in pins.items():
            self.assertEqual(sha(HERE / filename), expected, filename)

    def test_normal_measurement_has_no_diagnostic_calls(self):
        tree = ast.parse((HERE / 'worker.py').read_text())
        measure = next(n for n in tree.body if isinstance(n, ast.FunctionDef) and n.name == 'qwen_measure')
        names = {n.id for n in ast.walk(measure) if isinstance(n, ast.Name)}
        self.assertFalse(names & {'diagnose_batch', 'storage_snapshot', 'qwen_diagnostic'})

    def test_complete_comparison_not_gain_acceptance(self):
        result = summarize(*synthetic_summary_inputs())
        self.assertEqual(len(result['pairs']), 4)
        self.assertEqual(result['normal_allocated_reduction_bytes'], 0)
        self.assertIn('not_optimization_acceptance', result['status'])
        self.assertIn('不宣称', markdown(result))

    def test_each_identity_mismatch_rejected(self):
        from summarize_peak import IDENTITY_KEYS
        for key in IDENTITY_KEYS:
            with self.subTest(key=key):
                a, b = synthetic_summary_inputs()
                b[0][key] = 'forged'
                with self.assertRaises(ValueError):summarize(a, b)

    def test_incomplete_pair_rejected(self):
        a, b = synthetic_summary_inputs()
        with self.assertRaises(ValueError):summarize(a, b[:-1])

    def test_batch_missing_or_output_forged_rejected(self):
        for kind in ('missing', 'forged'):
            a, b = synthetic_summary_inputs()
            if kind == 'missing':b[0]['batches'].pop()
            else:b[0]['batches'][0]['output_sha256'] = 'bad'
            with self.assertRaises(ValueError):summarize(a, b)

    def test_node_order_mismatch_rejected(self):
        a, b = synthetic_summary_inputs()
        b[0]['batches'][0]['nodes'][0]['node'] = 'wrong'
        with self.assertRaises(ValueError):summarize(a, b)

    def test_normal_protocol_drift_rejected(self):
        a, b = synthetic_summary_inputs()
        a[0]['protocol']['per_selected_node_global_barrier'] = True
        with self.assertRaises(ValueError):summarize(a, b)

    def test_all_tied_peak_names_retained(self):
        a, b = synthetic_summary_inputs()
        for record in b:
            for batch in record['batches']:
                row = batch['nodes'][0]
                batch['nodes'] = [{**copy.deepcopy(row), 'node': 'mul' + str(i)} for i in range(20)]
        report = summarize(a, b)
        self.assertEqual(len(report['pairs'][0]['out_peak_nodes']), 20)
        self.assertLessEqual(len(report['pairs'][0]['peak_windows']), 24)

    def test_prior_manifest_is_read_only_and_tamper_rejected(self):
        import hashlib
        import tempfile
        from run_diagnostics import load_prior
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            path = root / 'server-evidence/raw/model-01/case.json'
            path.parent.mkdir(parents=True)
            text = json.dumps({'model_id': 'Qwen/Qwen3-Embedding-0.6B', 'revision': 'a'*40,
                               'batch_size': 32, 'seq_len': 24, 'texts': ['test']*64})
            path.write_text(text)
            manifest = hashlib.sha256(path.read_bytes()).hexdigest() + '  server-evidence/raw/model-01/case.json\n'
            (root / 'MANIFEST.sha256').write_text(manifest)
            pins = root / 'pins.json'
            pins.write_text(json.dumps({'manifest_sha256': hashlib.sha256(manifest.encode()).hexdigest(),
                                        'case_sha256': hashlib.sha256(path.read_bytes()).hexdigest()}))
            from unittest.mock import patch
            with patch('run_diagnostics.PRIOR_BASELINE', pins):
                load_prior(root)
                self.assertEqual(path.read_text(), text)
                self.assertEqual((root / 'MANIFEST.sha256').read_text(), manifest)
                path.write_text(text + ' ')
                with self.assertRaises(ValueError):load_prior(root)
                path.write_text(text)
                (root / 'MANIFEST.sha256').write_text(manifest + '\n')
                with self.assertRaisesRegex(ValueError, 'frozen manifest identity'):load_prior(root)


try:
    import torch
except ImportError:
    torch = None
if os.environ.get('F08_REQUIRE_TORCH') == '1' and torch is None:
    raise RuntimeError('F08_REQUIRE_TORCH=1: real CPU tensor/release tests required')


class CPUMemory:
    """Zero counters for CPU control-flow tests only; not simulated PPU data."""
    def synchronize(self):pass
    def memory_allocated(self):return 0
    def reset_peak_memory_stats(self):pass
    def max_memory_allocated(self):return 0


@unittest.skipIf(torch is None, 'local torch unavailable; server must run real CPU tests')
class CPUReleaseTests(unittest.TestCase):
    def setUp(self):
        load_bridge(HERE.parent / 'f08_flagtree_eval')
        from execution import run_mul
        from peak_diagnostics import diagnose_batch
        self.run, self.diagnose = run_mul, diagnose_batch
        import operator
        g = torch.fx.Graph()
        x, u = g.placeholder('x'), g.placeholder('u')
        a = g.call_function(torch.ops.aten.add.Tensor, (x, 1))
        s = g.call_function(torch.ops.aten.silu.default, (a,))
        m = g.call_function(torch.ops.aten.mul.Tensor, (s, u))
        z = g.call_function(torch.ops.aten.add.Tensor, (m, 2))
        maximum = g.call_function(torch.ops.aten.max.dim, (u, 1))
        v = g.call_function(operator.getitem, (maximum, 0))
        i = g.call_function(operator.getitem, (maximum, 1))
        reduced = g.call_function(torch.ops.aten.sum.default, (v,))
        output = g.call_function(torch.ops.aten.add.Tensor, (z, reduced))
        g.output(output)
        self.module = torch.fx.GraphModule({}, g)
        self.values = [torch.arange(6, dtype=torch.float32).reshape(2, 3), torch.full((2, 3), .7)]
        self.calls = {m.name: lambda left, right, dest: torch.mul(left, right, out=dest)}
        self.selected = {m.name: {'destination_arg': 0}}
        self.max_node, self.value_node, self.index_node = maximum.name, v.name, i.name
        tasks, tensors = [], []
        for n in g.nodes:
            if n.op == 'output':continue
            if n.op == 'call_function':
                tasks.append({'task_id': 'task.' + n.name, 'source_node': n.name})
            names = [n.name + '.output0', n.name + '.output1'] if n is maximum else [n.name]
            for name in names:
                tensors.append({'tensor_id': 'tensor.' + name, 'source_value': name, 'storage_id': 'storage.' + name,
                                'producer': 'task.' + n.name if n.op == 'call_function' else None,
                                'consumers': ['task.' + user.name for user in n.users if user.op == 'call_function'],
                                'is_graph_output': n is output, 'is_persistent': False})
        storages = [{'storage_id': t['storage_id'], 'allocation_kind': 'temporary', 'source': 'CPU fixture'}
                    for t in tensors]
        self.plan = {'tasks': tasks, 'tensors': tensors, 'storages': storages}

    def diagnostic(self, inplace=False):
        with torch.no_grad():
            return self.diagnose(self.module, self.values, self.calls, self.selected, inplace,
                                 self.plan, CPUMemory(), 0)

    def test_outputs_equal_normal_both_modes(self):
        from graph import digest
        for inplace in (False, True):
            with torch.no_grad():
                expected = digest(self.run(self.module, self.values, self.calls, self.selected, inplace=inplace))
            self.assertEqual(self.diagnostic(inplace)['output_sha256'], expected)

    def test_tuple_retains_indices_until_last_projection(self):
        report = self.diagnostic()
        row = next(r for r in report['nodes'] if r['node'] == self.value_node)
        names = {m['source_value'] for g in snapshot_groups(report, row, 'after') for m in g['members']}
        self.assertIn(self.max_node + '.output0', names)
        self.assertIn(self.max_node + '.output1', names)
        self.assertIn(self.value_node, names)

    def test_tuple_container_gone_after_last_projection(self):
        report = self.diagnostic()
        row = next(r for r in report['nodes'] if r['node'] == self.index_node)
        names = {m['source_value'] for g in snapshot_groups(report, row, 'after') for m in g['members']}
        self.assertNotIn(self.max_node + '.output1', names)
        self.assertIn(self.value_node, names)

    def test_metadata_is_json_and_no_tensor_survives(self):
        import execution
        original = execution._execute
        weak = []
        def observed(node, env, *args):
            original(node, env, *args)
            if node.name in env and isinstance(env[node.name], torch.Tensor):
                weak.append(weakref.ref(env[node.name]))
        from unittest.mock import patch
        with patch.object(execution, '_execute', observed):
            report = self.diagnostic(True)
        gc.collect()
        self.assertTrue(weak)
        self.assertTrue(all(ref() is None for ref in weak))
        json.dumps(report)

    def test_placeholder_inputs_preserved(self):
        copies = [v.clone() for v in self.values]
        self.diagnostic(True)
        self.assertTrue(all(torch.equal(a, b) for a, b in zip(copies, self.values)))

    def test_order_tamper_rejected(self):
        self.plan['tasks'].reverse()
        with self.assertRaisesRegex(ValueError, 'order mismatch'):self.diagnostic()

    def test_records_none_and_same_validated_helper_called(self):
        import execution
        original = execution._execute
        seen = []
        def observed(node, env, counts, calls, selected, inplace, records):
            self.assertIsNone(records)
            seen.append(node.name)
            return original(node, env, counts, calls, selected, inplace, records)
        from unittest.mock import patch
        with patch.object(execution, '_execute', observed):self.diagnostic()
        self.assertEqual(seen, [n.name for n in self.module.graph.nodes if n.op == 'call_function'])


if __name__ == '__main__':
    unittest.main()
