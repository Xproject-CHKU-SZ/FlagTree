#!/usr/bin/env python3
"""Build a 301-row acceptance snapshot; only full per-case verification can pass.

Checkpoint-only snapshots are explicitly incomplete, even if all counters are
green. No pending/failed model is removed from the denominator.
"""
from __future__ import annotations

import argparse
import csv
import json
import math
from pathlib import Path
import sys

from run_scene_optimization_campaign import sha256, validate_scope, audit_replay
from run_scene_replay_campaign import audit_replay_case
from benchmark_scene_pair import summarize_rounds, freeze_gate, performance_passed


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--accepted",type=Path,required=True)
    p.add_argument("--baseline",type=Path,required=True)
    p.add_argument("--optimized",type=Path,required=True)
    p.add_argument("--baseline-source",type=Path,required=True)
    p.add_argument("--paired-report",type=Path,required=True)
    p.add_argument("--calibration",type=Path,required=True)
    p.add_argument("--resource-report",type=Path,required=True)
    p.add_argument("--output",type=Path,required=True)
    p.add_argument("--verify",action="store_true")
    args=p.parse_args();args.output.mkdir(parents=True,exist_ok=False)
    sys.path.insert(0,str(args.baseline_source/'model_import_adapters/scripts'))
    rows=validate_scope(json.loads(args.accepted.read_text()))
    # A live campaign can advance while its cases are audited. Preserve and
    # fingerprint the exact bytes read, not the later on-disk checkpoint.
    base_bytes=(args.baseline/'checkpoint.json').read_bytes()
    opt_bytes=(args.optimized/'checkpoint.json').read_bytes()
    (args.output/'baseline-checkpoint.json').write_bytes(base_bytes)
    (args.output/'optimized-checkpoint.json').write_bytes(opt_bytes)
    base=json.loads(base_bytes)
    opt=json.loads(opt_bytes)
    aa=json.loads(args.calibration.read_text());pair=json.loads(args.paired_report.read_text())
    b0={r['model_id']:r for r in base['records']};b2={r['model_id']:r for r in opt['records']}
    errors=[];matrix=[];review=[]
    expected=sha256(args.accepted)
    if base['identity']['accepted_sha256']!=expected or opt['identity']['accepted_sha256']!=expected:
        errors.append('scope_hash_mismatch')
    if pair.get('frozen_calibration_sha256')!=sha256(args.calibration) or pair['identity']!=aa['identity']:
        errors.append('paired_policy_identity_mismatch')
    for path,digest in opt['identity']['source_hashes'].items():
        if sha256(path)!=digest:errors.append('optimized_source_changed:'+path)
    for row in rows:
        left=b0.get(row['model_id']);right=b2.get(row['model_id'])
        item={'model_id':row['model_id'],'revision':row['revision'],'task':row['task'],
              'baseline_status':left['status'] if left else 'pending',
              'optimized_status':right['status'] if right else 'pending',
              'hit_probes':0,'retained_probes':0,'verified_shapes':0,'errors':[]}
        if args.verify and left and left['status']=='passed':
            try:
                audit=audit_replay(row,Path(left['case']),args.baseline/'logs')
                if not audit['accepted']:item['errors'].extend(audit['errors']);item['baseline_status']='failed'
                old=Path(row['case'])/'model-files.json';new=Path(left['case'])/'model-files.json'
                if sha256(old)!=row['model_files_sha256'] or json.loads(old.read_text())!=json.loads(new.read_text()):
                    item['errors'].append('model_snapshot_or_weight_manifest_drift');item['baseline_status']='failed'
            except Exception as exc:
                item['errors'].append(f'baseline_audit:{type(exc).__name__}:{exc}');item['baseline_status']='failed'
        if right and right['status']=='passed':
            case=Path(right['case']);report=json.loads((case/'report.json').read_text())
            item.update(hit_probes=report['hit_probes'],retained_probes=report['retained_probes'],optimized_case=str(case))
            if args.verify:
                try:
                    audit=audit_replay_case(case,row,Path(left['case']))
                    if not audit['accepted']:raise ValueError('independent replay gate failed')
                    expected_sources=opt['identity']['source_hashes']
                    for key,path in [('scene_source_sha256',Path(report['source'])/'model_import_adapters/src/model_import_adapters/scene_fusion.py'),
                                     ('kernel_source_sha256',Path(report['kernel_root'])/'triton_kernels/ppu_mlp.py'),
                                     ('dot_helper_sha256',Path(report['kernel_root'])/'triton_kernels/matmul_ogs_details/_common.py')]:
                        if report[key]!=expected_sources[str(path)]:raise ValueError('loaded source fingerprint mismatch')
                    if report['case_script_sha256']!=opt['identity']['case_script_sha256']:raise ValueError('case entry point mismatch')
                    item['verified_shapes']=5
                except Exception as exc:
                    item['errors'].append(f'optimized_audit:{type(exc).__name__}:{exc}');item['optimized_status']='failed'
            for probe in report['probes']:
                if probe['needs_paired_regression_check']:
                    review.append({'model_id':row['model_id'],'batch':probe['batch'],'sequence':probe['sequence'],
                                   'case':str(case),'reason':'unpaired screen requires strict paired model follow-up'})
        matrix.append(item)
    passed_b0=sum(r['baseline_status']=='passed' for r in matrix)
    passed_b2=sum(r['optimized_status']=='passed' for r in matrix)
    failed=sum(r['baseline_status']=='failed' or r['optimized_status']=='failed' for r in matrix)
    verified=sum(r['verified_shapes'] for r in matrix)
    local_pass=False
    try:
        assert pair.get('status')=='passed' and aa.get('status')=='calibrated'
        assert pair['identity']['script_sha256']==sha256(Path(__file__).with_name('benchmark_scene_pair.py'))
        calibration_cases={tuple(c['shape_mkn']):c for c in aa['cases']}
        qualified=[c for c in pair['cases'] if c['eligible']]
        expected_shapes={(m,384,1536) for m in (8,48,256,16,64)}
        pair_shapes=[tuple(c['shape_mkn']) for c in pair['cases']]
        qualified_shapes={tuple(c['shape_mkn']) for c in qualified}
        if (len(aa['cases'])!=5 or set(calibration_cases)!=expected_shapes
                or len(pair_shapes)!=5 or set(pair_shapes)!=expected_shapes
                or len(qualified)!=4 or qualified_shapes!=expected_shapes-{(256,384,1536)}):
            raise ValueError('Local scene coverage must contain five unique frozen shapes and four qualified shapes')
        raw_speedups=[]
        for item in qualified:
            frozen=calibration_cases[tuple(item['shape_mkn'])]
            gate=freeze_gate(summarize_rounds(frozen['rounds']))
            assert gate==frozen['gate']==item['gate']
            raw_summary=summarize_rounds(item['rounds'])
            assert performance_passed(raw_summary,gate)
            raw_speedups.append(raw_summary['geomean_speedup'])
            # For these frozen four fixtures the absolute maximum alone is
            # already below atol, a sufficient (not substituted) joint test.
            assert item['precision_passed'] and item['max_abs_error']<=3e-4
            assert item['torch_allocator_transient_bytes']['B']<=item['torch_allocator_transient_bytes']['A']+gate['max_transient_memory_extra_bytes']
            assert item['candidate_first_call_s']<=item['baseline_first_call_s']+gate['max_extra_first_call_seconds']
        raw_geomean=math.exp(sum(math.log(value) for value in raw_speedups)/len(raw_speedups))
        if not math.isclose(pair['qualified_geomean_speedup'],raw_geomean,rel_tol=1e-12,abs_tol=1e-12):
            raise ValueError('Declared local speedup disagrees with raw paired measurements')
        resources=json.loads(args.resource_report.read_text())
        assert resources['status']=='passed' and resources['device']=='PPU-ZW810E'
        assert resources['kernels']
        for kernel in resources['kernels']:
            assert sha256(kernel['provenance']['binary_path'])==kernel['binary_sha256']
            assert kernel['threads']<=kernel['max_threads'] and kernel['shared_bytes']<=resources['device_properties']['max_shared_mem']
            assert kernel['n_regs_per_thread']>0 and kernel['local_bytes_per_thread']>=0
        local_pass=True
    except Exception as exc:
        errors.append(f'local_scene_gate:{type(exc).__name__}:{exc}')
    complete=(args.verify and base['status']=='completed' and opt['status']=='completed' and passed_b0==301
              and passed_b2==301 and verified==1505 and local_pass and not errors and not review)
    report={'status':'passed' if complete else 'incomplete','planned_models':301,'planned_shapes':1505,
            'baseline_passed':passed_b0,'optimized_passed':passed_b2,'failed_models':failed,
            'verified_optimized_shapes':verified,'verification_level':'per_case_reopened' if args.verify else 'checkpoint_only',
            'local_scene_passed':local_pass,'local_scene_geomean_speedup':pair.get('qualified_geomean_speedup'),
            'local_scene_scope':'four resident-input MLP scenes, not full-model/service acceleration',
            'pending_paired_model_reviews':review,'errors':errors,'models':matrix,
            'accepted_sha256':expected,'baseline_checkpoint_sha256':sha256(args.output/'baseline-checkpoint.json'),
            'optimized_checkpoint_sha256':sha256(args.output/'optimized-checkpoint.json'),
            'paired_report_sha256':sha256(args.paired_report),'calibration_sha256':sha256(args.calibration)}
    report['resource_report_sha256']=sha256(args.resource_report)
    (args.output/'acceptance.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    with (args.output/'compatibility_matrix.csv').open('w',encoding='utf-8-sig',newline='') as f:
        writer=csv.DictWriter(f,fieldnames=['model_id','revision','task','baseline_status','optimized_status','hit_probes','retained_probes','verified_shapes','errors']);writer.writeheader()
        for item in matrix:writer.writerow({key:item[key] for key in writer.fieldnames})
    (args.output/'compatibility_matrix.json').write_text(json.dumps(matrix,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    text=(f"# 301模型编译优化验收状态\n\n总状态：**{report['status']}**；核验级别：{report['verification_level']}。\n\n"
          f"固定301模型/1505输入。新基线通过{passed_b0}；优化版通过{passed_b2}；独立核验优化输入{verified}。\n\n"
          f"局部场景性能门禁：{'通过' if local_pass else '未通过'}，几何平均{pair.get('qualified_geomean_speedup')}倍，非整模型或服务收益。\n\n"
          f"待严格配对复核的模型输入：{len(review)}；全局错误：{len(errors)}。\n\n"
          "仅当全量门禁、独立核验及性能复核均闭合时总状态才为passed。待测项保留在301分母中，checkpoint-only不会生成最终通过结论。\n")
    (args.output/'验收状态.md').write_text(text,encoding='utf-8')
    print(json.dumps({k:v for k,v in report.items() if k not in {'models','pending_paired_model_reviews'}}))
    return 0 if complete else 2


if __name__=='__main__':raise SystemExit(main())
