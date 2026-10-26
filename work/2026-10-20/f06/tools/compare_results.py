"""Recompute paired medians and compare fresh runs with the 2026-10-20 evidence."""
import argparse
import csv
import hashlib
import json
import math
from pathlib import Path
import statistics

ROOT=Path(__file__).resolve().parents[1]
ARCHIVE=ROOT/'evidence/historical'
SOURCE=ROOT/'source'
OLD_SPEEDUP=ARCHIVE/'f06_speedup_20261020/evidence'
OLD_RTX=ARCHIVE/'f06_rtx4090_inductor_compare_20261020/evidence'


def key(case):
    return (case['kind'],case['dtype'],*case['shape'])


def geo(values):
    values=list(values)
    return math.exp(statistics.mean(math.log(v) for v in values)) if values else None


def read_runs(base,labels):
    return [json.loads((base/'results'/label/'evidence/results.json').read_text()) for label in labels]


def merged(reports):
    maps=[{key(c):c for c in r['cases']} for r in reports]
    assert len(maps)==2 and set(maps[0])==set(maps[1])
    output={}
    for k in sorted(maps[0]):
        cases=[m[k] for m in maps]
        if not all(c['status']=='passed' for c in cases):continue
        assert cases[0]['inputs']==cases[1]['inputs'] and cases[0]['parameters']==cases[1]['parameters']
        output[k]={route:statistics.median(c['median_us'][route] for c in cases) for route in cases[0]['median_us']}
    return output


def validate(base,labels,reports,old):
    checks=[]
    for label,r,reference in zip(labels,reports,old):
        issues=[]
        folder=base/'results'/label
        exit_record=json.loads((folder/'exit.json').read_text())
        assert exit_record['reason'] is None and exit_record['returncode'] in (0,1),(label,exit_record)
        monitor=json.loads((folder/'monitor.json').read_text())
        assert monitor['reason'] is None and not monitor['initial']['pids']
        assert all(not (set(sample['pids'])-set(sample['owned_pids'])) for sample in monitor['samples'])
        assert r['status']=='completed' and len(r['cases'])==117
        assert len({key(c) for c in r['cases']})==117
        env={field:{'old':reference.get(field),'new':r.get(field)} for field in (
            'torch','triton','device','driver','target','native_sha256','compiler_sha256',
            'driver_sha256','script_sha256','protocol','affinity','fusion_logic_sha256') if reference.get(field)!=r.get(field)}
        om={key(c):c for c in reference['cases']}
        failed=[]
        status_changes=[]
        error_changes=[]
        tuning_changes=[]
        for c in r['cases']:
            previous=om[key(c)]
            for field in ('inputs','parameters','tolerance'):
                if c.get(field)!=previous.get(field):issues.append({'case':key(c),'field':field})
            if c['status']!=previous['status']:
                status_changes.append({'case':key(c),'old':previous['status'],'new':c['status'],'error':c.get('error')})
            for generated in c.get('generated_sources',[]):
                path=folder/'evidence'/generated['file']
                assert hashlib.sha256(path.read_bytes()).hexdigest()==generated['sha256']
            if c['status']!='passed':
                if previous['status']=='failed':
                    if (c.get('error','').splitlines()[:1]!=previous.get('error','').splitlines()[:1]
                        or set(c.get('correctness',{}))!=set(previous.get('correctness',{}))):
                        issues.append({'case':key(c),'field':'failure_type_or_stage'})
                failed.append({'case':key(c),'error':c.get('error'),'stage_correctness_completed':list(c.get('correctness',{}))})
                assert 'wall_us' not in c
                continue
            assert c['inputs_unchanged']
            if c.get('tuning',{}).get('configs')!=previous.get('tuning',{}).get('configs'):
                tuning_changes.append({'case':key(c),'old':previous.get('tuning',{}).get('configs'),
                                       'new':c.get('tuning',{}).get('configs')})
            for route,values in c['wall_us'].items():
                assert len(values)==7 and all(math.isfinite(v) and v>0 for v in values)
                assert statistics.median(values)==c['median_us'][route]
                assert c['correctness'][route]['fresh_retained_outputs']
                if route in ('default','tuned'):assert c['execution'][route]['mode']=='fused'
                before=previous.get('correctness',{}).get(route,{}).get('max_abs_error')
                after=c['correctness'][route].get('max_abs_error')
                if before is not None and before!=after:
                    error_changes.append({'case':key(c),'route':route,'old':before,'new':after})
        assert r['passed']==117-len(failed) and r['failed']==len(failed)
        for name,digest in r.get('source_sha256',{}).items():
            assert hashlib.sha256((SOURCE/name).read_bytes()).hexdigest()==digest,name
        checks.append({'label':label,'passed':r['passed'],'failed':r['failed'],
            'historical_passed':reference['passed'],'historical_failed':reference['failed'],
            'same_case_statuses':not status_changes,'status_changes':status_changes,
            'input_parameter_tolerance_differences':issues,'environment_differences':env,
            'monitor_samples_verified':len(monitor['samples']),'failures':failed,
            'max_abs_error_changes':error_changes,'tuning_config_changes':tuning_changes})
    return checks


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--device',choices=['all','rtx4090','p800'],default='rtx4090')
    args=parser.parse_args()
    specs=[
        ('p800_candidate','p800',['004-candidate-a','005-candidate-b'],OLD_SPEEDUP/'p800',['004-candidate-a','005-candidate-b']),
        ('p800_original','p800',['003-original-a','006-original-b'],OLD_SPEEDUP/'p800',['003-original-a','006-original-b']),
        ('rtx4090_eager','rtx4090',['007-eager-candidate-a','008-eager-candidate-b'],OLD_SPEEDUP/'rtx4090',['003-candidate-a','004-candidate-b']),
        ('rtx4090_candidate_independent','rtx4090',['004-candidate-a','005-candidate-b'],OLD_RTX,['004-candidate-a','005-candidate-b']),
        ('rtx4090_inductor','rtx4090',['003-inductor-a','006-inductor-b'],OLD_RTX,['003-inductor-a','006-inductor-b']),
        ('rtx4090_joint','rtx4090',['009-joint-a','010-joint-b'],OLD_RTX,['009-joint-a','010-joint-b']),
    ]
    datasets={}
    summary={'date':'2026-10-26','historical_date':'2026-10-20','checks':{},'metrics':{},'supplementary':{},
             'performance_flag_threshold_pct':10,'threshold_note':'Investigation flag, not a user-specified acceptance criterion'}
    rows=[]
    for name,device,labels,old_base,old_labels in specs:
        if args.device!='all' and device!=args.device:continue
        base=ROOT/'evidence'/device
        current=read_runs(base,labels)
        historical=read_runs(old_base,old_labels)
        summary['checks'][name]=validate(base,labels,current,historical)
        datasets[name]={'new':merged(current),'old':merged(historical)}

    def metric(name,numerator,denominator,num_route,den_route):
        if numerator not in datasets or denominator not in datasets:return
        data={}
        for period in ('old','new'):
            n=datasets[numerator][period];d=datasets[denominator][period]
            data[period]={k:n[k][num_route]/d[k][den_route] for k in sorted(set(n)&set(d))}
        common=sorted(set(data['old'])&set(data['new']))
        old_gm=geo(data['old'][k] for k in common);new_gm=geo(data['new'][k] for k in common)
        summary['metrics'][name]={
            'old_valid_cases':len(data['old']),'new_valid_cases':len(data['new']),'matched_cases':len(common),
            'old_gm':old_gm,'new_gm':new_gm,'change_pct':(new_gm/old_gm-1)*100 if old_gm else None,
            'old_wins_gt1':sum(data['old'][k]>1 for k in common),'new_wins_gt1':sum(data['new'][k]>1 for k in common),
            'cases_changed_over_10pct':sum(abs(data['new'][k]/data['old'][k]-1)>0.10 for k in common)}
        for k in common:
            rows.append({'metric':name,'kind':k[0],'dtype':k[1],'M':k[2],'N':k[3],
                'old_ratio':data['old'][k],'new_ratio':data['new'][k],
                'ratio_change_pct':100*(data['new'][k]/data['old'][k]-1),
                'old_numerator_us':datasets[numerator]['old'][k][num_route],
                'new_numerator_us':datasets[numerator]['new'][k][num_route],
                'old_denominator_us':datasets[denominator]['old'][k][den_route],
                'new_denominator_us':datasets[denominator]['new'][k][den_route]})

    for route in ('default','tuned'):
        for dataset in ('p800_candidate','rtx4090_eager','rtx4090_candidate_independent','rtx4090_joint'):
            metric(dataset+'_'+route+'_vs_eager',dataset,dataset,'eager',route)
        metric('p800_'+route+'_vs_original','p800_original','p800_candidate','original',route)
        metric('rtx4090_independent_'+route+'_vs_inductor','rtx4090_inductor','rtx4090_candidate_independent','inductor',route)
        metric('rtx4090_joint_'+route+'_vs_inductor','rtx4090_joint','rtx4090_joint','inductor',route)
    metric('p800_original_vs_eager','p800_original','p800_original','eager','original')
    metric('rtx4090_inductor_vs_eager','rtx4090_inductor','rtx4090_inductor','eager','inductor')
    metric('rtx4090_joint_inductor_vs_eager','rtx4090_joint','rtx4090_joint','eager','inductor')

    for device in ('p800','rtx4090'):
        if args.device!='all' and device!=args.device:continue
        reports=read_runs(ROOT/'evidence'/device,['011-expanded-a','012-expanded-b'])
        counts=[]
        maps=[]
        for r in reports:
            assert len(r['cases'])==90
            valid={key(c):c for c in r['cases'] if c.get('passed') and c.get('mode')=='fused'}
            counts.append({'total':90,'passed':sum(bool(c.get('passed')) for c in r['cases']), 'fused_valid':len(valid)})
            maps.append(valid)
        common=set(maps[0])&set(maps[1])
        ratio=[]
        for k in common:
            med={route:statistics.median(m[k]['median_seconds_per_call'][route] for m in maps) for route in ('fused','eager')}
            ratio.append(med['eager']/med['fused'])
        summary['supplementary'][device]={'counts':counts,'common_valid':len(common),'default_vs_eager_gm':geo(ratio),
            'note':'Standalone expanded 90-case script; different harness/input construction; not pooled with report 117-case results'}
    (ROOT/'comparison.json').write_text(json.dumps(summary,ensure_ascii=False,indent=2)+'\n')
    with (ROOT/'per_case_comparison.csv').open('w',newline='') as file:
        writer=csv.DictWriter(file,fieldnames=list(rows[0]));writer.writeheader();writer.writerows(rows)
    print(json.dumps({k:v for k,v in summary.items() if k!='checks'},ensure_ascii=False,indent=2))

if __name__=='__main__':main()
