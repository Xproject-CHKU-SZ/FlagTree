#!/usr/bin/env python3
"""Profile a three-kernel tensor lifetime chain on the T-Head PPU backend.

The PPU runtime intentionally exposes its PyTorch compatibility interface as
``torch.cuda`` and uses the ``cuda`` device string.  This script nevertheless
requires the FlagTree ``ppu`` backend and records the physical device name so
that the resulting report cannot be confused with an NVIDIA run.

The measured chain is::

    X --K1--> H1 --K2--> H2 --K3--> Y

The ``eager`` policy releases each input immediately after its last consumer;
the ``hold`` policy deliberately retains every tensor until the chain ends.
Comparing them isolates the peak-memory effect of lifetime-aware release.  The
report records allocator counters, data pointers, resident tensors, and whether
the caching allocator reused a previously released address.
"""

from __future__ import annotations

import argparse
import gc
import json
import os
from pathlib import Path
from typing import Any

import torch
import triton
import triton.language as tl


@triton.jit
def _scale_kernel(output, source, n_elements, factor: tl.constexpr, BLOCK_SIZE: tl.constexpr):
    offsets = tl.program_id(0) * BLOCK_SIZE + tl.arange(0, BLOCK_SIZE)
    mask = offsets < n_elements
    values = tl.load(source + offsets, mask=mask)
    tl.store(output + offsets, values * factor, mask=mask)


def _launch(output, source, n_elements: int, factor: float, block_size: int) -> None:
    grid = (triton.cdiv(n_elements, block_size),)
    _scale_kernel[grid](
        output,
        source,
        n_elements,
        factor=factor,
        BLOCK_SIZE=block_size,
    )


def _memory_snapshot(event: str, resident_tensors: list[str]) -> dict[str, Any]:
    torch.cuda.synchronize()
    free_bytes, total_bytes = torch.cuda.mem_get_info()
    return {
        "event": event,
        "resident_tensors": resident_tensors,
        "memory_allocated_bytes": torch.cuda.memory_allocated(),
        "memory_reserved_bytes": torch.cuda.memory_reserved(),
        "max_memory_allocated_bytes": torch.cuda.max_memory_allocated(),
        "max_memory_reserved_bytes": torch.cuda.max_memory_reserved(),
        "device_free_bytes": free_bytes,
        "device_total_bytes": total_bytes,
    }


def _warm_up(block_size: int) -> None:
    """Compile and launch the kernel before resetting measurement counters."""

    count = block_size
    source = torch.ones(count, dtype=torch.float32, device="cuda")
    first = torch.empty_like(source)
    second = torch.empty_like(source)
    third = torch.empty_like(source)
    _launch(first, source, count, 2.0, block_size)
    _launch(second, first, count, 3.0, block_size)
    _launch(third, second, count, 4.0, block_size)
    torch.cuda.synchronize()
    del source, first, second, third
    gc.collect()
    torch.cuda.empty_cache()
    torch.cuda.synchronize()


def _model_plan(numel: int, tensor_bytes: int, device_name: str) -> dict[str, Any]:
    """Build the matching static G1 plan for later liveness comparison."""

    task_specs = [
        ("task.k1", [], "tensor.x", "tensor.h1", "scale_by_2"),
        ("task.k2", ["task.k1"], "tensor.h1", "tensor.h2", "scale_by_3"),
        ("task.k3", ["task.k2"], "tensor.h2", "tensor.y", "scale_by_4"),
    ]
    tasks = [
        {
            "task_id": task_id,
            "kernel_id": "kernel.scale",
            "predecessors": predecessors,
            "inputs": [input_id],
            "outputs": [output_id],
            "source_node": source_node,
            "region_id": None,
            "device": "ppu:0",
            "stream": "stream:default",
        }
        for task_id, predecessors, input_id, output_id, source_node in task_specs
    ]

    tensor_specs = [
        ("tensor.x", "storage.x", None, ["task.k1"], False),
        ("tensor.h1", "storage.h1", "task.k1", ["task.k2"], False),
        ("tensor.h2", "storage.h2", "task.k2", ["task.k3"], False),
        ("tensor.y", "storage.y", "task.k3", [], True),
    ]
    tensors = [
        {
            "tensor_id": tensor_id,
            "storage_id": storage_id,
            "producer": producer,
            "consumers": consumers,
            "dtype": "float32",
            "shape": [numel],
            "storage_offset_bytes": 0,
            "source_value": tensor_id.removeprefix("tensor."),
            "is_graph_output": is_output,
            "is_persistent": False,
            "is_mutated": False,
        }
        for tensor_id, storage_id, producer, consumers, is_output in tensor_specs
    ]

    storages = [
        {
            "storage_id": storage_id,
            "size_bytes": tensor_bytes,
            "alignment": 256,
            "device": "ppu:0",
            "allocation_kind": allocation_kind,
            "source": f"{numel} float32 elements measured on {device_name}",
        }
        for storage_id, allocation_kind in (
            ("storage.x", "input"),
            ("storage.h1", "temporary"),
            ("storage.h2", "temporary"),
            ("storage.y", "output"),
        )
    ]

    return {
        "plan_id": "ppu.three-kernel-lifetime-chain",
        "schema_version": "f08-g01-model-plan/0.1",
        "model_id": "ppu.lifetime-smoke",
        "tasks": tasks,
        "tensors": tensors,
        "storages": storages,
        "regions": [],
        "shape_bindings": {},
    }


def profile(
    numel: int, block_size: int, release_policy: str
) -> tuple[dict[str, Any], dict[str, Any]]:
    if release_policy not in {"eager", "hold"}:
        raise ValueError(f"unsupported release policy: {release_policy}")
    if os.environ.get("FLAGTREE_BACKEND") != "ppu":
        raise RuntimeError("FLAGTREE_BACKEND must be set to 'ppu'")
    if not torch.cuda.is_available():
        raise RuntimeError("the PPU torch.cuda compatibility interface is unavailable")

    device_name = torch.cuda.get_device_name(torch.cuda.current_device())
    if "PPU" not in device_name.upper():
        raise RuntimeError(f"expected a PPU device, got '{device_name}'")

    _warm_up(block_size)
    torch.cuda.reset_peak_memory_stats()
    baseline = _memory_snapshot("baseline", [])

    snapshots: list[dict[str, Any]] = [baseline]
    pointers: dict[str, int] = {}

    x = torch.ones(numel, dtype=torch.float32, device="cuda")
    pointers["tensor.x"] = x.data_ptr()
    snapshots.append(_memory_snapshot("input_allocated", ["tensor.x"]))

    h1 = torch.empty_like(x)
    pointers["tensor.h1"] = h1.data_ptr()
    _launch(h1, x, numel, 2.0, block_size)
    snapshots.append(_memory_snapshot("task.k1.complete", ["tensor.x", "tensor.h1"]))
    if release_policy == "eager":
        del x
        gc.collect()
        snapshots.append(_memory_snapshot("tensor.x.released", ["tensor.h1"]))
    else:
        snapshots.append(_memory_snapshot("tensor.x.retained", ["tensor.x", "tensor.h1"]))

    h2 = torch.empty_like(h1)
    pointers["tensor.h2"] = h2.data_ptr()
    _launch(h2, h1, numel, 3.0, block_size)
    resident_at_k2 = ["tensor.h1", "tensor.h2"]
    if release_policy == "hold":
        resident_at_k2.insert(0, "tensor.x")
    snapshots.append(_memory_snapshot("task.k2.complete", resident_at_k2))
    if release_policy == "eager":
        del h1
        gc.collect()
        snapshots.append(_memory_snapshot("tensor.h1.released", ["tensor.h2"]))
    else:
        snapshots.append(_memory_snapshot("tensor.h1.retained", resident_at_k2))

    y = torch.empty_like(h2)
    pointers["tensor.y"] = y.data_ptr()
    _launch(y, h2, numel, 4.0, block_size)
    resident_at_k3 = ["tensor.h2", "tensor.y"]
    if release_policy == "hold":
        resident_at_k3 = ["tensor.x", "tensor.h1", *resident_at_k3]
    snapshots.append(_memory_snapshot("task.k3.complete", resident_at_k3))

    observed = y[:8].cpu()
    expected = torch.full((8,), 24.0, dtype=torch.float32)
    torch.testing.assert_close(observed, expected, rtol=0, atol=0)

    if release_policy == "eager":
        del h2
    else:
        del x, h1, h2
    gc.collect()
    release_event = "tensor.h2.released" if release_policy == "eager" else "intermediates.released"
    snapshots.append(_memory_snapshot(release_event, ["tensor.y"]))

    tensor_bytes = numel * torch.tensor([], dtype=torch.float32).element_size()
    report = {
        "report_version": "f08-g01-ppu-runtime/0.2",
        "backend": os.environ["FLAGTREE_BACKEND"],
        "physical_device": device_name,
        "logical_device": torch.cuda.current_device(),
        "numel": numel,
        "dtype": "float32",
        "release_policy": release_policy,
        "tensor_bytes": tensor_bytes,
        "expected_static_peak_bytes": 2 * tensor_bytes,
        "expected_runtime_peak_bytes": (2 if release_policy == "eager" else 4) * tensor_bytes,
        "baseline_allocated_bytes": baseline["memory_allocated_bytes"],
        "runtime_peak_delta_bytes": (
            torch.cuda.max_memory_allocated() - baseline["memory_allocated_bytes"]
        ),
        "pointers": pointers,
        "allocator_reuse": {
            "tensor.h2_reused_tensor.x": pointers["tensor.h2"] == pointers["tensor.x"],
            "tensor.y_reused_tensor.h1": pointers["tensor.y"] == pointers["tensor.h1"],
        },
        "snapshots": snapshots,
        "correctness": "passed: y = x * 2 * 3 * 4",
        "interpretation": (
            "eager-versus-hold runtime allocation comparison; allocator address reuse does not "
            "prove compiler-planned G2 reuse"
        ),
    }
    return report, _model_plan(numel, tensor_bytes, device_name)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--numel", type=int, default=16 * 1024 * 1024)
    parser.add_argument("--block-size", type=int, default=256)
    parser.add_argument(
        "--release-policy",
        choices=("eager", "hold"),
        default="eager",
        help="release tensors after last use or retain all tensors until the chain ends",
    )
    parser.add_argument(
        "--output",
        type=Path,
        default=Path("ppu-lifetime-runtime-report.json"),
        help="runtime report path",
    )
    parser.add_argument(
        "--plan-output",
        type=Path,
        default=Path("ppu-lifetime-model-plan.json"),
        help="matching static model-plan path",
    )
    args = parser.parse_args()
    if args.numel <= 0 or args.block_size <= 0:
        parser.error("--numel and --block-size must be positive")

    report, plan = profile(args.numel, args.block_size, args.release_policy)
    args.output.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    args.plan_output.write_text(json.dumps(plan, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(report, ensure_ascii=False, indent=2))
    print(f"runtime report: {args.output}")
    print(f"static model plan: {args.plan_output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
