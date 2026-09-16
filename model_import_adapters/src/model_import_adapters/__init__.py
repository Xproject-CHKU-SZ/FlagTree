"""非PyTorch模型接入FlagTree上游编译链的薄适配器。"""

from .onnx_adapter import OnnxAdapter, OnnxAdapterError
from .control_flow import (
    ControlFlowLoweringError,
    build_control_flow_contract,
    convert_onnx_with_control_flow,
)
from .unified_ir import UnifiedIrArtifacts, UnifiedIrError, export_core_aten, load_core_aten

__all__ = [
    "OnnxAdapter",
    "OnnxAdapterError",
    "ControlFlowLoweringError",
    "build_control_flow_contract",
    "convert_onnx_with_control_flow",
    "UnifiedIrArtifacts",
    "UnifiedIrError",
    "export_core_aten",
    "load_core_aten",
]
