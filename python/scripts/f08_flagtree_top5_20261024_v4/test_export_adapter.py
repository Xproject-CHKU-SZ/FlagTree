"""Software guards plus mandatory server-side real torch export regressions."""
import ast
import copy
import json
import os
from pathlib import Path
from types import SimpleNamespace as NS
import unittest

from export_adapter import input_contract, inventory, issues, normalize
from support import HERE


class Op:
    def __init__(self,name,write=False):
        self.name=name
        self._schema=NS(arguments=[NS(alias_info=NS(is_write=write))])
    def __str__(self):return self.name


def graph(wrapper=False,write=False):
    silu=NS(name='silu',op='call_function',target=Op('aten.silu.default'),args=(),kwargs={},users={})
    up=NS(name='up',op='placeholder',target='up',args=(),kwargs={},users={})
    mul=NS(name='mul',op='call_function',target=Op('aten.mul.Tensor',write),args=(silu,up),kwargs={},users={})
    nodes=[up,silu,mul]
    if wrapper:
        nodes.append(NS(name='batch',op='call_function',target='_add_batch_dim',args=(),kwargs={},users={}))
    return NS(nodes=nodes,lint=lambda:None)


class Program:
    def __init__(self,g=None):
        self.graph_module=NS(graph=g or graph(),recompile=lambda:None)
        self.graph_signature=NS(input_specs=[NS(kind=NS(name='USER_INPUT'),target=None,arg=NS())])
        self.derived=None;self.calls=[]
    def run_decompositions(self,*,decomp_table):
        self.calls.append(copy.deepcopy(decomp_table))
        return self.derived or Program()


class AdapterContracts(unittest.TestCase):
    def test_calls_public_api_once_with_empty_table(self):
        p=Program(graph(wrapper=True));derived,report=normalize(p)
        self.assertEqual(p.calls,[{}]);self.assertEqual(report['after']['silu_mul_pairs'],1)
    def test_wrappers_fail_before_storage_trace(self):
        p=Program();p.derived=Program(graph(wrapper=True))
        with self.assertRaisesRegex(ValueError,'not G1-compatible'):normalize(p)
    def test_mutation_rejected(self):
        p=Program();p.derived=Program(graph(write=True))
        with self.assertRaisesRegex(ValueError,'not G1-compatible'):normalize(p)
    def test_unknown_python_call_rejected(self):
        g=graph();g.nodes[-1].target=lambda x:x
        self.assertEqual(issues(g)[0]['reason'],'unknown_side_effect_or_higher_order_op')
    def test_nonstandard_node_rejected(self):
        g=graph();g.nodes[-1].op='call_module'
        self.assertEqual(issues(g)[0]['reason'],'unsupported_graph_node')
    def test_candidate_loss_rejected(self):
        p=Program();p.derived=Program();p.derived.graph_module.graph.nodes[-1].target=Op('aten.add.Tensor')
        with self.assertRaisesRegex(ValueError,'changed/lost'):normalize(p)
    def test_silu_decomposition_rejected(self):
        p=Program();p.derived=Program();p.derived.graph_module.graph.nodes[1].target=Op('aten.sigmoid.default')
        with self.assertRaisesRegex(ValueError,'changed SiLU'):normalize(p)
    def test_state_rebinding_rejected(self):
        p=Program();p.derived=Program();p.derived.graph_signature.input_specs[0].target='wrong_weight'
        with self.assertRaisesRegex(ValueError,'input/state'):normalize(p)
    def test_original_graph_not_edited(self):
        p=Program(graph(wrapper=True));before=inventory(p.graph_module.graph)
        normalize(p);self.assertEqual(before,inventory(p.graph_module.graph))
    def test_upstream_failure_propagates_without_fallback(self):
        p=Program()
        def fail(**kwargs):raise RuntimeError('upstream blocked')
        p.run_decompositions=fail
        with self.assertRaisesRegex(RuntimeError,'upstream blocked'):normalize(p)
    def test_no_wrapper_storage_unwrapping_or_causal_mask_substitution(self):
        text=(HERE/'export_adapter.py').read_text()
        tree=ast.parse(text)
        attrs={n.attr for n in ast.walk(tree) if isinstance(n,ast.Attribute)}
        self.assertFalse(attrs & {'get_unwrapped','_unwrap_batched','untyped_storage'})
        self.assertNotIn('create_causal_mask',text)
    def test_export_is_after_device_transfer(self):
        text=(HERE/'qwen.py').read_text()
        self.assertLess(text.index("wrapper.to('cuda:0')"),text.index('torch.export.export('))
    def test_default_only_qwen(self):
        text=(HERE/'run_top5.py').read_text()
        self.assertIn("choices=('all','bge','qwen'),default='qwen'",text)


try:
    import torch
except ImportError:torch=None
if os.environ.get('F08_REQUIRE_TORCH')=='1' and torch is None:
    raise RuntimeError('real torch CPU tests required; no skip allowed on server')


@unittest.skipIf(torch is None,'local torch missing; server must run F08_REQUIRE_TORCH=1')
class RealExportTests(unittest.TestCase):
    def toy(self):
        class Model(torch.nn.Module):
            def forward(self,x,up):
                b=torch.arange(x.shape[0]);h=torch.arange(1);s=torch.arange(x.shape[1])
                fn=lambda b,h,q,k: (q >= k) & (b >= 0)
                for dims in ((None,None,None,0),(None,None,0,None),(None,0,None,None),(0,None,None,None)):
                    fn=torch.vmap(fn,in_dims=dims)
                mask=fn(b,h,s,s)
                # Keep a real mask dependency, without replacing mask semantics.
                return torch.nn.functional.silu(x)*up + mask.sum().to(x.dtype)
        return Model().eval()
    def case(self,b=2,s=3):
        model=self.toy();x=torch.arange(b*s*4,dtype=torch.float32).reshape(b,s,4)/17
        u=x+.5
        exported=torch.export.export(model,(x,u),strict=False)
        return model,x,u,exported
    def test_four_level_vmap_becomes_storage_observable(self):
        model,x,u,exported=self.case();derived,_=normalize(exported)
        self.assertEqual(issues(derived.graph_module.graph),[])
        class Observer(torch.fx.Interpreter):
            def run_node(self,n):
                result=super().run_node(n)
                if isinstance(result,torch.Tensor):
                    result.untyped_storage().nbytes()
                return result
        Observer(derived.graph_module).run(x,u)
    def test_native_and_derived_strict_bitwise(self):
        model,x,u,exported=self.case();derived,_=normalize(exported)
        self.assertTrue(torch.equal(model(x,u),derived.module()(x,u)))
    def test_irregular_shape_strict_bitwise(self):
        model,x,u,exported=self.case(3,7);derived,_=normalize(exported)
        self.assertTrue(torch.equal(model(x,u),derived.module()(x,u)))
    def test_inputs_unchanged(self):
        model,x,u,exported=self.case();before=(x.clone(),u.clone());derived,_=normalize(exported)
        derived.module()(x,u)
        self.assertTrue(torch.equal(x,before[0]) and torch.equal(u,before[1]))
    def test_silu_mul_coverage_preserved(self):
        model,x,u,exported=self.case();derived,report=normalize(exported)
        self.assertEqual(report['before']['silu_mul_pairs'],report['after']['silu_mul_pairs'])
        self.assertEqual(report['after']['silu_mul_pairs'],1)
    def test_input_contract_preserved(self):
        model,x,u,exported=self.case();derived,_=normalize(exported)
        self.assertEqual(input_contract(exported),input_contract(derived))


if __name__=='__main__':unittest.main()
