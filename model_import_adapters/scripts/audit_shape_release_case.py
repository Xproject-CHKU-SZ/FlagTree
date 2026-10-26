#!/usr/bin/env python3
"""Independently reopen one release functional check; no model forward."""
import argparse
import json
from pathlib import Path
import sys
import time
import traceback

from verify_shape_release_case import (REFERENCES, compare_reference_arrays, expected_route, read, require,
                                        sha, validate_enrollment, validate_policy_binding, validate_probe_set)
from release_qualification import validate_qualification_paths, validate_runtime_qualification


def audit_release_outputs(reference_path, actual_path, reference_sha, actual_sha):
    import numpy as np
    require(sha(reference_path) == reference_sha and sha(actual_path) == actual_sha, "Release output/reference archive hash drift")
    with np.load(reference_path, allow_pickle=False) as old, np.load(actual_path, allow_pickle=False) as new:
        require(set(new.files) == {"fresh_eager", "original_compiled", "released", "disabled"}, "Missing release/rollback arrays")
        refs = {key: old[key] for key in REFERENCES}
        comparisons = {key: compare_reference_arrays(new[key], refs) for key in new.files}
    return {"array_comparisons": sum(len(x) for x in comparisons.values()),
            "maximum_abs_error": max(max(x.values()) for x in comparisons.values())}


def audit_case(case, accepted, enrollment):
    import numpy as np
    report = read(case / "report.json")
    require(report["status"] == "passed" and report["cpu_model_forward"] == "not_run"
            and report["final_C1_accepted"] is False and report["performance_acceptance"] == "not_measured_here",
            "Functional check must not masquerade as performance/final301 qualification")
    source, baseline = Path(report["source"]), Path(report["baseline_case"])
    discovery = Path(report.get("discovery_source",str(source)))
    discovery_sha = sha(discovery / "source-baseline.json")
    entry = validate_enrollment(read(accepted), read(enrollment), report["model_id"], sha(accepted), discovery_sha)
    require(discovery_sha == report.get("discovery_source_manifest_sha256",discovery_sha),"Discovery source identity changed")
    for relative,digest in read(discovery / "source-baseline.json")["files"].items():
        require(sha(discovery / relative)==digest,"Frozen discovery source changed")
    require(sha(enrollment) == report["enrollment_sha256"] and report["mode"] == entry["mode"], "Runtime enrollment changed")
    require(sha(report["verifier_path"]) == report["verifier_sha256"], "Verifier code changed")
    require(sha(source / "source-baseline.json") == report["source_manifest_sha256"], "Runtime source manifest changed")
    frozen = read(source / "source-baseline.json")
    for relative, digest in frozen["files"].items():
        require(sha(source / relative) == digest, "Frozen runtime source changed")
    identity = report["identity"]
    if report.get("capture_constants") is not None:
        sys.path.insert(0,str(source / "model_import_adapters/src"))
        from model_import_adapters.prepared_policy import bind_preprocessing
        base = {key:value for key,value in identity.items() if key!="preprocessing"}
        require(bind_preprocessing(base,report["capture_constants"])==identity,"Actual preprocessing identity changed")
    require(all(identity[key] == entry[key] for key in ("model_id", "revision", "task", "pt2_sha256")), "Actual runtime model identity drift")
    require(sha(baseline / "artifacts/model.core_aten.pt2") == identity["pt2_sha256"]
            and sha(baseline / "task-protocol.json") == identity["protocol_sha256"]
            and sha(baseline / "report.json") == report["baseline_report_sha256"], "Original task/PT2/protocol changed")
    sys.path.insert(0, str(source / "model_import_adapters/src"))
    from model_import_adapters.replay_policy import load_policy
    policy = None
    if report["policy_path"]:
        require(sha(report["policy_path"]) == report["policy_file_sha256"], "Release policy file changed")
        policy, status = load_policy(report["policy_path"], identity)
        require(status == "loaded", "Actual runtime policy no longer matches")
    validate_policy_binding(entry, policy)
    qualification = report.get("qualification_evidence")
    paths = [Path(qualification[name]["path"]) if qualification else None for name in ("calibration","comparison","audit")]
    required = discovery_sha != report["source_manifest_sha256"] or "preprocessing" in identity
    if validate_qualification_paths(paths,required=required):
        for name,path in zip(("calibration","comparison","audit"),paths):
            require(sha(path)==qualification[name]["sha256"],"Qualification report bytes changed")
        actual = validate_runtime_qualification(entry,read(paths[0]),read(paths[1]),read(paths[2]),identity,
            sha(paths[0]),sha(paths[1]),report["policy_file_sha256"],frozen["files"])
        require(actual==report["runtime_qualification"],"Saved linked runtime qualification changed")
    validate_probe_set(report["probes"])
    original = read(baseline / "report.json"); checks = []; routes = []
    for probe in report["probes"]:
        old = next(x for x in original["probes"] if (x["batch"], x["sequence"]) == (probe["batch"], probe["sequence"]))
        path = baseline / Path(old["archive"]).name
        require(probe["input_sha256"] == old["sha256"], "Original input identity changed")
        require(Path(probe["archive"]).name == probe["archive"], "Release archive escaped case directory")
        checks.append(audit_release_outputs(path, case / probe["archive"], old["sha256"], probe["archive_sha256"]))
        with np.load(path, allow_pickle=False) as inputs:
            values = [inputs[key].copy(order="C") for key in old["input_keys"]]
            descriptors = [[list(x.shape), [s // x.itemsize for s in x.strides], 0, "torch." + str(x.dtype), "cuda:0"] for x in values]
        route = expected_route(entry, policy, descriptors); routes.append(route)
        require(probe["route"]["route"] == route, "Saved release probe route drift")
    order = [0, 1, 4, 3, 2, 1, 0, 2, 3, 4] * 2
    trace = report["warm_mixed_trace"]
    require(len(trace) == len(order) and report["mixed_unique_graphs"][0] == report["mixed_unique_graphs"][1], "Warm mixed graph count drift")
    for row, index in zip(trace, order):
        require(row["index"] == index and row["route"]["route"] == routes[index]
                and set(row["comparisons"]) == set(REFERENCES), "Mixed request evidence incomplete")
    require(report["stride_miss"]["route"] == "original_compiled"
            and report["identity_miss"]["route"] == "original_compiled", "Compiled-only miss evidence missing")
    require(report["router_disabled"]["enabled"] is False and report["original_pt2_unchanged"] is True, "Disable rollback evidence missing")
    if policy:
        require(report["alternate_stream"]["reason"] == "different_owner_stream"
                and report["weight_invalidation"]["reason"] == "model_state_changed", "Stream/weight counterexample missing")
        require(report["router_active"]["cache"]["entries"] == len(policy["entries"])
                and report["router_active"]["policy_sha256"] == policy["sha256"], "Release graph/policy identity drift")
    counter_path = case / "counterexamples.npz"
    require(sha(counter_path) == report["counterexample_archive_sha256"], "Counterexample archive changed")
    selected = original["probes"][report["counterexample_probe_index"]]
    with np.load(baseline / Path(selected["archive"]).name, allow_pickle=False) as old, np.load(counter_path, allow_pickle=False) as actual:
        refs = {key: old[key] for key in REFERENCES}
        names = ["previous_before", "previous_after", "stride_released", "identity_rejected"]
        if policy:
            names += ["alternate_stream_released", "weight_invalidated"]
        for key in names:
            compare_reference_arrays(actual[key], refs)
        compare_reference_arrays(actual["previous_after"], {key: actual["previous_before"] for key in REFERENCES})
        compare_reference_arrays(actual["changed_released"], {key: actual["changed_compiled"] for key in REFERENCES})
        axis = report["changed_input_axis"]
        require(axis in (0, -1), "Unexpected changed-data transform")
        for index, key in enumerate(selected["input_keys"]):
            require(np.array_equal(actual[f"changed_input_{index}"], np.flip(old[key], axis=axis)), "Changed input is not reproducible")
        require(any(not np.array_equal(actual[f"changed_input_{i}"], old[key]) for i, key in enumerate(selected["input_keys"])),
                "Changed-data counterexample did not change values")
    evidence_path = case / "compiler-evidence.json"
    require(sha(evidence_path) == report["compiler_evidence_sha256"], "Compiler evidence index changed")
    evidence = read(evidence_path)
    for row in evidence:
        path = Path(row["path"])
        require(not path.is_absolute() and ".." not in path.parts and sha(case / path) == row["sha256"], "Compiler evidence path/hash drift")
    return {"status": "passed", "model_id": entry["model_id"], "revision": entry["revision"], "task": entry["task"],
        "mode": entry["mode"], "array_comparisons": sum(x["array_comparisons"] for x in checks),
        "counterexample_array_checks": len(names) * 4 + 8,
        "maximum_abs_error": max(x["maximum_abs_error"] for x in checks), "source_files_rehashed": len(frozen["files"]),
        "compiler_files_rehashed": len(evidence), "report_sha256": sha(case / "report.json"), "cpu_model_forward": "not_run",
        "final_C1_accepted": False, "scope": "independent one-model functional and saved rollback evidence audit; not timing acceptance"}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("case", "accepted", "enrollment", "output"):
        parser.add_argument("--" + name, type=Path, required=True)
    args = parser.parse_args()
    try:
        result = audit_case(args.case, args.accepted, args.enrollment)
    except Exception as exc:
        result = {"status": "failed", "error": f"{type(exc).__name__}: {exc}", "traceback": traceback.format_exc()}
    result.update(audit_script_sha256=sha(__file__), audited_epoch=time.time())
    with args.output.open("x", encoding="utf-8") as file:
        json.dump(result, file, indent=2, allow_nan=False)
    print(json.dumps(result))
    return 0 if result["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
