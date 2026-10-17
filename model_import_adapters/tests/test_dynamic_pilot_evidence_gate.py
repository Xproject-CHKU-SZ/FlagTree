"""Synthetic metadata fixtures only: no model/PPU success claims."""
from __future__ import annotations

import hashlib
import importlib.util
import json
import os
from pathlib import Path
import tempfile
import unittest

import numpy as np

SCRIPT = Path(os.environ.get("DYNAMIC_AUDIT_MODULE", Path(__file__).parents[1] / "scripts/audit_dynamic_text_pilots.py"))
SPEC = importlib.util.spec_from_file_location("evidence_gate_under_test", SCRIPT)
GATE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(GATE)


def write(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value, ensure_ascii=False), encoding="utf-8")


class EvidenceGateTests(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory()
        self.root = Path(self.temporary.name)
        self.case = self.root / "synthetic_metadata_case"
        self.logs = self.root / "logs"
        self.case.mkdir()
        self.logs.mkdir()
        self.model_id, self.revision = "fixture/metadata-only", "a" * 40
        constraints = {"schema_version": 1, "inputs": [{"archive_key": "arg_0", "input_node": "input_ids", "rank": 2, "dtype": "torch.int64", "axes": [
            {"axis": 0, "kind": "symbolic", "expression": "b", "symbols": ["b"], "bounds": {"lower": "1", "upper": "4"}},
            {"axis": 1, "kind": "symbolic", "expression": "s", "symbols": ["s"], "bounds": {"lower": "8", "upper": "64"}}]}],
            "symbols": [{"symbol": "b"}, {"symbol": "s"}], "range_constraints": []}
        artifacts = self.case / "artifacts"
        artifacts.mkdir()
        (artifacts / "model.core_aten.pt2").write_bytes(b"synthetic unit fixture, not an executable PT2")
        (artifacts / "graph.readable.txt").write_text("synthetic graph metadata")
        (artifacts / "graph_module.py").write_text("# synthetic metadata fixture")
        np.savez_compressed(artifacts / "example_inputs.npz", arg_0=np.zeros((2, 24), dtype=np.int64))
        semantics = {"registry_version": "fixture", "registry_sha256": "b" * 64, "validation": {"status": "passed", "errors": []}, "dynamic_dimensions": {"input_axis_constraints": constraints}}
        write(artifacts / "semantics.json", semantics)
        manifest = {"source": {"kind": "pytorch", "model_id": self.model_id, "revision": self.revision}, "export_mode": {"dynamic_shapes_requested": True}, "shape_constraints": constraints,
                    "artifact": {"sha256": GATE.sha256(artifacts / "model.core_aten.pt2")}, "input_archive": {"sha256": GATE.sha256(artifacts / "example_inputs.npz"), "schema": {"positional": ["arg_0"], "keyword": []}}}
        write(artifacts / "manifest.json", manifest)
        write(artifacts / "validation.json", {"status": "passed", "saved_and_loaded": True, "shape_constraints": {"saved_and_loaded_equal": True, "sha256": hashlib.sha256(json.dumps(constraints, sort_keys=True, ensure_ascii=False).encode()).hexdigest()},
              "manifest_sha256": GATE.sha256(artifacts / "manifest.json"), "semantic_contract_sha256": GATE.sha256(artifacts / "semantics.json"), "exported_program_sha256": manifest["artifact"]["sha256"]})
        write(self.case / "shape-constraints.json", constraints)
        write(self.case / "model-files.json", {"model_id": self.model_id, "revision": self.revision, "snapshot": "/synthetic/unit-fixture", "files": [{"relative_path": "weights.bin", "sha256": "c" * 64, "size_bytes": 1}]})
        write(self.case / "environment.json", {"device_name": "PPU-ZW810E", "source_baseline": {"base_commit": "d" * 40}})
        write(self.case / "task-protocol.json", {"task": "synthetic_metadata_fixture", "pipeline": [], "texts": ["unit fixture"], "warmup": 3, "measured_iterations": 10, "probes": sorted(GATE.EXPECTED_PROBES), "dtype": "float32"})
        write(self.case / "command.json", {"argv": ["unit-fixture", "--model-id", self.model_id]})
        write(self.case / "compiler-file-index.json", [])
        for name in ("audit.stdout.log", "audit.stderr.log"):
            (self.case / name).write_text("")
        for name in ("exit-code.txt", "audit.exit_code.txt"):
            (self.case / name).write_text("0\n")
        for suffix in ("stdout.log", "stderr.log", "exit-code.txt"):
            (self.logs / f"{self.case.name}.{suffix}").write_text("0\n" if suffix == "exit-code.txt" else "unit fixture\n")
        write(self.case / "semantic-rule-audit/semantic_rule_audit.json", {"status": "passed", "entry": self.model_id, "registry_version": "fixture", "registry_sha256": "b" * 64, "coverage": {"total": 1, "executed": 1, "passed": 1, "failed": 0, "not_implemented": 0, "insufficient_metadata": 0}, "validation": {"status": "passed", "errors": []}})
        (self.case / "semantic-rule-audit/semantic_rule_audit.md").write_text("synthetic audit")
        probes = []
        for batch, sequence in sorted(GATE.EXPECTED_PROBES):
            archive = self.case / f"probe-{batch}x{sequence}.npz"
            output = np.ones((batch, 4), dtype=np.float32)
            np.savez_compressed(archive, input_ids=np.zeros((batch, sequence), dtype=np.int64), original_output=output, eager_output=output, restored_output=output, compiled_output=output)
            probes.append({"batch": batch, "sequence": sequence, "archive": str(archive), "sha256": GATE.sha256(archive), "input_keys": ["input_ids"], "samples_ms": [1.] * 10, "mean_ms": 1., "p50_ms": 1., "p95_ms": 1., "p99_ms": 1., "first_call_s": .1})
        write(self.case / "report.json", {"status": "passed", "model_id": self.model_id, "revision": self.revision, "device": "PPU-ZW810E", "fullgraph": True, "dynamic_compile": True, "cpu_model_forward": "not_run", "probes": probes, "triton_stage_suffixes": []})
        self.reseal()

    def tearDown(self):
        self.temporary.cleanup()

    def reseal(self):
        write(self.case / "evidence-sha256.json", [{"path": str(p.relative_to(self.case)), "size_bytes": p.stat().st_size, "sha256": GATE.sha256(p)} for p in sorted(self.case.rglob("*")) if p.is_file() and p.name != "evidence-sha256.json"])

    def result(self):
        return GATE.check_case(self.case, self.logs)

    def test_complete_synthetic_metadata_is_accepted(self):
        self.assertTrue(self.result()["accepted"])

    def test_empty_evidence_index_is_rejected(self):
        write(self.case / "evidence-sha256.json", [])
        self.assertFalse(self.result()["accepted"])

    def test_failed_semantic_audit_is_rejected_even_when_resealed(self):
        path = self.case / "semantic-rule-audit/semantic_rule_audit.json"
        data = json.loads(path.read_text()); data["status"] = "failed"; data["coverage"]["failed"] = 1
        write(path, data); self.reseal()
        self.assertFalse(self.result()["accepted"])

    def test_wrong_model_manifest_is_rejected(self):
        path = self.case / "model-files.json"; data = json.loads(path.read_text()); data["model_id"] = "other/model"
        write(path, data); self.reseal()
        self.assertFalse(self.result()["accepted"])

    def test_fake_compiler_stage_index_is_rejected(self):
        write(self.case / "compiler-file-index.json", [{"root": "triton-dump", "relative_path": "missing.ttir", "suffix": ".ttir", "sha256": "e" * 64, "size_bytes": 1}]); self.reseal()
        self.assertFalse(self.result()["accepted"])

    def test_timing_summary_drift_is_rejected(self):
        path = self.case / "report.json"; data = json.loads(path.read_text()); data["probes"][0]["mean_ms"] = 999
        write(path, data); self.reseal()
        self.assertFalse(self.result()["accepted"])

    def test_example_input_drift_is_rejected(self):
        path = self.case / "probe-2x24.npz"
        with np.load(path) as archive: arrays = {key: archive[key].copy() for key in archive.files}
        arrays["input_ids"][0, 0] = 1; np.savez_compressed(path, **arrays)
        report_path = self.case / "report.json"; data = json.loads(report_path.read_text())
        for probe in data["probes"]:
            if probe["batch"] == 2 and probe["sequence"] == 24: probe["sha256"] = GATE.sha256(path)
        write(report_path, data); self.reseal()
        self.assertFalse(self.result()["accepted"])


if __name__ == "__main__":
    unittest.main(verbosity=2)
