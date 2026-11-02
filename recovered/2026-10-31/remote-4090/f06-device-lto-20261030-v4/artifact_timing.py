"""Device execution of warmed artifacts; host capture/dispatch is outside events."""
import math
import os
import statistics
import time
import traceback


def measure_device_routes(functions, inputs, expected, tolerance, repeat_index):
    import torch

    calls = 128
    groups = 7
    graphs, records = {}, {}
    stream = torch.cuda.Stream()
    stream.wait_stream(torch.cuda.current_stream())
    for label, fn in functions.items():
        rec = records[label] = dict(status='preparing', calls_per_replay=calls)
        try:
            with torch.cuda.stream(stream):
                for _ in range(8):
                    fn(*inputs)
            stream.synchronize()
            graph = torch.cuda.CUDAGraph()
            with torch.cuda.graph(graph, stream=stream):
                for _ in range(calls):
                    output = fn(*inputs)
            graph.replay()
            torch.cuda.synchronize()
            torch.testing.assert_close(output, expected[label] if isinstance(expected, dict) else expected, **tolerance)
            start, end = (torch.cuda.Event(enable_timing=True) for _ in range(2))
            start.record()
            for _ in range(10):
                graph.replay()
            end.record()
            end.synchronize()
            elapsed = start.elapsed_time(end)
            replays = max(10, min(1000, math.ceil(200.0 / max(elapsed, 0.001))))
            rec.update(status='ready', calibration_10_replays_ms=elapsed,
                       replays_per_group=replays, samples_us=[],
                       capture_correct=True, output_semantics='fixed graph buffers during replay only')
            graphs[label] = (graph, output, start, end)
        except Exception as exc:
            rec.update(status='error', error=f'{type(exc).__name__}: {exc}',
                       traceback=traceback.format_exc())
            if any(s in str(exc).lower() for s in ('illegal memory', 'device-side assert',
                       'device lost', 'out of memory', 'status700', 'status 700', 'cuda error')):
                raise

    prewarm_seconds = float(os.environ.get('GELU_GPU_PREWARM_SECONDS', '0'))
    if prewarm_seconds:
        start_warmup = time.monotonic()
        while time.monotonic() - start_warmup < prewarm_seconds:
            for graph, _, _, _ in graphs.values():
                for _ in range(40):
                    graph.replay()
            torch.cuda.synchronize()
        for rec in records.values():
            rec['gpu_prewarm_seconds'] = time.monotonic() - start_warmup
    order = list(graphs)
    for j in range(groups):
        labels = order[j % len(order):] + order[:j % len(order)] if order else []
        if (j + repeat_index) % 2:
            labels.reverse()
        for label in labels:
            graph, output, start, end = graphs[label]
            rec = records[label]
            torch.cuda.synchronize()
            start.record()
            for _ in range(rec['replays_per_group']):
                graph.replay()
            end.record()
            end.synchronize()
            rec['samples_us'].append(start.elapsed_time(end) * 1000 /
                                     (rec['replays_per_group'] * calls))
    for label, (graph, output, start, end) in graphs.items():
        rec = records[label]
        graph.replay()
        torch.cuda.synchronize()
        torch.testing.assert_close(output, expected[label] if isinstance(expected, dict) else expected, **tolerance)
        rec.update(status='passed', median_us=statistics.median(rec['samples_us']),
                   post_replay_correct=True)
    return records
