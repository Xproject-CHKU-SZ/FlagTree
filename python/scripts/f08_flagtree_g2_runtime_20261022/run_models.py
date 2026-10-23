"""Auto-select one idle PPU; gate MiniLM then run bounded real-model comparisons."""
from __future__ import annotations
import argparse
import json
import os
from pathlib import Path
import signal
import subprocess
import sys
import time

from common import (ARMS, choose_card, read_cards, require, require_idle,
                    save, sha, summarize)

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[2]
MODEL_IDS = ('sentence-transformers/all-MiniLM-L6-v2', 'BAAI/bge-large-en-v1.5')


def run_child(command, directory, card, idle_limit, timeout):
    print(f'PPU {card}: {directory.parent.name}/{directory.name}', flush=True)
    raw, cards = read_cards()
    save(directory.parent / (directory.name + '-preflight.json'), {'raw': raw, 'cards': cards, 'time': time.time()})
    require_idle(cards, card, idle_limit)
    env = dict(os.environ, CUDA_VISIBLE_DEVICES=str(card), FLAGTREE_BACKEND='ppu',
               PYTHONDONTWRITEBYTECODE='1', PYTHONHASHSEED='0', HF_HUB_OFFLINE='1',
               TRANSFORMERS_OFFLINE='1', HF_HOME='/workspace-cache/hf-home',
               TRITON_CACHE_DIR='/workspace-cache/f08-g2-runtime-triton')
    save(directory.parent / (directory.name + '-command.json'), {'argv': command,
        'physical_card': card, 'visible_devices': env['CUDA_VISIBLE_DEVICES'], 'backend': 'ppu'})
    with (directory.parent / (directory.name + '.log')).open('x') as log:
        process = subprocess.Popen(command, env=env, stdout=log, stderr=subprocess.STDOUT, start_new_session=True)
        try:
            code = process.wait(timeout=timeout)
        except BaseException:
            try:
                os.killpg(process.pid, signal.SIGTERM)
                process.wait(timeout=10)
            except subprocess.TimeoutExpired:
                os.killpg(process.pid, signal.SIGKILL)
                process.wait()
            except ProcessLookupError:
                pass
            raise
    require(code == 0, f'worker failed ({code}); see {directory.parent / (directory.name + ".log")}')
    return json.loads((directory / 'result.json').read_text())


def main():
    parser = argparse.ArgumentParser(description=__doc__, allow_abbrev=False)
    parser.add_argument('--output-dir', type=Path, required=True)
    parser.add_argument('--bridge-dir', type=Path, default=HERE.parent / 'f08_flagtree_eval')
    parser.add_argument('--config', type=Path, default=HERE.parent / 'f08_flagtree_eval/models.json')
    parser.add_argument('--planner-dir', type=Path, default=REPO / 'python/flagtree/memory_planner')
    parser.add_argument('--legality', type=Path, default=REPO / 'python/flagtree/memory_planner/inplace_legality.py')
    parser.add_argument('--physical-card', default='auto')
    parser.add_argument('--exclude-cards', type=int, nargs='*', default=[])
    parser.add_argument('--idle-mib-max', type=int, default=18)
    parser.add_argument('--batch-size', type=int, choices=(32, 64), default=32)
    parser.add_argument('--seq-len', type=int, choices=(24, 128), default=24)
    parser.add_argument('--limit-models', type=int, choices=(1, 2), default=2)
    parser.add_argument('--repetitions', type=int, choices=(3,), default=3)
    parser.add_argument('--worker-timeout', type=int, default=600)
    parser.add_argument('--gate-only', action='store_true')
    parser.add_argument('--dry-run', action='store_true')
    args = parser.parse_args()
    require(0 <= args.idle_mib_max <= 18 and args.worker_timeout > 0, 'invalid threshold/timeout')
    config = json.loads(args.config.read_text())
    texts = config['performance_texts']
    require(len(texts) == 64 and all(isinstance(t, str) and t for t in texts), 'need exactly 64 texts')
    by_id = {m['model_id']: m for m in config['models']}
    models = [by_id[name] for name in MODEL_IDS[:args.limit_models]]
    for model in models:
        require(Path(model['snapshot']).name == model['revision']
                and Path(model['snapshot']).is_absolute() and Path(model['python']).is_absolute(), 'model identity/path mismatch')
        if not args.dry_run:
            require(Path(model['snapshot']).is_dir() and os.access(model['python'], os.X_OK),
                    'existing local model/venv missing: ' + model['model_id'])
    root = args.output_dir.resolve()
    root.mkdir(parents=True, exist_ok=False)
    source_identity = {p.name: sha(p) for p in HERE.glob('*.py')}
    save(root / 'configuration.json', {'models': models, 'batch_size': args.batch_size,
        'seq_len': args.seq_len, 'source_identity': source_identity,
        'authorization': 'user 2026-10-22: automatically select idle PPU in permitted team resources',
        'protocol': '64 texts, warmup5, measured30, 3 independent processes per arm; selected-node barriers in all arms'})
    card = None
    try:
        if not args.dry_run:
            raw, cards = read_cards()
            card = choose_card(cards, args.physical_card, args.exclude_cards, args.idle_mib_max)
            save(root / 'selection.json', {'raw': raw, 'cards': cards, 'chosen': card,
                 'excluded_cards': args.exclude_cards, 'approved_idle_limit_mib': args.idle_mib_max,
                 'fixed_for_entire_run': True, 'time': time.time()})
        rows = []
        for index, model in enumerate(models):
            directory = root / f'model-{index + 1:02d}'; directory.mkdir()
            case = {**model, 'texts': texts, 'batch_size': args.batch_size, 'seq_len': args.seq_len,
                    'input_note': config['input_note']}
            save(directory / 'case.json', case)
            if args.dry_run:
                rows.append({'model_id': model['model_id'], 'status': 'planned_only_not_executed'})
                continue
            def command(mode, output, rep=0):
                result = [model['python'], '-B', str(HERE / 'worker.py'), '--case', str(directory / 'case.json'),
                    '--output-dir', str(output), '--bridge-dir', str(args.bridge_dir.resolve()),
                    '--planner-dir', str(args.planner_dir.resolve()), '--legality', str(args.legality.resolve()),
                    '--physical-card', str(card), '--idle-mib-max', str(args.idle_mib_max), '--mode', mode,
                    '--rep', str(rep)]
                if mode != 'gate':
                    result += ['--gate', str(directory / 'gate/result.json')]
                return result
            gate_dir = directory / 'gate'
            gate = run_child(command('gate', gate_dir), gate_dir, card, args.idle_mib_max, args.worker_timeout)
            require(gate['status'] == 'passed', 'model gate did not pass')
            require(source_identity == {p.name: sha(p) for p in HERE.glob('*.py')}, 'runtime source changed during run')
            if args.gate_only:
                rows.append({'model_id': model['model_id'], 'status': 'mechanism_gate_passed',
                             'selected_nodes': len(gate['selected']), 'arena_bytes': gate['arena_bytes']})
                continue
            results = []
            for rep in range(1, args.repetitions + 1):
                shift = (rep - 1) % len(ARMS)
                for arm in ARMS[shift:] + ARMS[:shift]:
                    output = directory / f'rep-{rep}-{arm}'
                    results.append(run_child(command(arm, output, rep), output, card,
                                             args.idle_mib_max, args.worker_timeout))
            summary = summarize(results, args.repetitions)
            require(source_identity == {p.name: sha(p) for p in HERE.glob('*.py')}, 'runtime source changed during measurements')
            save(directory / 'summary.json', summary)
            rows.append({'model_id': model['model_id'], 'status': 'completed', 'physical_card': card,
                         'selected_nodes': len(gate['selected']), 'arena_bytes': gate['arena_bytes'], 'summary': summary})
        save(root / 'suite-summary.json', {'models': rows, 'dry_run': args.dry_run,
             'boundary': 'GELU-only graph-to-FlagTree G02 mechanism; no full-model/compiler-pass acceptance'})
        if not args.dry_run and not args.gate_only:
            lines = ['# F08-G02 真实模型运行结果', '',
                     f'物理 PPU：{card}。固定64句、warmup5、measured30、各臂3独立进程。',
                     '所有臂在相同 GELU 节点前使用完成屏障；延迟仅代表该机制执行器，不能与旧无屏障表直接比较。', '',
                     '仅 GELU 接入真实 FlagTree；其余节点保持原路径。G02 arena 与 G03 inplace 分列。', '']
            for row in rows:
                lines += [f"## {row['model_id']}", '',
                          f"严格0/0门禁通过；FlagTree节点 {row['selected_nodes']}；arena {row['arena_bytes']} B。", '',
                          '| 路径 | p50 ms | p95 ms | 句/s | 总峰值 allocated MiB | 总峰值 reserved MiB |',
                          '|---|---:|---:|---:|---:|---:|']
                for arm in ARMS:
                    item = row['summary'][arm]
                    lines.append(f"| {arm} | {item['p50_ms']:.4f} | {item['p95_ms']:.4f} | "
                                 f"{item['sentences_per_s']:.1f} | {item['peak_allocated_bytes']/1048576:.3f} | "
                                 f"{item['peak_reserved_bytes']/1048576:.3f} |")
                effect = row['summary']['g2_effect']
                lines += ['', f"G02 相对 FlagTree-out 的 allocated 减少：{effect['allocated_reduction_bytes']} B"
                          f"（负值表示反而增加）；p50 比值 {effect['p50_ratio']:.4f}。", '']
            lines += ['本轮完成真实绑定机制与受控比较，不自动代表 G02 收益验收或整个 F08 完成。',
                      '原始样本、编译四阶段、计划、arena-writes、进程映射保存在各模型子目录。']
            with (root / 'RESULTS.md').open('x', encoding='utf-8') as stream:
                stream.write('\n'.join(lines) + '\n')
        if not args.dry_run:
            raw, cards = read_cards(); require_idle(cards, card, args.idle_mib_max)
            save(root / 'final-occupancy.json', {'raw': raw, 'cards': cards, 'selected': card})
        return 0
    except Exception as error:
        save(root / 'failure.json', {'error': str(error), 'physical_card': card,
                                   'partial_experiment_not_summarized': True})
        print('BLOCKED:', error, file=sys.stderr)
        return 2
    finally:
        if card is not None:
            try:
                raw, cards = read_cards()
                save(root / 'exit-snapshot.json', {'raw': raw, 'cards': cards, 'selected': card,
                     'selected_card_idle': not cards[card]['pids']
                         and cards[card]['utilization_percent'] == 0
                         and cards[card]['used_mib'] <= args.idle_mib_max})
            except Exception as error:
                save(root / 'exit-snapshot-error.json', {'error': str(error), 'cleanup_not_proven': True})
        # Record file integrity without editing source or historical artifacts.
        paths = sorted(p for p in root.rglob('*') if p.is_file() and p.name != 'MANIFEST.sha256')
        with (root / 'MANIFEST.sha256').open('x') as stream:
            stream.write(''.join(f'{sha(p)}  {p.relative_to(root)}\n' for p in paths))


if __name__ == '__main__':
    raise SystemExit(main())
