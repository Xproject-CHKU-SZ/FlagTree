from transfer_common import *
import subprocess


def build_native(tile,resource,out):
    import triton
    from triton.backends.xpu.compiler import XPUBackend
    from triton.backends import llvm19_toolchain
    target=triton.runtime.driver.active.get_current_target()
    backend=XPUBackend(target)
    options=backend.parse_options({'is_sdnn':resource=='sdnn'})
    tool_dir=Path(backend.path_to_xpu_compile_tool(options))
    clang=tool_dir/'clang'
    assert clang.is_file(),clang
    env=llvm19_toolchain.llvm19_env('xpu')
    base=out/f'native-{resource}-{tile}';base.mkdir(exist_ok=True)
    args=[str(clang),'--xpu-arch=xpu3','--xpu-device-only','-O3',f'-DTILE={tile}',
          f'-DSDNN={int(resource=="sdnn")}',str(ROOT/'native_transfer.xpu')]
    if resource=='sdnn':args+=['-Xclang','-target-feature','-Xclang','-bigcore','-Xclang','-target-feature','-Xclang','+cdnn3']
    for flags,name in [(['-c'],'kernel.o'),(['-S'],'kernel.s'),(['-S','-emit-llvm'],'kernel.ll')]:
        p=subprocess.run(args+flags+['-o',str(base/name)],env=env,capture_output=True,text=True,timeout=60)
        (base/(name+'.compile.log')).write_text(p.stdout+p.stderr)
        p.check_returncode()
    p=subprocess.run([str(tool_dir/'xpu3-elfconv-triton'),str(base/'kernel.o'),str(base/'kernel.bin'),str(tool_dir)],
                     env=env,capture_output=True,text=True,timeout=60)
    (base/'link.log').write_text(p.stdout+p.stderr);p.check_returncode()
    blob=(base/'kernel.bin').read_bytes()
    assert blob
    return blob,base


def native_function(blob,resource,x,y,metrics,nbytes,repeats,mode,clusters=12):
    import torch
    import triton
    import triton.language as tl

    @triton.jit(do_not_specialize=['nbytes','repeats','mode'])
    def abi_stub(X,Y,M,nbytes,repeats,mode):
        tl.store(Y,tl.load(X))
        tl.store(M,tl.full((),0,tl.int64))

    k=abi_stub.warmup(x,y,metrics,nbytes,repeats,mode,grid=(1,),is_sdnn=resource=='sdnn')
    k._init_handles()
    loaded=triton.runtime.driver.active.utils.load_binary('native_transfer',blob,int(resource=='sdnn'),0)
    k.function=loaded[1]
    def run():
        return k[(clusters,1,1)](x,y,metrics,nbytes,repeats,mode)
    # Keep binary storage alive for the vendor function object.
    run.blob=blob;run.kernel=k;run.native_handle=loaded
    return run


def inspect_metrics(metrics,nbytes,repeats,resource):
    rows=metrics.cpu().tolist()
    units=12 if resource=='sdnn' else 768
    assert len(rows)>=units
    rows=rows[:units]
    assert [r[3] for r in rows]==list(range(units)),rows[:16]
    assert all(r[4]==units for r in rows)
    active=[r for r in rows if r[2]>0]
    assert sum(r[2] for r in active)==nbytes*repeats,(nbytes,repeats,sum(r[2] for r in active))
    assert all(r[1]>r[0] and r[7]==repeats for r in active)
    return dict(active_units=len(active),span_ticks=max(r[1] for r in active)-min(r[0] for r in active),
                max_unit_ticks=max(r[1]-r[0] for r in active),rows=rows)
