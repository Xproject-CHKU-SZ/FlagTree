"""Opt-in Torch 2.5.1 Inductor -> FlagTree Triton 3.6 compatibility adapter.

Import this module and call :func:`install` *before* importing
``torch._inductor`` / ``torch._dynamo``.  The adapter only exposes/moves symbols
and translates legacy Triton metadata into the equivalent current metadata.  It
does not touch fusion partitioning, scheduling, lowering, math, autotune
candidate configs, backend passes, generated kernels, or LLVM binaries.

Current target snapshot provenance (read-only source, not modified here):
  * original-python/triton/runtime/cache.py sha256
    0355c3e3452fa4500122244b8fff8864f22bc05c417a3d6f5dada9f2e92f8040
    ``triton_key`` source (lines 272-304) sha256
    ccdc66a182db795590ed32ce0af297f181a103b7424fa77e6f5b8226a48a797e
  * original-python/triton/compiler/compiler.py sha256
    a90e7f00833ff499c3518615fe5421fcec13fb71a634622ffd747e0b11004f3f
  * original-python/triton/backends/compiler.py sha256
    c5d3403b88b5bb728f8ac78c55163198e418430f126c842892c68cb4b6baaa78

Each patch is recorded in ``PATCHES`` with its old/new source location and the
SHA-256 of the function that was replaced (when inspectable).
"""

from __future__ import annotations

import hashlib
import inspect
from dataclasses import dataclass, field, fields

__all__ = ["install", "PATCHES", "AttrsDescriptor", "is_installed"]

PATCHES = []
COMPILE_CALLS = []
_INSTALLED = False


def is_installed() -> bool:
    return _INSTALLED


def _source_sha(fn):
    try:
        return hashlib.sha256(inspect.getsource(fn).encode("utf-8")).hexdigest()
    except (OSError, TypeError):
        return None


def _record(patch_id, source, target, provenance, replaced_fn=None):
    entry = {
        "id": patch_id,
        "source": source,
        "target": target,
        "provenance": provenance,
        "replaced_source_sha256": _source_sha(replaced_fn) if replaced_fn else None,
    }
    PATCHES.append(entry)
    return entry


def _make_attrs_descriptor():
    """Triton 3.1 AttrsDescriptor, with only the fields that version had.

    Exposing the extra ``ids_of_folded_args`` / ``divisible_by_8`` fields would
    make Torch 2.5.1 pass metadata this adapter cannot faithfully translate.
    The new Triton represents specialization as ``{arg_path: [(attr, value)]}``.
    """

    @dataclass
    class AttrsDescriptor:
        divisible_by_16: set = field(default_factory=set)
        equal_to_1: set = field(default_factory=set)

        def __post_init__(self):
            self.divisible_by_16 = set(self.divisible_by_16 or ())
            self.equal_to_1 = set(self.equal_to_1 or ())

        def to_dict(self):
            return {
                "divisible_by_16": list(self.divisible_by_16),
                "equal_to_1": list(self.equal_to_1),
            }

        @staticmethod
        def from_dict(data):
            return AttrsDescriptor(
                divisible_by_16=set(data.get("divisible_by_16", [])),
                equal_to_1=set(data.get("equal_to_1", [])),
            )

        def hash(self):
            key = str([sorted(x) for x in self.__dict__.values()])
            return hashlib.sha256(key.encode("utf-8")).hexdigest()

    AttrsDescriptor.__module__ = "triton.compiler.compiler"
    AttrsDescriptor.__qualname__ = "AttrsDescriptor"
    return AttrsDescriptor


def _is_legacy_attrs(attrs) -> bool:
    return (
        attrs is not None
        and not isinstance(attrs, dict)
        and hasattr(attrs, "divisible_by_16")
    )


def _translate_legacy_attrs(attrs, positional_sig, fn, constants):
    """Translate old AttrsDescriptor into new ASTSource.attrs + constants.

    Old Triton 3.1 folded ``equal_to_1`` into constants and applied
    ``divisibility=16`` from ``divisible_by_16``.  Torch 2.5.1 also puts
    ``equal_to_1`` into ``triton_meta["constants"]`` already; add it only when
    absent so the current compiler sees the same semantic result.

    ``divisible_by_8`` and ``ids_of_folded_args`` do not exist in the Triton
    3.1 AttrsDescriptor used by Torch 2.5.1.  If a caller supplies them with
    values, fail loudly instead of silently dropping specialization.
    """
    div8 = getattr(attrs, "divisible_by_8", None)
    if div8:
        raise NotImplementedError(
            "legacy AttrsDescriptor.divisible_by_8 has no faithful current "
            "Triton representation in this adapter; refusing to drop it"
        )
    folded = getattr(attrs, "ids_of_folded_args", None)
    if folded and not set(folded).issubset(set(attrs.equal_to_1 or ())):
        raise NotImplementedError(
            "legacy AttrsDescriptor.ids_of_folded_args not covered by "
            "equal_to_1 constants; refusing to guess semantics"
        )

    new_attrs = {}
    for i in sorted(int(x) for x in (attrs.divisible_by_16 or ())):
        # Upstream current BaseBackend.parse_attr("D") yields exactly this shape.
        new_attrs[(i,)] = [["tt.divisibility", 16]]

    # Old ASTSource codegen added equal_to_1 args to constants itself:
    # bool True for i1, otherwise integer 1.
    by_index = {}
    for k, v in (positional_sig or {}).items():
        if isinstance(k, str):
            if k in fn.arg_names:
                by_index[fn.arg_names.index(k)] = v
        else:
            by_index[int(k)] = v
    for i in sorted(int(x) for x in (attrs.equal_to_1 or ())):
        key = (i,)
        if key not in constants:
            constants[key] = True if by_index.get(i) == "i1" else 1
    return new_attrs


def _patch_ast_source(cc):
    ast_source = getattr(cc, "ASTSource", None)
    if ast_source is None:
        raise RuntimeError("triton.compiler.compiler.ASTSource is missing")
    if getattr(ast_source, "_compat_adapter_legacy_metadata", False):
        return False

    original_init = ast_source.__init__

    def _compat_init(self, fn, signature, constexprs=None, attrs=None):
        positional_sig = dict(signature) if isinstance(signature, dict) else None

        if isinstance(signature, str):
            signature = {
                i: v.strip() for i, v in enumerate(signature.split(","))
            }
            positional_sig = dict(signature)
        elif signature is not None and not isinstance(signature, dict):
            signature = dict(signature)

        # Current ASTSource keys the signature by argument *name*; old Inductor
        # keys it by positional index (including non-constexpr gaps).
        if any(not isinstance(k, str) for k in signature):
            mapped = {}
            for k, v in signature.items():
                if isinstance(k, str):
                    mapped[k] = v
                    continue
                i = int(k)
                if i < 0 or i >= len(fn.arg_names):
                    raise ValueError(
                        f"legacy ASTSource signature index {i} outside "
                        f"{fn.arg_names!r}"
                    )
                mapped[fn.arg_names[i]] = v
            signature = mapped

        constants = {}
        for k, v in (constexprs or {}).items():
            if isinstance(k, tuple):
                nk = k
            elif isinstance(k, str):
                nk = k  # original __init__ converts name -> (index,)
            else:
                nk = (int(k),)
            constants[nk] = v

        if _is_legacy_attrs(attrs):
            attrs = _translate_legacy_attrs(attrs, positional_sig, fn, constants)

        original_init(self, fn, signature, constants, attrs)
        self._legacy_inductor_metadata = positional_sig is not None and any(isinstance(k, int) for k in positional_sig)

    _compat_init._compat_adapter_legacy_metadata = True
    ast_source.__init__ = _compat_init
    ast_source._compat_adapter_legacy_metadata = True
    _record(
        "astsource_legacy_metadata",
        "triton.compiler.compiler.ASTSource.__init__ (old int-keyed signature/"
        "constants + AttrsDescriptor)",
        "triton.compiler.compiler.ASTSource.__init__",
        "int index -> fn.arg_names; constants int -> (index,); "
        "divisible_by_16 -> {path: [['tt.divisibility',16]]}; "
        "equal_to_1 preserved via constants (old codegen folded it there)",
        original_init,
    )
    return True


def install():
    """Install all compatibility patches. Idempotent; call before torch import."""
    global _INSTALLED
    was_installed = _INSTALLED

    import triton
    from triton.compiler import compiler as cc
    from triton.runtime import cache as triton_cache

    if not _INSTALLED:
        key = getattr(triton_cache, "triton_key", None)
        if key is None:
            raise RuntimeError(
                "triton.runtime.cache.triton_key is missing; no faithful "
                "triton_key re-export is possible"
            )
        if not hasattr(cc, "triton_key"):
            cc.triton_key = key
            _record(
                "triton_key_reexport",
                "triton.runtime.cache.triton_key",
                "triton.compiler.compiler.triton_key (old import site)",
                "direct alias; no reimplementation",
                key,
            )

        compiler_pkg = __import__("sys").modules.get("triton.compiler")
        if compiler_pkg is not None and not hasattr(compiler_pkg, "triton_key"):
            compiler_pkg.triton_key = key

        if not hasattr(cc, "AttrsDescriptor"):
            attrs_cls = _make_attrs_descriptor()
            cc.AttrsDescriptor = attrs_cls
            globals()["AttrsDescriptor"] = attrs_cls
            _record(
                "attrs_descriptor_legacy",
                "Triton 3.1 AttrsDescriptor (removed in 3.6)",
                "triton.compiler.compiler.AttrsDescriptor",
                "API compatibility class only; translated by ASTSource patch; "
                "fields deliberately limited to divisible_by_16/equal_to_1",
            )

        _patch_ast_source(cc)
        import triton.testing
        from legacy_do_bench import do_bench
        old_bench = triton.testing.do_bench
        triton.testing.do_bench = do_bench
        _record("do_bench_31_abi", "vendor Triton 3.1 testing.do_bench (exact source)",
                "triton.testing.do_bench",
                "Restores fast_flush/device_type ABI and original autotune measurement; candidates unchanged",
                old_bench)


        # The vendor CUDA facade advertises sm86. Translate its legacy target
        # to the active XPU driver target; keep generated code/configs untouched.
        original_compile = triton.compile
        def compile_with_active_target(src, target=None, options=None):
            if getattr(src, "_legacy_inductor_metadata", False):
                from triton.runtime import driver
                active = driver.active
                if ".xpu." not in type(active).__module__:
                    raise RuntimeError("This adapter requires an actual XPU driver")
                actual = active.get_current_target()
                if target is not None and target.backend not in ("cuda", "xpu"):
                    raise RuntimeError(f"Unexpected legacy target: {target}")
                COMPILE_CALLS.append({"name": src.name, "requested": str(target),
                                      "actual": str(actual), "options": dict(options or {}),
                                      "source_sha256": hashlib.sha256(src.fn.src.encode()).hexdigest()})
                target = actual
            return original_compile(src, target=target, options=options)
        triton.compile = compile_with_active_target
        _record("legacy_target_device_translation", "Torch CUDA facade sm86",
                "triton.compile target from active XPU driver",
                "Only target metadata; no source/config/scheduling/pass changes", original_compile)

        compiled_kernel = getattr(cc, "CompiledKernel", None)
        if compiled_kernel is None:
            raise RuntimeError("triton.compiler.compiler.CompiledKernel is missing")
        if not hasattr(compiled_kernel, "launch_enter_hook"):
            class RuntimeHook:
                def __init__(self, name): self.name = name
                def __get__(self, instance, owner):
                    return getattr(triton.knobs.runtime, self.name)
            compiled_kernel.launch_enter_hook = RuntimeHook("launch_enter_hook")
            _record(
                "compiledkernel_legacy_launch_hooks",
                "Triton 3.1 CompiledKernel.launch_enter_hook/launch_exit_hook",
                "triton.compiler.compiler.CompiledKernel class attributes",
                "Read-through descriptors to current triton.knobs.runtime hooks",
            )
        if not hasattr(compiled_kernel, "launch_exit_hook"):
            compiled_kernel.launch_exit_hook = RuntimeHook("launch_exit_hook")

        _INSTALLED = True

    return {
        "installed": True,
        "already_installed": was_installed,
        "triton_version": getattr(triton, "__version__", None),
        "triton_key": {
            "source": "triton.runtime.cache.triton_key",
            "target": "triton.compiler.compiler.triton_key",
            "function_sha256": _source_sha(triton_cache.triton_key),
        },
        "patches": list(PATCHES),
    }


# Kept for callers that inspect the class without importing the target package.
try:
    from triton.compiler import compiler as _cc

    AttrsDescriptor = getattr(_cc, "AttrsDescriptor", None)
except Exception:  # Triton absent (e.g. stub contract tests): populated on install()
    AttrsDescriptor = None


def guard_vendor_import_hook():
    """Keep the vendor import hook running, but outside Dynamo frame capture."""
    import sys
    import builtins
    hook = sys.modules.get('xpytorch_import_hook')
    if hook is None or builtins.__import__ is not hook._custom_import:
        raise RuntimeError('Expected active vendor import hook is missing')
    from torch._dynamo.decorators import skip
    before = _source_sha(hook._custom_import)
    skip(hook._custom_import)
    assert builtins.__import__ is hook._custom_import
    assert _source_sha(hook._custom_import) == before
    _record('vendor_import_frame_guard', 'xpytorch_import_hook._custom_import',
            'Dynamo skip_code for import-hook frame',
            'Import hook body and vendor rewrites unchanged; model fullgraph remains enabled',
            hook._custom_import)
    return list(PATCHES)
