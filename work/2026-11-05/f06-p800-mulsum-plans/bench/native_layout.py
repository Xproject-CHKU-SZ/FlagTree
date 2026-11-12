"""Experimental native Inductor layout choices for two-region plans only.

Use native multidimensional indexing to avoid the vendor's flattened-broadcast
lowering, and its persistent reduction form for SDNN Sum. Keep native config
search, launchers, computation and original dtype boundaries.
"""
from contextlib import contextmanager

@contextmanager
def layout_scope():
    from unittest.mock import patch
    from torch._inductor import config
    from torch._inductor.codegen.triton import TritonKernel
    from triton.experimental.graph_fusion import _resource_codegen as gen
    no_x=TritonKernel.want_no_x_dim;persistent=TritonKernel.should_use_persistent_reduction
    def use_persistent(kernel):
        if gen._REQUEST.get()=='sdnn' and gen._SCALAR_REDUCTION.get():return kernel.inside_reduction
        return persistent(kernel)
    def use_no_x(kernel):
        if gen._REQUEST.get()=='sdnn' and gen._SCALAR_REDUCTION.get():return False
        return no_x(kernel)
    with config.patch({'triton.prefer_nd_tiling':True}),patch.object(TritonKernel,'should_use_persistent_reduction',use_persistent),patch.object(TritonKernel,'want_no_x_dim',use_no_x):
        yield
