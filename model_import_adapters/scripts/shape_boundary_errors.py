"""Recognize an explicit expected PT2 input-bound rejection, not arbitrary failures."""


def is_expected_pt2_bound_rejection(error_type, message, *, input_name, axis, relation, bound, actual):
    """Handle eager guards and their Dynamo wrappers without accepting OOM/errors.

    Metadata identifies the deliberately violated dimension. Unknown exception
    forms remain unclassified, so a diagnostic never turns any failure green.
    """
    if (relation not in {"<=", ">="} or type(axis) is not int or axis < 0
            or type(bound) is not int or type(actual) is not int
            or not isinstance(input_name, str) or not input_name
            or not isinstance(message, str)):
        return False
    if not (actual > bound if relation == "<=" else actual < bound):
        return False
    guard = f"Guard failed: {input_name}.size()[{axis}] {relation} {bound}"
    if error_type == "AssertionError":
        return message == guard
    if error_type == "TorchRuntimeError":
        # A printed FX node can contain a guard literal even when another
        # exception actually failed. Require the *inner* AssertionError too.
        return f"got AssertionError({guard!r})" in message
    if error_type == "RuntimeError":
        return (message.startswith("Expected input at ")
                and f".shape[{axis}]" in message
                and f"to be {relation} {bound}, but got {actual}" in message)
    return False
