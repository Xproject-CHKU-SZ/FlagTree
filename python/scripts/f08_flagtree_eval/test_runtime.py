"""Real torch CPU checks. Skipped, not 'passed', when torch is unavailable."""
import importlib.util
from pathlib import Path
import sys
import unittest
import weakref

sys.path.insert(0, str(Path(__file__).resolve().parent))
from graph import run_graph

HAS_TORCH = importlib.util.find_spec("torch") is not None
if HAS_TORCH:
    import torch


@unittest.skipUnless(HAS_TORCH, "torch unavailable; server CPU checks required")
class Execution(unittest.TestCase):
    def build(self):
        graph = torch.fx.Graph()
        x = graph.placeholder("x")
        a = graph.call_function(torch.ops.aten.mul.Scalar, (x, 2))
        y = graph.call_function(torch.ops.aten.gelu.default, (a,))
        graph.output((y,))
        return torch.fx.GraphModule(torch.nn.Module(), graph), y.name

    def test_three_arms_same_result(self):
        module, gelu = self.build()
        x = torch.randn(128)
        call = lambda source, dest: torch.ops.aten.gelu.out(source, out=dest)
        reference = run_graph(module, [x], {})
        separate = run_graph(module, [x], {gelu: call})
        alias = run_graph(module, [x], {gelu: call}, inplace=True)
        self.assertTrue(torch.equal(reference, separate))
        self.assertTrue(torch.equal(separate, alias))

    def test_inputs_unchanged(self):
        module, gelu = self.build()
        x = torch.randn(128)
        before = x.clone()
        call = lambda source, dest: torch.ops.aten.gelu.out(source, out=dest)
        run_graph(module, [x], {gelu: call}, inplace=True)
        self.assertTrue(torch.equal(x, before))

    def test_dead_input_not_kept(self):
        graph = torch.fx.Graph()
        x = graph.placeholder("x")
        watched = []
        def make(source):
            output = source * 2
            watched.append(weakref.ref(output))
            return output
        def consume(source):
            return source + 1
        def next_node(source):
            self.assertIsNone(watched[0]())
            return source + 1
        a = graph.call_function(make, (x,))
        b = graph.call_function(consume, (a,))
        c = graph.call_function(next_node, (b,))
        graph.output((c,))
        run_graph(torch.fx.GraphModule(torch.nn.Module(), graph), [torch.ones(2)], {})

    def test_view_alias_live(self):
        graph = torch.fx.Graph()
        x = graph.placeholder("x")
        a = graph.call_function(torch.ops.aten.mul.Scalar, (x, 2))
        view = graph.call_function(torch.ops.aten.view.default, (a, [4]))
        y = graph.call_function(torch.ops.aten.gelu.default, (a,))
        result = graph.call_function(torch.ops.aten.add.Tensor, (y, view))
        graph.output((result,))
        module = torch.fx.GraphModule(torch.nn.Module(), graph)
        self.assertTrue(torch.equal(run_graph(module, [torch.ones(4)], {}), module(torch.ones(4))[0]))

    def test_diagnostics_only_hashes(self):
        module, gelu = self.build()
        records = {}
        call = lambda source, dest: torch.ops.aten.gelu.out(source, out=dest)
        run_graph(module, [torch.ones(4)], {gelu: call}, inplace=True, records=records)
        self.assertTrue(records)
        self.assertTrue(all(isinstance(value, str) for value in records.values()))


if __name__ == "__main__":
    unittest.main()
