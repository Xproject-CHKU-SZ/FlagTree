"""Label the original v47 FP32 checks in the SDK trace, outside calibration timing."""
import contextlib
import os
from unittest.mock import patch


@contextlib.contextmanager
def trace_admission(case, candidates, root, phase):
    observed = {}
    if not candidates:
        yield observed
        return

    from triton.experimental.graph_fusion import _p800_shared_fp32 as shared, _resource_autotune as tuning
    compile_candidate, verify = tuning.compile_candidate, shared._verify_fp32_probes
    pending = {}
    directory = root / (case + '-machine')
    directory.mkdir(exist_ok=True)

    def identify(graph, inputs, plan):
        fn, proof = compile_candidate(graph, inputs, plan)
        if plan.name in candidates:
            pending[id(fn)] = plan.name
        return fn, proof

    def labeled(fn, probes, tolerance):
        name = pending.pop(id(fn), None)
        if name is None:
            return verify(fn, probes, tolerance)
        outcome = {'probe_count': len(probes)}
        observed[name] = outcome
        phase((case + '.gate_' + name).encode())
        try:
            result = verify(fn, probes, tolerance)
        except Exception as error:
            outcome.update(status='rejected', error=str(error))
            raise
        else:
            outcome['status'] = 'passed'
            return result
        finally:
            phase(b'')

    previous = os.environ.get('F06_MACHINE_DIR')
    os.environ['F06_MACHINE_DIR'] = str(directory)
    try:
        with patch.object(tuning, 'compile_candidate', identify), patch.object(shared, '_verify_fp32_probes', labeled):
            yield observed
    finally:
        if previous is None:
            os.environ.pop('F06_MACHINE_DIR', None)
        else:
            os.environ['F06_MACHINE_DIR'] = previous
