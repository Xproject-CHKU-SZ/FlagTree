#!/usr/bin/env python3
"""Compile and check two opt-in GEMM configurations on real captured PPU inputs.

This is a local correctness experiment, never a performance result or a model
rewrite. Large M retains native fullgraph compiled. No CPU forward is executed.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import sys
import time
import traceback


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--source",type=Path,required=True)
    p.add_argument("--fixtures",type=Path,nargs=2,required=True)
    p.add_argument("--output",type=Path,required=True)
    args=p.parse_args();args.output.mkdir(parents=True,exist_ok=False)
    os.environ.update(FLAGTREE_BACKEND="ppu",TORCHINDUCTOR_WORKER_START="spawn",TORCHINDUCTOR_COMPILE_THREADS="1",
        OMP_NUM_THREADS="1",MKL_NUM_THREADS="1",TRITON_KERNEL_DUMP="0",
        TRITON_CACHE_DIR=str(args.output/"triton-cache"),TORCHINDUCTOR_CACHE_DIR=str(args.output/"inductor-cache"))
    sys.path.insert(0,str(args.source/"python/triton_kernels"))
    report={"status":"failed","scope":"local captured GEMM correctness only; no full-model optimization acceptance",
        "cpu_model_forward":"not_run","performance_acceptance":"not_attempted","cases":[],"started_at":time.time(),
        "physical_device":os.environ.get("CUDA_VISIBLE_DEVICES")}
    (args.output/"command.json").write_text(json.dumps([sys.executable,*sys.argv],indent=2))
    try:
        import numpy as np
        import torch
        from triton_kernels.ppu_observed_gemm import observed_gemm
        from torch._dynamo.utils import counters
        assert torch.cuda.get_device_name(0)=="PPU-ZW810E"
        torch.set_num_threads(1);torch.set_float32_matmul_precision("highest")
        compiled={b:torch.compile(lambda x,w,b=b:observed_gemm(x,w,b),fullgraph=True,dynamic=True) for b in (16,32)}
        native=torch.compile(lambda x,w:torch.mm(x,w),fullgraph=True,dynamic=True)
        outputs={}
        with torch.inference_mode():
            for model_index,path in enumerate(args.fixtures):
                fixture=json.loads(path.read_text());assert fixture["status"]=="passed"
                wp=Path(fixture["weight"]["path"]);assert sha(wp)==fixture["weight"]["sha256"]
                with np.load(wp,allow_pickle=False) as data:
                    weight=torch.from_numpy(data["weight"].copy(order="K")).to("cuda:0")
                assert list(weight.stride())==fixture["weight"]["stride"]
                for probe in fixture["probes"]:
                    archive=Path(probe["fixture"]);assert sha(archive)==probe["fixture_sha256"]
                    assert probe["operator"]=="aten.mm.default", "Do not silently replace Addmm with MM"
                    with np.load(archive,allow_pickle=False) as data:
                        x=torch.from_numpy(data["x"].copy(order="K")).to("cuda:0");reference=data["reference"].copy()
                    assert list(x.stride())==probe["x_stride"]
                    for block in ((16,32) if x.shape[0]<=64 else (None,)):
                        fn=compiled[block] if block is not None else native
                        value=fn(x,weight);torch.cuda.synchronize();actual=value.detach().cpu().numpy()
                        delta=np.abs(actual.astype(np.float64)-reference.astype(np.float64))
                        passed=bool(actual.shape==reference.shape and actual.dtype==reference.dtype and np.isfinite(actual).all()
                            and np.isfinite(reference).all() and np.all(delta<=3e-4+3e-4*np.abs(reference.astype(np.float64))))
                        label=f"m{model_index}-{probe['batch']}x{probe['sequence']}-bm{block}"
                        outputs[label]=actual
                        report["cases"].append({"model_id":fixture["model_id"],"revision":fixture["revision"],"task":fixture["task"],
                            "fixture_report_sha256":sha(path),"input_sha256":probe["fixture_sha256"],"shape_mkn":probe["shape_mkn"],
                            "block_m":block,"route":"experimental_template" if block is not None else "original_compiled",
                            "arithmetic":"tf32x3" if block is not None else "unchanged_native_highest",
                            "passed":passed,"max_abs_error":float(delta.max()),"observed_unique_graphs":counters["stats"]["unique_graphs"]})
                    (args.output/"progress.json").write_text(json.dumps(report,indent=2,allow_nan=False))
        np.savez_compressed(args.output/"outputs.npz",**outputs)
        report.update(status="passed" if all(c["passed"] for c in report["cases"]) else "numerical_candidate_failed",
            output_sha256=sha(args.output/"outputs.npz"),torch=torch.__version__,device=torch.cuda.get_device_name(0),
            source_sha256=sha(args.source/"python/triton_kernels/triton_kernels/ppu_observed_gemm.py"))
    except Exception as exc:
        report.update(error=f"{type(exc).__name__}: {exc}",traceback=traceback.format_exc())
    evidence=[{"path":str(p.relative_to(args.output)),"sha256":sha(p)} for d in ("triton-cache","inductor-cache")
        for p in (args.output/d).rglob("*") if p.is_file() and p.suffix in {".ttir",".ttgir",".llir",".hgbin",".py"}]
    (args.output/"compiler-evidence.json").write_text(json.dumps(evidence,indent=2))
    report.update(finished_at=time.time(),compiler_evidence_sha256=sha(args.output/"compiler-evidence.json"))
    (args.output/"report.json").write_text(json.dumps(report,indent=2,allow_nan=False))
    print(json.dumps({k:report.get(k) for k in ("status","error","performance_acceptance")}),flush=True)
    return 0 if report["status"]=="passed" else 1


if __name__=="__main__":
    raise SystemExit(main())
