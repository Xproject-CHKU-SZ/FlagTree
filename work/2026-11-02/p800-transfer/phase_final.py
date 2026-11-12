"""Independent same-card one-way measurements with bounded fixed overhead.

T(1) bounds all setup/verification costs. Choose R so T(1)/T(R)<=0.5%,
then report median T(R)/R, without fragile clock or noisy slope subtraction.
"""
from transfer_common import *
from native_support import *
import traceback

out,report=initialize(0,'phase-final')
report.update(cases=[],method='Native DMA loops; graph GPU event time / repeats; fixed-cost upper bound <=0.5%',
              card_policy='All SDNN and cluster results remeasured on physical GPU 0')
save(out,report)
try:
    import torch
    blobs={}
    for index,n in enumerate(SIZES):
        previous=ROOT/'results'/f"phase-{'v3' if index in [1,2,3] else 'v2'}-{index:03}"/'result.json'
        locked=json.loads(previous.read_text());assert locked['status']=='complete'
        case=dict(n=n,payload_bytes=4*n*n,selection_source=str(previous.relative_to(ROOT)),
                  selection_sha256=hashlib.sha256(previous.read_bytes()).hexdigest(),candidates={},resources={},rounds=[])
        report['cases'].append(case);report['stage']=f'{n}-prepare';save(out,report)
        torch.manual_seed(58100+index);cpu=torch.rand(n*n,dtype=torch.float32)-.5
        x=cpu.cuda();y=torch.empty_like(x);metrics=torch.full((768,8),-1,dtype=torch.int64,device='cuda')
        if 'physical_proof' not in report:report['physical_proof']=physical_proof(0)
        before=digest(x);nbytes=4*n*n

        def make(conf,resource,mode,repeats):
            key=(resource,conf['tile'],conf['pipe'])
            if key not in blobs:blobs[key]=build_native(conf['tile'],resource,out,conf['pipe'])
            return native_function(blobs[key][0],resource,x,y,metrics,nbytes,repeats,mode,conf['clusters'])

        def validate(conf,resource,mode,repeats,graph=None):
            y.fill_(float('nan'));metrics.fill_(-1);torch.cuda.synchronize()
            if graph is None:make(conf,resource,mode,repeats)()
            else:graph.replay()
            torch.cuda.synchronize();meta=inspect_metrics(metrics,nbytes,repeats,resource)
            if mode==0:exact(y,cpu)
            elif mode==2:exact(y,cpu[:conf['tile']//4].repeat(nbytes//conf['tile']))
            else:
                got=y.cpu()
                for row in meta['rows']:
                    if row[2]>0:
                        start=row[6]//4;exact(got[start:start+conf['tile']//4],cpu[start:start+conf['tile']//4])
                assert int(torch.isfinite(got).sum())==meta['active_units']*conf['tile']//4
            return dict(bitwise_equal=True,bytes_per_repeat=nbytes,active_units=meta['active_units'],
                        metadata_byte_count=sum(row[2] for row in meta['rows']))

        winners={}
        for direction,mode in [('read',1),('write',2)]:
            for resource in ['sdnn','cluster']:
                label=resource+'-'+direction;case['candidates'][label]=[]
                configs=[]
                for rec in locked['finalists'][resource][direction]:
                    if rec['config'] not in configs:configs.append(rec['config'])
                candidates=[]
                for conf in configs:
                    report['stage']=f'{n}-{label}-select';save(out,report)
                    validate(conf,resource,0,1);validate(conf,resource,mode,1)
                    one=make(conf,resource,mode,1)
                    count=batch_size(locked['resources'][resource][direction]['single_pass_instrumented_kernel']['gpu_us'])
                    g=capture(one,count);single=measure(g,count,5)['gpu_us'];del g
                    estimate=locked['resources'][resource][direction]['transfer_us']
                    repeats=2**math.ceil(math.log2(max(4000,250*single)/max(estimate,.01)))
                    repeats=max(1,min(repeats,2**21))
                    fn=make(conf,resource,mode,repeats);g=capture(fn,1);tune=measure(g,1,5)
                    if single/tune['gpu_us']>.005:
                        del g;repeats*=2;fn=make(conf,resource,mode,repeats);g=capture(fn,1);tune=measure(g,1,5)
                    assert single/tune['gpu_us']<=.005,(single,tune)
                    record=dict(config=conf,repeats=repeats,single_pass_us=single,tuning=tune,
                                tuning_per_transfer_us=tune['gpu_us']/repeats,
                                fixed_cost_upper_bound=single/tune['gpu_us'])
                    case['candidates'][label].append(record)
                    candidates.append((record['tuning_per_transfer_us'],record,fn,g))
                _,rec,fn,g=min(candidates,key=lambda t:t[0])
                winners[label]=(rec,fn,g,mode,resource)
                save(out,report)
        # Fixed final configuration, independent samples, reversal of route order.
        labels=list(winners)
        for order in [labels,labels[::-1]]:
            for label in order:
                rec,fn,g,mode,resource=winners[label]
                report['stage']=f'{n}-{label}-final';save(out,report)
                timing=measure(g,1,11)
                case['rounds'].append(dict(label=label,timing=timing))
        assert digest(x)==before
        cpu.mul_(-1).add_(.125);x.copy_(cpu);torch.cuda.synchronize()
        for label,(rec,fn,g,mode,resource) in winners.items():
            samples=[v/rec['repeats'] for r in case['rounds'] if r['label']==label for v in r['timing']['samples_us']]
            us=statistics.median(samples)
            validity=validate(rec['config'],resource,mode,rec['repeats'],g)
            fixed=rec['single_pass_us']/(us*rec['repeats']);assert fixed<=.005
            case['resources'][label]=dict(transfer_us=us,GBps=nbytes/us/1000,samples_us=samples,
                min_us=min(samples),max_us=max(samples),p10_us=sorted(samples)[2],p90_us=sorted(samples)[-3],
                config=rec['config'],repeats=rec['repeats'],fixed_cost_upper_bound=fixed,
                fresh_graph_validation=validity,native_binary_sha256=hashlib.sha256(fn.blob).hexdigest())
        case['status']='complete';save(out,report)
        del winners,candidates,fn,g,x,y,metrics,cpu
        torch.cuda.empty_cache()
    report.update(status='complete',finished_at=time.time());save(out,report)
except Exception as exc:
    report.update(status='failed',error=str(exc),traceback=traceback.format_exc());raise
finally:save(out,report)
