"""CPU legality tests for F08-G03 phase 1 (v2 guardrails).

Synthetic plans only: no torch, no device, no model.  v2 adds schema-valid
fixtures, plan/order validation reuse and device/stream checks.  All original
counterexamples stay; the two offset tests whose rule changed are explicitly
renamed and now expect ``unresolved_storage_offset_pending_proof`` (the old
"derive 0 from size equality" allowance was removed).
"""

from __future__ import annotations

import importlib.util
from pathlib import Path
import sys
import unittest

REPO_ROOT = Path(__file__).resolve().parents[4]
PACKAGE_DIR = REPO_ROOT / "python" / "flagtree" / "memory_planner"


def _load_module(module_name: str, path: Path):
    spec = importlib.util.spec_from_file_location(module_name, path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load {path}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[module_name] = module
    spec.loader.exec_module(module)
    return module


legality = _load_module(
    "flagtree_memory_planner_inplace_legality_test",
    PACKAGE_DIR / "inplace_legality.py",
)


def task(task_id, kernel, inputs, outputs, *, predecessors=(), stream="stream:0",
         device="ppu:0", region=None):
    return {
        "task_id": task_id,
        "kernel_id": kernel,
        "predecessors": list(predecessors),
        "inputs": list(inputs),
        "outputs": list(outputs),
        "source_node": f"test.{task_id}",
        "region_id": region,
        "device": device,
        "stream": stream,
    }


def tensor(tensor_id, storage_id, producer, consumers, *, shape=(2, 3), dtype="float32",
           offset=0, out=False, persistent=False, mutated=False):
    return {
        "tensor_id": tensor_id,
        "storage_id": storage_id,
        "producer": producer,
        "consumers": list(consumers),
        "dtype": dtype,
        "shape": list(shape),
        "storage_offset_bytes": offset,
        "source_value": f"test.{tensor_id}",
        "is_graph_output": out,
        "is_persistent": persistent,
        "is_mutated": mutated,
    }


def storage(storage_id, size_bytes=24, *, kind="temporary", device="ppu:0", alignment=64):
    return {
        "storage_id": storage_id,
        "size_bytes": size_bytes,
        "alignment": alignment,
        "device": device,
        "allocation_kind": kind,
        "source": "test",
    }


def base_plan():
    tasks = [
        task("task.linear_4", "aten.linear.default", [], ["tensor.linear_4"]),
        task("task.gelu", "aten.gelu.default", ["tensor.linear_4"], ["tensor.gelu"],
             predecessors=["task.linear_4"]),
        task("task.linear_5", "aten.linear.default", ["tensor.gelu"], ["tensor.linear_5"],
             predecessors=["task.gelu"]),
    ]
    tensors = [
        tensor("tensor.linear_4", "storage.linear_4", "task.linear_4", ["task.gelu"]),
        tensor("tensor.gelu", "storage.gelu", "task.gelu", ["task.linear_5"]),
        tensor("tensor.linear_5", "storage.linear_5", "task.linear_5", []),
    ]
    storages = [
        storage("storage.linear_4"),
        storage("storage.gelu"),
        storage("storage.linear_5"),
    ]
    plan = {
        "plan_id": "test.g03",
        "schema_version": "f08-g01-model-plan/0.1",
        "model_id": "test.model",
        "tasks": tasks,
        "tensors": tensors,
        "storages": storages,
        "regions": [],
        "shape_bindings": {},
    }
    order = ["task.linear_4", "task.gelu", "task.linear_5"]
    return plan, order


def evaluate(plan, order, *, task_id="task.gelu", input_tensor_id="tensor.linear_4",
             inference=True, binding_evidence=None, expected_graph_fingerprint=None,
             expected_physical_card=None):
    return legality.evaluate_candidate(
        plan, order, task_id=task_id, input_tensor_id=input_tensor_id,
        inference=inference, binding_evidence=binding_evidence,
        expected_graph_fingerprint=expected_graph_fingerprint,
        expected_physical_card=expected_physical_card,
    )


def evidence_for(plan, tensor_id, storage_id, *, offset=0, dtype="float32", shape=(2, 3),
                 device="cpu", scope="cpu_conditional", source="fixture", plan_id=None,
                 plan_sha256=None, graph_fingerprint=None, physical_card=None):
    record = {
        "tensor_id": tensor_id,
        "storage_id": storage_id,
        "plan_id": plan_id if plan_id is not None else plan["plan_id"],
        "plan_sha256": plan_sha256 if plan_sha256 is not None else legality.plan_fingerprint(plan),
        "byte_offset": offset,
        "dtype": dtype,
        "shape": list(shape),
        "device": device,
        "scope": scope,
        "source": source,
    }
    if graph_fingerprint is not None:
        record["graph_fingerprint"] = graph_fingerprint
    if physical_card is not None:
        record["physical_card"] = physical_card
    return record


class InplaceLegalityTests(unittest.TestCase):
    # --- fixtures and reused validators -------------------------------------------------

    def test_valid_schema_fixture_has_no_plan_or_order_issues(self):
        plan, order = base_plan()
        validation = legality.validate_plan_and_order(plan, order)
        self.assertEqual(validation["plan_issue_codes"], [])
        self.assertEqual(validation["order_problems"], [])

    def test_g2_order_validator_reused(self):
        plan, order = base_plan()
        validation = legality.validate_plan_and_order(plan, order)
        self.assertEqual(
            validation["order_check_source"], "offset_planner._validate_serial_schedule"
        )
        self.assertEqual(len(validation["validator_files"]["offset_planner_sha256"]), 64)

    # --- original positive / counterexample tests ---------------------------------------

    def test_simple_gelu_overwrite_allowed(self):
        plan, order = base_plan()
        result = evaluate(plan, order)
        self.assertEqual(result["decision"], "allowed", result["reason_codes"])
        self.assertEqual(result["reason_codes"], [])
        self.assertEqual(result["static_reused_storage_bytes"], 24)
        self.assertEqual(result["facts"]["last_read_positions"], {"tensor.linear_4": 1})
        self.assertEqual(result["facts"]["write_position"], 1)

    def test_candidate_last_use_alone_not_sufficient_view_consumed_after(self):
        plan, order = base_plan()
        plan["tasks"].append(task("task.view", "aten.view.default", ["tensor.linear_4"],
                                  ["tensor.view"]))
        plan["tensors"][0]["consumers"].append("task.view")
        plan["tasks"][2]["inputs"].append("tensor.view")
        plan["tensors"].append(
            tensor("tensor.view", "storage.linear_4", "task.view", ["task.linear_5"])
        )
        order.insert(1, "task.view")
        result = evaluate(plan, order)
        self.assertEqual(result["decision"], "rejected")
        self.assertIn("consumer_after_write", result["reason_codes"])
        # the candidate tensor's own last read equals the write position, yet the
        # alias member tensor.view is read after the write at position 3
        self.assertEqual(result["facts"]["last_read_positions"]["tensor.linear_4"], 2)
        self.assertEqual(result["facts"]["last_read_positions"]["tensor.view"], 3)

    def test_alias_member_read_before_write_allowed(self):
        plan, order = base_plan()
        plan["tasks"][0]["outputs"].append("tensor.view")
        plan["tasks"].append(task("task.aux", "aten.relu.default", ["tensor.view"],
                                  ["tensor.aux"]))
        plan["tensors"].append(
            tensor("tensor.view", "storage.linear_4", "task.linear_4", ["task.aux"])
        )
        plan["tensors"].append(tensor("tensor.aux", "storage.aux", "task.aux", []))
        plan["storages"].append(storage("storage.aux"))
        order.insert(1, "task.aux")
        result = evaluate(plan, order)
        self.assertEqual(result["decision"], "allowed", result["reason_codes"])
        self.assertEqual(result["facts"]["last_read_positions"]["tensor.view"], 1)

    def test_nonzero_storage_offset_slice_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = 8
        result = evaluate(plan, order)
        self.assertIn("nonzero_storage_offset", result["reason_codes"])

    def test_unresolved_offset_multi_member_pending_proof(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        plan["tensors"].append(
            tensor("tensor.view", "storage.linear_4", "task.linear_4", [], offset=None)
        )
        result = evaluate(plan, order)
        self.assertEqual(result["decision"], "rejected")
        self.assertIn("unresolved_storage_offset_pending_proof", result["reason_codes"])

    def test_unresolved_offset_single_member_not_derived_pending_proof(self):
        # The old rule allowed this via numel*itemsize == storage_size; removed in v2.
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        result = evaluate(plan, order)
        self.assertEqual(result["decision"], "rejected")
        self.assertIn("unresolved_storage_offset_pending_proof", result["reason_codes"])

    def test_unresolved_offset_with_binding_evidence_zero_allowed(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        evidence = {
            "tensor.linear_4": evidence_for(
                plan, "tensor.linear_4", "storage.linear_4", source="cpu-audit-fixture"
            )
        }
        result = evaluate(plan, order, binding_evidence=evidence)
        self.assertEqual(result["decision"], "allowed", result["reason_codes"])
        self.assertEqual(
            result["facts"]["member_details"][0]["storage_offset_source"],
            "binding_evidence:cpu-audit-fixture",
        )
        self.assertEqual(result["facts"]["binding_evidence_device"], "cpu")
        self.assertEqual(result["binding_evidence_scope"], "cpu_conditional")
        self.assertEqual(result["ppu_runtime_evidence"], "missing")
        self.assertEqual(result["runtime_release"], "not_authorized_by_analysis")

    def test_binding_evidence_nonzero_offset_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        evidence = {
            "tensor.linear_4": evidence_for(plan, "tensor.linear_4", "storage.linear_4", offset=8)
        }
        result = evaluate(plan, order, binding_evidence=evidence)
        self.assertIn("nonzero_storage_offset", result["reason_codes"])

    def test_ppu_evidence_marks_provided_but_not_released(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        evidence = {
            "tensor.linear_4": evidence_for(
                plan, "tensor.linear_4", "storage.linear_4", device="cuda:0",
                scope="ppu_runtime", source="ppu-probe-fixture", physical_card=14,
            )
        }
        result = evaluate(plan, order, binding_evidence=evidence,
                          expected_physical_card=14)
        self.assertEqual(result["decision"], "allowed", result["reason_codes"])
        self.assertEqual(result["binding_evidence_scope"], "ppu_runtime")
        self.assertEqual(result["ppu_runtime_evidence"], "provided")
        self.assertEqual(result["runtime_release"], "not_authorized_by_analysis")

    def test_plan_fingerprint_not_overridable_by_caller(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        evidence = {
            "tensor.linear_4": evidence_for(
                plan, "tensor.linear_4", "storage.linear_4", plan_sha256="custom-sha"
            )
        }
        result = evaluate(plan, order, binding_evidence=evidence)
        self.assertEqual(result["decision"], "rejected")
        self.assertIn("binding_evidence_plan_mismatch", result["reason_codes"])

    def test_stale_evidence_for_modified_plan_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        evidence = {
            "tensor.linear_4": evidence_for(plan, "tensor.linear_4", "storage.linear_4")
        }
        plan["tensors"][0]["shape"] = [2, 4]
        result = evaluate(plan, order, binding_evidence=evidence)
        self.assertIn("binding_evidence_plan_mismatch", result["reason_codes"])

    def test_cpu_scope_with_cuda_device_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        evidence = {
            "tensor.linear_4": evidence_for(plan, "tensor.linear_4", "storage.linear_4",
                                            device="cuda:0")
        }
        result = evaluate(plan, order, binding_evidence=evidence)
        self.assertIn("binding_evidence_scope_device_mismatch", result["reason_codes"])

    def test_ppu_scope_with_cpu_device_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        evidence = {
            "tensor.linear_4": evidence_for(plan, "tensor.linear_4", "storage.linear_4",
                                            device="cpu", scope="ppu_runtime",
                                            physical_card=14)
        }
        result = evaluate(plan, order, binding_evidence=evidence,
                          expected_physical_card=14)
        self.assertIn("binding_evidence_scope_device_mismatch", result["reason_codes"])

    def test_ppu_scope_with_wrong_logical_device_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        evidence = {
            "tensor.linear_4": evidence_for(plan, "tensor.linear_4", "storage.linear_4",
                                            device="cuda:99", scope="ppu_runtime",
                                            physical_card=14)
        }
        result = evaluate(plan, order, binding_evidence=evidence,
                          expected_physical_card=14)
        self.assertIn("binding_evidence_scope_device_mismatch", result["reason_codes"])

    def test_ppu_scope_missing_physical_card_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        evidence = {
            "tensor.linear_4": evidence_for(plan, "tensor.linear_4", "storage.linear_4",
                                            device="cuda:0", scope="ppu_runtime")
        }
        result = evaluate(plan, order, binding_evidence=evidence,
                          expected_physical_card=14)
        self.assertIn("binding_evidence_physical_card_missing", result["reason_codes"])

    def test_ppu_scope_wrong_physical_card_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        evidence = {
            "tensor.linear_4": evidence_for(plan, "tensor.linear_4", "storage.linear_4",
                                            device="cuda:0", scope="ppu_runtime",
                                            physical_card=13)
        }
        result = evaluate(plan, order, binding_evidence=evidence,
                          expected_physical_card=14)
        self.assertIn("binding_evidence_physical_card_mismatch", result["reason_codes"])

    def test_ppu_scope_unconfirmed_card_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        evidence = {
            "tensor.linear_4": evidence_for(plan, "tensor.linear_4", "storage.linear_4",
                                            device="cuda:0", scope="ppu_runtime",
                                            physical_card=14)
        }
        result = evaluate(plan, order, binding_evidence=evidence)
        self.assertIn("binding_evidence_physical_card_mismatch", result["reason_codes"])

    def test_plan_identity_mismatch_rejects_all_candidates(self):
        plan, order = base_plan()
        report = legality.analyze_op_candidates(
            plan, order,
            plan_identity={"derived_plan_canonical_sha256": "0" * 64},
        )
        self.assertEqual(report["allowed_count"], 0)
        self.assertEqual(report["plan_identity"]["identity_problem"], "plan_identity_mismatch")
        self.assertIn("plan_identity_mismatch",
                      report["candidates"][0]["reason_codes"])

    def test_binding_evidence_missing_identity_fields_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        result = evaluate(plan, order, binding_evidence={"tensor.linear_4": {"byte_offset": 0}})
        self.assertIn("binding_evidence_identity_missing", result["reason_codes"])

    def test_binding_evidence_plan_id_mismatch_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        evidence = {
            "tensor.linear_4": evidence_for(
                plan, "tensor.linear_4", "storage.linear_4", plan_id="other.plan"
            )
        }
        result = evaluate(plan, order, binding_evidence=evidence)
        self.assertIn("binding_evidence_plan_mismatch", result["reason_codes"])

    def test_binding_evidence_plan_sha_mismatch_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        evidence = {
            "tensor.linear_4": evidence_for(
                plan, "tensor.linear_4", "storage.linear_4", plan_sha256="0" * 64
            )
        }
        result = evaluate(plan, order, binding_evidence=evidence)
        self.assertIn("binding_evidence_plan_mismatch", result["reason_codes"])

    def test_binding_evidence_tensor_mismatch_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        evidence = {
            "tensor.linear_4": evidence_for(plan, "tensor.other", "storage.linear_4")
        }
        result = evaluate(plan, order, binding_evidence=evidence)
        self.assertIn("binding_evidence_tensor_mismatch", result["reason_codes"])

    def test_binding_evidence_storage_mismatch_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        evidence = {
            "tensor.linear_4": evidence_for(plan, "tensor.linear_4", "storage.other")
        }
        result = evaluate(plan, order, binding_evidence=evidence)
        self.assertIn("binding_evidence_storage_mismatch", result["reason_codes"])

    def test_binding_evidence_layout_mismatch_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        evidence = {
            "tensor.linear_4": evidence_for(plan, "tensor.linear_4", "storage.linear_4",
                                            dtype="float16")
        }
        result = evaluate(plan, order, binding_evidence=evidence)
        self.assertIn("binding_evidence_layout_mismatch", result["reason_codes"])

    def test_binding_evidence_device_missing_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        evidence = {
            "tensor.linear_4": evidence_for(plan, "tensor.linear_4", "storage.linear_4",
                                            device="")
        }
        result = evaluate(plan, order, binding_evidence=evidence)
        self.assertIn("binding_evidence_device_missing", result["reason_codes"])

    def test_binding_evidence_scope_missing_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        evidence = {
            "tensor.linear_4": evidence_for(plan, "tensor.linear_4", "storage.linear_4",
                                            scope="guess")
        }
        result = evaluate(plan, order, binding_evidence=evidence)
        self.assertIn("binding_evidence_scope_missing", result["reason_codes"])

    def test_binding_evidence_graph_mismatch_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        evidence = {
            "tensor.linear_4": evidence_for(plan, "tensor.linear_4", "storage.linear_4",
                                            graph_fingerprint="B")
        }
        result = evaluate(plan, order, binding_evidence=evidence,
                          expected_graph_fingerprint="A")
        self.assertIn("binding_evidence_graph_mismatch", result["reason_codes"])

    def test_binding_evidence_graph_required_when_expected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        evidence = {
            "tensor.linear_4": evidence_for(plan, "tensor.linear_4", "storage.linear_4")
        }
        result = evaluate(plan, order, binding_evidence=evidence,
                          expected_graph_fingerprint="A")
        self.assertIn("binding_evidence_identity_missing", result["reason_codes"])

    def test_mixed_evidence_scope_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_offset_bytes"] = None
        plan["tensors"].append(
            tensor("tensor.view", "storage.linear_4", "task.linear_4", [], offset=None)
        )
        evidence = {
            "tensor.linear_4": evidence_for(plan, "tensor.linear_4", "storage.linear_4"),
            "tensor.view": evidence_for(plan, "tensor.view", "storage.linear_4",
                                        scope="ppu_runtime", device="cuda:0",
                                        physical_card=14),
        }
        result = evaluate(plan, order, binding_evidence=evidence,
                          expected_physical_card=14)
        self.assertIn("binding_evidence_scope_mixed", result["reason_codes"])

    def test_graph_input_protection(self):
        plan, order = base_plan()
        plan["tensors"][0]["producer"] = None
        result = evaluate(plan, order)
        self.assertIn("graph_input_protection", result["reason_codes"])

    def test_parameter_and_persistent_protection(self):
        plan, order = base_plan()
        plan["tensors"][0]["is_persistent"] = True
        plan["storages"][0]["allocation_kind"] = "parameter"
        result = evaluate(plan, order)
        self.assertIn("persistent_protection", result["reason_codes"])
        self.assertIn("not_temporary_storage", result["reason_codes"])

    def test_graph_output_protection(self):
        plan, order = base_plan()
        plan["tensors"][0]["is_graph_output"] = True
        result = evaluate(plan, order)
        self.assertIn("graph_output_protection", result["reason_codes"])

    def test_mutated_member_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["is_mutated"] = True
        result = evaluate(plan, order)
        self.assertIn("mutated_member", result["reason_codes"])

    def test_other_writer_into_storage_rejected(self):
        plan, order = base_plan()
        plan["tasks"].append(task("task.other", "aten.copy.default", [], ["tensor.other"]))
        plan["tensors"].append(tensor("tensor.other", "storage.linear_4", "task.other", []))
        order.insert(2, "task.other")
        result = evaluate(plan, order)
        self.assertIn("storage_written_elsewhere", result["reason_codes"])

    def test_inplace_consumer_rejected(self):
        plan, order = base_plan()
        plan["tasks"].append(task("task.bump", "aten.add_.Tensor", ["tensor.linear_4"],
                                  ["tensor.bump"]))
        plan["tensors"][0]["consumers"].append("task.bump")
        plan["tensors"].append(tensor("tensor.bump", "storage.bump", "task.bump", []))
        plan["storages"].append(storage("storage.bump"))
        order.insert(1, "task.bump")
        result = evaluate(plan, order)
        self.assertIn("inplace_consumer", result["reason_codes"])

    def test_unknown_consumer_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["consumers"].append("task.ghost")
        result = evaluate(plan, order)
        self.assertIn("unknown_consumer", result["reason_codes"])

    def test_training_boundary_rejected(self):
        plan, order = base_plan()
        result = evaluate(plan, order, inference=False)
        self.assertIn("training_not_supported", result["reason_codes"])

    def test_output_shape_dtype_mismatch_rejected(self):
        plan, order = base_plan()
        plan["tensors"][1]["shape"] = [3, 2]
        result = evaluate(plan, order)
        self.assertIn("output_shape_dtype_mismatch", result["reason_codes"])

    def test_storage_too_small_rejected(self):
        plan, order = base_plan()
        plan["storages"][0]["size_bytes"] = 16
        result = evaluate(plan, order)
        self.assertIn("storage_too_small", result["reason_codes"])
        self.assertIn("storage_too_small_for_member", result["reason_codes"])

    def test_task_consuming_another_alias_member_rejected(self):
        plan, order = base_plan()
        plan["tasks"][1]["inputs"].append("tensor.view")
        plan["tensors"].append(
            tensor("tensor.view", "storage.linear_4", "task.linear_4", ["task.gelu"])
        )
        result = evaluate(plan, order)
        self.assertIn("task_consumes_another_alias_member", result["reason_codes"])

    def test_stream_mismatch_rejected(self):
        plan, order = base_plan()
        plan["tasks"].append(task("task.aux", "aten.relu.default", ["tensor.linear_4"],
                                  ["tensor.aux"], stream="stream:1"))
        plan["tensors"][0]["consumers"].append("task.aux")
        plan["tensors"].append(tensor("tensor.aux", "storage.aux", "task.aux", []))
        plan["storages"].append(storage("storage.aux"))
        order.insert(1, "task.aux")
        result = evaluate(plan, order)
        self.assertIn("stream_mismatch", result["reason_codes"])
        self.assertIn("multi_stream", result["reason_codes"])

    def test_backward_task_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["consumers"].append("task.backward")
        plan["tasks"].append(
            task("task.backward", "aten.gelu_backward.default", ["tensor.linear_4"], [])
        )
        order.insert(1, "task.backward")
        result = evaluate(plan, order)
        self.assertIn("backward_task_present", result["reason_codes"])

    def test_region_unsupported_rejected(self):
        plan, order = base_plan()
        plan["tasks"][1]["region_id"] = "region:0"
        result = evaluate(plan, order)
        self.assertIn("region_unsupported", result["reason_codes"])

    def test_analyze_op_candidates_filters_and_counts(self):
        plan, order = base_plan()
        report = legality.analyze_op_candidates(plan, order, kernel_ids=("aten.gelu.default",))
        self.assertEqual(report["candidate_count"], 1)
        self.assertEqual(report["allowed_count"], 1)
        self.assertEqual(report["candidates"][0]["task_id"], "task.gelu")

    def test_input_not_consumed_by_task_rejected(self):
        plan, order = base_plan()
        result = evaluate(plan, order, input_tensor_id="tensor.gelu")
        self.assertIn("input_not_consumed_by_task", result["reason_codes"])

    # --- v2 guardrail counterexamples ----------------------------------------------------

    def test_missing_output_rejected(self):
        plan, order = base_plan()
        plan["tasks"][1]["outputs"] = []
        result = evaluate(plan, order)
        self.assertIn("missing_output", result["reason_codes"])

    def test_unknown_dtype_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["dtype"] = "mystery"
        result = evaluate(plan, order)
        self.assertIn("unknown_dtype", result["reason_codes"])

    def test_unknown_storage_size_rejected(self):
        plan, order = base_plan()
        del plan["storages"][0]["size_bytes"]
        plan["storages"][0]["size_expression"] = "(2*3*4)"
        result = evaluate(plan, order)
        self.assertIn("unknown_storage_size", result["reason_codes"])

    def test_unknown_shape_dimension_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["shape"] = [{"symbol": "B"}, 3]
        result = evaluate(plan, order)
        self.assertIn("unknown_shape_dimension", result["reason_codes"])

    def test_missing_tensor_rejected(self):
        plan, order = base_plan()
        plan["tasks"][1]["inputs"] = ["tensor.ghost"]
        result = evaluate(plan, order, input_tensor_id="tensor.ghost")
        self.assertIn("missing_tensor", result["reason_codes"])
        self.assertIn("invalid_model_plan", result["reason_codes"])

    def test_missing_storage_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["storage_id"] = "storage.ghost"
        result = evaluate(plan, order)
        self.assertIn("missing_storage", result["reason_codes"])
        self.assertIn("invalid_model_plan", result["reason_codes"])

    def test_producer_consumer_mismatch_rejected(self):
        plan, order = base_plan()
        plan["tensors"][0]["consumers"] = []
        result = evaluate(plan, order)
        self.assertIn("producer_consumer_mismatch", result["reason_codes"])
        self.assertIn("invalid_model_plan", result["reason_codes"])

    def test_unknown_stream_rejected(self):
        plan, order = base_plan()
        plan["tasks"][1]["stream"] = None
        result = evaluate(plan, order)
        self.assertIn("unknown_stream", result["reason_codes"])

    def test_unknown_device_rejected(self):
        plan, order = base_plan()
        plan["tasks"][1]["device"] = None
        result = evaluate(plan, order)
        self.assertIn("unknown_device", result["reason_codes"])
        self.assertIn("invalid_model_plan", result["reason_codes"])

    def test_device_mismatch_rejected(self):
        plan, order = base_plan()
        plan["tasks"].append(task("task.aux", "aten.relu.default", ["tensor.linear_4"],
                                  ["tensor.aux"], device="ppu:1"))
        plan["tensors"][0]["consumers"].append("task.aux")
        plan["tensors"].append(tensor("tensor.aux", "storage.aux", "task.aux", []))
        plan["storages"].append(storage("storage.aux"))
        order.insert(1, "task.aux")
        result = evaluate(plan, order)
        self.assertIn("device_mismatch", result["reason_codes"])

    def test_order_duplicate_rejected(self):
        plan, _order = base_plan()
        order = ["task.linear_4", "task.gelu", "task.gelu"]
        result = evaluate(plan, order)
        self.assertIn("order_duplicate", result["reason_codes"])
        self.assertIn("order_incomplete", result["reason_codes"])

    def test_order_incomplete_rejected(self):
        plan, _order = base_plan()
        result = evaluate(plan, ["task.linear_4", "task.gelu"])
        self.assertIn("order_incomplete", result["reason_codes"])

    def test_order_dependency_violation_rejected(self):
        plan, _order = base_plan()
        result = evaluate(plan, ["task.gelu", "task.linear_4", "task.linear_5"])
        self.assertIn("schedule_violates_dependency", result["reason_codes"])

    def test_order_dataflow_violation_rejected(self):
        plan, _order = base_plan()
        plan["tasks"][2]["predecessors"] = []
        result = evaluate(plan, ["task.linear_4", "task.linear_5", "task.gelu"])
        self.assertIn("schedule_violates_dataflow", result["reason_codes"])


if __name__ == "__main__":
    unittest.main()
