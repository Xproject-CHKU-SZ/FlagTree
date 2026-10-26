#!/usr/bin/env python3
"""Verify bounded PPU replay with five frozen task probes; no performance claim.

B0 peak is recorded BEFORE any graph capture. Candidate peak includes all graph
pools. The historical +1MiB reference is recorded but is not an acceptance
veto. It is never hidden by resetting a peak after preallocating graph storage.
Timing acceptance remains a separate step. Actual allocation errors propagate
to the failed report; record-only does not suppress OOM.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import sys
import time
import traceback
from memory_acceptance import MEMORY_POLICY


def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def save(path,value):
    path.write_text(json.dumps(value,indent=2,allow_nan=False)+"\n",encoding="utf-8")


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--source",type=Path,required=True)
    p.add_argument("--case",type=Path,required=True)
    p.add_argument("--output",type=Path,required=True)
    p.add_argument("--policy",type=Path,help="Optional independently qualified per-model exact replay policy")
    p.add_argument("--prepare-capture-constants",action="store_true",help="Explicit frozen scalar copy-edge preparation; included in actual policy identity")
    args=p.parse_args();args.output.mkdir(parents=True,exist_ok=False)
    os.environ.update(FLAGTREE_BACKEND="ppu",TORCHINDUCTOR_WORKER_START="spawn",TORCHINDUCTOR_COMPILE_THREADS="1",
        OMP_NUM_THREADS="1",MKL_NUM_THREADS="1",TRITON_KERNEL_DUMP="0",
        TRITON_CACHE_DIR=str(args.output/"triton-cache"),TORCHINDUCTOR_CACHE_DIR=str(args.output/"inductor-cache"))
    sys.path.insert(0,str(args.source/"model_import_adapters/src"))
    report={"status":"failed","cpu_model_forward":"not_run","performance_acceptance":"not_attempted",
        "scope":"complete accepted PT2 task; exact shape replay correctness and total Torch allocation audit",
        "physical_device":os.environ.get("CUDA_VISIBLE_DEVICES"),"started_at":time.time(),"probes":[]}
    save(args.output/"command.json",[sys.executable,*sys.argv])
    try:
        import torch
        import numpy as np
        import triton
        from torch._dynamo.utils import counters
        from model_import_adapters.compiled_execution import _retarget_factory_devices
        from model_import_adapters.graph_replay import ExactReplayCache
        assert torch.cuda.get_device_name(0)=="PPU-ZW810E"
        torch.set_num_threads(1);torch.set_float32_matmul_precision("highest")
        saved=json.loads((args.case/"report.json").read_text());protocol=json.loads((args.case/"task-protocol.json").read_text())
        manifest=json.loads((args.case/"artifacts/manifest.json").read_text());pt2=args.case/"artifacts/model.core_aten.pt2"
        assert saved["status"]=="passed" and sha(pt2)==manifest["artifact"]["sha256"]
        assert len(saved["probes"])==5 and {(p["batch"],p["sequence"]) for p in saved["probes"]}=={(1,8),(2,24),(4,64),(2,8),(1,64)}
        module=torch.export.load(pt2).module().to("cuda:0");report["retargeted_factories"]=_retarget_factory_devices(module,"cuda:0")
        prepared_records=None
        if args.prepare_capture_constants:
            from model_import_adapters.capture_constants import prepare_capture_constants
            prepared_records=prepare_capture_constants(module,"cuda:0")
            report.update(capture_constants=prepared_records,
                capture_constants_sha256=sha(args.source/'model_import_adapters/src/model_import_adapters/capture_constants.py'))
        compiled=torch.compile(module,fullgraph=True,dynamic=True,options=protocol.get("compile_options",{}))
        loaded=[]
        for probe in saved["probes"]:
            path=args.case/Path(probe["archive"]).name;assert sha(path)==probe["sha256"]
            with np.load(path,allow_pickle=False) as data:
                inputs=tuple(torch.from_numpy(data[k].copy()).to("cuda:0") for k in probe["input_keys"])
                reference=data["original_output"].copy()
            loaded.append((probe,inputs,reference))
        def tensor(value):
            leaves=torch.utils._pytree.tree_leaves(value);assert len(leaves)==1 and isinstance(leaves[0],torch.Tensor)
            return leaves[0]
        def array(value):return tensor(value).detach().cpu().numpy().copy()
        def check(value,ref):
            actual=array(value);assert actual.shape==ref.shape and actual.dtype==ref.dtype
            delta=np.abs(actual.astype(np.float64)-ref.astype(np.float64))
            assert np.isfinite(actual).all() and np.isfinite(ref).all() and np.all(delta<=3e-4+3e-4*np.abs(ref.astype(np.float64)))
            return float(delta.max())
        params=lambda:tuple(module.parameters())+tuple(module.buffers())
        identity={"model_id":saved["model_id"],"revision":saved["revision"],"task":protocol["task"],
            "pt2_sha256":sha(pt2),"source_sha256":sha(args.source/"model_import_adapters/src/model_import_adapters/graph_replay.py"),
            "compiler_sha256":sha(Path(triton.__file__).parent/"_C/libtriton.so"),"precision":"FP32/highest",
            "target":"PPU-ZW810E","runtime":f"torch={torch.__version__};triton={triton.__version__}"}
        # Only two fixed exact shapes, not two shape-range buckets.
        chosen=[loaded[0],loaded[1]]
        allowed=[tuple(tuple(x.shape) for x in item[1]) for item in loaded]
        if args.policy:
            from model_import_adapters.replay_policy import PolicyReplayRouter,runtime_identity
            policy_identity=runtime_identity(model_id=saved['model_id'],revision=saved['revision'],task=protocol['task'],
                pt2_sha256=identity['pt2_sha256'],protocol_sha256=sha(args.case/'task-protocol.json'),
                compile_options=protocol.get('compile_options',{}))
            if prepared_records is not None:
                from model_import_adapters.prepared_policy import bind_preprocessing
                policy_identity=bind_preprocessing(policy_identity,prepared_records,report['capture_constants_sha256'])
            cache=PolicyReplayRouter(compiled,identity=policy_identity,policy_path=args.policy,frozen_tensors=params,enabled=True)
            assert cache.policy_status=='loaded',cache.policy_status
            report.update(policy_sha256=sha(args.policy),policy_identity=policy_identity)
        else:
            cache=ExactReplayCache(compiled,identity=identity,frozen_tensors=params,allowed_shapes=allowed,enabled=True)
        outputs={}
        with torch.inference_mode():
            for _,inputs,reference in loaded:
                value=compiled(*inputs);check(value,reference);del value
            torch.cuda.synchronize()
            torch.cuda.reset_peak_memory_stats()
            baseline_live=torch.cuda.memory_allocated()
            baseline_reserved=torch.cuda.memory_reserved()
            # Explicit output lifetime matches one retained prior return plus
            # the new return in both paths. No outputs held across all probes.
            for _,inputs,reference in loaded:
                old=compiled(*inputs);value=compiled(*inputs);check(value,reference);del value,old
            torch.cuda.synchronize()
            baseline_peak=torch.cuda.max_memory_allocated()
            baseline_reserved_peak=torch.cuda.max_memory_reserved()
            torch.cuda.reset_peak_memory_stats()
            preparations=[cache.prepare(*item[1]) for item in chosen]
            assert all(x["prepared"] for x in preparations),preparations
            third=cache.prepare(*loaded[3][1]);assert not third["prepared"] and third["reason"]==("metadata_not_in_policy" if args.policy else "entry_budget_exhausted")
            for index,(probe,inputs,reference) in enumerate(loaded):
                old=cache(*inputs);value=cache(*inputs);error=check(value,reference)
                outputs[f"probe_{index}"]=array(value)
                report["probes"].append({"batch":probe["batch"],"sequence":probe["sequence"],"input_sha256":probe["sha256"],
                    "max_abs_error":error,"route":dict(cache.last_route)})
                expected="graph_replay" if index in (0,1) else "original_compiled"
                assert cache.last_route["route"]==expected
                del value,old
            probe,inputs,reference=loaded[1]
            previous=cache(*inputs);previous_array=array(previous)
            reordered=tuple(x.flip(0) for x in inputs)
            actual=cache(*reordered);expected=compiled(*reordered);changed_error=check(actual,array(expected))
            old_error=check(previous,previous_array)
            del previous,actual,expected
            trace=[];before=counters["stats"]["unique_graphs"]
            for index in [0,1,4,3,2,1,0,2,3,4]*2:
                _,inputs,reference=loaded[index];value=cache(*inputs);error=check(value,reference)
                trace.append({"index":index,"route":dict(cache.last_route),"max_abs_error":error});del value
            torch.cuda.synchronize();after=counters["stats"]["unique_graphs"];assert before==after
            candidate_peak=torch.cuda.max_memory_allocated();candidate_reserved_peak=torch.cuda.max_memory_reserved()
            candidate_live=torch.cuda.memory_allocated()
            owner_snapshot=cache.snapshot()
            alternate_stream=torch.cuda.Stream()
            alternate_stream.wait_stream(torch.cuda.current_stream())
            with torch.cuda.stream(alternate_stream):
                value=cache(*loaded[0][1])
                stream_route=dict(cache.last_route)
            torch.cuda.current_stream().wait_stream(alternate_stream)
            check(value,loaded[0][2]);assert stream_route["reason"]=="different_owner_stream";del value
            # Different stride must not use the cached static-input layout.
            source=loaded[1][1];strided=[]
            for x in source:
                wide=torch.empty((x.shape[0],x.shape[1]*2),dtype=x.dtype,device=x.device);wide[:,::2]=x;strided.append(wide[:,::2])
            value=cache(*strided);check(value,array(compiled(*strided)));assert cache.last_route["route"]=="original_compiled"
            stride_route=dict(cache.last_route);del value
            cache.disable();value=cache(*source);check(value,loaded[1][2]);assert cache.last_route["reason"]=="policy_disabled"
            rollback_route=dict(cache.last_route);del value
            # A no-op value mutation still increments weight version. A new
            # independent cache must then invalidate its graph, never replay.
            invalidation=ExactReplayCache(compiled,identity=identity,frozen_tensors=params,allowed_shapes=allowed,enabled=True)
            assert invalidation.prepare(*loaded[0][1])["prepared"]
            weight=next(p for p in module.parameters() if p.is_floating_point())
            version_before=weight._version;weight.add_(0);assert weight._version>version_before
            value=invalidation(*loaded[0][1]);check(value,loaded[0][2]);assert invalidation.last_route["reason"]=="model_state_changed"
            invalidation_route=dict(invalidation.last_route);del value
            np.savez_compressed(args.output/"outputs.npz",**outputs)
            report.update(status="passed",model_id=saved["model_id"],revision=saved["revision"],task=protocol["task"],identity=identity,
                preparations=preparations,third_entry=third,cache=owner_snapshot,trace=trace,mixed_unique_graphs=[before,after],
                changed_input_max_abs_error=changed_error,previous_output_max_abs_error=old_error,stride_miss=stride_route,
                rollback=rollback_route,weight_version_invalidation=invalidation_route,output_sha256=sha(args.output/"outputs.npz"),
                alternate_stream=stream_route,
                memory={"B0_live_before_captures":baseline_live,"B0_peak":baseline_peak,"B0_reserved_before_captures":baseline_reserved,
                    "B0_reserved_peak":baseline_reserved_peak,"C1_live_with_two_graphs":candidate_live,"C1_peak_including_captures_and_reordered_checks":candidate_peak,
                    "C1_reserved_peak":candidate_reserved_peak,"extra_total_peak_bytes":candidate_peak-baseline_peak,
                    "fixed_extra_peak_budget_bytes":1024*1024,"total_peak_resource_passed":candidate_peak<=baseline_peak+1024*1024,
                    "memory_policy":MEMORY_POLICY,"memory_gate_passed":True,
                    "memory_within_reference_budget":candidate_peak<=baseline_peak+1024*1024,
                    "scope":"same resident inputs and model; B0 before graph storage; C1 includes graph pools/copies/clones; no claim about non-Torch driver allocations"})
    except Exception as exc:
        report.update(error=f"{type(exc).__name__}: {exc}",traceback=traceback.format_exc())
    report["finished_at"]=time.time();save(args.output/"report.json",report)
    print(json.dumps({k:report.get(k) for k in ("status","error","memory")}),flush=True)
    return 0 if report["status"]=="passed" else 1


if __name__=="__main__":raise SystemExit(main())
