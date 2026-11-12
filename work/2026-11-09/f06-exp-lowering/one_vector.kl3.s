	.text
	.file	"one_vector.ll"
	.section	.text.one_vector,"ax",@progbits
	.globl	one_vector                      # -- Begin function one_vector
	.type	one_vector,@function
one_vector:                             # @one_vector
	.cfi_startproc
# %bb.0:                                # %entry
	vload_mask16.mz vr0{mr1}, 0(r3)
	addli r5, zero, 1
	vxor.u.mz vr1{mr1}, vr1, vr1
	vmmov mr2, r5
	addli r5, zero, 2
	vextracti.f r1, 0(vr0)
	vextracti.f r3, 1(vr0)
	vextracti.f r4, 2(vr0)
	exp.f.rn r1, r1
	exp.f.rn r3, r3
	vor.u.mh vr1{mr2}, r1, vr1
	exp.f.rn r1, r4
	vextracti.f r4, 3(vr0)
	vmmov mr2, r5
	addli r5, zero, 4
	vor.u.mh vr1{mr2}, r3, vr1
	exp.f.rn r3, r4
	vextracti.f r4, 4(vr0)
	vmmov mr2, r5
	addli r5, zero, 8
	vor.u.mh vr1{mr2}, r1, vr1
	exp.f.rn r1, r4
	vextracti.f r4, 5(vr0)
	vmmov mr2, r5
	addli r5, zero, 16
	vor.u.mh vr1{mr2}, r3, vr1
	exp.f.rn r3, r4
	vextracti.f r4, 6(vr0)
	vmmov mr2, r5
	addli r5, zero, 32
	vor.u.mh vr1{mr2}, r1, vr1
	exp.f.rn r1, r4
	vextracti.f r4, 7(vr0)
	vmmov mr2, r5
	addli r5, zero, 64
	vor.u.mh vr1{mr2}, r3, vr1
	exp.f.rn r3, r4
	vextracti.f r4, 8(vr0)
	vmmov mr2, r5
	addli r5, zero, 128
	vor.u.mh vr1{mr2}, r1, vr1
	exp.f.rn r1, r4
	vextracti.f r4, 9(vr0)
	vmmov mr2, r5
	addli r5, zero, 256
	vor.u.mh vr1{mr2}, r3, vr1
	exp.f.rn r3, r4
	vextracti.f r4, 10(vr0)
	vmmov mr2, r5
	addli r5, zero, 512
	vor.u.mh vr1{mr2}, r1, vr1
	exp.f.rn r1, r4
	vextracti.f r4, 11(vr0)
	vmmov mr2, r5
	addli r5, zero, 1024
	vor.u.mh vr1{mr2}, r3, vr1
	exp.f.rn r3, r4
	vextracti.f r4, 12(vr0)
	vmmov mr2, r5
	addli r5, zero, 2048
	vor.u.mh vr1{mr2}, r1, vr1
	exp.f.rn r1, r4
	vextracti.f r4, 13(vr0)
	vmmov mr2, r5
	addli r5, zero, 4096
	vor.u.mh vr1{mr2}, r3, vr1
	exp.f.rn r3, r4
	vextracti.f r4, 14(vr0)
	vmmov mr2, r5
	addli r5, zero, 8192
	vor.u.mh vr1{mr2}, r1, vr1
	exp.f.rn r1, r4
	vextracti.f r4, 15(vr0)
	vmmov mr2, r5
	vor.u.mh vr1{mr2}, r3, vr1
	exp.f.rn r3, r4
	lui r4, 4
	vmmov mr2, r4
	vor.u.mh vr1{mr2}, r1, vr1
	lui r1, 8
	vmmov mr2, r1
	vor.u.mh vr1{mr2}, r3, vr1
	vstore_mask16.mz vr1{mr1}, 0(r2)
	jr r31, 0
.Lfunc_end0:
	.size	one_vector, .Lfunc_end0-one_vector
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
