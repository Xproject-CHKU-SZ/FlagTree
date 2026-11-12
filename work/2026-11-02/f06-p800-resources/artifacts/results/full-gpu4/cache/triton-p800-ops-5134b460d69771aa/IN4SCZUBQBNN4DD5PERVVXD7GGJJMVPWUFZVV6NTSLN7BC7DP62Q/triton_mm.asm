	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-7e7u6sa6" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2552
	addli r1, zero, 1
.Ltmp0:
	.loc	1 31 5 prologue_end             # parallel-rne.mlir:31:5
	core_id r10
	addli r30, sp, 2488
	xsignal_mode_cfg r1
	beq r10, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	uni_sram_cfg r1, r1
	lui r3, 1048575
	lock zero, r2
	ew_cfg r1, zero, zero, 16
	ori r1, r3, 4095
	addli r3, zero, 3
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
	addli r1, zero, 5
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	.loc	1 33 10 is_stmt 1               # parallel-rne.mlir:33:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -500(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -1524(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -2024(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -2412(r30)
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r1, r2, r1
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	mul.s r3, r1, r3
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	addli r2, r2, -1
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	div.s r2, r2, r4
	ori r4, r5, 4095
	.loc	1 44 11                         # parallel-rne.mlir:44:11
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r4, -1520(r30)
	storeli.w r4, -1516(r30)
	storeli.w r4, -1512(r30)
	storeli.w r4, -1508(r30)
	storeli.w r4, -1504(r30)
	storeli.w r4, -1500(r30)
	storeli.w r4, -1496(r30)
	storeli.w r4, -1492(r30)
	storeli.w r4, -1488(r30)
	storeli.w r4, -1484(r30)
	storeli.w r4, -1480(r30)
	storeli.w r4, -1476(r30)
	storeli.w r4, -1472(r30)
	storeli.w r4, -1468(r30)
	storeli.w r4, -1464(r30)
	storeli.w r4, -1460(r30)
	storeli.w r4, -1456(r30)
	storeli.w r4, -1452(r30)
	storeli.w r4, -1448(r30)
	storeli.w r4, -1444(r30)
	storeli.w r4, -1440(r30)
	storeli.w r4, -1436(r30)
	storeli.w r4, -1432(r30)
	storeli.w r4, -1428(r30)
	storeli.w r4, -1424(r30)
	storeli.w r4, -1420(r30)
	storeli.w r4, -1416(r30)
	storeli.w r4, -1412(r30)
	storeli.w r4, -1408(r30)
	storeli.w r4, -1404(r30)
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
	storeli.w r4, -1144(r30)
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
	storeli.w r4, -644(r30)
	storeli.w r4, -648(r30)
	storeli.w r4, -652(r30)
	storeli.w r4, -656(r30)
	storeli.w r4, -660(r30)
	storeli.w r4, -664(r30)
	storeli.w r4, -668(r30)
	storeli.w r4, -672(r30)
	storeli.w r4, -676(r30)
	storeli.w r4, -680(r30)
	storeli.w r4, -684(r30)
	storeli.w r4, -688(r30)
	storeli.w r4, -692(r30)
	storeli.w r4, -696(r30)
	storeli.w r4, -700(r30)
	storeli.w r4, -704(r30)
	storeli.w r4, -708(r30)
	storeli.w r4, -712(r30)
	storeli.w r4, -716(r30)
	storeli.w r4, -720(r30)
	storeli.w r4, -724(r30)
	storeli.w r4, -728(r30)
	storeli.w r4, -732(r30)
	storeli.w r4, -736(r30)
	storeli.w r4, -740(r30)
	storeli.w r4, -744(r30)
	storeli.w r4, -748(r30)
	storeli.w r4, -752(r30)
	storeli.w r4, -756(r30)
	storeli.w r4, -760(r30)
	storeli.w r4, -764(r30)
	storeli.w r4, -768(r30)
	storeli.w r4, -772(r30)
	storeli.w r4, -776(r30)
	storeli.w r4, -780(r30)
	storeli.w r4, -784(r30)
	storeli.w r4, -788(r30)
	storeli.w r4, -792(r30)
	storeli.w r4, -796(r30)
	storeli.w r4, -800(r30)
	storeli.w r4, -804(r30)
	storeli.w r4, -808(r30)
	storeli.w r4, -812(r30)
	storeli.w r4, -816(r30)
	storeli.w r4, -820(r30)
	storeli.w r4, -824(r30)
	storeli.w r4, -828(r30)
	storeli.w r4, -832(r30)
	storeli.w r4, -836(r30)
	storeli.w r4, -840(r30)
	storeli.w r4, -844(r30)
	storeli.w r4, -848(r30)
	storeli.w r4, -852(r30)
	storeli.w r4, -856(r30)
	storeli.w r4, -860(r30)
	storeli.w r4, -864(r30)
	storeli.w r4, -868(r30)
	storeli.w r4, -872(r30)
	storeli.w r4, -876(r30)
	storeli.w r4, -880(r30)
	storeli.w r4, -884(r30)
	storeli.w r4, -888(r30)
	storeli.w r4, -892(r30)
	storeli.w r4, -896(r30)
	storeli.w r4, -900(r30)
	storeli.w r4, -904(r30)
	storeli.w r4, -908(r30)
	storeli.w r4, -912(r30)
	storeli.w r4, -916(r30)
	storeli.w r4, -920(r30)
	storeli.w r4, -924(r30)
	storeli.w r4, -928(r30)
	storeli.w r4, -932(r30)
	storeli.w r4, -936(r30)
	storeli.w r4, -940(r30)
	storeli.w r4, -944(r30)
	storeli.w r4, -948(r30)
	storeli.w r4, -952(r30)
	storeli.w r4, -956(r30)
	storeli.w r4, -960(r30)
	storeli.w r4, -964(r30)
	storeli.w r4, -968(r30)
	storeli.w r4, -972(r30)
	storeli.w r4, -976(r30)
	storeli.w r4, -980(r30)
	storeli.w r4, -984(r30)
	storeli.w r4, -988(r30)
	storeli.w r4, -992(r30)
	storeli.w r4, -996(r30)
	storeli.w r4, -1000(r30)
	storeli.w r4, -1004(r30)
	storeli.w r4, -1008(r30)
	storeli.w r4, -640(r30)
	storeli.w r4, -636(r30)
	storeli.w r4, -632(r30)
	storeli.w r4, -628(r30)
	storeli.w r4, -624(r30)
	storeli.w r4, -620(r30)
	storeli.w r4, -616(r30)
	storeli.w r4, -612(r30)
	storeli.w r4, -608(r30)
	storeli.w r4, -604(r30)
	storeli.w r4, -600(r30)
	storeli.w r4, -596(r30)
	storeli.w r4, -592(r30)
	storeli.w r4, -588(r30)
	storeli.w r4, -584(r30)
	storeli.w r4, -580(r30)
	storeli.w r4, -576(r30)
	storeli.w r4, -572(r30)
	storeli.w r4, -568(r30)
	storeli.w r4, -564(r30)
	storeli.w r4, -560(r30)
	storeli.w r4, -556(r30)
	storeli.w r4, -552(r30)
	storeli.w r4, -548(r30)
	storeli.w r4, -544(r30)
	storeli.w r4, -540(r30)
	storeli.w r4, -536(r30)
	storeli.w r4, -532(r30)
	storeli.w r4, -528(r30)
	storeli.w r4, -524(r30)
	storeli.w r4, -520(r30)
	storeli.w r4, -516(r30)
	storeli.w r4, -512(r30)
	storeli.w r4, -508(r30)
	storeli.w r4, -504(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	storeli.w r4, -1644(r30)
	storeli.w r4, -1640(r30)
	storeli.w r4, -1636(r30)
	storeli.w r4, -1632(r30)
	storeli.w r4, -1628(r30)
	storeli.w r4, -1624(r30)
	storeli.w r4, -1620(r30)
	storeli.w r4, -1616(r30)
	storeli.w r4, -1612(r30)
	storeli.w r4, -1608(r30)
	storeli.w r4, -1604(r30)
	storeli.w r4, -1600(r30)
	storeli.w r4, -1596(r30)
	storeli.w r4, -1592(r30)
	storeli.w r4, -1588(r30)
	storeli.w r4, -1584(r30)
	storeli.w r4, -1580(r30)
	storeli.w r4, -1576(r30)
	storeli.w r4, -1572(r30)
	storeli.w r4, -1568(r30)
	storeli.w r4, -1564(r30)
	storeli.w r4, -1560(r30)
	storeli.w r4, -1556(r30)
	storeli.w r4, -1552(r30)
	storeli.w r4, -1548(r30)
	storeli.w r4, -1544(r30)
	storeli.w r4, -1540(r30)
	storeli.w r4, -1536(r30)
	storeli.w r4, -1532(r30)
	storeli.w r4, -1528(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r1, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	fmac.s r2, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	min.s r3, r2, r3
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	ble.s r3, r1, .LBB0_279
# %bb.4:                                # %.lr.ph
	.loc	1 42 11                         # parallel-rne.mlir:42:11
	sext_int2long r[6:7], r1
	lui r1, 524287
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 42 11                         # parallel-rne.mlir:42:11
	addli r4, r30, -2488
	addli r9, zero, 4
	lui r27, 1024
	lui r28, 522240
	storeli.w zero, -2448(r30)              # 4-byte Folded Spill
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	ori r26, r1, 4095
	lui r1, 7
	lui r2, 522239
	lui r3, 1048560
	ori r1, r1, 4095
	ori r8, r2, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 369 7 is_stmt 1               # parallel-rne.mlir:369:7
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	addli r2, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, r30, -2456
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	.loc	1 50 5 is_stmt 1                # parallel-rne.mlir:50:5
	addli r2, r30, -2488
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	setlt.sl r2, r[6:7], r[4:5]
	beq r2, zero, .LBB0_279
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_40 Depth 2
                                        #       Child Loop BB0_47 Depth 3
                                        #       Child Loop BB0_42 Depth 3
                                        #     Child Loop BB0_71 Depth 2
                                        #       Child Loop BB0_80 Depth 3
                                        #       Child Loop BB0_74 Depth 3
                                        #     Child Loop BB0_101 Depth 2
                                        #       Child Loop BB0_108 Depth 3
                                        #       Child Loop BB0_103 Depth 3
                                        #     Child Loop BB0_163 Depth 2
                                        #       Child Loop BB0_170 Depth 3
                                        #       Child Loop BB0_165 Depth 3
                                        #     Child Loop BB0_192 Depth 2
                                        #       Child Loop BB0_199 Depth 3
                                        #       Child Loop BB0_194 Depth 3
                                        #     Child Loop BB0_135 Depth 2
                                        #       Child Loop BB0_142 Depth 3
                                        #       Child Loop BB0_137 Depth 3
                                        #     Child Loop BB0_249 Depth 2
                                        #       Child Loop BB0_256 Depth 3
                                        #       Child Loop BB0_251 Depth 3
                                        #     Child Loop BB0_221 Depth 2
                                        #       Child Loop BB0_228 Depth 3
                                        #       Child Loop BB0_223 Depth 3
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r22, zero, 32
	addli r21, zero, 4
	.loc	1 77 7 is_stmt 1                # parallel-rne.mlir:77:7
	bneq r10, r9, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	addli r4, r30, -2456
	addli r10, zero, 5
	addli r9, zero, 8
	addli r25, zero, 1
	.loc	1 78 7 is_stmt 1                # parallel-rne.mlir:78:7
	load.d r[16:17], 8(r30)
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	loadli.w r15,  -2412(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	loadli.w r24,  -2024(r30)
	addli r14, zero, 0
	store.d r[6:7], 0(r4)                   # 8-byte Folded Spill
	loadli.w r4,  28(r30)
	div.s r2, r6, r2
	loadli.w r6,  -2448(r30)                # 4-byte Folded Reload
	addli r7, zero, 1
	mod.s r5, r6, r10
	addli r6, r6, 1
	storeli.w r6, -2448(r30)                # 4-byte Folded Spill
	div.s r2, r2, r4
	addli r4, zero, 256
	div.s r4, r2, r4
	slli r6, r4, 3
	slli r4, r4, 8
	sub.s r7, r7, r6
	sub.s r4, r2, r4
	min.s r7, r7, r9
	div.s r4, r4, r7
	mod.s r2, r2, r7
	slli r7, r5, 13
	lui r5, 10
	add.s r12, r7, r5
	slli r5, r4, 5
	add.s r2, r6, r2
	storeli.w r5, -2480(r30)                # 4-byte Folded Spill
	zext_int2long r[4:5], r4
	slli r6, r2, 6
	sll.d r[4:5], r[4:5], r10
	zext_int2long r[9:10], r2
	addli r2, r30, -2464
	storeli.w r6, -2476(r30)                # 4-byte Folded Spill
	addli r6, r30, -2472
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	sll.d r[4:5], r[4:5], r25
	addli r2, zero, 13
	store.d r[9:10], 0(r6)                  # 8-byte Folded Spill
	addli r6, zero, 0
	sll.d r[9:10], r[9:10], r2
	add.ul r[4:5], r[16:17], r[4:5]
	addli r2, r30, -2424
	addli r17, zero, 123
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	load.d r[4:5], 0(r30)
	add.ul r[18:19], r[4:5], r[9:10]
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r10
	j .LBB0_13
.LBB0_11:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r9, 20
	addli r10, zero, 4
	addli r11, zero, 64
	addli r23, zero, 128
	addli r21, zero, 4
	ori r9, r9, 64
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	lock zero, r10
	add.s r2, r2, r9
	addli r9, zero, 1
	dma_cfg r9, r9, zero, 0
	dma_cfg zero, r6, zero, 2
	dma_cfg r2, r5, r11, 3
	addli r5, zero, 5
	addli r6, zero, 2
	addli r2, zero, 7
	dma_cfg r23, r11, r9, 4
	dma_cfg r23, r23, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r5
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r10, 10
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r10
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 18
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 19
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 20
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 21
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 22
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 23
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 24
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 25
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 26
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 27
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 28
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 29
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 30
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 31
	dma_cfg zero, zero, r2, 10
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r4, zero, r11, 3
	dma_cfg r23, zero, r9, 4
	dma_cfg r23, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r5
	xsignal r6, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r2,  -1524(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r4,  -500(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r2, r2, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r4, r4, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r2, -1524(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r4, -500(r30)
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	andi r2, r25, 1
	bneq r2, zero, .LBB0_25
	j .LBB0_32
.LBB0_13:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	add.s r2, r15, r14
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	addli r4, zero, 96
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	add.s r11, r24, r14
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r5, zero, 124
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	mod.s r4, r2, r4
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	mod.s r9, r11, r5
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	addli r2, r2, 1
	storeli.w r2, -2412(r30)
	slli r5, r4, 13
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	slli r2, r9, 13
	lui r4, 20
	addli r9, r11, 1
	storeli.w r9, -2024(r30)
	add.s r4, r2, r4
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r9, zero, 2
	beq r10, r9, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[9:10], r6
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r20
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r6, zero, 1
	bneq r20, r6, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r13, zero, 6
	addli r20, zero, 3
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	sll.d r[5:6], r[9:10], r13
	xwait r20, 0
	add.ul r[5:6], r[18:19], r[5:6]
	blt.s r17, r11, .LBB0_11
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r11, zero, 5
	addli r9, zero, 1
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r10, zero, 2
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 7
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r21, 10
	addli r21, zero, 128
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 8
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 9
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 11
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 12
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 13
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 14
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 15
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 16
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 17
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 18
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 19
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 20
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 21
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 22
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 23
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 24
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 25
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 26
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 27
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 28
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 29
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 30
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 31
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 64
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r4, zero, r10, 3
	dma_cfg r21, zero, r9, 4
	dma_cfg r21, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r6, zero, 2
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	addli r2, zero, 5
	addli r22, zero, 32
	xwait r6, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 32
	ds_cfg r6, zero, 0
	addli r6, zero, 64
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r6, zero, 13
	shuffle_batch r5, r4, r2, 1
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	xsignal r21, 0
	j .LBB0_12
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r2,  -1524(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r11,  -500(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r4, zero, 255
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r6, zero, 124
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	mod.s r4, r2, r4
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r13, r11, r6
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r2, r2, 1
	storeli.w r2, -1524(r30)
	slli r6, r4, 12
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r2, r13, 12
	lui r4, 268
	addli r13, r11, 1
	storeli.w r13, -500(r30)
	add.s r4, r2, r4
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r13, zero, 7
	beq r20, r13, .LBB0_23
# %bb.19:                               #   in Loop: Header=BB0_13 Depth=2
	addli r13, zero, 6
	bneq r20, r13, .LBB0_26
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r23, zero, 16
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r13, r30, -2424
	addli r20, zero, 7
	sll.d r[5:6], r[9:10], r23
	load.d r[9:10], 0(r13)                  # 8-byte Folded Reload
	xwait r20, 0
	add.ul r[5:6], r[9:10], r[5:6]
	blt.s r17, r11, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r11, zero, 5
	addli r9, zero, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r10, zero, 2
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 3
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 6
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 8
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 9
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 11
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 12
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 13
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 14
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 15
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 17
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 18
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 19
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 20
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 21
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 22
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 23
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 24
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 25
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 26
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 27
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 28
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 29
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 30
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 31
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 64
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r4, zero, r10, 3
	addli r10, zero, 128
	dma_cfg r10, zero, r9, 4
	dma_cfg r10, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r9, 268
	addli r10, zero, 4
	addli r13, zero, 64
	addli r16, zero, 128
	addli r11, zero, 32
	addli r21, zero, 4
	addli r22, zero, 32
	ori r9, r9, 64
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	lock zero, r10
	add.s r2, r2, r9
	addli r9, zero, 1
	dma_cfg r9, r9, zero, 0
	dma_cfg zero, r6, zero, 2
	dma_cfg r2, r5, r13, 3
	addli r2, zero, 2048
	addli r5, zero, 5
	addli r6, zero, 6
	dma_cfg r16, r13, r9, 4
	dma_cfg r16, r2, r11, 5
	addli r2, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r5
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 3
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 18
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 19
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 20
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 21
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 22
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 23
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 24
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 25
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 26
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 27
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 28
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 29
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 30
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 31
	dma_cfg zero, zero, r2, 10
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r4, zero, r13, 3
	dma_cfg r16, zero, r9, 4
	dma_cfg r16, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r5
	xsignal r6, 0
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	j .LBB0_24
.LBB0_23:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r2, zero, 6
	addli r22, zero, 32
	xwait r2, 0
	addli r2, zero, 9
	xwait r2, 0
	addli r2, zero, 2
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 32
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r2, zero, 13
	shuffle_coa r6, r4, r2, 2
	addli r2, zero, 7
	unlock zero
	xsignal r2, 0
	addli r2, zero, 8
	xsignal r2, 0
.LBB0_24:                               # %.thread20
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r10
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	andi r2, r25, 1
	beq r2, zero, .LBB0_32
.LBB0_25:                               # %.backedge
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 122 15                        # parallel-rne.mlir:122:15
	addli r14, r14, 1
	addli r6, zero, 1
	addli r25, zero, 0
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	j .LBB0_13
.LBB0_26:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	andi r2, r25, 1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r10
	addli r4, zero, 4
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	bneq r10, r4, .LBB0_29
# %bb.27:                               #   in Loop: Header=BB0_13 Depth=2
	xwait r4, 0
	addli r4, zero, 8
	addli r9, zero, 64
	addli r21, zero, 4
	xwait r4, 0
	addli r4, zero, 1
	lock zero, r4
	mm_cfg r22, r22, r9, 0
	addli r9, zero, 2
	mm_cfg r9, r4, r4, 2
	beq r14, zero, .LBB0_30
# %bb.28:                               # %.preheader30
                                        #   in Loop: Header=BB0_13 Depth=2
	mm_acc r12, r5, r6, 8
	j .LBB0_31
.LBB0_29:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r21, zero, 4
	bneq r2, zero, .LBB0_25
	j .LBB0_34
.LBB0_30:                               # %.preheader29
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	mm r12, r5, r6, 8
.LBB0_31:                               # %.thread20.thread43
                                        #   in Loop: Header=BB0_13 Depth=2
	addli r4, zero, 1
	unlock r4
	addli r4, zero, 5
	xsignal r4, 0
	addli r4, zero, 9
	xsignal r4, 0
	bneq r2, zero, .LBB0_25
	j .LBB0_33
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 125 7 is_stmt 1               # parallel-rne.mlir:125:7
	bneq r10, r21, .LBB0_34
.LBB0_33:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	storeli.w zero, -2444(r30)              # 4-byte Folded Spill
	xsignal r2, 0
	j .LBB0_37
.LBB0_34:                               # %.thread42
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 3
	.loc	1 130 7 is_stmt 1               # parallel-rne.mlir:130:7
	bneq r10, r2, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	storeli.w r2, -2444(r30)                # 4-byte Folded Spill
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -2444(r30)              # 4-byte Folded Spill
.LBB0_37:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	addli r2, zero, 255
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	xfence
	addli r17, zero, 32
	addli r4, zero, 16
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	mfence { lm, sm, gm }
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	csr_set csr5, r2
	addli r2, zero, 31
	sync_core
	zext_int2long r[14:15], r2
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	bneq r10, zero, .LBB0_67
# %bb.38:                               #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[4:5], zero
	mfence { lm, sm, gm }
	j .LBB0_40
.LBB0_39:                               # %middle.block116
                                        #   in Loop: Header=BB0_40 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 7
	zext_int2long r[4:5], r2
	addli r2, r30, -2424
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	.loc	1 144 9 is_stmt 1               # parallel-rne.mlir:144:9
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	beq r2, zero, .LBB0_66
.LBB0_40:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_47 Depth 3
                                        #       Child Loop BB0_42 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r6, r30, -2424
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	sll.d r[18:19], r[4:5], r2
	zext_int2long r[4:5], zero
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	beq r7, r12, .LBB0_42
	j .LBB0_47
.LBB0_41:                               # %scalar.ph110
                                        #   in Loop: Header=BB0_42 Depth=3
	setlt.ul r9, r[4:5], r[14:15]
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	add.s r2, r7, r2
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	stores.w r6, 0(r2)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	beq r9, zero, .LBB0_39
.LBB0_42:                               # %scalar.ph110
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[9:10], r[4:5], r[18:19]
	slli r2, r9, 2
	add.s r6, r12, r2
	loads.w r9, 0(r6)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r10, r9, r26
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r6, r28, r10
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r6, zero, .LBB0_44
# %bb.43:                               # %scalar.ph110
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r9, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r10, r8, r10
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r10, zero, .LBB0_41
	j .LBB0_45
.LBB0_44:                               #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r9, r27
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r10, r8, r10
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r10, zero, .LBB0_41
.LBB0_45:                               # %scalar.ph110
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r1
	and r6, r6, r3
	j .LBB0_41
.LBB0_46:                               # %vector.body112
                                        #   in Loop: Header=BB0_47 Depth=3
	addli r6, zero, 32
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	add.s r9, r7, r22
	zext_int2long r[16:17], r6
	stores.w r2, 12(r9)
	stores.w r10, 8(r9)
	stores.w r20, 4(r9)
	stores.w r24, 0(r9)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	seteq.d r6, r[4:5], r[16:17]
	bneq r6, zero, .LBB0_39
.LBB0_47:                               # %vector.body112
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[9:10], r[4:5], r[18:19]
	slli r22, r9, 2
	add.s r21, r12, r22
	loads.w r13, 12(r21)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r6, r13, r26
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r2, r28, r6
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r2, zero, .LBB0_49
# %bb.48:                               # %vector.body112
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r13, 0
	j .LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_47 Depth=3
	or r2, r13, r27
.LBB0_50:                               # %vector.body112
                                        #   in Loop: Header=BB0_47 Depth=3
	loads.w r23, 8(r21)
	and r11, r23, r26
	setlt.u r9, r28, r11
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r9, zero, .LBB0_52
# %bb.51:                               # %vector.body112
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r23, 0
	j .LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_47 Depth=3
	or r10, r23, r27
.LBB0_53:                               # %vector.body112
                                        #   in Loop: Header=BB0_47 Depth=3
	loads.w r9, 4(r21)
	and r25, r9, r26
	setlt.u r16, r28, r25
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r16, zero, .LBB0_55
# %bb.54:                               # %vector.body112
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_47 Depth=3
	or r20, r9, r27
.LBB0_56:                               # %vector.body112
                                        #   in Loop: Header=BB0_47 Depth=3
	loads.w r21, 0(r21)
	and r16, r21, r26
	setlt.u r17, r28, r16
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r17, zero, .LBB0_58
# %bb.57:                               # %vector.body112
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r21, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r16, r8, r16
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r16, zero, .LBB0_59
	j .LBB0_60
.LBB0_58:                               #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r21, r27
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r16, r8, r16
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r16, zero, .LBB0_60
.LBB0_59:                               # %vector.body112
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r21, 16
	andi r16, r16, 1
	add.s r16, r21, r16
	add.s r16, r16, r1
	and r24, r16, r3
.LBB0_60:                               # %vector.body112
                                        #   in Loop: Header=BB0_47 Depth=3
	setlt.u r16, r8, r25
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r16, zero, .LBB0_63
# %bb.61:                               # %vector.body112
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r8, r11
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r9, zero, .LBB0_64
.LBB0_62:                               # %vector.body112
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r8, r6
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r6, zero, .LBB0_46
	j .LBB0_65
.LBB0_63:                               # %vector.body112
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r9, 16
	andi r16, r16, 1
	add.s r9, r9, r16
	add.s r9, r9, r1
	and r20, r9, r3
	setlt.u r9, r8, r11
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r9, zero, .LBB0_62
.LBB0_64:                               # %vector.body112
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r23, 16
	andi r9, r9, 1
	add.s r9, r23, r9
	add.s r9, r9, r1
	and r10, r9, r3
	setlt.u r6, r8, r6
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r6, zero, .LBB0_46
.LBB0_65:                               # %vector.body112
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r13, 16
	andi r2, r2, 1
	add.s r2, r13, r2
	add.s r2, r2, r1
	and r2, r2, r3
	j .LBB0_46
.LBB0_66:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r10
	addli r17, zero, 32
	addli r4, zero, 16
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	mfence { sm }
.LBB0_67:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[5:6], r17
	addli r2, r30, -2424
	addli r9, zero, 4
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	.loc	1 165 7 is_stmt 1               # parallel-rne.mlir:165:7
	addli r2, zero, 2
	beq r10, r2, .LBB0_99
# %bb.68:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 1
	bneq r10, r2, .LBB0_128
# %bb.69:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[4:5], zero
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	addli r2, r30, -2440
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	addli r2, zero, 8
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_71
.LBB0_70:                               # %middle.block98
                                        #   in Loop: Header=BB0_71 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 15
	zext_int2long r[4:5], r2
	addli r2, r30, -2432
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	.loc	1 173 9 is_stmt 1               # parallel-rne.mlir:173:9
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	beq r2, zero, .LBB0_127
.LBB0_71:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_80 Depth 3
                                        #       Child Loop BB0_74 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r6, r30, -2432
	addli r2, zero, 5
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	sll.d r[4:5], r[4:5], r2
	.loc	1 174 11 is_stmt 1              # parallel-rne.mlir:174:11
	bneq r7, r12, .LBB0_78
# %bb.72:                               # %scalar.ph92.preheader
                                        #   in Loop: Header=BB0_71 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_74
.LBB0_73:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	setlt.ul r11, r[9:10], r[14:15]
	.loc	1 189 13 is_stmt 1              # parallel-rne.mlir:189:13
	add.s r2, r7, r2
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	stores.w r6, 0(r2)
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	beq r11, zero, .LBB0_70
.LBB0_74:                               # %scalar.ph92
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	add.ul r[16:17], r[9:10], r[4:5]
	slli r2, r16, 2
	add.s r6, r12, r2
	loads.w r11, 0(r6)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r13, r11, r26
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	setlt.u r6, r28, r13
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r6, zero, .LBB0_76
# %bb.75:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r11, 0
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r13, r8, r13
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r13, zero, .LBB0_73
	j .LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r11, r27
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r13, r8, r13
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r13, zero, .LBB0_73
.LBB0_77:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r1
	and r6, r6, r3
	j .LBB0_73
.LBB0_78:                               # %vector.body94.preheader
                                        #   in Loop: Header=BB0_71 Depth=2
	addli r2, r30, -2440
	load.d r[16:17], 0(r2)                  # 8-byte Folded Reload
	j .LBB0_80
.LBB0_79:                               # %vector.body94
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 174 11 is_stmt 1              # parallel-rne.mlir:174:11
	addli r13, r30, -2424
	addli.d r[16:17], r[16:17], 4
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	add.s r2, r7, r2
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	load.d r[9:10], 0(r13)                  # 8-byte Folded Reload
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	stores.w r6, 12(r2)
	stores.w r20, 8(r2)
	stores.w r22, 4(r2)
	stores.w r11, 0(r2)
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	seteq.d r9, r[16:17], r[9:10]
	bneq r9, zero, .LBB0_70
.LBB0_80:                               # %vector.body94
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	add.ul r[9:10], r[16:17], r[4:5]
	slli r2, r9, 2
	add.s r11, r12, r2
	loads.w r13, 12(r11)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r10, r13, r26
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	setlt.u r6, r28, r10
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r6, zero, .LBB0_82
# %bb.81:                               # %vector.body94
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r13, 0
	j .LBB0_83
.LBB0_82:                               #   in Loop: Header=BB0_80 Depth=3
	or r6, r13, r27
.LBB0_83:                               # %vector.body94
                                        #   in Loop: Header=BB0_80 Depth=3
	loads.w r23, 8(r11)
	and r9, r23, r26
	setlt.u r18, r28, r9
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r18, zero, .LBB0_85
# %bb.84:                               # %vector.body94
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r23, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_80 Depth=3
	or r20, r23, r27
.LBB0_86:                               # %vector.body94
                                        #   in Loop: Header=BB0_80 Depth=3
	loads.w r21, 4(r11)
	and r18, r21, r26
	setlt.u r19, r28, r18
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r19, zero, .LBB0_88
# %bb.87:                               # %vector.body94
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_80 Depth=3
	or r22, r21, r27
.LBB0_89:                               # %vector.body94
                                        #   in Loop: Header=BB0_80 Depth=3
	loads.w r19, 0(r11)
	and r24, r19, r26
	setlt.u r11, r28, r24
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r11, zero, .LBB0_91
# %bb.90:                               # %vector.body94
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r19, 0
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r24, r8, r24
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r24, zero, .LBB0_92
	j .LBB0_93
.LBB0_91:                               #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r19, r27
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r24, r8, r24
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r24, zero, .LBB0_93
.LBB0_92:                               # %vector.body94
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r19, 16
	andi r11, r11, 1
	add.s r11, r19, r11
	add.s r11, r11, r1
	and r11, r11, r3
.LBB0_93:                               # %vector.body94
                                        #   in Loop: Header=BB0_80 Depth=3
	setlt.u r18, r8, r18
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r18, zero, .LBB0_96
# %bb.94:                               # %vector.body94
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r8, r9
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r9, zero, .LBB0_97
.LBB0_95:                               # %vector.body94
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r8, r10
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r9, zero, .LBB0_79
	j .LBB0_98
.LBB0_96:                               # %vector.body94
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r18, r21, 16
	andi r18, r18, 1
	add.s r18, r21, r18
	add.s r18, r18, r1
	and r22, r18, r3
	setlt.u r9, r8, r9
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r9, zero, .LBB0_95
.LBB0_97:                               # %vector.body94
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r23, 16
	andi r9, r9, 1
	add.s r9, r23, r9
	add.s r9, r9, r1
	and r20, r9, r3
	setlt.u r9, r8, r10
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r9, zero, .LBB0_79
.LBB0_98:                               # %vector.body94
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r1
	and r6, r6, r3
	j .LBB0_79
.LBB0_99:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 194 7 is_stmt 1               # parallel-rne.mlir:194:7
	xfence
	zext_int2long r[4:5], r4
	mfence { lm, sm, gm }
	j .LBB0_101
.LBB0_100:                              # %middle.block107
                                        #   in Loop: Header=BB0_101 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 23
	zext_int2long r[4:5], r2
	addli r2, r30, -2432
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	.loc	1 202 9 is_stmt 1               # parallel-rne.mlir:202:9
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	beq r2, zero, .LBB0_127
.LBB0_101:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_108 Depth 3
                                        #       Child Loop BB0_103 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r6, r30, -2432
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	sll.d r[18:19], r[4:5], r2
	zext_int2long r[4:5], zero
	.loc	1 203 11 is_stmt 1              # parallel-rne.mlir:203:11
	beq r7, r12, .LBB0_103
	j .LBB0_108
.LBB0_102:                              # %scalar.ph101
                                        #   in Loop: Header=BB0_103 Depth=3
	setlt.ul r9, r[4:5], r[14:15]
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	add.s r2, r7, r2
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	stores.w r6, 0(r2)
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	beq r9, zero, .LBB0_100
.LBB0_103:                              # %scalar.ph101
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_101 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	add.ul r[9:10], r[4:5], r[18:19]
	slli r2, r9, 2
	add.s r6, r12, r2
	loads.w r9, 0(r6)
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	and r10, r9, r26
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	setlt.u r6, r28, r10
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r6, zero, .LBB0_105
# %bb.104:                              # %scalar.ph101
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r9, 0
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r10, r8, r10
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r10, zero, .LBB0_102
	j .LBB0_106
.LBB0_105:                              #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r9, r27
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r10, r8, r10
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r10, zero, .LBB0_102
.LBB0_106:                              # %scalar.ph101
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r1
	and r6, r6, r3
	j .LBB0_102
.LBB0_107:                              # %vector.body103
                                        #   in Loop: Header=BB0_108 Depth=3
	addli r6, zero, 32
	.loc	1 203 11 is_stmt 1              # parallel-rne.mlir:203:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	add.s r9, r7, r22
	zext_int2long r[16:17], r6
	stores.w r2, 12(r9)
	stores.w r10, 8(r9)
	stores.w r21, 4(r9)
	stores.w r11, 0(r9)
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	seteq.d r6, r[4:5], r[16:17]
	bneq r6, zero, .LBB0_100
.LBB0_108:                              # %vector.body103
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_101 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	add.ul r[9:10], r[4:5], r[18:19]
	slli r22, r9, 2
	add.s r11, r12, r22
	loads.w r13, 12(r11)
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	and r6, r13, r26
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	setlt.u r2, r28, r6
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r2, zero, .LBB0_110
# %bb.109:                              # %vector.body103
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r13, 0
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_108 Depth=3
	or r2, r13, r27
.LBB0_111:                              # %vector.body103
                                        #   in Loop: Header=BB0_108 Depth=3
	loads.w r23, 8(r11)
	and r9, r23, r26
	setlt.u r10, r28, r9
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r10, zero, .LBB0_113
# %bb.112:                              # %vector.body103
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r23, 0
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_108 Depth=3
	or r10, r23, r27
.LBB0_114:                              # %vector.body103
                                        #   in Loop: Header=BB0_108 Depth=3
	loads.w r20, 4(r11)
	and r16, r20, r26
	setlt.u r17, r28, r16
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r17, zero, .LBB0_116
# %bb.115:                              # %vector.body103
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_108 Depth=3
	or r21, r20, r27
.LBB0_117:                              # %vector.body103
                                        #   in Loop: Header=BB0_108 Depth=3
	loads.w r17, 0(r11)
	and r24, r17, r26
	setlt.u r11, r28, r24
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r11, zero, .LBB0_119
# %bb.118:                              # %vector.body103
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r17, 0
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r24, r8, r24
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r24, zero, .LBB0_120
	j .LBB0_121
.LBB0_119:                              #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r17, r27
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r24, r8, r24
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r24, zero, .LBB0_121
.LBB0_120:                              # %vector.body103
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r17, 16
	andi r11, r11, 1
	add.s r11, r17, r11
	add.s r11, r11, r1
	and r11, r11, r3
.LBB0_121:                              # %vector.body103
                                        #   in Loop: Header=BB0_108 Depth=3
	setlt.u r16, r8, r16
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r16, zero, .LBB0_124
# %bb.122:                              # %vector.body103
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r8, r9
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r9, zero, .LBB0_125
.LBB0_123:                              # %vector.body103
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r8, r6
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r6, zero, .LBB0_107
	j .LBB0_126
.LBB0_124:                              # %vector.body103
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r20, 16
	andi r16, r16, 1
	add.s r16, r20, r16
	add.s r16, r16, r1
	and r21, r16, r3
	setlt.u r9, r8, r9
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r9, zero, .LBB0_123
.LBB0_125:                              # %vector.body103
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r23, 16
	andi r9, r9, 1
	add.s r9, r23, r9
	add.s r9, r9, r1
	and r10, r9, r3
	setlt.u r6, r8, r6
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r6, zero, .LBB0_107
.LBB0_126:                              # %vector.body103
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r13, 16
	andi r2, r2, 1
	add.s r2, r13, r2
	add.s r2, r2, r1
	and r2, r2, r3
	j .LBB0_107
.LBB0_127:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r10
	addli r9, zero, 4
	addli r17, zero, 32
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_128:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 223 7 is_stmt 1               # parallel-rne.mlir:223:7
	loadli.w r2,  -2444(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_161
# %bb.129:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	beq r10, r9, .LBB0_190
.LBB0_130:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 281 7                         # parallel-rne.mlir:281:7
	addli r2, zero, 7
	beq r10, r2, .LBB0_219
.LBB0_131:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 6
	beq r10, r2, .LBB0_247
# %bb.132:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 5
	bneq r10, r2, .LBB0_276
# %bb.133:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 40
	.loc	1 281 7                         # parallel-rne.mlir:281:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_135
.LBB0_134:                              # %middle.block
                                        #   in Loop: Header=BB0_135 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 47
	zext_int2long r[4:5], r2
	addli r2, r30, -2432
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	.loc	1 289 9 is_stmt 1               # parallel-rne.mlir:289:9
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	beq r2, zero, .LBB0_275
.LBB0_135:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_142 Depth 3
                                        #       Child Loop BB0_137 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r6, r30, -2432
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	sll.d r[18:19], r[4:5], r2
	zext_int2long r[4:5], zero
	.loc	1 290 11 is_stmt 1              # parallel-rne.mlir:290:11
	beq r7, r12, .LBB0_137
	j .LBB0_142
.LBB0_136:                              # %scalar.ph
                                        #   in Loop: Header=BB0_137 Depth=3
	setlt.ul r9, r[4:5], r[14:15]
	.loc	1 305 13                        # parallel-rne.mlir:305:13
	add.s r2, r7, r2
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 305 13                        # parallel-rne.mlir:305:13
	stores.w r6, 0(r2)
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	beq r9, zero, .LBB0_134
.LBB0_137:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_135 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	add.ul r[9:10], r[4:5], r[18:19]
	slli r2, r9, 2
	add.s r6, r12, r2
	loads.w r9, 0(r6)
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	and r10, r9, r26
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	setlt.u r6, r28, r10
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r6, zero, .LBB0_139
# %bb.138:                              # %scalar.ph
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r9, 0
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r10, r8, r10
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r10, zero, .LBB0_136
	j .LBB0_140
.LBB0_139:                              #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r9, r27
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r10, r8, r10
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r10, zero, .LBB0_136
.LBB0_140:                              # %scalar.ph
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r1
	and r6, r6, r3
	j .LBB0_136
.LBB0_141:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 290 11 is_stmt 1              # parallel-rne.mlir:290:11
	addli r6, r30, -2424
	addli.d r[4:5], r[4:5], 4
	.loc	1 305 13                        # parallel-rne.mlir:305:13
	add.s r2, r7, r2
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	load.d r[9:10], 0(r6)                   # 8-byte Folded Reload
	.loc	1 305 13                        # parallel-rne.mlir:305:13
	stores.w r13, 12(r2)
	stores.w r20, 8(r2)
	stores.w r22, 4(r2)
	stores.w r11, 0(r2)
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	seteq.d r6, r[4:5], r[9:10]
	bneq r6, zero, .LBB0_134
.LBB0_142:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_135 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	add.ul r[9:10], r[4:5], r[18:19]
	slli r2, r9, 2
	add.s r11, r12, r2
	loads.w r6, 12(r11)
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	and r10, r6, r26
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	setlt.u r9, r28, r10
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r9, zero, .LBB0_144
# %bb.143:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r6, 0
	j .LBB0_145
.LBB0_144:                              #   in Loop: Header=BB0_142 Depth=3
	or r13, r6, r27
.LBB0_145:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	loads.w r23, 8(r11)
	and r9, r23, r26
	setlt.u r16, r28, r9
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r16, zero, .LBB0_147
# %bb.146:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r23, 0
	j .LBB0_148
.LBB0_147:                              #   in Loop: Header=BB0_142 Depth=3
	or r20, r23, r27
.LBB0_148:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	loads.w r21, 4(r11)
	and r24, r21, r26
	setlt.u r16, r28, r24
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r16, zero, .LBB0_150
# %bb.149:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	j .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_142 Depth=3
	or r22, r21, r27
.LBB0_151:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	loads.w r25, 0(r11)
	and r16, r25, r26
	setlt.u r11, r28, r16
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r11, zero, .LBB0_157
# %bb.152:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r25, 0
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r16, r8, r16
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r16, zero, .LBB0_154
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r25, 16
	andi r11, r11, 1
	add.s r11, r25, r11
	add.s r11, r11, r1
	and r11, r11, r3
.LBB0_154:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	setlt.u r16, r8, r24
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	beq r16, zero, .LBB0_158
# %bb.155:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r8, r9
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	beq r9, zero, .LBB0_159
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r8, r10
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r9, zero, .LBB0_141
	j .LBB0_160
.LBB0_157:                              #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r25, r27
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r16, r8, r16
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	beq r16, zero, .LBB0_153
	j .LBB0_154
.LBB0_158:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r21, 16
	andi r16, r16, 1
	add.s r16, r21, r16
	add.s r16, r16, r1
	and r22, r16, r3
	setlt.u r9, r8, r9
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r9, zero, .LBB0_156
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r23, 16
	andi r9, r9, 1
	add.s r9, r23, r9
	add.s r9, r9, r1
	and r20, r9, r3
	setlt.u r9, r8, r10
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r9, zero, .LBB0_141
.LBB0_160:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r6, 16
	andi r9, r9, 1
	add.s r6, r6, r9
	add.s r6, r6, r1
	and r13, r6, r3
	j .LBB0_141
.LBB0_161:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 24
	.loc	1 223 7 is_stmt 1               # parallel-rne.mlir:223:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_163
.LBB0_162:                              # %middle.block89
                                        #   in Loop: Header=BB0_163 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, r30, -2432
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	.loc	1 231 9 is_stmt 1               # parallel-rne.mlir:231:9
	setlt.ul r2, r[4:5], r[14:15]
	addli.d r[4:5], r[4:5], 1
	beq r2, zero, .LBB0_189
.LBB0_163:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_170 Depth 3
                                        #       Child Loop BB0_165 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r6, r30, -2432
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	sll.d r[18:19], r[4:5], r2
	zext_int2long r[4:5], zero
	.loc	1 232 11 is_stmt 1              # parallel-rne.mlir:232:11
	beq r7, r12, .LBB0_165
	j .LBB0_170
.LBB0_164:                              # %scalar.ph83
                                        #   in Loop: Header=BB0_165 Depth=3
	setlt.ul r9, r[4:5], r[14:15]
	.loc	1 247 13                        # parallel-rne.mlir:247:13
	add.s r2, r7, r2
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 247 13                        # parallel-rne.mlir:247:13
	stores.w r6, 0(r2)
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	beq r9, zero, .LBB0_162
.LBB0_165:                              # %scalar.ph83
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_163 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	add.ul r[9:10], r[4:5], r[18:19]
	slli r2, r9, 2
	add.s r6, r12, r2
	loads.w r9, 0(r6)
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r10, r9, r26
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	setlt.u r6, r28, r10
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r6, zero, .LBB0_167
# %bb.166:                              # %scalar.ph83
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r9, 0
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r10, r8, r10
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r10, zero, .LBB0_164
	j .LBB0_168
.LBB0_167:                              #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r9, r27
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r10, r8, r10
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r10, zero, .LBB0_164
.LBB0_168:                              # %scalar.ph83
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r1
	and r6, r6, r3
	j .LBB0_164
.LBB0_169:                              # %vector.body85
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 232 11 is_stmt 1              # parallel-rne.mlir:232:11
	addli.d r[4:5], r[4:5], 4
	zext_int2long r[9:10], r17
	seteq.d r6, r[4:5], r[9:10]
	.loc	1 247 13                        # parallel-rne.mlir:247:13
	add.s r9, r7, r22
	stores.w r2, 12(r9)
	stores.w r13, 8(r9)
	stores.w r20, 4(r9)
	stores.w r11, 0(r9)
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	bneq r6, zero, .LBB0_162
.LBB0_170:                              # %vector.body85
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_163 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	add.ul r[9:10], r[4:5], r[18:19]
	slli r22, r9, 2
	add.s r11, r12, r22
	loads.w r6, 12(r11)
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r10, r6, r26
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	setlt.u r2, r28, r10
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r2, zero, .LBB0_172
# %bb.171:                              # %vector.body85
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	j .LBB0_173
.LBB0_172:                              #   in Loop: Header=BB0_170 Depth=3
	or r2, r6, r27
.LBB0_173:                              # %vector.body85
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r23, 8(r11)
	and r9, r23, r26
	setlt.u r13, r28, r9
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r13, zero, .LBB0_175
# %bb.174:                              # %vector.body85
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r23, 0
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_170 Depth=3
	or r13, r23, r27
.LBB0_176:                              # %vector.body85
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r21, 4(r11)
	and r24, r21, r26
	setlt.u r16, r28, r24
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r16, zero, .LBB0_178
# %bb.177:                              # %vector.body85
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_179
.LBB0_178:                              #   in Loop: Header=BB0_170 Depth=3
	or r20, r21, r27
.LBB0_179:                              # %vector.body85
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r25, 0(r11)
	and r16, r25, r26
	setlt.u r11, r28, r16
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r11, zero, .LBB0_185
# %bb.180:                              # %vector.body85
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r25, 0
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r16, r8, r16
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r16, zero, .LBB0_182
.LBB0_181:                              # %vector.body85
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r25, 16
	andi r11, r11, 1
	add.s r11, r25, r11
	add.s r11, r11, r1
	and r11, r11, r3
.LBB0_182:                              # %vector.body85
                                        #   in Loop: Header=BB0_170 Depth=3
	setlt.u r16, r8, r24
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r16, zero, .LBB0_186
# %bb.183:                              # %vector.body85
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r8, r9
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r9, zero, .LBB0_187
.LBB0_184:                              # %vector.body85
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r8, r10
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r9, zero, .LBB0_169
	j .LBB0_188
.LBB0_185:                              #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r25, r27
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r16, r8, r16
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r16, zero, .LBB0_181
	j .LBB0_182
.LBB0_186:                              # %vector.body85
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r21, 16
	andi r16, r16, 1
	add.s r16, r21, r16
	add.s r16, r16, r1
	and r20, r16, r3
	setlt.u r9, r8, r9
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r9, zero, .LBB0_184
.LBB0_187:                              # %vector.body85
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r23, 16
	andi r9, r9, 1
	add.s r9, r23, r9
	add.s r9, r9, r1
	and r13, r9, r3
	setlt.u r9, r8, r10
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r9, zero, .LBB0_169
.LBB0_188:                              # %vector.body85
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r1
	and r2, r2, r3
	j .LBB0_169
.LBB0_189:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r10
	addli r9, zero, 4
	.loc	1 223 7                         # parallel-rne.mlir:223:7
	mfence { sm }
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	bneq r10, r9, .LBB0_130
.LBB0_190:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r2, r30, -2424
	mfence { lm, sm, gm }
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	j .LBB0_192
.LBB0_191:                              # %middle.block80
                                        #   in Loop: Header=BB0_192 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 39
	zext_int2long r[4:5], r2
	addli r2, r30, -2432
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	.loc	1 260 9 is_stmt 1               # parallel-rne.mlir:260:9
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	beq r2, zero, .LBB0_218
.LBB0_192:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_199 Depth 3
                                        #       Child Loop BB0_194 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r6, r30, -2432
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	sll.d r[18:19], r[4:5], r2
	zext_int2long r[4:5], zero
	.loc	1 261 11 is_stmt 1              # parallel-rne.mlir:261:11
	beq r7, r12, .LBB0_194
	j .LBB0_199
.LBB0_193:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_194 Depth=3
	setlt.ul r9, r[4:5], r[14:15]
	.loc	1 276 13                        # parallel-rne.mlir:276:13
	add.s r2, r7, r2
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 276 13                        # parallel-rne.mlir:276:13
	stores.w r6, 0(r2)
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	beq r9, zero, .LBB0_191
.LBB0_194:                              # %scalar.ph74
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_192 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.ul r[9:10], r[4:5], r[18:19]
	slli r2, r9, 2
	add.s r6, r12, r2
	loads.w r9, 0(r6)
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	and r10, r9, r26
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	setlt.u r6, r28, r10
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r6, zero, .LBB0_196
# %bb.195:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r9, 0
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r10, r8, r10
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r10, zero, .LBB0_193
	j .LBB0_197
.LBB0_196:                              #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r9, r27
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r10, r8, r10
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r10, zero, .LBB0_193
.LBB0_197:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r1
	and r6, r6, r3
	j .LBB0_193
.LBB0_198:                              # %vector.body76
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 261 11 is_stmt 1              # parallel-rne.mlir:261:11
	addli.d r[4:5], r[4:5], 4
	zext_int2long r[9:10], r17
	seteq.d r6, r[4:5], r[9:10]
	.loc	1 276 13                        # parallel-rne.mlir:276:13
	add.s r9, r7, r22
	stores.w r2, 12(r9)
	stores.w r13, 8(r9)
	stores.w r20, 4(r9)
	stores.w r11, 0(r9)
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	bneq r6, zero, .LBB0_191
.LBB0_199:                              # %vector.body76
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_192 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.ul r[9:10], r[4:5], r[18:19]
	slli r22, r9, 2
	add.s r11, r12, r22
	loads.w r6, 12(r11)
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	and r10, r6, r26
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	setlt.u r2, r28, r10
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r2, zero, .LBB0_201
# %bb.200:                              # %vector.body76
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	j .LBB0_202
.LBB0_201:                              #   in Loop: Header=BB0_199 Depth=3
	or r2, r6, r27
.LBB0_202:                              # %vector.body76
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r23, 8(r11)
	and r9, r23, r26
	setlt.u r13, r28, r9
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r13, zero, .LBB0_204
# %bb.203:                              # %vector.body76
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r23, 0
	j .LBB0_205
.LBB0_204:                              #   in Loop: Header=BB0_199 Depth=3
	or r13, r23, r27
.LBB0_205:                              # %vector.body76
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r21, 4(r11)
	and r24, r21, r26
	setlt.u r16, r28, r24
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r16, zero, .LBB0_207
# %bb.206:                              # %vector.body76
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_199 Depth=3
	or r20, r21, r27
.LBB0_208:                              # %vector.body76
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r25, 0(r11)
	and r16, r25, r26
	setlt.u r11, r28, r16
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r11, zero, .LBB0_214
# %bb.209:                              # %vector.body76
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r25, 0
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r16, r8, r16
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r16, zero, .LBB0_211
.LBB0_210:                              # %vector.body76
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r25, 16
	andi r11, r11, 1
	add.s r11, r25, r11
	add.s r11, r11, r1
	and r11, r11, r3
.LBB0_211:                              # %vector.body76
                                        #   in Loop: Header=BB0_199 Depth=3
	setlt.u r16, r8, r24
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r16, zero, .LBB0_215
# %bb.212:                              # %vector.body76
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r8, r9
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r9, zero, .LBB0_216
.LBB0_213:                              # %vector.body76
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r8, r10
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r9, zero, .LBB0_198
	j .LBB0_217
.LBB0_214:                              #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r25, r27
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r16, r8, r16
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r16, zero, .LBB0_210
	j .LBB0_211
.LBB0_215:                              # %vector.body76
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r21, 16
	andi r16, r16, 1
	add.s r16, r21, r16
	add.s r16, r16, r1
	and r20, r16, r3
	setlt.u r9, r8, r9
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r9, zero, .LBB0_213
.LBB0_216:                              # %vector.body76
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r23, 16
	andi r9, r9, 1
	add.s r9, r23, r9
	add.s r9, r9, r1
	and r13, r9, r3
	setlt.u r9, r8, r10
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r9, zero, .LBB0_198
.LBB0_217:                              # %vector.body76
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r1
	and r2, r2, r3
	j .LBB0_198
.LBB0_218:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r10
	addli r9, zero, 4
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	mfence { sm }
	.loc	1 281 7                         # parallel-rne.mlir:281:7
	addli r2, zero, 7
	bneq r10, r2, .LBB0_131
.LBB0_219:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 56
	.loc	1 339 7 is_stmt 1               # parallel-rne.mlir:339:7
	xfence
	addli r17, zero, 63
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_221
.LBB0_220:                              # %middle.block71
                                        #   in Loop: Header=BB0_221 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, r30, -2432
	zext_int2long r[4:5], r17
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	.loc	1 347 9 is_stmt 1               # parallel-rne.mlir:347:9
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	beq r2, zero, .LBB0_275
.LBB0_221:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_228 Depth 3
                                        #       Child Loop BB0_223 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r6, r30, -2432
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	sll.d r[18:19], r[4:5], r2
	zext_int2long r[4:5], zero
	.loc	1 348 11 is_stmt 1              # parallel-rne.mlir:348:11
	beq r7, r12, .LBB0_223
	j .LBB0_228
.LBB0_222:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_223 Depth=3
	setlt.ul r9, r[4:5], r[14:15]
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	add.s r2, r7, r2
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	stores.w r6, 0(r2)
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	beq r9, zero, .LBB0_220
.LBB0_223:                              # %scalar.ph65
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_221 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	add.ul r[9:10], r[4:5], r[18:19]
	slli r2, r9, 2
	add.s r6, r12, r2
	loads.w r9, 0(r6)
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	and r10, r9, r26
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	setlt.u r6, r28, r10
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r6, zero, .LBB0_225
# %bb.224:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r9, 0
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r10, r8, r10
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r10, zero, .LBB0_222
	j .LBB0_226
.LBB0_225:                              #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r9, r27
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r10, r8, r10
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r10, zero, .LBB0_222
.LBB0_226:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r1
	and r6, r6, r3
	j .LBB0_222
.LBB0_227:                              # %vector.body67
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 348 11 is_stmt 1              # parallel-rne.mlir:348:11
	addli r6, r30, -2424
	addli.d r[4:5], r[4:5], 4
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	add.s r2, r7, r2
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	load.d r[9:10], 0(r6)                   # 8-byte Folded Reload
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	stores.w r13, 12(r2)
	stores.w r20, 8(r2)
	stores.w r22, 4(r2)
	stores.w r11, 0(r2)
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	seteq.d r6, r[4:5], r[9:10]
	bneq r6, zero, .LBB0_220
.LBB0_228:                              # %vector.body67
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_221 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	add.ul r[9:10], r[4:5], r[18:19]
	slli r2, r9, 2
	add.s r11, r12, r2
	loads.w r6, 12(r11)
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	and r10, r6, r26
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	setlt.u r9, r28, r10
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r9, zero, .LBB0_230
# %bb.229:                              # %vector.body67
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r6, 0
	j .LBB0_231
.LBB0_230:                              #   in Loop: Header=BB0_228 Depth=3
	or r13, r6, r27
.LBB0_231:                              # %vector.body67
                                        #   in Loop: Header=BB0_228 Depth=3
	loads.w r23, 8(r11)
	and r9, r23, r26
	setlt.u r16, r28, r9
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r16, zero, .LBB0_233
# %bb.232:                              # %vector.body67
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r23, 0
	j .LBB0_234
.LBB0_233:                              #   in Loop: Header=BB0_228 Depth=3
	or r20, r23, r27
.LBB0_234:                              # %vector.body67
                                        #   in Loop: Header=BB0_228 Depth=3
	loads.w r21, 4(r11)
	and r24, r21, r26
	setlt.u r16, r28, r24
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r16, zero, .LBB0_236
# %bb.235:                              # %vector.body67
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	j .LBB0_237
.LBB0_236:                              #   in Loop: Header=BB0_228 Depth=3
	or r22, r21, r27
.LBB0_237:                              # %vector.body67
                                        #   in Loop: Header=BB0_228 Depth=3
	loads.w r25, 0(r11)
	and r16, r25, r26
	setlt.u r11, r28, r16
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r11, zero, .LBB0_239
# %bb.238:                              # %vector.body67
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r25, 0
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r16, r8, r16
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	beq r16, zero, .LBB0_240
	j .LBB0_241
.LBB0_239:                              #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r25, r27
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r16, r8, r16
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r16, zero, .LBB0_241
.LBB0_240:                              # %vector.body67
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r25, 16
	andi r11, r11, 1
	add.s r11, r25, r11
	add.s r11, r11, r1
	and r11, r11, r3
.LBB0_241:                              # %vector.body67
                                        #   in Loop: Header=BB0_228 Depth=3
	setlt.u r16, r8, r24
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	beq r16, zero, .LBB0_244
# %bb.242:                              # %vector.body67
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r8, r9
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	beq r9, zero, .LBB0_245
.LBB0_243:                              # %vector.body67
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r8, r10
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r9, zero, .LBB0_227
	j .LBB0_246
.LBB0_244:                              # %vector.body67
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r21, 16
	andi r16, r16, 1
	add.s r16, r21, r16
	add.s r16, r16, r1
	and r22, r16, r3
	setlt.u r9, r8, r9
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r9, zero, .LBB0_243
.LBB0_245:                              # %vector.body67
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r23, 16
	andi r9, r9, 1
	add.s r9, r23, r9
	add.s r9, r9, r1
	and r20, r9, r3
	setlt.u r9, r8, r10
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r9, zero, .LBB0_227
.LBB0_246:                              # %vector.body67
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r6, 16
	andi r9, r9, 1
	add.s r6, r6, r9
	add.s r6, r6, r1
	and r13, r6, r3
	j .LBB0_227
.LBB0_247:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 48
	.loc	1 310 7 is_stmt 1               # parallel-rne.mlir:310:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_249
.LBB0_248:                              # %middle.block62
                                        #   in Loop: Header=BB0_249 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 55
	zext_int2long r[4:5], r2
	addli r2, r30, -2432
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	.loc	1 318 9 is_stmt 1               # parallel-rne.mlir:318:9
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	beq r2, zero, .LBB0_275
.LBB0_249:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_256 Depth 3
                                        #       Child Loop BB0_251 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r6, r30, -2432
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	sll.d r[18:19], r[4:5], r2
	zext_int2long r[4:5], zero
	.loc	1 319 11 is_stmt 1              # parallel-rne.mlir:319:11
	beq r7, r12, .LBB0_251
	j .LBB0_256
.LBB0_250:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_251 Depth=3
	setlt.ul r9, r[4:5], r[14:15]
	.loc	1 334 13                        # parallel-rne.mlir:334:13
	add.s r2, r7, r2
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 334 13                        # parallel-rne.mlir:334:13
	stores.w r6, 0(r2)
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	beq r9, zero, .LBB0_248
.LBB0_251:                              # %scalar.ph56
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_249 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	add.ul r[9:10], r[4:5], r[18:19]
	slli r2, r9, 2
	add.s r6, r12, r2
	loads.w r9, 0(r6)
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	and r10, r9, r26
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	setlt.u r6, r28, r10
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r6, zero, .LBB0_253
# %bb.252:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r9, 0
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r10, r8, r10
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r10, zero, .LBB0_250
	j .LBB0_254
.LBB0_253:                              #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r9, r27
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r10, r8, r10
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r10, zero, .LBB0_250
.LBB0_254:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r1
	and r6, r6, r3
	j .LBB0_250
.LBB0_255:                              # %vector.body58
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 319 11 is_stmt 1              # parallel-rne.mlir:319:11
	addli r6, r30, -2424
	addli.d r[4:5], r[4:5], 4
	.loc	1 334 13                        # parallel-rne.mlir:334:13
	add.s r2, r7, r2
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	load.d r[9:10], 0(r6)                   # 8-byte Folded Reload
	.loc	1 334 13                        # parallel-rne.mlir:334:13
	stores.w r13, 12(r2)
	stores.w r20, 8(r2)
	stores.w r22, 4(r2)
	stores.w r11, 0(r2)
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	seteq.d r6, r[4:5], r[9:10]
	bneq r6, zero, .LBB0_248
.LBB0_256:                              # %vector.body58
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_249 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	add.ul r[9:10], r[4:5], r[18:19]
	slli r2, r9, 2
	add.s r11, r12, r2
	loads.w r6, 12(r11)
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	and r10, r6, r26
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	setlt.u r9, r28, r10
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r9, zero, .LBB0_258
# %bb.257:                              # %vector.body58
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r6, 0
	j .LBB0_259
.LBB0_258:                              #   in Loop: Header=BB0_256 Depth=3
	or r13, r6, r27
.LBB0_259:                              # %vector.body58
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r23, 8(r11)
	and r9, r23, r26
	setlt.u r16, r28, r9
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r16, zero, .LBB0_261
# %bb.260:                              # %vector.body58
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r23, 0
	j .LBB0_262
.LBB0_261:                              #   in Loop: Header=BB0_256 Depth=3
	or r20, r23, r27
.LBB0_262:                              # %vector.body58
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r21, 4(r11)
	and r24, r21, r26
	setlt.u r16, r28, r24
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r16, zero, .LBB0_264
# %bb.263:                              # %vector.body58
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	j .LBB0_265
.LBB0_264:                              #   in Loop: Header=BB0_256 Depth=3
	or r22, r21, r27
.LBB0_265:                              # %vector.body58
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r25, 0(r11)
	and r16, r25, r26
	setlt.u r11, r28, r16
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r11, zero, .LBB0_267
# %bb.266:                              # %vector.body58
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r25, 0
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r16, r8, r16
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r16, zero, .LBB0_268
	j .LBB0_269
.LBB0_267:                              #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r25, r27
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r16, r8, r16
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r16, zero, .LBB0_269
.LBB0_268:                              # %vector.body58
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r25, 16
	andi r11, r11, 1
	add.s r11, r25, r11
	add.s r11, r11, r1
	and r11, r11, r3
.LBB0_269:                              # %vector.body58
                                        #   in Loop: Header=BB0_256 Depth=3
	setlt.u r16, r8, r24
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r16, zero, .LBB0_272
# %bb.270:                              # %vector.body58
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r8, r9
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r9, zero, .LBB0_273
.LBB0_271:                              # %vector.body58
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r8, r10
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r9, zero, .LBB0_255
	j .LBB0_274
.LBB0_272:                              # %vector.body58
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r21, 16
	andi r16, r16, 1
	add.s r16, r21, r16
	add.s r16, r16, r1
	and r22, r16, r3
	setlt.u r9, r8, r9
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r9, zero, .LBB0_271
.LBB0_273:                              # %vector.body58
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r23, 16
	andi r9, r9, 1
	add.s r9, r23, r9
	add.s r9, r9, r1
	and r20, r9, r3
	setlt.u r9, r8, r10
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r9, zero, .LBB0_255
.LBB0_274:                              # %vector.body58
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r6, 16
	andi r9, r9, 1
	add.s r6, r6, r9
	add.s r6, r6, r1
	and r13, r6, r3
	j .LBB0_255
.LBB0_275:                              # %.sink.split48
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r10
	addli r9, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_276:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 368 7 is_stmt 1               # parallel-rne.mlir:368:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	loadli.w r2,  -2444(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_5
# %bb.277:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	bneq r10, zero, .LBB0_7
# %bb.278:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	loadli.w r2,  -2480(r30)                # 4-byte Folded Reload
	zext_int2long r[13:14], zero
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	addli r6, r30, -2472
	addli r17, zero, 1
	addli r18, zero, 64
	zext_int2long r[15:16], r18
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	zext_int2long r[4:5], r2
	addli r2, zero, 992
	zext_int2long r[9:10], r2
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	loadli.w r2,  -2476(r30)                # 4-byte Folded Reload
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	min.ul r[9:10], r[4:5], r[9:10]
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	sext_int2long r[11:12], r2
	.loc	1 382 13                        # parallel-rne.mlir:382:13
	addli r2, r30, -2424
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	addli.d r[9:10], r[9:10], 32
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.sl r[13:14], r[11:12], r[13:14]
	.loc	1 380 13                        # parallel-rne.mlir:380:13
	max.ul r[9:10], r[9:10], r[4:5]
	sub.sl r[4:5], r[9:10], r[4:5]
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	addli.d r[9:10], r[13:14], 64
	.loc	1 382 13                        # parallel-rne.mlir:382:13
	load.d r[13:14], 0(r2)                  # 8-byte Folded Reload
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	addli r2, zero, 17
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	max.sl r[9:10], r[9:10], r[11:12]
	.loc	1 382 13                        # parallel-rne.mlir:382:13
	min.ul r[4:5], r[4:5], r[13:14]
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	load.d r[13:14], 0(r6)                  # 8-byte Folded Reload
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	sub.sl r[9:10], r[9:10], r[11:12]
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	load.d r[11:12], 16(r30)
	sll.d r[13:14], r[13:14], r2
	addli r2, r30, -2464
	add.ul r[11:12], r[11:12], r[13:14]
	load.d r[13:14], 0(r2)                  # 8-byte Folded Reload
	addli r2, zero, 12
	xwait r2, 0
	ori r2, r7, 64
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	min.sl r[6:7], r[9:10], r[15:16]
	addli r9, zero, 4
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r10
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	sll.d r[13:14], r[13:14], r17
	add.ul r[11:12], r[11:12], r[13:14]
	addli r13, zero, 5
	lock zero, r13
	dma_cfg r17, r17, zero, 0
	dma_cfg zero, r17, zero, 1
	dma_cfg r12, zero, zero, 2
	dma_cfg r11, r2, r18, 3
	addli r2, r4, 31
	slli r4, r4, 1
	addli r5, zero, 128
	srli r2, r2, 5
	dma_cfg r18, r5, r2, 4
	andi r2, r4, 62
	addli r4, zero, 2048
	dma_cfg r4, r5, r6, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	addli r2, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r13
	j .LBB0_6
.LBB0_279:                              # %._crit_edge
	.loc	1 388 5                         # parallel-rne.mlir:388:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_281
# %bb.280:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 388 5                         # parallel-rne.mlir:388:5
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
.LBB0_281:
	.loc	1 389 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:389:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-7e7u6sa6" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
