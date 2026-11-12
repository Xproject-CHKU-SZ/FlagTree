"""Independent route tuning; bit-exact D2D copy and AB/BA graph measurements."""
import argparse
import json
import statistics
import time
import traceback
from transfer_common import *


def main():
    p=argparse.ArgumentParser()
    p.add_argument('--gpu',type=int,required=True)
    p.add_argument('--case',type=int,required=True)
    args=p.parse_args()
    n=SIZES[args.case//3];dtype_name=['float32','float16','bfloat16'][args.case%3]
    out,report=initialize(args.gpu,f'copy-{args.case:03}')
    report.update(n=n,dtype=dtype_name,operation='D2D',candidates=[],rounds=[])
    save(out,report)
    try:
        import torch
        import triton
        from transfer_kernels import copy_kernel
        dtype=getattr(torch,dtype_name);length=n*n
        torch.manual_seed(331100+args.case)
        source_cpu=(torch.rand(length)-.5).to(dtype)
        x=source_cpu.cuda();y=torch.empty_like(x)
        report.update(payload_bytes=x.numel()*x.element_size(),working_set_bytes=2*x.numel()*x.element_size(),
                      input_sha256=digest(x),physical_proof=physical_proof(args.gpu))
        history=json.loads((ROOT/'previous-copy-configs.json').read_text())
        winners={}

        def bind(conf,resource):
            block=conf['BLOCK'];options=conf.get('options',{})
            assert length%block==0
            return lambda:copy_kernel[(length//block,)](x,y,BLOCK=block,is_sdnn=resource=='sdnn',**options)

        for resource in ['sdnn','cluster']:
            configs=[dict(BLOCK=b) for b in [128,512,2048,8192,32768,131072,524288] if b<=length]
            old=history.get(f'{dtype_name}-{n}',{}).get(resource)
            if old:
                old={k:v for k,v in old.items() if k!='algorithm'}
                if old not in configs:configs.append(old)
            if resource=='cluster':
                for block in [8192,32768,131072]:
                    if block<=length:
                        c=dict(BLOCK=block,options=dict(buffer_size_limit=2048))
                        if c not in configs:configs.append(c)
            successful=[]
            for conf in configs:
                record=dict(resource=resource,config=conf,status='running')
                report['candidates'].append(record);save(out,report)
                try:
                    fn=bind(conf,resource);y.fill_(float('nan'));torch.cuda.synchronize()
                    kernel=fn();torch.cuda.synchronize()
                    assert bool(kernel.metadata.is_sdnn)==(resource=='sdnn')
                    assert kernel.metadata.arch==3
                    exact(y,source_cpu)
                    count=32 if length<2**24 else 4
                    graph=capture(fn,count)
                    quick=measure(graph,count,3);del graph
                    record.update(status='passed',quick=quick)
                    successful.append((quick['gpu_us'],record,fn,kernel))
                except Exception as exc:
                    record.update(status='error',error=str(exc),traceback=traceback.format_exc())
                save(out,report)
            assert successful,resource
            finalists=[]
            for estimate,record,fn,kernel in sorted(successful,key=lambda t:t[0])[:3]:
                count=batch_size(estimate)
                graph=capture(fn,count);timing=measure(graph,count,5);del graph
                record['tuning']=timing
                finalists.append((timing['gpu_us'],record,fn,kernel))
            estimate,record,fn,kernel=min(finalists,key=lambda t:t[0])
            count=batch_size(estimate)
            graph=capture(fn,count)
            winners[resource]=dict(record=record,fn=fn,kernel=kernel,graph=graph,count=count)
            keep_kernel(out,resource,kernel);save(out,report)
        assert digest(x)==report['input_sha256']
        report['best']={r:w['record']['config'] for r,w in winners.items()}
        for order in [['sdnn','cluster'],['cluster','sdnn']]:
            for resource in order:
                w=winners[resource]
                y.fill_(float('nan'));torch.cuda.synchronize();w['graph'].replay();exact(y,source_cpu)
                report['rounds'].append(dict(resource=resource,timing=measure(w['graph'],w['count']),
                    e2e=end_to_end(w['fn'])))
                save(out,report)
        report['resources']={}
        for resource,w in winners.items():
            values=[s for r in report['rounds'] if r['resource']==resource for s in r['timing']['samples_us']]
            e2e=[s for r in report['rounds'] if r['resource']==resource for s in r['e2e']['samples_us']]
            us=statistics.median(values)
            report['resources'][resource]=dict(gpu_us=us,e2e_us=statistics.median(e2e),
                payload_GBps=report['payload_bytes']/us/1000,read_plus_write_GBps=2*report['payload_bytes']/us/1000,
                samples_us=values,config=w['record']['config'])
            if us<30:
                doubled=capture(w['fn'],w['count']*2)
                a=measure(w['graph'],w['count'],3);b=measure(doubled,w['count']*2,3);del doubled
                report['resources'][resource]['calibration']=dict(base=a,doubled=b,ratio=b['gpu_us']/a['gpu_us'])
        source_cpu.mul_(-1).add_(.125);x.copy_(source_cpu);torch.cuda.synchronize()
        for resource,w in winners.items():
            y.fill_(float('nan'));torch.cuda.synchronize();w['graph'].replay()
            report['resources'][resource]['fresh_data_check']=exact(y,source_cpu)
        report['speed_sdnn_div_cluster']=report['resources']['cluster']['gpu_us']/report['resources']['sdnn']['gpu_us']
        report.update(status='complete',finished_at=time.time())
    except Exception as exc:
        report.update(status='failed',error=str(exc),traceback=traceback.format_exc())
        raise
    finally:
        save(out,report)


if __name__=='__main__':main()
