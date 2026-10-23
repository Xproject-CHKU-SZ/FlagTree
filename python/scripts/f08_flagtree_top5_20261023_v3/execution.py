"""Reference-counted execution and metadata-only peak diagnostics."""
from collections import Counter


def _execute(node, env, counts, calls, selected, inplace, records):
    import torch
    from torch.fx.node import map_arg
    from support import require
    from graph import digest
    args = map_arg(node.args, lambda n:env[n.name])
    kwargs = map_arg(node.kwargs, lambda n:env[n.name])
    if node.name in calls:
        index = selected[node.name]['destination_arg']
        dest = args[index] if inplace else torch.empty_like(args[0])
        result = calls[node.name](args[0],args[1],dest)
        require(result.data_ptr() == dest.data_ptr() and
                result.untyped_storage().data_ptr() == dest.untyped_storage().data_ptr(),
                'FlagTree multiply did not return the bound destination')
    else:
        result = node.target(*args, **kwargs)
    env[node.name] = result
    if records is not None:
        from tuple_bindings import record_digests
        record_digests(node,result,records)
    for source in node.all_input_nodes:
        counts[source.name] -= 1
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
    counts = Counter(n.name for node in nodes for n in node.all_input_nodes)
    env = {n.name:t for n,t in zip(inputs,values)}
    for node in nodes:
        if node.op == 'call_function':_execute(node,env,counts,calls,selected,inplace,records)
        elif node.op == 'output':return single_tensor(map_arg(node.args[0],lambda n:env[n.name]))
        elif node.op != 'placeholder':raise ValueError('unsupported graph node '+node.op)
    raise ValueError('missing graph output')


def live_metadata(env, tensor_storage_ids=None):
    """Helper scope guarantees loop tensor/storage references die before next node."""
    import torch
    groups = {}
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
