"""Bind verified runtime components without relabelling a saved source snapshot.

This is an additional publication check AFTER original301 scope, raw numerical,
command/terminal and performance audits. It never supplies missing qualification.
Only two explicitly pinned source bundles with identical base engine modules
are eligible; the runtime-only preprocessing binder is the sole allowed addon.
"""
import hashlib
import json
from release_delivery_contract import IDENTITY, IR_FILES, require, sha256_string

PREFIXES = ("model_import_adapters/src/", "python/flagtree/_model/", "python/flagtree_model_ir/")
SRC = "model_import_adapters/src/model_import_adapters/"
ADDON = SRC + "prepared_policy.py"
VERIFIER = "model_import_adapters/scripts/verify_shape_release_case.py"
REQUIRED = {SRC + x + ".py" for x in ["compiled_execution", "unified_ir", "graph_replay", "replay_policy", "capture_constants"]}


def digest(value):
    return hashlib.sha256(json.dumps(value, sort_keys=True, separators=(",", ":"), allow_nan=False).encode()).hexdigest()


def runtime_component_contract(manifests, manifest_hashes, source_paths, environment):
    require(set(manifests) == set(manifest_hashes) == set(source_paths) == {"runtime", "discovery", "control"}, "Three explicit frozen source roles required")
    require(all(sha256_string(x) for x in manifest_hashes.values()) and all(isinstance(x,str) and x for x in source_paths.values())
        and len(set(source_paths.values())) == 3, "Pinned source paths/hashes required")
    files = {role:value["files"] for role,value in manifests.items()}
    engine = {role:{k:v for k,v in source.items() if k.startswith(PREFIXES)} for role,source in files.items() if role != "control"}
    require(ADDON in engine["runtime"] and ADDON not in engine["discovery"], "Only the declared runtime preprocessing addon is supported")
    base = {k:v for k,v in engine["runtime"].items() if k != ADDON}
    require(REQUIRED <= base.keys() and base == engine["discovery"]
        and all(sha256_string(v) for v in base.values()), "All base engine modules must match, not just version labels")
    require(sha256_string(engine["runtime"][ADDON]), "Preprocessing binding source hash required")
    approved = {role:source.get(VERIFIER) for role,source in files.items()}
    require(all(sha256_string(v) for v in approved.values()), "Actual verifier code must be in an approved frozen bundle")
    runtime_files = environment.get("runtime_files", [])
    def binary(suffix):
        values = [x["sha256"] for x in runtime_files if x["path"].endswith(suffix)]
        require(len(values) == 1 and sha256_string(values[0]), "Unambiguous frozen runtime binary required: " + suffix)
        return values[0]
    require(environment.get("device") == "PPU-ZW810E", "Real target environment required")
    expected = {"target":"PPU-ZW810E", "precision":"FP32/highest",
        "runtime":"torch={torch};triton={triton};flagtree={flagtree}".format(**environment),
        "compiler_sha256":binary("/triton/backends/ppu/compiler.py"), "libtriton_sha256":binary("/triton/_C/libtriton.so"),
        "source_sha256":base[SRC+"graph_replay.py"], "router_sha256":base[SRC+"replay_policy.py"]}
    return {"schema":"shape301-bound-runtime-components-v1", "source_manifest_sha256":manifest_hashes,
        "source_paths":source_paths, "base_engine_files":base, "base_engine_sha256":digest(base),
        "expected_backend_identity":expected, "prepared_policy_sha256":engine["runtime"][ADDON],
        "capture_helper_sha256":base[SRC+"capture_constants.py"], "approved_verifier_sha256":approved,
        "scope":"explicit pinned component binding only; not arbitrary source-version compatibility or model qualification"}


def validate_runtime_component(record, report, contract):
    require(report.get("status") == "passed" and report.get("cpu_model_forward") == "not_run"
        and report.get("original_pt2_unchanged") is True and report.get("failure_stage") is None
        and report.get("final_C1_accepted") is False, "Completed original functional proof required")
    identity = report.get("identity", {})
    require(all(record.get(k) == identity.get(k) == report.get(k) for k in IDENTITY), "Runtime model/revision/task drift")
    source_sha = report.get("source_manifest_sha256")
    roles = [role for role in ["runtime","discovery"] if contract["source_manifest_sha256"][role] == source_sha
        and contract["source_paths"][role] == report.get("source")]
    require(len(roles) == 1, "Runtime source must match its actual pinned path AND manifest")
    role = roles[0]
    require(all(identity.get(k) == v for k,v in contract["expected_backend_identity"].items()), "Loaded backend/core/precision identity drift")
    verifier_sha = report.get("verifier_sha256")
    require(verifier_sha in contract["approved_verifier_sha256"].values(), "Unapproved actual verifier bytes")
    status = record.get("status"); prepared = status == "validated_candidate"
    require(status in {"validated_candidate","validated_retention"}, "Unresolved model is not a released component")
    if prepared:
        records = report.get("capture_constants"); qualification = report.get("runtime_qualification")
        require(role == "runtime" and report.get("mode") == "candidate_requires_release_validation"
            and record.get("actual_policy_outcome") == "passed" and isinstance(records,list)
            and isinstance(qualification,dict) and qualification.get("status") == "passed"
            and report.get("policy_path") is not None and report.get("router_active",{}).get("enabled") is True,
            "Prepared candidates retain their actual runtime qualification")
        expected = {"schema":"capture-constant-preprocessing-v1", "enabled":True,
            "helper_sha256":contract["capture_helper_sha256"], "binding_source_sha256":contract["prepared_policy_sha256"],
            "records_sha256":digest(records), "converted_edges":len(records)}
        # Raw qualification already validates the exact legal preparation records.
        require(identity.get("preprocessing") == expected, "Actual preprocessing identity differs from the bound helper/records")
    else:
        require(report.get("mode") in {"retain_requires_runtime_validation","retain_unstable_requires_runtime_validation"}
            and record.get("actual_policy_outcome") != "passed" and report.get("capture_constants") is None
            and "preprocessing" not in identity and report.get("runtime_qualification") is None
            and report.get("policy_path") is None and report.get("policy_file_sha256") is None
            and report.get("router_active",{}).get("enabled") is False, "Original retained path cannot silently enable a candidate")
        probes = report.get("probes", [])
        require(len(probes) == 5 and all(x.get("route",{}).get("route") == "original_compiled" for x in probes), "Retained component requires five original compiled routes")
    descriptor = {"source_role":role, "source_manifest_sha256":source_sha,
        "base_engine_sha256":contract["base_engine_sha256"], "backend_identity":contract["expected_backend_identity"],
        "verifier_sha256":verifier_sha, "prepared":prepared,
        "prepared_policy_sha256":contract["prepared_policy_sha256"] if prepared else None}
    return {"component_id":digest(descriptor), "descriptor":descriptor}


def release_identity(rows, components, accepted_sha256, delivery_index_sha256):
    require(len(rows) == len({x["model_id"] for x in rows}) == 301
        and sha256_string(accepted_sha256) and sha256_string(delivery_index_sha256), "Complete301 and pinned inputs required for a release identity")
    specs=[]
    for row in rows:
        require(row.get("status") in {"validated_candidate","validated_retention"} and row.get("main_shapes") == 5,
            "Unresolved rows cannot acquire a release identity")
        component=row.get("runtime_component_id");require(component in components, "Missing actual runtime component")
        require(digest(components[component]) == component, "Component descriptor digest drift")
        require(components[component]["prepared"] == (row["status"] == "validated_candidate"), "Model/component mode drift")
        hashes=row.get("IR_artifact_hashes", {})
        require(IR_FILES <= hashes.keys() and all(sha256_string(hashes[k]) for k in IR_FILES), "Complete original artifacts must be bound")
        policy=row.get("enabled_policy")
        require((isinstance(policy,dict) and sha256_string(policy.get("sha256"))) if row["status"] == "validated_candidate" else policy is None,
            "Model policy mode/hash drift")
        specs.append({k:row[k] for k in ["model_id","revision","task","status","runtime_component_id","IR_artifact_hashes"]}
            | {"policy_sha256":row["enabled_policy"]["sha256"] if row["enabled_policy"] else None})
    return digest({"schema":"shape301-component-release-identity-v1", "accepted_sha256":accepted_sha256,
        "delivery_source_index_sha256":delivery_index_sha256, "components":components,
        "models":sorted(specs,key=lambda x:x["model_id"])})
