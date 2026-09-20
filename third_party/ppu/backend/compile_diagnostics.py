"""PPU 编译失败的阶段和责任归因工具。

该模块只解析已有错误文本，不改变 PPU 编译流水线、pass 顺序或算子实现。
它用于把模型批测中的编译失败整理成可追溯的 FlagTree/算子团队边界。
"""

from __future__ import annotations

from dataclasses import dataclass
from typing import Optional


COMPILE_STAGES = {"make_ttir", "make_ttgir", "make_llir", "make_hgbin", "ppu-llc"}


@dataclass(frozen=True)
class CompileFailure:
    stage: str
    category: str
    error: str
    operator_candidate: bool
    action: str


def _normalize_stage(stage: str, error: str) -> str:
    value = (stage or "").strip().lower()
    if value in COMPILE_STAGES:
        return value
    text = (error or "").lower()
    if "ppu-llc" in text:
        return "ppu-llc"
    if "make_ttgir" in text or "ttgir" in text:
        return "make_ttgir"
    if "make_llir" in text or "llir" in text:
        return "make_llir"
    if "ttir" in text:
        return "make_ttir"
    return "unknown"


def classify_compile_failure(stage: str, error: str) -> CompileFailure:
    """Return a stable classification for a PPU compile/runtime failure.

    ``operator_candidate`` is deliberately conservative: layout assertions or
    toolchain failures are candidates only after they are observed in compiler
    output. Model loading, tokenizer, TorchDynamo and CPU baseline errors are
    never classified as operator failures here.
    """
    text = str(error or "")
    lowered = text.lower()
    normalized_stage = _normalize_stage(stage, text)

    if "timeout" in lowered or "timed out" in lowered:
        return CompileFailure(
            normalized_stage,
            "compile_or_process_timeout",
            text,
            False,
            "区分编译、链接和设备执行超时；仅编译阶段复现后进入FlagTree排查",
        )
    if "stride" in lowered and ("sdpa" in lowered or "scaled_dot_product" in lowered):
        return CompileFailure(
            normalized_stage,
            "sdpa_stride_or_layout",
            text,
            normalized_stage in {"make_ttgir", "make_llir", "ppu-llc"},
            "保存TTIR/TTGIR/LLIR、输入shape/stride/dtype；若异常来自fake/meta或算子实现则反馈算子团队",
        )
    if "nan" in lowered or "inf" in lowered or "non-finite" in lowered:
        return CompileFailure(
            normalized_stage,
            "non_finite_output",
            text,
            False,
            "先做NATIVE、w/o FG、w/ FG中间层finite差分，确认首个异常算子后再反馈",
        )
    if "outofresources" in lowered or "resource" in lowered and "exceed" in lowered:
        return CompileFailure(
            normalized_stage,
            "ppu_resource_limit",
            text,
            False,
            "记录grid、warps、shared memory、scratch和架构；先检查模型shape与编译选项",
        )
    if normalized_stage == "ppu-llc" or "ppu-llc error" in lowered:
        return CompileFailure(
            normalized_stage,
            "ppu_toolchain_failure",
            text,
            True,
            "保存LLIR、ppu-llc完整命令和版本，转PPU工具链/算子团队确认",
        )
    if "unsupported" in lowered or "unimplemented" in lowered or "legalization" in lowered:
        return CompileFailure(
            normalized_stage,
            "unsupported_ir_or_lowering",
            text,
            normalized_stage in {"make_ttgir", "make_llir"},
            "先确认合法TTIR/TTGIR与后端能力边界；不得直接改模型或实现算子",
        )
    return CompileFailure(
        normalized_stage,
        "other_compile_or_runtime",
        text,
        False,
        "保留完整阶段日志和IR产物，完成最小复现后再归责",
    )


def is_known_compile_stage(stage: Optional[str]) -> bool:
    """Return whether a stage is one of the PPU compiler stages."""
    return str(stage or "").strip().lower() in COMPILE_STAGES
