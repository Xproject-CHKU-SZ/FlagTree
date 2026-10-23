"""Existing local models only; preserve baselines, run a matched FlagTree comparison."""
from __future__ import annotations
import argparse
import importlib.util
import json
import os
from pathlib import Path
import sys
import time
from suite_contracts import (ARMS, HERE, PROTOCOL, SHARED, choose_card, fingerprint,
    manifest, read_cards, require, require_idle, resolve_resource, save, sha,
    summarize, verify_baselines)

_spec = importlib.util.spec_from_file_location('f08_existing_guarded_launcher', SHARED/'run_models.py')
_launcher = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(_launcher)
run_child = _launcher.run_child  # same bounded process-group cleanup and idle preflight


def main():
    p = argparse.ArgumentParser(description=__doc__, allow_abbrev=False)
    p.add_argument('--output-dir', type=Path, required=True)
    p.add_argument('--catalog', type=Path, default=HERE/'catalog.json')
    p.add_argument('--bridge-dir', type=Path, default=HERE.parent/'f08_flagtree_eval')
    p.add_argument('--legality', type=Path, default=HERE.parents[2]/'python/flagtree/memory_planner/inplace_legality.py')
    p.add_argument('--texts-config', type=Path, default=HERE.parent/'f08_flagtree_eval/models.json')
    p.add_argument('--hub', type=Path, default=Path('/data/ppu-benchmark/models/hub'))
    p.add_argument('--venvs', type=Path, default=Path('/data/ppu-benchmark/venvs'))
    p.add_argument('--models', nargs='+', help='Exact IDs, among catalog execution candidates only')
    p.add_argument('--physical-card', default='auto')
    p.add_argument('--exclude-cards', nargs='*', type=int, default=[])
    p.add_argument('--idle-mib-max', type=int, default=18)
    p.add_argument('--batch-size', type=int, choices=(32,64), default=32)
    p.add_argument('--seq-len', type=int, choices=(24,128), default=24)
    p.add_argument('--worker-timeout', type=int, default=900)
    p.add_argument('--longrun', action='store_true', help='After matched A/B, 1000 rounds each out/inplace, per model')
    p.add_argument('--dry-run', action='store_true')
    a = p.parse_args()
    require(0 <= a.idle_mib_max <= 18 and a.worker_timeout > 0, 'invalid threshold/timeout')
    root = a.output_dir.resolve(); root.mkdir(parents=True, exist_ok=False)
    card, baselines, rows = None, [], []
    try:
        catalog = json.loads(a.catalog.read_text())
        texts = json.loads(a.texts_config.read_text())
        require(len(texts['performance_texts']) == 64 and
                all(isinstance(t,str) and t for t in texts['performance_texts']), 'need exactly 64 nonempty texts')
        sources = {n.name: sha(n) for n in HERE.iterdir() if n.suffix in ('.py','.json')}
        candidates = catalog['execution_candidates']
        ids = a.models or [m['model_id'] for m in candidates if m['default_run']]
        require(len(ids) == len(set(ids)) and bool(ids), 'empty or duplicate model selection')
        by_id = {m['model_id']: m for m in candidates}
        require(all(name in by_id for name in ids), 'model lacks a reviewed adapter/candidate in catalog')
        save(root/'configuration.json', {'catalog': catalog, 'catalog_sha256': sha(a.catalog),
            'models': ids, 'sources': sources, 'protocol': PROTOCOL,
            'batch_size': a.batch_size, 'seq_len': a.seq_len, 'longrun': a.longrun,
            'baseline_policy': 'new directory, exclusive creation; no old result overwritten or cross-protocol delta',
            'device_policy': 'auto idle permitted PPU, exclusions honored, one card for entire suite'})
        for index, name in enumerate(ids):
            directory = root/f'model-{index+1:02d}'; directory.mkdir()
            if a.dry_run:
                rows.append({'model_id': name, 'status': 'planned_not_executed',
                             'workbook': by_id[name]['workbook']})
                continue
            try:
                model = resolve_resource(by_id[name], a.hub, a.venvs)
            except (ValueError, OSError, json.JSONDecodeError) as error:
                row = {'model_id': name, 'status': 'resource_blocked_not_run', 'reason': str(error)}
                save(directory/'resource-blocked.json', row); rows.append(row)
                continue
            if card is None:
                raw, cards = read_cards()
                card = choose_card(cards, a.physical_card, a.exclude_cards, a.idle_mib_max)
                save(root/'selection.json', {'raw': raw, 'cards': cards, 'chosen': card,
                     'excluded_cards': a.exclude_cards, 'idle_mib_max': a.idle_mib_max,
                     'fixed_entire_suite': True, 'time': time.time()})
            case = {**model, 'texts': texts['performance_texts'], 'input_note': texts['input_note'],
                    'batch_size': a.batch_size, 'seq_len': a.seq_len}
            save(directory/'case.json', case)
            def command(mode, out, rep=0, longrun=False):
                cmd = [model['python'], '-B', str(HERE/'worker.py'), '--case', str(directory/'case.json'),
                    '--output-dir', str(out), '--bridge-dir', str(a.bridge_dir.resolve()),
                    '--legality', str(a.legality.resolve()), '--physical-card', str(card),
                    '--idle-mib-max', str(a.idle_mib_max), '--mode', mode, '--rep', str(rep)]
                if mode != 'gate':
                    cmd += ['--gate', str(directory/'gate/result.json')]
                if longrun:
                    cmd += ['--longrun-rounds', '1000']
                return cmd
            gate_dir = directory/'gate'
            gate = run_child(command('gate', gate_dir), gate_dir, card, a.idle_mib_max, a.worker_timeout)
            if gate['status'] == 'not_applicable':
                rows.append({'model_id': name, 'status': 'not_applicable', 'reason': gate['reason']})
                continue
            require(gate['status'] == 'passed', 'FlagTree gate did not pass')
            raw_results = []
            for rep in range(1,4):
                shift = (rep-1) % len(ARMS)
                for arm in ARMS[shift:]+ARMS[:shift]:
                    out = directory/f'rep-{rep}-{arm}'
                    result = run_child(command(arm, out, rep), out, card, a.idle_mib_max, a.worker_timeout)
                    raw_results.append(result)
                    if arm in ('torch', 'flagtree-out'):
                        # Never rewrite these files. Seal every baseline before later stages.
                        for path in sorted(f for f in out.rglob('*') if f.is_file()):
                            baselines.append({'path': str(path.relative_to(root)), 'sha256': sha(path)})
            summary = summarize(raw_results)
            save(directory/'summary.json', summary)
            longruns = {}
            if a.longrun:
                for arm in ('flagtree-out','flagtree-inplace'):
                    out = directory/('longrun-'+arm)
                    result = run_child(command(arm, out, 1, True), out, card, a.idle_mib_max,
                                       max(a.worker_timeout, 1800))
                    longruns[arm] = {'rounds': result['longrun_rounds'],
                        'allocated_end_minus_warm_bytes': result['allocated_end_minus_warm_bytes'],
                        'checkpoint_allocated_span_bytes': max(x['allocated_bytes'] for x in result['growth_checkpoints']) -
                                                          min(x['allocated_bytes'] for x in result['growth_checkpoints']),
                        'boundary': 'bounded observations only; not universal leak-free proof'}
            rows.append({'model_id': name, 'status': 'completed', 'selected_nodes': len(gate['selected']),
                         'summary': summary, 'longrun': longruns})
            require(sources == {n.name: sha(n) for n in HERE.iterdir() if n.suffix in ('.py','.json')},
                    'suite source/catalog changed during execution')
        save(root/'baseline-index.json', baselines)
        verify_baselines(root)
        save(root/'suite-summary.json', {'models': rows, 'dry_run': a.dry_run, 'physical_card': card,
             'baselines_unchanged': True, 'full_model_flagtree': False,
             'task_accuracy': 'not measured by this forward suite; STS/A100 require their matched dataset baseline'})
        lines = ['# FlagTree 多模型优化前后对比', '',
                 '优化前=FlagTree-out，优化后=同一 kernel 的合法 inplace；torch 是额外原生参考。',
                 '固定64句、warmup5、measured30、每臂3独立进程；无逐节点全局屏障。',
                 '只优化 exact fp32 GELU；不是全模型 FlagTree。旧 G2 屏障数据仅存档，不参与增益计算。', '',
                 '| 模型 | 状态 | allocated减少 MiB | reserved减少 MiB | inplace/out p50 | inplace/torch p50 |',
                 '|---|---|---:|---:|---:|---:|']
        for r in rows:
            if r['status'] != 'completed':
                lines.append(f"| {r['model_id']} | {r['status']}: {r.get('reason','未执行')} | 未测 | 未测 | 未测 | 未测 |")
                continue
            e = r['summary']['optimization']
            lines.append(f"| {r['model_id']} | 完成短程对照 | {e['allocated_reduction_bytes']/1048576:.3f} | "
                         f"{e['reserved_reduction_bytes']/1048576:.3f} | {e['p50_ratio']:.4f} | {e['p50_vs_torch_ratio']:.4f} |")
        lines += ['', '正的内存减少量才表示降低峰值；延迟比小于1表示更快。短程差异不自动视为稳定加速。',
                  '数值门禁为同输入逐位0/0；任务指标、A100精度对齐未在本脚本重测。原始结果与基线索引完整保留。']
        with (root/'RESULTS.md').open('x') as stream:
            stream.write('\n'.join(lines)+'\n')
        if card is not None:
            raw, cards = read_cards(); require_idle(cards, card, a.idle_mib_max)
            save(root/'final-occupancy.json', {'raw': raw, 'cards': cards, 'selected': card})
        return 0
    except Exception as error:
        save(root/'failure.json', {'error': str(error), 'partial_results_not_used_for_summary': True})
        print('STOP:', error, file=sys.stderr)
        return 2
    finally:
        if not (root/'baseline-index.json').exists():
            save(root/'baseline-index.json', baselines)
        if card is not None:
            try:
                raw, cards = read_cards()
                save(root/'exit-occupancy.json', {'raw': raw, 'cards': cards, 'selected': card,
                     'idle': not cards[card]['pids'] and cards[card]['utilization_percent'] == 0
                             and cards[card]['used_mib'] <= a.idle_mib_max})
            except Exception as error:
                save(root/'exit-error.json', {'error': str(error), 'release_not_proven': True})
        manifest(root)


if __name__ == '__main__':
    raise SystemExit(main())
