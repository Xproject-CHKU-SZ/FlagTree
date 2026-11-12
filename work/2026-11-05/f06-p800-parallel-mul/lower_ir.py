exec(open(__file__.replace('lower_ir.py','parse_ir.py')).read().split('for p in (root/')[0])
from triton._C.libtriton import passes
count=0
for p in (root/'offline-ir').glob('*.mlir'):
 new=ir.parse_mlir_module(str(p),ctx);new.context=ctx
 pm=ir.pass_manager(ctx);passes.convert.add_scf_to_cf(pm);xpu.passes.ttsdnnir.add_convert_tritonsdnn_to_llvm_pass(pm,3);passes.common.add_canonicalizer(pm);passes.common.add_cse(pm);xpu.passes.llvmxpuir.insert_mfence_check(pm);pm.run(new,'check_parallel_lowering');assert new.verify();count+=1
print('native LLVM lowering verified',count)
