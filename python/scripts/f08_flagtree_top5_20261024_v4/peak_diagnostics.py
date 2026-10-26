"""Qwen-only synchronous observation; never used by normal measured execution.

The node helper and reference-count release are the validated execution._execute.
Snapshots contain JSON metadata only. Snapshot IDs identify records, NOT allocator
allocation lifetimes: a pointer can be reused at different execution events.
"""
from collections import Counter

from support import fingerprint, require


def plan_index(plan):
    """Index logical provenance once; the fresh gate validates full G1/G03 schema."""
    tasks = {t['task_id']: t for t in plan['tasks']}
    require(len(tasks) == len(plan['tasks']), 'duplicate plan task')
    positions = {t['task_id']: i for i, t in enumerate(plan['tasks'])}
    storages = {s['storage_id']: s for s in plan['storages']}
    tensors = {}
    ids = set()
    for t in plan['tensors']:
        name = t['source_value']
        require(name not in tensors and t['tensor_id'] not in ids, 'duplicate plan tensor/source')
        require(t['storage_id'] in storages, 'unknown logical storage')
        require(t['producer'] is None or t['producer'] in tasks, 'unknown producer')
        require(all(c in tasks for c in t['consumers']), 'unknown consumer')
        ids.add(t['tensor_id'])
        consumers = sorted(t['consumers'], key=positions.__getitem__)
        tensors[name] = {
            'tensor_id': t['tensor_id'], 'plan_storage_id': t['storage_id'],
            'producer': t['producer'], 'consumers': consumers,
            'last_consumer': consumers[-1] if consumers else None,
            'last_consumer_task_index': positions[consumers[-1]] if consumers else None,
            'is_graph_output': t['is_graph_output'], 'is_persistent': t['is_persistent'],
        }
    storage_index = {}
    for sid, storage in storages.items():
        members = [t for t in tensors.values() if t['plan_storage_id'] == sid]
        ends = [t['last_consumer_task_index'] for t in members
                if t['last_consumer_task_index'] is not None]
        storage_index[sid] = {
            'alias_members': sorted(t['tensor_id'] for t in members),
            'last_consumer_task_index': max(ends) if ends else None,
            'allocation_kind': storage['allocation_kind'], 'source': storage['source'],
            'plan_size_bytes': storage.get('size_bytes'),
        }
    return {'tensors': tensors, 'storages': storage_index,
            'task_order': [t['source_node'] for t in plan['tasks']],
            'boundary': 'logical pre-optimization G1 IDs; observed inplace aliases are recorded separately; '
                        'last-consumer indices do not override graph-output/persistent protection'}


def tuple_layouts(module):
    from tuple_bindings import output_names, projections
    result = {}
    for node in module.graph.nodes:
        if node.op == 'call_function' and str(node.target) == 'aten.max.dim':
            projections(node)  # retain the existing explicit getitem-only boundary
            result[node.name] = output_names(node)
    return result


def storage_snapshot(env, index, tuple_names, tensor_type=None):
    """Read actual storage facts without returning a Tensor or Storage reference.

    tensor_type is injectable ONLY for metadata unit fixtures; workers omit it.
    Alias deduplication is local to this snapshot, never across execution events.
    """
    if tensor_type is None:
        import torch
        tensor_type = torch.Tensor
    groups = {}

    def add(name, tensor):
        require(name in index['tensors'], 'unmapped live tensor: ' + name)
        storage = tensor.untyped_storage()
        pointer, capacity = storage.data_ptr(), storage.nbytes()
        device = str(tensor.device)
        require(type(pointer) is int and pointer >= 0 and type(capacity) is int and capacity >= 0,
                'invalid observed storage')
        require(pointer != 0 or capacity == 0, 'null nonempty storage')
        # Empty buffers have no useful address identity; avoid inventing aliases at 0.
        key = (device, pointer) if pointer else (device, pointer, name)
        group = groups.setdefault(key, {'device': device, 'storage_pointer': pointer,
                                        'storage_nbytes': capacity, 'members': []})
        require(group['storage_nbytes'] == capacity, 'inconsistent live alias capacity')
        group['members'].append({
            'source_value': name, 'tensor_id': index['tensors'][name]['tensor_id'],
            'plan_storage_id': index['tensors'][name]['plan_storage_id'],
            'dtype': str(tensor.dtype).removeprefix('torch.'), 'shape': list(tensor.shape),
            'stride': list(tensor.stride()),
            'byte_offset': tensor.storage_offset() * tensor.element_size(),
        })

    for name, value in env.items():
        if isinstance(value, tensor_type):
            add(name, value)
        elif isinstance(value, (tuple, list, dict)):
            require(name in tuple_names and isinstance(value, tuple) and len(value) == 2
                    and all(isinstance(v, tensor_type) for v in value),
                    'unknown live container: ' + name)
            for leaf, tensor in zip(tuple_names[name], value):
                add(leaf, tensor)
        # Scalar bookkeeping results are not allocated tensor storage.
    for group in groups.values():
        group['members'].sort(key=lambda m: m['source_value'])
    return sorted(groups.values(), key=lambda g: (g['device'], g['storage_pointer'],
                                                  g['members'][0]['source_value']))


class SnapshotCatalog:
    """Deduplicate metadata records, not device allocations; retain no tensors."""
    def __init__(self):
        self.records = {}
        self.base_refs = None
        self.base_ref_set = set()

    def encode(self, groups):
        refs = []
        for group in groups:
            ref = fingerprint(group)
            require(ref not in self.records or self.records[ref] == group, 'snapshot hash collision')
            self.records.setdefault(ref, group)
            refs.append(ref)
        if self.base_refs is None:
            self.base_refs = list(refs)  # initial env contains only protected placeholders
            self.base_ref_set = set(refs)
        # A view can join a placeholder's alias group without changing its owner.
        # Replace that base metadata record in THIS snapshot, do not count it twice.
        members = {m['source_value']: (g, m) for g in groups for m in g['members']}
        for ref in self.base_refs:
            base = self.records[ref]
            for original in base['members']:
                actual = members.get(original['source_value'])
                require(actual is not None and actual[1] == original
                        and all(actual[0][k] == base[k] for k in
                                ('device', 'storage_pointer', 'storage_nbytes')),
                        'diagnostic lost or changed placeholder storage')
        ref_set = set(refs)
        return {'dynamic_storage_refs': [r for r in refs if r not in self.base_ref_set],
                'replaced_static_refs': [r for r in self.base_refs if r not in ref_set],
                'observed_live_storage_bytes': sum(g['storage_nbytes'] for g in groups),
                'observed_live_storage_count': len(groups)}


def _output_digest(node, env):
    from torch.fx.node import map_arg
    from graph import digest, single_tensor
    # Scope prevents the returned tensor from living across the next batch/run.
    return digest(single_tensor(map_arg(node.args[0], lambda n: env[n.name])))


def selected_binding(node_name, source_name, before_groups, after_groups, inplace):
    """Verify selected address relation from metadata, never retain Tensor arguments."""
    def lookup(groups, name):
        found = [(g, m) for g in groups for m in g['members'] if m['source_value'] == name]
        require(len(found) == 1, 'missing/ambiguous selected binding: ' + name)
        return found[0]
    source, source_member = lookup(before_groups, source_name)
    dest, dest_member = lookup(after_groups, node_name)
    same = (source['device'], source['storage_pointer'], source_member['byte_offset']) == \
           (dest['device'], dest['storage_pointer'], dest_member['byte_offset'])
    require(same == inplace, 'selected diagnostic destination does not match mode')
    return {'source_value': source_name, 'output_value': node_name,
            'source_storage_pointer': source['storage_pointer'],
            'output_storage_pointer': dest['storage_pointer'], 'observed_same_address': same,
            'boundary': 'before/after this node only, not cross-process or global allocation identity'}


def diagnose_batch(module, values, calls, selected, inplace, plan, memory, batch_index):
    """One batch, node-synchronized; memory is torch.cuda in production.

    Tests may pass a CPU-only accounting fixture. This is NOT a device fallback.
    No node output, args, result, clone or tensor-bearing callback escapes _execute.
    """
    from execution import _execute
    nodes = list(module.graph.nodes)
    inputs = [n for n in nodes if n.op == 'placeholder']
    index = plan_index(plan)
    require(index['task_order'] == [n.name for n in nodes if n.op == 'call_function'],
            'diagnostic graph/plan order mismatch')
    require(len(inputs) == len(values) and set(calls) == set(selected),
            'diagnostic input/kernel coverage mismatch')
    tuple_names = tuple_layouts(module)
    env = {n.name: t for n, t in zip(inputs, values)}
    counts = Counter(n.name for node in nodes for n in node.all_input_nodes)
    catalog = SnapshotCatalog()
    catalog.encode(storage_snapshot(env, index, tuple_names))
    rows = []
    for graph_position, node in enumerate(nodes):
        if node.op == 'call_function':
            memory.synchronize()
            before = memory.memory_allocated()
            before_groups = storage_snapshot(env, index, tuple_names)
            before_live = catalog.encode(before_groups)
            memory.reset_peak_memory_stats()
            # EXACT validated Mul helper; never use graph.execute_node (GELU).
            _execute(node, env, counts, calls, selected, inplace, None)
            memory.synchronize()
            after = memory.memory_allocated()
            peak = memory.max_memory_allocated()
            require(all(type(v) is int and v >= 0 for v in (before, after, peak))
                    and peak >= max(before, after), 'invalid diagnostic counters')
            after_groups = storage_snapshot(env, index, tuple_names)
            after_live = catalog.encode(after_groups)
            binding = selected_binding(node.name, node.args[selected[node.name]['destination_arg']].name,
                                       before_groups, after_groups, inplace) if node.name in calls else None
            rows.append({
                'node': node.name, 'graph_position': graph_position, 'operation': str(node.target),
                'flagtree_selected': node.name in calls,
                'destination_arg': selected[node.name]['destination_arg'] if node.name in calls else None,
                'selected_binding': binding,
                'executor_refs_removed': [n.name for n in node.all_input_nodes if n.name not in env],
                'before_allocated_bytes': before, 'after_allocated_bytes': after,
                'node_peak_allocated_bytes': peak,
                'within_node_excess_over_endpoints_bytes': max(0, peak - max(before, after)),
                'allocated_minus_observed_live_before_bytes': before - before_live['observed_live_storage_bytes'],
                'allocated_minus_observed_live_after_bytes': after - after_live['observed_live_storage_bytes'],
                'live_before': before_live, 'live_after': after_live,
            })
        elif node.op == 'output':
            require(bool(rows), 'empty diagnostic graph')
            return {
                'batch_index': batch_index, 'output_sha256': _output_digest(node, env),
                'nodes': rows, 'logical_plan_index': index, 'static_live_refs': catalog.base_refs,
                'storage_catalog': catalog.records,
                'diagnostic_peak_allocated_bytes': max(r['node_peak_allocated_bytes'] for r in rows),
                'boundary': 'per-node synchronization changes allocation overlap; not normal latency/peak gain; '
                            'endpoint snapshots do not identify every transient; residuals are unassigned; '
                            'catalog hashes are metadata identities, not cross-event allocation identities',
            }
        elif node.op != 'placeholder':
            raise ValueError('unsupported diagnostic graph node ' + node.op)
    raise ValueError('missing graph output')
