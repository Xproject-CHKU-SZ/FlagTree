"""Replay a publication check on the saved closed200 reports, without inference.

This does not replace the saved independent raw-array and terminal audit and
does not grant a301 release. Baseline mode evaluates the actual old assertion.
"""
import argparse
import ast
from collections import Counter
import hashlib
import json
from pathlib import Path
import sys


def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def read(path):
    return json.loads(Path(path).read_text(encoding="utf8"))


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--evidence-root", type=Path, required=True)
    p.add_argument("--runtime", type=Path, required=True)
    p.add_argument("--baseline-script", type=Path, required=True)
    p.add_argument("--functional-bindings", type=Path)
    p.add_argument("--source-root", default="/workspace/dynamic-shape-301-20261021")
    p.add_argument("--mode", choices=["baseline", "modified"], required=True)
    p.add_argument("--output", type=Path, required=True)
    a = p.parse_args()
    root = a.evidence_root
    wave_path = root / "e4-prepared-release-remaining301-v6/wave-200/report.json"
    audit_path = root / "e4-prepared-release-remaining301-v6/prerequisite-200-audit.json"
    wave, audit = read(wave_path), read(audit_path)
    assert sha(audit_path) == "8cd45a58459f8294485c608385f7a0f98360b75a37d9aad03489171dda5b4971"
    assert audit["status"] == "passed" and audit["wave_closure_complete"] is True
    assert audit["validated_models"] == audit["audited_records"] == 200
    assert audit["progress_sha256_at_read"] == sha(wave_path)
    assert wave["status"] == "completed_wave_not_final301" and len(wave["records"]) == 200
    assert len({x["model_id"] for x in wave["records"]}) == 200
    assert sha(a.baseline_script) == "94e45ad7d35918161ee0272a4e18b8260ac51902d1b84c00ca2e4ba9506cfcb4"
    # Extract the exact assertion from the preserved original CLI, not a
    # reconstruction of what that assertion was expected to do.
    calls = [n for n in ast.walk(ast.parse(a.baseline_script.read_text(encoding="utf8")))
             if isinstance(n, ast.Call) and isinstance(n.func, ast.Name) and n.func.id == "require"
             and len(n.args) == 2 and isinstance(n.args[1], ast.Constant)
             and n.args[1].value == "Final runtime source is not common"]
    assert len(calls) == 1
    assertion = compile(ast.Expression(calls[0].args[0]), "<preserved-baseline-source-check>", "eval")
    roles = {"runtime":39, "discovery":35, "control":52}
    manifests, manifest_hashes, source_paths = {}, {}, {}
    source_files = 0
    for role, number in roles.items():
        folder = root / ("source-e1-v" + str(number))
        manifest_path = folder / "source-baseline.json"
        manifests[role] = read(manifest_path)
        manifest_hashes[role] = sha(manifest_path)
        source_paths[role] = a.source_root + "/source-e1-v" + str(number)
        for rel, expected in manifests[role]["files"].items():
            assert sha(folder / rel) == expected, rel
            source_files += 1
    bindings = None
    if a.functional_bindings:
        bindings = {x["model_id"]:x for x in read(a.functional_bindings)["functional_bindings"]}
        assert set(bindings) == {x["model_id"] for x in wave["records"]}
    contract = None
    if a.mode == "modified":
        from release_runtime_components import runtime_component_contract, validate_runtime_component, release_identity
        contract = runtime_component_contract(manifests, manifest_hashes, source_paths, read(a.runtime))
    accepted, rejected, rows, components, groups = [], [], [], {}, Counter()
    for record in wave["records"]:
        if bindings is not None:
            binding = bindings[record["model_id"]]
            report_path = Path(binding["path"])
            assert binding["sha256"] == record["functional_report_sha256"]
        else:
            resolution = record.get("retention_resolution")
            report_path = (Path(resolution["functional_case"]) if resolution else Path(record["directory"]) / "functional") / "report.json"
        assert sha(report_path) == record["functional_report_sha256"]
        report = read(report_path)
        old_accept = eval(assertion, {"__builtins__":{}}, {"report":report, "sha":sha, "source":root/"source-e1-v39"})
        if a.mode == "baseline":
            ok = old_accept
        else:
            component = validate_runtime_component(record, report, contract)
            components[component["component_id"]] = component["descriptor"]
            groups[(component["descriptor"]["source_role"], component["descriptor"]["prepared"])] += 1
            assert component["descriptor"]["source_manifest_sha256"] == report["source_manifest_sha256"]
            ok = True
        (accepted if ok else rejected).append(record["model_id"])
        rows.append({"model_id":record["model_id"], "status":record["status"],
            "functional_report":str(report_path), "functional_report_sha256":sha(report_path),
            "actual_source":report["source"], "actual_source_manifest_sha256":report["source_manifest_sha256"],
            "baseline_accept":old_accept, "current_check_accept":ok})
    partial_rejected = None
    if contract:
        try:
            release_identity(rows, components, "a"*64, "b"*64)
        except ValueError as exc:
            assert str(exc) == "Complete301 and pinned inputs required for a release identity"
            partial_rejected = True
        assert partial_rejected is True
        assert len(accepted) == 200 and len(rejected) == 0
        assert groups == Counter({("runtime",True):171,("runtime",False):6,("discovery",False):23})
    else:
        assert len(accepted) == 177 and len(rejected) == 23
    result = {"status":"passed_check_replay_not_model_execution", "mode":a.mode, "models":200,
        "accepted":len(accepted), "rejected":len(rejected), "rejected_model_ids":rejected,
        "source_files_rehashed":source_files, "component_groups":[{"source_role":k[0],"prepared":k[1],"models":n} for k,n in sorted(groups.items())],
        "component_contract":contract, "components":components, "records":rows,
        "partial301_release_rejected":partial_rejected, "wave_report_sha256":sha(wave_path),
        "prior_raw_audit_sha256":sha(audit_path), "runtime_snapshot_sha256":sha(a.runtime),
        "baseline_script_sha256":sha(a.baseline_script), "script_sha256":sha(__file__),
        "new_model_execution":0, "final_C1_accepted":False,
        "memory_policy":"record_only_v1; allocation growth allowed; actual OOM remains failure",
        "scope":"source-component publication replay only; prior raw-array/terminal proof retained; no full301 publication"}
    with a.output.open("x", encoding="utf8") as f:
        json.dump(result, f, indent=2, allow_nan=False); f.write("\n")
    print(f"{a.mode.upper()} models=200 accepted={len(accepted)} rejected={len(rejected)} partial301_rejected={str(partial_rejected).lower()}")


if __name__ == "__main__":
    main()
