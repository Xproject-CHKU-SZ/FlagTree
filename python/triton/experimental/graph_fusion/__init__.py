"""Experimental, inference-only FX template fusion using FlagTree backends.

The current implementation matches a bounded set of operator-call
compositions to handwritten kernels with fixed backend policies. It has no
joint tiling/layout search or Inductor integration. Optional explicit
parameter selection is available through ``select_configs``; it runs outside
capture and is never part of ``compile`` planning.

Importing this optional module requires PyTorch. See ``compile`` for the
static-input contract. For Inductor integration, use
``triton.experimental.fusion.compile`` instead.
"""

from ._runtime import CompiledGraph, compile
from ._patterns import (FusionTemplate, Registry, composition_candidates,
                        default_registry)
from ._cross_call import CrossCallCandidate, cross_call_candidate
from ._tuning import TuningPlan, finite_configs, select_configs

__all__ = ["CompiledGraph", "CrossCallCandidate", "FusionTemplate", "Registry",
           "TuningPlan", "compile", "composition_candidates",
           "cross_call_candidate", "default_registry", "finite_configs",
           "select_configs"]
