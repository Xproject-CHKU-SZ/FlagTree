"""Launcher/closure regression without a GPU; no numerical or PPU evidence.

Exercise the production compile_call through dependency doubles. Separately
derive the Python argument format and wrapper from the actual PPU driver source
without importing SDK/runtime code.
"""
import ast
import gc
import importlib.util
import inspect
from pathlib import Path
import re
import sys
import tempfile
import types
import unittest
from unittest.mock import Mock, patch
import weakref

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))


class Tensor:
    def __init__(self, dtype, shape=(32, 24, 1536), offset=0):
        self.dtype = dtype
        self.device = types.SimpleNamespace(type="cuda")
        self.shape = shape
        self.offset = offset

    def numel(self):
        result = 1
        for dim in self.shape:
            result *= dim
        return result

    def is_contiguous(self):
        return True

    def storage_offset(self):
        return self.offset


class KernelContract(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.dtype = object()
        self.launches = []
        self.compiled = types.SimpleNamespace(
            asm={name: "synthetic test fixture" for name in ("ttir", "ttgir", "llir", "hgbin")},
            function=None, hash="fixture", name="_gelu")
        owner = self

        class Compiled:
            def __getattr__(self, name):
                return getattr(owner.compiled, name)

            def __getitem__(self, grid):
                def launch(*args):
                    # Read the actual JIT function signature, not a duplicated
                    # hardcoded list of launch arguments.
                    names = list(inspect.signature(owner.jit.fn).parameters)
                    if len(args) != len(names):
                        raise TypeError(f"kernel signature expects {len(names)} arguments ({len(args)} given)")
                    constants = args[2:]
                    if constants != owner.constants:
                        raise ValueError("launch constants differ from compilation")
                    owner.compiled.function = 1
                    # Record only identities/scalars, never tensor references.
                    owner.launches.append({"grid": grid, "source": id(args[0]),
                                           "destination": id(args[1]), "constants": constants})
                return launch

        self.handle = Compiled()

        class Jit:
            def __init__(self, fn):
                self.fn = fn
                self.warmups = 0

            def warmup(self, source, destination, n, **kwargs):
                self.warmups += 1
                owner.constants = (n, kwargs["BLOCK"], kwargs["APPROXIMATE"])
                return owner.handle

        triton = types.ModuleType("triton")
        language = types.ModuleType("triton.language")
        language.constexpr = object()
        triton.language = language
        triton.cdiv = lambda n, block: (n + block - 1) // block

        def jit(fn):
            self.jit = Jit(fn)
            return self.jit
        triton.jit = jit

        torch = types.ModuleType("torch")
        torch.float32 = self.dtype
        torch.empty_like = lambda value: Tensor(self.dtype, value.shape)
        torch.cuda = types.SimpleNamespace(synchronize=Mock())
        self.torch = torch

        compiler = types.ModuleType("triton.backends.ppu.compiler")
        compiler.__file__ = str(HERE.parents[2] / "third_party/ppu/backend/compiler.py")
        Backend = type("Backend", (), {"__module__": compiler.__name__, "binary_ext": "hgbin"})
        compiler.Backend = Backend
        backends = types.ModuleType("triton.backends")
        backends.get_backend = lambda target: types.SimpleNamespace(compiler=lambda _: Backend())
        runtime = types.ModuleType("triton.runtime")
        runtime.driver = types.SimpleNamespace(active=types.SimpleNamespace(get_current_target=lambda: "fixture"))
        modules = {"triton": triton, "triton.language": language, "torch": torch,
                   "triton.backends": backends, "triton.backends.ppu.compiler": compiler,
                   "triton.runtime": runtime}
        patcher = patch.dict(sys.modules, modules)
        patcher.start()
        self.addCleanup(patcher.stop)
        spec = importlib.util.spec_from_file_location("f08_kernel_contract_fixture", HERE / "kernel.py")
        self.module = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(self.module)

    def compile(self, x):
        return self.module.compile_call(x, "none", Path(self.temp.name) / "compiler")

    def test_probe_passes_complete_signature(self):
        x = Tensor(self.dtype)
        _, evidence = self.compile(x)
        self.assertEqual(self.launches[0]["constants"], (x.numel(), 256, "none"))
        self.assertEqual(self.launches[0]["source"], id(x))
        self.assertEqual(self.torch.cuda.synchronize.call_count, 1)
        self.assertEqual(evidence["numel"], x.numel())

    def test_returned_call_passes_signature_for_out_and_alias(self):
        x = Tensor(self.dtype)
        call, _ = self.compile(x)
        destination = Tensor(self.dtype)
        self.assertIs(call(x, destination), destination)
        self.assertIs(call(x, x), x)
        self.assertEqual(self.launches[1]["destination"], id(destination))
        self.assertEqual(self.launches[2]["source"], self.launches[2]["destination"])
        self.assertEqual([row["constants"] for row in self.launches], [(x.numel(), 256, "none")] * 3)

    def test_compiled_callable_does_not_keep_probe_tensors(self):
        x = Tensor(self.dtype)
        observed = weakref.ref(x)
        call, _ = self.compile(x)
        self.assertFalse(any(isinstance(cell.cell_contents, Tensor) for cell in call.__closure__))
        del x
        gc.collect()
        self.assertIsNone(observed())
        self.assertEqual(self.jit.warmups, 1)

    def test_hot_call_uses_already_compiled_handle(self):
        x = Tensor(self.dtype)
        call, _ = self.compile(x)
        self.jit.warmup = Mock(side_effect=AssertionError("must not recompile"))
        call(x, x)
        self.jit.warmup.assert_not_called()

    def test_shape_or_offset_rejected_before_launch(self):
        call, _ = self.compile(Tensor(self.dtype))
        for bad in (Tensor(self.dtype, (1, 24, 1536)), Tensor(self.dtype, offset=1)):
            with self.assertRaises(ValueError):
                call(bad, bad)
        self.assertEqual(len(self.launches), 1)

    def test_actual_ppu_launcher_reproduces_legacy_18_vs_15(self):
        driver_path = HERE.parents[2] / "third_party/ppu/backend/driver.py"
        tree = ast.parse(driver_path.read_text())
        selected = [node for node in tree.body if
                    (isinstance(node, ast.FunctionDef) and node.name in {"ty_to_cpp", "make_launcher"}) or
                    (isinstance(node, ast.Assign) and any(isinstance(t, ast.Name) and t.id in
                     {"FLOAT_STORAGE_TYPE", "FLOAT_PACK_FUNCTION", "_BASE_ARGS_FORMAT", "_BASE_ARGS_FORMAT_LEN"}
                     for t in node.targets))]
        namespace = {"re": re}
        exec(compile(ast.Module(body=selected, type_ignores=[]), str(driver_path), "exec"), namespace)
        parameters = list(inspect.signature(self.jit.fn).parameters)
        signature = {index: "*fp32" if index < 2 else "constexpr" for index in range(len(parameters))}
        source = namespace["make_launcher"]({(2,): 1179648, (3,): 256, (4,): "none"}, signature, None)
        generated_format = re.search(r'PyArg_ParseTuple\(args, "([^"]+)"', source).group(1)
        launcher = next(node for node in tree.body if isinstance(node, ast.ClassDef) and node.name == "HggcLauncher")
        method = next(node for node in launcher.body if isinstance(node, ast.FunctionDef) and node.name == "__call__")
        method.decorator_list = []
        exec(compile(ast.Module(body=[method], type_ignores=[]), str(driver_path), "exec"), namespace)
        captured = []
        fake = types.SimpleNamespace(num_ctas=1, global_scratch_size=0, global_scratch_align=1,
                                     profile_scratch_size=0, profile_scratch_align=1,
                                     launch_cooperative_grid=False, launch_pdl=False,
                                     launch=lambda *args: captured.append(args))
        namespace["_allocation"] = types.SimpleNamespace(_allocator=None, _profile_allocator=None)
        metadata = ((4, 1, 0), None, None, None)
        namespace["__call__"](fake, 4608, 1, 1, 0, 0, *metadata, "X", "Y")
        self.assertEqual((len(generated_format), len(captured[-1])), (18, 15))
        namespace["__call__"](fake, 4608, 1, 1, 0, 0, *metadata, "X", "Y", 1179648, 256, "none")
        self.assertEqual(len(captured[-1]), len(generated_format))


if __name__ == "__main__":
    unittest.main()
