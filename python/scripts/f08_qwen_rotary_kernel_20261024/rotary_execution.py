"""One reference-counted framework for both arms; no node sync in timed mode."""
from collections import Counter
from rotary_contracts import require, schedule


def graph_description(module):
    return [{'name': n.name, 'op': n.op, 'target': str(n.target),
             'inputs': [x.name for x in n.all_input_nodes]} for n in module.graph.nodes]


def prepare(module, rotary):
    """Compute counts/input remapping once in setup, not by editing frozen FX."""
    description = graph_description(module)
    rows = schedule(description, rotary)
    lookup = {n.name:n for n in module.graph.nodes}
    return {'steps': [(lookup[r['name']], r) for r in rows],
            'counts': Counter(name for r in rows for name in r['inputs']),
            'placeholders': [lookup[r['name']] for r in rows if r['op']=='placeholder'],
            'rows': rows, 'rotary': rotary}


def _execute(node, row, env, counts, mlp_calls, mlp_selected, rotary_calls, rotary, records, bindings):
    import torch
    from torch.fx.node import map_arg
    if row['rotary']:
        c = rotary[node.name]
        x, scale = env[c['source']], env[c['scale']]
        dest = torch.empty(tuple(x.shape), dtype=x.dtype, device=x.device)
        result = rotary_calls[node.name](x, scale, dest)
        kind, source = 'rotary_independent', c['source']
        require(result.data_ptr() == dest.data_ptr(), 'rotary did not return destination')
        require(result.untyped_storage().data_ptr() not in
                (x.untyped_storage().data_ptr(), scale.untyped_storage().data_ptr()), 'rotary aliased input')
    else:
        args = map_arg(node.args, lambda n: env[n.name])
        kwargs = map_arg(node.kwargs, lambda n: env[n.name])
        if node.name in mlp_calls:
            index = mlp_selected[node.name]['destination_arg']
            dest = args[index]
            result = mlp_calls[node.name](args[0], args[1], dest)
            require(result.data_ptr() == dest.data_ptr() and result.untyped_storage().data_ptr()
                    == dest.untyped_storage().data_ptr(), 'MLP same-address binding failed')
            kind, source, x = 'existing_mlp_inplace', node.args[index].name, dest
        else:
            result = node.target(*args, **kwargs)
            kind = None
    env[node.name] = result
    if records is not None:
        from tuple_bindings import record_digests
        record_digests(node, result, records)
    if bindings is not None and kind:
        # Gate-only pure metadata; these objects cannot keep Tensor/Storage alive.
        bindings.append({'kind': kind, 'source_value': source, 'output_value': node.name,
            'source_storage_pointer': x.untyped_storage().data_ptr(),
            'output_storage_pointer': result.untyped_storage().data_ptr(),
            'observed_same_address': x.data_ptr() == result.data_ptr(),
            'source_stride': list(x.stride()), 'output_stride': list(result.stride())})
    for name in row['inputs']:
        counts[name] -= 1
        if counts[name] == 0 and name not in env['_placeholder_names']:
            env.pop(name, None)
    if counts[node.name] == 0:
        env.pop(node.name, None)
    # args/kwargs/x/scale/dest/result die at return, before the next node starts.


def run(prepared, values, mlp_calls, mlp_selected, rotary_calls, records=None, bindings=None):
    from torch.fx.node import map_arg
    from graph import single_tensor
    require(set(mlp_calls) == set(mlp_selected), 'MLP coverage mismatch')
    require(set(rotary_calls) == set(prepared['rotary']), 'rotary fallback is forbidden')
    require(len(prepared['placeholders']) == len(values), 'placeholder binding mismatch')
    counts = prepared['counts'].copy()
    env = {n.name: t for n,t in zip(prepared['placeholders'], values)}
    env['_placeholder_names'] = frozenset(env)
    for node,row in prepared['steps']:
        if node.op == 'call_function':
            _execute(node,row,env,counts,mlp_calls,mlp_selected,rotary_calls,prepared['rotary'],records,bindings)
        elif node.op == 'output':
            return single_tensor(map_arg(node.args[0],lambda n:env[n.name]))
    raise ValueError('missing terminal output')
