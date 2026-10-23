"""Software contracts. CPU torch tests are stand-ins, never FlagTree evidence."""
import copy
import importlib.util
import json
import os
from pathlib import Path
import tempfile
import unittest
import sys
from suite_contracts import (ARMS, HERE, PROTOCOL, fingerprint, resolve_resource,
                             save, sha, summarize, verify_baselines)


def records():
    return [{'status':'passed', 'arm': arm, 'rep': rep, **{k:'same' for k in
        ('gate_sha256','identity_sha256','case_sha256','compiler_set_sha256','output_sha256')},
        'physical_card': 6, 'protocol_sha256': fingerprint(PROTOCOL), 'samples_s': [.01]*30,
        'memory': {'peak_allocated_bytes': 90 if arm == 'flagtree-inplace' else 100,
                   'peak_reserved_bytes': 200}} for rep in range(1,4) for arm in ARMS]


class ComparisonTests(unittest.TestCase):
    def test_positive_reduction(self):
        self.assertEqual(summarize(records())['optimization']['allocated_reduction_bytes'],10)
    def test_negative_reduction_preserved(self):
        r=records()
        for x in r:
            if x['arm']=='flagtree-inplace': x['memory']['peak_allocated_bytes']=110
        self.assertEqual(summarize(r)['optimization']['allocated_reduction_bytes'],-10)
    def test_missing_arm(self):
        with self.assertRaises(ValueError): summarize(records()[:-1])
    def test_duplicate(self):
        r=records();r[-1]=r[0]
        with self.assertRaises(ValueError): summarize(r)
    def test_identity_matrix(self):
        for key in ('gate_sha256','identity_sha256','case_sha256','compiler_set_sha256',
                    'output_sha256','physical_card','protocol_sha256'):
            with self.subTest(key=key):
                r=records();r[-1][key]='different'
                with self.assertRaises(ValueError): summarize(r)
    def test_invalid_samples(self):
        for value in (0,-1,float('nan'),float('inf'),'0.1'):
            with self.subTest(value=value):
                r=records();r[0]['samples_s']=[value]*30
                with self.assertRaises(ValueError): summarize(r)
    def test_barrier_protocol_not_comparable(self):
        r=records()
        for x in r: x['protocol_sha256']='old-g2-barrier-protocol'
        with self.assertRaises(ValueError): summarize(r)
    def test_reserved_not_fabricated(self):
        self.assertEqual(summarize(records())['optimization']['reserved_reduction_bytes'],0)
    def test_wrong_rep(self):
        r=records();r[0]['rep']=4
        with self.assertRaises(ValueError): summarize(r)
    def test_invalid_memory(self):
        r=records();r[0]['memory']['peak_allocated_bytes']=-1
        with self.assertRaises(ValueError): summarize(r)
    def test_sample_count(self):
        r=records();r[0]['samples_s']=[.01]
        with self.assertRaises(ValueError): summarize(r)
    def test_longrun_not_performance(self):
        r=records();r[0]['longrun_rounds']=1000
        with self.assertRaises(ValueError):summarize(r)
    def test_failed_not_success(self):
        r=records();r[0]['status']='failed'
        with self.assertRaises(ValueError):summarize(r)
    def test_exclusive_save(self):
        with tempfile.TemporaryDirectory() as d:
            p=Path(d)/'result.json';save(p,{'a':1})
            with self.assertRaises(FileExistsError):save(p,{'a':2})
    def test_baseline_hash(self):
        with tempfile.TemporaryDirectory() as d:
            root=Path(d); p=root/'before.json';save(p,{'value':1})
            save(root/'baseline-index.json',[{'path':'before.json','sha256':sha(p)}])
            self.assertEqual(len(verify_baselines(root)),1)
            p.write_text('{}')
            with self.assertRaises(ValueError):verify_baselines(root)


class ResourceTests(unittest.TestCase):
    def setUp(self):
        self.temp=tempfile.TemporaryDirectory();self.addCleanup(self.temp.cleanup)
        self.root=Path(self.temp.name);self.rev='a'*40
        self.hub=self.root/'hub';self.venvs=self.root/'venvs'
        self.model={'model_id':'test/model','revision':self.rev}
        self.snapshot=self.hub/'models--test--model'/'snapshots'/self.rev
        self.snapshot.mkdir(parents=True)
        for name, text in [('modules.json','[]'),('config.json','{}'),('model.safetensors','fixture')]:
            (self.snapshot/name).write_text(text)
        self.python=self.venvs/'.venv_py3_12_test__model'/'bin/python'
        self.python.parent.mkdir(parents=True);self.python.write_text('fixture');self.python.chmod(0o700)
    def test_pinned(self):
        self.assertEqual(resolve_resource(self.model,self.hub,self.venvs)['revision'],self.rev)
    def test_ref_pinned_once(self):
        self.model.pop('revision');ref=self.hub/'models--test--model'/'refs/main'
        ref.parent.mkdir();ref.write_text(self.rev)
        self.assertEqual(resolve_resource(self.model,self.hub,self.venvs)['revision'],self.rev)
    def test_no_arbitrary_snapshot(self):
        self.model.pop('revision')
        with self.assertRaises(ValueError):resolve_resource(self.model,self.hub,self.venvs)
    def test_bad_revision(self):
        self.model['revision']='../../other'
        with self.assertRaises(ValueError):resolve_resource(self.model,self.hub,self.venvs)
    def test_missing_weights(self):
        (self.snapshot/'model.safetensors').unlink()
        with self.assertRaises(ValueError):resolve_resource(self.model,self.hub,self.venvs)
    def test_custom_code_rejected(self):
        (self.snapshot/'config.json').write_text('{"auto_map":{"AutoModel":"custom.Model"}}')
        with self.assertRaises(ValueError):resolve_resource(self.model,self.hub,self.venvs)
    def test_no_venv(self):
        self.python.unlink()
        with self.assertRaises(ValueError):resolve_resource(self.model,self.hub,self.venvs)


try:
    import torch
except ImportError:
    torch=None
if os.environ.get('F08_REQUIRE_TORCH')=='1' and torch is None:
    raise RuntimeError('F08_REQUIRE_TORCH=1: actual CPU execution is mandatory, no silent skip')


@unittest.skipIf(torch is None,'local torch unavailable; server must use F08_REQUIRE_TORCH=1')
class ExecutorTests(unittest.TestCase):
    def setUp(self):
        from suite_contracts import load_bridge
        load_bridge(HERE.parent/'f08_flagtree_eval')
        from graph import run_graph
        self.run_graph=run_graph
        g=torch.fx.Graph();x=g.placeholder('x')
        a=g.call_function(torch.ops.aten.add.Tensor,(x,1))
        y=g.call_function(torch.ops.aten.gelu.default,(a,))
        z=g.call_function(torch.ops.aten.mul.Tensor,(y,2));g.output(z)
        self.module=torch.fx.GraphModule({},g);self.name=y.name;self.x=torch.arange(12,dtype=torch.float32)
        self.calls={self.name:lambda source,dest:torch.ops.aten.gelu.out(source,out=dest)}
    def test_three_paths_equal(self):
        a=self.run_graph(self.module,[self.x],{})
        for inplace in (False,True):
            self.assertTrue(torch.equal(a,self.run_graph(self.module,[self.x],self.calls,inplace=inplace)))
    def test_protected_input_unchanged(self):
        before=self.x.clone();self.run_graph(self.module,[self.x],self.calls,inplace=True)
        self.assertTrue(torch.equal(before,self.x))
    def test_destination_identity(self):
        seen=[]
        def call(source,dest):
            seen.append(source.data_ptr()==dest.data_ptr())
            return torch.ops.aten.gelu.out(source,out=dest)
        for inplace in (False,True):
            self.run_graph(self.module,[self.x],{self.name:call},inplace=inplace)
        self.assertEqual(seen,[False,True])
    def test_no_global_barrier(self):
        from unittest.mock import patch
        with patch('torch.cuda.synchronize',side_effect=AssertionError('unexpected node barrier')):
            self.run_graph(self.module,[self.x],self.calls,inplace=True)
    def test_wrong_binding_count(self):
        with self.assertRaises(ValueError): self.run_graph(self.module,[],self.calls)


if __name__=='__main__':
    unittest.main()
