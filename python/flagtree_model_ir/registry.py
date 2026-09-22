"""Canonical, versioned operator/type/layout policy for the model IR boundary."""

from __future__ import annotations

import copy
import hashlib
import json
import re
from typing import Any


SEMANTICS_REGISTRY: dict[str, Any] = {
    "schema_version": 1,
    "registry_version": "2026.09.22",
    "canonical_ir": "Core ATen",
    "dtype_policy": {
        "canonical_dtypes": [
            "bool",
            "uint8",
            "int8",
            "int16",
            "int32",
            "int64",
            "float8_e4m3fn",
            "float8_e5m2",
            "float16",
            "bfloat16",
            "float32",
            "float64",
            "complex64",
            "complex128",
        ],
        "aliases": {
            "half": "float16",
            "float": "float32",
            "double": "float64",
            "long": "int64",
        },
        "promotion_authority": "PyTorch Core ATen dispatcher",
        "rules": [
            "Do not silently narrow integer or floating-point inputs.",
            "Cast nodes remain explicit in the unified graph.",
            "Comparison results use bool.",
            "Accumulator dtype is an operator attribute when it differs from input dtype.",
        ],
    },
    "layout_policy": {
        "allowed_layouts": [
            "scalar",
            "contiguous",
            "channels_last_2d",
            "channels_last_3d",
            "strided",
            "symbolic_strided",
            "unknown",
        ],
        "axis_orders": {
            "NCHW": ["N", "C", "H", "W"],
            "NHWC": ["N", "H", "W", "C"],
            "NCDHW": ["N", "C", "D", "H", "W"],
            "NDHWC": ["N", "D", "H", "W", "C"],
        },
        "rules": [
            "Tensor strides are preserved as first-class metadata.",
            "Transpose and permute are explicit semantic operations.",
            "A backend layout choice must not change logical axis meaning.",
            "Unknown layout is accepted only when stride metadata is unavailable.",
        ],
    },
    "dynamic_dimension_policy": {
        "kinds": ["static", "symbolic"],
        "rules": [
            "Static dimensions are non-negative integers.",
            "Symbolic dimensions retain a stable name or expression.",
            "Range constraints are inclusive and travel with the artifact.",
            "Zero-length dimensions are legal unless an operator contract rejects them.",
            "Shape specialization must be recorded and must not be reported as symbolic preservation.",
        ],
    },
    "extension_policy": {
        "namespace": "flagtree.model_ir",
        "rules": [
            "Extensions are namespaced and versioned.",
            "Unknown extensions are preserved but never interpreted as backend support.",
            "Source-framework metadata is provenance and cannot override Core ATen semantics.",
        ],
    },
    "operator_families": [
        {
            "id": "elementwise.add",
            "core_aten_patterns": [r"^aten\.add\.", r"^builtins\.add$"],
            "onnx_ops": ["Add"],
            "tensorflow_ops": ["Add", "AddV2"],
            "dtype_rule": "promote",
            "shape_rule": "broadcast",
            "layout_rule": "preserve_or_broadcast",
        },
        {
            "id": "elementwise.subtract",
            "core_aten_patterns": [r"^aten\.sub\.", r"^builtins\.sub$"],
            "onnx_ops": ["Sub"],
            "tensorflow_ops": ["Sub"],
            "dtype_rule": "promote",
            "shape_rule": "broadcast",
            "layout_rule": "preserve_or_broadcast",
        },
        {
            "id": "elementwise.multiply",
            "core_aten_patterns": [r"^aten\.mul\.", r"^builtins\.mul$"],
            "onnx_ops": ["Mul"],
            "tensorflow_ops": ["Mul"],
            "dtype_rule": "promote",
            "shape_rule": "broadcast",
            "layout_rule": "preserve_or_broadcast",
        },
        {
            "id": "elementwise.divide",
            "core_aten_patterns": [r"^aten\.(div|floor_divide)\.", r"^builtins\.(truediv|floordiv)$"],
            "onnx_ops": ["Div"],
            "tensorflow_ops": ["Div", "RealDiv", "FloorDiv"],
            "dtype_rule": "core_aten_division",
            "shape_rule": "broadcast",
            "layout_rule": "preserve_or_broadcast",
        },
        {
            "id": "elementwise.power",
            "core_aten_patterns": [r"^aten\.pow\."],
            "onnx_ops": ["Pow"],
            "tensorflow_ops": ["Pow"],
            "dtype_rule": "promote",
            "shape_rule": "broadcast",
            "layout_rule": "preserve_or_broadcast",
        },
        {
            "id": "linear.matmul",
            "core_aten_patterns": [r"^aten\.(mm|bmm|matmul|addmm)\."],
            "onnx_ops": ["MatMul", "Gemm"],
            "tensorflow_ops": ["MatMul", "BatchMatMul", "BatchMatMulV2"],
            "dtype_rule": "same_or_explicit_accumulator",
            "shape_rule": "matrix_product_with_batch_broadcast",
            "layout_rule": "logical_matrix_axes",
        },
        {
            "id": "activation",
            "core_aten_patterns": [r"^aten\.(relu|gelu|sigmoid|tanh|silu)\."],
            "onnx_ops": ["Relu", "Gelu", "Sigmoid", "Tanh", "QuickGelu"],
            "tensorflow_ops": ["Relu", "Gelu", "Sigmoid", "Tanh", "Swish"],
            "dtype_rule": "floating_preserve",
            "shape_rule": "preserve",
            "layout_rule": "preserve",
        },
        {
            "id": "elementwise.clip",
            "core_aten_patterns": [r"^aten\.(clamp|clamp_min|clamp_max|clip|hardtanh)\."],
            "onnx_ops": ["Clip"],
            "tensorflow_ops": ["ClipByValue"],
            "dtype_rule": "numeric_preserve_bounds_cast_to_input",
            "shape_rule": "input_shape_preserve_bounds_broadcast",
            "layout_rule": "preserve",
        },
        {
            "id": "normalization.softmax",
            "core_aten_patterns": [r"^aten\._?softmax\."],
            "onnx_ops": ["Softmax", "LogSoftmax"],
            "tensorflow_ops": ["Softmax", "LogSoftmax"],
            "dtype_rule": "floating_preserve_or_explicit_cast",
            "shape_rule": "preserve",
            "layout_rule": "preserve_axis_meaning",
        },
        {
            "id": "normalization.layer_norm",
            "core_aten_patterns": [r"^aten\.(native_layer_norm|layer_norm)\."],
            "onnx_ops": ["LayerNormalization", "SimplifiedLayerNormalization"],
            "tensorflow_ops": ["LayerNorm", "FusedBatchNormV3"],
            "dtype_rule": "floating_with_explicit_accumulator",
            "shape_rule": "preserve",
            "layout_rule": "preserve_normalized_axes",
        },
        {
            "id": "shape.reshape",
            "core_aten_patterns": [
                r"^aten\.(view|reshape|_unsafe_view|flatten|squeeze|unsqueeze)\."
            ],
            "onnx_ops": ["Reshape", "Flatten", "Squeeze", "Unsqueeze"],
            "tensorflow_ops": ["Reshape", "Squeeze", "ExpandDims"],
            "dtype_rule": "preserve",
            "shape_rule": "element_count_preserve",
            "layout_rule": "recompute_strides",
        },
        {
            "id": "shape.query",
            "core_aten_patterns": [r"^aten\.(sym_size|sym_numel|sym_stride)\."],
            "onnx_ops": ["Shape", "Size"],
            "tensorflow_ops": ["Shape", "ShapeN", "Size", "Rank"],
            "dtype_rule": "output_integer",
            "shape_rule": "return_runtime_shape_metadata",
            "layout_rule": "not_applicable",
        },
        {
            "id": "container.getitem",
            "core_aten_patterns": [r"^builtins\.getitem$"],
            "onnx_ops": [],
            "tensorflow_ops": [],
            "dtype_rule": "selected_value_preserve",
            "shape_rule": "selected_value_preserve",
            "layout_rule": "selected_value_preserve",
        },
        {
            "id": "shape.transpose",
            "core_aten_patterns": [r"^aten\.(permute|transpose)\."],
            "onnx_ops": ["Transpose"],
            "tensorflow_ops": ["Transpose"],
            "dtype_rule": "preserve",
            "shape_rule": "permute_dimensions",
            "layout_rule": "permute_strides_and_logical_axes",
        },
        {
            "id": "shape.concatenate",
            "core_aten_patterns": [r"^aten\.(cat|stack)\."],
            "onnx_ops": ["Concat"],
            "tensorflow_ops": ["Concat", "ConcatV2", "Pack"],
            "dtype_rule": "same_dtype",
            "shape_rule": "concatenate_on_axis",
            "layout_rule": "materialized_contiguous_unless_backend_preserves",
        },
        {
            "id": "shape.expand",
            "core_aten_patterns": [r"^aten\.(expand|expand_as|repeat)\."],
            "onnx_ops": ["Expand", "Tile"],
            "tensorflow_ops": ["BroadcastTo", "Tile"],
            "dtype_rule": "preserve",
            "shape_rule": "broadcast_or_repeat",
            "layout_rule": "may_create_zero_stride_view",
        },
        {
            "id": "shape.slice",
            "core_aten_patterns": [r"^aten\.(slice|select|narrow)\."],
            "onnx_ops": ["Slice", "Split"],
            "tensorflow_ops": ["Slice", "StridedSlice", "Split", "SplitV"],
            "dtype_rule": "preserve",
            "shape_rule": "axis_bounds_and_step",
            "layout_rule": "view_or_materialized",
        },
        {
            "id": "indexing.gather",
            "core_aten_patterns": [r"^aten\.(gather|index|index_select|embedding)\."],
            "onnx_ops": ["Gather", "GatherElements", "GatherND"],
            "tensorflow_ops": ["Gather", "GatherV2", "GatherNd"],
            "dtype_rule": "data_preserve_indices_integer",
            "shape_rule": "index_shape_composition",
            "layout_rule": "materialized",
        },
        {
            "id": "reduction",
            "core_aten_patterns": [r"^aten\.(sum|mean|amax|amin|prod|cumsum)\."],
            "onnx_ops": ["ReduceSum", "ReduceMean", "ReduceMax", "ReduceMin", "CumSum"],
            "tensorflow_ops": ["Sum", "Mean", "Max", "Min", "Cumsum"],
            "dtype_rule": "operator_specific_accumulator",
            "shape_rule": "reduce_axes_keepdim_explicit",
            "layout_rule": "materialized",
        },
        {
            "id": "reduction.norm",
            "core_aten_patterns": [r"^aten\.(linalg_vector_norm|_linalg_vector_norm|norm)\."],
            "onnx_ops": ["ReduceL1", "ReduceL2", "ReduceLogSum", "ReduceLogSumExp", "ReduceSumSquare"],
            "tensorflow_ops": ["EuclideanNorm"],
            "dtype_rule": "floating_with_explicit_accumulator",
            "shape_rule": "reduce_axes_keepdim_explicit",
            "layout_rule": "materialized",
        },
        {
            "id": "comparison",
            "core_aten_patterns": [r"^aten\.(eq|ne|lt|le|gt|ge|isclose)\."],
            "onnx_ops": ["Equal", "Less", "LessOrEqual", "Greater", "GreaterOrEqual"],
            "tensorflow_ops": ["Equal", "NotEqual", "Less", "LessEqual", "Greater", "GreaterEqual"],
            "dtype_rule": "inputs_promote_output_bool",
            "shape_rule": "broadcast",
            "layout_rule": "preserve_or_broadcast",
        },
        {
            "id": "selection.where",
            "core_aten_patterns": [r"^aten\.where\."],
            "onnx_ops": ["Where"],
            "tensorflow_ops": ["Select", "SelectV2", "Where"],
            "dtype_rule": "condition_bool_values_promote",
            "shape_rule": "broadcast",
            "layout_rule": "materialized",
        },
        {
            "id": "dtype.cast",
            "core_aten_patterns": [r"^aten\.(to|_to_copy|type_as)\."],
            "onnx_ops": ["Cast", "CastLike"],
            "tensorflow_ops": ["Cast"],
            "dtype_rule": "destination_dtype_explicit",
            "shape_rule": "preserve",
            "layout_rule": "preserve_or_materialize",
        },
        {
            "id": "elementwise.unary_math",
            "core_aten_patterns": [
                r"^aten\.(abs|neg|exp|expm1|log|log1p|sqrt|rsqrt|reciprocal|sin|cos|tan|erf|floor|ceil|round)\."
            ],
            "onnx_ops": [
                "Abs", "Neg", "Exp", "Log", "Sqrt", "Reciprocal", "Sin", "Cos", "Tan", "Erf", "Floor", "Ceil", "Round"
            ],
            "tensorflow_ops": [
                "Abs", "Neg", "Exp", "Expm1", "Log", "Log1p", "Sqrt", "Rsqrt", "Reciprocal", "Sin", "Cos", "Tan", "Erf", "Floor", "Ceil", "Round"
            ],
            "dtype_rule": "operator_specific_floating_or_numeric_preserve",
            "shape_rule": "preserve",
            "layout_rule": "preserve",
        },
        {
            "id": "logical",
            "core_aten_patterns": [r"^aten\.(logical_and|logical_or|logical_xor|logical_not)\."],
            "onnx_ops": ["And", "Or", "Xor", "Not"],
            "tensorflow_ops": ["LogicalAnd", "LogicalOr", "LogicalXor", "LogicalNot"],
            "dtype_rule": "boolean_inputs_and_output",
            "shape_rule": "broadcast",
            "layout_rule": "preserve_or_broadcast",
        },
        {
            "id": "linear.convolution",
            "core_aten_patterns": [r"^aten\.(convolution|_convolution|conv1d|conv2d|conv3d|conv_transpose[123]d)\."],
            "onnx_ops": ["Conv", "ConvTranspose"],
            "tensorflow_ops": ["Conv2D", "Conv3D", "DepthwiseConv2dNative", "Conv2DBackpropInput", "Conv3DBackpropInputV2"],
            "dtype_rule": "input_weight_compatible_accumulator_explicit",
            "shape_rule": "convolution_geometry",
            "layout_rule": "logical_channel_and_spatial_axes_explicit",
        },
        {
            "id": "linear.linear",
            "core_aten_patterns": [r"^aten\.linear\."],
            "onnx_ops": [],
            "tensorflow_ops": [],
            "dtype_rule": "input_weight_compatible_accumulator_explicit",
            "shape_rule": "last_dimension_projection",
            "layout_rule": "logical_feature_axis",
        },
        {
            "id": "pooling",
            "core_aten_patterns": [r"^aten\.(avg_pool[123]d|max_pool[123]d|adaptive_avg_pool[123]d|adaptive_max_pool[123]d)\."],
            "onnx_ops": ["AveragePool", "MaxPool", "GlobalAveragePool", "GlobalMaxPool", "LpPool"],
            "tensorflow_ops": ["AvgPool", "AvgPool3D", "MaxPool", "MaxPoolV2", "MaxPool3D"],
            "dtype_rule": "numeric_preserve_or_explicit_accumulator",
            "shape_rule": "pooling_geometry",
            "layout_rule": "logical_channel_and_spatial_axes_explicit",
        },
        {
            "id": "normalization.batch_group",
            "core_aten_patterns": [r"^aten\.(native_batch_norm|batch_norm|native_group_norm|group_norm)\."],
            "onnx_ops": ["BatchNormalization", "GroupNormalization", "InstanceNormalization"],
            "tensorflow_ops": ["FusedBatchNorm", "FusedBatchNormV2", "FusedBatchNormV3"],
            "dtype_rule": "floating_with_explicit_accumulator",
            "shape_rule": "preserve",
            "layout_rule": "channel_axis_explicit",
        },
        {
            "id": "shape.pad",
            "core_aten_patterns": [r"^aten\.(constant_pad_nd|reflection_pad[123]d|replication_pad[123]d)\."],
            "onnx_ops": ["Pad"],
            "tensorflow_ops": ["Pad", "PadV2", "MirrorPad"],
            "dtype_rule": "preserve_with_pad_value_cast",
            "shape_rule": "per_axis_begin_end_padding",
            "layout_rule": "preserve_logical_axes",
        },
        {
            "id": "shape.resize",
            "core_aten_patterns": [r"^aten\.(upsample_|adaptive_avg_pool)"],
            "onnx_ops": ["Resize", "Upsample"],
            "tensorflow_ops": ["ResizeBilinear", "ResizeNearestNeighbor", "ResizeBicubic", "CropAndResize"],
            "dtype_rule": "operator_specific_preserve",
            "shape_rule": "coordinate_transform_and_rounding_explicit",
            "layout_rule": "spatial_axes_explicit",
        },
        {
            "id": "indexing.scatter",
            "core_aten_patterns": [r"^aten\.(scatter|scatter_add|index_put|index_add)\."],
            "onnx_ops": ["Scatter", "ScatterElements", "ScatterND"],
            "tensorflow_ops": ["ScatterNd", "TensorScatterUpdate", "TensorScatterAdd"],
            "dtype_rule": "data_update_compatible_indices_integer",
            "shape_rule": "index_shape_composition",
            "layout_rule": "materialized",
        },
        {
            "id": "reduction.index",
            "core_aten_patterns": [r"^aten\.(argmax|argmin|max|min)\."],
            "onnx_ops": ["ArgMax", "ArgMin"],
            "tensorflow_ops": ["ArgMax", "ArgMin"],
            "dtype_rule": "input_numeric_output_integer",
            "shape_rule": "reduce_axes_keepdim_explicit",
            "layout_rule": "materialized",
        },
        {
            "id": "regularization.dropout",
            "core_aten_patterns": [r"^aten\.(dropout|native_dropout)\."],
            "onnx_ops": ["Dropout"],
            "tensorflow_ops": ["Dropout"],
            "dtype_rule": "floating_preserve_mask_bool",
            "shape_rule": "preserve",
            "layout_rule": "preserve",
        },
        {
            "id": "attention",
            "core_aten_patterns": [r"^aten\._scaled_dot_product_", r"^aten\.scaled_dot_product_attention\."],
            "onnx_ops": ["Attention", "MultiHeadAttention", "RotaryEmbedding"],
            "tensorflow_ops": ["ScaledDotProductAttention", "MultiHeadAttention"],
            "dtype_rule": "floating_with_explicit_accumulator",
            "shape_rule": "batch_head_sequence_feature_contract",
            "layout_rule": "logical_attention_axes_explicit",
        },
        {
            "id": "control.if",
            "core_aten_patterns": [r"(^|\.)cond$", r"higher_order.*cond"],
            "onnx_ops": ["If"],
            "tensorflow_ops": ["If", "StatelessIf"],
            "dtype_rule": "branch_outputs_identical",
            "shape_rule": "branch_outputs_compatible",
            "layout_rule": "branch_outputs_compatible",
        },
        {
            "id": "control.loop",
            "core_aten_patterns": [r"while_loop"],
            "onnx_ops": ["Loop", "Scan"],
            "tensorflow_ops": ["While", "StatelessWhile"],
            "dtype_rule": "loop_carried_types_stable",
            "shape_rule": "loop_carried_shapes_stable_scan_axis_explicit",
            "layout_rule": "loop_carried_layouts_stable",
        },
        {
            "id": "tensor.creation",
            "core_aten_patterns": [r"^aten\.(empty|zeros|ones|full|arange|scalar_tensor)\."],
            "onnx_ops": ["Constant", "ConstantOfShape", "Range"],
            "tensorflow_ops": ["Const", "Fill", "Range", "ZerosLike", "OnesLike"],
            "dtype_rule": "explicit_or_inferred_dtype",
            "shape_rule": "shape_operand",
            "layout_rule": "contiguous",
        },
        {
            "id": "tensor.copy_or_identity",
            "core_aten_patterns": [r"^aten\.(clone|copy|contiguous|alias|detach)\."],
            "onnx_ops": ["Identity"],
            "tensorflow_ops": ["Identity", "StopGradient"],
            "dtype_rule": "preserve",
            "shape_rule": "preserve",
            "layout_rule": "preserve_or_materialize",
        },
    ],
}


def canonicalize_dtype(dtype: str) -> str | None:
    """Return the canonical Core ATen dtype name, or ``None`` if unsupported."""

    registry = SEMANTICS_REGISTRY["dtype_policy"]
    normalized = str(dtype).removeprefix("torch.")
    normalized = registry["aliases"].get(normalized, normalized)
    if normalized not in registry["canonical_dtypes"]:
        return None
    return str(normalized)


def get_semantics_registry() -> dict[str, Any]:
    """Return an isolated registry copy so callers cannot mutate global policy."""

    return copy.deepcopy(SEMANTICS_REGISTRY)


def lookup_operator_family(operator: str, framework: str) -> dict[str, Any] | None:
    """Return the semantic family for a frontend op or Core ATen target."""

    normalized_framework = str(framework).lower().replace("-", "_")
    for family in SEMANTICS_REGISTRY["operator_families"]:
        if normalized_framework in {"core_aten", "aten", "pytorch"}:
            matched = any(
                re.search(pattern, str(operator))
                for pattern in family["core_aten_patterns"]
            )
        elif normalized_framework == "onnx":
            matched = str(operator) in family["onnx_ops"]
        elif normalized_framework in {"tensorflow", "tf"}:
            matched = str(operator) in family["tensorflow_ops"]
        else:
            raise ValueError(f"unsupported framework: {framework!r}")
        if matched:
            return copy.deepcopy(family)
    return None


def semantics_registry_digest() -> str:
    """Stable SHA-256 for artifact provenance and compatibility checks."""

    payload = json.dumps(
        SEMANTICS_REGISTRY,
        ensure_ascii=False,
        sort_keys=True,
        separators=(",", ":"),
    ).encode("utf-8")
    return hashlib.sha256(payload).hexdigest()
