"""An unresolved FP32 device function, deliberately not supplied to Triton."""
from triton.language import core


@core.extern
def external_tanh(x, _semantic=None):
    return core.extern_elementwise('', '', [x],
                                   {(core.float32,): ('f06_tanh',core.float32)},
                                   is_pure=True,_semantic=_semantic)
