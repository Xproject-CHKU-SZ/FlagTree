import copy
from pathlib import Path
import sys
import unittest

sys.path.insert(0, str(Path(__file__).parents[1] / "scripts"))
from analyze_shape_kernel_trace import analyze_trace


class TraceJoinTest(unittest.TestCase):
    def fixture(self):
        return {"traceEvents": [
            {"cat": "cpu_op", "ph": "X", "pid": 100, "ts": 10, "dur": 20,
             "name": "aten::mm", "args": {"External id": 7, "Input Dims": [[8,768],[768,2304]],
                                          "Input Strides": [[768,1],[1,768]], "Input type": ["float","float"]}},
            {"cat": "cuda_driver", "ph": "X", "pid": 100, "ts": 15, "dur": 2,
             "name": "cuLaunchKernelEx", "args": {"External id": 7, "correlation": 42}},
            {"cat": "kernel", "ph": "X", "pid": 0, "ts": 80, "dur": 5,
             "name": "gemm", "args": {"External id": 7, "correlation": 42}}]}

    def test_unique_device_to_operator_join(self):
        report = analyze_trace(self.fixture())
        self.assertEqual(report["linked"], 1)
        self.assertEqual(report["geometry_kernel_groups"][0]["sum_kernel_us"], 5)
        self.assertEqual(report["records"][0]["input_dims"], [[8,768],[768,2304]])

    def test_ambiguous_missing_and_mismatched_evidence_is_unlinked(self):
        for mutate in (lambda e: e.append(copy.deepcopy(e[1])),
                       lambda e: e[1]["args"].update(correlation=99),
                       lambda e: e[1]["args"].update({"External id": 99}),
                       lambda e: e[1].update(pid=101),
                       lambda e: e[1].update(ts=40),
                       lambda e: e.append(copy.deepcopy(e[0]))):
            trace = self.fixture(); mutate(trace["traceEvents"])
            report = analyze_trace(trace)
            self.assertEqual(report["linked"], 0)
            self.assertEqual(report["geometry_kernel_groups"], [])

    def test_wrapper_and_host_time_never_added_to_kernel_time(self):
        trace = self.fixture()
        trace["traceEvents"].append({"cat":"gpu_user_annotation","ph":"X","name":"CompiledFxGraph",
                                     "ts":0,"dur":1000,"args":{}})
        report = analyze_trace(trace)
        self.assertEqual(report["kernel_events"],1)
        self.assertEqual(report["geometry_kernel_groups"][0]["sum_kernel_us"],5)

    def test_splitk_multiple_kernels_attach_to_same_operator(self):
        trace = self.fixture(); launch=copy.deepcopy(trace["traceEvents"][1]);kernel=copy.deepcopy(trace["traceEvents"][2])
        launch["args"]["correlation"]=43; kernel["args"]["correlation"]=43;kernel["name"]="reduction"
        trace["traceEvents"].extend([launch,kernel]);report=analyze_trace(trace)
        self.assertEqual(report["linked"],2)
        self.assertEqual({r["operator_event_index"] for r in report["records"]},{0})


if __name__ == "__main__":
    unittest.main()
