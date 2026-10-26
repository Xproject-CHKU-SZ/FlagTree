"""Guarded single PPU process: fresh gate or exactly one normal performance arm."""
import argparse
import json
import os
from pathlib import Path
import time
import traceback
from rotary_contracts import ARMS, PROTOCOL, require, save, sha, fingerprint
from bootstrap import HERE, REPO, helpers, identity, verify_dependencies, verify_manifest, driver_identity


def measured(bridge,args,case,gate):
    import torch
    from qwen import build
    from graph import graph_identity,digest
    from rotary_execution import prepare,run
    from rotary_gate import compile_sets
    gate_sha = sha(args.gate)
    wrapper,module,values,_users,_kinds,pipeline = build(case,args.output_dir)
    require(graph_identity(module.graph)==gate['graph_sha256'] and
            bridge.protected_digest(values)==gate['input_sha256'],'measurement graph/input changed')
    baseline,candidate = prepare(module,{}),prepare(module,gate['rotary_selected'])
    contract = {'original_graph_sha256':gate['graph_sha256'],'baseline':baseline['rows'],
        'candidate':candidate['rows'],'rotary':gate['rotary_selected'],
        'output_policy':'independent dense; never requests inplace authorization'}
    require(fingerprint(contract)==gate['execution_contract_sha256'],'execution contract drift')
    # Both arms compile/launch BOTH sets in setup, so compiler identities/cache setup match.
    # Only candidate calls rotary in its actual measured graph. Closures retain no inputs.
    mlp,rotary,code = compile_sets(gate['mlp_selected'],gate['rotary_selected'],args.output_dir/'compiler')
    compiler_sha = fingerprint({k:bridge.compiler_identity(v) for k,v in code.items()})
    require(compiler_sha==gate['compiler_set_sha256'],'measurement compiler identity drift')
    optimized = args.mode == ARMS[1]
    prepared = candidate if optimized else baseline

    def batch_once(batch,collect):
        output = run(prepared,batch,mlp,gate['mlp_selected'],rotary if optimized else {})
        return digest(output) if collect else None

    def once(collect=False):
        return [batch_once(batch,collect) for batch in values]

    start = time.perf_counter(); once(); torch.cuda.synchronize()
    cold = time.perf_counter()-start
    checksum = fingerprint(once(True))
    require(checksum == gate['output_sha256'],'normal output differs from fresh gate')
    for _ in range(5): once(); torch.cuda.synchronize()
    warm = {'allocated_bytes':torch.cuda.memory_allocated(),'reserved_bytes':torch.cuda.memory_reserved()}
    torch.cuda.reset_peak_memory_stats()
    samples = []
    for _ in range(30):
        torch.cuda.synchronize(); start=time.perf_counter()
        once(); torch.cuda.synchronize(); samples.append(time.perf_counter()-start)
    # Read peaks before post-measurement digests/protection checks allocate temporary buffers.
    memory = {'peak_allocated_bytes':torch.cuda.max_memory_allocated(),
              'peak_reserved_bytes':torch.cuda.max_memory_reserved()}
    require(fingerprint(once(True))==checksum and bridge.protected_digest(values)==gate['input_sha256'],
            'output/parameters/input changed during measurements')
    require(sha(args.gate)==gate_sha,'gate file changed')
    return {'status':'passed','arm':args.mode,'rep':args.rep,'physical_card':args.physical_card,
        'gate_sha256':gate_sha,'case_sha256':fingerprint(case),'graph_sha256':gate['graph_sha256'],
        'execution_contract_sha256':gate['execution_contract_sha256'],'compiler_set_sha256':compiler_sha,
        'output_sha256':checksum,'samples_s':samples,'protocol':PROTOCOL,'protocol_sha256':fingerprint(PROTOCOL),
        'memory':memory,'post_warmup':warm,'cold_graph_s':cold,'pipeline':pipeline,
        'actual_measured_rotary_calls_per_batch':28 if optimized else 0,
        'call_count_basis':'validated fixed prepared execution schedule, not timed instrumentation',
        'scope':'new rotary versus same-framework existing MLP inplace baseline; not whole-model FlagTree'}


def main():
    p=argparse.ArgumentParser(allow_abbrev=False)
    p.add_argument('--case',type=Path,required=True);p.add_argument('--output-dir',type=Path,required=True)
    p.add_argument('--physical-card',type=int,required=True);p.add_argument('--idle-mib-max',type=int,default=18)
    p.add_argument('--mode',choices=('gate',*ARMS),required=True);p.add_argument('--gate',type=Path)
    p.add_argument('--rep',type=int,default=0)
    p.add_argument('--bridge-dir',type=Path,default=HERE.parent/'f08_flagtree_eval')
    p.add_argument('--legality',type=Path,default=REPO/'python/flagtree/memory_planner/inplace_legality.py')
    args=p.parse_args()
    require(args.physical_card>=0 and 0<=args.idle_mib_max<=18,'invalid device/idle limit')
    require(args.mode=='gate' or (args.gate is not None and args.rep in (1,2,3)), 'missing gate/repetition')
    args.output_dir.mkdir(parents=True,exist_ok=False)
    try:
        verify_manifest(HERE);verify_dependencies()
        require(args.bridge_dir.resolve()==(HERE.parent/'f08_flagtree_eval').resolve() and
                args.legality.resolve()==(REPO/'python/flagtree/memory_planner/inplace_legality.py').resolve(),
                'unverified bridge/legality override')
        support=helpers()
        require(os.environ.get('FLAGTREE_BACKEND')=='ppu' and
                os.environ.get('CUDA_VISIBLE_DEVICES')==str(args.physical_card),'PPU visibility mismatch')
        raw,cards=support.read_cards();save(args.output_dir/'preflight.json',{'raw':raw,'cards':cards})
        support.require_idle(cards,args.physical_card,args.idle_mib_max)
        # Accelerator libraries only after explicit device preflight.
        import torch
        torch.manual_seed(0);torch.set_grad_enabled(False)
        require(torch.cuda.is_available() and torch.cuda.device_count()==1
                and 'PPU' in torch.cuda.get_device_name(0),'expected one masked PPU')
        probe=torch.zeros(1024,device='cuda:0');torch.cuda.synchronize()
        raw,cards=support.read_cards();support.require_mapping(cards,args.physical_card,os.getpid())
        save(args.output_dir/'mapping.json',{'raw':raw,'cards':cards,'pid':os.getpid(),
                                          'physical_card':args.physical_card,'logical_device':0})
        del probe
        bridge=support.load_bridge(args.bridge_dir)
        save(args.output_dir/'environment.json',{'versions_and_sources':bridge.environment(),
                                               'ppu_driver':driver_identity()})
        initial=identity(bridge,args)
        case=json.loads(args.case.read_text());pins=json.loads((HERE/'ROTARY-PINS.json').read_text())
        require(fingerprint(case)==pins['case_sha256'],'fixed case changed')
        if args.mode=='gate':
            from rotary_gate import gate
            result=gate(bridge,args,case)
        else:
            gate=json.loads(args.gate.read_text())
            require(gate['status']=='passed' and gate['identity_sha256']==initial
                    and gate['case_sha256']==fingerprint(case),'gate/environment/case mismatch')
            result=measured(bridge,args,case,gate)
        require(identity(bridge,args)==initial,'source/environment changed during worker')
        result['identity_sha256']=initial
        result['physical_card']=args.physical_card
        raw,cards=support.read_cards();support.require_mapping(cards,args.physical_card,os.getpid())
        save(args.output_dir/'exit-mapping.json',{'raw':raw,'cards':cards,'pid':os.getpid()})
        save(args.output_dir/'result.json',result)
        return 0
    except Exception as error:
        save(args.output_dir/'failure.json',{'error':str(error),'traceback':traceback.format_exc(),
             'no_fallback_no_relaxed_precision':True})
        return 2


if __name__=='__main__':raise SystemExit(main())
