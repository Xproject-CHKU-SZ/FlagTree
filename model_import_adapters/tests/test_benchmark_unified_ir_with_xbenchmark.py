from __future__ import annotations

import importlib.util
import sys
from pathlib import Path


SCRIPT = Path(__file__).parents[1] / "scripts" / "benchmark_unified_ir_with_xbenchmark.py"
SPEC = importlib.util.spec_from_file_location("benchmark_unified_ir_with_xbenchmark", SCRIPT)
assert SPEC is not None and SPEC.loader is not None
MODULE = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = MODULE
SPEC.loader.exec_module(MODULE)


def test_timed_forward_uses_warmup_and_synchronized_measurements() -> None:
    calls = {"forward": 0, "sync": 0}

    def forward() -> int:
        calls["forward"] += 1
        return calls["forward"]

    def synchronize(_device: str) -> None:
        calls["sync"] += 1

    def summarize(values: list[float]) -> dict[str, float]:
        return {
            "mean": sum(values) / len(values),
            "median": values[len(values) // 2],
            "p50": values[len(values) // 2],
            "p90": values[-1],
            "p99": values[-1],
            "min": min(values),
            "max": max(values),
            "stddev": 0.0,
        }

    result = MODULE._timed_forward(
        forward,
        warmup_runs=2,
        measured_runs=3,
        synchronize=synchronize,
        device="fake:0",
        summarize_latencies=summarize,
    )

    assert result.status == "passed"
    assert result.warmup_runs == 2
    assert result.measured_runs == 3
    assert result.raw_latencies_s is not None
    assert len(result.raw_latencies_s) == 3
    assert calls["forward"] == 5
    # One drain after warmup plus pre/post synchronization for every sample.
    assert calls["sync"] == 1 + 2 * 3
    assert result.latency_p50_s is not None
    assert result.latency_p95_s is not None


def test_linear_percentile_matches_default_interpolation() -> None:
    assert MODULE._linear_percentile([4.0, 1.0, 3.0, 2.0], 95) == 3.85
    assert MODULE._linear_percentile([7.0], 95) == 7.0


def test_timing_failure_preserves_error_and_not_fake_latency() -> None:
    def fail():
        raise RuntimeError("sample failure")

    result = MODULE._timed_forward(
        fail, warmup_runs=0, measured_runs=1,
        synchronize=lambda _: None, device="fake:0",
        summarize_latencies=lambda _: {},
    )
    assert result.status == "failed"
    assert result.error == "RuntimeError: sample failure"
    assert result.latency_mean_s is None
    assert result.raw_latencies_s == []
