"""Explicit max.dim values/indices binding; no tuple treated as one storage.

The original FX graph/runtime is unchanged. A Python tuple retains ALL its
tensor leaves until its last projection; model that ownership conservatively.
Only aten.max.dim -> literal getitem(0/1) is supported, never arbitrary tuples.
"""
import operator

from support import require


def output_names(node):
    return [node.name+'.output0', node.name+'.output1']


def projections(node):
    require(str(node.target)=='aten.max.dim','unsupported multi-output operation: '+str(node.target))
    require(len(node.args)>=1 and hasattr(node.args[0],'name'),'max.dim needs a tensor node input')
    require(len(node.args)<=3 and set(node.kwargs)<= {'dim','keepdim'},'unsupported max.dim signature')
    require(not (len(node.args)>1 and 'dim' in node.kwargs),'duplicate max.dim dimension')
    require(not (len(node.args)>2 and 'keepdim' in node.kwargs),'duplicate max.dim keepdim')
    dim=node.args[1] if len(node.args)>1 else node.kwargs.get('dim')
    keep=node.args[2] if len(node.args)>2 else node.kwargs.get('keepdim',False)
    require(type(dim) is int and type(keep) is bool,'max.dim dynamic dimension/keepdim unsupported')
    selected=[]
    for user in node.users:
        require(user.op=='call_function' and user.target is operator.getitem and
                len(user.args)==2 and user.args[0] is node and not user.kwargs and
                type(user.args[1]) is int and user.args[1] in (0,1),
                'max.dim tuple may only have explicit getitem(0/1) users: '+user.name)
        selected.append({'node':user.name,'index':user.args[1]})
    require(bool(selected),'unused max.dim tuple requires a separate release adapter')
    return selected,dim,keep


def validate_layouts(node,records):
    users,dim,keep=projections(node)
    names=output_names(node)
    require(node.args[0].name in records and all(n in records for n in names),
            'missing max.dim input/values/indices runtime evidence')
    source=records[node.args[0].name]
    shape=source['shape']
    require(bool(shape) and all(type(d) is int and d>0 for d in shape),'unknown/empty max.dim input shape')
    require(-len(shape)<=dim<len(shape),'max.dim dimension out of range')
    axis=dim%len(shape)
    expected=shape[:axis]+([1] if keep else [])+shape[axis+1:]
    values,indices=[records[n] for n in names]
    require(values['shape']==indices['shape']==expected,'max.dim values/indices shape mismatch')
    require(values['dtype']==source['dtype'] and indices['dtype']=='int64','max.dim values/indices dtype mismatch')
    keys=[]
    sizes={'float32':4,'float16':2,'bfloat16':2,'float64':8,
           'int64':8,'int32':4,'int16':2,'int8':1,'uint8':1,'bool':1}
    for f in (source,values,indices):
        require(type(f.get('pointer')) is int and f['pointer']>0 and
                type(f.get('nbytes')) is int and f['nbytes']>0 and
                type(f.get('byte_offset')) is int and f['byte_offset']>=0,
                'max.dim physical storage evidence invalid')
        keys.append((f['device'],f['pointer']))
    require(len(set(keys))==3,'max.dim unexpected alias between input/values/indices')
    for f in (values,indices):
        count=1
        for d in expected:count*=d
        require(f['device']==source['device'] and f['byte_offset']==0 and
                f.get('contiguous') is True and f.get('numel')==count and
                f['dtype'] in sizes and f['nbytes']==count*sizes[f['dtype']],
                'max.dim unsupported output device/layout/capacity')
    return users


def record_tuple(node,result,records):
    import torch
    from graph import facts
    projections(node)  # fail closed on unknown target/container uses
    require(isinstance(result,tuple) and len(result)==2 and
            all(isinstance(x,torch.Tensor) for x in result),'max.dim must return exactly two tensor leaves')
    for name,tensor in zip(output_names(node),result):
        # values/indices 是两个真实 Tensor，各自记录 storage；tuple 本身没有虚构的显存块。
        require(name not in records,'tuple output identity collision: '+name)
        records[name]=facts(tensor)
    validate_layouts(node,records)


def make_plan(graph,records,kinds,model_id,stream):
    """Augment frozen single-output adapter without editing its source or FX graph."""
    from graph import make_plan as single_plan
    nodes=list(graph.nodes)
    ordinary={n.name for n in nodes}
    tuples=[n for n in nodes if n.op=='call_function' and str(n.target)=='aten.max.dim']
    expected=ordinary | {name for n in tuples for name in output_names(n)}
    require(not (set(records)-expected),'unmapped runtime tensor evidence')
    plan=single_plan(graph,{k:v for k,v in records.items() if k in ordinary},kinds,model_id,stream)
    tasks={t['source_node']:t for t in plan['tasks']}
    aliases={}
    storage_by_id={s['storage_id']:s for s in plan['storages']}
    for tensor in plan['tensors']:
        f=records[tensor['source_value']]
        aliases[(f['device'],f['pointer'])]=tensor['storage_id']
    report=[]
    permitted_projections=set()
    for node in tuples:
        users=validate_layouts(node,records)
        names=output_names(node)
        task=tasks[node.name]
        require(not task['outputs'],'max.dim unexpectedly already has a single-output binding')
        require(node.name not in records,'tuple container must not have a tensor storage')
        for user in users:
            projected=records.get(user['node'])
            # getitem 不重新算 max，也不复制分量；必须与对应叶子的执行期布局完全一致。
            require(projected==records[names[user['index']]],
                    'getitem is not the observed max.dim component alias: '+user['node'])
        leaf_ids=[]
        for name in names:
            f=records[name];key=(f['device'],f['pointer'])
            # 复用已有 getitem 对应的 storage ID，避免叶子和投影各算一份容量。
            sid=aliases.setdefault(key,'storage.'+name)
            if sid not in storage_by_id:
                storage={'storage_id':sid,'size_bytes':f['nbytes'],'alignment':1,
                         'device':f['device'],'allocation_kind':'temporary',
                         'source':'max.dim tensor leaf execution untyped_storage().nbytes()'}
                plan['storages'].append(storage);storage_by_id[sid]=storage
            require(storage_by_id[sid]['size_bytes']==f['nbytes'],'tuple/getitem alias capacity mismatch')
            tid='tensor.'+name
            require(all(t['tensor_id']!=tid for t in plan['tensors']),'tuple tensor identity collision')
            plan['tensors'].append({'tensor_id':tid,'storage_id':sid,'producer':task['task_id'],
                'consumers':['task.'+u['node'] for u in users], 'dtype':f['dtype'], 'shape':f['shape'],
                'storage_offset_bytes':f['byte_offset'], 'source_value':name,
                'is_graph_output':False,'is_persistent':False,'is_mutated':False})
            leaf_ids.append(tid)
        task['outputs']=leaf_ids
        for user in users:
            # Both leaves remain held by the tuple until its final getitem use.
            # These are ownership edges, not a claim getitem numerically reads both.
            # Python tuple 在最后一次投影前还持有两个分量；因此两个叶子都延寿。
            # 投影后的 view/别名若还有消费者，G1 还会把其底层 storage 延长到更晚。
            target=tasks[user['node']]
            target['inputs']=list(dict.fromkeys(target['inputs']+leaf_ids))
            # str(operator.getitem) contains spaces/angle brackets and is not a
            # valid G1 kernel ID. This is a stable ID for the audited projection,
            # not a changed runtime target or an invented device kernel.
            target['kernel_id']='python.operator.getitem'
            permitted_projections.add(user['node'])
        report.append({'node':node.name,'operation':str(node.target),
            'output_tensor_ids':leaf_ids,'output_storage_ids':[aliases[(records[n]['device'],records[n]['pointer'])]
                                                             for n in names],
            'projections':users,'retention':'both leaves held until last tuple projection; projected aliases extend lifetime',
            'runtime_graph_changed':False,'values_or_indices_recomputed':False})
    require(all(n.name in permitted_projections for n in nodes
                if n.op=='call_function' and n.target is operator.getitem),
            'getitem outside supported max.dim tuple boundary')
    return plan,{'adapter':'aten.max.dim values/indices, literal getitem only', 'nodes':report,
                 'unknown_multi_output_policy':'reject','evidence':'actual execution storage, not shape inference'}


def record_digests(node,result,records):
    """Diagnostic-only; no hashing or tuple traversal added to timed execution."""
    import torch
    from graph import digest
    if isinstance(result,torch.Tensor):records[node.name]=digest(result)
    elif isinstance(result,(tuple,list,dict)):
        projections(node)
        require(isinstance(result,tuple) and len(result)==2 and
                all(isinstance(x,torch.Tensor) for x in result),'unsupported multi-output digest shape')
        for name,tensor in zip(output_names(node),result):records[name]=digest(tensor)
