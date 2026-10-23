"""Bind proven nonoverlapping logical outputs to one actual FlagTree arena.

Initial runtime subset: full-size offset-zero fp32 slots, a static serial graph,
no aliases of pooled outputs. Unsupported layouts fail, never copy/fallback.
All arms use identical selected-node completion barriers. This deliberately
conservative first mechanism is NOT a low-overhead production executor.
"""
from collections import Counter
import copy
import math

from common import fingerprint, require


def plan_binding(plan, records, selected, planner):
    derived = copy.deepcopy(plan)
    tensors = {t['source_value']: t for t in derived['tensors']}
    storages = {s['storage_id']: s for s in derived['storages']}
    order = [t['task_id'] for t in derived['tasks']]
    positions = {name: i for i, name in enumerate(order)}
    outputs, nodes = set(), {}
    require(bool(selected), 'no FlagTree producers selected')
    for name, info in selected.items():
        tensor = tensors[name]; fact = records[name]; sid = tensor['storage_id']; meta = storages[sid]
        require(tensor['producer'] == 'task.' + name and meta['allocation_kind'] == 'temporary',
                'pooled output is not a temporary produced by this node')
        require(not any(tensor[k] for k in ('is_graph_output', 'is_persistent', 'is_mutated')),
                'protected/mutated output cannot enter pool')
        require(sum(t['storage_id'] == sid for t in derived['tensors']) == 1, 'pooled alias adapter not supported')
        shape = tensor['shape']
        require(shape == info['shape'] == fact['shape'] and all(type(n) is int and n > 0 for n in shape),
                'selected shape mismatch')
        require(tensor['dtype'] == fact['dtype'] == 'float32' and fact['contiguous']
                and fact['byte_offset'] == 0 and meta['size_bytes'] == fact['nbytes'] == math.prod(shape) * 4,
                'selected storage layout mismatch')
        require(tensor['storage_offset_bytes'] in (None, 0), 'offset disagrees with observed binding')
        require(tensors[info['input_node']]['storage_id'] != sid, 'G02 does not merge input/output storage')
        tensor['storage_offset_bytes'] = 0
        outputs.add(sid)
        last = max([positions[tensor['producer']]] + [positions[c] for c in tensor['consumers']])
        nodes[name] = {'storage_id': sid, 'shape': shape, 'size_bytes': meta['size_bytes'],
                       'writer_position': positions['task.' + name], 'last_consumer_position': last}
    arena, _ = planner.plan_arena_with_report(derived, task_order=order, pool_storage_ids=outputs)
    require(not planner.verify_matches(arena, derived), 'planner verification failed')
    require(set(arena.selected_storage_ids) == outputs, 'planner excluded a selected output')
    require(not arena.unresolved_tensor_storage_offsets, 'unresolved pooled output offset')
    require(all(a.offset_bytes == 0 and a.size_bytes == arena.arena_size_bytes for a in arena.assignments),
            'initial runtime supports full-size offset-zero slots only')
    chain = sorted(nodes, key=lambda n: nodes[n]['writer_position'])
    for before, after in zip(chain, chain[1:]):
        require(nodes[before]['last_consumer_position'] < nodes[after]['writer_position'],
                'shared slot overwrites a live output')
    return {'original_plan_sha256': fingerprint(plan), 'derived_plan': derived,
            'task_order': order, 'nodes': nodes, 'chain': chain,
            'arena_plan': arena.to_dict(),
            'contract': 'completion barrier before every selected node in ALL arms; closed-interval G1/G2 proof'}


class Arena:
    def __init__(self, binding, device):
        import torch
        self.binding = binding
        size = binding['arena_plan']['arena_size_bytes']
        self.owner = torch.empty(size // 4, dtype=torch.float32, device=device)
        self.pointer = self.owner.untyped_storage().data_ptr()
        alignment = binding['arena_plan']['base_alignment']
        require(self.pointer % alignment == 0 and self.owner.untyped_storage().nbytes() == size,
                'arena base alignment/capacity mismatch')
        self.views = {name: self.owner.view(info['shape']) for name, info in binding['nodes'].items()}
        for view in self.views.values():
            require(view.storage_offset() == 0 and view.untyped_storage().data_ptr() == self.pointer,
                    'arena view is not the planned offset-zero slot')

    def destination(self, name, source):
        target = self.views[name]
        require(tuple(source.shape) == tuple(target.shape) and source.dtype == target.dtype
                and source.device == target.device and source.is_contiguous()
                and source.storage_offset() == 0, 'runtime source layout changed')
        require(source.untyped_storage().data_ptr() != self.pointer, 'unproved input/arena alias')
        require(target.untyped_storage().data_ptr() == self.pointer and target.data_ptr() == self.pointer,
                'runtime arena binding changed')
        return target


def _node(node, env, counts, calls, mode, arena, barrier, diagnostics):
    import torch
    from torch.fx.node import map_arg
    args = map_arg(node.args, lambda n: env[n.name])
    kwargs = map_arg(node.kwargs, lambda n: env[n.name])
    pointer_row = None
    if node.name in calls:
        # Deliberate identical completion points for torch/out/arena/inplace.
        barrier()
        if mode == 'torch':
            result = node.target(*args, **kwargs)
        else:
            source = args[0]
            dest = (arena.destination(node.name, source) if mode == 'flagtree-arena' else
                    source if mode == 'flagtree-inplace' else torch.empty_like(source))
            result = calls[node.name](source, dest)
            require(result.data_ptr() == dest.data_ptr()
                    and result.untyped_storage().data_ptr() == dest.untyped_storage().data_ptr(),
                    'compiled kernel did not return its explicit destination')
            if diagnostics is not None:
                pointer_row = {'node': node.name, 'source_pointer': source.data_ptr(),
                               'destination_pointer': dest.data_ptr(), 'returned_pointer': result.data_ptr(),
                               'storage_pointer': dest.untyped_storage().data_ptr(),
                               'byte_offset': dest.storage_offset() * dest.element_size(),
                               'completion_barrier_before_write': True}
    else:
        result = node.target(*args, **kwargs)
    env[node.name] = result
    if diagnostics is not None and isinstance(result, torch.Tensor):
        from graph import digest
        diagnostics['nodes'][node.name] = digest(result)
        if pointer_row is not None:
            diagnostics['writes'].append(pointer_row)
    for source_node in node.all_input_nodes:
        counts[source_node.name] -= 1
        if counts[source_node.name] == 0 and source_node.op != 'placeholder':
            env.pop(source_node.name, None)
    if counts[node.name] == 0:
        env.pop(node.name, None)
    # args/kwargs/source/dest/result all leave scope before the next node.


def run_graph(module, values, calls, mode, binding, arena=None, diagnostics=None, barrier=None):
    from torch.fx.node import map_arg
    from graph import single_tensor
    require(mode in ('torch', 'flagtree-out', 'flagtree-arena', 'flagtree-inplace'), 'unknown execution mode')
    nodes = list(module.graph.nodes)
    outputs = [n for n in nodes if n.op == 'output']
    require(len(outputs) == 1 and nodes[-1] is outputs[0]
            and all(n.op in ('placeholder', 'call_function', 'output') for n in nodes),
            'unsupported graph nodes/outputs')
    require(['task.' + n.name for n in nodes if n.op == 'call_function'] == binding['task_order'],
            'runtime task order differs from verified planner order')
    require(set(calls) == set(binding['nodes']), 'compiled call coverage differs from binding')
    require((arena is not None) == (mode == 'flagtree-arena'), 'arena arm/setup mismatch')
    placeholders = [n for n in nodes if n.op == 'placeholder']
    require(len(placeholders) == len(values), 'placeholder binding mismatch')
    require(callable(barrier), 'explicit completion barrier required')
    env = {node.name: value for node, value in zip(placeholders, values)}
    counts = Counter(n.name for node in nodes for n in node.all_input_nodes)
    previous = None
    for index, node in enumerate(n for n in nodes if n.op == 'call_function'):
        if node.name in binding['nodes']:
            if previous is not None:
                require(binding['nodes'][previous]['last_consumer_position'] < index and previous not in env,
                        'previous slot owner remains live before reuse')
            previous = node.name
        _node(node, env, counts, calls, mode, arena, barrier, diagnostics)
    return single_tensor(map_arg(outputs[0].args[0], lambda n: env[n.name]))
