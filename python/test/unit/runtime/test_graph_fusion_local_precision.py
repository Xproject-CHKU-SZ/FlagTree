import copy
import unittest

import torch

from triton.experimental.graph_fusion._local_precision import LocalPrecisionSpace, discover_local_precision_profiles
from triton.experimental.graph_fusion._model_precision import compare_model_outputs


class Block(torch.nn.Module):
    def __init__(self):
        super().__init__()
        self.q_proj = torch.nn.Linear(4, 4)
        self.k_proj = torch.nn.Linear(4, 4)
        self.v_proj = torch.nn.Linear(4, 4)

    def forward(self, x):
        return x + self.q_proj(x) + self.k_proj(x) + self.v_proj(x)


class Model(torch.nn.Module):
    def __init__(self):
        super().__init__()
        self.entry = torch.nn.Linear(4, 4)
        self.layers = torch.nn.ModuleList([Block(), Block()])
        self.end = torch.nn.Linear(4, 4)

    def forward(self, x):
        x = self.entry(x)
        for layer in self.layers:
            x = layer(x)
        return self.end(x), x


class LocalPrecisionTests(unittest.TestCase):
    def setup_space(self):
        torch.manual_seed(42)
        master = Model().eval().requires_grad_(False)
        low = copy.deepcopy(master).half()
        x = torch.randn(2, 4) + .0001
        source = dict(master.named_parameters())
        record = {}
        space = LocalPrecisionSpace(low, source_tensors=source,
            prepare=lambda x: ((x.half(),), {}), source_prepare=lambda x: ((x,), {}),
            validation_inputs=[((x,), {})], record=record)
        return master, low, x, space, record

    def test_zero_changes_and_joint_qkv_keep_original_dtype(self):
        with torch.no_grad():
            master, low, x, space, record = self.setup_space()
            self.assertTrue(record['zero_promotion_bitwise_equal'])
            self.assertEqual(set(space.groups), {'entry', 'layers.0', 'layers.1', 'end'})
            torch.testing.assert_close(space.build(())(x), low(x.half()), atol=0, rtol=0)
            self.assertEqual(len(space.groups['layers.0']['tensors']), 6)
            self.assertTrue(all(p.dtype == torch.float16 for p in low.parameters()))

    def test_local_sources_keep_master_values_and_native_exit_boundary(self):
        with torch.no_grad():
            master, low, x, space, record = self.setup_space()
            candidate = space.build(('entry', 'layers.0'))
            self.assertIs(candidate.entry.region.weight, master.entry.weight)
            self.assertEqual(candidate.layers[1].region.q_proj.weight.dtype, torch.float16)
            expected = master.layers[0](master.entry(x))
            expected = low.layers[1](expected.half())
            want = (low.end(expected), expected)
            torch.testing.assert_close(candidate(x), want, atol=0, rtol=0)
            self.assertEqual(candidate(x)[0].dtype, torch.float16)
            torch.testing.assert_close(space.build(space.groups)(x), master(x), atol=0, rtol=0)

    def test_wrong_sources_and_tied_regions_are_rejected(self):
        with torch.no_grad():
            master, low, x, space, record = self.setup_space()
            sources = dict(master.named_parameters())
            sources['entry.weight'] = torch.zeros_like(master.entry.weight)
            with self.assertRaisesRegex(ValueError, 'not the original'):
                LocalPrecisionSpace(low, source_tensors=sources, prepare=lambda x: ((x.half(),), {}),
                    source_prepare=lambda x: ((x,), {}), validation_inputs=[((x,), {})], record={})
            low.end.weight = low.entry.weight
            with self.assertRaisesRegex(ValueError, 'Tied'):
                LocalPrecisionSpace(low, source_tensors=dict(master.named_parameters()),
                    prepare=lambda x: ((x.half(),), {}), source_prepare=lambda x: ((x,), {}),
                    validation_inputs=[((x,), {})], record={})

    def test_bounded_search_starts_with_zero_promotions_and_never_calls_master_forward(self):
        from unittest.mock import patch
        with torch.no_grad():
            master, low, x, space, record = self.setup_space()
            wanted = master(x); template = low(x.half()); scores = {}
            def validate(name, output, args, kwargs):
                rows = []
                try:
                    compare_model_outputs(output, wanted, dict(atol=0., rtol=0.),
                                          output_template=template, records=rows)
                finally:
                    scores[name] = (sum(not r['passed'] for r in rows),
                        sum(r.get('elements_outside_uncast_tolerance',0) for r in rows))
            with patch.object(master, 'forward', side_effect=AssertionError('source graph must not run')):
                profiles = discover_local_precision_profiles(space, output_template=template,
                    validation_inputs=[((x,), {})], validate=validate, score=scores.__getitem__,
                    record=record, max_trials=24)
            self.assertEqual(record['trials'][0]['selected'], [])
            self.assertFalse(record['source_forward_used'])
            self.assertLessEqual(len(record['trials']), 24)
            self.assertTrue(profiles)
            self.assertTrue(all(p.dtype==torch.float16 for p in low.parameters()))

    def test_mixed_region_model_is_one_guarded_graph_and_has_no_output_cache(self):
        from triton.experimental.graph_fusion._model import enable_vendor_capture
        enable_vendor_capture()
        with torch.no_grad():
            master, low, x, space, record = self.setup_space()
            candidate = space.build(('entry', 'layers.0'))
            graphs = []
            def backend(gm, inputs):
                graphs.append((gm, [v.dtype for v in inputs if isinstance(v, torch.Tensor)]))
                return gm.forward
            compiled = torch.compile(candidate, backend=backend, fullgraph=True)
            for value in (x, x+1):
                torch.testing.assert_close(compiled(value), candidate(value), atol=0, rtol=0)
            self.assertEqual(len(graphs), 1)
            self.assertIn(torch.float16, graphs[0][1])
            self.assertIn(torch.float32, graphs[0][1])

    def test_effectful_region_is_not_silently_given_a_copying_boundary(self):
        class Effect(torch.nn.Module):
            def __init__(self, mutate):
                super().__init__(); self.weight=torch.nn.Parameter(torch.ones(1),requires_grad=False)
                self.mutate=mutate
            def forward(self,x):
                if self.mutate:x.add_(self.weight)
                return x
        with torch.no_grad():
            for mutate in (False,True):
                master=torch.nn.Sequential(Effect(mutate)).eval()
                low=copy.deepcopy(master).half()
                with self.assertRaisesRegex(ValueError,'mutates its input|input alias'):
                    LocalPrecisionSpace(low,source_tensors=dict(master.named_parameters()),
                        prepare=lambda x:((x.half(),),{}),source_prepare=lambda x:((x,),{}),
                        validation_inputs=[((torch.ones(2),),{})],record={})

    def test_functional_matmul_joins_both_projection_precision_choices(self):
        class TwoTowers(torch.nn.Module):
            def __init__(self):
                super().__init__();self.left=torch.nn.Linear(4,4);self.right=torch.nn.Linear(4,4)
            def forward(self,x):
                a,b=self.left(x),self.right(x)
                return torch.matmul(a/a.norm(dim=-1,keepdim=True), (b/b.norm(dim=-1,keepdim=True)).t())
        with torch.no_grad():
            master=TwoTowers().eval().requires_grad_(False);low=copy.deepcopy(master).half();x=torch.randn(2,4)
            record={}
            space=LocalPrecisionSpace(low,source_tensors=dict(master.named_parameters()),
                prepare=lambda x:((x.half(),),{}),source_prepare=lambda x:((x,),{}),
                validation_inputs=[((x,),{})],record=record)
            self.assertTrue(record['same_dtype_joins'])
            self.assertEqual(space.close_selected({'left'}),{'left','right'})
            self.assertEqual(space.remove_regions({'left','right'},{'right'}),set())
            torch.testing.assert_close(space.build({'left'})(x),master(x),atol=0,rtol=0)


if __name__ == '__main__':
    unittest.main()
