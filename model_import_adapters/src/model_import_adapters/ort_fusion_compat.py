"""ONNX Runtime/新opset算子到onnx2torch的受控兼容转换。"""

from __future__ import annotations

from collections import Counter
from typing import Any

import torch
import torch.nn.functional as F
from torch import nn


class OrtSimplifiedLayerNormalization(nn.Module):
    """ONNX Runtime SimplifiedLayerNormalization的单输出形式。"""

    def __init__(self, axis: int, epsilon: float):
        super().__init__()
        self.axis = axis
        self.epsilon = epsilon

    def forward(self, value: torch.Tensor, scale: torch.Tensor) -> torch.Tensor:
        compute = value.float()
        variance = torch.mean(compute * compute, dim=self.axis, keepdim=True)
        result = compute * torch.rsqrt(variance + self.epsilon)
        return (result * scale.float()).to(value.dtype)


class OrtGelu(nn.Module):
    """opset 20 Gelu；EmbeddingGemma使用tanh近似。"""

    def __init__(self, approximate: str):
        super().__init__()
        self.approximate = approximate

    def forward(self, value: torch.Tensor) -> torch.Tensor:
        return F.gelu(value, approximate=self.approximate)


class OrtRotaryEmbedding(nn.Module):
    """EmbeddingGemma图中三维、非交错布局的ORT RoPE。"""

    def __init__(self, *, interleaved: bool, rotary_embedding_dim: int, scale: float):
        super().__init__()
        if interleaved:
            raise NotImplementedError("EmbeddingGemma兼容层尚不支持交错RoPE")
        self.rotary_embedding_dim = rotary_embedding_dim
        self.scale = scale

    def forward(
        self,
        value: torch.Tensor,
        position_ids: torch.Tensor,
        cos_cache: torch.Tensor,
        sin_cache: torch.Tensor,
    ) -> torch.Tensor:
        if value.dim() != 3:
            raise ValueError(f"当前RoPE兼容层要求三维输入，实际为{value.dim()}维")
        cache_half = cos_cache.shape[-1]
        rotary_dim = self.rotary_embedding_dim or cache_half * 2
        head_count = value.shape[-1] // rotary_dim
        shaped = value.reshape(value.shape[0], value.shape[1], head_count, rotary_dim)
        rotary = shaped[..., :rotary_dim]
        tail = shaped[..., rotary_dim:]
        first, second = torch.chunk(rotary, 2, dim=-1)
        rotated = torch.cat((-second, first), dim=-1)
        cos = cos_cache[position_ids].unsqueeze(-2)
        sin = sin_cache[position_ids].unsqueeze(-2)
        cos = torch.cat((cos, cos), dim=-1)
        sin = torch.cat((sin, sin), dim=-1)
        output = rotary * cos * self.scale + rotated * sin * self.scale
        if tail.shape[-1] != 0:
            output = torch.cat((output, tail), dim=-1)
        return output.reshape(value.shape)


class OrtMultiHeadAttention(nn.Module):
    """EmbeddingGemma图中无cache、以attention_bias传mask的ORT MHA。"""

    def __init__(self, *, num_heads: int, scale: float | None):
        super().__init__()
        self.num_heads = num_heads
        self.scale = scale

    def forward(
        self,
        query: torch.Tensor,
        key: torch.Tensor,
        value: torch.Tensor,
        attention_bias: torch.Tensor,
    ) -> torch.Tensor:
        head_dim = query.shape[-1] // self.num_heads
        query = query.reshape(query.shape[0], query.shape[1], self.num_heads, head_dim)
        key = key.reshape(key.shape[0], key.shape[1], self.num_heads, head_dim)
        value = value.reshape(value.shape[0], value.shape[1], self.num_heads, head_dim)
        query = query.transpose(1, 2)
        key = key.transpose(1, 2)
        value = value.transpose(1, 2)
        scale = self.scale if self.scale is not None else head_dim**-0.5
        scores = torch.matmul(query, key.transpose(-2, -1)) * scale
        probabilities = torch.softmax(scores + attention_bias, dim=-1)
        context = torch.matmul(probabilities, value).transpose(1, 2)
        return context.reshape(context.shape[0], context.shape[1], -1)


def _register_converter(description: Any, converter: Any) -> bool:
    from onnx2torch.node_converters import registry

    if description in registry._CONVERTER_REGISTRY:  # pylint: disable=protected-access
        return False
    registry._CONVERTER_REGISTRY[description] = converter  # pylint: disable=protected-access
    return True


def _walk_onnx_nodes(graph: Any) -> Any:
    """Yield nodes from a graph and all attribute-owned subgraphs."""
    from onnx import AttributeProto

    for node in graph.node:
        yield node
        for attribute in node.attribute:
            if attribute.type == AttributeProto.GRAPH:
                yield from _walk_onnx_nodes(attribute.g)
            elif attribute.type == AttributeProto.GRAPHS:
                for child_graph in attribute.graphs:
                    yield from _walk_onnx_nodes(child_graph)


def _alias_newer_standard_versions() -> list[dict[str, Any]]:
    import onnx2torch.node_converters  # noqa: F401  # 注册内置转换器
    from onnx2torch.node_converters import registry

    targets = {
        "Cast": 21,
        "Equal": 19,
        "Reshape": 21,
        "Shape": 21,
        "Transpose": 21,
        "Unsqueeze": 21,
    }
    records: list[dict[str, Any]] = []
    for operation_type, target_version in targets.items():
        target = registry.OperationDescription("", operation_type, target_version)
        if target in registry._CONVERTER_REGISTRY:  # pylint: disable=protected-access
            continue
        candidates = [
            item
            for item in registry._CONVERTER_REGISTRY  # pylint: disable=protected-access
            if item.domain == ""
            and item.operation_type == operation_type
            and item.version < target_version
        ]
        if not candidates:
            raise RuntimeError(f"找不到{operation_type}可复用的旧版本onnx2torch转换器")
        source = max(candidates, key=lambda item: item.version)
        registry._CONVERTER_REGISTRY[target] = registry._CONVERTER_REGISTRY[source]  # pylint: disable=protected-access
        records.append(
            {
                "operation_type": operation_type,
                "source_version": source.version,
                "target_version": target_version,
            }
        )
    return records


def prepare_onnx2torch_compat(model: Any) -> dict[str, Any]:
    """Normalize valid ONNX forms and register controlled converter extensions."""

    from onnx import helper as onnx_helper
    from onnx2torch.node_converters import registry
    from onnx2torch.utils.common import OnnxMapping, OperationConverterResult, onnx_mapping_from_node

    counts = Counter((node.domain or "ai.onnx", node.op_type) for node in model.graph.node)

    # ONNX uses an empty input name as an omitted optional argument. Empty
    # placeholders in the middle of an input list are positional and must stay,
    # while trailing placeholders are equivalent to shortening the list.
    # onnx2torch 1.5.15 mistakes a trailing empty Clip maximum for a dynamic
    # tensor name, so normalize the general equivalent form in memory.
    normalized_trailing_optional_inputs = Counter()
    for node in _walk_onnx_nodes(model.graph):
        original_length = len(node.input)
        while node.input and node.input[-1] == "":
            node.input.pop()
        removed = original_length - len(node.input)
        if removed:
            normalized_trailing_optional_inputs[
                (node.domain or "ai.onnx", node.op_type)
            ] += removed

    for node in model.graph.node:
        values = {attribute.name: attribute for attribute in node.attribute}
        if node.op_type == "SimplifiedLayerNormalization":
            axis = int(values.get("axis").i) if "axis" in values else -1
            stash_type = int(values.get("stash_type").i) if "stash_type" in values else 1
            if node.domain or axis != -1 or stash_type != 1 or len(node.input) != 2 or len(node.output) != 1:
                raise NotImplementedError(f"未覆盖的SimplifiedLayerNormalization形态：{node.name}")
        elif node.op_type == "Gelu":
            approximate = values.get("approximate")
            mode = approximate.s.decode() if approximate is not None else "none"
            if node.domain or mode not in {"none", "tanh"}:
                raise NotImplementedError(f"未覆盖的Gelu形态：{node.name}")
        elif node.domain in {"com.microsoft", "com_microsoft"} and node.op_type == "RotaryEmbedding":
            interleaved = int(values.get("interleaved").i) if "interleaved" in values else 0
            if interleaved != 0 or len(node.input) != 4 or len(node.output) != 1:
                raise NotImplementedError(f"未覆盖的RotaryEmbedding形态：{node.name}")
        elif node.domain in {"com.microsoft", "com_microsoft"} and node.op_type == "MultiHeadAttention":
            populated = [index for index, name in enumerate(node.input) if name]
            if populated != [0, 1, 2, 5] or len(node.output) != 1:
                raise NotImplementedError(f"未覆盖的MultiHeadAttention可选输入形态：{node.name}")

    # onnx2torch 1.5.15把CumSum缺省reverse误写成1，而ONNX规范的缺省值是0。
    # 仅在属性缺失时显式补上规范默认值，避免位置索引被反向累计。
    normalized_cumsum_nodes = 0
    for node in model.graph.node:
        if not node.domain and node.op_type == "CumSum":
            attribute_names = {attribute.name for attribute in node.attribute}
            if "reverse" not in attribute_names:
                node.attribute.append(onnx_helper.make_attribute("reverse", 0))
                normalized_cumsum_nodes += 1

    aliases = _alias_newer_standard_versions()
    registered: list[str] = []

    def simplified(node: Any, graph: Any) -> Any:
        del graph
        axis = int(node.attributes.get("axis", -1))
        epsilon = float(node.attributes.get("epsilon", 1e-5))
        return OperationConverterResult(
            torch_module=OrtSimplifiedLayerNormalization(axis, epsilon),
            onnx_mapping=onnx_mapping_from_node(node),
        )

    def gelu(node: Any, graph: Any) -> Any:
        del graph
        approximate = node.attributes.get("approximate", "none")
        if isinstance(approximate, bytes):
            approximate = approximate.decode()
        return OperationConverterResult(
            torch_module=OrtGelu(approximate),
            onnx_mapping=onnx_mapping_from_node(node),
        )

    def rotary(node: Any, graph: Any) -> Any:
        del graph
        return OperationConverterResult(
            torch_module=OrtRotaryEmbedding(
                interleaved=bool(node.attributes.get("interleaved", 0)),
                rotary_embedding_dim=int(node.attributes.get("rotary_embedding_dim", 0)),
                scale=float(node.attributes.get("scale", 1.0)),
            ),
            onnx_mapping=onnx_mapping_from_node(node),
        )

    def attention(node: Any, graph: Any) -> Any:
        del graph
        return OperationConverterResult(
            torch_module=OrtMultiHeadAttention(
                num_heads=int(node.attributes["num_heads"]),
                scale=float(node.attributes["scale"]) if "scale" in node.attributes else None,
            ),
            onnx_mapping=OnnxMapping(
                inputs=(
                    node.input_values[0],
                    node.input_values[1],
                    node.input_values[2],
                    node.input_values[5],
                ),
                outputs=node.output_values,
            ),
        )

    additions = [
        (registry.OperationDescription("", "SimplifiedLayerNormalization", 21), simplified),
        (registry.OperationDescription("", "Gelu", 20), gelu),
        (registry.OperationDescription("com_microsoft", "RotaryEmbedding", 1), rotary),
        (registry.OperationDescription("com_microsoft", "MultiHeadAttention", 1), attention),
    ]
    for description, converter in additions:
        if _register_converter(description, converter):
            registered.append(f"{description.domain or 'ai.onnx'}::{description.operation_type}:{description.version}")

    sanitized_domain_nodes = 0
    for node in model.graph.node:
        if node.domain == "com.microsoft":
            node.domain = "com_microsoft"
            sanitized_domain_nodes += 1
    for opset in model.opset_import:
        if opset.domain == "com.microsoft":
            opset.domain = "com_microsoft"

    return {
        "operator_counts": {f"{domain}::{op}": count for (domain, op), count in sorted(counts.items())},
        "version_aliases": aliases,
        "registered_converters": registered,
        "normalized_trailing_optional_inputs": {
            f"{domain}::{op}": count
            for (domain, op), count in sorted(normalized_trailing_optional_inputs.items())
        },
        "normalized_cumsum_default_reverse": normalized_cumsum_nodes,
        "sanitized_domain_nodes": sanitized_domain_nodes,
        "domain_rewrite": "com.microsoft -> com_microsoft (in-memory onnx2torch graph only)",
    }
