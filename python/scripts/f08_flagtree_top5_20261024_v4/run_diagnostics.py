"""Bounded Qwen v4: fresh gate, two normal controls, four diagnostic processes."""
import argparse
import json
import time
from pathlib import Path

from support import (COMPARE, HERE, SHARED, choose_card, fingerprint, load_file, manifest,
                     read_cards, require, require_idle, resolve_resource, save, sha,
                     source_identity, verify_baselines)
from run_top5 import verify_dependencies
from summarize_peak import markdown, summarize


MODEL = 'Qwen/Qwen3-Embedding-0.6B'
PRIOR_BASELINE = HERE / 'PRIOR-BASELINE.json'


def load_prior(root):
    """Read/hash the existing v3 baseline; never mix its samples into this run."""
    require(root.is_dir() and (root / 'MANIFEST.sha256').is_file(), 'missing existing v3 evidence root')
    pins = json.loads(PRIOR_BASELINE.read_text())
    require(sha(root / 'MANIFEST.sha256') == pins['manifest_sha256'], 'prior frozen manifest identity changed')
    entries = []
    for line in (root / 'MANIFEST.sha256').read_text().splitlines():
        expected, relative = line.split('  ', 1)
        path = (root / relative).resolve()
        require(path.is_relative_to(root.resolve()) and path.is_file() and sha(path) == expected,
                'prior evidence manifest mismatch: ' + relative)
        entries.append({'path': relative, 'sha256': expected})
    require(bool(entries), 'empty prior manifest')
    case_paths = list(root.glob('server-evidence/raw/model-*/case.json'))
    require(len(case_paths) == 1, 'prior Qwen case missing/ambiguous')
    case = json.loads(case_paths[0].read_text())
    require(sha(case_paths[0]) == pins['case_sha256'], 'prior frozen case identity changed')
    require(case['model_id'] == MODEL and case['batch_size'] == 32 and case['seq_len'] == 24
            and len(case['texts']) == 64, 'prior baseline workload mismatch')
    return case, entries


def main():
    parser = argparse.ArgumentParser(description=__doc__, allow_abbrev=False)
    parser.add_argument('--output-dir', type=Path, required=True)
    parser.add_argument('--prior-bundle', type=Path, required=True)
    parser.add_argument('--physical-card', default='auto')
    parser.add_argument('--exclude-cards', type=int, nargs='*', default=[])
    parser.add_argument('--idle-mib-max', type=int, default=18)
    parser.add_argument('--worker-timeout', type=int, default=900)
    parser.add_argument('--hub', type=Path, default=Path('/data/ppu-benchmark/models/hub'))
    parser.add_argument('--venvs', type=Path, default=Path('/data/ppu-benchmark/venvs'))
    parser.add_argument('--bridge-dir', type=Path, default=HERE.parent / 'f08_flagtree_eval')
    parser.add_argument('--legality', type=Path,
                        default=HERE.parents[2] / 'python/flagtree/memory_planner/inplace_legality.py')
    parser.add_argument('--dry-run', action='store_true')
    args = parser.parse_args()
    require(0 <= args.idle_mib_max <= 18 and args.worker_timeout > 0, 'invalid safety limit')
    root = args.output_dir.resolve()
    root.mkdir(parents=True, exist_ok=False)
    card, baseline_index, launched = None, [], []
    try:
        prior_case, prior_index = load_prior(args.prior_bundle.resolve())
        catalog = json.loads((COMPARE / 'catalog.json').read_text())
        models = [m for m in catalog['execution_candidates'] if m['model_id'] == MODEL]
        require(len(models) == 1, 'Qwen catalog entry missing/ambiguous')
        # Pin to the exact v3 model revision, never mutable refs/main on this run.
        entry = {**models[0], 'revision': prior_case['revision']}
        config = {'model_id': MODEL, 'revision': prior_case['revision'], 'batch_size': 32, 'seq_len': 24,
                  'sentences': 64, 'normal_controls_per_arm': 1, 'diagnostic_repetitions_per_arm': 2,
                  'prior_bundle': str(args.prior_bundle.resolve()),
                  'prior_manifest_sha256': sha(args.prior_bundle / 'MANIFEST.sha256'),
                  'dry_run': args.dry_run, 'dependencies': None,
                  'no_BGE_no_new_kernel_no_diary': True}
        initial = source_identity()
        config['source_identity'] = initial
        save(root / 'configuration.json', config)
        save(root / 'prior-baseline-index.json', prior_index)
        if args.dry_run:
            save(root / 'planned-steps.json', ['gate', 'normal-out', 'normal-inplace',
                                             'diag-1-out', 'diag-1-inplace',
                                             'diag-2-inplace', 'diag-2-out'])
            save(root / 'dry-run.json', {'status': 'planned_not_executed', 'ppu_used': False,
                                        'dependency_checks_deferred': True})
            return 0
        config['dependencies'] = verify_dependencies(HERE.parents[2])
        # configuration is an immutable initial record; write resolved details separately.
        model = resolve_resource(entry, args.hub, args.venvs)
        case = {**model, 'texts': prior_case['texts'], 'input_note': prior_case['input_note'],
                'batch_size': 32, 'seq_len': 24, 'adapter': 'qwen-full-forward-fp32-cache-off'}
        for key in ('model_id', 'revision', 'texts', 'batch_size', 'seq_len'):
            require(case[key] == prior_case[key], 'prior case drift: ' + key)
        save(root / 'resolved-resources.json', {'case': case, 'dependencies': config['dependencies']})
        save(root / 'case.json', case)
        raw, cards = read_cards()
        card = choose_card(cards, args.physical_card, args.exclude_cards, args.idle_mib_max)
        save(root / 'selection.json', {'raw': raw, 'cards': cards, 'selected': card,
                                      'exclude_cards': args.exclude_cards, 'fixed_for_group': True,
                                      'time': time.time()})
        launcher = load_file('qwen_v4_guarded_launcher', SHARED / 'run_models.py')

        def launch(name, mode, rep=0):
            output = root / name
            cmd = [model['python'], '-B', str(HERE / 'worker.py'), '--case', str(root / 'case.json'),
                   '--output-dir', str(output), '--bridge-dir', str(args.bridge_dir.resolve()),
                   '--legality', str(args.legality.resolve()), '--physical-card', str(card),
                   '--idle-mib-max', str(args.idle_mib_max), '--mode', mode, '--rep', str(rep)]
            if mode != 'gate':
                cmd += ['--gate', str(root / 'gate/result.json')]
            result = launcher.run_child(cmd, output, card, args.idle_mib_max, args.worker_timeout)
            launched.append(name)
            require(source_identity() == initial, 'v4 source changed during execution')
            require(result['status'] == 'passed', 'worker not passed')
            return output, result

        _, gate = launch('gate', 'gate')
        pins = json.loads(PRIOR_BASELINE.read_text())
        for key in ('graph_sha256', 'input_sha256', 'compiler_set_sha256'):
            require(gate[key] == pins[key], 'fresh gate differs from validated v3: ' + key)
        require(len(gate['selected']) == pins['selected_nodes'], 'fresh gate selected node count drift')
        normal = []
        for arm in ('flagtree-out', 'flagtree-inplace'):
            directory, result = launch('normal-' + arm, arm, 1)
            require(result['top5_identity_sha256'] == gate['top5_identity_sha256'], 'normal identity drift')
            normal.append(result)
            baseline_index.extend({'path': str(p.relative_to(root)), 'sha256': sha(p)}
                                  for p in sorted(directory.rglob('*')) if p.is_file())
        save(root / 'baseline-index.json', baseline_index)
        verify_baselines(root)
        diagnostics = []
        for rep, modes in ((1, ('diagnose-out', 'diagnose-inplace')),
                           (2, ('diagnose-inplace', 'diagnose-out'))):
            for mode in modes:
                directory, result = launch(f'diag-{rep}-{mode}', mode, rep)
                path = directory / result['diagnostic_file']
                require(path.parent.resolve() == directory.resolve() and sha(path) == result['diagnostic_sha256'],
                        'diagnostic payload identity mismatch')
                diagnostics.append({**result, **json.loads(path.read_text())})
        report = summarize(normal, diagnostics)
        verify_baselines(root)
        _, final_prior = load_prior(args.prior_bundle.resolve())
        require(final_prior == prior_index and sha(args.prior_bundle / 'MANIFEST.sha256')
                == config['prior_manifest_sha256'], 'old v3 evidence changed')
        raw, cards = read_cards()
        require_idle(cards, card, args.idle_mib_max)
        require(source_identity() == initial, 'v4 final source drift')
        save(root / 'final-occupancy.json', {'raw': raw, 'cards': cards, 'selected': card})
        save(root / 'peak-summary.json', report)
        with (root / 'PEAK-DIAGNOSIS.md').open('x') as stream:
            stream.write(markdown(report))
        save(root / 'complete.json', {'status': 'diagnosis_complete', 'launched': launched,
                                    'no_new_optimization_or_acceptance': True})
        return 0
    except Exception as error:
        save(root / 'failure.json', {'error': str(error), 'completed_workers': launched,
                                    'no_incomplete_summary_authorized': True})
        raise
    finally:
        if not (root / 'baseline-index.json').exists():
            save(root / 'baseline-index.json', baseline_index)
        if card is not None:
            try:
                raw, cards = read_cards()
                idle = not cards[card]['pids'] and cards[card]['utilization_percent'] == 0 \
                    and cards[card]['used_mib'] <= args.idle_mib_max
                save(root / 'exit-occupancy.json', {'raw': raw, 'cards': cards, 'selected': card,
                                                  'selected_card_idle': idle})
            except Exception as error:
                save(root / 'exit-error.json', {'error': str(error), 'release_not_proven': True})
        manifest(root)


if __name__ == '__main__':
    raise SystemExit(main())
