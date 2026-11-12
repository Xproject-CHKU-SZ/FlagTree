	.text
	.file	"natural.ll"
	.section	.text.one_vector,"ax",@progbits
	.globl	one_vector                      # -- Begin function one_vector
	.type	one_vector,@function
one_vector:                             # @one_vector
	.cfi_startproc
# %bb.0:                                # %entry
	addli sp, sp, -320
	vload_mask16.mz vr0{mr1}, 0(r3)
	storeli.w r30, 316(sp)                  # 4-byte Folded Spill
	addli r30, sp, 320
	storeli.w r31, 312(sp)                  # 4-byte Folded Spill
	addli r1, r30, -320
	vstore_mask16.mz vr0{mr1}, -320(r30)
	#APP
	mfence { lm }
	loadli.w r3,  0(r1)
	loadli.w r4,  4(r1)
	loadli.w r5,  8(r1)
	loadli.w r6,  12(r1)
	loadli.w r7,  16(r1)
	loadli.w r8,  20(r1)
	loadli.w r9,  24(r1)
	loadli.w r10,  28(r1)
	loadli.w r11,  32(r1)
	loadli.w r12,  36(r1)
	loadli.w r13,  40(r1)
	loadli.w r14,  44(r1)
	loadli.w r15,  48(r1)
	loadli.w r16,  52(r1)
	loadli.w r17,  56(r1)
	loadli.w r18,  60(r1)
	exp.f.rn r3, r3
	exp.f.rn r4, r4
	exp.f.rn r5, r5
	exp.f.rn r6, r6
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r13, r13
	exp.f.rn r14, r14
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r17, r17
	exp.f.rn r18, r18
	storeli.w r3, 0(r1)
	storeli.w r4, 4(r1)
	storeli.w r5, 8(r1)
	storeli.w r6, 12(r1)
	storeli.w r7, 16(r1)
	storeli.w r8, 20(r1)
	storeli.w r9, 24(r1)
	storeli.w r10, 28(r1)
	storeli.w r11, 32(r1)
	storeli.w r12, 36(r1)
	storeli.w r13, 40(r1)
	storeli.w r14, 44(r1)
	storeli.w r15, 48(r1)
	storeli.w r16, 52(r1)
	storeli.w r17, 56(r1)
	storeli.w r18, 60(r1)
	mfence { lm }
	#NO_APP
	vload_mask16.mz vr0{mr1}, -320(r30)
	vstore_mask16.mz vr0{mr1}, 0(r2)
	addli sp, r30, -320
	loadli.w r31,  312(sp)                  # 4-byte Folded Reload
	loadli.w r30,  316(sp)                  # 4-byte Folded Reload
	addli sp, sp, 320
	jr r31, 0
.Lfunc_end0:
	.size	one_vector, .Lfunc_end0-one_vector
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
