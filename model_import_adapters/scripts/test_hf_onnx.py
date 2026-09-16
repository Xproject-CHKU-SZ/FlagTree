#!/usr/bin/env python3
"""下载并测试Hugging Face上的小型ONNX模型。"""

from __future__ import annotations

import argparse
import json
from pathlib import Path

from model_import_adapters.hf_fixtures import HF_REPO_ID, HF_REVISION, download_onnx_model
from model_import_adapters.onnx_adapter import OnnxAdapter, OnnxAdapterError, outputs_report


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--work-dir", type=Path, default=Path("artifacts/onnx"))
    parser.add_argument("--repo-id", default=HF_REPO_ID)
    parser.add_argument("--revision", default=HF_REVISION)
    parser.add_argument("--model-file", default="onnx/model.onnx")
    parser.add_argument("--try-torch", action="store_true")
    parser.add_argument("--require-torch", action="store_true")
    parser.add_argument("--torch-device", default="cpu")
    parser.add_argument("--torch-compile", action="store_true")
    args = parser.parse_args()
    args.work_dir.mkdir(parents=True, exist_ok=True)

    model_path = download_onnx_model(
        args.work_dir / "huggingface",
        repo_id=args.repo_id,
        revision=args.revision,
        filename=args.model_file,
    )
    adapter = OnnxAdapter(model_path)
    adapter.check()
    adapter.infer_shapes()
    inferred_path, summary_path = adapter.save_artifacts(args.work_dir / "normalized")
    output_names, outputs, inputs = adapter.run_reference()

    report = {
        "status": "passed",
        "source": {
            "repo_id": args.repo_id,
            "revision": args.revision,
            "file": args.model_file,
            "local_path": str(model_path),
        },
        "onnx_import": {
            "status": "passed",
            "inferred_model": str(inferred_path),
            "summary": str(summary_path),
            "inputs": [
                {"name": name, "shape": list(value.shape), "dtype": str(value.dtype)}
                for name, value in inputs.items()
            ],
            "outputs": outputs_report(output_names, outputs),
        },
        "onnx_to_torch": {"status": "not_requested"},
    }

    if args.try_torch or args.require_torch:
        try:
            report["onnx_to_torch"] = adapter.compare_with_torch(
                inputs,
                device=args.torch_device,
                compile_model=args.torch_compile,
            )
        except Exception as exc:
            report["onnx_to_torch"] = {
                "status": "unsupported_or_failed",
                "error": f"{type(exc).__name__}: {exc}",
            }
            if args.require_torch:
                report["status"] = "failed"

    report_path = args.work_dir / "onnx_test_report.json"
    report_path.write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps(report, ensure_ascii=False, indent=2))
    print(f"REPORT={report_path.resolve()}")
    return 0 if report["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
