"""Bind low-memory semantic auditing to actual saved PPU artifacts."""
import importlib.util
import json
from pathlib import Path

import pytest
import torch

from model_import_adapters.unified_ir import export_core_aten


@pytest.fixture
def artifact(tmp_path):
    if not torch.cuda.is_available() or torch.cuda.get_device_name(0) != "PPU-ZW810E":
        pytest.skip("requires PPU-ZW810E")
    class Model(torch.nn.Module):
        def forward(self, x):
            return x.relu() + 1
    export_core_aten(Model().cuda(), (torch.randn(2, 24, device="cuda"),), tmp_path,
        dynamic_shapes=({0: torch.export.Dim.DYNAMIC(min=1, max=4),
                         1: torch.export.Dim.DYNAMIC(min=8, max=64)},),
        strict=False, source={"model_id": "test/ppu", "revision": "fixture"})
    path = Path(__file__).parents[1] / "scripts/audit_core_aten_semantic_rules.py"
    spec = importlib.util.spec_from_file_location("audit", path)
    audit = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(audit)
    return tmp_path, audit


def test_saved_artifacts_are_verified_without_loading_weights(artifact, monkeypatch):
    root, audit = artifact
    monkeypatch.setattr(audit, "load_core_aten", lambda *a: pytest.fail("unexpected PT2 weight reload"))
    manifest = audit.verified_artifact_manifest(root / "model.core_aten.pt2", root / "semantics.json", "test/ppu")
    contract = audit.build_semantic_contract(manifest)
    assert contract["validation"]["status"] == "passed"
    assert contract["coverage"] == json.loads((root / "semantics.json").read_text())["coverage"]


@pytest.mark.parametrize("name", ["manifest.json", "semantics.json", "model.core_aten.pt2"])
def test_modified_artifact_is_rejected(artifact, name):
    root, audit = artifact
    with (root / name).open("ab") as stream:
        stream.write(b" ")
    with pytest.raises(ValueError, match="provenance"):
        audit.verified_artifact_manifest(root / "model.core_aten.pt2", root / "semantics.json", "test/ppu")


def test_wrong_model_identity_is_rejected(artifact):
    root, audit = artifact
    with pytest.raises(ValueError, match="provenance"):
        audit.verified_artifact_manifest(root / "model.core_aten.pt2", root / "semantics.json", "other/model")
