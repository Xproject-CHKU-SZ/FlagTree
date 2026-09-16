#!/usr/bin/env python3
"""为最小Core ATen图建立到Triton Kernel和XPU编译产物的可核对记录。

该脚本验证的是一个边界明确的最小闭环：Core ATen图中的
Add+Relu运算与显式Triton Kernel语义一致，并且该Kernel经
FlagTree XPU Backend编译和执行。这不表示已实现任意Core ATen图的
自动Triton生成。
"""

from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
from typing import Any


def _sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def _index_files(root: Path) -> list[dict[str, Any]]:
    if not root.exists():
        return []
    return [
        {
            "path": str(path),
            "relative_path": str(path.relative_to(root)),
            "suffix": path.suffix.lower(),
            "size_bytes": path.stat().st_size,
            "sha256": _sha256(path),
        }
        for path in sorted(root.rglob("*"))
        if path.is_file()
    ]


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--artifact-dir", type=Path, required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument("--device", default="cuda:0")
    args = parser.parse_args()

    artifact_dir = args.artifact_dir.resolve()
    output_dir = args.output_dir.resolve()
    dump_dir = output_dir / "triton-dump"
    cache_dir = output_dir / "triton-cache"
    output_dir.mkdir(parents=True, exist_ok=True)
    dump_dir.mkdir(parents=True, exist_ok=True)
    cache_dir.mkdir(parents=True, exist_ok=True)

    # FlagTree/Triton在首次编译时读取这些变量，必须在import triton前设置。
    os.environ["TRITON_KERNEL_DUMP"] = "1"
    os.environ["TRITON_ALWAYS_COMPILE"] = "1"
    os.environ["TRITON_DUMP_DIR"] = str(dump_dir)
    os.environ["TRITON_CACHE_DIR"] = str(cache_dir)

    import numpy as np
    import torch
    import triton
    import triton.language as tl

    from model_import_adapters.unified_ir import load_example_inputs

    @triton.jit
    def add_relu_kernel(
        value_pointer,
        bias_pointer,
        output_pointer,
        element_count,
        FEATURE_COUNT: tl.constexpr,
        BLOCK_SIZE: tl.constexpr,
    ):
        offsets = tl.program_id(0) * BLOCK_SIZE + tl.arange(0, BLOCK_SIZE)
        mask = offsets < element_count
        feature_offsets = offsets % FEATURE_COUNT
        value = tl.load(value_pointer + offsets, mask=mask, other=0.0)
        bias = tl.load(bias_pointer + feature_offsets, mask=mask, other=0.0)
        result = tl.maximum(value + bias, 0.0)
        tl.store(output_pointer + offsets, result, mask=mask)

    manifest_path = artifact_dir / "manifest.json"
    program_path = artifact_dir / "model.core_aten.pt2"
    manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
    targets = manifest["operators"]["all_call_targets"]
    required_targets = ["aten.add.Tensor", "aten.relu.default"]
    missing = [target for target in required_targets if target not in targets]
    if missing:
        raise RuntimeError(f"Core ATen图缺少预期算子：{missing}")

    input_schema = manifest["input_archive"]["schema"]
    cpu_args, cpu_kwargs = load_example_inputs(
        artifact_dir / "example_inputs.npz", input_schema, device="cpu"
    )
    if cpu_kwargs or len(cpu_args) != 2:
        raise RuntimeError("本最小闭环只处理value和bias两个位置输入")
    # 统一图由PyTorch 2.5生成，而包含FlagTree Triton的当前XPU镜像
    # 使用PyTorch 2.9，两版.pt2 schema不兼容。该图已在2.5 XPU
    # 环境单独完成回读和执行；此处按manifest中已核对的
    # aten.add.Tensor + aten.relu.default语义构造参考输出，
    # 避免把跨版本无法回读掩饰成已直接Lowering。
    with torch.no_grad():
        expected = torch.relu(cpu_args[0] + cpu_args[1])

    value = cpu_args[0].to(args.device)
    bias = cpu_args[1].to(args.device)
    actual = torch.empty_like(value)
    element_count = value.numel()
    block_size = 256
    grid = (triton.cdiv(element_count, block_size),)
    add_relu_kernel[grid](
        value,
        bias,
        actual,
        element_count,
        FEATURE_COUNT=value.shape[-1],
        BLOCK_SIZE=block_size,
    )
    torch.cuda.synchronize(torch.device(args.device))
    torch.testing.assert_close(actual.cpu(), expected, atol=3e-4, rtol=3e-4)
    difference = np.abs(
        actual.detach().cpu().numpy().astype(np.float64)
        - expected.detach().cpu().numpy().astype(np.float64)
    )

    dump_files = _index_files(dump_dir)
    cache_files = _index_files(cache_dir)
    recognized_suffixes = {".ttir", ".ttgir", ".ttxir", ".llir", ".elf", ".xpubin"}
    recognized_files = [
        item
        for item in dump_files + cache_files
        if item["suffix"] in recognized_suffixes
    ]
    target = triton.runtime.driver.active.get_current_target()
    script_path = Path(__file__).resolve()
    report = {
        "status": "passed",
        "scope": "Add+Relu minimal graph only",
        "automatic_general_graph_lowering": False,
        "unified_graph": {
            "path": str(program_path),
            "sha256": _sha256(program_path),
            "manifest": str(manifest_path),
            "matched_core_aten_targets": required_targets,
            "exported_program_executed_in_this_process": False,
            "reference_construction": (
                "使用归档输入按已匹配的aten.add.Tensor和"
                "aten.relu.default语义构造"
            ),
        },
        "explicit_triton_kernel": {
            "name": "add_relu_kernel",
            "script": str(script_path),
            "script_sha256": _sha256(script_path),
            "mapping": [
                {
                    "core_aten": "aten.add.Tensor",
                    "triton_semantics": "value + bias",
                },
                {
                    "core_aten": "aten.relu.default",
                    "triton_semantics": "tl.maximum(value, 0.0)",
                },
            ],
        },
        "xpu_execution": {
            "requested_device": args.device,
            "visible_device_name": torch.cuda.get_device_name(torch.device(args.device).index or 0),
            "triton_target": {
                "backend": str(getattr(target, "backend", "")),
                "arch": str(getattr(target, "arch", "")),
                "warp_size": str(getattr(target, "warp_size", "")),
            },
            "shape": list(value.shape),
            "dtype": str(value.dtype),
            "max_abs_error": float(difference.max(initial=0.0)),
            "torch_version": torch.__version__,
            "triton_package": str(Path(triton.__file__).resolve()),
        },
        "compiler_artifacts": {
            "dump_dir": str(dump_dir),
            "cache_dir": str(cache_dir),
            "dump_files": dump_files,
            "cache_files": cache_files,
            "recognized_ir_and_binary_files": recognized_files,
            "recognized_suffixes": sorted(recognized_suffixes),
        },
    }
    report_path = output_dir / "core_aten_to_xpu_kernel_trace.json"
    report_path.write_text(
        json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8"
    )
    print(json.dumps(report, ensure_ascii=False, indent=2))
    print(f"REPORT={report_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
