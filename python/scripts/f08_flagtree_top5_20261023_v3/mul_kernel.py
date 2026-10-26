"""Real FlagTree PPU external-destination FP32 multiply; no SiLU fusion."""
import inspect
import triton
import triton.language as tl


# 【真实 FlagTree kernel】只算逐元素 X*U；SiLU 仍在模型原路径执行。
# out/inplace 共用这段代码，内存优化来自调用方选择 Y，不是另一条数学公式。
@triton.jit
def _multiply(X, U, Y, N: tl.constexpr, BLOCK: tl.constexpr):
    index = tl.program_id(0)*BLOCK + tl.arange(0, BLOCK)
    # dense 布局下每个有效 lane 只读/写自己的元素；先加载两个输入再存输出。
    # 这支持已审计的完全同址目标，不代表支持任意错位重叠 view；图级别名仍须 G03 检查。
    x = tl.load(X+index, index < N, other=0).to(tl.float32)
    u = tl.load(U+index, index < N, other=0).to(tl.float32)
    tl.store(Y+index, x*u, index < N)


def compile_call(x, directory):
    import torch
    from support import require, sha
    from triton.backends import get_backend
    from triton.runtime import driver
    require(x.dtype == torch.float32 and x.device.type == 'cuda' and x.is_contiguous()
            and x.storage_offset() == 0 and x.numel() > 0, 'unsupported multiply input')
    # torch 的 cuda 兼容设备名不能证明编译器来源；还须核对 PPU backend 与 hgbin。
    backend = get_backend(driver.active.get_current_target()).compiler(driver.active.get_current_target())
    require(backend.binary_ext == 'hgbin' and '.ppu.' in type(backend).__module__, 'not FlagTree PPU backend')
    n, block, shape, device = x.numel(), 256, tuple(x.shape), x.device
    u, out = torch.zeros_like(x), torch.empty_like(x)
    grid = (triton.cdiv(n, block), 1, 1)
    compiled = _multiply.warmup(x, u, out, n, BLOCK=block, grid=grid,
                                  num_warps=4, enable_fp_fusion=False)
    # 保存四阶段产物说明确实经过编译链；下面真实 launch+sync 才补足执行证据。
    directory.mkdir(parents=True, exist_ok=False)
    stages = {}
    for stage in ('ttir','ttgir','llir','hgbin'):
        value = compiled.asm.get(stage)
        require(bool(value), 'missing compiled stage '+stage)
        path = directory/('multiply.'+stage)
        path.write_bytes(value if isinstance(value,bytes) else value.encode())
        stages[stage] = {'file':str(path), 'sha256':sha(path), 'bytes':path.stat().st_size}
    # Complete source signature, including constexpr N and BLOCK: no old 18/15 bug.
    compiled[grid](x, u, out, n, block)
    torch.cuda.synchronize()
    require(getattr(compiled,'function',None) is not None, 'compiled runtime function not loaded')
    evidence = {'kernel_hash':compiled.hash, 'kernel_name':compiled.name, 'stages':stages,
                'compiler_class':type(backend).__module__+'.'+type(backend).__name__,
                'compiler_source_sha256':sha(inspect.getfile(type(backend))), 'binary_ext':'hgbin',
                'actual_launch_synchronized':True, 'numel':n, 'operation':'multiply'}
    def call(left, right, dest):
        # 热路径只接受编译时约定的布局，不隐式分配目标、不做 ATen out= 或结果回拷。
        # 闭包仅绑定 compiled/grid/形状等，不应持有编译探针 Tensor。
        for tensor in (left,right,dest):
            require(tensor.dtype == torch.float32 and tensor.device == device and
                    tuple(tensor.shape) == shape and tensor.is_contiguous() and tensor.storage_offset() == 0,
                    'multiply runtime binding mismatch')
        compiled[grid](left, right, dest, n, block)
        # 目标由执行器提供：独立输出或合法同址。这里不加逐节点全局同步。
        return dest
    return call, evidence
