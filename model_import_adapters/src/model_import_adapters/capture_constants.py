"""Opt-in pre-materialization of explicit CPU-scalar to device-copy edges.

Do not relocate unrelated CPU arithmetic, metadata assertions, parameters or
mutable buffers. A new nonpersistent buffer replaces only a constant conversion
edge; the original exported attribute and PT2 remain unchanged. Call once before
compilation and never concurrently with mutation/execution.
"""
import hashlib


def prepare_capture_constants(module, device="cuda:0"):
    import torch
    from torch.fx import GraphModule

    target = torch.device(device)
    if target.type != "cuda":
        raise ValueError("Explicit CUDA-compatible target required")
    records = []
    for child in module.modules():
        if not isinstance(child, GraphModule):
            continue
        parameters = set(dict(child.named_parameters()))
        buffers = set(dict(child.named_buffers()))
        changed = False
        for node in list(child.graph.nodes):
            if node.op != "call_function" or node.target != torch.ops.aten._to_copy.default:
                continue
            requested = node.kwargs.get("device")
            if requested is None or torch.device(requested) != target or len(node.args) != 1:
                continue
            original = node.args[0]
            while (getattr(original, "op", None) == "call_function"
                   and original.target in {torch.ops.aten.clone.default, torch.ops.aten.detach.default}
                   and len(original.args) == 1):
                original = original.args[0]
            if getattr(original, "op", None) != "get_attr":
                continue
            name = original.target
            if name in parameters or name in buffers:
                continue
            value = child
            for part in name.split("."):
                value = getattr(value, part)
            if (not isinstance(value, torch.Tensor) or value.device.type != "cpu" or value.ndim != 0
                    or value.requires_grad or value.dtype not in {torch.int64, torch.int32, torch.float32, torch.float64, torch.bool}):
                continue
            # Only literal immutable graph attributes qualify; never fold input,
            # parameter or buffer values and never remove CPU metadata checks.
            relocated = value.detach().to(target).clone()
            stem = "_capture_constant_" + node.name
            index = 0
            buffer_name = stem
            while hasattr(child, buffer_name):
                index += 1; buffer_name = f"{stem}_{index}"
            child.register_buffer(buffer_name, relocated, persistent=False)
            with child.graph.inserting_before(node):
                replacement = child.graph.get_attr(buffer_name)
            node.args = (replacement,)
            changed = True
            records.append({"source_attribute": name, "conversion_node": node.name,
                "buffer": buffer_name, "shape": [], "dtype": str(value.dtype), "target": str(target),
                "source_value_sha256": hashlib.sha256(value.detach().numpy().tobytes()).hexdigest()})
        if changed:
            child.graph.lint(); child.recompile()
    return records
