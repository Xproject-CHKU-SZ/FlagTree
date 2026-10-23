"""BGE-M3 peak localization + Qwen3-Embedding real FlagTree Mul candidate."""
from __future__ import annotations
import argparse
import json
import os
from pathlib import Path
import sys
import time
from support import (ARMS,COMPARE,HERE,SHARED,choose_card,load_file,manifest,read_cards,
    require,require_idle,resolve_resource,save,select_case_models,sha,source_identity,
    summarize,verify_baselines)


def verify_dependencies(repo):
    expected=json.loads((HERE/'DEPENDENCIES.json').read_text())
    for relative,digest in expected.items():
        require(sha(repo/relative)==digest,'existing dependency changed: '+relative)
    return expected


def main():
    p=argparse.ArgumentParser(description=__doc__,allow_abbrev=False)
    p.add_argument('--output-dir',type=Path,required=True)
    p.add_argument('--stage',choices=('all','bge','qwen'),default='qwen')
    p.add_argument('--physical-card',default='auto');p.add_argument('--exclude-cards',type=int,nargs='*',default=[])
    p.add_argument('--idle-mib-max',type=int,default=18);p.add_argument('--worker-timeout',type=int,default=900)
    p.add_argument('--hub',type=Path,default=Path('/data/ppu-benchmark/models/hub'))
    p.add_argument('--venvs',type=Path,default=Path('/data/ppu-benchmark/venvs'))
    p.add_argument('--bridge-dir',type=Path,default=HERE.parent/'f08_flagtree_eval')
    p.add_argument('--legality',type=Path,default=HERE.parents[2]/'python/flagtree/memory_planner/inplace_legality.py')
    p.add_argument('--texts-config',type=Path,default=HERE.parent/'f08_flagtree_eval/models.json')
    p.add_argument('--batch-size',type=int,choices=(32,64),default=32)
    p.add_argument('--seq-len',type=int,choices=(24,128),default=24)
    p.add_argument('--gate-only',action='store_true');p.add_argument('--dry-run',action='store_true')
    a=p.parse_args()
    require(0<=a.idle_mib_max<=18 and a.worker_timeout>0,'invalid safety limit/timeout')
    root=a.output_dir.resolve();root.mkdir(parents=True,exist_ok=False)
    card,baselines,rows=None,[],[]
    try:
        dependencies=None if a.dry_run else verify_dependencies(HERE.parents[2])
        catalog=json.loads((COMPARE/'catalog.json').read_text())
        texts=json.loads(a.texts_config.read_text())
        require(len(texts['performance_texts'])==64 and all(isinstance(t,str) and t for t in texts['performance_texts']),
                'exactly64 existing texts required')
        models=select_case_models(catalog)
        if a.stage=='bge':models=models[:1]
        if a.stage=='qwen':models=models[1:]
        initial=source_identity()
        save(root/'configuration.json',{'model_ids':[m['model_id'] for m in models],
            'top5_sources':initial,'dependencies':dependencies,'batch_size':a.batch_size,'seq_len':a.seq_len,
            'gate_only':a.gate_only,'dry_run':a.dry_run,'old_baselines_not_overwritten':True,
            'scope':'BGE-M3 existing GELU peak diagnostics; Qwen SiLU->Mul actual graph candidate'})
        launcher=load_file('top5_existing_guarded_launcher',SHARED/'run_models.py')
        for index,entry in enumerate(models):
            directory=root/f'model-{index+1:02d}';directory.mkdir()
            if a.dry_run:
                rows.append({'model_id':entry['model_id'],'status':'planned_not_executed'});continue
            model=resolve_resource(entry,a.hub,a.venvs)
            if card is None:
                raw,cards=read_cards();card=choose_card(cards,a.physical_card,a.exclude_cards,a.idle_mib_max)
                save(root/'selection.json',{'raw':raw,'cards':cards,'selected':card,
                    'exclude_cards':a.exclude_cards,'fixed_for_entire_group':True,'time':time.time()})
            case={**model,'texts':texts['performance_texts'],'input_note':texts['input_note'],
                  'batch_size':a.batch_size,'seq_len':a.seq_len,
                  'adapter':'existing-gelu' if model['model_id']=='BAAI/bge-m3' else 'qwen-full-forward-fp32-cache-off'}
            save(directory/'case.json',case)
            def launch(mode,rep=0):
                out=directory/('gate' if mode=='gate' else f'rep-{rep}-{mode}' if mode in ARMS else mode)
                cmd=[model['python'],'-B',str(HERE/'worker.py'),'--case',str(directory/'case.json'),
                    '--output-dir',str(out),'--bridge-dir',str(a.bridge_dir.resolve()),
                    '--legality',str(a.legality.resolve()),'--physical-card',str(card),
                    '--idle-mib-max',str(a.idle_mib_max),'--mode',mode,'--rep',str(rep)]
                if mode!='gate':cmd+=['--gate',str(directory/'gate/result.json')]
                result=launcher.run_child(cmd,out,card,a.idle_mib_max,a.worker_timeout)
                require(source_identity()==initial,'TOP5 sources changed during execution')
                return out,result
            _out,gate=launch('gate')
            if a.gate_only:
                rows.append({'model_id':model['model_id'],'status':'gate_passed_only',
                             'selected_nodes':len(gate['selected'])});continue
            records=[]
            for rep in range(1,4):
                shift=(rep-1)%3
                for arm in ARMS[shift:]+ARMS[:shift]:
                    out,result=launch(arm,rep);records.append(result)
                    require(result['top5_identity_sha256']==gate['top5_identity_sha256'],'new source identity drift')
                    if arm in ('torch','flagtree-out'):
                        baselines.extend({'path':str(f.relative_to(root)),'sha256':sha(f)}
                                         for f in sorted(out.rglob('*')) if f.is_file())
            summary=summarize(records);save(directory/'summary.json',summary)
            diagnostics={}
            if model['model_id']=='BAAI/bge-m3':
                for mode in ('diagnose-out','diagnose-inplace'):
                    _out,result=launch(mode);diagnostics[mode]=result
                require(diagnostics['diagnose-out']['output_sha256']==diagnostics['diagnose-inplace']['output_sha256'],
                        'diagnostic arms output mismatch')
                save(directory/'peak-diagnostic-summary.json',diagnostics)
            rows.append({'model_id':model['model_id'],'status':'completed','selected_nodes':len(gate['selected']),
                         'summary':summary,'diagnostics':diagnostics})
            save(directory/'stage-complete.json',rows[-1])
        save(root/'baseline-index.json',baselines);verify_baselines(root)
        save(root/'suite-summary.json',{'models':rows,'physical_card':card,'dry_run':a.dry_run,
             'baselines_unchanged':True,'full_model_flagtree':False,
             'boundary':'new Qwen candidate must pass real gate; diagnostics are not normal timing/peak gain'})
        lines=['# TOP5 FlagTree 阶段结果','','仅BGE-M3与Qwen3-Embedding-0.6B。',
            'BGE沿用GELU优化；Qwen只替换SiLU后的乘法，SiLU仍为原生算子，不是融合或全模型FlagTree。','',
            '| 模型 | 状态 | 节点数 | allocated减少 MiB | reserved减少 MiB | inplace/out p50 | inplace/torch p50 |',
            '|---|---|---:|---:|---:|---:|---:|']
        for r in rows:
            if r['status']!='completed':
                lines.append(f"| {r['model_id']} | {r['status']} | 未测 | 未测 | 未测 | 未测 | 未测 |")
                continue
            e=r['summary']['optimization']
            lines.append(f"| {r['model_id']} | completed | {r['selected_nodes']} | "
                f"{e['allocated_reduction_bytes']/1048576:.3f} | {e['reserved_reduction_bytes']/1048576:.3f} | "
                f"{e['p50_ratio']:.4f} | {e['p50_vs_torch_ratio']:.4f} |")
            if r['diagnostics']:
                lines+=['', 'BGE同步诊断中的高峰节点（不能替代正常执行峰值/延迟）：']
                for mode,d in r['diagnostics'].items():
                    lines.append(mode+': '+', '.join(x['node']+' '+x['operation'] for x in d['top_peak_nodes'][:3]))
        lines+=['','收益仅在本轮同模型、同kernel、同设备、同输入的out/inplace之间计算。',
                 '短程结果不是长稳/STS/A100精度对齐；未知工作区来源如实保留，不提前指定下一融合算子。']
        with (root/'RESULTS.md').open('x') as f:f.write('\n'.join(lines)+'\n')
        if card is not None:
            raw,cards=read_cards();require_idle(cards,card,a.idle_mib_max)
            save(root/'final-occupancy.json',{'raw':raw,'cards':cards,'selected':card})
        return 0
    except Exception as error:
        save(root/'failure.json',{'error':str(error),'physical_card':card,
             'completed_stages_preserved':[r['model_id'] for r in rows if r['status']=='completed'],
             'no_incomplete_suite_performance_table':True})
        print('STOP:',error,file=sys.stderr);return 2
    finally:
        if not (root/'baseline-index.json').exists():save(root/'baseline-index.json',baselines)
        if card is not None:
            try:
                raw,cards=read_cards();save(root/'exit-occupancy.json',{'raw':raw,'cards':cards,'selected':card,
                    'idle':not cards[card]['pids'] and cards[card]['utilization_percent']==0
                           and cards[card]['used_mib']<=a.idle_mib_max})
            except Exception as error:save(root/'exit-error.json',{'error':str(error),'release_not_proven':True})
        manifest(root)


if __name__=='__main__':raise SystemExit(main())
