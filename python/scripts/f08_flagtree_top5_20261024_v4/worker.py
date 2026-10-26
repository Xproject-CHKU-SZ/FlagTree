"""One guarded TOP5 process: gate, isolated measurement, or BGE peak diagnostic."""
from __future__ import annotations
import argparse
import json
import os
from pathlib import Path
import time
import traceback
from support import (ARMS,PROTOCOL,fingerprint,identity,load_bridge,old_worker,
                     read_cards,require,require_idle,require_mapping,same,save,sha)


def compile_mul(bridge,selected,directory):
    import torch
    from mul_kernel import compile_call
    # Keep all temporary compile inputs in this helper, never in timed rounds.
    calls,evidence={},{}
    for n,info in selected.items():
        x=torch.zeros(info['shape'],dtype=torch.float32,device='cuda:0')
        calls[n],evidence[n]=compile_call(x,directory/n)
    return calls,evidence


def qwen_measure(bridge,args,case,gate):
    import torch
    from graph import graph_identity,digest
    from execution import run_mul
    from qwen import build
    gate_sha=sha(args.gate)
    wrapper,module,values,_users,_kinds,pipeline=build(case,args.output_dir)
    require(graph_identity(module.graph)==gate['graph_sha256'] and
            bridge.protected_digest(values)==gate['input_sha256'],'Qwen graph/input/parameters changed')
    calls,compiler=compile_mul(bridge,gate['selected'],args.output_dir/'compiler')
    require(bridge.compiler_identity(compiler)==gate['compiler_set_sha256'],'Qwen compiler identity changed')
    def batch_once(batch,collect):
        output=run_mul(module,batch,calls if args.mode!='torch' else {},
                       gate['selected'] if args.mode!='torch' else {},
                       inplace=args.mode=='flagtree-inplace')
        return digest(output) if collect else None
    def once(collect=False):return [batch_once(batch,collect) for batch in values]
    start=time.perf_counter();once();torch.cuda.synchronize();cold=time.perf_counter()-start
    checksum=fingerprint(once(True))
    for _ in range(5):once();torch.cuda.synchronize()
    warm={'allocated_bytes':torch.cuda.memory_allocated(),'reserved_bytes':torch.cuda.memory_reserved()}
    torch.cuda.reset_peak_memory_stats();samples=[]
    for _ in range(30):
        torch.cuda.synchronize();start=time.perf_counter();once();torch.cuda.synchronize()
        samples.append(time.perf_counter()-start)
    memory={'peak_allocated_bytes':torch.cuda.max_memory_allocated(),
            'peak_reserved_bytes':torch.cuda.max_memory_reserved()}
    require(fingerprint(once(True))==checksum and bridge.protected_digest(values)==gate['input_sha256'],
            'Qwen output or protected data changed')
    require(identity(bridge,args)==gate['identity_sha256'] and sha(args.gate)==gate_sha,'Qwen identity drift')
    return {'status':'passed','arm':args.mode,'rep':args.rep,'physical_card':args.physical_card,
        'case_sha256':fingerprint(case),'gate_sha256':gate_sha,'identity_sha256':gate['identity_sha256'],
        'compiler_set_sha256':gate['compiler_set_sha256'],'output_sha256':checksum,
        'protocol_sha256':fingerprint(PROTOCOL),'protocol':PROTOCOL,'samples_s':samples,
        'post_warmup':warm,'memory':memory,'cold_graph_s':cold,'longrun_rounds':0,'pipeline':pipeline,
        'scope':'same multiply kernel out vs in-place on SiLU result; no SiLU fusion/full-model/STS claim'}


def bge_diagnostic(bridge,args,case,gate):
    import torch
    from graph import graph_identity,run_graph,digest
    from execution import diagnose
    gate_sha=sha(args.gate)
    wrapper,module,values,_inputs,_kinds,pipeline=bridge.build(case)
    require(graph_identity(module.graph)==gate['graph_sha256'] and
            bridge.protected_digest(values)==gate['input_sha256'],'BGE diagnostic graph/input changed')
    def compile_only():
        samples={n:torch.zeros(info['shape'],dtype=torch.float32,device='cuda:0')
                 for n,info in gate['selected'].items()}
        return bridge.compile_selected(gate['selected'],samples,args.output_dir/'compiler')
    calls,compiler=compile_only()
    require(bridge.compiler_identity(compiler)==gate['compiler_set_sha256'],'BGE diagnostic kernel changed')
    inplace=args.mode=='diagnose-inplace'
    def normal_once(collect=False):
        output=run_graph(module,values[0],calls,inplace=inplace)
        return digest(output) if collect else None
    expected=normal_once(True)
    for _ in range(5):normal_once();torch.cuda.synchronize()
    plan=json.loads((args.gate.parent/'model-plan.json').read_text())
    result=diagnose(module,values[0],calls,inplace,plan)
    require(result['output_sha256']==expected and bridge.protected_digest(values)==gate['input_sha256'],
            'diagnostic output/protected data changed')
    require(sha(args.gate)==gate_sha,'gate changed during diagnostic')
    save(args.output_dir/'node-events.json',result)
    return {'status':'passed','mode':args.mode,'physical_card':args.physical_card,'gate_sha256':gate_sha,
        'compiler_set_sha256':gate['compiler_set_sha256'],'output_sha256':expected,'batch_index':0,
        'diagnostic_peak_allocated_bytes':result['diagnostic_peak_allocated_bytes'],
        'top_peak_nodes':[{'node':r['node'],'operation':r['operation'],
                          'node_peak_allocated_bytes':r['node_peak_allocated_bytes'],
                          'within_node_excess_over_endpoints_bytes':r['within_node_excess_over_endpoints_bytes']}
                         for r in result['top_peak_nodes']], 'pipeline':pipeline,
        'boundary':result['boundary']}


def qwen_diagnostic(bridge, args, case, gate):
    """Metadata-only observation using the real Mul helper, separate from timing."""
    import torch
    from graph import graph_identity, digest
    from execution import run_mul
    from peak_diagnostics import diagnose_batch
    from qwen import build
    gate_sha = sha(args.gate)
    plan_path = args.gate.parent / 'model-plan.json'
    plan_sha = sha(plan_path)
    wrapper, module, values, _users, _kinds, pipeline = build(case, args.output_dir)
    require(graph_identity(module.graph) == gate['graph_sha256'] and
            bridge.protected_digest(values) == gate['input_sha256'], 'Qwen diagnostic graph/input drift')
    require(len(values) == 2, 'Qwen diagnostic requires both B32 batches')
    calls, compiler = compile_mul(bridge, gate['selected'], args.output_dir / 'compiler')
    require(bridge.compiler_identity(compiler) == gate['compiler_set_sha256'], 'diagnostic compiler drift')
    inplace = args.mode == 'diagnose-inplace'

    def normal_batch(batch, collect=False):
        output = run_mul(module, batch, calls, gate['selected'], inplace=inplace)
        return digest(output) if collect else None

    expected = [normal_batch(batch, True) for batch in values]
    for _ in range(5):
        for batch in values:
            normal_batch(batch)
        torch.cuda.synchronize()
    plan = json.loads(plan_path.read_text())
    batches = [diagnose_batch(module, batch, calls, gate['selected'], inplace, plan,
                             torch.cuda, batch_index=i) for i, batch in enumerate(values)]
    require([b['output_sha256'] for b in batches] == expected and
            bridge.protected_digest(values) == gate['input_sha256'], 'diagnostic output/protected data drift')
    require(sha(args.gate) == gate_sha and sha(plan_path) == plan_sha, 'gate/plan changed during diagnostic')
    payload = {'batches': batches}
    save(args.output_dir / 'diagnostic.json', payload)
    return {'status': 'passed', 'mode': args.mode, 'rep': args.rep,
            'physical_card': args.physical_card, 'case_sha256': fingerprint(case),
            'graph_sha256': gate['graph_sha256'], 'gate_sha256': gate_sha,
            'identity_sha256': gate['identity_sha256'], 'compiler_set_sha256': gate['compiler_set_sha256'],
            'output_sha256': fingerprint(expected), 'protocol_sha256': fingerprint(PROTOCOL),
            'diagnostic_protocol': {'batches': 2, 'per_node_synchronize': True, 'timing_claim': False},
            'diagnostic_file': 'diagnostic.json', 'diagnostic_sha256': sha(args.output_dir / 'diagnostic.json'),
            'pipeline': pipeline, 'boundary': batches[0]['boundary']}


def main():
    p=argparse.ArgumentParser(allow_abbrev=False)
    p.add_argument('--case',type=Path,required=True);p.add_argument('--output-dir',type=Path,required=True)
    p.add_argument('--bridge-dir',type=Path,required=True);p.add_argument('--legality',type=Path,required=True)
    p.add_argument('--physical-card',type=int,required=True);p.add_argument('--idle-mib-max',type=int,default=18)
    p.add_argument('--mode',choices=('gate',*ARMS,'diagnose-out','diagnose-inplace'),required=True)
    p.add_argument('--gate',type=Path);p.add_argument('--rep',type=int,default=0)
    args=p.parse_args();args.longrun_rounds=0
    require(args.physical_card>=0 and 0<=args.idle_mib_max<=18,'invalid device/idle limit')
    require(args.mode=='gate' or args.gate is not None,'gate required')
    require(args.mode not in ARMS or args.rep>=1,'positive repetition required')
    args.output_dir.mkdir(parents=True,exist_ok=False)
    try:
        require(os.environ.get('FLAGTREE_BACKEND')=='ppu' and
                os.environ.get('CUDA_VISIBLE_DEVICES')==str(args.physical_card),'device visibility mismatch')
        raw,cards=read_cards();save(args.output_dir/'preflight.json',{'raw':raw,'cards':cards})
        require_idle(cards,args.physical_card,args.idle_mib_max)
        import torch
        torch.manual_seed(0);torch.set_grad_enabled(False)
        require(torch.cuda.is_available() and torch.cuda.device_count()==1 and
                'PPU' in torch.cuda.get_device_name(0),'expected one masked PPU')
        probe=torch.zeros(1024,device='cuda:0');torch.cuda.synchronize()
        raw,cards=read_cards();require_mapping(cards,args.physical_card,os.getpid())
        save(args.output_dir/'mapping.json',{'raw':raw,'cards':cards,'pid':os.getpid(),
                                            'physical_card':args.physical_card,'logical_device':0})
        del probe
        bridge=load_bridge(args.bridge_dir);initial=identity(bridge,args)
        case=json.loads(args.case.read_text())
        require(case['model_id'] in ('BAAI/bge-m3','Qwen/Qwen3-Embedding-0.6B'),'outside current TOP5 scope')
        old=old_worker()
        if args.mode=='gate':
            if case['model_id']=='BAAI/bge-m3':result=old.fresh_gate(bridge,args,case)
            else:
                from qwen import gate
                result=gate(bridge,args,case)
            require(result['status']=='passed','TOP5 gate not passed')
        else:
            gate=json.loads(args.gate.read_text())
            require(gate['status']=='passed' and gate['case_sha256']==fingerprint(case) and
                    gate['top5_identity_sha256']==initial,'TOP5 gate/case/environment mismatch')
            if args.mode.startswith('diagnose-'):
                if case['model_id']=='Qwen/Qwen3-Embedding-0.6B':
                    result=qwen_diagnostic(bridge,args,case,gate)
                else:result=bge_diagnostic(bridge,args,case,gate)
            elif case['model_id']=='BAAI/bge-m3':result=old.measured(bridge,args,case)
            else:result=qwen_measure(bridge,args,case,gate)
            result['graph_sha256']=gate['graph_sha256']
        result['model_plan_sha256']=sha((args.output_dir if args.mode=='gate' else args.gate.parent)/'model-plan.json')
        require(identity(bridge,args)==initial,'TOP5 source/environment changed in worker')
        result['top5_identity_sha256']=initial
        raw,cards=read_cards();require_mapping(cards,args.physical_card,os.getpid())
        save(args.output_dir/'exit-mapping.json',{'raw':raw,'cards':cards,'pid':os.getpid()})
        save(args.output_dir/'result.json',result)
        return 0
    except Exception as error:
        save(args.output_dir/'failure.json',{'error':str(error),'traceback':traceback.format_exc(),
             'no_native_or_GELU_fallback_for_failed_Qwen_FlagTree':True})
        return 2


if __name__=='__main__':raise SystemExit(main())
