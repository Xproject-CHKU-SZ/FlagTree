"""Pure contracts + real CPU plumbing stand-ins; server may not skip torch tests."""
import ast
import copy
import json
import os
from pathlib import Path
from types import SimpleNamespace as NS
import unittest
from support import HERE,load_bridge,mul_candidate,select_case_models,require_layout


def fixture(reverse=False):
    a=NS(name='silu',target='aten.silu.default');b=NS(name='up',target='aten.linear.default')
    node=NS(name='mul',target='aten.mul.Tensor',args=(b,a) if reverse else (a,b),kwargs={})
    records={name:{'dtype':'float32','shape':[2,3],'contiguous':True,'byte_offset':0,
                   'device':'cuda:0','nbytes':24,'pointer':(i+1)*1024}
             for i,name in enumerate(('silu','up','mul'))}
    return node,records,{'tensor.silu'}


class BindingTests(unittest.TestCase):
    def test_legal_first_operand(self):
        self.assertEqual(mul_candidate(*fixture())['destination_arg'],0)
    def test_legal_second_operand(self):
        self.assertEqual(mul_candidate(*fixture(True))['destination_arg'],1)
    def test_g03_rejection(self):
        n,r,_=fixture()
        with self.assertRaises(ValueError):mul_candidate(n,r,set())
    def test_wrong_operation(self):
        n,r,a=fixture();n.target='aten.add.Tensor'
        with self.assertRaises(ValueError):mul_candidate(n,r,a)
    def test_missing_direct_silu(self):
        n,r,a=fixture();n.args[0].target='aten.view.default'
        with self.assertRaises(ValueError):mul_candidate(n,r,a)
    def test_two_silu_sources(self):
        n,r,a=fixture();n.args[1].target='aten.silu.default'
        with self.assertRaises(ValueError):mul_candidate(n,r,a)
    def test_scalar_input(self):
        n,r,a=fixture();n.args=(n.args[0],2)
        with self.assertRaises(ValueError):mul_candidate(n,r,a)
    def test_kwargs_rejected(self):
        n,r,a=fixture();n.kwargs={'out':'something'}
        with self.assertRaises(ValueError):mul_candidate(n,r,a)
    def test_missing_evidence(self):
        n,r,a=fixture();del r['silu']
        with self.assertRaises(ValueError):mul_candidate(n,r,a)
    def test_layout_rejection_matrix(self):
        for key,value in [('dtype','float16'),('shape',[1,3]),('contiguous',False),
                          ('byte_offset',4),('device','cuda:1'),('nbytes',48)]:
            with self.subTest(key=key):
                n,r,a=fixture();r['silu'][key]=value
                with self.assertRaises(ValueError):mul_candidate(n,r,a)
    def test_native_alias_rejected(self):
        n,r,a=fixture();r['up']['pointer']=r['silu']['pointer']
        with self.assertRaises(ValueError):mul_candidate(n,r,a)
    def test_unknown_shape(self):
        n,r,a=fixture()
        for x in r.values():x['shape']=['B',3]
        with self.assertRaises(ValueError):mul_candidate(n,r,a)
    def test_full_storage_needed(self):
        n,r,a=fixture();r['mul']['nbytes']=20
        with self.assertRaises(ValueError):mul_candidate(n,r,a)
    def test_scalar_tensor_rejected(self):
        n,r,a=fixture()
        for x in r.values():x['shape']=[];x['nbytes']=4
        with self.assertRaises(ValueError):mul_candidate(n,r,a)
    def test_unknown_or_unaligned_pointer(self):
        for value in (None,0,True,3):
            with self.subTest(value=value):
                n,r,a=fixture();r['silu']['pointer']=value
                with self.assertRaises(ValueError):mul_candidate(n,r,a)
    def test_only_requested_top5_models(self):
        c={'execution_candidates':[{'model_id':name} for name in
            ('sentence-transformers/all-MiniLM-L6-v2','BAAI/bge-m3','Qwen/Qwen3-Embedding-0.6B')]}
        selected=select_case_models(c)
        self.assertEqual([m['model_id'] for m in selected],['BAAI/bge-m3','Qwen/Qwen3-Embedding-0.6B'])
        self.assertEqual(selected[0]['revision'],'5617a9f61b028005a4858fdac845db406aefb181')
    def test_no_missing_model_substitution(self):
        with self.assertRaises(ValueError):select_case_models({'execution_candidates':[]})
    def test_kernel_complete_launch_signature(self):
        tree=ast.parse((HERE/'mul_kernel.py').read_text())
        launches=[n for n in ast.walk(tree) if isinstance(n,ast.Call) and
            isinstance(n.func,ast.Subscript) and isinstance(n.func.value,ast.Name) and n.func.value.id=='compiled']
        self.assertEqual(len(launches),2)
        self.assertTrue(all(len(n.args)==5 for n in launches))
    def test_no_runtime_aten_out_or_post_copy(self):
        text=(HERE/'mul_kernel.py').read_text()
        self.assertNotIn('torch.ops.aten',text);self.assertNotIn('copy_',text)
    def test_compiled_callable_does_not_capture_samples(self):
        tree=ast.parse((HERE/'mul_kernel.py').read_text())
        call=next(n for n in ast.walk(tree) if isinstance(n,ast.FunctionDef) and n.name=='call')
        used={n.id for n in ast.walk(call) if isinstance(n,ast.Name) and isinstance(n.ctx,ast.Load)}
        self.assertFalse(used & {'x','u','out'})
    def test_diagnostics_not_in_measure_function(self):
        tree=ast.parse((HERE/'worker.py').read_text())
        measured=next(n for n in tree.body if isinstance(n,ast.FunctionDef) and n.name=='qwen_measure')
        calls={n.func.id for n in ast.walk(measured) if isinstance(n,ast.Call) and isinstance(n.func,ast.Name)}
        self.assertNotIn('diagnose',calls);self.assertNotIn('trace',calls)


try:
    import torch
except ImportError:torch=None
if os.environ.get('F08_REQUIRE_TORCH')=='1' and torch is None:
    raise RuntimeError('F08_REQUIRE_TORCH=1: CPU torch checks must really run on server')


@unittest.skipIf(torch is None,'local torch unavailable; server must set F08_REQUIRE_TORCH=1')
class ExecutorTests(unittest.TestCase):
    def setUp(self):
        load_bridge(HERE.parent/'f08_flagtree_eval')
        from execution import run_mul,live_metadata
        self.run=run_mul;self.metadata=live_metadata
        g=torch.fx.Graph();x=g.placeholder('x');u=g.placeholder('u')
        a=g.call_function(torch.ops.aten.add.Tensor,(x,1))
        s=g.call_function(torch.ops.aten.silu.default,(a,))
        m=g.call_function(torch.ops.aten.mul.Tensor,(s,u))
        z=g.call_function(torch.ops.aten.add.Tensor,(m,2));g.output(z)
        self.module=torch.fx.GraphModule({},g);self.name=m.name
        self.selected={m.name:{'destination_arg':0,'shape':[2,3]}}
        # Explicitly CPU-only stand-in; production uses mul_kernel.compile_call.
        self.calls={m.name:lambda left,right,dest:torch.mul(left,right,out=dest)}
        self.x=torch.arange(6,dtype=torch.float32).reshape(2,3);self.u=torch.full_like(self.x,.7)
    def test_native_out_inplace_bitwise(self):
        base=self.run(self.module,[self.x,self.u],{},{})
        for inplace in (False,True):
            out=self.run(self.module,[self.x,self.u],self.calls,self.selected,inplace=inplace)
            self.assertTrue(torch.equal(base,out))
    def test_inputs_preserved(self):
        x,u=self.x.clone(),self.u.clone()
        self.run(self.module,[self.x,self.u],self.calls,self.selected,inplace=True)
        self.assertTrue(torch.equal(x,self.x) and torch.equal(u,self.u))
    def test_node_digests_equal(self):
        a,b={},{}
        self.run(self.module,[self.x,self.u],self.calls,self.selected,records=a)
        self.run(self.module,[self.x,self.u],self.calls,self.selected,inplace=True,records=b)
        self.assertEqual(a,b)
    def test_wrong_callable_coverage(self):
        with self.assertRaises(ValueError):self.run(self.module,[self.x,self.u],{},self.selected)
    def test_aux_refs_do_not_cross_node(self):
        import weakref
        refs=[]
        def call(left,right,dest):
            refs.append(weakref.ref(left));return torch.mul(left,right,out=dest)
        self.run(self.module,[self.x,self.u],{self.name:call},self.selected,inplace=True)
        self.assertTrue(all(r() is None for r in refs))
    def test_metadata_contains_no_tensor_and_does_not_keep_it(self):
        import weakref
        tensor=torch.ones(8);ref=weakref.ref(tensor)
        meta=self.metadata({'x':tensor,'view':tensor.view(2,4)})
        self.assertEqual(len(meta),1)
        json.dumps(meta)
        del tensor
        self.assertIsNone(ref())
    def test_no_node_global_barrier(self):
        from unittest.mock import patch
        with patch('torch.cuda.synchronize',side_effect=AssertionError('unexpected timing barrier')):
            self.run(self.module,[self.x,self.u],self.calls,self.selected,inplace=True)
    def test_diagnostic_metadata_does_not_retain_dead_input(self):
        import weakref
        from execution import diagnose
        from unittest.mock import patch
        # Diagnose reuses old GELU-shaped callback protocol. Empty calls run native.
        with patch('torch.cuda.synchronize'),patch('torch.cuda.memory_allocated',return_value=100),\
             patch('torch.cuda.max_memory_allocated',return_value=100),patch('torch.cuda.reset_peak_memory_stats'):
            result=diagnose(self.module,[self.x,self.u],{},False,{'tensors':[]})
        json.dumps(result)
        self.assertTrue(all(isinstance(r['live_after'],list) for r in result['nodes']))


if __name__=='__main__':unittest.main()
