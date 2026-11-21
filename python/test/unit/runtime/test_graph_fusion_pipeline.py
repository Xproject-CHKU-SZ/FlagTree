"""Check the actual Dynamo boundary without accelerator compilation."""
import unittest
from unittest.mock import patch

import torch
from triton.experimental.graph_fusion._model_pipeline import compile_pipeline


class PipelineTests(unittest.TestCase):
    def setUp(self):
        torch._dynamo.reset()
        self.graphs = []

    def backend(self, **options):
        def capture(gm, inputs):
            self.graphs.append(gm)
            return gm.forward
        return capture

    def compile(self, model, prepare):
        with patch('triton.experimental.graph_fusion._model_inductor.inductor_backend', self.backend):
            return compile_pipeline(model.eval(), prepare=prepare,
                                    tolerance=dict(atol=0, rtol=0), vendor_capture=False)

    def test_direct_forward_pooling_normalization_and_output_order_in_one_graph(self):
        class Pipeline(torch.nn.Module):
            class Linear(torch.nn.Module):
                def __init__(self, n, m):
                    super().__init__()
                    self.weight = torch.nn.Parameter(torch.randn(n, m))
                def forward(self, x):
                    return x @ self.weight

            def __init__(self):
                super().__init__()
                self.encoder = self.Linear(4, 8)
                self.projection = self.Linear(8, 3)

            def forward(self, x, order):
                # Direct .forward calls used by encode must not hide the root.
                hidden = self.encoder.forward(x).relu()
                pooled = hidden.mean(1)
                projected = self.projection.forward(pooled)
                return torch.nn.functional.normalize(projected, dim=-1).index_select(0, order)

        model = Pipeline().eval()
        calls = []

        def prepare(x, order):
            calls.append(x.shape)
            return ((x, torch.tensor(order)), {})

        run = self.compile(model, prepare)
        with torch.no_grad():
            for n in (3, 3, 5):
                x = torch.randn(n, 7, 4)
                order = list(reversed(range(n)))
                torch.testing.assert_close(run(x, order), model(x, torch.tensor(order)))
        self.assertEqual(len(calls), 3)
        # New shape specializes another complete graph, not separate modules.
        self.assertEqual(len(self.graphs), 2)
        for graph in self.graphs:
            code = graph.code
            for op in ('@', 'mean', 'normalize', 'index_select'):
                self.assertIn(op, code)
        self.assertEqual(run._f06_scope, 'complete_tensor_forward')

    def test_graph_break_is_explicit_failure(self):
        class Broken(torch.nn.Module):
            def forward(self, x):
                x = x + 1
                torch._dynamo.graph_break()
                return x.relu()
        run = self.compile(Broken(), lambda x: ((x,), {}))
        with torch.no_grad(), self.assertRaises(torch._dynamo.exc.Unsupported):
            run(torch.randn(3))
        self.assertEqual(self.graphs, [])

    def test_preprocessing_and_output_contract_remain_live(self):
        class Pipeline(torch.nn.Module):
            def __init__(self):
                super().__init__()
                self.bias = torch.nn.Parameter(torch.ones(3))
            def forward(self, x, *, scale):
                y = (x + self.bias) * scale
                return {'value': y, 'residual': (x,)}
        model = Pipeline().eval()
        run = self.compile(model, lambda values: ((torch.tensor(values),), {'scale': 2}))
        with torch.no_grad():
            a = run([1., 2., 3.])
            model.bias.add_(3)
            b = run([3., 1., 4.])
        torch.testing.assert_close(a['value'], torch.tensor([4., 6., 8.]))
        torch.testing.assert_close(b['value'], torch.tensor([14., 10., 16.]))
        torch.testing.assert_close(b['residual'][0], torch.tensor([3., 1., 4.]))

    def test_reject_partial_capture_and_malformed_preparation(self):
        with self.assertRaises(ValueError):
            compile_pipeline(torch.nn.Identity().eval(), prepare=lambda x: ((x,), {}), fullgraph=False)
        run = self.compile(torch.nn.Identity(), lambda x: x)
        with self.assertRaises(TypeError):
            run(torch.ones(3))

    def test_original_fp32_capture_and_final_cast_preserve_unrounded_values(self):
        class Model(torch.nn.Module):
            def __init__(self):
                super().__init__()
                self.weight = torch.nn.Parameter(torch.tensor(1.0004))

            def forward(self, x):
                y = x * self.weight - 1000
                if x.dtype == torch.float16:
                    y = y.clamp(-10, 10)
                return {'value': y, 'ids': torch.arange(x.shape[0])}

        model = Model().eval()
        template = {'value': torch.empty(1, 1, dtype=torch.float16), 'ids': torch.zeros(1, dtype=torch.int64)}
        with patch('triton.experimental.graph_fusion._model_inductor.inductor_backend', self.backend):
            run = compile_pipeline(model, prepare=lambda x: ((x,), {}),
                source_precision='float32', output_template=template,
                tolerance=dict(atol=0, rtol=0), vendor_capture=False)
        with torch.no_grad():
            for n in (1, 3):
                x = torch.full((n, 1), 1000.)
                result = run(x)
                torch.testing.assert_close(result['value'], model(x)['value'].half(), atol=0, rtol=0)
                self.assertGreater(result['value'].float().min().item(), .39)
                self.assertEqual(result['ids'].dtype, torch.int64)
        self.assertEqual(len(self.graphs), 2)
        for graph in self.graphs:
            self.assertNotIn('clamp', graph.code)
            casts = [x for x in graph.graph.nodes if x.op == 'call_method' and x.target == 'to']
            self.assertEqual(len(casts), 1)
            self.assertEqual(casts[0].kwargs['dtype'], torch.float16)
        with self.assertRaisesRegex(ValueError, 'original FP32 prepared inputs'):
            run(torch.ones(1, 1, dtype=torch.float16))
        with self.assertRaisesRegex(ValueError, 'original FP32 parameters'):
            compile_pipeline(Model().half().eval(), prepare=lambda x: ((x,), {}), source_precision='float32')


if __name__ == '__main__':
    unittest.main()
