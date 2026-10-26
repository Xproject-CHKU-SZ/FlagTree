#!/usr/bin/env python3
"""Capture one observed GEMM geometry from all five frozen model probes on PPU.

This is diagnostic eager execution of the COMPLETE saved task on PPU, not CPU
inference or a performance measurement. No graph rewrite/fusion is introduced.
Weights are stored once; every probe retains its real activation and output.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import sys
import time
import traceback


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def save(path, value):
    path.write_text(json.dumps(value, indent=2, allow_nan=False) + "\n", encoding="utf-8")


def geometry_matches(x_shape, weight_shape, k, n):
    return (len(x_shape) == len(weight_shape) == 2 and x_shape[1] == weight_shape[0] == k
            and weight_shape[1] == n and x_shape[0] > 0)


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--case", type=Path, required=True)
    p.add_argument("--source", type=Path, required=True)
    p.add_argument("--output", type=Path, required=True)
    p.add_argument("--k", type=int, required=True)
    p.add_argument("--n", type=int, required=True)
    args = p.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    sys.path.insert(0, str(args.source / "model_import_adapters/src"))
    report = {"status": "failed", "scope": "real PPU GEMM capture; no optimization or performance acceptance",
              "cpu_model_forward": "not_run", "started_at": time.time(), "probes": [],
              "physical_device": os.environ.get("CUDA_VISIBLE_DEVICES")}
    save(args.output / "command.json", [sys.executable, *sys.argv])
    try:
        import numpy as np
        import torch
        from model_import_adapters.compiled_execution import _retarget_factory_devices
        assert torch.cuda.is_available() and torch.cuda.get_device_name(0) == "PPU-ZW810E"
        torch.set_num_threads(1)
        torch.set_float32_matmul_precision("highest")
        saved = json.loads((args.case / "report.json").read_text())
        protocol = json.loads((args.case / "task-protocol.json").read_text())
        manifest = json.loads((args.case / "artifacts/manifest.json").read_text())
        pt2 = args.case / "artifacts/model.core_aten.pt2"
        assert saved["status"] == "passed" and sha(pt2) == manifest["artifact"]["sha256"]
        probes = saved["probes"]
        assert len(probes) == 5 and {(x["batch"], x["sequence"]) for x in probes} == {(1,8),(2,24),(4,64),(2,8),(1,64)}
        module = torch.export.load(pt2).module().to("cuda:0")
        report["retargeted_factories"] = _retarget_factory_devices(module, "cuda:0")
        # Device factory retargeting is an intentional, recorded preparation
        # step. Only compare graph immutability AFTER that step.
        prepared_code = module.code
        # No runtime output is replaced; every graph node still executes once.
        node_name = None
        shared_weight = None

        class Capture(torch.fx.Interpreter):
            def __init__(self):
                super().__init__(module)
                self.captured = None

            def run_node(self, node):
                nonlocal node_name
                operands, kwargs = self.fetch_args_kwargs_from_env(node)
                value = super().run_node(node)
                if node.op != "call_function" or self.captured is not None:
                    return value
                if node.target == torch.ops.aten.mm.default:
                    x, weight = operands[:2]; bias = None
                elif node.target == torch.ops.aten.addmm.default:
                    bias, x, weight = operands[:3]
                else:
                    return value
                if node_name is not None and node.name != node_name:
                    return value
                if geometry_matches(x.shape, weight.shape, args.k, args.n):
                    node_name = node.name
                    assert x.device.type == weight.device.type == value.device.type == "cuda"
                    assert x.dtype == weight.dtype == value.dtype == torch.float32
                    self.captured = {"x": x.detach(), "weight": weight.detach(), "reference": value.detach(),
                        "bias": bias.detach() if bias is not None else None, "node": node.name,
                        "operator": str(node.target), "alpha": kwargs.get("alpha", 1), "beta": kwargs.get("beta", 1)}
                return value

        def array(tensor):
            return tensor.detach().cpu().numpy().copy(order="K")

        with torch.inference_mode():
            for probe in probes:
                path = args.case / Path(probe["archive"]).name
                assert sha(path) == probe["sha256"]
                with np.load(path, allow_pickle=False) as data:
                    inputs = tuple(torch.from_numpy(data[k].copy()).to("cuda:0") for k in probe["input_keys"])
                    expected = data["original_output"].copy()
                capture = Capture()
                result = capture.run(*inputs)
                torch.cuda.synchronize()
                leaves = torch.utils._pytree.tree_leaves(result)
                assert len(leaves) == 1 and isinstance(leaves[0], torch.Tensor)
                actual = array(leaves[0]); delta = np.abs(actual.astype(np.float64) - expected.astype(np.float64))
                assert actual.shape == expected.shape and actual.dtype == expected.dtype
                assert np.isfinite(actual).all() and np.isfinite(expected).all()
                assert np.all(delta <= 3e-4 + 3e-4*np.abs(expected.astype(np.float64)))
                captured = capture.captured
                assert captured is not None, "Requested geometry/node missing from this probe"
                x, weight, reference = [captured[k] for k in ("x", "weight", "reference")]
                assert all(bool(torch.isfinite(t).all()) for t in (x,weight,reference))
                if shared_weight is None:
                    shared_weight = weight.clone()
                    np.savez_compressed(args.output/"weight.npz", weight=array(weight))
                    report["weight"] = {"path":str(args.output/"weight.npz"),"sha256":sha(args.output/"weight.npz"),
                        "shape":list(weight.shape),"stride":list(weight.stride()),"dtype":str(weight.dtype)}
                else:
                    assert bool(torch.equal(shared_weight, weight)), "Shared weight changed across probes"
                filename = f"gemm-{probe['batch']}x{probe['sequence']}.npz"
                arrays = {"x":array(x),"reference":array(reference),"model_output":actual}
                if captured["bias"] is not None:
                    arrays["bias"] = array(captured["bias"])
                np.savez_compressed(args.output/filename, **arrays)
                report["probes"].append({"batch":probe["batch"],"sequence":probe["sequence"],
                    "input_sha256":probe["sha256"],"node":captured["node"],"operator":captured["operator"],
                    "alpha":captured["alpha"],"beta":captured["beta"],"shape_mkn":[x.shape[0],args.k,args.n],
                    "x_stride":list(x.stride()),"reference_stride":list(reference.stride()),
                    "bias_stride":list(captured["bias"].stride()) if captured["bias"] is not None else None,
                    "fixture":str(args.output/filename),"fixture_sha256":sha(args.output/filename),
                    "complete_task_max_abs_error":float(delta.max())})
                save(args.output/"progress.json",report)
        assert module.code == prepared_code and sha(pt2) == manifest["artifact"]["sha256"], "Graph/source changed after preparation"
        report.update(status="passed",model_id=saved["model_id"],revision=saved["revision"],task=protocol["task"],
            pt2_sha256=sha(pt2),protocol_sha256=sha(args.case/"task-protocol.json"),device=torch.cuda.get_device_name(0),
            torch=torch.__version__,source_sha256=sha(Path(__file__)))
    except Exception as exc:
        report.update(error=f"{type(exc).__name__}: {exc}",traceback=traceback.format_exc())
    report["finished_at"] = time.time()
    save(args.output/"report.json", report)
    print(json.dumps({k:report.get(k) for k in ("status","model_id","error")}), flush=True)
    return 0 if report["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
