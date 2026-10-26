"""Actual FlagTree PPU indexed rotary Mul. No cat, copy, ATen out, or input write."""
import inspect
import triton
import triton.language as tl
from rotary_contracts import constants, require, sha, validate_destination


@triton.jit
def _indexed_mul(X, S, Y, N: tl.constexpr, HEADS: tl.constexpr, TOKENS: tl.constexpr,
                 D: tl.constexpr, XB: tl.constexpr, XH: tl.constexpr, XT: tl.constexpr,
                 XD: tl.constexpr, SB: tl.constexpr, SH: tl.constexpr, ST: tl.constexpr,
                 SD: tl.constexpr, BLOCK: tl.constexpr):
    index = tl.program_id(0)*BLOCK + tl.arange(0, BLOCK)
    lane = index % D
    token = index // D % TOKENS
    head = index // (D*TOKENS) % HEADS
    batch = index // (D*TOKENS*HEADS)
    # Logical rotate_half([-right, left]), but read the ORIGINAL strided x.
    rotated_lane = tl.where(lane < D//2, lane+D//2, lane-D//2)
    x = tl.load(X+batch*XB+head*XH+token*XT+rotated_lane*XD, index < N, other=0).to(tl.float32)
    scale = tl.load(S+batch*SB+head*SH+token*ST+lane*SD, index < N, other=0).to(tl.float32)
    # Preserve neg -> multiplication order; no add fusion or lower precision.
    rotated = tl.where(lane < D//2, -x, x)
    tl.store(Y+index, rotated*scale, index < N)


def describe(tensor):
    storage = tensor.untyped_storage()
    return {'dtype': str(tensor.dtype).removeprefix('torch.'), 'shape': list(tensor.shape),
            'stride': list(tensor.stride()), 'byte_offset': tensor.storage_offset()*tensor.element_size(),
            'device': str(tensor.device), 'storage_nbytes': storage.nbytes(),
            'storage_pointer': storage.data_ptr()}


def compile_call(x, scale, directory):
    """Compile outside timing; returned closure retains code/metadata, no Tensors."""
    import torch
    from triton.backends import get_backend
    from triton.runtime import driver
    require(x.device.type == 'cuda' and scale.device == x.device, 'requires masked PPU tensors')
    expected_x, expected_s = describe(x), describe(scale)
    values = constants(expected_x, expected_s)
    shape, device = tuple(x.shape), x.device
    backend = get_backend(driver.active.get_current_target()).compiler(driver.active.get_current_target())
    require(backend.binary_ext == 'hgbin' and '.ppu.' in type(backend).__module__, 'not FlagTree PPU/hgbin')
    out = torch.empty(shape, dtype=torch.float32, device=device)
    validate_destination(expected_x, expected_s, describe(out))
    grid = (triton.cdiv(values[0], values[-1]), 1, 1)
    compiled = _indexed_mul.warmup(x, scale, out, *values, grid=grid,
                                  num_warps=4, enable_fp_fusion=False)
    directory.mkdir(parents=True, exist_ok=False)
    stages = {}
    for stage in ('ttir', 'ttgir', 'llir', 'hgbin'):
        data = compiled.asm.get(stage)
        require(bool(data), 'missing compilation stage: '+stage)
        path = directory/('rotary.'+stage)
        path.write_bytes(data if isinstance(data, bytes) else data.encode())
        stages[stage] = {'file': str(path), 'sha256': sha(path), 'bytes': path.stat().st_size}
    # Complete host signature: all 13 constexpr slots are passed, not only X/S/Y.
    compiled[grid](x, scale, out, *values)
    torch.cuda.synchronize()
    require(getattr(compiled, 'function', None) is not None, 'no loaded PPU function')
    evidence = {'kernel_hash': compiled.hash, 'kernel_name': compiled.name, 'stages': stages,
        'compiler_class': type(backend).__module__+'.'+type(backend).__name__,
        'compiler_source_sha256': sha(inspect.getfile(type(backend))), 'binary_ext': 'hgbin',
        'actual_launch_synchronized': True, 'constexpr_values': values, 'source_layout': expected_x,
        'scale_layout': expected_s, 'num_warps': 4, 'enable_fp_fusion': False,
        'operation': 'rotate_half indexed read then fp32 Mul; independent dense output'}

    def call(source, factor, dest):
        a, b, y = describe(source), describe(factor), describe(dest)
        require(source.device == factor.device == dest.device == device
                and constants(a,b) == values and tuple(source.shape) == shape
                and b['shape'] == expected_s['shape'] and b['stride'] == expected_s['stride']
                and a['byte_offset'] == expected_x['byte_offset']
                and b['byte_offset'] == expected_s['byte_offset'], 'rotary runtime layout changed')
        validate_destination(a,b,y)
        compiled[grid](source, factor, dest, *values)
        return dest
    return call, evidence
