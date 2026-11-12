"""Opt-in construction hook for the pinned personal Torch 2.9 image."""
from pathlib import Path
import sysconfig

path=Path(sysconfig.get_path('purelib'))/'torch/_dynamo/eval_frame.py'
src=path.read_text()
old='''            new_mod.get_compiler_config = get_compiler_config

            return new_mod'''
new='''            new_mod.get_compiler_config = get_compiler_config

            if self.fullgraph and self._dynamic is False:
                wrapped = innermost_fn(self.callback, unaltered_fn_attr="_torchdynamo_orig_backend")
                compiler = getattr(wrapped, "compiler_fn", wrapped)
                if isinstance(compiler, types.FunctionType):
                    adapter = compiler.__dict__.get("_flagtree_wrap_module")
                    if adapter is not None:
                        return adapter(new_mod)
            return new_mod'''
if src.count(old)!=1:
    raise RuntimeError('unexpected Dynamo module-construction ABI')
path.write_text(src.replace(old,new))
