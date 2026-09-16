#!/usr/bin/env python3
"""回读一个Core ATen统一图并通过torch.compile在XPU上执行。"""

from __future__ import annotations

import argparse
import json
import os
from pathlib import Path

from model_import_adapters.compiled_execution import run_exported_program_on_device


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--artifact-dir", type=Path, required=True)
    parser.add_argument("--output-dir", type=Path)
    parser.add_argument("--device", default="cuda:0")
    parser.add_argument("--atol", type=float, default=3e-4)
    parser.add_argument("--rtol", type=float, default=3e-4)
    args = parser.parse_args()

    artifact_dir = args.artifact_dir.resolve()
    output_dir = (args.output_dir or artifact_dir / "xpu_execution").resolve()
    output_dir.mkdir(parents=True, exist_ok=True)
    manifest_path = artifact_dir / "manifest.json"
    manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
    input_archive = manifest["input_archive"]

    os.environ.setdefault("TRITON_KERNEL_DUMP", "1")
    os.environ["TRITON_DUMP_DIR"] = str(output_dir / "triton-dump")
    os.environ["TORCHINDUCTOR_CACHE_DIR"] = str(output_dir / "inductor-cache")
    os.environ.setdefault("TORCH_COMPILE_DEBUG", "1")

    report = run_exported_program_on_device(
        artifact_dir / "model.core_aten.pt2",
        input_archive["path"],
        input_archive["schema"],
        output_dir,
        device=args.device,
        fullgraph=True,
        atol=args.atol,
        rtol=args.rtol,
    )
    report["unified_manifest"] = {
        "path": str(manifest_path),
        "source": manifest["source"],
        "dialect": manifest["dialect"],
    }
    report_path = output_dir / "compiled_xpu_report.json"
    report_path.write_text(
        json.dumps(report, ensure_ascii=False, indent=2),
        encoding="utf-8",
    )
    print(json.dumps(report, ensure_ascii=False, indent=2))
    print(f"REPORT={report_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
