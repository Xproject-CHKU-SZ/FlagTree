"""One complete-output precision contract for graph and model route admission."""
from collections.abc import Mapping

import torch
from torch.utils._pytree import tree_flatten

from ._resource_benchmark import assert_close


def _leaf_paths(spec, prefix='output'):
    """Label the existing tree without requiring a separate keyed flattener.

    Transformers ModelOutput registers ordinary PyTree flattening, but some
    versions do not register flatten_with_keys_fn. Labels must not reject an
    otherwise supported public output type or change its flattening contract.
    """
    if spec.is_leaf():
        return [prefix]
    keys = range(len(spec.children_specs))
    if (isinstance(spec.type, type) and issubclass(spec.type, Mapping)
            and isinstance(spec.context, (tuple, list))
            and len(spec.context) == len(spec.children_specs)):
        keys = spec.context
    return [path for key, child in zip(keys, spec.children_specs)
            for path in _leaf_paths(child, prefix+'['+repr(key)+']')]


def compare_model_outputs(actual, reference, tolerance, *, output_template=None,
                          allow_boxed_sequence=False, records=None):
    """Check every output leaf against FP32, allowing only the final dtype cast.

    A public output template additionally fixes structure, dtype, device and
    layout. AOT's outer list/tuple convention is allowed only for graph calls.
    Records describe all leaves, even when one fails; they are never timed.
    """
    if allow_boxed_sequence and isinstance(actual, (tuple, list)) and isinstance(reference, (tuple, list)):
        actual, reference = tuple(actual), tuple(reference)
    leaves, structure = tree_flatten(actual)
    expected, expected_structure = tree_flatten(reference)
    if structure != expected_structure:
        raise AssertionError('whole-model output structure changed')
    templates = None
    if output_template is not None:
        templates, template_structure = tree_flatten(output_template)
        if structure != template_structure:
            raise AssertionError('public model output structure changed')
    failures = []
    for index, (path, value, want) in enumerate(zip(_leaf_paths(structure), leaves, expected)):
        row = dict(path=path, passed=False)
        try:
            if isinstance(want, torch.Tensor):
                if not isinstance(value, torch.Tensor):
                    raise AssertionError('tensor output replaced by a non-tensor')
                if value.shape != want.shape or value.layout != want.layout:
                    raise AssertionError('output shape or layout changed')
                if templates is not None:
                    template = templates[index]
                    if not isinstance(template, torch.Tensor) or (
                            value.shape, value.dtype, value.device, value.layout) != (
                            template.shape, template.dtype, template.device, template.layout):
                        raise AssertionError('public output dtype, shape, device or layout changed')
                row.update(shape=list(value.shape), actual_dtype=str(value.dtype),
                           reference_dtype=str(want.dtype), elements=value.numel())
                if value.is_floating_point():
                    # Sparse outputs are analyzed densely, preserving the public
                    # tensors and their layout. The same final-cast gate applies.
                    got = value.to_dense() if value.layout != torch.strided else value
                    ref = want.to_dense() if want.layout != torch.strided else want
                    if records is not None:
                        x, y = got.detach().float().cpu(), ref.detach().float().cpu()
                        finite = x.isfinite() & y.isfinite()
                        error = (x[finite]-y[finite]).abs()
                        bound = tolerance['atol']+tolerance['rtol']*y[finite].abs()
                        row.update(max_finite_absolute_error=error.max().item() if error.numel() else 0.0,
                                   elements_outside_uncast_tolerance=int((error>bound).sum().item()),
                                   comparison='FP32 reference with one final output cast')
                    assert_close(got, ref, tolerance, output_dtype=value.dtype)
                else:
                    torch.testing.assert_close(value.detach().cpu(), want.detach().cpu(), rtol=0, atol=0)
            elif type(value) is not type(want) or value != want:
                raise AssertionError('non-tensor output changed')
            row['passed'] = True
        except AssertionError as error:
            row['error'] = str(error)
            failures.append(row['path']+': '+str(error))
        if records is not None:
            records.append(row)
    if failures:
        raise AssertionError('Complete output validation failed: '+'; '.join(failures))
