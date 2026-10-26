"""Matched diagnostic comparison; does not claim memory or performance gain."""
from support import fingerprint, require


IDENTITY_KEYS = ('case_sha256', 'graph_sha256', 'gate_sha256', 'identity_sha256',
                 'compiler_set_sha256', 'physical_card', 'output_sha256', 'protocol_sha256',
                 'top5_identity_sha256', 'model_plan_sha256')


def snapshot_groups(batch, row, side):
    snapshot = row['live_' + side]
    refs = [r for r in batch['static_live_refs'] if r not in snapshot['replaced_static_refs']]
    refs += snapshot['dynamic_storage_refs']
    return [batch['storage_catalog'][ref] for ref in refs]


def summarize(normal_records, diagnostics):
    require(len(normal_records) == 2 and {r['arm'] for r in normal_records}
            == {'flagtree-out', 'flagtree-inplace'}, 'need two normal control arms')
    require(len(diagnostics) == 4 and {(r['mode'], r['rep']) for r in diagnostics}
            == {(m, rep) for m in ('diagnose-out', 'diagnose-inplace') for rep in (1, 2)},
            'need four independent diagnostic workers')
    records = normal_records + diagnostics
    require(all(r['status'] == 'passed' for r in records), 'incomplete diagnostic experiment')
    for key in IDENTITY_KEYS:
        require(len({r[key] for r in records}) == 1, 'unmatched diagnostic identity: ' + key)
    require(all(len(r['samples_s']) == 30 and r['protocol']['sentences'] == 64
                and r['protocol']['warmup'] == 5 and r['protocol']['measured'] == 30
                and r['protocol']['per_selected_node_global_barrier'] is False
                and fingerprint(r['protocol']) == r['protocol_sha256'] for r in normal_records),
            'invalid normal control protocol')
    require(all(r.get('diagnostic_protocol') == {'batches': 2, 'per_node_synchronize': True,
                                               'timing_claim': False} for r in diagnostics),
            'invalid diagnostic protocol')
    require(all(len(r['batches']) == 2 and [b['batch_index'] for b in r['batches']] == [0, 1]
                and fingerprint([b['output_sha256'] for b in r['batches']]) == r['output_sha256']
                for r in diagnostics), 'missing/mismatched batch diagnostics')
    by_pair = {(r['mode'], r['rep']): r for r in diagnostics}
    paired = []
    for rep in (1, 2):
        left, right = [by_pair[(m, rep)] for m in ('diagnose-out', 'diagnose-inplace')]
        for a, b in zip(left['batches'], right['batches']):
            require([n['node'] for n in a['nodes']] == [n['node'] for n in b['nodes']],
                    'diagnostic node order mismatch')
            require(a['logical_plan_index'] == b['logical_plan_index'], 'logical provenance mismatch')
            for x, y in zip(a['nodes'], b['nodes']):
                require(x['operation'] == y['operation'] and x['flagtree_selected'] == y['flagtree_selected'],
                        'diagnostic operation/selection mismatch')
            peak_a = max(n['node_peak_allocated_bytes'] for n in a['nodes'])
            peak_b = max(n['node_peak_allocated_bytes'] for n in b['nodes'])
            # All tied peaks retained; a top-eight display must not hide equal peaks.
            peaks_a = [n['node'] for n in a['nodes'] if n['node_peak_allocated_bytes'] == peak_a]
            peaks_b = [n['node'] for n in b['nodes'] if n['node_peak_allocated_bytes'] == peak_b]
            muls = [{'node': x['node'], 'out_node_peak_bytes': x['node_peak_allocated_bytes'],
                     'inplace_node_peak_bytes': y['node_peak_allocated_bytes'],
                     'out_endpoint_excess_bytes': x['within_node_excess_over_endpoints_bytes'],
                     'inplace_endpoint_excess_bytes': y['within_node_excess_over_endpoints_bytes']}
                    for x, y in zip(a['nodes'], b['nodes']) if x['flagtree_selected']]
            windows = []
            for label, batch in (('out', a), ('inplace', b)):
                top_positions = {i for i, n in enumerate(batch['nodes'])
                                 if n['node_peak_allocated_bytes'] == batch['diagnostic_peak_allocated_bytes']}
                # Keep ALL tied node names above; bound detailed windows to first 3
                # and last tied peak. Full snapshots remain reconstructible in raw.
                selected_positions = sorted(set(sorted(top_positions)[:3] + sorted(top_positions)[-1:]))
                positions = sorted({j for i in selected_positions for j in range(max(0, i-1),
                                                                           min(len(batch['nodes']), i+2))})
                for pos in positions:
                    row = batch['nodes'][pos]
                    largest = {}
                    for side in ('before', 'after'):
                        groups = snapshot_groups(batch, row, side)
                        nonpersistent = [g for g in groups if not any(
                            batch['logical_plan_index']['tensors'][m['source_value']]['is_persistent']
                            for m in g['members'])]
                        largest[side] = sorted(nonpersistent, key=lambda g: -g['storage_nbytes'])[:8]
                    windows.append({'arm': label, 'node': row['node'], 'operation': row['operation'],
                                    'is_tied_peak': pos in top_positions,
                                    'before_allocated_bytes': row['before_allocated_bytes'],
                                    'after_allocated_bytes': row['after_allocated_bytes'],
                                    'largest_nonpersistent_buffers': largest,
                                    'details_policy': 'first 3 and last tied peak, plus adjacent nodes; '
                                                      'all storage records available in raw catalogs'})
            paired.append({'rep': rep, 'batch_index': a['batch_index'],
                           'out_peak_nodes': peaks_a, 'inplace_peak_nodes': peaks_b,
                           'out_diagnostic_peak_bytes': peak_a, 'inplace_diagnostic_peak_bytes': peak_b,
                           'selected_mul_comparison': muls, 'peak_windows': windows,
                           'selected_mul_nodes_with_lower_diagnostic_peak': sum(
                               m['inplace_node_peak_bytes'] < m['out_node_peak_bytes'] for m in muls),
                           'batch_peak_equal_in_synchronous_observation': peak_a == peak_b})
    normal = {r['arm']: {'memory': r['memory'], 'post_warmup': r['post_warmup'],
                         'samples_s': r['samples_s']} for r in normal_records}
    repeat_consistency = []
    for arm in ('out', 'inplace'):
        for batch_index in (0, 1):
            values = [p for p in paired if p['batch_index'] == batch_index]
            repeat_consistency.append({'arm': arm, 'batch_index': batch_index,
                                       'peak_nodes_identical_across_two_processes':
                                           values[0][arm + '_peak_nodes'] == values[1][arm + '_peak_nodes']})
    normal_vs_sync = {}
    for mode, arm in (('diagnose-out', 'flagtree-out'), ('diagnose-inplace', 'flagtree-inplace')):
        normal_vs_sync[arm] = {
            'normal_peak_allocated_bytes': normal[arm]['memory']['peak_allocated_bytes'],
            'diagnostic_process_peaks_bytes': [max(b['diagnostic_peak_allocated_bytes'] for b in r['batches'])
                                               for r in diagnostics if r['mode'] == mode],
            'causal_attribution': 'not_established_by_peak_equality_or_difference_alone'}
    return {'status': 'diagnosis_complete_not_optimization_acceptance', 'normal_controls': normal,
            'pairs': paired,
            'repeat_consistency': repeat_consistency, 'normal_vs_synchronous_peaks': normal_vs_sync,
            'normal_allocated_reduction_bytes': normal['flagtree-out']['memory']['peak_allocated_bytes']
                                                - normal['flagtree-inplace']['memory']['peak_allocated_bytes'],
            'boundary': 'one normal process per arm is a contemporaneous control, not stable performance evidence; '
                        'synchronous diagnostic peaks may differ from normal peaks; no automatic workspace attribution',
            'next_action': 'review peak ownership and actual FlagTree candidate feasibility; no automatic optimization'}


def markdown(summary):
    lines = ['# Qwen 峰值诊断', '', '仅诊断，不宣称新优化、稳定加速或收益验收。', '',
             '| 正常执行对照 | 总峰值 allocated B | 总峰值 reserved B |', '|---|---:|---:|']
    for arm, record in summary['normal_controls'].items():
        m = record['memory']
        lines.append(f"| {arm} | {m['peak_allocated_bytes']} | {m['peak_reserved_bytes']} |")
    lines += ['', '正常执行每臂仅一个独立进程；逐节点同步数据不替代此表。', '',
              '| 诊断重复 / batch | out 峰值节点 | inplace 峰值节点 | Mul节点峰值更低的数量 |', '|---|---|---|---:|']
    for pair in summary['pairs']:
        lines.append(f"| {pair['rep']} / {pair['batch_index']} | {', '.join(pair['out_peak_nodes'])} | "
                     f"{', '.join(pair['inplace_peak_nodes'])} | "
                     f"{pair['selected_mul_nodes_with_lower_diagnostic_peak']} |")
    lines += ['', '详细存活缓冲、来源和最后消费者见 peak-summary.json 与 diagnostic.json。',
              '节点内部峰值超出端点、allocated 与已枚举 storage 的差额均保持未归因。',
              '只有峰值位置可重复、来源可追溯且存在可执行的 FlagTree 路径，才提出下一轮候选。',
              '同步诊断不能单独证明正常路径的峰值原因；无候选则停止，不自动扩模型或上新优化。']
    return '\n'.join(lines) + '\n'
