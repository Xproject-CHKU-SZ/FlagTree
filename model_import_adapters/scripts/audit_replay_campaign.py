#!/usr/bin/env python3
"""Independently reopen completed paired cases; no CPU or PPU model forward."""
import argparse
import hashlib
import json
from pathlib import Path
import time

from audit_dynamic_shape_pair import audit_reports
from benchmark_scene_pair import sha256
from run_scene_optimization_campaign import validate_scope


def audit_output_archive(reference_path, output_path, reference_hash, output_hash):
    import numpy as np
    if sha256(reference_path) != reference_hash or sha256(output_path) != output_hash:
        raise ValueError("Probe/output archive hash drift")
    checks=[]
    with np.load(reference_path,allow_pickle=False) as reference, np.load(output_path,allow_pickle=False) as output:
        for name in ("fresh_eager","baseline","candidate"):
            actual=output[name]
            for refname in ("original_output","eager_output","restored_output","compiled_output"):
                expected=reference[refname]
                if actual.shape != expected.shape or actual.dtype != expected.dtype:
                    raise ValueError("Archived output metadata drift")
                if not np.isfinite(actual).all() or not np.isfinite(expected).all():
                    raise ValueError("Archived output contains nonfinite values")
                delta=np.abs(actual.astype(np.float64)-expected.astype(np.float64))
                if not np.all(delta<=3e-4+3e-4*np.abs(expected.astype(np.float64))):
                    raise ValueError("Archived output comparison failed")
                checks.append(float(delta.max()))
    return {"array_comparisons":len(checks),"maximum_abs_error":max(checks)}


def audit_case(record, row):
    case=Path(record["case"]);a=json.loads((case/"report.json").read_text())
    candidate=case/"candidate-graph_replay";b=json.loads((candidate/"report.json").read_text())
    if (b["identity"]["model_id"] != row["model_id"] or b["identity"]["revision"] != row["revision"]
            or b["identity"]["task"] != row["task"] or b["calibration_sha256"] != sha256(case/"report.json")):
        raise ValueError("Model/revision/task/calibration drift")
    result=audit_reports(a,b)
    source=Path(b["source"]);baseline=Path(b["case"]);identity=b["identity"]
    frozen=json.loads((source/"source-baseline.json").read_text())
    for relative,digest in frozen["files"].items():
        if sha256(source/relative) != digest:raise ValueError("Frozen source drift")
    for relative,digest in identity["source_files"].items():
        if sha256(source/relative) != digest:raise ValueError("Measurement runtime-source drift")
    if sha256(source/"model_import_adapters/scripts/benchmark_dynamic_shape_pair.py") != identity["script_sha256"]:
        raise ValueError("Measurement script drift")
    pt2=baseline/"artifacts/model.core_aten.pt2"
    if (sha256(pt2) != identity["pt2_sha256"] or sha256(baseline/"report.json") != identity["baseline_report_sha256"]
            or sha256(baseline/"task-protocol.json") != identity["protocol_sha256"]):
        raise ValueError("PT2/baseline/protocol drift")
    base=json.loads((baseline/"report.json").read_text());reference={(p["batch"],p["sequence"]):p for p in base["probes"]}
    arrays=[];evidence_count=0
    for report,folder in ((a,case),(b,candidate)):
        for probe in report["probes"]:
            old=reference[probe["batch"],probe["sequence"]]
            if old["sha256"] != probe["input_sha256"]:raise ValueError("Baseline input drift")
            arrays.append(audit_output_archive(baseline/Path(old["archive"]).name,
                folder/Path(probe["archive"]).name,old["sha256"],probe["archive_sha256"]))
        evidence=folder/"compiler-evidence.json"
        if sha256(evidence) != report["compiler_evidence_sha256"]:raise ValueError("Compiler index drift")
        for entry in json.loads(evidence.read_text()):
            relative=Path(entry["path"])
            if relative.is_absolute() or ".." in relative.parts or sha256(folder/relative) != entry["sha256"]:
                raise ValueError("Compiler artifact path/hash drift")
            evidence_count+=1
    result.update(array_comparisons=sum(x["array_comparisons"] for x in arrays),
        maximum_abs_error=max(x["maximum_abs_error"] for x in arrays),
        source_files_rehashed=len(frozen["files"]),compiler_artifact_references_rehashed=evidence_count,
        calibration_sha256=sha256(case/"report.json"),comparison_sha256=sha256(candidate/"report.json"),
        pt2_sha256=identity["pt2_sha256"],source=str(source),case=str(case),revision=row["revision"],task=row["task"])
    return result


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    for name in ("accepted","checkpoint","output"):
        parser.add_argument("--"+name,type=Path,required=True)
    args=parser.parse_args();accepted={x["model_id"]:x for x in validate_scope(json.loads(args.accepted.read_text()))}
    raw=args.checkpoint.read_bytes();state=json.loads(raw)
    if state["identity"]["accepted_sha256"] != sha256(args.accepted):raise ValueError("Historical scope drift")
    ids=state["identity"]["model_ids"]
    if len(ids)!=len(set(ids)) or not set(ids)<=set(accepted):raise ValueError("Campaign scope drift")
    completed={r["model_id"]:r for r in state["records"] if r.get("candidate_exit_code")==0}
    if not set(completed)<=set(ids):raise ValueError("Completed model outside campaign")
    result={"status":"passed","historical_scope":301,"campaign_scope":len(ids),"checkpoint_status":state["status"],
        "models":[],"errors":[],"cpu_model_forward":"not_run","started_at":time.time(),
        "checkpoint_sha256_at_read":hashlib.sha256(raw).hexdigest(),"audit_script_sha256":sha256(__file__)}
    for model,record in completed.items():
        try:result["models"].append(audit_case(record,accepted[model]))
        except Exception as exc:result["errors"].append({"model_id":model,"error":f"{type(exc).__name__}: {exc}"})
    result.update(status="passed" if not result["errors"] else "failed",audited_models=len(result["models"]),
        pending_models=[m for m in ids if m not in completed],finished_at=time.time(),
        performance_passed=sum(x["candidate_outcome"]=="passed" for x in result["models"]))
    with args.output.open("x",encoding="utf-8") as output:json.dump(result,output,ensure_ascii=False,indent=2)
    print(json.dumps({k:result[k] for k in ["status","audited_models","performance_passed","pending_models","errors"]}))
    return 0 if result["status"]=="passed" else 1


if __name__=="__main__":raise SystemExit(main())
