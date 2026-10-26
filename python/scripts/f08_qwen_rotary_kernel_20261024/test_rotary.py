"""Stdlib contracts plus real Torch CPU plumbing when available; no GPU fallback."""
import ast
import copy
import importlib.util
import json
import math
import os
from pathlib import Path
import subprocess
import sys
import unittest
import weakref

HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE))
from rotary_contracts import (ARMS,PROTOCOL,constants,fingerprint,make_execution_plan,
    offsets,schedule,summarize,validate_destination)

HAS_TORCH=importlib.util.find_spec('torch') is not None
if os.environ.get('F08_REQUIRE_TORCH')=='1' and not HAS_TORCH:
    raise RuntimeError('F08_REQUIRE_TORCH=1 but torch is unavailable; do not claim CPU tests passed')


def facts(shape=(2,3,5,10),scale_shape=(1,1,5,10),pad=0):
    b,h,t,d=shape
    source={'shape':list(shape),'stride':[t*h*d,d,h*d,1],'dtype':'float32','device':'cuda:0',
            'byte_offset':pad*4,'storage_nbytes':(math.prod(shape)+pad)*4,'storage_pointer':1024}
    b,h,t,d=scale_shape
    scale={'shape':list(scale_shape),'stride':[h*t*d,t*d,d,1],'dtype':'float32','device':'cuda:0',
           'byte_offset':0,'storage_nbytes':math.prod(scale_shape)*4,'storage_pointer':4096}
    b,h,t,d=shape
    out={'shape':list(shape),'stride':[h*t*d,t*d,d,1],'dtype':'float32','device':'cuda:0',
         'byte_offset':0,'storage_nbytes':math.prod(shape)*4,'storage_pointer':8192}
    return source,scale,out


def graph_fixture():
    def row(name,op,inputs,target=''):
        return {'name':name,'op':op,'inputs':inputs,'target':target}
    graph=[row('input','placeholder',[]),row('scale','placeholder',[]),
        row('src','call_function',['input'],'aten.clone.default'),
        row('low','call_function',['src'],'aten.slice.Tensor'),
        row('high','call_function',['src'],'aten.slice.Tensor'),
        row('neg','call_function',['high'],'aten.neg.default'),
        row('cat','call_function',['neg','low'],'aten.cat.default'),
        row('product','call_function',['cat','scale'],'aten.mul.Tensor'),
        row('output','output',['product'])]
    candidate={'product':{'source':'src','scale':'scale','cat':'cat','target_mul':'product',
                          'removed_analysis_nodes':['low','high','neg','cat']}}
    return graph,candidate


def records_fixture():
    rows=[]
    for arm in ARMS:
        for rep in (1,2,3):
            rows.append({'status':'passed','arm':arm,'rep':rep,'samples_s':[.1]*30,
                'protocol':PROTOCOL,'protocol_sha256':fingerprint(PROTOCOL),
                'gate_sha256':'gate','identity_sha256':'identity','case_sha256':'case','physical_card':6,
                'compiler_set_sha256':'code','output_sha256':'output','execution_contract_sha256':'execution',
                'memory':{'peak_allocated_bytes':100 if arm==ARMS[0] else 90,'peak_reserved_bytes':200}})
    return rows


class Contracts(unittest.TestCase):
    def test_actual_q_layout_constants_and_signature_size(self):
        a,b,_=facts((32,16,24,128),(1,1,24,128))
        self.assertEqual(a['stride'],[49152,128,2048,1])
        cs=constants(a,b)
        self.assertEqual(len(cs),13)
        self.assertEqual(cs[8:12],[0,0,128,1])

    def test_all_strided_indices_and_broadcast_addresses(self):
        a,b,_=facts()
        addressed=set()
        for batch in range(2):
            for head in range(3):
                for token in range(5):
                    for d in range(10):
                        i=((batch*3+head)*5+token)*10+d
                        x,s,negative=offsets(i,a,b)
                        self.assertEqual(x,((batch*5+token)*3+head)*10+(d+5)%10)
                        self.assertEqual(s,token*10+d)
                        self.assertEqual(negative,d<5)
                        addressed.add(x)
        self.assertEqual(addressed,set(range(300)))

    def test_positive_view_offset_is_not_added_twice(self):
        a,b,_=facts(pad=4)
        x,_,_=offsets(0,a,b)
        self.assertEqual(x,5)  # Tensor pointer already includes 4-element offset.
        self.assertEqual(x+a['byte_offset']//4,9)

    def test_odd_last_dimension_rejected(self):
        a,b,_=facts((2,3,5,9),(1,1,5,9))
        with self.assertRaises(ValueError):constants(a,b)

    def test_negative_stride_rejected(self):
        a,b,_=facts();a['stride'][-1]=-1
        with self.assertRaises(ValueError):constants(a,b)

    def test_capacity_overrun_rejected(self):
        a,b,_=facts();a['storage_nbytes']-=4
        with self.assertRaises(ValueError):constants(a,b)

    def test_scale_broadcast_rejected(self):
        a,b,_=facts(scale_shape=(1,2,5,10))
        with self.assertRaises(ValueError):constants(a,b)

    def test_dtype_and_device_rejected(self):
        for key,value in (('dtype','float16'),('device','cpu')):
            a,b,_=facts();a[key]=value
            with self.assertRaises(ValueError):constants(a,b)

    def test_independent_dense_destination(self):
        a,b,y=facts();validate_destination(a,b,y)

    def test_either_input_alias_rejected(self):
        for pointer in (1024,4096):
            a,b,y=facts();y['storage_pointer']=pointer
            with self.assertRaises(ValueError):validate_destination(a,b,y)

    def test_missing_input_pointer_cannot_prove_independence(self):
        a,b,y=facts();a.pop('storage_pointer')
        with self.assertRaises(ValueError):validate_destination(a,b,y)

    def test_missing_device_rejected(self):
        a,b,_=facts();a.pop('device')
        with self.assertRaises(ValueError):constants(a,b)

    def test_non_dense_or_offset_destination_rejected(self):
        for key,value in (('stride',[150,10,30,1]),('byte_offset',4)):
            a,b,y=facts();y[key]=value
            with self.assertRaises(ValueError):validate_destination(a,b,y)

    def test_index_outside_output_rejected(self):
        a,b,_=facts()
        for i in (-1,300):
            with self.assertRaises(ValueError):offsets(i,a,b)

    def test_schedule_uses_original_source_until_mul(self):
        graph,c=graph_fixture();rows=schedule(graph,c)
        self.assertEqual([r['name'] for r in rows],['input','scale','src','product','output'])
        self.assertEqual(rows[-2]['inputs'],['src','scale'])
        self.assertTrue(rows[-2]['rotary'])

    def test_schedule_preserves_original_and_is_pure(self):
        graph,_=graph_fixture();original=copy.deepcopy(graph)
        self.assertEqual([r['name'] for r in schedule(graph)],[r['name'] for r in graph])
        self.assertEqual(graph,original)

    def test_late_cat_consumer_rejected(self):
        graph,c=graph_fixture();graph[-1]['inputs'].append('cat')
        with self.assertRaises(ValueError):schedule(graph,c)

    def test_bad_source_order_rejected(self):
        graph,c=graph_fixture();c['product']['source']='absent'
        with self.assertRaises(ValueError):schedule(graph,c)

    def test_pins_exactly_28_q_paths(self):
        pins=json.loads((HERE/'ROTARY-PINS.json').read_text())
        self.assertEqual(len(pins['rotary_candidates']),28)
        for i,c in enumerate(pins['rotary_candidates']):
            self.assertEqual(c['cat'],f'cat_{2*i+1}')
            self.assertEqual(c['target_mul'],f'mul_{13*i+9}')
            self.assertEqual(c['source'],f'transpose_{4*i+1}')

    def test_kernel_masks_store_and_has_full_constexpr_signature(self):
        tree=ast.parse((HERE/'rotary_kernel.py').read_text())
        fn=next(n for n in tree.body if isinstance(n,ast.FunctionDef) and n.name=='_indexed_mul')
        self.assertEqual(len(fn.args.args),16)  # 3 pointers + 13 constexpr parameters.
        self.assertEqual(fn.args.args[-1].arg,'BLOCK')
        stores=[n for n in ast.walk(fn) if isinstance(n,ast.Call) and isinstance(n.func,ast.Attribute)
                and n.func.attr=='store']
        self.assertEqual(len(stores),1)
        self.assertEqual(len(stores[0].args),3)
        self.assertIsInstance(stores[0].args[-1],ast.Compare)

    def test_no_copy_or_aten_fallback_in_kernel(self):
        tree=ast.parse((HERE/'rotary_kernel.py').read_text())
        forbidden={'contiguous','clone','copy_','cat','mul','gelu','silu'}
        calls={n.func.attr for n in ast.walk(tree) if isinstance(n,ast.Call) and isinstance(n.func,ast.Attribute)}
        self.assertFalse(calls & forbidden)

    def test_no_accelerator_import_before_preflight(self):
        code="import sys; import rotary_contracts, bootstrap, rotary_execution, run_rotary; assert 'torch' not in sys.modules and 'triton' not in sys.modules"
        r=subprocess.run([sys.executable,'-B','-c',code],cwd=HERE,capture_output=True,text=True)
        self.assertEqual(r.returncode,0,r.stderr)

    def test_complete_summary_keeps_negative_result(self):
        rows=records_fixture()
        self.assertEqual(summarize(rows)['rotary_effect']['allocated_reduction_bytes'],10)
        for r in rows:
            if r['arm']==ARMS[1]:r['memory']['peak_allocated_bytes']=110
        self.assertEqual(summarize(rows)['rotary_effect']['allocated_reduction_bytes'],-10)

    def test_incomplete_summary_rejected(self):
        with self.assertRaises(ValueError):summarize(records_fixture()[:-1])

    def test_changed_identity_rejected(self):
        for key in ('compiler_set_sha256','physical_card','output_sha256','execution_contract_sha256'):
            rows=records_fixture();rows[0][key]='changed'
            with self.assertRaises(ValueError):summarize(rows)

    def test_bad_samples_rejected(self):
        for bad in (0,-1,float('nan'),float('inf')):
            rows=records_fixture();rows[0]['samples_s'][0]=bad
            with self.assertRaises(ValueError):summarize(rows)

    def test_forged_protocol_rejected(self):
        rows=records_fixture();rows[0]['protocol_sha256']='forged'
        with self.assertRaises(ValueError):summarize(rows)

    def test_failed_worker_rejected(self):
        rows=records_fixture();rows[0]['status']='failed'
        with self.assertRaises(ValueError):summarize(rows)

    def test_g1_plan_rewire_preserves_tuple_fields_and_source(self):
        # Minimal pre-MLP plan adapter; use the same fixture metadata as schedule.
        graph,c=graph_fixture();names=[n['name'] for n in graph if n['op']!='output']
        plan={'plan_id':'fixture','tasks':[],'tensors':[],'storages':[]}
        for node in graph:
            if node['op']=='output':continue
            name=node['name'];sid='storage.'+name
            plan['tensors'].append({'source_value':name,'tensor_id':'tensor.'+name,'storage_id':sid,'consumers':[]})
            plan['storages'].append({'storage_id':sid})
            if node['op']=='call_function':
                plan['tasks'].append({'source_node':name,'task_id':'task.'+name,'kernel_id':node['target'],
                    'inputs':['tensor.'+s for s in node['inputs']],'predecessors':[]})
        old=copy.deepcopy(plan);new=make_execution_plan(plan,list(c.values()))
        self.assertEqual(plan,old)
        self.assertEqual(new['tasks'][-1]['inputs'],['tensor.src','tensor.scale'])
        source=next(t for t in new['tensors'] if t['source_value']=='src')
        self.assertEqual(source['consumers'],['task.product'])


@unittest.skipUnless(HAS_TORCH,'local torch unavailable; CPU plumbing not executed')
class TorchCPU(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        from bootstrap import helpers,V4
        helpers()
        sys.path.insert(0,str(V4.parent/'f08_flagtree_eval'))
        import torch
        cls.torch=torch

    def build(self,tuple_output=False):
        torch=self.torch
        g=torch.fx.Graph();x=g.placeholder('input');s=g.placeholder('scale')
        src=g.create_node('call_function',torch.ops.aten.clone.default,(x,),{},name='src')
        lo=g.create_node('call_function',torch.ops.aten.slice.Tensor,(src,3,0,5),{},name='low')
        hi=g.create_node('call_function',torch.ops.aten.slice.Tensor,(src,3,5,10),{},name='high')
        neg=g.create_node('call_function',torch.ops.aten.neg.default,(hi,),{},name='neg')
        cat=g.create_node('call_function',torch.ops.aten.cat.default,([neg,lo],-1),{},name='cat')
        product=g.create_node('call_function',torch.ops.aten.mul.Tensor,(cat,s),{},name='product')
        if tuple_output:
            import operator
            m=g.call_function(torch.ops.aten.max.dim,(product,-1,False))
            value=g.call_function(operator.getitem,(m,0));g.call_function(operator.getitem,(m,1))
            g.output(value)
        else:g.output(product)
        module=torch.fx.GraphModule({},g)
        x=torch.linspace(-3,3,300).reshape(2,5,3,10).transpose(1,2)
        scale=torch.linspace(.1,1,50).reshape(1,1,5,10)
        _,c=graph_fixture()
        return module,[x,scale],c

    def test_same_framework_reference_and_candidate_equal(self):
        from rotary_execution import prepare,run
        from rotary_gate import reference
        module,values,c=self.build()
        baseline=run(prepare(module,{}),values,{},{},{})
        def call(x,s,y):y.copy_(reference(x,s));return y
        candidate=run(prepare(module,c),values,{},{},{'product':call})
        self.assertTrue(self.torch.equal(baseline,candidate))

    def test_input_and_scale_not_modified(self):
        from rotary_execution import prepare,run
        from rotary_gate import reference
        module,values,c=self.build();before=[x.clone() for x in values]
        def call(x,s,y):y.copy_(reference(x,s));return y
        run(prepare(module,c),values,{},{},{'product':call})
        self.assertTrue(all(self.torch.equal(a,b) for a,b in zip(values,before)))

    def test_candidate_source_lives_until_mul_then_releases(self):
        from rotary_execution import prepare,run
        from rotary_gate import reference
        module,values,c=self.build();refs=[]
        def call(x,s,y):
            refs.append(weakref.ref(x));y.copy_(reference(x,s));return y
        result=run(prepare(module,c),values,{},{},{'product':call})
        self.assertIsNone(refs[0]())
        self.assertNotEqual(result.untyped_storage().data_ptr(),values[0].untyped_storage().data_ptr())

    def test_missing_rotary_call_never_falls_back(self):
        from rotary_execution import prepare,run
        module,values,c=self.build()
        with self.assertRaises(ValueError):run(prepare(module,c),values,{},{},{})

    def test_surviving_digests_match(self):
        from rotary_execution import prepare,run
        from rotary_gate import reference
        module,values,c=self.build();a,b={},{}
        def call(x,s,y):y.copy_(reference(x,s));return y
        run(prepare(module,{}),values,{},{},{},records=a)
        run(prepare(module,c),values,{},{},{'product':call},records=b)
        self.assertEqual(b,{k:v for k,v in a.items() if k not in ('low','high','neg','cat')})

    def test_max_tuple_pooling_path_unchanged(self):
        from rotary_execution import prepare,run
        from rotary_gate import reference
        module,values,c=self.build(tuple_output=True)
        def call(x,s,y):y.copy_(reference(x,s));return y
        a=run(prepare(module,{}),values,{},{},{})
        b=run(prepare(module,c),values,{},{},{'product':call})
        self.assertTrue(self.torch.equal(a,b))


if __name__=='__main__':unittest.main()
