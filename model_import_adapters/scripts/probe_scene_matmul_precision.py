#!/usr/bin/env python3
"""Development probe for existing matmul_ogs bias/GELU precision paths.

These synthetic kernel fixtures establish lowering and correctness only. They
are not model acceptance or the formal paired speedup measurement.
"""
import argparse
import json
import os
from pathlib import Path
import sys
import time
import traceback


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--kernel-root", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--mode", choices=("legacy_accurate", "legacy_fast", "explicit_x3"), required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    os.environ.update(FLAGTREE_BACKEND="ppu", TRITON_KERNEL_DUMP="1",
                      TRITON_DUMP_DIR=str(args.output / "dump"), TRITON_CACHE_DIR=str(args.output / "cache"))
    sys.path.insert(0, str(args.kernel_root))
    report = {"status": "failed", "mode": args.mode, "scope": "synthetic_lowering_probe_not_model_acceptance", "cases": []}
    try:
        import torch
        import triton
        import triton.language as tl
        from triton.language.extra.cuda import libdevice
        from triton_kernels.matmul_ogs import matmul_ogs, PrecisionConfig, FusedActivation, FnSpecs
        from triton_kernels.matmul_ogs_details.opt_flags import update_opt_flags_constraints

        @triton.jit
        def gelu_exact(x):
            return 0.5 * x * (1.0 + libdevice.erf(x * 0.7071067811865476))

        assert torch.cuda.get_device_name(0) == "PPU-ZW810E"
        torch.set_float32_matmul_precision("highest")
        torch.manual_seed(0)
        config = PrecisionConfig(allow_tf32=args.mode == "legacy_fast", out_dtype=torch.float32,
                                 **({"input_precision": "tf32x3"} if args.mode == "explicit_x3" else {}))
        update_opt_flags_constraints(dict(block_m=16, block_k=32, split_k=1, is_persistent=False, num_stages=2))
        for m, k, n in [(16, 384, 1536), (48, 768, 3072), (17, 65, 97)]:
            x = torch.randn(m, k, device="cuda", dtype=torch.float32)
            w = (torch.randn(1, n, k, device="cuda", dtype=torch.float32) * 0.02).transpose(-1, -2)
            bias = torch.randn(1, n, device="cuda", dtype=torch.float32) * 0.02
            with torch.inference_mode():
                reference = torch.nn.functional.gelu(torch.addmm(bias[0], x, w[0]), approximate="none")
                forward = lambda: matmul_ogs(x, w, bias, precision_config=config,
                                             fused_activation=FusedActivation(FnSpecs("scene_gelu_exact", gelu_exact, ())))
                start = time.perf_counter(); candidate = forward(); torch.cuda.synchronize()
                first = time.perf_counter() - start
                if hasattr(candidate, "data") and not isinstance(candidate, torch.Tensor):
                    candidate = candidate.data
                if isinstance(candidate, tuple):
                    candidate = candidate[0]
                diff = (candidate - reference).abs()
                passed = candidate.shape == reference.shape and candidate.dtype == reference.dtype and bool(torch.isfinite(candidate).all()) and bool((diff <= 3e-4 + 3e-4 * reference.abs()).all())
                for _ in range(20):
                    forward()
                torch.cuda.synchronize()
                samples = []
                for _ in range(10):
                    start = time.perf_counter(); forward(); torch.cuda.synchronize()
                    samples.append((time.perf_counter()-start)*1000)
                item = dict(shape_mkn=[m,k,n], first_call_s=first, max_abs_error=float(diff.max()),
                            passed=passed, samples_ms=samples, device=torch.cuda.get_device_name(0))
                report["cases"].append(item)
                print(json.dumps(item), flush=True)
        report["status"] = "passed" if all(x["passed"] for x in report["cases"]) else "precision_failed"
        report["stage_suffixes"] = sorted({p.suffix for p in (args.output / "dump").rglob("*") if p.suffix in {".ttir", ".ttgir", ".llir", ".hgbin"}})
    except Exception as exc:
        report.update(error=f"{type(exc).__name__}: {exc}", traceback=traceback.format_exc())
    (args.output / "report.json").write_text(json.dumps(report, indent=2, allow_nan=False) + "\n")
    print(json.dumps({k:v for k,v in report.items() if k not in {"cases","traceback"}}), flush=True)
    return 0 if report["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
