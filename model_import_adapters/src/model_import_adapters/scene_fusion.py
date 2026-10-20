"""Small, explicit FX hand-off for a qualified PPU MLP Triton template.

This is not a model front-end or an automatic global fusion policy. The caller
must verify the target and select the original module for larger inputs. The
exported Core ATen artifact and original GraphModule are never modified.
"""
from __future__ import annotations

import copy


def eligible_mlp_probe(batch, sequence):
    """Frozen text probes use M=batch*sequence; larger probes keep the original path."""
    return isinstance(batch, int) and isinstance(sequence, int) and batch > 0 and sequence > 0 and batch * sequence <= 64


def rewrite_small_mlp_epilogues(module, replacement):
    """Replace single-use addmm/view/exact-GELU chains of one qualified geometry.

The replacement is injected to keep graph legality testable without a device.
Production callers use the PPU triton_op only after checking device and M.
"""
    import torch

    graph = copy.deepcopy(module.graph)
    matched = []
    for gelu in list(graph.nodes):
        if gelu.op != "call_function" or gelu.target != torch.ops.aten.gelu.default:
            continue
        if len(gelu.args) != 1 or gelu.kwargs.get("approximate", "none") != "none":
            continue
        view = gelu.args[0]
        if not isinstance(view, torch.fx.Node) or view.op != "call_function" or view.target != torch.ops.aten.view.default:
            continue
        mm = view.args[0]
        if not isinstance(mm, torch.fx.Node) or mm.op != "call_function" or mm.target != torch.ops.aten.addmm.default:
            continue
        if len(mm.users) != 1 or len(view.users) != 1 or len(mm.args) != 3:
            continue
        if any(key not in {"alpha", "beta"} or value != 1 for key, value in mm.kwargs.items()):
            continue
        bias, activation, weight = mm.args
        values = [node.meta.get("val") if isinstance(node, torch.fx.Node) else None
                  for node in (bias, activation, weight)]
        if any(not isinstance(value, torch.Tensor) or value.dtype != torch.float32 for value in values):
            continue
        b, a, w = values
        if b.ndim != 1 or a.ndim != 2 or w.ndim != 2:
            continue
        # Weight dimensions and layout are static; do not infer support from a
        # model name or assume an arbitrary symbolic contraction is an MLP.
        if tuple(w.shape) != (384, 1536) or tuple(b.shape) != (1536,) or a.shape[1] != 384:
            continue
        if a.stride(1) != 1 or w.stride(0) != 1 or b.stride(0) != 1:
            continue
        with graph.inserting_before(mm):
            fused = graph.call_function(replacement, (activation, weight, bias))
        fused.meta = dict(mm.meta)
        view.replace_input_with(mm, fused)
        gelu.replace_all_uses_with(view)
        matched.append({"addmm": mm.name, "gelu": gelu.name, "k": 384, "n": 1536,
                        "input_precision": "tf32x3", "max_m": 64})
        graph.erase_node(gelu)
        graph.erase_node(mm)
    graph.lint()
    result = torch.fx.GraphModule(module, graph)
    for name in ("_in_spec", "_out_spec"):
        if hasattr(module, name):
            setattr(result, name, getattr(module, name))
    return result, matched
