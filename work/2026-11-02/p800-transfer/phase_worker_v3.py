"""One-way DMA steady-state timing from repetition-count slopes.

The fixed initialization, output validation and metrics stores are removed by
T(R)=a+R*t. No subtraction of clocks belonging to different clusters is used.
"""
from transfer_common import *
from native_support import *
import argparse
import traceback

p=argparse.ArgumentParser();p.add_argument('--gpu',type=int,required=True);p.add_argument('--case',type=int,required=True)
a=p.parse_args();n=SIZES[a.case];nbytes=4*n*n
out,report=initialize(a.gpu,f'phase-v3-{a.case:03}')
report.update(n=n,dtype='float32',payload_bytes=nbytes,candidates=[],resources={},
              method='GPU event slope versus native loop repeat count; no cross-cluster clock subtraction')
save(out,report)
try:
    import torch
    torch.manual_seed(44501+a.case)
    cpu=torch.rand(n*n,dtype=torch.float32)-.5
    x=cpu.cuda();y=torch.empty_like(x);metrics=torch.full((768,8),-1,dtype=torch.int64,device='cuda')
    report.update(input_sha256=digest(x),physical_proof=physical_proof(a.gpu))
    blobs={};selected={}

    def make(conf,resource,mode,repeats):
        key=(resource,conf['tile'],conf['pipe'])
        if key not in blobs:blobs[key]=build_native(conf['tile'],resource,out,conf['pipe'])
        blob,base=blobs[key]
        return native_function(blob,resource,x,y,metrics,nbytes,repeats,mode,conf['clusters'])

    def validate(fn,conf,resource,mode,repeats):
        y.fill_(float('nan'));metrics.fill_(-1);torch.cuda.synchronize();fn();torch.cuda.synchronize()
        meta=inspect_metrics(metrics,nbytes,repeats,resource)
        assert all(row[5]==mode for row in meta['rows'])
        if mode==0:exact(y,cpu)
        elif mode==2:exact(y,cpu[:conf['tile']//4].repeat(nbytes//conf['tile']))
        else:
            got=y.cpu()
            for row in meta['rows']:
                if row[2]>0:
                    offset=row[6]//4
                    exact(got[offset:offset+conf['tile']//4],cpu[offset:offset+conf['tile']//4])
            assert int(torch.isfinite(got).sum())==meta['active_units']*(conf['tile']//4)
        return meta

    def timing(conf,resource,mode,repeats,calls,samples):
        fn=make(conf,resource,mode,repeats)
        g=capture(fn,calls)
        value=measure(g,calls,samples)
        meta=inspect_metrics(metrics,nbytes,repeats,resource)
        del g
        return dict(repeats=repeats,timing=value,active_units=meta['active_units'],max_unit_ticks=meta['max_unit_ticks'])

    def final_fit(conf,resource,mode,estimate):
        repeats=min(262144,max(1,2**math.ceil(math.log2(8000/max(estimate,.01)))))
        points={r:[] for r in [repeats,2*repeats,4*repeats]}
        observations=[]
        # Forward/reverse order checks drift independently of candidate selection.
        for order in [list(points),list(points)[::-1]]:
            for r in order:
                pt=timing(conf,resource,mode,r,1,7)
                points[r].extend(pt['timing']['samples_us']);observations.append(pt)
        xs=list(points);ys=[statistics.median(points[r]) for r in xs]
        xmean=statistics.mean(xs);ymean=statistics.mean(ys)
        slope=sum((u-xmean)*(v-ymean) for u,v in zip(xs,ys))/sum((u-xmean)**2 for u in xs)
        intercept=ymean-slope*xmean
        differences=[(ys[i+1]-ys[i])/(xs[i+1]-xs[i]) for i in range(2)]
        assert slope>0 and min(differences)>0,(xs,ys)
        predicted=[intercept+slope*u for u in xs]
        residual=max(abs(u-v) for u,v in zip(ys,predicted))
        return dict(transfer_us=slope,GBps=nbytes/slope/1000,intercept_us=intercept,
                    adjacent_slopes_us=differences,linearity_ratio=max(differences)/min(differences),
                    max_residual_us=residual,points={r:dict(median_us=statistics.median(v),samples_us=v) for r,v in points.items()},
                    observations=observations,config=conf)

    for resource in ['sdnn','cluster']:
        pairs=([(256,1),(1024,1),(4096,1),(16384,1),(65536,1),(262144,1),(1048576,1)] if resource=='sdnn'
               else [(64,1),(128,1),(256,1),(512,1),(1024,1),(2048,1),(128,4),(512,4),(128,16),(256,8)])
        options=[]
        for tile,pipe in pairs:
            if tile>nbytes:continue
            clusters=min(12,max(1,math.ceil(nbytes/(tile*(1 if resource=='sdnn' else 64)))))
            options.append(dict(tile=tile,pipe=pipe,clusters=clusters))
        for conf in options:
            record=dict(resource=resource,config=conf,status='running',directions={})
            report['candidates'].append(record);save(out,report)
            try:
                copy=make(conf,resource,0,1)
                record['copy_validation']=validate(copy,conf,resource,0,1)
                record['binary_sha256']=hashlib.sha256(copy.blob).hexdigest()
                for mode,label in [(1,'read'),(2,'write')]:
                    fn=make(conf,resource,mode,1)
                    meta=validate(fn,conf,resource,mode,1)
                    initial=timing(conf,resource,mode,1,16 if nbytes<=2**20 else 1,3)
                    estimate=initial['timing']['gpu_us']
                    r=min(4096,max(1,2**math.ceil(math.log2(500/max(estimate,.01)))))
                    calls=16 if nbytes<=2**20 else 1
                    one=timing(conf,resource,mode,r,calls,3);two=timing(conf,resource,mode,2*r,calls,3)
                    slope=(two['timing']['gpu_us']-one['timing']['gpu_us'])/r
                    record['directions'][label]=dict(initial=initial,one=one,two=two,estimated_transfer_us=slope,
                                                     validation_active_units=meta['active_units'])
                record['status']='passed'
            except Exception as exc:
                record.update(status='failed',error=str(exc),traceback=traceback.format_exc())
                if any(word in str(exc).lower() for word in ['timeout','illegal','cuda error']):
                    raise
            save(out,report)
        for mode,label in [(1,'read'),(2,'write')]:
            ranked=sorted([r for r in report['candidates'] if r['resource']==resource and r['status']=='passed'
                           and r['directions'][label]['estimated_transfer_us']>0],
                          key=lambda r:r['directions'][label]['estimated_transfer_us'])
            assert ranked,(resource,label)
            finalists=[]
            for rec in ranked[:2]:
                fit=final_fit(rec['config'],resource,mode,rec['directions'][label]['estimated_transfer_us'])
                finalists.append(fit)
            best=min(finalists,key=lambda r:r['transfer_us'])
            # Nonlinearity is retained and audited before accepting/reporting the result.
            conf=best['config'];fn=make(conf,resource,mode,1)
            initial=capture(fn,16);estimate=measure(initial,16,3)['gpu_us'];del initial
            calls=batch_size(estimate);g=capture(fn,calls)
            best['single_pass_instrumented_kernel']=measure(g,calls,7)
            best['single_pass_e2e']=end_to_end(fn)
            del g
            report['resources'].setdefault(resource,{})[label]=best
            report.setdefault('finalists',{}).setdefault(resource,{})[label]=finalists
            selected[(resource,label)]=(conf,mode)
            save(out,report)
    assert digest(x)==report['input_sha256'],'Input modified'
    cpu.mul_(-1).add_(.125);x.copy_(cpu);torch.cuda.synchronize()
    for (resource,label),(conf,mode) in selected.items():
        validate(make(conf,resource,0,1),conf,resource,0,1)
        validate(make(conf,resource,mode,3),conf,resource,mode,3)
        # Replays must consume the current input at the captured addresses.
        fn=make(conf,resource,mode,2);g=capture(fn,1)
        cpu.mul_(-1).add_(.125);x.copy_(cpu);y.fill_(float('nan'));metrics.fill_(-1)
        torch.cuda.synchronize();g.replay();torch.cuda.synchronize()
        meta=inspect_metrics(metrics,nbytes,2,resource)
        got=y.cpu()
        if mode==2:exact(got,cpu[:conf['tile']//4].repeat(nbytes//conf['tile']))
        else:
            for row in meta['rows']:
                if row[2]>0:
                    offset=row[6]//4;exact(got[offset:offset+conf['tile']//4],cpu[offset:offset+conf['tile']//4])
        del g
        report['resources'][resource][label]['independent_bitwise_and_graph_validation']=True
    report.update(status='complete',finished_at=time.time())
except Exception as exc:
    report.update(status='failed',error=str(exc),traceback=traceback.format_exc());raise
finally:save(out,report)
