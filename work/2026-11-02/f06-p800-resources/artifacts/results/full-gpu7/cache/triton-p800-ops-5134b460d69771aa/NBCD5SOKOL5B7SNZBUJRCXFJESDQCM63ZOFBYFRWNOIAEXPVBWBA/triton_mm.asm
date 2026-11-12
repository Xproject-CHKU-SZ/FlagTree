	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/j5" "cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py"
	.loc	1 22 0                          # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4216
	addli r30, sp, 4152
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	core_id r2
	core_id r15
	loadli.w r20,  32(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:0:26
	lui r1, 1048575
	ori r1, r1, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	addli r2, zero, 2
	uni_sram_cfg r1, r1
	lui r3, 1048575
	lock zero, r2
	ew_cfg r1, zero, zero, 16
	ori r1, r3, 4095
	addli r3, zero, 3
	unlock r2
	addli r2, zero, 11
	csr_set csr3, r1
	addli r1, zero, 5
	sync_group
	xsignal r2, 0
	xsignal r2, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r1, zero, 9
	addli r3, zero, 7
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -1024(r30)
	storeli.w zero, -2048(r30)
	storeli.w zero, -3072(r30)
	storeli.w zero, -4096(r30)
	mul.s r1, r2, r1
	addli r2, r4, 0
	fmac.s r2, r1, r3
	mul.s r3, r1, r3
	addli r2, r2, -1
	div.s r2, r2, r4
	load_param_i r4, 0
	mul.s r1, r2, r4
	fmac.s r2, r2, r4
	min.s r2, r2, r3
	ble.s r2, r1, .LBB0_38
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	addli r4, r30, -4128
	loadli.w r28,  -1024(r30)
	loadli.w r26,  -2048(r30)
	loadli.w r8,  -3072(r30)
	loadli.w r25,  -4096(r30)
	sext_int2long r[23:24], r1
	addli r9, zero, 32
	addli r10, zero, 1
	addli r12, zero, 6
	addli r27, zero, 2
	addli r14, zero, 4
	addli r16, zero, 255
	lui r17, 259
	addli r18, zero, 7
	addli r13, zero, 3
	addli r21, zero, 64
	addli r22, zero, 16
	addli r11, zero, 5
	lui r19, 4
	storeli.w zero, -4100(r30)              # 4-byte Folded Spill
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r4, zero, 128
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67 is_stmt 1              # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:101:67
	addli r28, r1, 1
	.loc	1 73 26                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	addli r1, zero, 10
	.loc	1 101 67                        # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:101:67
	addli r26, r24, 1
	loadli.w r20,  32(r30)
	addli r25, r27, 1
	.loc	1 73 26                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	core_id r15
	addli r27, zero, 2
	addli r11, zero, 5
	lui r19, 4
	xsignal r1, 0
	addli r1, r30, -4112
.LBB0_6:                                # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:0:26
	load.d r[23:24], 0(r1)                  # 8-byte Folded Reload
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, r30, -4128
	addli.d r[23:24], r[23:24], 1
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	setlt.sl r1, r[23:24], r[1:2]
	loadli.w r2,  -4100(r30)                # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -4100(r30)                # 4-byte Folded Spill
	beq r1, zero, .LBB0_38
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	div.s r1, r23, r20
	loadli.w r2,  28(r30)
	.loc	1 54 50 is_stmt 1               # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:54:50
	addli r3, zero, 8
	.loc	1 73 26                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	addli r15, r30, -4120
	div.s r5, r1, r2
	.loc	1 53 22                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:53:22
	div.s r6, r5, r9
	.loc	1 54 41                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:54:41
	slli r1, r6, 3
	.loc	1 54 30 is_stmt 0               # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:54:30
	sub.s r2, r10, r1
	.loc	1 54 50                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:54:50
	min.s r7, r2, r3
	.loc	1 55 40 is_stmt 1               # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:55:40
	mod.s r2, r5, r7
	.loc	1 55 34 is_stmt 0               # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:55:34
	add.s r1, r1, r2
	.loc	1 95 15 is_stmt 1               # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:95:15
	zext_int2long r[2:3], r1
	.loc	1 73 26                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	store.d r[2:3], 0(r15)                  # 8-byte Folded Spill
	core_id r2
	bneq r2, r14, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:0:26
	beq r2, r10, .LBB0_29
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	core_id r15
	bneq r2, r27, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26                          # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:0:26
	addli r1, zero, 0
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:89:25
	add.s r2, r8, r1
	add.s r3, r25, r1
	xwait r27, 0
	xwait r11, 0
	lock zero, zero
	.loc	1 73 26                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:89:25
	ds_cfg r13, zero, 0
	.loc	1 81 20                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:81:20
	mod.s r2, r2, r16
	.loc	1 89 25                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:89:25
	mod.s r3, r3, r16
	ds_cfg r21, zero, 1
	ds_cfg r9, zero, 14
	ds_cfg r9, zero, 13
	.loc	1 81 20                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:81:20
	slli r2, r2, 12
	.loc	1 89 25                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:89:25
	slli r3, r3, 11
	.loc	1 81 20                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:81:20
	add.s r2, r2, r19
	.loc	1 89 25                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:89:25
	shuffle_batch r3, r2, r22, 1
	unlock zero
	xsignal r13, 0
	xsignal r14, 0
	bneq r1, r14, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	addli r26, r26, 4
	addli r28, r28, 4
	.loc	1 89 25                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:89:25
	add.s r25, r25, r1
	add.s r8, r8, r1
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:0:25
	addli r2, r30, -4112
	loadli.w r3,  -4100(r30)                # 4-byte Folded Reload
	slli r1, r1, 5
	addli r15, zero, 0
	addli r20, zero, 2
	addli r19, zero, 0
	store.d r[23:24], 0(r2)                 # 8-byte Folded Spill
	slli r2, r6, 5
	storeli.w r1, -4144(r30)                # 4-byte Folded Spill
	mod.s r3, r3, r27
	sub.s r2, r5, r2
	div.s r2, r2, r7
	zext_int2long r[5:6], r2
	slli r1, r2, 6
	sll.d r[5:6], r[5:6], r12
	.loc	1 73 26 is_stmt 1               # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	storeli.w r1, -4148(r30)                # 4-byte Folded Spill
	load.d r[1:2], 8(r30)
	sll.d r[6:7], r[5:6], r10
	slli r5, r3, 13
	addli r3, r30, -4136
	store.d r[6:7], 0(r3)                   # 8-byte Folded Spill
	add.ul r[6:7], r[1:2], r[6:7]
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:89:25
	addli r2, zero, 9
	xwait r12, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 8
	ds_cfg r13, zero, 0
	ds_cfg r21, zero, 1
	ds_cfg r9, zero, 14
	ds_cfg r21, zero, 13
	shuffle_coa r23, r11, r22, 2
	unlock zero
	xsignal r18, 0
	xsignal r2, 0
	.loc	1 73 26                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	addli r15, r15, 1
	beq r15, r14, .LBB0_28
.LBB0_17:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:89:25
	addli r19, r19, 1
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r1, r28, r19
	add.s r24, r26, r19
	add.s r27, r25, r19
	.loc	1 86 20                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:86:20
	mod.s r2, r1, r16
	.loc	1 89 25                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:89:25
	mod.s r3, r24, r16
	.loc	1 86 20                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:86:20
	slli r2, r2, 11
	.loc	1 89 25                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:89:25
	slli r23, r3, 12
	.loc	1 86 20                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:86:20
	add.s r11, r2, r17
	.loc	1 73 26                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	core_id r2
	beq r2, r18, .LBB0_16
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:0:26
	bneq r2, r12, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25 is_stmt 1               # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:86:25
	zext_int2long r[2:3], r15
	.loc	1 86 20 is_stmt 0               # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:86:20
	addli r23, zero, 13
	xwait r18, 0
	lock zero, r14
	dma_cfg r10, r10, zero, 0
	sll.d r[2:3], r[2:3], r23
	add.ul r[2:3], r[6:7], r[2:3]
	dma_cfg zero, r3, zero, 2
	dma_cfg r11, r2, r4, 3
	addli r2, zero, 512
	dma_cfg r4, r2, r22, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	addli r15, r15, 1
	bneq r15, r14, .LBB0_17
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:89:25
	bneq r2, r14, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:0:0
	mod.s r2, r27, r16
	.loc	1 89 25                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:89:25
	addli r3, zero, 8
	xwait r14, 0
	xwait r3, 0
	lock zero, r10
	mm_cfg r21, r22, r9, 0
	mm_cfg r10, r20, r10, 2
	.loc	1 0 0                           # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:0:0
	slli r2, r2, 11
	.loc	1 89 25                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:89:25
	beq r19, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r5, r2, r23, 5
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	addli r15, r15, 1
	bneq r15, r14, .LBB0_17
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:89:25
	mm r5, r2, r23, 5
.LBB0_26:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r2, zero, 5
	unlock r10
	.loc	1 73 26                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	addli r15, r15, 1
	.loc	1 89 25                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:89:25
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 73 26                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	bneq r15, r14, .LBB0_17
# %bb.27:                               # %.split17.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:86:20
	addli r8, r8, 4
	j .LBB0_5
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r8, r8, 4
	.loc	1 73 26                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	core_id r2
	beq r2, r14, .LBB0_5
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:0:26
	addli r5, r30, -4120
	addli r1, r30, -4112
	.loc	1 73 26                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	core_id r15
	load.d r[2:3], 0(r5)                    # 8-byte Folded Reload
	store.d r[23:24], 0(r1)                 # 8-byte Folded Spill
	addli r1, zero, 11
	sll.d r[5:6], r[2:3], r1
	addli r1, zero, 0
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 0                           # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:0:0
	add.s r7, r8, r1
	.loc	1 81 25 is_stmt 1               # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:81:25
	srl.d r[19:20], r[23:24], r12
	.loc	1 81 20 is_stmt 0               # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:81:20
	sll.d r[2:3], r[2:3], r10
	xwait r13, 0
	lock zero, r14
	.loc	1 73 26 is_stmt 1               # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	addli r1, r1, 1
	.loc	1 81 20                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:81:20
	dma_cfg r10, r10, zero, 0
	.loc	1 81 0 is_stmt 0                # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:81:0
	mod.s r7, r7, r16
	.loc	1 81 20                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:81:20
	sub.s r11, r9, r19
	load.d r[19:20], 0(r30)
	add.ul r[2:3], r[19:20], r[2:3]
	lui r19, 4
	dma_cfg zero, r3, zero, 2
	.loc	1 81 0                          # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:81:0
	slli r7, r7, 12
	add.s r7, r7, r19
	.loc	1 81 20                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:81:20
	dma_cfg r7, r2, r9, 3
	dma_cfg r4, r4, r11, 4
	dma_run zero
	unlock r14
	xsignal r27, 0
	.loc	1 73 26 is_stmt 1               # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	beq r1, r14, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:86:25
	zext_int2long r[2:3], r1
	addli r7, zero, 2047
	sll.d r[23:24], r[2:3], r14
	zext_int2long r[19:20], r7
	.loc	1 81 25                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:81:25
	add.ul r[2:3], r[23:24], r[5:6]
	setlt.ul r7, r[19:20], r[2:3]
	bneq r7, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:0:25
	addli.d r[23:24], r[2:3], 0
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 89 25 is_stmt 1               # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:89:25
	add.s r8, r8, r1
	addli r1, r30, -4112
	loadli.w r20,  32(r30)
	.loc	1 73 26                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	addli r25, r25, 4
	addli r26, r26, 4
	addli r28, r28, 4
	addli r11, zero, 5
	j .LBB0_6
.LBB0_34:                               # %.split17.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:86:20
	addli r8, r8, 4
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:0:20
	loadli.w r20,  32(r30)
	.loc	1 101 67 is_stmt 1              # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:101:67
	addli r25, r27, 1
	addli r26, r24, 1
	addli r28, r1, 1
	.loc	1 73 26                         # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:73:26
	core_id r15
	addli r11, zero, 5
	lui r19, 4
	bneq r2, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:101:67
	loadli.w r1,  -4148(r30)                # 4-byte Folded Reload
	addli r3, zero, 192
	zext_int2long r[23:24], zero
	addli r11, zero, 5
	zext_int2long r[6:7], r3
	loadli.w r3,  -4144(r30)                # 4-byte Folded Reload
	zext_int2long r[1:2], r1
	min.ul r[6:7], r[1:2], r[6:7]
	sext_int2long r[19:20], r3
	addli r3, r30, -4144
	addli.d r[6:7], r[6:7], 64
	min.sl r[23:24], r[19:20], r[23:24]
	max.ul r[6:7], r[6:7], r[1:2]
	sub.sl r[1:2], r[6:7], r[1:2]
	addli.d r[6:7], r[23:24], 32
	zext_int2long r[23:24], r21
	max.sl r[6:7], r[6:7], r[19:20]
	min.ul r[1:2], r[1:2], r[23:24]
	zext_int2long r[23:24], r9
	sub.sl r[6:7], r[6:7], r[19:20]
	addli r19, r30, -4120
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r3, zero, 14
	load.d r[1:2], 0(r19)                   # 8-byte Folded Reload
	min.sl r[6:7], r[6:7], r[23:24]
	sll.d r[19:20], r[1:2], r3
	load.d r[1:2], 16(r30)
	addli r3, r30, -4136
	add.ul r[19:20], r[1:2], r[19:20]
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	addli r3, zero, 10
	xwait r3, 0
	lock zero, r11
	addli r3, r30, -4144
	addli r11, zero, 5
	dma_cfg r10, zero, zero, 0
	add.ul r[19:20], r[19:20], r[1:2]
	dma_cfg zero, r10, zero, 1
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	dma_cfg r20, zero, zero, 2
	slli r1, r1, 2
	addli r2, zero, 512
	dma_cfg r19, r5, r1, 3
	addli r1, zero, 256
	loadli.w r20,  32(r30)
	lui r19, 4
	dma_cfg r2, r1, r6, 4
	addli r1, zero, 11
	dma_run zero
	unlock r11
	xsignal r1, 0
.LBB0_37:                               # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:0:67
	addli r1, r30, -4112
	addli r27, zero, 2
	j .LBB0_6
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:22:0
	xsignal zero, 0
	bneq r15, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:22:0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	lock zero, r1
	ew_cfg zero, zero, zero, 16
	unlock r1
	xsignal_mode_cfg zero
.LBB0_40:
	.loc	1 22 0 epilogue_begin           # cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py:22:0
	addli sp, sp, 4152
	mfence { lm, sm, gm }
	exit
.Ltmp1:
.Lfunc_end0:
	.size	triton_mm, .Lfunc_end0-triton_mm
	.cfi_endproc
                                        # -- End function
	.type	XPU_KERNEL_PARAM_SIZE_triton_mm,@object # @XPU_KERNEL_PARAM_SIZE_triton_mm
	.section	.XPU.KERNEL_PARAM_SIZE.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE_triton_mm:
	.long	36                              # 0x24
	.size	XPU_KERNEL_PARAM_SIZE_triton_mm, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_mm,@object # @XPU_KERNEL_STACK_SIZE_triton_mm
	.section	.XPU.KERNEL_STACK_SIZE.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_mm:
	.long	4216                            # 0x1078
	.size	XPU_KERNEL_STACK_SIZE_triton_mm, 4

	.type	XPU_KERNEL_DYNAMIC_LM_triton_mm,@object # @XPU_KERNEL_DYNAMIC_LM_triton_mm
	.section	.XPU.KERNEL_DYNAMIC_LM.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM_triton_mm:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM_triton_mm, 4

	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	0                               # DW_CHILDREN_no
	.byte	37                              # DW_AT_producer
	.byte	14                              # DW_FORM_strp
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	14                              # DW_FORM_strp
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	4                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x1b DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	2                               # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"cj5xwpxim35wsyc3oq6ydmsvgqcsvy54plsu5arzyv233yhxxim5.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/j5" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
