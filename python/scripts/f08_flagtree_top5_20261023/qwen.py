"""Qwen Embedding FP32 full native pipeline, with unused generation cache disabled."""
from __future__ import annotations
from support import require, save


def build(case, directory=None):
    import torch
    from sentence_transformers import SentenceTransformer
    from graph import graph_identity
    require(case['model_id'] == 'Qwen/Qwen3-Embedding-0.6B', 'Qwen adapter is model-specific')
    model = SentenceTransformer(case['snapshot'],device='cpu',trust_remote_code=False,
        local_files_only=True,model_kwargs={'torch_dtype':torch.float32}).eval()
    configurations = []
    for name,module in model._modules.items():
        config = getattr(getattr(module,'auto_model',None),'config',None)
        if config is not None:
            require(getattr(config,'model_type',None) == 'qwen3', 'unexpected Qwen backbone')
            configurations.append({'module':name,'model_type':config.model_type,
                'hidden_act':getattr(config,'hidden_act',None),
                'original_use_cache':getattr(config,'use_cache',None),'embedding_use_cache':False})
            # No generation API/cache is being benchmarked. Apply to BOTH native
            # wrapper and exported graph; preserve complete pooling/normalization.
            config.use_cache = False
    require(bool(configurations), 'missing Qwen Transformer module')
    require(all(p.dtype == torch.float32 for p in model.parameters() if p.is_floating_point()),
            'Qwen FP32 contract not established')
    chunks = [case['texts'][i:i+case['batch_size']] for i in range(0,64,case['batch_size'])]
    batches = [model.tokenizer(chunk,padding='max_length',truncation=True,
        max_length=case['seq_len'],return_tensors='pt') for chunk in chunks]
    require(all(set(b) <= {'input_ids','attention_mask'} for b in batches),
            'Qwen tokenizer requires a different input adapter')
    batches=[{k:b[k] for k in ('input_ids','attention_mask')} for b in batches]
    class Wrapper(torch.nn.Module):
        def __init__(self):super().__init__();self.model=model
        def forward(self,input_ids,attention_mask):
            return self.model({'input_ids':input_ids,'attention_mask':attention_mask})['sentence_embedding']
    wrapper = Wrapper().eval()
    pipeline = {'native_modules':[{'name':n,'class':type(m).__module__+'.'+type(m).__name__}
                                 for n,m in model._modules.items()],
                'configurations':configurations,'dtype':'float32',
                'pipeline':'complete SentenceTransformer.forward; no encode prompt/normalization substitution',
                'use_cache':False,'cache_scope':'single-pass embedding, not generative KV-cache optimization',
                'token_shapes':[list(b['input_ids'].shape) for b in batches],
                'nonpadding_tokens':[b['attention_mask'].sum(dim=1).tolist() for b in batches]}
    if directory is not None:save(directory/'qwen-build-protocol.json',pipeline)
    exported = torch.export.export(wrapper,tuple(batches[0].values()),strict=False)
    module = exported.graph_module
    pipeline['original_graph_sha256'] = graph_identity(module.graph)
    stripped = []
    for node in list(module.graph.nodes):
        if node.op == 'call_function' and str(node.target).startswith('aten._assert_tensor_metadata'):
            require(not node.users,'metadata assertion unexpectedly has users')
            stripped.append(node.name);module.graph.erase_node(node)
    module.graph.lint();module.recompile()
    pipeline['stripped_export_metadata_assertions'] = stripped
    wrapper.to('cuda:0')
    state = dict(wrapper.named_parameters(remove_duplicate=False))
    state.update(wrapper.named_buffers(remove_duplicate=False))
    constants = {k:v.to('cuda:0') for k,v in exported.constants.items() if isinstance(v,torch.Tensor)}
    specs = {s.arg.name:s for s in exported.graph_signature.input_specs}
    kinds = {n:s.kind.name for n,s in specs.items()}
    placeholders = [n for n in module.graph.nodes if n.op == 'placeholder']
    values, users = [], []
    for b in batches:
        user = {k:v.to('cuda:0') for k,v in b.items()};users.append(user)
        row = []
        for node in placeholders:
            spec = specs[node.name]
            if spec.kind.name == 'USER_INPUT':row.append(user[spec.arg.name])
            elif spec.target in state:row.append(state[spec.target])
            elif spec.target in constants:row.append(constants[spec.target])
            else:raise ValueError('unresolved Qwen placeholder '+node.name)
        values.append(row)
    return wrapper,module,values,users,kinds,pipeline


def trace(module, values):
    import torch
    from torch.fx import Interpreter
    from graph import facts
    class Recorder(Interpreter):
        def __init__(self):super().__init__(module);self.keep=[];self.records={};self.samples={}
        def run_node(self,node):
            if str(node.target) == 'aten.mul.Tensor' and len(node.args) == 2 and any(
                    hasattr(a,'target') and str(a.target) == 'aten.silu.default' for a in node.args):
                args,_ = self.fetch_args_kwargs_from_env(node)
                if all(isinstance(a,torch.Tensor) for a in args):
                    self.samples[node.name] = tuple(a.clone() for a in args)
            result = super().run_node(node)
            if isinstance(result,torch.Tensor):
                self.keep.append(result);self.records[node.name]=facts(result)
            elif node.op != 'output' and isinstance(result,(tuple,list)) and any(
                    isinstance(x,torch.Tensor) for x in result):
                raise ValueError('Qwen multi-output node needs explicit G1 binding adapter: '+node.name)
            return result
    observer=Recorder();observer.run(*values);torch.cuda.synchronize()
    return observer.records,observer.samples


def gate(bridge,args,case):
    import torch
    from graph import graph_identity,make_plan,digest
    from support import fingerprint,mul_candidate
    from execution import run_mul
    from mul_kernel import compile_call
    from support import identity,same
    initial=identity(bridge,args)
    wrapper,module,values,users,kinds,pipeline=build(case,args.output_dir)
    protected=bridge.protected_digest(values);graph_sha=graph_identity(module.graph)
    operations={str(n.target) for n in module.graph.nodes if n.op=='call_function'}
    save(args.output_dir/'actual-operations.json',sorted(operations))
    save(args.output_dir/'graph-structure.json',[{'name':n.name,'op':n.op,'target':str(n.target),
          'args':str(n.args),'kwargs':str(n.kwargs)} for n in module.graph.nodes])
    records,samples=trace(module,values[0])
    plan=make_plan(module.graph,records,kinds,case['model_id'],
                   f'stream:{torch.cuda.current_stream().cuda_stream}')
    legal=bridge.load_legality(args.legality);plan_sha=legal.plan_fingerprint(plan)
    tensors={t['source_value']:t for t in plan['tensors']}
    evidence={'tensor.'+n:{**f,'tensor_id':'tensor.'+n,'storage_id':tensors[n]['storage_id'],
        'plan_id':plan['plan_id'],'plan_sha256':plan_sha,'graph_fingerprint':graph_sha,
        'scope':'ppu_runtime','physical_card':args.physical_card,'source':'fresh Qwen diagnostic, not timing'}
        for n,f in records.items()}
    analysis=legal.analyze_op_candidates(plan,[t['task_id'] for t in plan['tasks']],
        kernel_ids=('aten.mul.Tensor',),binding_evidence=evidence,
        expected_graph_fingerprint=graph_sha,expected_physical_card=args.physical_card,
        plan_identity={'derived_plan_canonical_sha256':plan_sha})
    save(args.output_dir/'model-plan.json',plan);save(args.output_dir/'bindings.json',evidence)
    save(args.output_dir/'legality.json',analysis)
    require(not analysis['plan_validation']['plan_issue_codes'] and
            not analysis['plan_validation']['order_problems'],'Qwen G1/G03 plan/order rejected')
    allowed={}
    for c in analysis['candidates']:
        if c['decision']=='allowed' and c['ppu_runtime_evidence']=='provided':
            allowed.setdefault(c['task_id'],set()).add(c['input_tensor_id'])
    selected,excluded={},{}
    for node in module.graph.nodes:
        if str(node.target)!='aten.mul.Tensor':continue
        try:selected[node.name]=mul_candidate(node,records,allowed.get('task.'+node.name,set()))
        except ValueError as error:excluded[node.name]=str(error)
    save(args.output_dir/'lowering.json',{'selected':selected,'excluded':excluded})
    require(bool(selected),'no legal SiLU->Mul exact-shape candidate; do not use GELU or native success as substitute')
    micro={}
    for n in (1,255,257):
        left=torch.linspace(-3,3,n,dtype=torch.float32).to('cuda:0')
        right=torch.linspace(.13,2.13,n,dtype=torch.float32).to('cuda:0')
        call,code=compile_call(left,args.output_dir/'compiler-micro'/str(n))
        reference=left*right
        independent=call(left,right,torch.empty_like(left))
        checks={'out':same(bridge,reference,independent)}
        for index in (0,1):
            a,b=left.clone(),right.clone();dest=(a,b)[index]
            untouched=digest((a,b)[1-index]);call(a,b,dest);torch.cuda.synchronize()
            checks['alias_arg_'+str(index)]=same(bridge,reference,dest)
            require(digest((a,b)[1-index])==untouched,'micro probe overwrote non-target operand')
        micro[str(n)]={'checks':checks,'compiler':code}
    save(args.output_dir/'micro-probes.json',micro)
    calls,compiler={},{}
    for name in selected:calls[name],compiler[name]=compile_call(samples[name][0],args.output_dir/'compiler'/name)
    probes={}
    for name,call in calls.items():
        left,right=samples[name];dest_index=selected[name]['destination_arg']
        original=(digest(left),digest(right))
        independent=call(left,right,torch.empty_like(left));native=left*right
        require((digest(left),digest(right))==original,'out probe modified its inputs')
        a,b=left.clone(),right.clone();dest=(a,b)[dest_index]
        untouched=digest((a,b)[1-dest_index])
        returned=call(a,b,dest);torch.cuda.synchronize()
        require(returned.data_ptr()==dest.data_ptr(),'Qwen same-address probe binding failed')
        require(digest((a,b)[1-dest_index])==untouched,'Qwen alias probe overwrote non-target operand')
        probes[name]={'torch_vs_flagtree':same(bridge,native,independent),
                      'out_vs_inplace':same(bridge,independent,dest),
                      'destination_arg':dest_index,'returned_pointer':returned.data_ptr(),
                      'destination_pointer':dest.data_ptr(),'actual_launch_synchronized':True}
    save(args.output_dir/'kernel-probes.json',probes)
    comparisons=[]
    for batch,user in zip(values,users):
        native=run_mul(module,batch,{},{});a,b={},{}
        separate=run_mul(module,batch,calls,selected,records=a)
        inplace=run_mul(module,batch,calls,selected,inplace=True,records=b)
        comparisons.append({'native_forward':same(bridge,native,wrapper(*user.values())),
            'torch_vs_flagtree':same(bridge,native,separate),'out_vs_inplace':same(bridge,separate,inplace),
            'node_digests_equal':a==b})
        require(a==b,'Qwen per-node comparison failed')
    require(bridge.protected_digest(values)==protected,'Qwen parameters/input overwritten')
    require(identity(bridge,args)==initial,'source/environment changed during Qwen gate')
    save(args.output_dir/'compare.json',comparisons)
    return {'status':'passed','case_sha256':fingerprint(case),'identity_sha256':initial,
        'graph_sha256':graph_sha,'input_sha256':protected,'selected':selected,'excluded':excluded,
        'compiler':compiler,'compiler_set_sha256':bridge.compiler_identity(compiler),'pipeline':pipeline,
        'runtime_applied_in_gate':True,
        'scope':'real FlagTree multiply after native SiLU, G03 same-address output; no fused SiLU/kernel/full-model claim'}
