"""One Qwen gate then balanced 3+3 A/B, automatically fixed on one permitted PPU."""
import argparse
import json
import os
from pathlib import Path
import time
import traceback
from rotary_contracts import ARMS, PROTOCOL, fingerprint, require, save, sha, summarize
from bootstrap import HERE, helpers, source_identity, verify_dependencies, verify_manifest


def load_prior(bundle):
    helpers()
    from audit_rotary import verify_bundle
    identity = verify_bundle(bundle)
    pins = json.loads((HERE/'ROTARY-PINS.json').read_text())
    require(identity['manifest_sha256']==pins['prior_bundle_manifest_sha256'],'prior bundle changed')
    case = json.loads((bundle/'raw/case.json').read_text())
    require(fingerprint(case)==pins['case_sha256'] and case['revision']==pins['revision']
            and case['model_id']==pins['model_id'] and len(case['texts'])==64
            and case['batch_size']==32 and case['seq_len']==24,'fixed workload changed')
    return case,identity


def main():
    p=argparse.ArgumentParser(description=__doc__,allow_abbrev=False)
    p.add_argument('--prior-bundle',type=Path,required=True);p.add_argument('--output-dir',type=Path,required=True)
    p.add_argument('--physical-card',default='auto');p.add_argument('--exclude-cards',type=int,nargs='*',default=[])
    p.add_argument('--allowed-cards',type=int,nargs='+')
    p.add_argument('--confirm-allocation',action='store_true')
    p.add_argument('--idle-mib-max',type=int,default=18);p.add_argument('--worker-timeout',type=int,default=900)
    p.add_argument('--dry-run',action='store_true');p.add_argument('--gate-only',action='store_true')
    args=p.parse_args()
    require(0<=args.idle_mib_max<=18 and args.worker_timeout>0,'invalid safety threshold/timeout')
    require(args.dry_run or args.confirm_allocation,'confirm permission/reservations before selecting an idle PPU')
    root=args.output_dir.resolve();root.mkdir(parents=True,exist_ok=False)
    card=None;baselines=[]
    try:
        count=verify_manifest(HERE)
        case,prior=load_prior(args.prior_bundle.resolve())
        initial=source_identity()
        save(root/'case.json',case)
        save(root/'configuration.json',{'protocol':PROTOCOL,'source_identity':initial,
            'prior_bundle':str(args.prior_bundle.resolve()),'prior_identity':prior,'own_manifest_count':count,
            'allowed_cards':args.allowed_cards,'exclude_cards':args.exclude_cards,
            'allocation_confirmed_by_operator':args.confirm_allocation,'dry_run':args.dry_run,
            'steps':['gate','rep-1-baseline','rep-1-rotary','rep-2-rotary','rep-2-baseline',
                     'rep-3-baseline','rep-3-rotary'],'diary_update':False})
        if args.dry_run:
            save(root/'dry-run.json',{'status':'planned_not_executed','ppu_used':False,
                                     'shared_dependency_checks_deferred':True})
            return 0
        support=helpers();dependencies=verify_dependencies()
        require(Path(case['snapshot']).is_dir() and os.access(case['python'],os.X_OK),'missing existing model/venv')
        raw,cards=support.read_cards()
        excluded=set(args.exclude_cards)
        if args.allowed_cards is not None:
            require(args.allowed_cards and all(c>=0 for c in args.allowed_cards),'invalid permitted-card list')
            excluded.update(set(cards)-set(args.allowed_cards))
        card=support.choose_card(cards,args.physical_card,excluded,args.idle_mib_max)
        save(root/'selection.json',{'raw':raw,'cards':cards,'selected':card,'excluded_cards':sorted(excluded),
            'fixed_for_entire_group':True,'time':time.time(),
            'permission_boundary':'operator confirms permitted resources/reservations; idle alone is not permission'})
        save(root/'dependency-identity.json',dependencies)
        launcher=support.load_file('qwen_rotary_existing_guarded_launcher',support.SHARED/'run_models.py')

        def launch(name,mode,rep=0):
            output=root/name
            cmd=[case['python'],'-B',str(HERE/'rotary_worker.py'),'--case',str(root/'case.json'),
                 '--output-dir',str(output),'--mode',mode,'--rep',str(rep),
                 '--physical-card',str(card),'--idle-mib-max',str(args.idle_mib_max)]
            if mode!='gate':cmd+=['--gate',str(root/'gate/result.json')]
            result=launcher.run_child(cmd,output,card,args.idle_mib_max,args.worker_timeout)
            require(source_identity()==initial and verify_dependencies()==dependencies,'sources changed while running')
            require(result['status']=='passed','worker failed; no incomplete summary')
            return output,result

        _,gate=launch('gate','gate')
        if args.gate_only:
            save(root/'complete.json',{'status':'gate_only_not_performance','physical_card':card})
            return 0
        rows=[]
        for rep in (1,2,3):
            for arm in (ARMS if rep%2 else ARMS[::-1]):
                out,result=launch(f'rep-{rep}-{arm}',arm,rep);rows.append(result)
                require(result['identity_sha256']==gate['identity_sha256'],'worker identity changed after gate')
                if arm==ARMS[0]:
                    baselines.extend({'path':str(f.relative_to(root)),'sha256':sha(f)}
                                     for f in sorted(out.rglob('*')) if f.is_file())
        summary=summarize(rows)
        require(all(sha(root/r['path'])==r['sha256'] for r in baselines),'new baseline evidence changed')
        save(root/'baseline-index.json',baselines)
        save(root/'summary.json',summary)
        lines=['# Qwen rotary indexed Mul 实测对比','',
            '两臂均保留既有28个MLP Mul同址优化；只比较新增28个Q-rotary路径。',
            '固定64句/B32/S24/FP32/cache-off；各3进程、warmup5/measured30；不删离群值。','',
            '| 路径 | p50 ms | p95 ms | 句/s | 总峰值 allocated B | reserved B |',
            '|---|---:|---:|---:|---:|---:|']
        for arm in ARMS:
            r=summary['arms'][arm]
            lines.append(f"| {arm} | {r['p50_ms']:.4f} | {r['p95_ms']:.4f} | {r['sentences_per_s']:.1f} | "
                         f"{r['peak_allocated_bytes']} | {r['peak_reserved_bytes']} |")
        e=summary['rotary_effect']
        lines+=['',f"allocated减少：{e['allocated_reduction_bytes']} B（负值表示回退）；"
                f"reserved减少：{e['reserved_reduction_bytes']} B；p50候选/基线：{e['p50_ratio_candidate_over_baseline']:.4f}。",
                '这是固定形状短程受控结果，不是长稳/任务精度/完整F08验收；不累加旧MLP局部9MiB或静态3MiB。']
        (root/'RESULTS.md').write_text('\n'.join(lines)+'\n')
        raw,cards=support.read_cards();support.require_idle(cards,card,args.idle_mib_max)
        save(root/'final-occupancy.json',{'raw':raw,'cards':cards,'selected':card})
        save(root/'complete.json',{'status':'short_ab_complete_not_full_acceptance','physical_card':card})
        return 0
    except Exception as error:
        save(root/'failure.json',{'error':str(error),'traceback':traceback.format_exc(),
                                 'partial_experiment_not_summarized':True,'physical_card':card})
        return 2
    finally:
        if card is not None:
            try:
                support=helpers();raw,cards=support.read_cards()
                state=cards[card]
                save(root/'exit-occupancy.json',{'raw':raw,'cards':cards,'selected':card,
                    'idle':not state['pids'] and state['utilization_percent']==0 and state['used_mib']<=args.idle_mib_max})
            except Exception as error:
                save(root/'exit-error.json',{'error':str(error),'release_not_proven':True})
        if not (root/'baseline-index.json').exists():save(root/'baseline-index.json',baselines)
        paths=sorted(p for p in root.rglob('*') if p.is_file() and p.name!='MANIFEST.sha256')
        with (root/'MANIFEST.sha256').open('x') as f:
            f.write(''.join(f'{sha(p)}  {p.relative_to(root)}\n' for p in paths))


if __name__=='__main__':raise SystemExit(main())
