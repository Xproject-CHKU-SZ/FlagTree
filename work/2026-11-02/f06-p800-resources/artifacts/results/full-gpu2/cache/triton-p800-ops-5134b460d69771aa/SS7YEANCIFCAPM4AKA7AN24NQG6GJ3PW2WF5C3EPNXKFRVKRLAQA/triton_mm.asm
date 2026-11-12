	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/division-jjzrf8xb" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2552
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r14
	addli r30, sp, 2488
	xsignal_mode_cfg r1
	beq r14, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	uni_sram_cfg r1, r1
	lui r3, 1048575
	lock zero, r2
	ew_cfg r1, zero, zero, 16
	ori r1, r3, 4095
	unlock r2
	addli r2, zero, 11
	csr_set csr3, r1
	addli r1, zero, 13
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 5
	addli r2, zero, 3
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 9
	addli r2, zero, 7
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	.loc	1 32 10 is_stmt 1               # parallel-rne.mlir:32:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 31 10                         # parallel-rne.mlir:31:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w zero, -500(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -1144(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -1644(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -2416(r30)
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	mul.s r1, r2, r1
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r3, r1, r3
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r2, -1
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	div.s r2, r2, r4
	ori r4, r5, 4095
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w r4, -496(r30)
	storeli.w r4, -492(r30)
	storeli.w r4, -488(r30)
	storeli.w r4, -484(r30)
	storeli.w r4, -480(r30)
	storeli.w r4, -476(r30)
	storeli.w r4, -472(r30)
	storeli.w r4, -468(r30)
	storeli.w r4, -464(r30)
	storeli.w r4, -460(r30)
	storeli.w r4, -456(r30)
	storeli.w r4, -452(r30)
	storeli.w r4, -448(r30)
	storeli.w r4, -444(r30)
	storeli.w r4, -440(r30)
	storeli.w r4, -436(r30)
	storeli.w r4, -432(r30)
	storeli.w r4, -428(r30)
	storeli.w r4, -424(r30)
	storeli.w r4, -420(r30)
	storeli.w r4, -416(r30)
	storeli.w r4, -412(r30)
	storeli.w r4, -408(r30)
	storeli.w r4, -404(r30)
	storeli.w r4, -400(r30)
	storeli.w r4, -396(r30)
	storeli.w r4, -392(r30)
	storeli.w r4, -388(r30)
	storeli.w r4, -384(r30)
	storeli.w r4, -380(r30)
	storeli.w r4, -376(r30)
	storeli.w r4, -372(r30)
	storeli.w r4, -368(r30)
	storeli.w r4, -364(r30)
	storeli.w r4, -360(r30)
	storeli.w r4, -356(r30)
	storeli.w r4, -352(r30)
	storeli.w r4, -348(r30)
	storeli.w r4, -344(r30)
	storeli.w r4, -340(r30)
	storeli.w r4, -336(r30)
	storeli.w r4, -332(r30)
	storeli.w r4, -328(r30)
	storeli.w r4, -324(r30)
	storeli.w r4, -320(r30)
	storeli.w r4, -316(r30)
	storeli.w r4, -312(r30)
	storeli.w r4, -308(r30)
	storeli.w r4, -304(r30)
	storeli.w r4, -300(r30)
	storeli.w r4, -296(r30)
	storeli.w r4, -292(r30)
	storeli.w r4, -288(r30)
	storeli.w r4, -284(r30)
	storeli.w r4, -280(r30)
	storeli.w r4, -276(r30)
	storeli.w r4, -272(r30)
	storeli.w r4, -268(r30)
	storeli.w r4, -264(r30)
	storeli.w r4, -260(r30)
	storeli.w r4, -256(r30)
	storeli.w r4, -252(r30)
	storeli.w r4, -248(r30)
	storeli.w r4, -244(r30)
	storeli.w r4, -240(r30)
	storeli.w r4, -236(r30)
	storeli.w r4, -232(r30)
	storeli.w r4, -228(r30)
	storeli.w r4, -224(r30)
	storeli.w r4, -220(r30)
	storeli.w r4, -216(r30)
	storeli.w r4, -212(r30)
	storeli.w r4, -208(r30)
	storeli.w r4, -204(r30)
	storeli.w r4, -200(r30)
	storeli.w r4, -196(r30)
	storeli.w r4, -192(r30)
	storeli.w r4, -188(r30)
	storeli.w r4, -184(r30)
	storeli.w r4, -180(r30)
	storeli.w r4, -176(r30)
	storeli.w r4, -172(r30)
	storeli.w r4, -168(r30)
	storeli.w r4, -164(r30)
	storeli.w r4, -160(r30)
	storeli.w r4, -156(r30)
	storeli.w r4, -152(r30)
	storeli.w r4, -148(r30)
	storeli.w r4, -144(r30)
	storeli.w r4, -140(r30)
	storeli.w r4, -136(r30)
	storeli.w r4, -132(r30)
	storeli.w r4, -128(r30)
	storeli.w r4, -124(r30)
	storeli.w r4, -120(r30)
	storeli.w r4, -116(r30)
	storeli.w r4, -112(r30)
	storeli.w r4, -108(r30)
	storeli.w r4, -104(r30)
	storeli.w r4, -100(r30)
	storeli.w r4, -96(r30)
	storeli.w r4, -92(r30)
	storeli.w r4, -88(r30)
	storeli.w r4, -84(r30)
	storeli.w r4, -80(r30)
	storeli.w r4, -76(r30)
	storeli.w r4, -72(r30)
	storeli.w r4, -68(r30)
	storeli.w r4, -64(r30)
	storeli.w r4, -60(r30)
	storeli.w r4, -56(r30)
	storeli.w r4, -52(r30)
	storeli.w r4, -48(r30)
	storeli.w r4, -44(r30)
	storeli.w r4, -40(r30)
	storeli.w r4, -36(r30)
	storeli.w r4, -32(r30)
	storeli.w r4, -28(r30)
	storeli.w r4, -24(r30)
	storeli.w r4, -20(r30)
	storeli.w r4, -16(r30)
	storeli.w r4, -12(r30)
	storeli.w r4, -8(r30)
	storeli.w r4, -4(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w r4, -1140(r30)
	storeli.w r4, -1136(r30)
	storeli.w r4, -1132(r30)
	storeli.w r4, -1128(r30)
	storeli.w r4, -1124(r30)
	storeli.w r4, -1120(r30)
	storeli.w r4, -1116(r30)
	storeli.w r4, -1112(r30)
	storeli.w r4, -1108(r30)
	storeli.w r4, -1104(r30)
	storeli.w r4, -1100(r30)
	storeli.w r4, -1096(r30)
	storeli.w r4, -1092(r30)
	storeli.w r4, -1088(r30)
	storeli.w r4, -1084(r30)
	storeli.w r4, -1080(r30)
	storeli.w r4, -1076(r30)
	storeli.w r4, -1072(r30)
	storeli.w r4, -1068(r30)
	storeli.w r4, -1064(r30)
	storeli.w r4, -1060(r30)
	storeli.w r4, -1056(r30)
	storeli.w r4, -1052(r30)
	storeli.w r4, -1048(r30)
	storeli.w r4, -1044(r30)
	storeli.w r4, -1040(r30)
	storeli.w r4, -1036(r30)
	storeli.w r4, -1032(r30)
	storeli.w r4, -1028(r30)
	storeli.w r4, -1024(r30)
	storeli.w r4, -1020(r30)
	storeli.w r4, -1016(r30)
	storeli.w r4, -1012(r30)
	storeli.w r4, -1008(r30)
	storeli.w r4, -1004(r30)
	storeli.w r4, -1000(r30)
	storeli.w r4, -996(r30)
	storeli.w r4, -992(r30)
	storeli.w r4, -988(r30)
	storeli.w r4, -984(r30)
	storeli.w r4, -980(r30)
	storeli.w r4, -976(r30)
	storeli.w r4, -972(r30)
	storeli.w r4, -968(r30)
	storeli.w r4, -964(r30)
	storeli.w r4, -960(r30)
	storeli.w r4, -956(r30)
	storeli.w r4, -952(r30)
	storeli.w r4, -948(r30)
	storeli.w r4, -944(r30)
	storeli.w r4, -940(r30)
	storeli.w r4, -936(r30)
	storeli.w r4, -932(r30)
	storeli.w r4, -928(r30)
	storeli.w r4, -924(r30)
	storeli.w r4, -920(r30)
	storeli.w r4, -916(r30)
	storeli.w r4, -912(r30)
	storeli.w r4, -908(r30)
	storeli.w r4, -904(r30)
	storeli.w r4, -900(r30)
	storeli.w r4, -896(r30)
	storeli.w r4, -892(r30)
	storeli.w r4, -888(r30)
	storeli.w r4, -884(r30)
	storeli.w r4, -880(r30)
	storeli.w r4, -876(r30)
	storeli.w r4, -872(r30)
	storeli.w r4, -868(r30)
	storeli.w r4, -864(r30)
	storeli.w r4, -860(r30)
	storeli.w r4, -856(r30)
	storeli.w r4, -852(r30)
	storeli.w r4, -848(r30)
	storeli.w r4, -844(r30)
	storeli.w r4, -840(r30)
	storeli.w r4, -836(r30)
	storeli.w r4, -832(r30)
	storeli.w r4, -828(r30)
	storeli.w r4, -824(r30)
	storeli.w r4, -820(r30)
	storeli.w r4, -816(r30)
	storeli.w r4, -812(r30)
	storeli.w r4, -808(r30)
	storeli.w r4, -804(r30)
	storeli.w r4, -800(r30)
	storeli.w r4, -796(r30)
	storeli.w r4, -792(r30)
	storeli.w r4, -788(r30)
	storeli.w r4, -784(r30)
	storeli.w r4, -780(r30)
	storeli.w r4, -776(r30)
	storeli.w r4, -772(r30)
	storeli.w r4, -768(r30)
	storeli.w r4, -764(r30)
	storeli.w r4, -760(r30)
	storeli.w r4, -756(r30)
	storeli.w r4, -752(r30)
	storeli.w r4, -748(r30)
	storeli.w r4, -744(r30)
	storeli.w r4, -740(r30)
	storeli.w r4, -736(r30)
	storeli.w r4, -732(r30)
	storeli.w r4, -728(r30)
	storeli.w r4, -724(r30)
	storeli.w r4, -720(r30)
	storeli.w r4, -716(r30)
	storeli.w r4, -712(r30)
	storeli.w r4, -708(r30)
	storeli.w r4, -704(r30)
	storeli.w r4, -700(r30)
	storeli.w r4, -696(r30)
	storeli.w r4, -692(r30)
	storeli.w r4, -688(r30)
	storeli.w r4, -684(r30)
	storeli.w r4, -680(r30)
	storeli.w r4, -676(r30)
	storeli.w r4, -672(r30)
	storeli.w r4, -668(r30)
	storeli.w r4, -664(r30)
	storeli.w r4, -660(r30)
	storeli.w r4, -656(r30)
	storeli.w r4, -652(r30)
	storeli.w r4, -648(r30)
	storeli.w r4, -644(r30)
	storeli.w r4, -640(r30)
	storeli.w r4, -636(r30)
	storeli.w r4, -632(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r4, -1404(r30)
	storeli.w r4, -1408(r30)
	storeli.w r4, -1412(r30)
	storeli.w r4, -1416(r30)
	storeli.w r4, -1420(r30)
	storeli.w r4, -1424(r30)
	storeli.w r4, -1428(r30)
	storeli.w r4, -1432(r30)
	storeli.w r4, -1436(r30)
	storeli.w r4, -1440(r30)
	storeli.w r4, -1444(r30)
	storeli.w r4, -1448(r30)
	storeli.w r4, -1452(r30)
	storeli.w r4, -1456(r30)
	storeli.w r4, -1460(r30)
	storeli.w r4, -1464(r30)
	storeli.w r4, -1468(r30)
	storeli.w r4, -1472(r30)
	storeli.w r4, -1476(r30)
	storeli.w r4, -1480(r30)
	storeli.w r4, -1484(r30)
	storeli.w r4, -1488(r30)
	storeli.w r4, -1492(r30)
	storeli.w r4, -1496(r30)
	storeli.w r4, -1500(r30)
	storeli.w r4, -1504(r30)
	storeli.w r4, -1508(r30)
	storeli.w r4, -1512(r30)
	storeli.w r4, -1516(r30)
	storeli.w r4, -1520(r30)
	storeli.w r4, -1524(r30)
	storeli.w r4, -1528(r30)
	storeli.w r4, -1532(r30)
	storeli.w r4, -1536(r30)
	storeli.w r4, -1540(r30)
	storeli.w r4, -1544(r30)
	storeli.w r4, -1548(r30)
	storeli.w r4, -1552(r30)
	storeli.w r4, -1556(r30)
	storeli.w r4, -1560(r30)
	storeli.w r4, -1564(r30)
	storeli.w r4, -1568(r30)
	storeli.w r4, -1572(r30)
	storeli.w r4, -1576(r30)
	storeli.w r4, -1580(r30)
	storeli.w r4, -1584(r30)
	storeli.w r4, -1588(r30)
	storeli.w r4, -1592(r30)
	storeli.w r4, -1596(r30)
	storeli.w r4, -1600(r30)
	storeli.w r4, -1604(r30)
	storeli.w r4, -1608(r30)
	storeli.w r4, -1612(r30)
	storeli.w r4, -1616(r30)
	storeli.w r4, -1620(r30)
	storeli.w r4, -1624(r30)
	storeli.w r4, -1628(r30)
	storeli.w r4, -1632(r30)
	storeli.w r4, -1636(r30)
	storeli.w r4, -1640(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w r4, -504(r30)
	storeli.w r4, -508(r30)
	storeli.w r4, -512(r30)
	storeli.w r4, -516(r30)
	storeli.w r4, -520(r30)
	storeli.w r4, -524(r30)
	storeli.w r4, -528(r30)
	storeli.w r4, -532(r30)
	storeli.w r4, -536(r30)
	storeli.w r4, -540(r30)
	storeli.w r4, -544(r30)
	storeli.w r4, -548(r30)
	storeli.w r4, -552(r30)
	storeli.w r4, -556(r30)
	storeli.w r4, -560(r30)
	storeli.w r4, -564(r30)
	storeli.w r4, -568(r30)
	storeli.w r4, -572(r30)
	storeli.w r4, -576(r30)
	storeli.w r4, -580(r30)
	storeli.w r4, -584(r30)
	storeli.w r4, -588(r30)
	storeli.w r4, -592(r30)
	storeli.w r4, -596(r30)
	storeli.w r4, -600(r30)
	storeli.w r4, -604(r30)
	storeli.w r4, -608(r30)
	storeli.w r4, -612(r30)
	storeli.w r4, -616(r30)
	storeli.w r4, -620(r30)
	storeli.w r4, -624(r30)
	storeli.w r4, -628(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r4, -1400(r30)
	storeli.w r4, -1396(r30)
	storeli.w r4, -1392(r30)
	storeli.w r4, -1388(r30)
	storeli.w r4, -1384(r30)
	storeli.w r4, -1380(r30)
	storeli.w r4, -1376(r30)
	storeli.w r4, -1372(r30)
	storeli.w r4, -1368(r30)
	storeli.w r4, -1364(r30)
	storeli.w r4, -1360(r30)
	storeli.w r4, -1356(r30)
	storeli.w r4, -1352(r30)
	storeli.w r4, -1348(r30)
	storeli.w r4, -1344(r30)
	storeli.w r4, -1340(r30)
	storeli.w r4, -1336(r30)
	storeli.w r4, -1332(r30)
	storeli.w r4, -1328(r30)
	storeli.w r4, -1324(r30)
	storeli.w r4, -1320(r30)
	storeli.w r4, -1316(r30)
	storeli.w r4, -1312(r30)
	storeli.w r4, -1308(r30)
	storeli.w r4, -1304(r30)
	storeli.w r4, -1300(r30)
	storeli.w r4, -1296(r30)
	storeli.w r4, -1292(r30)
	storeli.w r4, -1288(r30)
	storeli.w r4, -1284(r30)
	storeli.w r4, -1280(r30)
	storeli.w r4, -1276(r30)
	storeli.w r4, -1272(r30)
	storeli.w r4, -1268(r30)
	storeli.w r4, -1264(r30)
	storeli.w r4, -1260(r30)
	storeli.w r4, -1256(r30)
	storeli.w r4, -1252(r30)
	storeli.w r4, -1248(r30)
	storeli.w r4, -1244(r30)
	storeli.w r4, -1240(r30)
	storeli.w r4, -1236(r30)
	storeli.w r4, -1232(r30)
	storeli.w r4, -1228(r30)
	storeli.w r4, -1224(r30)
	storeli.w r4, -1220(r30)
	storeli.w r4, -1216(r30)
	storeli.w r4, -1212(r30)
	storeli.w r4, -1208(r30)
	storeli.w r4, -1204(r30)
	storeli.w r4, -1200(r30)
	storeli.w r4, -1196(r30)
	storeli.w r4, -1192(r30)
	storeli.w r4, -1188(r30)
	storeli.w r4, -1184(r30)
	storeli.w r4, -1180(r30)
	storeli.w r4, -1176(r30)
	storeli.w r4, -1172(r30)
	storeli.w r4, -1168(r30)
	storeli.w r4, -1164(r30)
	storeli.w r4, -1160(r30)
	storeli.w r4, -1156(r30)
	storeli.w r4, -1152(r30)
	storeli.w r4, -1148(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r4, -2412(r30)
	storeli.w r4, -2408(r30)
	storeli.w r4, -2404(r30)
	storeli.w r4, -2400(r30)
	storeli.w r4, -2396(r30)
	storeli.w r4, -2392(r30)
	storeli.w r4, -2388(r30)
	storeli.w r4, -2384(r30)
	storeli.w r4, -2380(r30)
	storeli.w r4, -2376(r30)
	storeli.w r4, -2372(r30)
	storeli.w r4, -2368(r30)
	storeli.w r4, -2364(r30)
	storeli.w r4, -2360(r30)
	storeli.w r4, -2356(r30)
	storeli.w r4, -2352(r30)
	storeli.w r4, -2348(r30)
	storeli.w r4, -2344(r30)
	storeli.w r4, -2340(r30)
	storeli.w r4, -2336(r30)
	storeli.w r4, -2332(r30)
	storeli.w r4, -2328(r30)
	storeli.w r4, -2324(r30)
	storeli.w r4, -2320(r30)
	storeli.w r4, -2316(r30)
	storeli.w r4, -2312(r30)
	storeli.w r4, -2308(r30)
	storeli.w r4, -2304(r30)
	storeli.w r4, -2300(r30)
	storeli.w r4, -2296(r30)
	storeli.w r4, -2292(r30)
	storeli.w r4, -2288(r30)
	storeli.w r4, -2284(r30)
	storeli.w r4, -2280(r30)
	storeli.w r4, -2276(r30)
	storeli.w r4, -2272(r30)
	storeli.w r4, -2268(r30)
	storeli.w r4, -2264(r30)
	storeli.w r4, -2260(r30)
	storeli.w r4, -2256(r30)
	storeli.w r4, -2252(r30)
	storeli.w r4, -2248(r30)
	storeli.w r4, -2244(r30)
	storeli.w r4, -2240(r30)
	storeli.w r4, -2236(r30)
	storeli.w r4, -2232(r30)
	storeli.w r4, -2228(r30)
	storeli.w r4, -2224(r30)
	storeli.w r4, -2220(r30)
	storeli.w r4, -2216(r30)
	storeli.w r4, -2212(r30)
	storeli.w r4, -2208(r30)
	storeli.w r4, -2204(r30)
	storeli.w r4, -2200(r30)
	storeli.w r4, -2196(r30)
	storeli.w r4, -2192(r30)
	storeli.w r4, -2188(r30)
	storeli.w r4, -2184(r30)
	storeli.w r4, -2180(r30)
	storeli.w r4, -2176(r30)
	storeli.w r4, -2172(r30)
	storeli.w r4, -2168(r30)
	storeli.w r4, -2164(r30)
	storeli.w r4, -2160(r30)
	storeli.w r4, -2156(r30)
	storeli.w r4, -2152(r30)
	storeli.w r4, -2148(r30)
	storeli.w r4, -2144(r30)
	storeli.w r4, -2140(r30)
	storeli.w r4, -2136(r30)
	storeli.w r4, -2132(r30)
	storeli.w r4, -2128(r30)
	storeli.w r4, -2124(r30)
	storeli.w r4, -2120(r30)
	storeli.w r4, -2116(r30)
	storeli.w r4, -2112(r30)
	storeli.w r4, -2108(r30)
	storeli.w r4, -2104(r30)
	storeli.w r4, -2100(r30)
	storeli.w r4, -2096(r30)
	storeli.w r4, -2092(r30)
	storeli.w r4, -2088(r30)
	storeli.w r4, -2084(r30)
	storeli.w r4, -2080(r30)
	storeli.w r4, -2076(r30)
	storeli.w r4, -2072(r30)
	storeli.w r4, -2068(r30)
	storeli.w r4, -2064(r30)
	storeli.w r4, -2060(r30)
	storeli.w r4, -2056(r30)
	storeli.w r4, -2052(r30)
	storeli.w r4, -2048(r30)
	storeli.w r4, -2044(r30)
	storeli.w r4, -2040(r30)
	storeli.w r4, -2036(r30)
	storeli.w r4, -2032(r30)
	storeli.w r4, -2028(r30)
	storeli.w r4, -2024(r30)
	storeli.w r4, -2020(r30)
	storeli.w r4, -2016(r30)
	storeli.w r4, -2012(r30)
	storeli.w r4, -2008(r30)
	storeli.w r4, -2004(r30)
	storeli.w r4, -2000(r30)
	storeli.w r4, -1996(r30)
	storeli.w r4, -1992(r30)
	storeli.w r4, -1988(r30)
	storeli.w r4, -1984(r30)
	storeli.w r4, -1980(r30)
	storeli.w r4, -1976(r30)
	storeli.w r4, -1972(r30)
	storeli.w r4, -1968(r30)
	storeli.w r4, -1964(r30)
	storeli.w r4, -1960(r30)
	storeli.w r4, -1956(r30)
	storeli.w r4, -1952(r30)
	storeli.w r4, -1948(r30)
	storeli.w r4, -1944(r30)
	storeli.w r4, -1940(r30)
	storeli.w r4, -1936(r30)
	storeli.w r4, -1932(r30)
	storeli.w r4, -1928(r30)
	storeli.w r4, -1924(r30)
	storeli.w r4, -1920(r30)
	storeli.w r4, -1916(r30)
	storeli.w r4, -1912(r30)
	storeli.w r4, -1908(r30)
	storeli.w r4, -1904(r30)
	storeli.w r4, -1900(r30)
	storeli.w r4, -1896(r30)
	storeli.w r4, -1892(r30)
	storeli.w r4, -1888(r30)
	storeli.w r4, -1884(r30)
	storeli.w r4, -1880(r30)
	storeli.w r4, -1876(r30)
	storeli.w r4, -1872(r30)
	storeli.w r4, -1868(r30)
	storeli.w r4, -1864(r30)
	storeli.w r4, -1860(r30)
	storeli.w r4, -1856(r30)
	storeli.w r4, -1852(r30)
	storeli.w r4, -1848(r30)
	storeli.w r4, -1844(r30)
	storeli.w r4, -1840(r30)
	storeli.w r4, -1836(r30)
	storeli.w r4, -1832(r30)
	storeli.w r4, -1828(r30)
	storeli.w r4, -1824(r30)
	storeli.w r4, -1820(r30)
	storeli.w r4, -1816(r30)
	storeli.w r4, -1812(r30)
	storeli.w r4, -1808(r30)
	storeli.w r4, -1804(r30)
	storeli.w r4, -1800(r30)
	storeli.w r4, -1796(r30)
	storeli.w r4, -1792(r30)
	storeli.w r4, -1788(r30)
	storeli.w r4, -1784(r30)
	storeli.w r4, -1780(r30)
	storeli.w r4, -1776(r30)
	storeli.w r4, -1772(r30)
	storeli.w r4, -1768(r30)
	storeli.w r4, -1764(r30)
	storeli.w r4, -1760(r30)
	storeli.w r4, -1756(r30)
	storeli.w r4, -1752(r30)
	storeli.w r4, -1748(r30)
	storeli.w r4, -1744(r30)
	storeli.w r4, -1740(r30)
	storeli.w r4, -1736(r30)
	storeli.w r4, -1732(r30)
	storeli.w r4, -1728(r30)
	storeli.w r4, -1724(r30)
	storeli.w r4, -1720(r30)
	storeli.w r4, -1716(r30)
	storeli.w r4, -1712(r30)
	storeli.w r4, -1708(r30)
	storeli.w r4, -1704(r30)
	storeli.w r4, -1700(r30)
	storeli.w r4, -1696(r30)
	storeli.w r4, -1692(r30)
	storeli.w r4, -1688(r30)
	storeli.w r4, -1684(r30)
	storeli.w r4, -1680(r30)
	storeli.w r4, -1676(r30)
	storeli.w r4, -1672(r30)
	storeli.w r4, -1668(r30)
	storeli.w r4, -1664(r30)
	storeli.w r4, -1660(r30)
	storeli.w r4, -1656(r30)
	storeli.w r4, -1652(r30)
	storeli.w r4, -1648(r30)
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r1, r2, r6
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	fmac.s r2, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	min.s r3, r2, r3
	.loc	1 49 5                          # parallel-rne.mlir:49:5
	ble.s r3, r1, .LBB0_293
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 41 11 is_stmt 1               # parallel-rne.mlir:41:11
	addli r4, r30, -2488
	addli r9, zero, 6
	lui r26, 522240
	lui r28, 1048560
	addli r6, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sext_int2long r[4:5], r1
	lui r1, 524287
	ori r24, r1, 4095
	lui r1, 7
	ori r27, r1, 4095
	lui r1, 522239
	ori r1, r1, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	addli r2, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, r30, -2448
	.loc	1 49 5 is_stmt 1                # parallel-rne.mlir:49:5
	addli r6, r30, -2488
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	load.d r[2:3], 0(r6)                    # 8-byte Folded Reload
	loadli.w r6,  -2452(r30)                # 4-byte Folded Reload
	addli.d r[4:5], r[4:5], 1
	setlt.sl r2, r[4:5], r[2:3]
	beq r2, zero, .LBB0_293
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_72 Depth 2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_75 Depth 3
                                        #     Child Loop BB0_42 Depth 2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_45 Depth 3
                                        #     Child Loop BB0_103 Depth 2
                                        #       Child Loop BB0_112 Depth 3
                                        #       Child Loop BB0_106 Depth 3
                                        #     Child Loop BB0_169 Depth 2
                                        #       Child Loop BB0_178 Depth 3
                                        #       Child Loop BB0_172 Depth 3
                                        #     Child Loop BB0_200 Depth 2
                                        #       Child Loop BB0_209 Depth 3
                                        #       Child Loop BB0_203 Depth 3
                                        #     Child Loop BB0_139 Depth 2
                                        #       Child Loop BB0_148 Depth 3
                                        #       Child Loop BB0_142 Depth 3
                                        #     Child Loop BB0_261 Depth 2
                                        #       Child Loop BB0_270 Depth 3
                                        #       Child Loop BB0_264 Depth 3
                                        #     Child Loop BB0_231 Depth 2
                                        #       Child Loop BB0_240 Depth 3
                                        #       Child Loop BB0_234 Depth 3
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r20, zero, 14
	.loc	1 76 7 is_stmt 1                # parallel-rne.mlir:76:7
	addli r2, zero, 4
	bneq r14, r2, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	addli r7, r30, -2448
	addli r8, zero, 8
	addli r22, zero, 1
	.loc	1 77 7 is_stmt 1                # parallel-rne.mlir:77:7
	load.d r[17:18], 8(r30)
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	loadli.w r16,  -1644(r30)
	addli r3, zero, 0
	store.d r[4:5], 0(r7)                   # 8-byte Folded Spill
	div.s r2, r4, r2
	loadli.w r4,  28(r30)
	addli r5, zero, 5
	mod.s r5, r6, r5
	addli r6, r6, 1
	storeli.w r6, -2452(r30)                # 4-byte Folded Spill
	addli r6, zero, 1
	div.s r2, r2, r4
	addli r4, zero, 32
	div.s r4, r2, r4
	slli r7, r4, 3
	slli r4, r4, 5
	sub.s r6, r6, r7
	sub.s r4, r2, r4
	min.s r6, r6, r8
	mod.s r2, r2, r6
	div.s r8, r4, r6
	slli r6, r5, 13
	lui r5, 10
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	loadli.w r4,  -2416(r30)
	add.s r10, r6, r5
	add.s r2, r7, r2
	slli r5, r8, 6
	zext_int2long r[7:8], r8
	storeli.w r5, -2480(r30)                # 4-byte Folded Spill
	slli r5, r2, 5
	zext_int2long r[11:12], r2
	sll.d r[7:8], r[7:8], r9
	addli r2, r30, -2464
	store.d r[7:8], 0(r2)                   # 8-byte Folded Spill
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	sll.d r[7:8], r[7:8], r22
	storeli.w r5, -2476(r30)                # 4-byte Folded Spill
	addli r5, r30, -2472
	addli r2, zero, 12
	store.d r[11:12], 0(r5)                 # 8-byte Folded Spill
	sll.d r[11:12], r[11:12], r2
	add.ul r[7:8], r[17:18], r[7:8]
	addli r2, r30, -2424
	store.d r[7:8], 0(r2)                   # 8-byte Folded Spill
	load.d r[7:8], 0(r30)
	add.ul r[17:18], r[7:8], r[11:12]
	addli r7, zero, 0
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r5, 20
	addli r11, zero, 4
	addli r19, zero, 64
	addli r21, zero, 128
	addli r12, zero, 2
	ori r5, r5, 64
	.loc	1 100 9 is_stmt 1               # parallel-rne.mlir:100:9
	lock zero, r11
	add.s r2, r2, r5
	addli r5, zero, 1
	dma_cfg r5, r5, zero, 0
	dma_cfg zero, r8, zero, 2
	dma_cfg r2, r7, r19, 3
	addli r2, zero, 32
	addli r8, zero, 5
	addli r7, zero, 7
	dma_cfg r21, r19, r5, 4
	dma_cfg r21, r21, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 8
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 9
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 11
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 12
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 13
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 15
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 16
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 17
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 18
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 19
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 20
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 21
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 22
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 23
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 24
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 25
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 26
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 27
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 28
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 29
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 30
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 31
	dma_cfg zero, zero, r7, 10
	dma_cfg r5, r5, zero, 0
	dma_cfg r5, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r13, zero, r19, 3
	dma_cfg r21, zero, r5, 4
	dma_cfg r21, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	xsignal r12, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r2,  -1144(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r5,  -500(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r2, r2, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r5, r5, 1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	storeli.w r2, -1144(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r5, -500(r30)
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	andi r2, r22, 1
	beq r2, zero, .LBB0_32
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 121 15                        # parallel-rne.mlir:121:15
	addli r3, r3, 1
	addli r7, zero, 1
	addli r22, zero, 0
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 78 15                         # parallel-rne.mlir:78:15
	add.s r11, r16, r3
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r8, zero, 124
	.loc	1 78 15                         # parallel-rne.mlir:78:15
	add.s r2, r4, r3
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	addli r5, zero, 192
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	lui r12, 20
	mod.s r8, r11, r8
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	mod.s r5, r2, r5
	addli r2, r2, 1
	storeli.w r2, -2416(r30)
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r2, r8, 12
	addli r8, r11, 1
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	slli r5, r5, 12
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	storeli.w r8, -1644(r30)
	add.s r13, r2, r12
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r8, zero, 2
	beq r14, r8, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[8:9], r7
	addli r15, zero, 6
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r7, zero, 1
	bneq r14, r7, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r5, zero, 6
	addli r15, zero, 3
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	sll.d r[7:8], r[8:9], r5
	addli r9, zero, 6
	addli r5, zero, 123
	xwait r15, 0
	add.ul r[7:8], r[17:18], r[7:8]
	blt.s r5, r11, .LBB0_11
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r11, zero, 5
	addli r9, zero, 1
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r12, zero, 2
	addli r5, zero, 6
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 4
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 128
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 7
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 8
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 9
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 11
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 12
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 13
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 15
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 16
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 17
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 18
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 19
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 20
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 21
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 22
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 23
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 24
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 25
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 26
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 27
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 28
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 29
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 30
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 31
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 64
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r13, zero, r5, 3
	addli r5, zero, 32
	dma_cfg r12, zero, r9, 4
	dma_cfg r12, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	addli r9, zero, 6
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_11
.LBB0_19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r7, zero, 2
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	addli r2, zero, 5
	xwait r7, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 32
	ds_cfg r7, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r2, zero, 13
	shuffle_batch r5, r13, r2, 1
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	addli r2, zero, 4
	xsignal r2, 0
	j .LBB0_12
.LBB0_20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r11,  -500(r30)
	addli r12, zero, 124
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r2,  -1144(r30)
	addli r7, zero, 160
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	lui r13, 144
	mod.s r12, r11, r12
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	mod.s r7, r2, r7
	addli r2, r2, 1
	storeli.w r2, -1144(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r2, r12, 13
	addli r12, r11, 1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	slli r7, r7, 13
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r12, -500(r30)
	add.s r13, r2, r13
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r12, zero, 7
	beq r14, r12, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_15 Depth=2
	bneq r14, r15, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_15 Depth=2
	addli r5, r30, -2424
	addli r21, zero, 14
	load.d r[19:20], 0(r5)                  # 8-byte Folded Reload
	sll.d r[7:8], r[8:9], r21
	addli r5, zero, 123
	add.ul r[7:8], r[19:20], r[7:8]
	addli r19, zero, 7
	xwait r19, 0
	blt.s r5, r11, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r11, zero, 5
	addli r9, zero, 1
	addli r12, zero, 2
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r5, zero, 3
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 4
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 8
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 9
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 11
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 12
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 13
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 15
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 16
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 17
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 18
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 19
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 20
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 21
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 22
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 23
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 24
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 25
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 26
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 27
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 28
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 29
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 30
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 31
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 64
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r13, zero, r5, 3
	addli r5, zero, 128
	dma_cfg r5, zero, r12, 4
	addli r5, zero, 32
	addli r12, zero, 256
	dma_cfg r12, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
.LBB0_24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r5, 144
	addli r9, zero, 4
	addli r12, zero, 64
	addli r11, zero, 2
	addli r15, zero, 128
	addli r23, zero, 256
	addli r20, zero, 14
	ori r5, r5, 64
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	lock zero, r9
	add.s r2, r2, r5
	addli r5, zero, 1
	dma_cfg r5, r5, zero, 0
	dma_cfg zero, r8, zero, 2
	dma_cfg r2, r7, r12, 3
	addli r2, zero, 32
	addli r7, zero, 512
	addli r8, zero, 5
	dma_cfg r15, r12, r11, 4
	dma_cfg r23, r7, r2, 5
	addli r7, zero, 3
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 8
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 6
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 9
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 11
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 12
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 13
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 15
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 16
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 17
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 18
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 19
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 20
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 21
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 22
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 23
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 24
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 25
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 26
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 27
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 28
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 29
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 30
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 31
	dma_cfg zero, zero, r7, 10
	dma_cfg r5, r5, zero, 0
	dma_cfg r5, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r13, zero, r12, 3
	dma_cfg r15, zero, r11, 4
	dma_cfg r23, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	xsignal r9, 0
	.loc	1 118 9 is_stmt 1               # parallel-rne.mlir:118:9
	j .LBB0_13
.LBB0_25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r9, zero, 6
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r2, zero, 9
	addli r5, zero, 64
	xwait r9, 0
	xwait r2, 0
	addli r2, zero, 2
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 32
	ds_cfg r5, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r5, zero, 13
	shuffle_coa r7, r13, r2, 2
	addli r2, zero, 7
	unlock zero
	xsignal r2, 0
	addli r2, zero, 8
	xsignal r2, 0
	j .LBB0_13
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	andi r2, r22, 1
	addli r8, zero, 4
	.loc	1 120 9 is_stmt 1               # parallel-rne.mlir:120:9
	bneq r14, r8, .LBB0_29
# %bb.27:                               #   in Loop: Header=BB0_15 Depth=2
	xwait r8, 0
	addli r8, zero, 8
	addli r9, zero, 1
	addli r11, zero, 64
	xwait r8, 0
	addli r8, zero, 32
	lock zero, r9
	mm_cfg r11, r8, r8, 0
	addli r8, zero, 2
	mm_cfg r8, r8, r9, 2
	beq r3, zero, .LBB0_30
# %bb.28:                               # %.preheader30
                                        #   in Loop: Header=BB0_15 Depth=2
	mm_acc r10, r5, r7, 8
	j .LBB0_31
.LBB0_29:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r9, zero, 6
	bneq r2, zero, .LBB0_14
	j .LBB0_34
.LBB0_30:                               # %.preheader29
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	mm r10, r5, r7, 8
.LBB0_31:                               # %.thread20.thread43
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r5, zero, 1
	addli r9, zero, 6
	unlock r5
	addli r5, zero, 5
	xsignal r5, 0
	addli r5, zero, 9
	xsignal r5, 0
	bneq r2, zero, .LBB0_14
	j .LBB0_33
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 124 7 is_stmt 1               # parallel-rne.mlir:124:7
	addli r2, zero, 4
	bneq r14, r2, .LBB0_34
.LBB0_33:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	storeli.w zero, -2436(r30)              # 4-byte Folded Spill
	xsignal r2, 0
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	j .LBB0_37
.LBB0_34:                               # %.thread42
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 3
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	bneq r14, r2, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 130 7 is_stmt 1               # parallel-rne.mlir:130:7
	storeli.w r2, -2436(r30)                # 4-byte Folded Spill
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -2436(r30)              # 4-byte Folded Spill
.LBB0_37:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 134 7 is_stmt 1               # parallel-rne.mlir:134:7
	addli r2, zero, 255
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	xfence
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	mfence { lm, sm, gm }
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	csr_set csr5, r2
	addli r2, zero, 64
	sync_core
	zext_int2long r[16:17], r2
	addli r2, zero, 63
	zext_int2long r[3:4], r2
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	beq r14, zero, .LBB0_70
# %bb.38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r2, zero, 2
	beq r14, r2, .LBB0_101
.LBB0_39:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 1
	bneq r14, r2, .LBB0_132
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[7:8], zero
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r2, r30, -2432
	store.d r[7:8], 0(r2)                   # 8-byte Folded Spill
	addli r2, zero, 4
	xfence
	zext_int2long r[7:8], r2
	mfence { lm, sm, gm }
	j .LBB0_42
.LBB0_41:                               # %middle.block98
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 7
	addli r9, zero, 6
	zext_int2long r[7:8], r2
	addli r2, r30, -2424
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	.loc	1 172 9 is_stmt 1               # parallel-rne.mlir:172:9
	setlt.ul r2, r[11:12], r[7:8]
	addli.d r[7:8], r[11:12], 1
	beq r2, zero, .LBB0_131
.LBB0_42:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_45 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -2424
	sll.d r[13:14], r[7:8], r9
	store.d r[7:8], 0(r2)                   # 8-byte Folded Spill
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	bneq r6, r10, .LBB0_49
# %bb.43:                               # %scalar.ph92.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_45
.LBB0_44:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	setlt.ul r9, r[7:8], r[3:4]
	.loc	1 188 13 is_stmt 1              # parallel-rne.mlir:188:13
	add.s r2, r6, r2
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r5, 0(r2)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	beq r9, zero, .LBB0_41
.LBB0_45:                               # %scalar.ph92
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[11:12], r[7:8], r[13:14]
	slli r2, r11, 2
	add.s r5, r10, r2
	loads.w r9, 0(r5)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r11, r9, r24
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r5, r26, r11
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r5, zero, .LBB0_47
# %bb.46:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r9, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r11, r1, r11
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r11, zero, .LBB0_44
	j .LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r9, r5
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r11, r1, r11
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r11, zero, .LBB0_44
.LBB0_48:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r9, 16
	andi r5, r5, 1
	add.s r5, r9, r5
	add.s r5, r5, r27
	and r5, r5, r28
	j .LBB0_44
.LBB0_49:                               # %vector.body94.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	addli r2, r30, -2432
	load.d r[18:19], 0(r2)                  # 8-byte Folded Reload
	j .LBB0_51
.LBB0_50:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	add.s r2, r6, r2
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	seteq.d r5, r[18:19], r[16:17]
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r15, 12(r2)
	stores.w r7, 8(r2)
	stores.w r20, 4(r2)
	stores.w r8, 0(r2)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	bneq r5, zero, .LBB0_41
.LBB0_51:                               # %vector.body94
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[7:8], r[18:19], r[13:14]
	slli r2, r7, 2
	add.s r8, r10, r2
	loads.w r23, 12(r8)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r12, r23, r24
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r5, r26, r12
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r5, zero, .LBB0_53
# %bb.52:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r23, 0
	j .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_51 Depth=3
	lui r5, 1024
	or r15, r23, r5
.LBB0_54:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r5, 8(r8)
	and r11, r5, r24
	setlt.u r7, r26, r11
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r7, zero, .LBB0_56
# %bb.55:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r5, 0
	j .LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_51 Depth=3
	lui r7, 1024
	or r7, r5, r7
.LBB0_57:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r9, 4(r8)
	and r21, r9, r24
	setlt.u r20, r26, r21
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r20, zero, .LBB0_59
# %bb.58:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	j .LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_51 Depth=3
	lui r20, 1024
	or r20, r9, r20
.LBB0_60:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r22, 0(r8)
	and r25, r22, r24
	setlt.u r8, r26, r25
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r8, zero, .LBB0_62
# %bb.61:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r22, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r25, r1, r25
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r25, zero, .LBB0_63
	j .LBB0_64
.LBB0_62:                               #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r22, r8
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r25, r1, r25
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r25, zero, .LBB0_64
.LBB0_63:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r22, 16
	andi r8, r8, 1
	add.s r8, r22, r8
	add.s r8, r8, r27
	and r8, r8, r28
.LBB0_64:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	setlt.u r21, r1, r21
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r21, zero, .LBB0_67
# %bb.65:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r1, r11
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r9, zero, .LBB0_68
.LBB0_66:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r1, r12
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r5, zero, .LBB0_50
	j .LBB0_69
.LBB0_67:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r20, r9, 16
	andi r20, r20, 1
	add.s r9, r9, r20
	add.s r9, r9, r27
	and r20, r9, r28
	setlt.u r9, r1, r11
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r9, zero, .LBB0_66
.LBB0_68:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r5, 16
	andi r7, r7, 1
	add.s r5, r5, r7
	add.s r5, r5, r27
	and r7, r5, r28
	setlt.u r5, r1, r12
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r5, zero, .LBB0_50
.LBB0_69:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r23, 16
	andi r5, r5, 1
	add.s r5, r23, r5
	add.s r5, r5, r27
	and r15, r5, r28
	j .LBB0_50
.LBB0_70:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	xfence
	zext_int2long r[7:8], zero
	mfence { lm, sm, gm }
	j .LBB0_72
.LBB0_71:                               # %middle.block116
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 3
	addli r9, zero, 6
	zext_int2long r[7:8], r2
	addli r2, r30, -2424
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	.loc	1 143 9 is_stmt 1               # parallel-rne.mlir:143:9
	setlt.ul r2, r[11:12], r[7:8]
	addli.d r[7:8], r[11:12], 1
	beq r2, zero, .LBB0_100
.LBB0_72:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_75 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -2424
	sll.d r[21:22], r[7:8], r9
	store.d r[7:8], 0(r2)                   # 8-byte Folded Spill
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	bneq r6, r10, .LBB0_79
# %bb.73:                               # %scalar.ph110.preheader
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_75
.LBB0_74:                               # %scalar.ph110
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	setlt.ul r9, r[7:8], r[3:4]
	.loc	1 159 13 is_stmt 1              # parallel-rne.mlir:159:13
	add.s r2, r6, r2
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r5, 0(r2)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	beq r9, zero, .LBB0_71
.LBB0_75:                               # %scalar.ph110
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[11:12], r[7:8], r[21:22]
	slli r2, r11, 2
	add.s r5, r10, r2
	loads.w r9, 0(r5)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r11, r9, r24
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r5, r26, r11
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r5, zero, .LBB0_77
# %bb.76:                               # %scalar.ph110
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r9, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r11, r1, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r11, zero, .LBB0_74
	j .LBB0_78
.LBB0_77:                               #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r9, r5
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r11, r1, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r11, zero, .LBB0_74
.LBB0_78:                               # %scalar.ph110
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r9, 16
	andi r5, r5, 1
	add.s r5, r9, r5
	add.s r5, r5, r27
	and r5, r5, r28
	j .LBB0_74
.LBB0_79:                               # %vector.body112.preheader
                                        #   in Loop: Header=BB0_72 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_81
.LBB0_80:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r7, r6, r7
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	seteq.d r5, r[13:14], r[16:17]
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r2, 12(r7)
	stores.w r12, 8(r7)
	stores.w r9, 4(r7)
	stores.w r23, 0(r7)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	bneq r5, zero, .LBB0_71
.LBB0_81:                               # %vector.body112
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[7:8], r[13:14], r[21:22]
	slli r7, r7, 2
	add.s r23, r10, r7
	loads.w r8, 12(r23)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r15, r8, r24
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r2, r26, r15
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r2, zero, .LBB0_83
# %bb.82:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r8, 0
	j .LBB0_84
.LBB0_83:                               #   in Loop: Header=BB0_81 Depth=3
	lui r2, 1024
	or r2, r8, r2
.LBB0_84:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r20, 8(r23)
	and r11, r20, r24
	setlt.u r5, r26, r11
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r5, zero, .LBB0_86
# %bb.85:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r20, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_81 Depth=3
	lui r5, 1024
	or r12, r20, r5
.LBB0_87:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r5, 4(r23)
	and r18, r5, r24
	setlt.u r9, r26, r18
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r9, zero, .LBB0_89
# %bb.88:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r5, 0
	j .LBB0_90
.LBB0_89:                               #   in Loop: Header=BB0_81 Depth=3
	lui r9, 1024
	or r9, r5, r9
.LBB0_90:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r19, 0(r23)
	and r25, r19, r24
	setlt.u r23, r26, r25
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r23, zero, .LBB0_92
# %bb.91:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r19, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r25, r1, r25
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r25, zero, .LBB0_93
	j .LBB0_94
.LBB0_92:                               #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r23, 1024
	or r23, r19, r23
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r25, r1, r25
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r25, zero, .LBB0_94
.LBB0_93:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r23, r19, 16
	andi r23, r23, 1
	add.s r19, r19, r23
	add.s r19, r19, r27
	and r23, r19, r28
.LBB0_94:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	setlt.u r18, r1, r18
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r18, zero, .LBB0_97
# %bb.95:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r1, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r5, zero, .LBB0_98
.LBB0_96:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r1, r15
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r5, zero, .LBB0_80
	j .LBB0_99
.LBB0_97:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r5, 16
	andi r9, r9, 1
	add.s r5, r5, r9
	add.s r5, r5, r27
	and r9, r5, r28
	setlt.u r5, r1, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r5, zero, .LBB0_96
.LBB0_98:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r20, 16
	andi r5, r5, 1
	add.s r5, r20, r5
	add.s r5, r5, r27
	and r12, r5, r28
	setlt.u r5, r1, r15
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r5, zero, .LBB0_80
.LBB0_99:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r27
	and r2, r2, r28
	j .LBB0_80
.LBB0_100:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r14
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	mfence { sm }
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r2, zero, 2
	bneq r14, r2, .LBB0_39
.LBB0_101:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 193 7 is_stmt 1               # parallel-rne.mlir:193:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_103
.LBB0_102:                              # %middle.block107
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 11
	addli r9, zero, 6
	zext_int2long r[7:8], r2
	addli r2, r30, -2424
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	.loc	1 201 9 is_stmt 1               # parallel-rne.mlir:201:9
	setlt.ul r2, r[11:12], r[7:8]
	addli.d r[7:8], r[11:12], 1
	beq r2, zero, .LBB0_131
.LBB0_103:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_112 Depth 3
                                        #       Child Loop BB0_106 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -2424
	sll.d r[21:22], r[7:8], r9
	store.d r[7:8], 0(r2)                   # 8-byte Folded Spill
	.loc	1 202 11 is_stmt 1              # parallel-rne.mlir:202:11
	bneq r6, r10, .LBB0_110
# %bb.104:                              # %scalar.ph101.preheader
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_106
.LBB0_105:                              # %scalar.ph101
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	setlt.ul r9, r[7:8], r[3:4]
	.loc	1 217 13 is_stmt 1              # parallel-rne.mlir:217:13
	add.s r2, r6, r2
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	stores.w r5, 0(r2)
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	beq r9, zero, .LBB0_102
.LBB0_106:                              # %scalar.ph101
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	add.ul r[11:12], r[7:8], r[21:22]
	slli r2, r11, 2
	add.s r5, r10, r2
	loads.w r9, 0(r5)
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	and r11, r9, r24
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	setlt.u r5, r26, r11
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r5, zero, .LBB0_108
# %bb.107:                              # %scalar.ph101
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r9, 0
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r11, r1, r11
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r11, zero, .LBB0_105
	j .LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r9, r5
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r11, r1, r11
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r11, zero, .LBB0_105
.LBB0_109:                              # %scalar.ph101
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r9, 16
	andi r5, r5, 1
	add.s r5, r9, r5
	add.s r5, r5, r27
	and r5, r5, r28
	j .LBB0_105
.LBB0_110:                              # %vector.body103.preheader
                                        #   in Loop: Header=BB0_103 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_112
.LBB0_111:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 202 11 is_stmt 1              # parallel-rne.mlir:202:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	add.s r7, r6, r7
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	seteq.d r8, r[13:14], r[16:17]
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	stores.w r2, 12(r7)
	stores.w r5, 8(r7)
	stores.w r12, 4(r7)
	stores.w r23, 0(r7)
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	bneq r8, zero, .LBB0_102
.LBB0_112:                              # %vector.body103
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	add.ul r[7:8], r[13:14], r[21:22]
	slli r7, r7, 2
	add.s r23, r10, r7
	loads.w r8, 12(r23)
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	and r15, r8, r24
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	setlt.u r2, r26, r15
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r2, zero, .LBB0_114
# %bb.113:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r8, 0
	j .LBB0_115
.LBB0_114:                              #   in Loop: Header=BB0_112 Depth=3
	lui r2, 1024
	or r2, r8, r2
.LBB0_115:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r20, 8(r23)
	and r11, r20, r24
	setlt.u r5, r26, r11
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r5, zero, .LBB0_117
# %bb.116:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r20, 0
	j .LBB0_118
.LBB0_117:                              #   in Loop: Header=BB0_112 Depth=3
	lui r5, 1024
	or r5, r20, r5
.LBB0_118:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r9, 4(r23)
	and r18, r9, r24
	setlt.u r12, r26, r18
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r12, zero, .LBB0_120
# %bb.119:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
	j .LBB0_121
.LBB0_120:                              #   in Loop: Header=BB0_112 Depth=3
	lui r12, 1024
	or r12, r9, r12
.LBB0_121:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r19, 0(r23)
	and r25, r19, r24
	setlt.u r23, r26, r25
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r23, zero, .LBB0_123
# %bb.122:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r19, 0
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r25, r1, r25
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r25, zero, .LBB0_124
	j .LBB0_125
.LBB0_123:                              #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r23, 1024
	or r23, r19, r23
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r25, r1, r25
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r25, zero, .LBB0_125
.LBB0_124:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r23, r19, 16
	andi r23, r23, 1
	add.s r19, r19, r23
	add.s r19, r19, r27
	and r23, r19, r28
.LBB0_125:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	setlt.u r18, r1, r18
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r18, zero, .LBB0_128
# %bb.126:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r1, r11
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r9, zero, .LBB0_129
.LBB0_127:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r1, r15
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r9, zero, .LBB0_111
	j .LBB0_130
.LBB0_128:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r9, 16
	andi r12, r12, 1
	add.s r9, r9, r12
	add.s r9, r9, r27
	and r12, r9, r28
	setlt.u r9, r1, r11
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r9, zero, .LBB0_127
.LBB0_129:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r20, 16
	andi r5, r5, 1
	add.s r5, r20, r5
	add.s r5, r5, r27
	and r5, r5, r28
	setlt.u r9, r1, r15
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r9, zero, .LBB0_111
.LBB0_130:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r27
	and r2, r2, r28
	j .LBB0_111
.LBB0_131:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r14
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_132:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 222 7 is_stmt 1               # parallel-rne.mlir:222:7
	loadli.w r2,  -2436(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_167
# %bb.133:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	addli r2, zero, 4
	beq r14, r2, .LBB0_198
.LBB0_134:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 7
	.loc	1 280 7 is_stmt 1               # parallel-rne.mlir:280:7
	beq r14, r2, .LBB0_229
.LBB0_135:                              #   in Loop: Header=BB0_8 Depth=1
	beq r14, r9, .LBB0_259
# %bb.136:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 5
	bneq r14, r2, .LBB0_290
# %bb.137:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_139
.LBB0_138:                              # %middle.block
                                        #   in Loop: Header=BB0_139 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 23
	addli r9, zero, 6
	zext_int2long r[7:8], r2
	addli r2, r30, -2424
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	.loc	1 288 9 is_stmt 1               # parallel-rne.mlir:288:9
	setlt.ul r2, r[11:12], r[7:8]
	addli.d r[7:8], r[11:12], 1
	beq r2, zero, .LBB0_289
.LBB0_139:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_148 Depth 3
                                        #       Child Loop BB0_142 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -2424
	sll.d r[21:22], r[7:8], r9
	store.d r[7:8], 0(r2)                   # 8-byte Folded Spill
	.loc	1 289 11 is_stmt 1              # parallel-rne.mlir:289:11
	bneq r6, r10, .LBB0_146
# %bb.140:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_139 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_142
.LBB0_141:                              # %scalar.ph
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	setlt.ul r9, r[7:8], r[3:4]
	.loc	1 304 13 is_stmt 1              # parallel-rne.mlir:304:13
	add.s r2, r6, r2
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	stores.w r5, 0(r2)
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	beq r9, zero, .LBB0_138
.LBB0_142:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_139 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	add.ul r[11:12], r[7:8], r[21:22]
	slli r2, r11, 2
	add.s r5, r10, r2
	loads.w r9, 0(r5)
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	and r11, r9, r24
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	setlt.u r5, r26, r11
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r5, zero, .LBB0_144
# %bb.143:                              # %scalar.ph
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r9, 0
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r11, r1, r11
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r11, zero, .LBB0_141
	j .LBB0_145
.LBB0_144:                              #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r9, r5
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r11, r1, r11
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r11, zero, .LBB0_141
.LBB0_145:                              # %scalar.ph
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r9, 16
	andi r5, r5, 1
	add.s r5, r9, r5
	add.s r5, r5, r27
	and r5, r5, r28
	j .LBB0_141
.LBB0_146:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_139 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_148
.LBB0_147:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 289 11 is_stmt 1              # parallel-rne.mlir:289:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	add.s r2, r6, r2
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	seteq.d r8, r[13:14], r[16:17]
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	stores.w r7, 12(r2)
	stores.w r5, 8(r2)
	stores.w r15, 4(r2)
	stores.w r23, 0(r2)
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	bneq r8, zero, .LBB0_138
.LBB0_148:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_139 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	add.ul r[7:8], r[13:14], r[21:22]
	slli r2, r7, 2
	add.s r23, r10, r2
	loads.w r8, 12(r23)
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	and r12, r8, r24
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	setlt.u r5, r26, r12
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r5, zero, .LBB0_150
# %bb.149:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	j .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_148 Depth=3
	lui r5, 1024
	or r7, r8, r5
.LBB0_151:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r20, 8(r23)
	and r11, r20, r24
	setlt.u r5, r26, r11
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r5, zero, .LBB0_153
# %bb.152:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r20, 0
	j .LBB0_154
.LBB0_153:                              #   in Loop: Header=BB0_148 Depth=3
	lui r5, 1024
	or r5, r20, r5
.LBB0_154:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r9, 4(r23)
	and r18, r9, r24
	setlt.u r15, r26, r18
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r15, zero, .LBB0_156
# %bb.155:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	j .LBB0_157
.LBB0_156:                              #   in Loop: Header=BB0_148 Depth=3
	lui r15, 1024
	or r15, r9, r15
.LBB0_157:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r19, 0(r23)
	and r25, r19, r24
	setlt.u r23, r26, r25
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r23, zero, .LBB0_163
# %bb.158:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r19, 0
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r25, r1, r25
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r25, zero, .LBB0_160
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r23, r19, 16
	andi r23, r23, 1
	add.s r19, r19, r23
	add.s r19, r19, r27
	and r23, r19, r28
.LBB0_160:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	setlt.u r18, r1, r18
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r18, zero, .LBB0_164
# %bb.161:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r1, r11
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r9, zero, .LBB0_165
.LBB0_162:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r1, r12
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r9, zero, .LBB0_147
	j .LBB0_166
.LBB0_163:                              #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r23, 1024
	or r23, r19, r23
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r25, r1, r25
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r25, zero, .LBB0_159
	j .LBB0_160
.LBB0_164:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r15, r9, 16
	andi r15, r15, 1
	add.s r9, r9, r15
	add.s r9, r9, r27
	and r15, r9, r28
	setlt.u r9, r1, r11
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r9, zero, .LBB0_162
.LBB0_165:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r20, 16
	andi r5, r5, 1
	add.s r5, r20, r5
	add.s r5, r5, r27
	and r5, r5, r28
	setlt.u r9, r1, r12
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r9, zero, .LBB0_147
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r27
	and r7, r7, r28
	j .LBB0_147
.LBB0_167:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 12
	.loc	1 222 7 is_stmt 1               # parallel-rne.mlir:222:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_169
.LBB0_168:                              # %middle.block89
                                        #   in Loop: Header=BB0_169 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 15
	addli r9, zero, 6
	zext_int2long r[7:8], r2
	addli r2, r30, -2424
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	.loc	1 230 9 is_stmt 1               # parallel-rne.mlir:230:9
	setlt.ul r2, r[11:12], r[7:8]
	addli.d r[7:8], r[11:12], 1
	beq r2, zero, .LBB0_197
.LBB0_169:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_178 Depth 3
                                        #       Child Loop BB0_172 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -2424
	sll.d r[21:22], r[7:8], r9
	store.d r[7:8], 0(r2)                   # 8-byte Folded Spill
	.loc	1 231 11 is_stmt 1              # parallel-rne.mlir:231:11
	bneq r6, r10, .LBB0_176
# %bb.170:                              # %scalar.ph83.preheader
                                        #   in Loop: Header=BB0_169 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_172
.LBB0_171:                              # %scalar.ph83
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	setlt.ul r9, r[7:8], r[3:4]
	.loc	1 246 13 is_stmt 1              # parallel-rne.mlir:246:13
	add.s r2, r6, r2
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	stores.w r5, 0(r2)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	beq r9, zero, .LBB0_168
.LBB0_172:                              # %scalar.ph83
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_169 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[11:12], r[7:8], r[21:22]
	slli r2, r11, 2
	add.s r5, r10, r2
	loads.w r9, 0(r5)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r11, r9, r24
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	setlt.u r5, r26, r11
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r5, zero, .LBB0_174
# %bb.173:                              # %scalar.ph83
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r9, 0
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r11, r1, r11
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r11, zero, .LBB0_171
	j .LBB0_175
.LBB0_174:                              #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r9, r5
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r11, r1, r11
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r11, zero, .LBB0_171
.LBB0_175:                              # %scalar.ph83
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r9, 16
	andi r5, r5, 1
	add.s r5, r9, r5
	add.s r5, r5, r27
	and r5, r5, r28
	j .LBB0_171
.LBB0_176:                              # %vector.body85.preheader
                                        #   in Loop: Header=BB0_169 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_178
.LBB0_177:                              # %vector.body85
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 231 11 is_stmt 1              # parallel-rne.mlir:231:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	add.s r2, r6, r2
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	seteq.d r8, r[13:14], r[16:17]
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	stores.w r7, 12(r2)
	stores.w r5, 8(r2)
	stores.w r15, 4(r2)
	stores.w r23, 0(r2)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	bneq r8, zero, .LBB0_168
.LBB0_178:                              # %vector.body85
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_169 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[7:8], r[13:14], r[21:22]
	slli r2, r7, 2
	add.s r23, r10, r2
	loads.w r8, 12(r23)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r12, r8, r24
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	setlt.u r5, r26, r12
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r5, zero, .LBB0_180
# %bb.179:                              # %vector.body85
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	j .LBB0_181
.LBB0_180:                              #   in Loop: Header=BB0_178 Depth=3
	lui r5, 1024
	or r7, r8, r5
.LBB0_181:                              # %vector.body85
                                        #   in Loop: Header=BB0_178 Depth=3
	loads.w r20, 8(r23)
	and r11, r20, r24
	setlt.u r5, r26, r11
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r5, zero, .LBB0_183
# %bb.182:                              # %vector.body85
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r20, 0
	j .LBB0_184
.LBB0_183:                              #   in Loop: Header=BB0_178 Depth=3
	lui r5, 1024
	or r5, r20, r5
.LBB0_184:                              # %vector.body85
                                        #   in Loop: Header=BB0_178 Depth=3
	loads.w r9, 4(r23)
	and r18, r9, r24
	setlt.u r15, r26, r18
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r15, zero, .LBB0_186
# %bb.185:                              # %vector.body85
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	j .LBB0_187
.LBB0_186:                              #   in Loop: Header=BB0_178 Depth=3
	lui r15, 1024
	or r15, r9, r15
.LBB0_187:                              # %vector.body85
                                        #   in Loop: Header=BB0_178 Depth=3
	loads.w r19, 0(r23)
	and r25, r19, r24
	setlt.u r23, r26, r25
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r23, zero, .LBB0_193
# %bb.188:                              # %vector.body85
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r19, 0
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r25, r1, r25
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r25, zero, .LBB0_190
.LBB0_189:                              # %vector.body85
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r23, r19, 16
	andi r23, r23, 1
	add.s r19, r19, r23
	add.s r19, r19, r27
	and r23, r19, r28
.LBB0_190:                              # %vector.body85
                                        #   in Loop: Header=BB0_178 Depth=3
	setlt.u r18, r1, r18
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r18, zero, .LBB0_194
# %bb.191:                              # %vector.body85
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r1, r11
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r9, zero, .LBB0_195
.LBB0_192:                              # %vector.body85
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r1, r12
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r9, zero, .LBB0_177
	j .LBB0_196
.LBB0_193:                              #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r23, 1024
	or r23, r19, r23
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r25, r1, r25
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r25, zero, .LBB0_189
	j .LBB0_190
.LBB0_194:                              # %vector.body85
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r15, r9, 16
	andi r15, r15, 1
	add.s r9, r9, r15
	add.s r9, r9, r27
	and r15, r9, r28
	setlt.u r9, r1, r11
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r9, zero, .LBB0_192
.LBB0_195:                              # %vector.body85
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r20, 16
	andi r5, r5, 1
	add.s r5, r20, r5
	add.s r5, r5, r27
	and r5, r5, r28
	setlt.u r9, r1, r12
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r9, zero, .LBB0_177
.LBB0_196:                              # %vector.body85
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r27
	and r7, r7, r28
	j .LBB0_177
.LBB0_197:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r14
	.loc	1 222 7                         # parallel-rne.mlir:222:7
	mfence { sm }
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	addli r2, zero, 4
	bneq r14, r2, .LBB0_134
.LBB0_198:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_200
.LBB0_199:                              # %middle.block80
                                        #   in Loop: Header=BB0_200 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 19
	addli r9, zero, 6
	zext_int2long r[7:8], r2
	addli r2, r30, -2424
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	.loc	1 259 9 is_stmt 1               # parallel-rne.mlir:259:9
	setlt.ul r2, r[11:12], r[7:8]
	addli.d r[7:8], r[11:12], 1
	beq r2, zero, .LBB0_228
.LBB0_200:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_209 Depth 3
                                        #       Child Loop BB0_203 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -2424
	sll.d r[21:22], r[7:8], r9
	store.d r[7:8], 0(r2)                   # 8-byte Folded Spill
	.loc	1 260 11 is_stmt 1              # parallel-rne.mlir:260:11
	bneq r6, r10, .LBB0_207
# %bb.201:                              # %scalar.ph74.preheader
                                        #   in Loop: Header=BB0_200 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_203
.LBB0_202:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	setlt.ul r9, r[7:8], r[3:4]
	.loc	1 275 13 is_stmt 1              # parallel-rne.mlir:275:13
	add.s r2, r6, r2
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	stores.w r5, 0(r2)
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	beq r9, zero, .LBB0_199
.LBB0_203:                              # %scalar.ph74
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_200 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.ul r[11:12], r[7:8], r[21:22]
	slli r2, r11, 2
	add.s r5, r10, r2
	loads.w r9, 0(r5)
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	and r11, r9, r24
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	setlt.u r5, r26, r11
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r5, zero, .LBB0_205
# %bb.204:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r9, 0
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r11, r1, r11
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r11, zero, .LBB0_202
	j .LBB0_206
.LBB0_205:                              #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r9, r5
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r11, r1, r11
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r11, zero, .LBB0_202
.LBB0_206:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r9, 16
	andi r5, r5, 1
	add.s r5, r9, r5
	add.s r5, r5, r27
	and r5, r5, r28
	j .LBB0_202
.LBB0_207:                              # %vector.body76.preheader
                                        #   in Loop: Header=BB0_200 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_209
.LBB0_208:                              # %vector.body76
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 260 11 is_stmt 1              # parallel-rne.mlir:260:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	add.s r2, r6, r2
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	seteq.d r8, r[13:14], r[16:17]
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	stores.w r7, 12(r2)
	stores.w r5, 8(r2)
	stores.w r15, 4(r2)
	stores.w r23, 0(r2)
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	bneq r8, zero, .LBB0_199
.LBB0_209:                              # %vector.body76
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_200 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.ul r[7:8], r[13:14], r[21:22]
	slli r2, r7, 2
	add.s r23, r10, r2
	loads.w r8, 12(r23)
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	and r12, r8, r24
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	setlt.u r5, r26, r12
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r5, zero, .LBB0_211
# %bb.210:                              # %vector.body76
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	j .LBB0_212
.LBB0_211:                              #   in Loop: Header=BB0_209 Depth=3
	lui r5, 1024
	or r7, r8, r5
.LBB0_212:                              # %vector.body76
                                        #   in Loop: Header=BB0_209 Depth=3
	loads.w r20, 8(r23)
	and r11, r20, r24
	setlt.u r5, r26, r11
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r5, zero, .LBB0_214
# %bb.213:                              # %vector.body76
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r20, 0
	j .LBB0_215
.LBB0_214:                              #   in Loop: Header=BB0_209 Depth=3
	lui r5, 1024
	or r5, r20, r5
.LBB0_215:                              # %vector.body76
                                        #   in Loop: Header=BB0_209 Depth=3
	loads.w r9, 4(r23)
	and r18, r9, r24
	setlt.u r15, r26, r18
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r15, zero, .LBB0_217
# %bb.216:                              # %vector.body76
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	j .LBB0_218
.LBB0_217:                              #   in Loop: Header=BB0_209 Depth=3
	lui r15, 1024
	or r15, r9, r15
.LBB0_218:                              # %vector.body76
                                        #   in Loop: Header=BB0_209 Depth=3
	loads.w r19, 0(r23)
	and r25, r19, r24
	setlt.u r23, r26, r25
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r23, zero, .LBB0_224
# %bb.219:                              # %vector.body76
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r19, 0
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r25, r1, r25
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r25, zero, .LBB0_221
.LBB0_220:                              # %vector.body76
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r23, r19, 16
	andi r23, r23, 1
	add.s r19, r19, r23
	add.s r19, r19, r27
	and r23, r19, r28
.LBB0_221:                              # %vector.body76
                                        #   in Loop: Header=BB0_209 Depth=3
	setlt.u r18, r1, r18
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r18, zero, .LBB0_225
# %bb.222:                              # %vector.body76
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r1, r11
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r9, zero, .LBB0_226
.LBB0_223:                              # %vector.body76
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r1, r12
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r9, zero, .LBB0_208
	j .LBB0_227
.LBB0_224:                              #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r23, 1024
	or r23, r19, r23
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r25, r1, r25
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r25, zero, .LBB0_220
	j .LBB0_221
.LBB0_225:                              # %vector.body76
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r15, r9, 16
	andi r15, r15, 1
	add.s r9, r9, r15
	add.s r9, r9, r27
	and r15, r9, r28
	setlt.u r9, r1, r11
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r9, zero, .LBB0_223
.LBB0_226:                              # %vector.body76
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r20, 16
	andi r5, r5, 1
	add.s r5, r20, r5
	add.s r5, r5, r27
	and r5, r5, r28
	setlt.u r9, r1, r12
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r9, zero, .LBB0_208
.LBB0_227:                              # %vector.body76
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r27
	and r7, r7, r28
	j .LBB0_208
.LBB0_228:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r14
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	mfence { sm }
	addli r2, zero, 7
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	bneq r14, r2, .LBB0_135
.LBB0_229:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 338 7 is_stmt 1               # parallel-rne.mlir:338:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_231
.LBB0_230:                              # %middle.block71
                                        #   in Loop: Header=BB0_231 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 31
	addli r9, zero, 6
	zext_int2long r[7:8], r2
	addli r2, r30, -2424
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	.loc	1 346 9 is_stmt 1               # parallel-rne.mlir:346:9
	setlt.ul r2, r[11:12], r[7:8]
	addli.d r[7:8], r[11:12], 1
	beq r2, zero, .LBB0_289
.LBB0_231:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_240 Depth 3
                                        #       Child Loop BB0_234 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -2424
	sll.d r[21:22], r[7:8], r9
	store.d r[7:8], 0(r2)                   # 8-byte Folded Spill
	.loc	1 347 11 is_stmt 1              # parallel-rne.mlir:347:11
	bneq r6, r10, .LBB0_238
# %bb.232:                              # %scalar.ph65.preheader
                                        #   in Loop: Header=BB0_231 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_234
.LBB0_233:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	setlt.ul r9, r[7:8], r[3:4]
	.loc	1 362 13 is_stmt 1              # parallel-rne.mlir:362:13
	add.s r2, r6, r2
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	stores.w r5, 0(r2)
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	beq r9, zero, .LBB0_230
.LBB0_234:                              # %scalar.ph65
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_231 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	add.ul r[11:12], r[7:8], r[21:22]
	slli r2, r11, 2
	add.s r5, r10, r2
	loads.w r9, 0(r5)
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r11, r9, r24
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	setlt.u r5, r26, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r5, zero, .LBB0_236
# %bb.235:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r9, 0
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r11, r1, r11
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r11, zero, .LBB0_233
	j .LBB0_237
.LBB0_236:                              #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r9, r5
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r11, r1, r11
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r11, zero, .LBB0_233
.LBB0_237:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r9, 16
	andi r5, r5, 1
	add.s r5, r9, r5
	add.s r5, r5, r27
	and r5, r5, r28
	j .LBB0_233
.LBB0_238:                              # %vector.body67.preheader
                                        #   in Loop: Header=BB0_231 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_240
.LBB0_239:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 347 11 is_stmt 1              # parallel-rne.mlir:347:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	add.s r2, r6, r2
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	seteq.d r8, r[13:14], r[16:17]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	stores.w r7, 12(r2)
	stores.w r5, 8(r2)
	stores.w r15, 4(r2)
	stores.w r23, 0(r2)
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	bneq r8, zero, .LBB0_230
.LBB0_240:                              # %vector.body67
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_231 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	add.ul r[7:8], r[13:14], r[21:22]
	slli r2, r7, 2
	add.s r23, r10, r2
	loads.w r8, 12(r23)
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r12, r8, r24
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	setlt.u r5, r26, r12
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r5, zero, .LBB0_242
# %bb.241:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	j .LBB0_243
.LBB0_242:                              #   in Loop: Header=BB0_240 Depth=3
	lui r5, 1024
	or r7, r8, r5
.LBB0_243:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	loads.w r20, 8(r23)
	and r11, r20, r24
	setlt.u r5, r26, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r5, zero, .LBB0_245
# %bb.244:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r20, 0
	j .LBB0_246
.LBB0_245:                              #   in Loop: Header=BB0_240 Depth=3
	lui r5, 1024
	or r5, r20, r5
.LBB0_246:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	loads.w r9, 4(r23)
	and r18, r9, r24
	setlt.u r15, r26, r18
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r15, zero, .LBB0_248
# %bb.247:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	j .LBB0_249
.LBB0_248:                              #   in Loop: Header=BB0_240 Depth=3
	lui r15, 1024
	or r15, r9, r15
.LBB0_249:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	loads.w r19, 0(r23)
	and r25, r19, r24
	setlt.u r23, r26, r25
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r23, zero, .LBB0_251
# %bb.250:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r19, 0
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r25, r1, r25
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r25, zero, .LBB0_252
	j .LBB0_253
.LBB0_251:                              #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r23, 1024
	or r23, r19, r23
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r25, r1, r25
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r25, zero, .LBB0_253
.LBB0_252:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r23, r19, 16
	andi r23, r23, 1
	add.s r19, r19, r23
	add.s r19, r19, r27
	and r23, r19, r28
.LBB0_253:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	setlt.u r18, r1, r18
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r18, zero, .LBB0_256
# %bb.254:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r1, r11
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r9, zero, .LBB0_257
.LBB0_255:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r1, r12
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r9, zero, .LBB0_239
	j .LBB0_258
.LBB0_256:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r9, 16
	andi r15, r15, 1
	add.s r9, r9, r15
	add.s r9, r9, r27
	and r15, r9, r28
	setlt.u r9, r1, r11
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r9, zero, .LBB0_255
.LBB0_257:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r20, 16
	andi r5, r5, 1
	add.s r5, r20, r5
	add.s r5, r5, r27
	and r5, r5, r28
	setlt.u r9, r1, r12
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r9, zero, .LBB0_239
.LBB0_258:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r27
	and r7, r7, r28
	j .LBB0_239
.LBB0_259:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 24
	.loc	1 309 7 is_stmt 1               # parallel-rne.mlir:309:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_261
.LBB0_260:                              # %middle.block62
                                        #   in Loop: Header=BB0_261 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 27
	addli r9, zero, 6
	zext_int2long r[7:8], r2
	addli r2, r30, -2424
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	.loc	1 317 9 is_stmt 1               # parallel-rne.mlir:317:9
	setlt.ul r2, r[11:12], r[7:8]
	addli.d r[7:8], r[11:12], 1
	beq r2, zero, .LBB0_289
.LBB0_261:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_270 Depth 3
                                        #       Child Loop BB0_264 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -2424
	sll.d r[21:22], r[7:8], r9
	store.d r[7:8], 0(r2)                   # 8-byte Folded Spill
	.loc	1 318 11 is_stmt 1              # parallel-rne.mlir:318:11
	bneq r6, r10, .LBB0_268
# %bb.262:                              # %scalar.ph56.preheader
                                        #   in Loop: Header=BB0_261 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_264
.LBB0_263:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	setlt.ul r9, r[7:8], r[3:4]
	.loc	1 333 13 is_stmt 1              # parallel-rne.mlir:333:13
	add.s r2, r6, r2
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	stores.w r5, 0(r2)
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	beq r9, zero, .LBB0_260
.LBB0_264:                              # %scalar.ph56
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_261 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	add.ul r[11:12], r[7:8], r[21:22]
	slli r2, r11, 2
	add.s r5, r10, r2
	loads.w r9, 0(r5)
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	and r11, r9, r24
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	setlt.u r5, r26, r11
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r5, zero, .LBB0_266
# %bb.265:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r9, 0
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r11, r1, r11
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r11, zero, .LBB0_263
	j .LBB0_267
.LBB0_266:                              #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r9, r5
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r11, r1, r11
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r11, zero, .LBB0_263
.LBB0_267:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r9, 16
	andi r5, r5, 1
	add.s r5, r9, r5
	add.s r5, r5, r27
	and r5, r5, r28
	j .LBB0_263
.LBB0_268:                              # %vector.body58.preheader
                                        #   in Loop: Header=BB0_261 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_270
.LBB0_269:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 318 11 is_stmt 1              # parallel-rne.mlir:318:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	add.s r2, r6, r2
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	seteq.d r8, r[13:14], r[16:17]
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	stores.w r7, 12(r2)
	stores.w r5, 8(r2)
	stores.w r15, 4(r2)
	stores.w r23, 0(r2)
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	bneq r8, zero, .LBB0_260
.LBB0_270:                              # %vector.body58
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_261 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	add.ul r[7:8], r[13:14], r[21:22]
	slli r2, r7, 2
	add.s r23, r10, r2
	loads.w r8, 12(r23)
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	and r12, r8, r24
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	setlt.u r5, r26, r12
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r5, zero, .LBB0_272
# %bb.271:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	j .LBB0_273
.LBB0_272:                              #   in Loop: Header=BB0_270 Depth=3
	lui r5, 1024
	or r7, r8, r5
.LBB0_273:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	loads.w r20, 8(r23)
	and r11, r20, r24
	setlt.u r5, r26, r11
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r5, zero, .LBB0_275
# %bb.274:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r20, 0
	j .LBB0_276
.LBB0_275:                              #   in Loop: Header=BB0_270 Depth=3
	lui r5, 1024
	or r5, r20, r5
.LBB0_276:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	loads.w r9, 4(r23)
	and r18, r9, r24
	setlt.u r15, r26, r18
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r15, zero, .LBB0_278
# %bb.277:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	j .LBB0_279
.LBB0_278:                              #   in Loop: Header=BB0_270 Depth=3
	lui r15, 1024
	or r15, r9, r15
.LBB0_279:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	loads.w r19, 0(r23)
	and r25, r19, r24
	setlt.u r23, r26, r25
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r23, zero, .LBB0_281
# %bb.280:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r19, 0
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r25, r1, r25
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r25, zero, .LBB0_282
	j .LBB0_283
.LBB0_281:                              #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r23, 1024
	or r23, r19, r23
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r25, r1, r25
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r25, zero, .LBB0_283
.LBB0_282:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r23, r19, 16
	andi r23, r23, 1
	add.s r19, r19, r23
	add.s r19, r19, r27
	and r23, r19, r28
.LBB0_283:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	setlt.u r18, r1, r18
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r18, zero, .LBB0_286
# %bb.284:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r1, r11
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r9, zero, .LBB0_287
.LBB0_285:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r1, r12
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r9, zero, .LBB0_269
	j .LBB0_288
.LBB0_286:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r9, 16
	andi r15, r15, 1
	add.s r9, r9, r15
	add.s r9, r9, r27
	and r15, r9, r28
	setlt.u r9, r1, r11
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r9, zero, .LBB0_285
.LBB0_287:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r20, 16
	andi r5, r5, 1
	add.s r5, r20, r5
	add.s r5, r5, r27
	and r5, r5, r28
	setlt.u r9, r1, r12
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r9, zero, .LBB0_269
.LBB0_288:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r27
	and r7, r7, r28
	j .LBB0_269
.LBB0_289:                              # %.sink.split48
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r14
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_290:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 367 7 is_stmt 1               # parallel-rne.mlir:367:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	loadli.w r2,  -2436(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_5
# %bb.291:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	bneq r14, zero, .LBB0_7
# %bb.292:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	loadli.w r2,  -2480(r30)                # 4-byte Folded Reload
	addli r4, zero, 192
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	loadli.w r7,  -2476(r30)                # 4-byte Folded Reload
	zext_int2long r[9:10], zero
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	addli r12, r30, -2472
	addli r11, zero, 14
	addli r13, zero, 1
	ori r6, r6, 64
	addli r15, zero, 64
	zext_int2long r[4:5], r4
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	zext_int2long r[2:3], r2
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	sext_int2long r[7:8], r7
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	min.ul r[4:5], r[2:3], r[4:5]
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	min.sl r[9:10], r[7:8], r[9:10]
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	addli.d r[4:5], r[4:5], 64
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	max.ul r[4:5], r[4:5], r[2:3]
	sub.sl r[2:3], r[4:5], r[2:3]
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	addli.d r[4:5], r[9:10], 32
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	load.d r[9:10], 0(r12)                  # 8-byte Folded Reload
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	max.sl r[4:5], r[4:5], r[7:8]
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	min.ul r[2:3], r[2:3], r[16:17]
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	sll.d r[9:10], r[9:10], r11
	addli r11, r30, -2464
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	sub.sl r[4:5], r[4:5], r[7:8]
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	load.d r[7:8], 16(r30)
	add.ul r[7:8], r[7:8], r[9:10]
	load.d r[9:10], 0(r11)                  # 8-byte Folded Reload
	addli r11, zero, 32
	zext_int2long r[11:12], r11
	sll.d r[9:10], r[9:10], r13
	.loc	1 380 13                        # parallel-rne.mlir:380:13
	min.sl r[4:5], r[4:5], r[11:12]
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	add.ul r[7:8], r[7:8], r[9:10]
	addli r10, zero, 12
	addli r9, zero, 6
	xwait r10, 0
	addli r10, zero, 5
	lock zero, r10
	dma_cfg r13, r13, zero, 0
	dma_cfg zero, r13, zero, 1
	dma_cfg r8, zero, zero, 2
	dma_cfg r7, r6, r15, 3
	addli r6, r2, 31
	slli r2, r2, 1
	addli r3, zero, 128
	srli r6, r6, 5
	andi r2, r2, 62
	dma_cfg r15, r3, r6, 4
	addli r3, zero, 256
	addli r6, zero, 512
	dma_cfg r6, r3, r4, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	addli r2, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r10
	j .LBB0_6
.LBB0_293:                              # %._crit_edge
	.loc	1 387 5                         # parallel-rne.mlir:387:5
	xsignal zero, 0
	bneq r14, zero, .LBB0_295
# %bb.294:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 387 5                         # parallel-rne.mlir:387:5
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
.LBB0_295:
	.loc	1 388 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:388:5
	addli sp, sp, 2488
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
	.long	2552                            # 0x9f8
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
.asciz	"parallel-rne.mlir"             # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/division-jjzrf8xb" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
