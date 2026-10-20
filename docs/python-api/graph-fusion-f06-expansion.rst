F06 expansion: activation, LayerNorm and reduction compositions
================================================================

This page describes the additive F06 templates in
``triton.experimental.graph_fusion``. They follow the same static FX planning
and lazy kernel model as :doc:`graph-fusion`; the original
``matmul_bias``, ``matmul_bias_relu`` and ``add_softmax`` templates and their
P800 low-precision/LLVM guards are unchanged.

Cross-call meaning and scope
----------------------------

A "cross-call" candidate here is a chain of **adjacent FX operator calls in
one graph**, selected by one template and, when admitted, launched by one
owned-kernel region. It is not captured Triton kernel calls, not a compiler
pass, and not composition across separate ``plan(...)`` invocations. The
removed ``fusion.session`` capture/compiler API is not restored.

``graph_fusion.composition_candidates(graph)`` returns planning-only
eligibility evidence inside one graph: selected chains, their call names,
whether the chain has more than one call, and rejected chains with the existing
reasons
(``intervening_computation_or_side_effect``,
``intermediate_has_external_users``,
``region_input_depends_on_internal_node``). ``plan.explain()`` carries the same ``cross_call`` records. No example input
is executed by these calls.

For separately supplied stages, ``cross_call_candidate(stages,
example_inputs)`` is an explicit opt-in composition API. It requires at least
two FX ``GraphModule`` stages; the first must accept exactly the example-input
arity, and every later stage must accept exactly one tensor, the previous
stage's single output. It rejects call-module stages, mutable/in-place calls,
multi-output stages, escaping intermediates, and any chain not fully covered by
one supported template. Accepted candidates are composed by graph inlining,
retain references to the original stage modules for live parameter updates, and
expose the composed graph/template/provenance. Example inputs are inspected for
arity only, not executed. This is still graph-level composition; the removed
kernel-launch capture API is not restored.

Supported templates
-------------------

.. list-table::
   :header-rows: 1

   * - Kind
     - Semantics composed
     - Notes
   * - ``matmul_bias_gelu_exact``
     - ``gelu(mm(x,w) + b)``
     - exact erf GELU; ``approximate="none"``
   * - ``matmul_bias_gelu_tanh``
     - ``gelu(mm(x,w) + b)``
     - tanh approximation; ``approximate="tanh"``
   * - ``matmul_bias_silu``
     - ``silu(mm(x,w) + b)``
     - non-inplace SiLU
   * - ``add_gelu_exact`` / ``add_gelu_tanh`` / ``add_silu``
     - ``gelu(x + r)`` / ``silu(x + r)``
     - bounded portable flat route, same-shape or row-vector broadcast
   * - ``add_layernorm`` and variants
     - ``layer_norm(x + r, (N,), weight?, bias?, eps)``
     - fixed last-axis ``normalized_shape=(N,)``, optional affine operands
   * - ``mul_sum`` / ``mul_sum_keepdim``
     - ``sum(x * r, dim=-1[, keepdim=True])``
     - last-axis sum, finite broadcast forms, FP32 accumulator

The functional and Tensor-method forms are recognized where PyTorch exposes
them. ``nn.Linear``, ``nn.GELU``, ``nn.SiLU`` and ``nn.LayerNorm`` module
calls are not normalized; the functional or method call must appear in the FX
graph. Unsupported GELU approximations (for example ``"linear"``), in-place
SiLU, summation over another axis, and explicit sum ``dtype``/``out``
arguments are rejected rather than silently rewritten.

Numerical contract
------------------

**Activation epilogues.** The matrix product and the bias add are rounded to
the output dtype at their original materialization boundaries, as in eager
``mm -> add -> activation``. GELU/SiLU are then evaluated in FP32 and the
final store rounds to the output dtype. Exact GELU uses
``0.5*x*(1+erf(x/sqrt(2)))``; tanh GELU uses the standard
``0.5*x*(1+tanh(sqrt(2/pi)*(x+0.044715*x^3)))``. SiLU uses
``x/(1+exp(-x))``. Nonfinite behavior follows those formulas (for example
``-inf`` produces NaN in the same places as the eager formula).

**Add activation.** The add is rounded to the operand dtype before the
activation, again matching the eager add materialization. The flat kernel
supports an equal-shaped operand, a row vector ``(N,)`` and a single row
``(1,N)``. This is the bounded portable path; it does not add new matrix
routes.

**Add + LayerNorm.** ``normalized_shape`` must be a one-element positive
integer sequence equal to the final input dimension; only rank-two inputs are
admitted. The add is materialized in the operand dtype before statistics are
computed. Mean and biased variance are computed in FP32 over the final axis,
and ``rsqrt(var + eps)`` is applied; this matches the ``unbiased=False``
definition used by ``torch.nn.functional.layer_norm``. ``eps`` is preserved
exactly (the default is ``1e-5``) and is a semantic option that tuning cannot
override. Affine weight and bias are optional independently; when present each
must have shape ``(N,)``, matching the fixed ``normalized_shape``. FP16/BF16
outputs are rounded at the final store.

**Mul + Sum.** ``x`` is rank two and contiguous. The other operand may be a
scalar, ``(N,)``/``(1,N)`` row vector, ``(M,1)`` column vector or a full
``(M,N)`` tensor accepted by ``torch.mul`` broadcasting. The multiply is
rounded to the common dtype at its materialization boundary, the last-axis sum
uses an FP32 accumulator, and the result is rounded to the input dtype.
``keepdim`` changes only the result shape. Sum reduction order may differ from
the eager library, so ordinary dtype tolerances apply; this is not a bitwise
sum contract.

Eligibility and fallback
------------------------

All expanded regions retain the common metadata/inference guards:

* ordinary strided tensors, contiguous, nonempty, shared device and dtype;
* FP32, FP16 or BF16 only;
* no grad mode, no autocast, no conj/negative views;
* rank-two inputs, static example metadata;
* every internal result has one consumer and calls are adjacent; unknown
  operations or possible mutations block fusion across them;
* fresh outputs only. Inputs and earlier outputs are never written, so
  read-only aliases remain legal.

Backend-specific limits:

* NVIDIA (including an RTX 4090) admits the activation matrix epilogues for
  FP32/FP16/BF16 with the same tile bounds as the original matrix kernel.
* XPU (P800) additionally requires ``DISABLE_LLVM_OPT=1``. Matrix
  FP16/BF16 routes keep the existing K=64/256/1024 and N%128 qualifications,
  or the bounded LLVM19 tail route with ``FLAGTREE_XPU_LLVM19_OPT``. The
  expanded low-precision routes preserve the existing partition: aligned FP16
  owns an SDNN dot plus flat epilogue; BF16 uses native ``torch.mm`` plus one
  Triton epilogue; tails use native ``mm`` plus an in-place epilogue.
* XPU add-activation requires row width divisible by 128.
* XPU add-LayerNorm and mul-sum require a power-of-two row width no larger
  than 4096, so the row reduction is a qualified static layout.

If a backend reason is reported, the original FX region runs instead, with the
reason visible in ``plan.explain()`` and ``last_report``. A kernel compilation
or resource rejection also replays only the original region; device execution
errors are never silently retried. Exact GELU depends on backend support for
``erf``; a backend that rejects it reports ``compilation_rejected`` and falls
back at execution. Tests do not treat an admitted backend compilation failure
as success: they fail that route. Backend-denied cases are skipped explicitly
before candidate execution.

Explicit parameter selection
----------------------------

``select_configs(graph, example_inputs, ...)`` is additive and opt-in. It:

1. matches the graph without executing it;
2. builds a finite, validated domain (matrix tiles/warps/stages plus epilogue
   block; NVIDIA flat block/warps and row warps; XPU flat block/core count
   and row core count) and rejects anything outside it;
3. optionally asks an existing FlagTune ``ConfigProposer`` to rank the domain
   with ``benchmark_fn=None``; no second GA or tuner is introduced;
4. evaluates candidates with ordinary calls, checks each against the original
   FX subgraph, then times it using FlagTune's resolved benchmark protocol;
5. returns a ``TuningPlan`` of fixed configurations and selection evidence,
   cached by kind, device, dtype, shapes, strides and semantic options.

The selector rejects at entry if the input's current CUDA stream is already
capturing, before model resolution, reference execution, benchmarking or cache
lookup. On CPU it does not initialize CUDA. Candidate compilation and
benchmarking happen before the caller starts capture/replay. ``compile``
accepts a ``TuningPlan`` only through an explicit ``tuning=`` argument and
never autotunes. ``CompiledGraph.warm(*inputs)`` is the explicit ordinary call
that compiles lazy kernels before user capture; it is not a tuner.

Cache identity includes the active backend, target/architecture, Triton
version, `DISABLE_LLVM_OPT`, the LLVM19 path, precision-policy flags,
proposer/benchmarker identity, correctness setting and benchmark protocol
settings. Eligibility is checked before a cache hit. If correctness is
requested and the original reference cannot be executed, no candidate is
selected; if correctness is disabled the evidence says ``not_checked``, never
``passed``. Latencies must be finite and non-negative.

Without a local FlagTune model bundle, the bounded fallback domain is still
usable; its evidence says ``bounded_fallback`` and does not claim model
guidance. Remote model resolution is not attempted by default
(``use_flagtune=False``); passing ``use_flagtune=True`` opts into FlagTune's
configured model sources (which may include a remote source). No model
resolution was needed for the bounded-domain validation reported here.

The three original templates deliberately keep their qualified fixed policies
and return no tuning domain. Tuning does not repair an ineligible shape.

Validation commands
-------------------

.. code-block:: bash

    python -m pytest python/test/unit/runtime/test_graph_fusion_f06.py -q
    python -m pytest python/test/unit/runtime/test_graph_fusion_f06.py -q -k device
    F06_GPU_TUNING=1 python -m pytest python/test/unit/runtime/test_graph_fusion_f06.py -q -k tuning
    python python/benchmarks/benchmark_graph_fusion_f06.py --output /tmp/f06-expand
    python python/benchmarks/benchmark_graph_fusion_f06.py --smoke --output /tmp/f06-expand-smoke

The benchmark sets one Torch thread, disables TF32 and reduced-precision
reductions, compares fused and eager outputs and input mutation, reports the
first-call compile time separately, warms both routes, burns 0.5 seconds of
CPU work per case to reduce frequency bias, alternates route order and records
seven rounds of 40 synchronized host-wall per-call samples. A fallback row is
recorded as fallback, not as fusion success.

Limitations
-----------

* This is not generic arbitrary-kernel-call fusion and does not restore the
  removed capture API.
* Dynamic shapes and autograd are non-goals; metadata changes use the original
  graph and training/autocast fall back.
* The XPU power-of-two and alignment constraints are conservative guards for
  the tested compiler, not a claim that other widths are numerically wrong.
* Exact GELU ``erf`` is a backend capability; unsupported compilers reject it
  explicitly.
* An admitted region is not a profitability guarantee. Fewer launches can be
  slower than vendor libraries at some shapes.

Usage: a candidate spanning two calls
------------------------------------

.. code-block:: python

    import torch
    import torch.nn.functional as F
    from triton.experimental import graph_fusion as gf

    class Add(torch.nn.Module):
        def forward(self, x, residual):
            return x + residual

    class Activate(torch.nn.Module):
        def forward(self, value):
            return F.gelu(value)

    stages = tuple(torch.fx.symbolic_trace(m) for m in (Add(), Activate()))
    candidate = gf.cross_call_candidate(stages, inputs)
    if candidate.accepted:
        with torch.no_grad():
            tuning = gf.select_configs(candidate.graph_module, inputs)
            plan = candidate.compile(inputs, tuning=tuning)
            plan.warm(*inputs)  # compile and launch before any capture
            output = plan(*inputs)

The supplied GraphModules are the live parameter owners; replacing attributes
on the original Python module after ``symbolic_trace`` is outside this contract.
The in-process tuning cache stores configurations, not tensor values. Its
selection is a measured best member of the finite domain, not a guarantee of
being faster than PyTorch. P800 BF16 matrix/tail routes retain their qualified
64-core, block-4096 epilogue rather than searching unvalidated configurations.

The numerical qualification uses FP32 matrix accumulation: set
``torch.backends.cuda.matmul.allow_tf32 = False`` and disable
``allow_fp16_reduced_precision_reduction`` and
``allow_bf16_reduced_precision_reduction`` for the eager comparison. NVIDIA
FP16 tail cases can differ from a reduced-precision eager GEMM at rounding
boundaries; bitwise equality with that alternative policy is not promised.
