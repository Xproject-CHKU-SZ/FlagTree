"""An explicit preprocessing boundary for complete tensor-model compilation."""


class _CompiledPipeline:
    def __init__(self, prepare, compiled, source_precision=None):
        self.prepare = prepare
        self.compiled = compiled
        self._f06_audit = compiled._f06_audit
        self._f06_capture = compiled._f06_capture
        self._f06_scope = 'complete_tensor_forward'
        self._f06_source_precision = source_precision

    def __call__(self, *args, **kwargs):
        prepared = self.prepare(*args, **kwargs)
        if (not isinstance(prepared, tuple) or len(prepared) != 2
                or not isinstance(prepared[0], tuple) or not isinstance(prepared[1], dict)):
            raise TypeError('prepare must return (positional_args_tuple, keyword_args_dict)')
        if self._f06_source_precision == 'float32':
            import torch
            from torch.utils._pytree import tree_leaves
            if any(isinstance(x, torch.Tensor) and x.is_floating_point() and x.dtype != torch.float32
                   for x in tree_leaves(prepared)):
                raise ValueError('FP32 source capture requires original FP32 prepared inputs; widening rounded inputs is not supported')
            if torch.is_autocast_enabled('cuda') or torch.is_autocast_enabled('cpu'):
                raise ValueError('FP32 source capture requires autocast to be disabled')
        return self.compiled(*prepared[0], **prepared[1])


def compile_pipeline(tensor_model, *, prepare, output_template=None, source_precision=None, **kwargs):
    """Compile one complete tensor forward, keeping preprocessing in each call.

    ``prepare(*inputs, **kwargs)`` returns ``(args, kwargs)`` for an inference
    module that includes every tensor operation up to the public outputs,
    including pooling, projection, normalization and output ordering. Text and
    image preprocessing stays outside Dynamo and is never cached by this API.

    Graph breaks raise instead of silently compiling separate module entries.
    Guards can compile new complete graphs for new shapes. Vendor operators
    may remain opaque nodes in each graph; one graph need not be one kernel.

    With ``source_precision='float32'`` callers must supply the original FP32
    model and preprocessing, before any low-precision conversion. This API
    never widens a rounded checkpoint. ``output_template`` supplies only the
    public output structure and dtypes; final casts belong to the captured
    graph, after the complete model forward. Output sizes may change normally.
    """
    from ._model import compile_model
    if not callable(prepare):
        raise TypeError('prepare must be callable')
    if kwargs.pop('fullgraph', True) is not True:
        raise ValueError('A complete tensor pipeline requires fullgraph=True')
    if source_precision not in (None, 'float32'):
        raise ValueError('source_precision must be None or float32')
    if kwargs.get('precision_policy') == 'source_fp32_mixed' and source_precision != 'float32':
        raise ValueError('Source mixed precision requires source_precision=float32 and the original model')
    if source_precision == 'float32':
        import torch
        if any(x.is_floating_point() and x.dtype != torch.float32
               for x in (*tensor_model.parameters(), *tensor_model.buffers())):
            raise ValueError('FP32 source capture requires original FP32 parameters and buffers')
    if output_template is not None:
        import torch
        from torch.utils._pytree import tree_flatten, tree_unflatten
        leaves, expected_spec = tree_flatten(output_template)
        contracts = tuple((x.dtype, x.ndim, x.layout, x.device.type) if isinstance(x, torch.Tensor)
                          else None for x in leaves)
        # M06: keep final narrowing separate from FP32 values still needed by
        # another public output. The current XPU mixed-output lowering fails if
        # Inductor merges these stores into the same pointwise kernel.
        vendor_final_cast = None
        if any(c is not None and c[3] == 'cuda' and c[0] in (torch.float16, torch.bfloat16)
               for c in contracts):
            from ._p800_inductor_gelu import _on_p800
            if any(isinstance(x, torch.Tensor) and x.device.type == 'cuda' and _on_p800(x.device)
                   for x in leaves):
                from ._p800_model_layernorm import _final_cast
                vendor_final_cast = _final_cast

        class FinalOutputCast(torch.nn.Module):
            def __init__(self, model):
                super().__init__()
                self.model = model

            def forward(self, *args, **kwargs):
                values, spec = tree_flatten(self.model(*args, **kwargs))
                if spec != expected_spec:
                    raise ValueError('Public output structure changed')
                result = []
                for value, contract in zip(values, contracts):
                    if contract is not None:
                        dtype, ndim, layout, device = contract
                        if (not isinstance(value, torch.Tensor) or value.ndim != ndim
                                or value.layout != layout or value.device.type != device):
                            raise ValueError('Public output tensor contract changed')
                        if value.is_floating_point():
                            if vendor_final_cast is not None and value.dtype != dtype:
                                value = vendor_final_cast(value, dtype)
                            else:
                                value = value.to(dtype=dtype)
                        elif value.dtype != dtype:
                            raise ValueError('Non-floating output dtype changed')
                    result.append(value)
                return tree_unflatten(result, spec)

        tensor_model = FinalOutputCast(tensor_model).eval()
    return _CompiledPipeline(prepare, compile_model(tensor_model, fullgraph=True, **kwargs), source_precision)
