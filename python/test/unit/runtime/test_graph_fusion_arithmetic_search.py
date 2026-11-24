import copy
import unittest
from types import SimpleNamespace
from unittest.mock import patch

import torch

from triton.experimental.graph_fusion._arithmetic_search import (
    choose_domain, graph_arithmetic, original_fp32_model)


def graph(model, *args):
    gm = torch.fx.symbolic_trace(model)

    class Values(torch.fx.Interpreter):
        def run_node(self, node):
            result = super().run_node(node)
            node.meta['example_value'] = result
            return result

    Values(gm).run(*args)
    return gm


class ArithmeticSearchTests(unittest.TestCase):
    def test_half_storage_all_fp32_arithmetic(self):
        class Chain(torch.nn.Module):
            def forward(self, x):
                return ((x + .1) * torch.sigmoid(x)).reshape(2, 4)
        rows = graph_arithmetic(graph(Chain(), torch.randn(2, 4).half()), reviewed_sdk=True)
        self.assertEqual(choose_domain(rows), 'fp32_only')
        self.assertEqual(sum(x['arithmetic'] == 'fp32' for x in rows), 3)

    def test_fp16_minmax_requires_mixed_graph(self):
        class Chain(torch.nn.Module):
            def forward(self, x): return torch.relu(x + .1)
        rows = graph_arithmetic(graph(Chain(), torch.randn(2, 4).half()), reviewed_sdk=True)
        self.assertEqual(choose_domain(rows), 'mixed')
        self.assertEqual([x['arithmetic'] for x in rows], ['fp32', 'fp16'])

    def test_fp16_matmul_io_configuration_does_not_prove_arithmetic(self):
        class Chain(torch.nn.Module):
            def forward(self, x, w): return torch.mm(x, w)
        rows = graph_arithmetic(graph(Chain(), torch.randn(2, 4).half(), torch.randn(4, 3).half()), reviewed_sdk=True)
        self.assertEqual(choose_domain(rows), 'unresolved')
        self.assertEqual(rows[0]['arithmetic'], 'unknown')
        self.assertEqual(rows[0]['evidence'], 'matrix_io_mode_is_not_arithmetic_proof_M64')

    def test_unknown_matrix_keeps_boundary_in_graph_with_verified_half_arithmetic(self):
        class Chain(torch.nn.Module):
            def forward(self, x, w): return torch.relu(torch.mm(x, w) + .1)
        rows = graph_arithmetic(graph(Chain(), torch.randn(2, 4).half(), torch.randn(4, 3).half()), reviewed_sdk=True)
        self.assertEqual(choose_domain(rows), 'mixed')
        self.assertEqual([x['arithmetic'] for x in rows], ['unknown', 'fp32', 'fp16'])

    def test_unknown_sdk_never_authorizes_fp32(self):
        rows = graph_arithmetic(graph(torch.nn.Sigmoid(), torch.randn(2, 4).half()), reviewed_sdk=False)
        self.assertEqual(choose_domain(rows), 'unresolved')

    def test_unreviewed_operator_blocks_fp32_only(self):
        class Chain(torch.nn.Module):
            def forward(self, x): return torch.sin(x) + 1
        rows = graph_arithmetic(graph(Chain(), torch.randn(2, 4).half()), reviewed_sdk=True)
        self.assertEqual(choose_domain(rows), 'unresolved')

    def test_bf16_does_not_inherit_half_contract(self):
        rows = graph_arithmetic(graph(torch.nn.Sigmoid(), torch.randn(2, 4).bfloat16()), reviewed_sdk=True)
        self.assertEqual(choose_domain(rows), 'unresolved')

    def test_fp32_matrix_storage_is_not_arithmetic_evidence(self):
        class Chain(torch.nn.Module):
            def forward(self, x): return x @ x
        rows = graph_arithmetic(graph(Chain(), torch.randn(4, 4)), reviewed_sdk=True)
        self.assertEqual(choose_domain(rows), 'unresolved')

    def test_conversions_do_not_trigger_mixed_graph(self):
        class Chain(torch.nn.Module):
            def forward(self, x): return (x.float() + 1).half()
        rows = graph_arithmetic(graph(Chain(), torch.randn(2, 4).half()), reviewed_sdk=True)
        self.assertEqual(choose_domain(rows), 'fp32_only')

    def test_source_binding_does_not_widen_rounded_weights(self):
        master = torch.nn.Linear(3, 4).eval().requires_grad_(False)
        low = copy.deepcopy(master).half()
        original = low.weight.clone()
        x = torch.randn(2, 3)
        with torch.no_grad():
            restored, prepare = original_fp32_model(low, source_tensors=dict(master.named_parameters()),
                prepare=lambda x: ((x.half(),), {}), source_prepare=lambda x: ((x,), {}),
                validation_inputs=[((x,), {})])
        self.assertEqual(restored.weight.dtype, torch.float32)
        torch.testing.assert_close(restored.weight, master.weight, atol=0, rtol=0)
        torch.testing.assert_close(low.weight, original, atol=0, rtol=0)
        self.assertFalse(torch.equal(restored.weight, low.weight.float()))
        self.assertEqual(prepare(x)[0][0].dtype, torch.float32)

    def test_missing_master_state_or_input_is_rejected(self):
        model = torch.nn.Linear(3, 4).half().eval().requires_grad_(False)
        with self.assertRaisesRegex(ValueError, 'original FP32 state'):
            original_fp32_model(model, source_tensors=None, prepare=lambda x: ((x,), {}),
                source_prepare=None, validation_inputs=[((torch.randn(2, 3).half(),), {})])
        with self.assertRaisesRegex(ValueError, 'original FP32 prepared inputs'):
            original_fp32_model(torch.nn.Sigmoid(), source_tensors=None, prepare=lambda x: ((x,), {}),
                source_prepare=None, validation_inputs=[((torch.randn(2, 3).half(),), {})])

    def test_fp32_domain_never_starts_precision_partition_search(self):
        from triton.experimental.graph_fusion._model_candidates import model_candidate_routes
        model = torch.nn.Sigmoid().eval()
        calls, record = [], {}
        def inspect(*args, record, **kwargs):
            record.update(domain='fp32_only', graphs=[])
            return []
        def build(model, **kwargs):
            calls.append(kwargs)
            return SimpleNamespace(_f06_audit=[], _f06_resource_allowlist=None)
        with torch.no_grad(), patch('triton.experimental.graph_fusion._arithmetic_search.inspect_model_arithmetic', inspect), patch(
                'triton.experimental.graph_fusion._local_precision.discover_local_precision_profiles',
                side_effect=AssertionError('must not enumerate mixed graphs')), patch(
                'triton.experimental.graph_fusion._model_pipeline.compile_pipeline', build):
            routes = model_candidate_routes(model, prepare=lambda x: ((x,), {}),
                output_template=torch.empty(2, 4).half(), validation_inputs=[((torch.randn(2, 4),), {})],
                validate=lambda *a: None, record=record, tolerance=dict(atol=3e-4, rtol=3e-4))
        self.assertEqual(len(routes), 6)
        self.assertEqual(record['precision_policies'], ['preserve_operator'])
        self.assertTrue(all(x['source_precision'] == 'float32' and
            x['precision_options']['fp32_arithmetic_only'] for x in calls))

    def test_fp32_lowering_removes_internal_half_method_keeps_final_dtype(self):
        from triton.experimental.graph_fusion._model_inductor import promote_whole_graph
        class Chain(torch.nn.Module):
            def forward(self, x): return ((x + .0001).half().float() * 1.001).half()
        x = torch.tensor([1.0002, .0012345])
        gm = graph(Chain(), x)
        promote_whole_graph(gm, [x])
        actual = gm(x)
        expected = ((x + .0001) * 1.001).half()
        torch.testing.assert_close(actual, expected, atol=0, rtol=0)
        self.assertEqual(actual.dtype, torch.float16)
        self.assertFalse(any(n.op == 'call_method' and n.target == 'half' for n in gm.graph.nodes))

    def test_fp32_pipeline_rechecks_new_graph_and_preserves_output_contract(self):
        from triton.experimental.graph_fusion._model_pipeline import compile_pipeline
        class Chain(torch.nn.Module):
            def forward(self, x):
                if x.shape[0] == 3:
                    return torch.sin(x).half()
                return ((x + .0001).half().float() * 1.001).half()
        audit = []
        with torch.no_grad():
            call = compile_pipeline(Chain().eval(), prepare=lambda x: ((x,), {}),
                source_precision='float32', output_template=torch.empty(2).half(),
                tolerance=dict(atol=3e-4, rtol=3e-4), audit=audit,
                precision_policy='preserve_operator',
                precision_options=dict(fp32_arithmetic_only=True, require_compiled=True),
                _capture_cost_graph=True, _cost_graph_observer=lambda *a: None)
            x = torch.tensor([1.0002, .0012345])
            torch.testing.assert_close(call(x), ((x + .0001) * 1.001).half(), atol=0, rtol=0)
            self.assertEqual(audit[0]['execution_precision'], 'fp32_arithmetic_only')
            with self.assertRaisesRegex(Exception, 'gained unreviewed arithmetic'):
                call(torch.ones(3))


if __name__ == '__main__':
    unittest.main()
