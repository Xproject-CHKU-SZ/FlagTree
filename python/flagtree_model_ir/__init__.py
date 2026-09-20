"""Versioned model-level semantics shared by FlagTree import frontends.

The FlagTree compiler remains a kernel compiler.  This package defines the
contract at the Core ATen hand-off boundary so model importers can describe and
validate operators, dtypes, layouts, dynamic dimensions and extensions before
calling the existing FlagTree/TorchInductor compilation path.
"""

from .contract import (
    ModelIrSemanticError,
    build_semantic_contract,
    classify_tensor_layout,
    require_valid_semantic_contract,
    validate_semantic_contract,
)
from .registry import (
    canonicalize_dtype,
    get_semantics_registry,
    lookup_operator_family,
    semantics_registry_digest,
)
from .rule_checks import evaluate_operator_rule_set

__all__ = [
    "ModelIrSemanticError",
    "build_semantic_contract",
    "canonicalize_dtype",
    "classify_tensor_layout",
    "get_semantics_registry",
    "lookup_operator_family",
    "require_valid_semantic_contract",
    "semantics_registry_digest",
    "evaluate_operator_rule_set",
    "validate_semantic_contract",
]
