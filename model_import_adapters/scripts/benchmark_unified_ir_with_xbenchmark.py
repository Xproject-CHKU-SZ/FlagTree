#!/usr/bin/env python3
"""Measure unified-IR PT2 eager/compiled latency with x-benchmark timing utilities.

The x-benchmark repository owns the synchronization and latency-statistics
conventions. This runner applies those conventions to a saved Core ATen/PT2
artifact so model-adapter latency and unified-IR compiled latency stay distinct.
"""

from __future__ import annotations

import argparse
import importlib.util
import json
import os
import platform
import sys
import time
import traceback
from dataclasses import asdict, dataclass
from pathlib import Path
from typing import Any, Callable


@dataclass
class TimingResult:
    status: str = "passed"
    warmup_runs: int = 0
    measured_runs: int = 0
    latency_mean_s: float | None = None
    latency_median_s: float | None = None
    latency_p50_s: float | None = None
    latency_p90_s: float | None = None
    latency_p95_s: float | None = None
    latency_p99_s: float | None = None
    latency_min_s: float | None = None
    latency_max_s: float | None = None
    latency_stddev_s: float | None = None
    raw_latencies_s: list[float] | None = None
    peak_device_alloc_mb: float | None = None
    peak_device_reserved_mb: float | None = None
    peak_host_rss_mb: float | None = None
    error: str | None = None


def _load_xbenchmark_utils(root: Path) -> tuple[Any, Any, Any]:
    """Load x-benchmark utilities and their sibling ``utils.env`` module."""

    root_text = str(root)
    if root_text not in sys.path:
        sys.path.insert(0, root_text)
    try:
        device = importlib.import_module("utils.device")
        latency = importlib.import_module("utils.latency")
        memory = importlib.import_module("utils.memory")
    finally:
        # Keep x-benchmark's imported modules, but restore the caller's path
        # order so FlagTree's Triton package remains authoritative for compile.
        if root_text in sys.path:
            sys.path.remove(root_text)
    return device, latency, memory


def _timed_forward(
    forward: Callable[[], Any],
    *,
    warmup_runs: int,
    measured_runs: int,
    synchronize: Callable[[str], None],
    device: str,
    summarize_latencies: Callable[[list[float]], dict[str, float]],
    reset_peak_memory: Callable[[str], None] | None = None,
    peak_alloc: Callable[[str], float | None] | None = None,
    peak_reserved: Callable[[str], float | None] | None = None,
    peak_rss: Callable[[], float | None] | None = None,
) -> TimingResult:
    result = TimingResult(warmup_runs=warmup_runs, measured_runs=measured_runs)
    try:
        if reset_peak_memory is not None:
            reset_peak_memory(device)
        for _ in range(warmup_runs):
            forward()
        synchronize(device)

        latencies: list[float] = []
        for _ in range(measured_runs):
            synchronize(device)
            started = time.perf_counter()
            forward()
            synchronize(device)
            latencies.append(time.perf_counter() - started)
        stats = summarize_latencies(latencies)
        result.raw_latencies_s = latencies
        result.latency_p95_s = _linear_percentile(latencies, 95)
        for source, target in (
            ("mean", "latency_mean_s"), ("median", "latency_median_s"),
            ("p50", "latency_p50_s"), ("p90", "latency_p90_s"),
            ("p99", "latency_p99_s"), ("min", "latency_min_s"),
            ("max", "latency_max_s"), ("stddev", "latency_stddev_s"),
        ):
            setattr(result, target, float(stats[source]))
        if peak_alloc is not None:
            result.peak_device_alloc_mb = peak_alloc(device)
        if peak_reserved is not None:
            result.peak_device_reserved_mb = peak_reserved(device)
        if peak_rss is not None:
            result.peak_host_rss_mb = peak_rss()
    except Exception as exc:
        result.status = "failed"
        result.error = f"{type(exc).__name__}: {exc}"
        result.raw_latencies_s = []
    return result


def _linear_percentile(values: list[float], percentile: float) -> float:
    """Match NumPy's default linear percentile without an extra dependency."""
    if not values or not 0 <= percentile <= 100:
        raise ValueError("nonempty values and percentile in [0,100] required")
    ordered = sorted(values)
    position = (len(ordered) - 1) * percentile / 100
    lower = int(position)
    upper = min(lower + 1, len(ordered) - 1)
    return ordered[lower] + (ordered[upper] - ordered[lower]) * (position - lower)


def _parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--artifact-dir", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--x-benchmark-root", type=Path, required=True)
    parser.add_argument("--repo-root", type=Path, default=None)
    parser.add_argument("--device", default="cuda:0")
    parser.add_argument("--warmup-runs", type=int, default=3)
    parser.add_argument("--measured-runs", type=int, default=10)
    parser.add_argument(
        "--torchinductor-worker-start",
        choices=("spawn", "subprocess", "fork"),
        default="spawn",
        help="TorchInductor compile worker start method; PPU defaults to spawn.",
    )
    parser.add_argument("--torchinductor-compile-threads", type=int, default=1)
    parser.add_argument("--fullgraph", action=argparse.BooleanOptionalAction, default=True)
    parser.add_argument("--no-memory", action="store_true")
    parser.add_argument("--atol", type=float, default=3e-4)
    parser.add_argument("--rtol", type=float, default=3e-4)
    return parser


def main() -> int:
    args = _parser().parse_args()
    if args.warmup_runs < 0 or args.measured_runs <= 0:
        raise SystemExit("warmup-runs must be >= 0 and measured-runs must be > 0")
    artifact_dir = args.artifact_dir.resolve()
    args.output.parent.mkdir(parents=True, exist_ok=True)
    report: dict[str, Any] = {
        "status": "failed",
        "benchmark_source": {
            "repository": "x-benchmark",
            "root": str(args.x_benchmark_root.resolve()),
            "timing": "device_synchronize + time.perf_counter + summarize_latencies",
        },
        "artifact_dir": str(artifact_dir),
        "device": args.device,
        "warmup_runs": args.warmup_runs,
        "measured_runs": args.measured_runs,
        "fullgraph": args.fullgraph,
        "cpu_baseline": "not_run",
        "torchinductor_worker_start": args.torchinductor_worker_start,
        "torchinductor_compile_threads": args.torchinductor_compile_threads,
        "report_schema_version": 2,
        "failure_stage": "dependencies",
        "memory_scope": "both eager and compiled modules resident; not standalone compiled footprint",
    }
    try:
        os.environ.setdefault("TORCHINDUCTOR_WORKER_START", args.torchinductor_worker_start)
        os.environ.setdefault("TORCHINDUCTOR_COMPILE_THREADS", str(args.torchinductor_compile_threads))
        import torch

        device_utils, latency_utils, memory_utils = _load_xbenchmark_utils(
            args.x_benchmark_root.resolve()
        )
        if args.repo_root is not None:
            sys.path.insert(0, str((args.repo_root / "model_import_adapters" / "src").resolve()))
        from model_import_adapters.unified_ir import compare_outputs, load_core_aten, load_example_inputs

        manifest = json.loads((artifact_dir / "manifest.json").read_text(encoding="utf-8"))
        report["model_source"] = manifest.get("source")
        report["input_schema"] = manifest["input_archive"]["schema"]
        report["environment"] = {
            "python": platform.python_version(), "torch": torch.__version__,
            "device_name": torch.cuda.get_device_name(torch.device(args.device))
            if args.device.startswith("cuda") else args.device,
            "device_count": torch.cuda.device_count(),
        }
        report["failure_stage"] = "pt2_roundtrip"
        schema = manifest["input_archive"]["schema"]
        exported_path = artifact_dir / "model.core_aten.pt2"
        inputs_path = artifact_dir / "example_inputs.npz"
        eager = load_core_aten(exported_path).module().to(args.device)
        compiled_module = load_core_aten(exported_path).module().to(args.device)
        try:
            from model_import_adapters.compiled_execution import _retarget_factory_devices
            retargeted = _retarget_factory_devices(compiled_module, args.device)
        except ImportError:
            retargeted = 0
        device_args, device_kwargs = load_example_inputs(inputs_path, schema, device=args.device)
        eager_args, eager_kwargs = load_example_inputs(inputs_path, schema, device=args.device)
        report["input_tensors"] = [
            {"shape": list(value.shape), "dtype": str(value.dtype), "device": str(value.device)}
            for value in torch.utils._pytree.tree_leaves((device_args, device_kwargs))
            if isinstance(value, torch.Tensor)
        ]

        report["failure_stage"] = "ppu_eager_reference"
        with torch.inference_mode():
            eager_output = eager(*eager_args, **eager_kwargs)
        device_utils.device_synchronize(args.device)
        compile_started = time.perf_counter()
        report["failure_stage"] = "compile_and_first_inference"
        compiled = torch.compile(compiled_module, fullgraph=args.fullgraph)
        with torch.inference_mode():
            compiled_output = compiled(*device_args, **device_kwargs)
        device_utils.device_synchronize(args.device)
        compile_and_first_run_seconds = time.perf_counter() - compile_started
        report["failure_stage"] = "output_comparison"
        comparison = compare_outputs(eager_output, compiled_output, atol=args.atol, rtol=args.rtol)

        memory = not args.no_memory
        timing_kwargs = {
            "reset_peak_memory": memory_utils.reset_peak_memory if memory else None,
            "peak_alloc": memory_utils.peak_memory_allocated_mb if memory else None,
            "peak_reserved": memory_utils.peak_memory_reserved_mb if memory else None,
            "peak_rss": memory_utils.get_process_rss_mb if memory else None,
        }
        with torch.inference_mode():
            report["failure_stage"] = "performance_measurement"
            eager_timing = _timed_forward(
                lambda: eager(*eager_args, **eager_kwargs),
                warmup_runs=args.warmup_runs, measured_runs=args.measured_runs,
                synchronize=device_utils.device_synchronize, device=args.device,
                summarize_latencies=latency_utils.summarize_latencies, **timing_kwargs,
            )
            compiled_timing = _timed_forward(
                lambda: compiled(*device_args, **device_kwargs),
                warmup_runs=args.warmup_runs, measured_runs=args.measured_runs,
                synchronize=device_utils.device_synchronize, device=args.device,
                summarize_latencies=latency_utils.summarize_latencies, **timing_kwargs,
            )
        report.update({
            "status": "passed" if eager_timing.status == compiled_timing.status == "passed" else "failed",
            "compile_and_first_run_seconds": compile_and_first_run_seconds,
            "retargeted_factory_device_count": retargeted,
            "comparison": comparison,
            "eager": asdict(eager_timing),
            "compiled": asdict(compiled_timing),
            "speedup_eager_over_compiled": (
                eager_timing.latency_mean_s / compiled_timing.latency_mean_s
                if eager_timing.latency_mean_s and compiled_timing.latency_mean_s else None
            ),
            "failure_stage": None if eager_timing.status == compiled_timing.status == "passed" else "performance_measurement",
        })
        if compiled_timing.latency_mean_s and report["input_tensors"]:
            shape = report["input_tensors"][0]["shape"]
            report["compiled_throughput_samples_s"] = shape[0] / compiled_timing.latency_mean_s if shape else None
    except Exception as exc:
        report["error"] = f"{type(exc).__name__}: {exc}"
        report["traceback"] = traceback.format_exc()
    args.output.write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps(report, ensure_ascii=False, indent=2))
    return 0 if report.get("status") == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
