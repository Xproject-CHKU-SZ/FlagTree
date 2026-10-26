"""Fresh G1/G03 + real kernel probes + full graph; never used for timing."""
import json
import math
from rotary_contracts import require, save, fingerprint, make_execution_plan
from bootstrap import HERE, REPO, helpers


def reference(x, scale):
    """Gate-only original arithmetic; candidate executor cannot call this fallback."""
    import torch
    half = x.shape[-1]//2
    return torch.cat((-x[...,half:], x[...,:half]), dim=-1)*scale


def exact(bridge, a, b):
    from graph import digest
    result = bridge.same_output(a,b,0,0)
    require(result['passed'] and result['max_abs_diff'] == 0 and digest(a) == digest(b),
            'strict numerical/bit-pattern gate failed')
    return {**result, 'digest_equal':True}


def trace(module, values, pinned):
    """Keep-alive trace is gate-only; returned clones die before measured processes."""
    import torch
    from torch.fx import Interpreter
    from graph import facts
    from tuple_bindings import record_tuple
    class Recorder(Interpreter):
        def __init__(self):
            super().__init__(module)
            self.held, self.records, self.mlp, self.rotary = {}, {}, {}, {}
        def run_node(self,node):
            if node.name in pinned:
                c = pinned[node.name]
                self.rotary[node.name] = tuple(self.held[n].clone()
                                               for n in (c['source'],c['scale']))
            if str(node.target) == 'aten.mul.Tensor' and any(
                    hasattr(x,'target') and str(x.target) == 'aten.silu.default' for x in node.args):
                args,_ = self.fetch_args_kwargs_from_env(node)
                self.mlp[node.name] = tuple(x.clone() for x in args)
            result = super().run_node(node)
            if isinstance(result,torch.Tensor):
                self.records[node.name] = facts(result)
                self.held[node.name] = result
            elif node.op != 'output' and isinstance(result,(tuple,list,dict)):
                record_tuple(node,result,self.records)
                self.held[node.name] = result
            return result
    observer = Recorder(); observer.run(*values); torch.cuda.synchronize()
    return observer.records, observer.mlp, observer.rotary


def select_rotary(module, plan, records, pins):
    """Re-run structural/alias checks on this fresh PPU trace, not on old pointers."""
    from audit_rotary import candidates
    graph = [{'name':n.name,'op':n.op,'target':str(n.target),'args':str(n.args),'kwargs':str(n.kwargs)}
             for n in module.graph.nodes]
    catalog = {name:{'device':f['device'],'storage_nbytes':f['nbytes'],
                         'members':[{'source_value':name, **{k:f[k] for k in
                                     ('dtype','shape','stride','byte_offset')}}]}
               for name,f in records.items()}
    found,rejected = candidates(graph,plan,{'storage_catalog':catalog})
    require(len(found) == 56, 'fresh graph no longer has 56 eligible rotary paths')
    by_name = {c['target_mul']:c for c in found}
    selected = {}
    for pin in pins['rotary_candidates']:
        require(pin['target_mul'] in by_name,'pinned rotary path absent')
        c = by_name[pin['target_mul']]
        require(all(c[k] == v for k,v in pin.items()), 'rotary path identity changed')
        low,high,neg,cat = c['removed_analysis_nodes']
        role_names = {'source':c['source'],'scale':c['scale'],'low':low,'high':high,
                      'neg':neg,'cat':cat,'output':c['target_mul']}
        require(all(c['layouts'][name] == pins['layouts'][role] for role,name in role_names.items()),
                'fresh rotary layout changed')
        selected[c['target_mul']] = c
    require(len(selected) == 28,'rotary scope must be exactly 28 Q paths')
    return selected, rejected


def mlp_legality(bridge,args,plan,records,graph_sha):
    from audit_rotary import run_g1
    legal = bridge.load_legality(args.legality)
    plan_sha = legal.plan_fingerprint(plan)
    by_name = {t['source_value']:t for t in plan['tensors']}
    evidence = {'tensor.'+n:{**f,'tensor_id':'tensor.'+n,'storage_id':by_name[n]['storage_id'],
        'plan_id':plan['plan_id'],'plan_sha256':plan_sha,'graph_fingerprint':graph_sha,
        'scope':'ppu_runtime','physical_card':args.physical_card,
        'source':'fresh PPU keep-alive layout trace; not a timed observation'}
        for n,f in records.items() if n in by_name}
    analysis = run_g1(lambda p:legal.analyze_op_candidates(p,[t['task_id'] for t in p['tasks']],
        kernel_ids=('aten.mul.Tensor',),binding_evidence=evidence,
        expected_graph_fingerprint=graph_sha,expected_physical_card=args.physical_card,
        plan_identity={'derived_plan_canonical_sha256':plan_sha}), plan)
    require(not analysis['plan_validation']['plan_issue_codes'] and
            not analysis['plan_validation']['order_problems'],'G1/G03 validation failed')
    allowed = {}
    for c in analysis['candidates']:
        if c['decision'] == 'allowed' and c['ppu_runtime_evidence'] == 'provided':
            allowed.setdefault(c['task_id'],set()).add(c['input_tensor_id'])
    return allowed, analysis


def compile_sets(mlp_selected, rotary_selected, directory, samples=None):
    """Setup helper; no input/sample Tensor is captured by a returned callable."""
    import torch
    from mul_kernel import compile_call as mlp_compile
    from rotary_kernel import compile_call as rotary_compile
    mlp_calls, rotary_calls, code = {}, {}, {'mlp':{},'rotary':{}}
    for name,c in mlp_selected.items():
        x = samples['mlp'][name][0] if samples else torch.zeros(c['shape'],dtype=torch.float32,device='cuda:0')
        mlp_calls[name],code['mlp'][name] = mlp_compile(x,directory/'mlp'/name)
    for name,c in rotary_selected.items():
        if samples:
            x,scale = samples['rotary'][name]
        else:
            a,b = c['layouts'][c['source']],c['layouts'][c['scale']]
            # Exact strided setup buffers, never a conversion in the timed graph.
            x = torch.empty_strided(a['shape'],a['stride'],dtype=torch.float32,device='cuda:0').zero_()
            scale = torch.empty_strided(b['shape'],b['stride'],dtype=torch.float32,device='cuda:0').fill_(1)
        rotary_calls[name],code['rotary'][name] = rotary_compile(x,scale,directory/'rotary'/name)
    return mlp_calls,rotary_calls,code


def micro_probes(bridge,directory):
    import torch
    from graph import digest
    from rotary_kernel import compile_call
    result = []
    cases = [((1,1,1,2),(1,1,1,2),0), ((1,1,1,6),(1,1,1,6),0),
             ((2,3,5,10),(1,1,5,10),0), ((2,2,3,128),(2,1,3,128),4),
             ((2,2,3,6),(2,2,1,6),0), ((1,1,1,6),(1,1,1,6),0)]
    for i,(shape,scale_shape,pad) in enumerate(cases):
        b,h,t,d = shape
        count = b*h*t*d
        base = torch.linspace(-3,3,count+pad,dtype=torch.float32,device='cuda:0')
        x = base[pad:].reshape(b,t,h,d).transpose(1,2)
        scale = torch.linspace(.125,1.25, math.prod(scale_shape),
                                dtype=torch.float32,device='cuda:0').reshape(scale_shape)
        if i == 5:
            x = torch.tensor([0.,-0.,1.e-30,-1.e-30,1.,-1.],dtype=torch.float32,device='cuda:0').reshape(shape)
            scale = torch.tensor([1.,-1.,.125,2.,1.,1.],dtype=torch.float32,device='cuda:0').reshape(scale_shape)
        before = (digest(x),digest(scale))
        call,code = compile_call(x,scale,directory/str(i))
        dest = torch.empty(shape,dtype=torch.float32,device='cuda:0')
        call(x,scale,dest); torch.cuda.synchronize()
        check = exact(bridge,reference(x,scale),dest)
        require(before == (digest(x),digest(scale)), 'micro probe changed input')
        result.append({'shape':list(shape),'scale_shape':list(scale_shape),'source_offset_elements':pad,
                       'checks':check,'compiler':code})
    return result


def gate(bridge,args,case):
    import torch
    from graph import graph_identity,digest
    from qwen import build
    from tuple_bindings import make_plan
    from support import mul_candidate
    from audit_rotary import load_g1,run_g1,analysis_plan,compact
    from rotary_execution import prepare,run
    pins = json.loads((HERE/'ROTARY-PINS.json').read_text())
    wrapper,module,values,users,kinds,pipeline = build(case,args.output_dir)
    graph_sha,protected = graph_identity(module.graph),bridge.protected_digest(values)
    require(graph_sha == pins['graph_sha256'] and protected == pins['input_sha256'],'fixed Qwen graph/input changed')
    records,mlp_samples,rotary_samples = trace(module,values[0],{c['target_mul']:c for c in pins['rotary_candidates']})
    plan,tuples = make_plan(module.graph,records,kinds,case['model_id'],
                            f'stream:{torch.cuda.current_stream().cuda_stream}')
    rotary,rejected = select_rotary(module,plan,records,pins)
    original_allowed,original_legality = mlp_legality(bridge,args,plan,records,graph_sha)
    derived = make_execution_plan(plan,list(rotary.values()))
    base_steps,rotary_steps = prepare(module,{}),prepare(module,rotary)
    contract = {'original_graph_sha256':graph_sha,'baseline':base_steps['rows'],'candidate':rotary_steps['rows'],
                'rotary':rotary,'output_policy':'independent dense; never requests inplace authorization'}
    contract_sha = fingerprint(contract)
    derived_allowed,derived_legality = mlp_legality(bridge,args,derived,records,contract_sha)
    selected = {}
    for node in module.graph.nodes:
        if node.name not in mlp_samples: continue
        a = mul_candidate(node,records,original_allowed.get('task.'+node.name,set()))
        b = mul_candidate(node,records,derived_allowed.get('task.'+node.name,set()))
        require(a == b,'existing MLP permission changed after rotary rewrite')
        selected[node.name] = a
    require(len(selected) == 28, 'existing MLP inplace must remain 28 in both arms')
    save(args.output_dir/'model-plan-original.json',plan)
    save(args.output_dir/'model-plan-rotary-pre-mlp.json',derived)
    save(args.output_dir/'tuple-bindings.json',tuples)
    save(args.output_dir/'legality-baseline.json',original_legality)
    save(args.output_dir/'legality-rotary.json',derived_legality)
    save(args.output_dir/'execution-contract.json',contract)
    save(args.output_dir/'micro-probes.json',micro_probes(bridge,args.output_dir/'compiler-micro'))
    calls,new_calls,code = compile_sets(selected,rotary,args.output_dir/'compiler',
                                       {'mlp':mlp_samples,'rotary':rotary_samples})
    require(bridge.compiler_identity(code['mlp']) == pins['mlp_compiler_set_sha256'],'existing MLP compiler drift')
    probes = {}
    for name,(x,scale) in rotary_samples.items():
        before = (digest(x),digest(scale))
        dest = torch.empty(tuple(x.shape),dtype=torch.float32,device=x.device)
        returned = new_calls[name](x,scale,dest); torch.cuda.synchronize()
        probes[name] = {'checks':exact(bridge,reference(x,scale),returned),
                        'returned_pointer':returned.data_ptr(),'destination_pointer':dest.data_ptr(),
                        'input_storage_pointer':x.untyped_storage().data_ptr()}
        require(before == (digest(x),digest(scale)), 'rotary probe changed input')
    save(args.output_dir/'kernel-probes.json',probes)
    comparisons,checksums,baseline_bindings = [],[],None
    removed = {n for c in rotary.values() for n in c['removed_analysis_nodes']}
    for i,(batch,user) in enumerate(zip(values,users)):
        a,b,ab,bb = {},{},{'bindings':[]},{'bindings':[]}
        baseline = run(base_steps,batch,calls,selected,{},records=a,bindings=ab['bindings'])
        candidate = run(rotary_steps,batch,calls,selected,new_calls,records=b,bindings=bb['bindings'])
        require(b == {k:v for k,v in a.items() if k not in removed}, 'surviving node digest mismatch')
        comparisons.append({'batch':i,'baseline_vs_candidate':exact(bridge,baseline,candidate),
                             'native_vs_baseline':exact(bridge,wrapper(*user.values()),baseline),
                             'surviving_node_digests_equal':True,'compared_digest_count':len(b)})
        checksums.append(digest(candidate))
        for label,bindings in (('baseline',ab['bindings']),('candidate',bb['bindings'])):
            old = [x for x in bindings if x['kind']=='existing_mlp_inplace']
            new = [x for x in bindings if x['kind']=='rotary_independent']
            require(len(old)==28 and all(x['observed_same_address'] for x in old), 'MLP alias evidence missing')
            require(len(new)==(28 if label=='candidate' else 0) and
                    all(not x['observed_same_address'] for x in new), 'rotary independent binding missing')
            save(args.output_dir/f'bindings-{label}-batch{i}.json',bindings)
        if i == 0: baseline_bindings = ab['bindings']
    require(bridge.protected_digest(values)==protected,'model parameters/input changed')
    require(fingerprint(checksums)==pins['output_sha256'],'fixed Qwen output changed')
    g1 = load_g1(args.legality.parent)
    observed = {'nodes':[{'selected_binding':x} for x in baseline_bindings]}
    base_model,_ = analysis_plan(plan,observed,[])
    new_model,_ = analysis_plan(plan,observed,list(rotary.values()))
    baseline_report,candidate_report = run_g1(g1,base_model),run_g1(g1,new_model)
    require(baseline_report.peak_summary.accounted_peak_bytes == pins['baseline_graph_storage_peak_bytes']
            and candidate_report.peak_summary.accounted_peak_bytes == pins['candidate_graph_storage_peak_bytes'],
            'fresh G1 storage accounting changed')
    save(args.output_dir/'g1-summary.json',{'baseline':compact(baseline_report),'candidate':compact(candidate_report),
        'boundary':'graph storage only, not allocated prediction; source lifetime recomputed after rewriting'})
    save(args.output_dir/'compare.json',comparisons)
    save(args.output_dir/'rotary-safety.json',{'input_overwrite':False,'output_independent':True,
        'fresh_structural_alias_checks':True,'fresh_mlp_G03_before_and_after':True,
        'rotary_inplace_permission_requested':False,'rejected_unrelated_cats':rejected})
    return {'status':'passed','graph_sha256':graph_sha,'input_sha256':protected,
        'case_sha256':fingerprint(case),'mlp_selected':selected,'rotary_selected':rotary,
        'execution_contract_sha256':contract_sha,'compiler':code,
        'output_sha256':fingerprint(checksums),
        'compiler_set_sha256':fingerprint({k:bridge.compiler_identity(v) for k,v in code.items()}),
        'pipeline':pipeline,'runtime_applied_in_gate':True,
        'scope':'28 Q rotary paths plus existing 28 MLP Mul; other nodes unchanged; not full-model FlagTree'}
