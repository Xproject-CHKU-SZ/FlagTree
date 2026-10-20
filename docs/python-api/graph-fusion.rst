Experimental model graph fusion
===============================

``triton.experimental.graph_fusion`` accepts a ``torch.fx.GraphModule`` and
plans a bounded set of inference compositions. The original three templates
are matrix multiplication plus bias, matrix multiplication plus bias and ReLU,
and addition plus last-axis softmax. The F06 expansion adds constrained
GELU/SiLU matrix epilogues, bounded add+GELU/SiLU, last-axis add+LayerNorm and
last-axis mul+sum. See :doc:`graph-fusion-f06-expansion` for their exact
semantics, eligibility and limitations.
For general operator graph fusion through Inductor, use :doc:`operator-fusion`.
This prototype is independent of that integration.

.. code-block:: python

    import torch
    from triton.experimental import graph_fusion

    class Model(torch.nn.Module):
        def forward(self, x, weight, bias):
            return torch.relu(x @ weight + bias)

    graph = torch.fx.symbolic_trace(Model().eval())
    x = torch.randn(16, 64, device="cuda")
    weight = torch.randn(64, 128, device="cuda")
    bias = torch.randn(128, device="cuda")
    plan = graph_fusion.compile(graph, (x, weight, bias))
    with torch.no_grad():
        output = plan(x, weight, bias)
    print(plan.explain())

Planning does not execute the example inputs or mutate the input graph. Kernel
compilation is lazy. ``explain()`` reports selected templates, rejected matches,
and the latest execution's implementation, owned-kernel launch count and names,
native-operator counts, fusion scope and fallback reason. An admitted region
uses one or more owned Triton JIT kernels and the existing backend pipeline; the
BF16 matrix region is partitioned and also invokes an opaque native Torch
operator. Operations outside regions execute through the original FX graph.
``mode="fused"`` describes a matched region, not a single-kernel or performance
guarantee.

Supported contract
------------------

The implementation accepts contiguous, nonempty, rank-two inference inputs.
All tensors in a region must share device and dtype. Matrix bias may broadcast
from a scalar, vector, row, column or matrix. Softmax accepts axis 1 or -1, with
a same-shaped, vector or single-row additive operand. Functional and
Tensor-method forms are recognized; ``nn.Linear``/``nn.ReLU`` module calls and
exported ATen graphs are not normalized by this prototype. Expanded additions
accept exact and tanh GELU (other approximations are rejected), SiLU without
in-place mutation, last-axis ``normalized_shape`` LayerNorm with optional
affine parameters, and last-axis sum after an elementwise multiply. The
expanded templates are described in :doc:`graph-fusion-f06-expansion`.

* NVIDIA: fp32, fp16 and bf16; softmax width at most 4096.
* XPU: fp32 matrix combinations with reduction dimension at most 1024,
  divisible by 8. FP16 and BF16 matrix combinations are admitted for reduction
  dimension 64, 256 or 1024 with output width divisible by 128. With the
  qualified LLVM19 option, FP16/BF16 additionally admit bounded tails with
  ``0 < K <= 1024`` and ``0 < N <= 1024`` through native ``mm`` plus an
  in-place epilogue. All paths require positive ``M`` and the existing rank-two,
  contiguous, nonempty, shared device/dtype and metadata guards. Tails outside
  this scope, or without the qualified option, fall back. FP32 matrix width
  must remain divisible by 128 and its reduction eligibility is unchanged. Softmax supports
  fp32/fp16/bf16 with width divisible by 128 and at most 1024.

XPU matrix admission is summarized below. All rows require positive ``M`` and
the existing rank-two, contiguous, nonempty, shared device/dtype and metadata
guards.

.. list-table:: XPU matrix admission
   :header-rows: 1

   * - Dtype
     - Reduction K
     - Output width
     - Implementation
   * - fp32
     - at most 1024, divisible by 8
     - ``N % 128 == 0``
     - SDNN or retained (no native operator)
   * - fp16
     - 64, 256 or 1024
     - ``N % 128 == 0``
     - SDNN plus flat epilogue (2 owned)
   * - bf16
     - 64, 256 or 1024
     - ``N % 128 == 0``
     - native Torch ``mm`` plus Triton epilogue (1 owned + 1 native)
   * - fp16 / bf16 tail, LLVM19 required
     - ``0 < K <= 1024``
     - ``0 < N <= 1024``
     - native Torch ``mm`` plus single-pointer epilogue (1 owned + 1 native)

XPU matrix routes
^^^^^^^^^^^^^^^^^

The XPU implementation selects among the following matrix routes:

* **FP32 SDNN ``tl.dot`` route (K=64, 256 or 1024).** The kernel tiles
  the output with ``BM=min(32, max(16, next_power_of_2(M)))`` and
  ``BN=128`` when ``N<=128``, otherwise ``BN=256``; ``BK`` is the next power of
  two of ``K``. A broadcast bias with ``B_M==0`` (scalar, vector or single-row)
  and no ReLU uses one kernel, ``_dot_bias_sdnn``, which adds the rank-one bias
  before storing. Other bias forms, and every ``matmul_bias_relu`` region, use
  a pure dot kernel ``_dot_sdnn`` followed by a flat vector epilogue
  ``_epilogue_sdnn`` that applies the row/column bias strides and ReLU. These
  are two kernels. The epilogue uses block 2048 and 64 cores when the output
  has at least 65536 elements, otherwise block 256 and 32 cores; the dot
  kernels use 64 cores. The name ``mode="fused"`` describes the matched graph
  region, not a one-kernel guarantee.
* **FP16 SDNN route (K=64, 256 or 1024).** FP16 matrix input uses the native
  SDNN low-precision input path with FP32 accumulation and scratch storage. A
  flat epilogue rounds the matrix product to FP16 before adding the bias, then
  rounds the add result to FP16 before optional ReLU. Both boundaries use
  round-to-nearest-even. The low-precision epilogue specializes ``M`` and the
  bias strides as constexpr launch constants, guarded by static metadata
  checks; FP16 keeps its existing core and block policy. The region owns two
  Triton kernels, the SDNN dot kernel and the epilogue, and reports no native
  operator.
* **BF16 hybrid route (K=64, 256 or 1024).** BF16 deliberately keeps the
  original Torch ``mm`` as an opaque native operator so the matrix numeric
  behavior, including extreme values, remains the original Torch behavior.
  One owned Triton epilogue adds the bias with round-to-nearest-even and applies
  optional ReLU, using bit-preserving low-precision input and output. The
  epilogue loads the product and bias as raw ``uint16`` values and shifts their
  bits into FP32, avoiding the tested XPU BF16 vector-load conversion error. It
  uses ``BLOCK=4096`` and 64 cores, with the same constexpr specialization of
  ``M`` and bias strides. Native Torch ``mm`` implicitly honors the input device
  and current stream. With the validated LLVM19 option, a single read/write
  pointer epilogue updates the fresh ``mm`` result on 64 cores, eliminating a
  second output allocation. No user input or earlier output aliases that
  storage. Without that option, the separate-output epilogue is retained.
  This is a hybrid/partitioned region with one native operator and
  one owned Triton kernel. It is neither a pure Triton BF16 matrix multiply nor
  a single-kernel region. This route preserves numerical behavior; it does not
  guarantee a speedup over the native operator sequence.
* **Retained column-blocked route (FP32 other admitted K up to 256).** FP32
  ``K`` values outside 64/256/1024 that are still admitted keep the original
  ``_matmul_xpu_tiled`` route. One program handles one row and a block of
  128/256/512 adjacent output columns, sharing each input value across the
  block; it uses ``BN//8`` cores and disables the backend unroll-control pass
  for the bounded K loop. This is the legacy compatibility route for the
  remaining FP32 K values.
* **Retained per-output reduction (FP32 other admitted K above 256).** FP32
  ``K`` values outside 64/256/1024 and above 256 keep ``_matmul_xpu_reduce``,
  which reduces one output element per program. This route is not used for the
  K=1024 SDNN cases.
* **Bounded FP16/BF16 tails.** When K is outside 64/256/1024 or N is not
  divisible by 128, the admitted low-precision tail route uses native Torch
  ``mm`` followed by one owned in-place epilogue, with block 4096 and 64 cores.
  Its fresh product is the final output; inputs and earlier outputs are not
  reused. BF16 uses the existing raw-bit epilogue. FP16 converts its already
  materialized product and bias to FP32, rounds the sum to FP16 with RTNE,
  applies optional ReLU, and stores through the same pointer. Both the
  admission guard and direct preparation require the qualified LLVM19 path;
  an environment variable without actual compiler options is insufficient.
  This avoids the SDNN masked-K lowering for these cases. It does not repair
  arbitrary LLVM transformations or provide a single-kernel matrix multiply.

The retained routes are deliberately kept for FP32 K values outside the
qualified SDNN set; they are not a claim that those K values have the same
performance or numerical path as the K=64/256/1024 route. Low-precision K
values outside 64/256/1024 do not use these retained FP32 routes. They use the
bounded hybrid tail route when admitted, and otherwise fall back explicitly.

A Triton BF16 matrix candidate using FP32 scratch and software
round-to-nearest, ties away from zero (RNU) matched the normal range but not Torch at
minimum-normal or overflow. Universal RNU is not the full backend semantics, so
that candidate was rejected as the default. Current backend constraints also
include truncating native BF16 stores, a rank-two ``tt.bitcast`` that fails
lowering, and ``gpu.barrier`` failing LLVM translation; a tested candidate
workaround does not establish a global LLVM backend fix. The default therefore
remains the hybrid route above. Reusing the product through two nominally
distinct pointer arguments failed for column-broadcast bias. A single read/write
pointer at 64 cores passed the scoped validation; smaller core configurations
still produced incorrect repeated updates. Only the single-pointer 64-core
LLVM19 configuration is selected for output reuse. The output never aliases a
user input or a retained output from an earlier call.

A diagnostic FP16 single-kernel flattening path with a software
round-to-nearest-even store was also rejected. Its initial pointer-bitcast store
failed compilation; the corrected FP16 store compiled, but all 12 random case
groups and the edge cases failed. No global LLVM fix is claimed. Aligned FP16
keeps the two-kernel route; bounded FP16 tails use native mm plus epilogue.
The LLVM 19 opt mechanism described below is
unchanged.

XPU softmax routes
^^^^^^^^^^^^^^^^^^

* Non-power-of-two widths use the legacy one-dimensional ``_softmax`` kernel,
  including N=384. N=384 is width-aligned but keeps the legacy row path, which
  is the correct route; it is not sent through the grouped rank-two path.
* Power-of-two widths use the grouped rank-two path. FP32 and FP16 use
  ``_softmax_xpu_grouped`` with ``BM=16``. BF16 uses
  ``_softmax_xpu_bf16_packed`` with ``BM=8`` for N=1024 and ``BM=16``
  otherwise. The packed kernel reads and writes pairs as ``uint32`` because the
  tested XPU rank-two BF16 conversion miscompiles values; the packed path keeps
  both BF16 bit patterns without 16-bit vector conversion. The grouped path
  uses 64 cores.

Numerical and failure behavior
------------------------------

The templates retain intermediate dtype rounding from the original
``mm -> add -> relu`` or ``add -> softmax`` graph. This differs from APIs that
keep all intermediate values in fp32 and cast only the final output. FP32
matrix products use IEEE inputs; FMA contraction is disabled for the generated
kernel. Reduction order may still differ from the original library, so ordinary
dtype-specific tolerances apply. Tests include exact low-precision rounding
counterexamples and nonfinite softmax inputs.

Known compilation/resource rejection occurs before launching the kernel and
replays only the original region, with a diagnostic reason. Unexpected compiler
errors and device execution errors propagate; a failed device launch is never
silently retried through the original graph. For the two-kernel XPU partitions,
both kernels are compiled before any device execution so a compilation/resource
failure can fall back without replaying a partially launched region.

XPU compiler selection and the LLVM 19 opt-in
---------------------------------------------

``DISABLE_LLVM_OPT=1`` is still required by the graph backend guard for every
XPU region. Without it, the region explicitly falls back with
``xpu_requires_disable_llvm_opt``. The graph library does not change this
process-wide setting itself. This guard is retained for legacy compatibility
with the tested XPU stack.

In addition, the XPU backend exposes per-kernel ``XPUOptions`` fields
``llvm19_opt_path`` and ``llvm19_opt_level``. The graph implementation selects
this route when ``FLAGTREE_XPU_LLVM19_OPT`` is set to an absolute path to an
executable vendor LLVM 19 ``opt``; it sets the path and requests ``O3``. The
same fields can be supplied directly to a kernel through compilation options.
An unset environment variable leaves the default compiler route unchanged. Its public in-process LLVM 22 stage
still obeys ``DISABLE_LLVM_OPT`` before the LLVM 19 ``llc`` lowering.

When the vendor option is selected, the backend skips the public LLVM 22
``optimize_module`` stage. The vendor ``opt`` runs on the LLVM 19 text produced
by the existing LLVM 22 -> 19 downgrade, after raw-payload merge and before
``llc``; it therefore replaces the public LLVM optimizer for that selected
kernel. ``DISABLE_LLVM_OPT=1`` remains a separate guard and does not suppress
this explicit vendor stage. The vendor stage runs ``-O3`` for the graph route
and fails compilation loudly on a missing tool, non-absolute path, bad exit,
timeout, empty input or empty output. Benign stderr from a successful run is
logged as a warning.

The executable's path, requested level, content SHA-256 and stat identity
(inode, size, mtime, ctime) participate in the per-kernel cache hash, along with
a protocol tag. Replacing the binary at the same path therefore changes the
cache key. Path and level are ordinary serialized option fields.

The diagnostic vendor ``opt`` used for these experiments identifies itself as
an LLVM 19.0 git build, while the packaged ``llc`` is LLVM 19.1.7. They are not
claimed to be a matched revision. The public LLVM 22 O1/O3 evidence showed the
cluster grid-stride loop backedge being removed and only the first 12 rows being
written; the vendor LLVM 19 O3 route preserved the loop and the full 64 rows in
device validation. The exact individual LLVM pass responsible has not been
proven, and this is not an ABI or all-operator guarantee.

Execution, guards and diagnostics
---------------------------------

Each call checks the example inputs' shape, stride, dtype, device and view
metadata. Matching tensors may have new storage and values. Changed metadata
uses the original graph. Graph attributes are read live on each invocation.
Training, autocast, unsupported layouts or resource limits also use the
original operators. Set ``plan.enabled = False`` for an explicit original-graph
baseline. A ``Registry`` containing a subset of ``default_registry().templates``
can disable individual patterns.

Internal intermediate values must have one consumer, and operations in a
region must be adjacent among computational nodes. Unknown computations,
including possible mutations, block fusion across them. Read-only input aliases
are permitted: kernels allocate fresh outputs and do not write to inputs.

The execution plan generates a Python callable once instead of interpreting
individual FX nodes on every invocation. Successful compilation caches a
launcher specialized to tensor metadata. The warmed direct-plan path launches
from the same call frame and reuses diagnostics on unchanged fused calls.
Keyword and non-direct calls retain the general signature-binding path. It still checks the enabled flag, complete FX graph structure, node
order, node arguments and keyword arguments, input metadata, grad mode,
autocast state and compiler context on every call. Each call also reads live
input storage, allocates a fresh output and resolves the current stream.

The graph guard retains all original FX objects and selects the private
``_args``, ``_kwargs`` and ``_next`` slots per field when available, falling
back to the public properties otherwise. Input metadata uses native PyTorch
tensor guards when available, with a portable metadata-check fallback. A C++
Dynamo tree-guard experiment measured slower and was rejected; it is not in the
final implementation. Compilation/resource failures before launch replay the
original region. The object stores latest-call diagnostics and is intended for
serial use. This is not a CUDA Graph replay or an automatic profitability
policy. ``mode="fused"`` describes matched regions, not a guarantee that the
entire model is one kernel or faster.

On XPU, the backend's optional ``XPULauncher.get_flat_runner`` capability is
used only for fixed pointer and scalar signatures. It caches constexpr filtering
with ``operator.itemgetter``, forwards the nine launch controls, including
metadata and hooks, unchanged, and uses the current call's arguments. Descriptor
signatures, unknown scalar types and active debug printing use the generic
runner. ``_xpu_matmul._bind`` opts into the capability when available; older
backends keep the compiled ``run`` path. The descriptor ABI is unchanged.
``_xpu_matmul._run`` treats an exact ``HookChain`` with empty ``calls`` as empty;
only in that case it passes ``None`` and skips launch metadata. Other callables
and ``HookChain`` subclasses are unchanged. It checks the live chain for each
kernel, so hooks added or removed after preparation are honored.

For an admitted XPU partition, ``kernel_launches`` and ``kernel_names`` count
owned Triton kernels. ``native_operator_calls`` and ``native_operators`` report
opaque native calls separately. FP16 matrix regions own two kernels and make
no native call. BF16 matrix regions own one epilogue and call ``aten.mm`` once;
the number of device kernels inside that native call is not inferred. Both are
reported with ``reason="supported_partitioned_template"``. BF16 scopes are
``aten_mm_bias_epilogue`` or ``aten_mm_bias_relu_epilogue``. The implementation
version remains v3 for prepared implementations carrying these attributes.

Validation and performance measurements
---------------------------------------

CPU semantic/planning tests and real-device tests live in
``python/test/unit/runtime/test_graph_fusion.py``. Run with pytest on the
appropriate backend. ``python/benchmarks/benchmark_graph_fusion.py`` writes
per-case diagnostics, independent CPU reference comparisons and synchronized
host-inclusive timing samples. The harness distinguishes supported fused cases
from deliberate fallback; it does not count fallback cases as fusion success.

``python/benchmarks/profile_graph_fusion.py`` compares a saved baseline package,
the current package and an eager FX callable in one process. It rotates
measurement order, warms all routes, synchronizes around batches, includes
fresh output allocation, and stores all samples and source hashes. The main
performance protocol is seven rounds of 40 calls after eight warm-up calls;
the report must state repeated medians and minima rather than only a single
aggregate. CUDA Graph timing in the NVIDIA configuration sweep measures device
work separately from Python dispatch.

Low-precision tests cover exact intermediate rounding, bias broadcasts, odd
storage offsets, new input storage, current streams, fresh outputs, tiny values
and nonfinite values. Large BF16 regressions exercise raw-bit input loading.
``--lowp-extended`` adds sixteen cases across K=63/256/1024, alignment fallback
and large outputs. ``--lowp-profile`` profiles the two matrix templates in
FP16/BF16 at M=32, N=256 and K=64.

For the new BF16 extended cases, the original PyTorch result can differ from
rounding an exact CPU-double dot by one BF16 ulp because accumulation is FP32.
The profiler records the point-reference differences for both baseline and
candidate and checks an independent normal-range error interval using
``gamma_K * sum(abs(x*w))``, where ``gamma_K=K*2^-24/(1-K*2^-24)``. The endpoints
are widened outward, materialized as BF16, and passed through the original bias
rounding and ReLU. This reference applies to the finite normal-range test data;
it is not a model of target extreme-value behavior. Comparison tolerances
against original device PyTorch and the paired timing protocol are unchanged.

The profiler also times a prepared callable as a component diagnostic and
records whether two held results actually reuse output storage in
``prepared_callable_reuses_output``. The new SDNN ``_xpu_matmul`` path
allocates a fresh output on every call, so that boolean is false there; the old
prepared template path may reuse its held output, so the boolean can be true.
Prepared-callable times are dispatch/device component probes and are never
end-to-end speedup figures.

The measured policies target small inference shapes. NVIDIA uses smaller
matrix tiles and a single warp for softmax widths up to 1024. XPU uses the SDNN
dot route for qualified K and grouped row blocks for softmax.
These policies retain dtype rounding, IEEE inputs, nonfinite behavior and
existing fallback limits. Fewer launches do not guarantee a gain over
optimized vendor libraries, and performance should be checked at the intended
workload shapes.

Parameter selection (expanded templates)
------------------------------------

``select_configs`` is an explicit opt-in API for the expanded templates only.
It builds a finite validated configuration domain, may ask an existing FlagTune
``ConfigProposer`` to rank it, then checks correctness and times candidates
with FlagTune's benchmark protocol before returning a fixed ``TuningPlan``.
It rejects entry when the input's current CUDA stream is capturing. Model-bundle
absence falls back to bounded configurations with transparent provenance. The
original three templates retain their qualified fixed policies. No selection
runs inside a CUDA Graph capture, and ``compile`` never calls the selector.
For separately supplied stages, ``cross_call_candidate`` performs bounded
graph-level inlining only when the whole chain is covered by one supported
template; it does not capture kernel launches. ``CompiledGraph.warm`` is the
explicit ordinary call for compiling lazy kernels before user capture. See
:doc:`graph-fusion-f06-expansion`.

Limitations
-----------

* BF16 matrix regions and the FP16 tail route retain native Torch ``mm`` for numerical compatibility.
  Their extra dispatch and allocation can outweigh epilogue fusion savings;
  an admitted region is not automatically a profitability decision.
* Shape qualification is limited to the stated alignment, width and reduction
  bounds. The measured K=64/256/1024 cases passed; other workload shapes still
  need independent correctness and performance validation.
* The vendor ``opt`` route is opt-in and diagnostic. Its executable revision is
  not claimed to match the packaged ``llc``, and the exact LLVM pass responsible
  for the public-optimizer loop loss is not established.
* The old one-dimensional softmax path is retained for non-power-of-two widths
  such as N=384; its correctness is not evidence for the grouped path at those
  widths.
