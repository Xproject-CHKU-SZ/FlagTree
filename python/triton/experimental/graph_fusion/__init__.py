"""Graph fusion, P800 resource autotuning and native Inductor options."""

from ._cross_call import CrossCallCandidate, cross_call_candidate
from ._patterns import (
    FusionTemplate,
    Registry,
    composition_candidates,
    default_registry,
)
from ._runtime import compile
from ._resource_runtime import resource_backend
from ._resource_autotune import autotune_resource_backend, calibrate_resources


def p800_inductor_options():
    """Enable P800 FP32 region arithmetic and the native inference templates."""
    from torch._inductor import config
    from ._p800_fp32_region import rewrite_native
    from ._p800_inductor_gelu import rewrite
    previous = config.pre_grad_custom_pass
    def composed(graph):
        if previous is not None and previous is not rewrite:
            previous(graph)
        rewrite_native(graph)
        rewrite(graph)

    return {"pre_grad_custom_pass": composed}


__all__ = [
    "CrossCallCandidate",
    "FusionTemplate",
    "Registry",
    "compile",
    "p800_inductor_options",
    "composition_candidates",
    "cross_call_candidate",
    "default_registry",
    "resource_backend",
    "autotune_resource_backend",
    "calibrate_resources",
]
