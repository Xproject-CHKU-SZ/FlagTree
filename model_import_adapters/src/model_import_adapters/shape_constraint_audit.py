"""Audit serialized input metadata, not a runtime guard or a Shape-domain proof.

Keep literal PT2 ranges intact. In particular a serialized lower bound of two
and an observed size-one input are recorded separately; this module never
silently relaxes a range, merges distinct symbols or evaluates expressions.
"""
import re


def _integer(value):
    return int(value) if isinstance(value, str) and re.fullmatch(r"-?\d+", value) else None


def _contract(value):
    if (not isinstance(value, dict) or type(value.get("schema_version")) is not int
            or value["schema_version"] != 1
            or value.get("runtime_range_coverage") != "not_asserted_by_serialization"):
        raise ValueError("Observed schema1 constraints with no inferred runtime coverage required")
    ranges = {}
    for row in value["range_constraints"]:
        if set(row) != {"expression", "lower", "upper"} or not isinstance(row["expression"], str):
            raise ValueError("Malformed range record")
        if row["expression"] in ranges:
            raise ValueError("Duplicate range expression")
        lower, upper = _integer(row["lower"]), _integer(row["upper"])
        if lower is not None and upper is not None and lower > upper:
            raise ValueError("Reversed range")
        ranges[row["expression"]] = row
    inputs = value["inputs"]
    if not isinstance(inputs, list) or not inputs:
        raise ValueError("Declared flat Tensor inputs required")
    keys, nodes, positions, uses = set(), set(), set(), {}
    for item in inputs:
        if (not isinstance(item.get("archive_key"), str) or not item["archive_key"]
                or item["archive_key"] in keys or not isinstance(item.get("input_node"), str)
                or not item["input_node"] or item["input_node"] in nodes
                or not isinstance(item.get("dtype"), str) or not item["dtype"].startswith("torch.")
                or type(item.get("rank")) is not int or item["rank"] < 0
                or len(item["axes"]) != item["rank"]):
            raise ValueError("Input key/node/dtype/rank drift")
        keys.add(item["archive_key"]); nodes.add(item["input_node"])
        if item["source"] == "positional":
            position = item.get("position")
            if type(position) is not int or position < 0 or position in positions:
                raise ValueError("Positional input binding drift")
            positions.add(position)
        elif item["source"] != "keyword" or not isinstance(item.get("name"), str) or not item["name"]:
            raise ValueError("Unknown input binding")
        for index, axis in enumerate(item["axes"]):
            if type(axis.get("axis")) is not int or axis["axis"] != index:
                raise ValueError("Axis indices must be complete and ordered")
            if axis["kind"] == "static":
                if type(axis.get("value")) is not int or axis["value"] < 0:
                    raise ValueError("Invalid static extent")
            elif axis["kind"] == "symbolic":
                if (not isinstance(axis.get("expression"), str) or not axis["expression"]
                        or not isinstance(axis.get("symbols"), list)
                        or axis["symbols"] != sorted(set(axis["symbols"]))
                        or not all(isinstance(symbol, str) and symbol for symbol in axis["symbols"])):
                    raise ValueError("Invalid symbolic axis")
                if axis.get("bounds") != ranges.get(axis["expression"]):
                    raise ValueError("Axis/range binding drift")
                for symbol in axis["symbols"]:
                    uses.setdefault(symbol, []).append({"archive_key": item["archive_key"],
                        "input_node": item["input_node"], "axis": index, "expression": axis["expression"]})
            else:
                raise ValueError("Unknown axis kind")
    if positions != set(range(len(positions))):
        raise ValueError("Noncontiguous positional bindings")
    expected = [{"symbol": symbol, "bounds": ranges.get(symbol), "input_axes": uses[symbol]} for symbol in sorted(uses)]
    if value["symbols"] != expected:
        raise ValueError("Shared-symbol declarations differ from input axes")
    return inputs, ranges, uses


def audit_observed_shapes(contract, metadata):
    """Return structural checks and literal bound deviations without hiding either."""
    inputs, ranges, uses = _contract(contract)
    if set(metadata) != {item["archive_key"] for item in inputs}:
        raise ValueError("Observed input keys differ from the archived schema")
    issues, unresolved, checks, symbols = [], [], [], {}
    for item in inputs:
        key = item["archive_key"]; observed = metadata[key]; shape = observed["shape"]
        if not isinstance(shape, list) or any(type(x) is not int or x < 0 for x in shape):
            raise ValueError("Concrete nonnegative observed shape required")
        if observed["dtype"] != item["dtype"].removeprefix("torch."):
            issues.append({"code": "dtype_mismatch", "input": key})
        if len(shape) != item["rank"]:
            issues.append({"code": "rank_mismatch", "input": key}); continue
        for axis, actual in zip(item["axes"], shape):
            location = {"archive_key": key, "input_node": item["input_node"], "axis": axis["axis"], "actual": actual}
            if axis["kind"] == "static":
                if actual != axis["value"]:
                    issues.append({**location, "code": "static_extent_mismatch", "expected": axis["value"]})
                continue
            expression = axis["expression"]
            if axis["symbols"] != [expression]:
                unresolved.append({**location, "expression": expression, "code": "derived_expression_not_evaluated"})
                continue
            if expression in symbols and symbols[expression] != actual:
                issues.append({**location, "code": "shared_symbol_extent_mismatch", "symbol": expression,
                               "previous_extent": symbols[expression]})
            symbols.setdefault(expression, actual)
            bounds = ranges.get(expression)
            lower = _integer(bounds["lower"]) if bounds else None
            upper = _integer(bounds["upper"]) if bounds else None
            if lower is None or upper is None:
                unresolved.append({**location, "expression": expression, "code": "finite_integer_bounds_not_available"})
                continue
            inside = lower <= actual <= upper
            classification = ("literal_in_range" if inside else "small_extent_requires_runtime_evidence"
                if actual in (0, 1) and actual < lower <= 2 else "literal_out_of_range")
            checks.append({**location, "symbol": expression, "lower": lower, "upper": upper,
                "literal_in_range": inside, "classification": classification})
    return {"structurally_consistent": not issues, "structural_issues": issues, "unresolved": unresolved,
        "symbol_values": symbols, "symbol_groups": uses, "bound_checks": checks,
        "literal_range_deviations": [item for item in checks if not item["literal_in_range"]],
        "runtime_acceptance": "not_inferred_by_metadata_audit"}


def text_boundary_specs(contract):
    """Plan coherent B/S cases from equal declared axis bounds, never execute them.

    Giving independent input symbols equal test values does not merge them.
    Related inputs are changed together, avoiding a deliberately mismatched
    mask being mislabeled as a one-dimensional range-bound test.
    """
    inputs, ranges, _ = _contract(contract)
    if any(item["rank"] != 2 for item in inputs):
        return {"status": "requires_review", "reason": "not_flat_rank2_text_inputs", "probes": []}
    bounds = []
    for index in range(2):
        rows = [item["axes"][index] for item in inputs]
        if any(axis["kind"] != "symbolic" or axis["symbols"] != [axis["expression"]] for axis in rows):
            return {"status": "requires_review", "reason": "static_or_derived_text_axis", "probes": []}
        values = [(ranges.get(axis["expression"], {}).get("lower"), ranges.get(axis["expression"], {}).get("upper")) for axis in rows]
        uppers = {_integer(upper) for _, upper in values}; lowers = [_integer(lower) for lower, _ in values]
        if len(uppers) != 1 or None in uppers or None in lowers:
            return {"status": "requires_review", "reason": "unequal_or_nonfinite_text_bounds", "probes": []}
        bounds.append((max(lowers), next(iter(uppers))))
    (bmin, bmax), (smin, smax) = bounds
    if smin <= 2 or bmin > bmax or smin > smax:
        return {"status": "requires_review", "reason": "no_unambiguous_sequence_lower_negative", "probes": []}
    odd = lambda low: low + 1 if low % 2 == 0 else low + 2
    b_odd, s_odd = odd(bmin), odd(smin)
    if b_odd > bmax or s_odd > smax:
        return {"status": "requires_review", "reason": "no_interior_odd_point", "probes": []}
    probes = [
        {"kind": "batch_upper_outside", "batch": bmax + 1, "sequence": smin, "expected": "explicit_bound_rejection"},
        {"kind": "sequence_upper_outside", "batch": max(1, bmin), "sequence": smax + 1, "expected": "explicit_bound_rejection"},
        {"kind": "sequence_lower_outside", "batch": max(1, bmin), "sequence": smin - 1, "expected": "explicit_bound_rejection"},
        {"kind": "interior_odd_tail", "batch": b_odd, "sequence": s_odd, "expected": "PPU_reference_and_compiled_consistency"},
    ]
    return {"status": "planned_not_executed", "probes": [{**p, "executed": False} for p in probes],
        "input_rule": "change every declared B/S input axis coherently; preserve each independent symbolic identity",
        "size_zero": "not_covered", "runtime_domain_coverage": "not_asserted"}
