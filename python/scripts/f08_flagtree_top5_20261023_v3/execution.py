"""Reference-counted execution and metadata-only peak diagnostics."""
from collections import Counter


# 【实际优化发生处】G03 先证明覆盖合法，这里才决定输出写到哪里。
# 此函数只执行已选中的节点，不负责重新判断任意算子是否可以原地计算。
# 每个节点单独进入/退出函数，避免 args/result/dest 等局部引用跨节点保活。
def _execute(node, env, counts, calls, selected, inplace, records):
    import torch
    from torch.fx.node import map_arg
    from support import require
    from graph import digest
    args = map_arg(node.args, lambda n:env[n.name])
    kwargs = map_arg(node.kwargs, lambda n:env[n.name])
    if node.name in calls:
        index = selected[node.name]['destination_arg']
        # 两臂使用同一个编译好的 FlagTree Mul，唯一关键差异是目标缓冲：
        # out 新分配输出；inplace 复用已获 G03 放行的 SiLU 输入，不是计算后 copy。
        # 并非任意一侧输入都能覆盖：destination_arg 来自候选筛选与别名检查。
        dest = args[index] if inplace else torch.empty_like(args[0])
        result = calls[node.name](args[0],args[1],dest)
        # 同时验证 Tensor 数据地址与底层 storage，防止返回了另一个分配结果。
        require(result.data_ptr() == dest.data_ptr() and
                result.untyped_storage().data_ptr() == dest.untyped_storage().data_ptr(),
                'FlagTree multiply did not return the bound destination')
    else:
        # 未选中的节点保持导出图原算子；因此当前不是全模型 FlagTree。
        result = node.target(*args, **kwargs)
    env[node.name] = result
    if records is not None:
        # 逐节点摘要只用于正确性检查；正常计时传 None，不在热路径哈希。
        from tuple_bindings import record_digests
        record_digests(node,result,records)
    for source in node.all_input_nodes:
        counts[source.name] -= 1
        # 最后一个消费节点执行后移除执行器引用；view/tuple 中仍存在的引用
        # 会继续持有底层 storage。pop 不等于把显存立即归还设备，allocator 可缓存。
        # placeholder 属于调用者持有的输入/参数，本执行器不主动弹出。
        if counts[source.name] == 0 and source.op != 'placeholder':env.pop(source.name,None)
    if counts[node.name] == 0:env.pop(node.name,None)


def run_mul(module, values, calls, selected, inplace=False, records=None):
    from torch.fx.node import map_arg
    from graph import single_tensor
    from support import require
    nodes = list(module.graph.nodes)
    inputs = [n for n in nodes if n.op == 'placeholder']
    require(len(inputs) == len(values), 'placeholder binding mismatch')
    require(set(calls) == set(selected), 'kernel/selected node coverage mismatch')
    # 统计“还有几个消费节点”而非同一算子实参里出现了几次；与下面逐节点扣减一致。
    counts = Counter(n.name for node in nodes for n in node.all_input_nodes)
    env = {n.name:t for n,t in zip(inputs,values)}
    for node in nodes:
        # 严格沿规范化后的 FX 图顺序提交，不改模型算子顺序；图节点不等于单个设备 kernel。
        if node.op == 'call_function':_execute(node,env,counts,calls,selected,inplace,records)
        elif node.op == 'output':return single_tensor(map_arg(node.args[0],lambda n:env[n.name]))
        elif node.op != 'placeholder':raise ValueError('unsupported graph node '+node.op)
    raise ValueError('missing graph output')


def live_metadata(env, tensor_storage_ids=None):
    """Helper scope guarantees loop tensor/storage references die before next node."""
    import torch
    groups = {}
    # 注意：这是原有 BGE 诊断辅助函数，只枚举直接 Tensor，会跳过 tuple 容器。
    # Qwen max.dim 的两个叶子不能据此认为已经完整记账；需独立的 tuple-aware 诊断。
    for name,tensor in env.items():
        if not isinstance(tensor,torch.Tensor):continue
        storage = tensor.untyped_storage()
        key = (str(tensor.device),storage.data_ptr())
        entry = groups.setdefault(key, {'device':key[0], 'pointer':key[1], 'nbytes':storage.nbytes(),
                                       'tensor_nodes':[], 'plan_storage_ids':[]})
        entry['tensor_nodes'].append(name)
        if tensor_storage_ids and name in tensor_storage_ids:
            entry['plan_storage_ids'].append(tensor_storage_ids[name])
    return sorted(groups.values(),key=lambda x:(-x['nbytes'],x['pointer']))


def diagnose(module, values, calls, inplace, plan):
    """Same old node helper/release, synchronous diagnostic ONLY, never latency data."""
    import torch
    from torch.fx.node import map_arg
    # 注意：这里调用共享 GELU execute_node，不是上面的 Qwen Mul _execute。
    # 当前入口只供 BGE 诊断，不能删除 worker 的限制后直接拿来诊断 Qwen。
    from graph import execute_node, single_tensor, digest
    from support import require
    nodes = list(module.graph.nodes)
    placeholders = [n for n in nodes if n.op == 'placeholder']
    require(len(placeholders) == len(values), 'diagnostic placeholder count mismatch')
    env = {n.name:v for n,v in zip(placeholders,values)}
    counts = Counter(n.name for node in nodes for n in node.all_input_nodes)
    tensor_storages = {t['source_value']:t['storage_id'] for t in plan['tensors']}
    rows = []
    for node in nodes:
        if node.op == 'call_function':
            torch.cuda.synchronize()
            before = torch.cuda.memory_allocated()
            before_live = live_metadata(env,tensor_storages)
            torch.cuda.reset_peak_memory_stats()
            execute_node(node,env,counts,calls,inplace,None)
            torch.cuda.synchronize()
            after = torch.cuda.memory_allocated()
            peak = torch.cuda.max_memory_allocated()
            # 每节点同步/重置峰值会改变运行状态；这些数据只定位，不替代正常性能。
            # peak-max(before,after) 只是端点未捕获的分配，不足以证明是某种 workspace。
            rows.append({'node':node.name,'operation':str(node.target),'flagtree_selected':node.name in calls,
                'before_allocated_bytes':before,'after_allocated_bytes':after,'node_peak_allocated_bytes':peak,
                'within_node_excess_over_endpoints_bytes':max(0,peak-max(before,after)),
                'live_before':before_live,'live_after':live_metadata(env,tensor_storages)})
        elif node.op == 'output':
            # No output reference escapes the helper; return only its digest.
            checksum = digest(single_tensor(map_arg(node.args[0],lambda n:env[n.name])))
            return {'nodes':rows,'output_sha256':checksum,
                    'diagnostic_peak_allocated_bytes':max(r['node_peak_allocated_bytes'] for r in rows),
                    'top_peak_nodes':sorted(rows,key=lambda x:-x['node_peak_allocated_bytes'])[:8],
                    'boundary':'per-node synchronization changes timing/allocation overlap; no performance conclusion; '
                               'live endpoint storage metadata cannot identify every transient kernel allocation'}
    raise ValueError('missing graph output')
