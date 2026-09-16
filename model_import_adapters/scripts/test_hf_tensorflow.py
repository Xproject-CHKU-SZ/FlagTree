#!/usr/bin/env python3
"""下载小型TensorFlow模型，转换到ONNX并比较输出。"""

from __future__ import annotations

import argparse
import json
import os
from pathlib import Path

import numpy as np

from model_import_adapters.hf_fixtures import (
    HF_REPO_ID,
    HF_REVISION,
    download_tensorflow_model,
)
from model_import_adapters.onnx_adapter import OnnxAdapter
from model_import_adapters.tensorflow_adapter import compare_function_with_onnx, convert_function


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--work-dir", type=Path, default=Path("artifacts/tensorflow"))
    parser.add_argument("--repo-id", default=HF_REPO_ID)
    parser.add_argument("--revision", default=HF_REVISION)
    parser.add_argument("--model-file", default="tf_model.h5")
    parser.add_argument(
        "--model-kind",
        choices=["base", "sequence-classification"],
        default="base",
    )
    parser.add_argument("--sequence-length", type=int, default=8)
    parser.add_argument("--opset", type=int, default=17)
    parser.add_argument("--try-torch", action="store_true")
    parser.add_argument("--require-torch", action="store_true")
    parser.add_argument("--torch-device", default="cpu")
    parser.add_argument("--torch-compile", action="store_true")
    args = parser.parse_args()
    args.work_dir.mkdir(parents=True, exist_ok=True)

    os.environ.setdefault("TF_CPP_MIN_LOG_LEVEL", "2")
    import tensorflow as tf
    from transformers import AutoConfig, TFAutoModel, TFAutoModelForSequenceClassification

    model_dir = download_tensorflow_model(
        args.work_dir / "huggingface",
        repo_id=args.repo_id,
        revision=args.revision,
        weight_filename=args.model_file,
    )
    config = AutoConfig.from_pretrained(str(model_dir), local_files_only=True)
    model_class = (
        TFAutoModelForSequenceClassification
        if args.model_kind == "sequence-classification"
        else TFAutoModel
    )
    model = model_class.from_pretrained(str(model_dir), local_files_only=True)

    input_signature = [
        tf.TensorSpec([None, None], tf.int32, name="input_ids"),
        tf.TensorSpec([None, None], tf.int32, name="attention_mask"),
    ]
    uses_token_type_ids = config.model_type not in {"distilbert"}
    if uses_token_type_ids:
        input_signature.append(
            tf.TensorSpec([None, None], tf.int32, name="token_type_ids")
        )

        @tf.function(input_signature=input_signature)
        def serving_function(input_ids, attention_mask, token_type_ids):
            output = model(
                input_ids=input_ids,
                attention_mask=attention_mask,
                token_type_ids=token_type_ids,
                training=False,
            )
            return output.logits if args.model_kind == "sequence-classification" else output.last_hidden_state
    else:

        @tf.function(input_signature=input_signature)
        def serving_function(input_ids, attention_mask):
            output = model(
                input_ids=input_ids,
                attention_mask=attention_mask,
                training=False,
            )
            return output.logits if args.model_kind == "sequence-classification" else output.last_hidden_state

    shape = (1, args.sequence_length)
    sample_inputs = [
        (np.arange(np.prod(shape), dtype=np.int32).reshape(shape) % 97),
        np.ones(shape, dtype=np.int32),
    ]
    if uses_token_type_ids:
        sample_inputs.append(np.zeros(shape, dtype=np.int32))
    onnx_path = convert_function(
        serving_function,
        input_signature,
        args.work_dir / "converted" / "tensorflow_model.onnx",
        opset=args.opset,
    )
    comparison = compare_function_with_onnx(
        serving_function,
        onnx_path,
        sample_inputs,
        [item.name for item in input_signature],
    )
    adapter = OnnxAdapter(onnx_path)
    adapter.check()
    adapter.infer_shapes()
    summary = adapter.summary()

    report = {
        "status": "passed",
        "source": {
            "repo_id": args.repo_id,
            "revision": args.revision,
            "file": args.model_file,
            "local_dir": str(model_dir),
        },
        "tensorflow": {
            "version": tf.__version__,
            "model_class": type(model).__name__,
            "model_type": config.model_type,
            "input_signature": [
                {"name": item.name, "shape": item.shape.as_list(), "dtype": item.dtype.name}
                for item in input_signature
            ],
        },
        "conversion": {
            "status": "passed",
            "opset": args.opset,
            "onnx_path": str(onnx_path),
            "onnx_node_count": len(summary["graph"]["nodes"]),
            "onnx_control_flow": summary["graph"]["control_flow"],
        },
        "comparison": comparison,
        "onnx_to_torch": {"status": "not_requested"},
    }
    if args.try_torch or args.require_torch:
        input_map = {
            item.name: value for item, value in zip(input_signature, sample_inputs)
        }
        try:
            report["onnx_to_torch"] = adapter.compare_with_torch(
                input_map,
                device=args.torch_device,
                compile_model=args.torch_compile,
                atol=3e-4,
                rtol=3e-4,
            )
        except Exception as exc:
            report["onnx_to_torch"] = {
                "status": "unsupported_or_failed",
                "error": f"{type(exc).__name__}: {exc}",
            }
            if args.require_torch:
                report["status"] = "failed"
    report_path = args.work_dir / "tensorflow_test_report.json"
    report_path.write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps(report, ensure_ascii=False, indent=2))
    print(f"REPORT={report_path.resolve()}")
    return 0 if report["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
