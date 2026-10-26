"""Explicit max.dim tuple ownership, schema/liveness, and real CPU regressions."""
import copy
import importlib
import json
import operator
import os
from pathlib import Path
from types import SimpleNamespace as NS
import unittest

from support import HERE, load_bridge, require, sha
from tuple_bindings import make_plan, output_names, projections, validate_layouts


class Op:
    def __init__(self,name):self.name=name;self._schema=NS(arguments=[])
    def __str__(self):return self.name


class Node:
    def __init__(self,name,op,target,args=(),inputs=()):
        self.name=name;self.op=op;self.target=target;self.args=args;self.kwargs={}
        self.all_input_nodes=list(inputs);self.users={}
        for source in inputs:source.users[self]=None


def fact(pointer,shape,dtype='float32'):
    size={'float32':4,'int64':8}[dtype];n=1
    for d in shape:n*=d
    stride=[];s=1
    for d in reversed(shape):stride.insert(0,s);s*=d
    return {'pointer':pointer,'nbytes':n*size,'byte_offset':0,'dtype':dtype,'shape':shape,
            'stride':stride,'device':'cuda:0','contiguous':True,'numel':n}


def fixture(both=True,late=False):
    x=Node('x','placeholder','x')
    m=Node('max_1','call_function',Op('aten.max.dim'),(x,1),(x,))
    a=Node('values','call_function',operator.getitem,(m,0),(m,))
    nodes=[x,m,a]
    r={'x':fact(1024,[2,3]),'max_1.output0':fact(2048,[2]),
       'max_1.output1':fact(3072,[2],'int64'),'values':fact(2048,[2])}
    if both:
        b=Node('indices','call_function',operator.getitem,(m,1),(m,));nodes.append(b)
        r['indices']=fact(3072,[2],'int64')
    if late:
        z=Node('late','call_function',Op('aten.add.Tensor'),(a,1),(a,));nodes.append(z)
        r['late']=fact(4096,[2]);end=z
    else:end=a
    nodes.append(Node('output','output','output',(end,),(end,)))
    return NS(nodes=nodes),m,r


def planner_modules():
    from common import load_planner
    path=Path(os.environ.get('F08_TEST_PLANNER_DIR',str(HERE.parents[2]/'python/flagtree/memory_planner')))
    expected=json.loads((HERE/'DEPENDENCIES.json').read_text())
    for name in ('schema.py','liveness.py','offset_planner.py','inplace_legality.py'):
        require(sha(path/name)==expected['python/flagtree/memory_planner/'+name],
                'test planner source mismatch: '+name)
    planner,_=load_planner(path)
    return (importlib.import_module(planner.__package__+'.schema'),
            importlib.import_module(planner.__package__+'.liveness'))


class TupleContracts(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        load_bridge(HERE.parent/'f08_flagtree_eval')
        cls.schema,cls.liveness=planner_modules()
    def plan(self,**kwargs):
        g,m,r=fixture(**kwargs)
        p,report=make_plan(g,r,{'x':'USER_INPUT'},'test-max','stream:0')
        return p,report,g,m,r
    def test_both_leaves_produced_by_max(self):
        p,report,*_=self.plan();task=next(t for t in p['tasks'] if t['source_node']=='max_1')
        self.assertEqual(task['outputs'],['tensor.max_1.output0','tensor.max_1.output1'])
    def test_tuple_has_no_storage(self):
        p,*_=self.plan()
        self.assertNotIn('tensor.max_1',{t['tensor_id'] for t in p['tensors']})
    def test_projections_alias_distinct_leaves(self):
        p,*_=self.plan();t={t['source_value']:t for t in p['tensors']}
        self.assertEqual(t['values']['storage_id'],t['max_1.output0']['storage_id'])
        self.assertEqual(t['indices']['storage_id'],t['max_1.output1']['storage_id'])
        self.assertNotEqual(t['values']['storage_id'],t['indices']['storage_id'])
    def test_schema_and_bidirectional_consumers(self):
        p,*_=self.plan()
        self.assertEqual(self.schema.validate_model_plan(p),[])
        self.assertTrue(all(t['kernel_id']=='python.operator.getitem' for t in p['tasks']
                            if t['source_node'] in ('values','indices')))
    def test_both_outputs_live_at_max_completion(self):
        p,*_=self.plan();report=self.liveness.analyze_model_lifetimes(p)
        event=next(e for e in report.memory_events if e.task_id=='task.max_1')
        t={t['source_value']:t for t in p['tensors']}
        self.assertTrue({t[n]['storage_id'] for n in ('max_1.output0','max_1.output1')} <= set(event.live_storage_ids))
    def test_both_leaves_retained_until_last_projection(self):
        p,*_=self.plan();report=self.liveness.analyze_model_lifetimes(p)
        t={t.source_value:t for t in report.tensors}
        last=next(e.event_index for e in report.events if e.task_id=='task.indices')
        self.assertEqual(t['max_1.output0'].lifetime_end,last)
        self.assertEqual(t['max_1.output1'].lifetime_end,last)
    def test_projected_alias_extends_storage_to_late_consumer(self):
        p,*_=self.plan(late=True);report=self.liveness.analyze_model_lifetimes(p)
        alias=next(t.storage_id for t in report.tensors if t.source_value=='values')
        end=next(e.event_index for e in report.events if e.task_id=='task.late')
        self.assertEqual(next(s.lifetime_end for s in report.storages if s.storage_id==alias),end)
    def test_unprojected_indices_still_counted(self):
        p,*_=self.plan(both=False);report=self.liveness.analyze_model_lifetimes(p)
        leaf=next(t for t in report.tensors if t.source_value=='max_1.output1')
        self.assertEqual(leaf.consumer_tasks,('task.values',))
        self.assertEqual(self.schema.validate_model_plan(p),[])
    def test_no_double_count_from_getitem_alias(self):
        p,*_=self.plan()
        self.assertEqual(len(p['storages']),3)
        self.assertEqual(sum(s['size_bytes'] for s in p['storages']),24+8+16)
    def test_original_graph_and_records_unchanged(self):
        g,m,r=fixture();before=copy.deepcopy(r);users=list(m.users);outputs=list(output_names(m))
        make_plan(g,r,{'x':'USER_INPUT'},'test-max','stream:0')
        self.assertEqual(r,before);self.assertEqual(list(m.users),users)
        self.assertEqual(output_names(m),outputs)
    def test_unknown_multi_output_operation_rejected(self):
        g,m,r=fixture();m.target=Op('aten.topk.default')
        with self.assertRaisesRegex(ValueError,'unsupported multi-output'):projections(m)
    def test_dynamic_or_invalid_projection_rejected(self):
        for index in (True,-1,2,'0'):
            g,m,r=fixture();user=next(iter(m.users));user.args=(m,index)
            with self.assertRaises(ValueError):projections(m)
    def test_container_escape_rejected(self):
        g,m,r=fixture();next(iter(m.users)).target=Op('aten.add.Tensor')
        with self.assertRaisesRegex(ValueError,'explicit getitem'):projections(m)
    def test_missing_leaf_evidence_rejected(self):
        g,m,r=fixture();del r['max_1.output1']
        with self.assertRaisesRegex(ValueError,'missing max.dim'):validate_layouts(m,r)
    def test_forged_projection_storage_rejected(self):
        g,m,r=fixture();r['indices']['pointer']=8192
        with self.assertRaisesRegex(ValueError,'component alias'):
            make_plan(g,r,{'x':'USER_INPUT'},'test-max','stream:0')
    def test_layout_dtype_device_capacity_rejections(self):
        for name,key,value in [('max_1.output1','dtype','float32'),('max_1.output0','shape',[1]),
                ('max_1.output0','byte_offset',4),('max_1.output0','device','cuda:1'),
                ('max_1.output0','nbytes',4096),('max_1.output0','contiguous',False)]:
            with self.subTest(key=key):
                g,m,r=fixture();r[name][key]=value
                with self.assertRaises(ValueError):validate_layouts(m,r)
    def test_output_aliases_input_rejected(self):
        g,m,r=fixture();r['max_1.output0']['pointer']=r['x']['pointer']
        with self.assertRaisesRegex(ValueError,'unexpected alias'):validate_layouts(m,r)
    def test_unknown_record_rejected(self):
        g,m,r=fixture();r['max_1.output2']=r['x']
        with self.assertRaisesRegex(ValueError,'unmapped'):
            make_plan(g,r,{'x':'USER_INPUT'},'test-max','stream:0')
    def test_negative_dim_keepdim_supported(self):
        g,m,r=fixture();m.args=(m.args[0],-1,True)
        for name in ('max_1.output0','values'):r[name]=fact(2048,[2,1])
        for name in ('max_1.output1','indices'):r[name]=fact(3072,[2,1],'int64')
        plan,_=make_plan(g,r,{'x':'USER_INPUT'},'test-max','stream:0')
        self.assertEqual(self.schema.validate_model_plan(plan),[])
    def test_getitem_outside_max_boundary_rejected(self):
        g,m,r=fixture()
        extra=Node('unproven','call_function',operator.getitem,(m.args[0],0),(m.args[0],))
        g.nodes.insert(-1,extra)
        r['unproven']=fact(1024,[3])
        # Its physical view capacity must match the input storage capacity.
        r['unproven']['nbytes']=24
        with self.assertRaisesRegex(ValueError,'outside supported'):
            make_plan(g,r,{'x':'USER_INPUT'},'test-max','stream:0')


try:
    import torch
except ImportError:torch=None
if os.environ.get('F08_REQUIRE_TORCH')=='1' and torch is None:
    raise RuntimeError('real torch tuple tests required on server')


@unittest.skipIf(torch is None,'local torch missing; real CPU tuple tests required on server')
class RealTupleTests(unittest.TestCase):
    def setUp(self):
        load_bridge(HERE.parent/'f08_flagtree_eval')
        g=torch.fx.Graph();x=g.placeholder('x');u=g.placeholder('u')
        s=g.call_function(torch.ops.aten.silu.default,(x,))
        m=g.call_function(torch.ops.aten.mul.Tensor,(s,u))
        maximum=g.call_function(torch.ops.aten.max.dim,(m,1))
        v=g.call_function(operator.getitem,(maximum,0));i=g.call_function(operator.getitem,(maximum,1))
        idx=g.call_function(torch.ops.aten._to_copy.default,(i,),{'dtype':torch.float32})
        out=g.call_function(torch.ops.aten.add.Tensor,(v,idx));g.output(out)
        self.module=torch.fx.GraphModule({},g);self.max_name=maximum.name
        self.x=torch.tensor([[1.,4.,2.],[5.,3.,1.]]);self.u=torch.full_like(self.x,.7)
        self.values=[self.x,self.u];self.selected={m.name:{'destination_arg':0,'shape':[2,3]}}
        # CPU plumbing stand-in only. Production kernel remains FlagTree.
        self.calls={m.name:lambda a,b,dest:torch.mul(a,b,out=dest)}
    def test_real_max_values_indices_storage_and_projection(self):
        from qwen import trace
        from unittest.mock import patch
        with patch('torch.cuda.synchronize'):records,_=trace(self.module,self.values)
        names=[self.max_name+'.output0',self.max_name+'.output1']
        self.assertEqual(records[names[0]]['dtype'],'float32')
        self.assertEqual(records[names[1]]['dtype'],'int64')
        maximum=next(n for n in self.module.graph.nodes if n.name==self.max_name)
        for p in projections(maximum)[0]:
            self.assertEqual(records[p['node']],records[names[p['index']]])
        self.assertNotEqual(records[names[0]]['pointer'],records[names[1]]['pointer'])
    def test_full_graph_and_component_digests_match(self):
        from execution import run_mul
        a,b={},{}
        reference=run_mul(self.module,self.values,{},{} )
        separate=run_mul(self.module,self.values,self.calls,self.selected,records=a)
        inplace=run_mul(self.module,self.values,self.calls,self.selected,inplace=True,records=b)
        self.assertTrue(torch.equal(reference,separate) and torch.equal(separate,inplace))
        self.assertEqual(a,b)
        self.assertIn(self.max_name+'.output0',a);self.assertIn(self.max_name+'.output1',a)
    def test_tuple_and_leaves_released_after_last_projection(self):
        from tuple_bindings import record_digests
        from execution import run_mul
        from unittest.mock import patch
        import weakref
        references=[]
        def watch(node,result,records):
            if str(node.target)=='aten.max.dim':references.extend(weakref.ref(x) for x in result)
            record_digests(node,result,records)
        with patch('tuple_bindings.record_digests',new=watch):
            run_mul(self.module,self.values,self.calls,self.selected,inplace=True,records={})
        self.assertEqual(len(references),2)
        self.assertTrue(all(r() is None for r in references))
    def test_first_projection_does_not_drop_other_leaf(self):
        from tuple_bindings import record_digests
        from execution import run_mul
        from unittest.mock import patch
        import weakref
        references=[];checked=[]
        def watch(node,result,records):
            if str(node.target)=='aten.max.dim':references.extend(weakref.ref(x) for x in result)
            if node.target is operator.getitem and node.args[1]==0:
                checked.append(all(r() is not None for r in references))
            record_digests(node,result,records)
        with patch('tuple_bindings.record_digests',new=watch):
            run_mul(self.module,self.values,{}, {},records={})
        self.assertEqual(checked,[True])
    def test_protected_inputs_unchanged(self):
        from execution import run_mul
        before=[x.clone() for x in self.values]
        run_mul(self.module,self.values,self.calls,self.selected,inplace=True)
        self.assertTrue(all(torch.equal(a,b) for a,b in zip(self.values,before)))
    def test_no_node_global_synchronization(self):
        from execution import run_mul
        from unittest.mock import patch
        with patch('torch.cuda.synchronize',side_effect=AssertionError('timed path synchronized')):
            run_mul(self.module,self.values,self.calls,self.selected,inplace=True)
    def test_wrong_output_container_or_arity_rejected(self):
        from tuple_bindings import record_tuple
        from graph import facts
        maximum=next(n for n in self.module.graph.nodes if n.name==self.max_name)
        for result in ([torch.ones(2),torch.ones(2)],(torch.ones(2),), (torch.ones(2),'index'),
                       ((torch.ones(2),),torch.ones(2)), {'values':torch.ones(2)}):
            records={maximum.args[0].name:facts(torch.ones(2,3))}
            with self.assertRaises(ValueError):record_tuple(maximum,result,records)


if __name__=='__main__':unittest.main()
