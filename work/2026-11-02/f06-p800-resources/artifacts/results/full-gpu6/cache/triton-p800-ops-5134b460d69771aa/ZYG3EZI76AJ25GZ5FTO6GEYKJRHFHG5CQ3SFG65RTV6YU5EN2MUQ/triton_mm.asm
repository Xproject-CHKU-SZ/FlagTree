	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-qyvmp5ny" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2560
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r8
	addli r30, sp, 2496
	xsignal_mode_cfg r1
	beq r8, zero, .LBB0_2
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
	ble.s r3, r1, .LBB0_295
# %bb.4:                                # %.lr.ph
	.loc	1 41 11                         # parallel-rne.mlir:41:11
	sext_int2long r[9:10], r1
	lui r1, 7
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 41 11                         # parallel-rne.mlir:41:11
	addli r4, r30, -2496
	addli r11, zero, 4
	addli r7, zero, 0
	ori r18, r1, 4095
	lui r1, 1023
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	lui r4, 522240
	lui r17, 1047552
	ori r1, r1, 4095
	storeli.w r1, -2436(r30)                # 4-byte Folded Spill
	lui r1, 524287
	ori r13, r1, 4095
	lui r1, 522239
	ori r5, r1, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 368 7 is_stmt 1               # parallel-rne.mlir:368:7
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -2456
	.loc	1 49 5 is_stmt 1                # parallel-rne.mlir:49:5
	addli r3, r30, -2496
	loadli.w r7,  -2460(r30)                # 4-byte Folded Reload
	load.d r[9:10], 0(r1)                   # 8-byte Folded Reload
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	addli.d r[9:10], r[9:10], 1
	setlt.sl r1, r[9:10], r[1:2]
	beq r1, zero, .LBB0_295
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_74 Depth 2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_77 Depth 3
                                        #     Child Loop BB0_44 Depth 2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_47 Depth 3
                                        #     Child Loop BB0_105 Depth 2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_108 Depth 3
                                        #     Child Loop BB0_171 Depth 2
                                        #       Child Loop BB0_180 Depth 3
                                        #       Child Loop BB0_174 Depth 3
                                        #     Child Loop BB0_202 Depth 2
                                        #       Child Loop BB0_211 Depth 3
                                        #       Child Loop BB0_205 Depth 3
                                        #     Child Loop BB0_141 Depth 2
                                        #       Child Loop BB0_150 Depth 3
                                        #       Child Loop BB0_144 Depth 3
                                        #     Child Loop BB0_263 Depth 2
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_266 Depth 3
                                        #     Child Loop BB0_233 Depth 2
                                        #       Child Loop BB0_242 Depth 3
                                        #       Child Loop BB0_236 Depth 3
	.loc	1 76 7                          # parallel-rne.mlir:76:7
	bneq r8, r11, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  32(r30)
	addli r2, r30, -2456
	addli r3, zero, 5
	.loc	1 94 15 is_stmt 1               # parallel-rne.mlir:94:15
	loadli.w r21,  -2416(r30)
	addli r24, zero, 4
	addli r6, zero, 0
	addli r25, zero, 0
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	loadli.w r2,  28(r30)
	mod.s r3, r7, r3
	addli r7, r7, 1
	div.s r1, r9, r1
	addli r9, zero, 8
	storeli.w r7, -2460(r30)                # 4-byte Folded Spill
	addli r7, zero, 64
	slli r10, r3, 13
	lui r3, 10
	div.s r1, r1, r2
	addli r2, zero, 256
	add.s r16, r10, r3
	div.s r2, r1, r2
	slli r8, r2, 3
	slli r2, r2, 8
	sub.s r7, r7, r8
	sub.s r2, r1, r2
	min.s r7, r7, r9
	mod.s r1, r1, r7
	div.s r2, r2, r7
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	loadli.w r7,  -1644(r30)
	add.s r1, r8, r1
	slli r3, r2, 6
	storeli.w r3, -2488(r30)                # 4-byte Folded Spill
	slli r8, r1, 5
	zext_int2long r[11:12], r1
	zext_int2long r[2:3], r2
	addli r1, zero, 6
	storeli.w r8, -2484(r30)                # 4-byte Folded Spill
	sll.d r[8:9], r[2:3], r1
	addli r2, r30, -2480
	addli r1, zero, 16
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r3, zero, 1
	store.d r[11:12], 0(r2)                 # 8-byte Folded Spill
	sll.d r[1:2], r[11:12], r1
	sll.d r[11:12], r[8:9], r3
	addli r3, r30, -2432
	and.d r[8:9], r[1:2], r[17:18]
	store.d r[8:9], 0(r3)                   # 8-byte Folded Spill
	load.d r[8:9], 8(r30)
	addli r3, r30, -2472
	store.d r[11:12], 0(r3)                 # 8-byte Folded Spill
	addli r3, r30, -2448
	add.ul r[8:9], r[8:9], r[11:12]
	store.d r[8:9], 0(r3)                   # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r3, 20
	.loc	1 100 9 is_stmt 1               # parallel-rne.mlir:100:9
	lock zero, r11
	addli r8, zero, 64
	dma_cfg r12, r12, zero, 0
	ori r3, r3, 64
	dma_cfg zero, r15, zero, 2
	add.s r3, r9, r3
	addli r9, zero, 5
	dma_cfg r3, r14, r8, 3
	addli r15, zero, 128
	addli r3, zero, 4096
	addli r14, zero, 2
	dma_cfg r15, r8, r12, 4
	dma_cfg r15, r3, r27, 5
	addli r3, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 11
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 13
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 15
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 16
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 18
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 19
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 20
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 21
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 22
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 23
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 24
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 25
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 26
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 27
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 28
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 29
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 30
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 31
	dma_cfg zero, zero, r3, 10
	dma_cfg r12, r12, zero, 0
	dma_cfg r12, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r28, zero, r8, 3
	dma_cfg r15, zero, r12, 4
	dma_cfg r15, zero, r27, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r14, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r3,  -1144(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r8,  -500(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r3, r3, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r8, r8, 1
	storeli.w r8, -500(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	storeli.w r3, -1144(r30)
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r8
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r25, r25, 1
	addli r3, zero, 64
	beq r25, r3, .LBB0_34
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r24, zero, 4
	.loc	1 121 15 is_stmt 1              # parallel-rne.mlir:121:15
	addli r6, r6, 1
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 78 15                         # parallel-rne.mlir:78:15
	zext_int2long r[11:12], r25
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	addli r3, zero, 5
	sll.d r[8:9], r[11:12], r3
	loadli.w r3,  -2436(r30)                # 4-byte Folded Reload
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	add.ul r[22:23], r[8:9], r[1:2]
	zext_int2long r[8:9], r3
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	setlt.ul r3, r[8:9], r[22:23]
	addli r8, r30, -2432
	load.d r[26:27], 0(r8)                  # 8-byte Folded Reload
	.loc	1 86 15                         # parallel-rne.mlir:86:15
	bneq r3, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[26:27], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	add.s r8, r21, r6
	.loc	1 94 15 is_stmt 1               # parallel-rne.mlir:94:15
	addli r9, zero, 192
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r3, r7, r6
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	addli r14, zero, 124
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	mod.s r9, r8, r9
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	mod.s r15, r3, r14
	addli r14, zero, 2016
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	addli r8, r8, 1
	zext_int2long r[19:20], r14
	addli r14, r30, -2424
	storeli.w r8, -2416(r30)
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r8, r3, 1
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	store.d r[19:20], 0(r14)                # 8-byte Folded Spill
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	storeli.w r8, -1644(r30)
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r8
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	slli r14, r9, 12
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r9, r15, 12
	lui r15, 20
	add.s r28, r9, r15
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r15, zero, 2
	beq r8, r15, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r19, zero, 1
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	bneq r8, r19, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r8, zero, 2048
	sub.sl r[11:12], r[22:23], r[26:27]
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	sll.d r[22:23], r[22:23], r19
	addli r19, zero, 3
	zext_int2long r[14:15], r8
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	addli r8, r30, -2424
	div.sl r[11:12], r[11:12], r[14:15]
	load.d r[14:15], 0(r8)                  # 8-byte Folded Reload
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r8, zero, 123
	xwait r19, 0
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	min.sl r[14:15], r[11:12], r[14:15]
	sub.sl r[11:12], r[14:15], r[11:12]
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	load.d r[14:15], 0(r30)
	addli r27, r11, 32
	addli r11, zero, 4
	addli r12, zero, 1
	add.ul r[14:15], r[14:15], r[22:23]
	addli r22, zero, 7
	addli r23, zero, 17
	blt.s r8, r3, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r8, zero, 5
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r3, zero, 2
	addli r24, zero, 128
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 6
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 11
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 13
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 15
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 16
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 18
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 19
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 20
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 21
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 22
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 23
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 24
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 25
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 26
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 27
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 28
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 29
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 30
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 31
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 64
	dma_cfg r12, r12, zero, 0
	dma_cfg r12, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r28, zero, r3, 3
	addli r3, zero, 32
	dma_cfg r24, zero, r12, 4
	dma_cfg r24, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r8, zero, 2
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	addli r3, zero, 5
	addli r11, zero, 4
	xwait r8, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 32
	ds_cfg r8, zero, 0
	ds_cfg r3, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r3, zero, 13
	shuffle_batch r14, r28, r3, 1
	addli r3, zero, 3
	unlock zero
	xsignal r3, 0
	xsignal r11, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r3,  -1144(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r19,  -500(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r8, zero, 160
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r9, zero, 124
	lui r15, 144
	mod.s r9, r19, r9
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	mod.s r8, r3, r8
	addli r3, r3, 1
	storeli.w r3, -1144(r30)
	slli r3, r8, 13
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r9, r9, 13
	addli r8, r19, 1
	add.s r28, r9, r15
	storeli.w r8, -500(r30)
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r8
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r15, zero, 7
	beq r8, r15, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r15, zero, 6
	bneq r8, r15, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	addli r3, r30, -2448
	addli r27, zero, 17
	addli r26, zero, 7
	load.d r[14:15], 0(r3)                  # 8-byte Folded Reload
	sll.d r[11:12], r[11:12], r27
	addli r3, zero, 123
	xwait r26, 0
	add.ul r[14:15], r[14:15], r[11:12]
	blt.s r3, r19, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r11, zero, 5
	addli r12, zero, 1
	addli r19, zero, 2
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r3, zero, 3
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 6
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 11
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 13
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 15
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 16
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 18
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 19
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 20
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 21
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 22
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 23
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 24
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 25
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 26
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 27
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 28
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 29
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 30
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 31
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 64
	dma_cfg r12, r12, zero, 0
	dma_cfg r12, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r28, zero, r3, 3
	addli r3, zero, 128
	dma_cfg r3, zero, r19, 4
	addli r3, zero, 256
	addli r19, zero, 32
	dma_cfg r3, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r3, 144
	addli r11, zero, 4
	addli r19, zero, 1
	addli r22, zero, 2
	addli r24, zero, 128
	addli r23, zero, 32
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r12, zero, 4096
	ori r3, r3, 64
	lock zero, r11
	dma_cfg r19, r19, zero, 0
	add.s r3, r9, r3
	addli r9, zero, 64
	dma_cfg zero, r15, zero, 2
	dma_cfg r3, r14, r9, 3
	addli r3, zero, 256
	addli r14, zero, 5
	addli r15, zero, 9
	dma_cfg r24, r9, r22, 4
	dma_cfg r3, r12, r23, 5
	addli r12, zero, 3
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	lock zero, r14
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 6
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 8
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 4
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 10
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 11
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 12
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 13
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 14
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 15
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 16
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 18
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 19
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 20
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 21
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 22
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 23
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 24
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 25
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 26
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 27
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 28
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 29
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 30
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 31
	dma_cfg zero, zero, r15, 10
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r28, zero, r9, 3
	dma_cfg r24, zero, r22, 4
	dma_cfg r3, zero, r23, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	xsignal r12, 0
	.loc	1 118 9 is_stmt 1               # parallel-rne.mlir:118:9
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	addli r9, zero, 6
	addli r11, zero, 32
	xwait r9, 0
	addli r9, zero, 9
	xwait r9, 0
	addli r9, zero, 2
	lock zero, zero
	ds_cfg r9, zero, 0
	addli r9, zero, 64
	ds_cfg r9, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r9, zero, 13
	shuffle_coa r3, r28, r11, 2
	addli r3, zero, 7
	addli r11, zero, 4
	unlock zero
	xsignal r3, 0
	addli r3, zero, 8
	xsignal r3, 0
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r11, zero, 4
	.loc	1 120 9 is_stmt 1               # parallel-rne.mlir:120:9
	bneq r8, r11, .LBB0_31
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	addli r9, zero, 8
	addli r12, zero, 1
	xwait r11, 0
	addli r15, zero, 32
	xwait r9, 0
	addli r9, zero, 64
	lock zero, r12
	mm_cfg r9, r15, r15, 0
	addli r9, zero, 2
	mm_cfg r9, r9, r12, 2
	beq r6, zero, .LBB0_32
# %bb.30:                               # %.preheader30
                                        #   in Loop: Header=BB0_15 Depth=2
	mm_acc r16, r14, r3, 8
	j .LBB0_33
.LBB0_31:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r25, r25, 1
	addli r3, zero, 64
	bneq r25, r3, .LBB0_14
	j .LBB0_36
.LBB0_32:                               # %.preheader29
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	mm r16, r14, r3, 8
.LBB0_33:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r3, zero, 5
	unlock r12
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r25, r25, 1
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r3, zero, 64
	bneq r25, r3, .LBB0_14
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 124 7                         # parallel-rne.mlir:124:7
	bneq r8, r11, .LBB0_36
.LBB0_35:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	storeli.w zero, -2448(r30)              # 4-byte Folded Spill
	xsignal r1, 0
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	j .LBB0_39
.LBB0_36:                               # %.thread44
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 3
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	bneq r8, r1, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 130 7 is_stmt 1               # parallel-rne.mlir:130:7
	storeli.w r1, -2448(r30)                # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -2448(r30)              # 4-byte Folded Spill
.LBB0_39:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 134 7 is_stmt 1               # parallel-rne.mlir:134:7
	addli r1, zero, 255
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	xfence
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	mfence { lm, sm, gm }
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	csr_set csr5, r1
	addli r1, zero, 64
	sync_core
	zext_int2long r[6:7], r1
	addli r1, zero, 63
	zext_int2long r[24:25], r1
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	beq r8, zero, .LBB0_72
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r1, zero, 2
	beq r8, r1, .LBB0_103
.LBB0_41:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 1
	bneq r8, r1, .LBB0_134
# %bb.42:                               #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[2:3], r11
	mfence { lm, sm, gm }
	j .LBB0_44
.LBB0_43:                               # %middle.block99
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, r30, -2432
	addli r1, zero, 7
	load.d r[8:9], 0(r3)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 172 9 is_stmt 1               # parallel-rne.mlir:172:9
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[2:3], r[8:9], 1
	beq r1, zero, .LBB0_133
.LBB0_44:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_47 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	addli r8, r30, -2432
	sll.d r[20:21], r[2:3], r1
	store.d r[2:3], 0(r8)                   # 8-byte Folded Spill
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	bneq r10, r16, .LBB0_51
# %bb.45:                               # %scalar.ph93.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_47
.LBB0_46:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	setlt.ul r8, r[1:2], r[24:25]
	.loc	1 188 13 is_stmt 1              # parallel-rne.mlir:188:13
	add.s r3, r10, r3
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r9, 0(r3)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	beq r8, zero, .LBB0_43
.LBB0_47:                               # %scalar.ph93
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[8:9], r[1:2], r[20:21]
	slli r3, r8, 2
	add.s r8, r16, r3
	loads.w r11, 0(r8)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r8, r11, r13
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r9, r4, r8
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r9, zero, .LBB0_49
# %bb.48:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r11, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r8, r5, r8
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r8, zero, .LBB0_46
	j .LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r11, r9
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r8, r5, r8
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r8, zero, .LBB0_46
.LBB0_50:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r11, 16
	lui r9, 1048560
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r18
	and r9, r8, r9
	j .LBB0_46
.LBB0_51:                               # %vector.body95.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_53
.LBB0_52:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	add.s r3, r10, r15
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	seteq.d r2, r[27:28], r[6:7]
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r14, 12(r3)
	stores.w r23, 8(r3)
	stores.w r1, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	bneq r2, zero, .LBB0_43
.LBB0_53:                               # %vector.body95
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[1:2], r[27:28], r[20:21]
	slli r15, r1, 2
	add.s r2, r16, r15
	loads.w r9, 12(r2)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r22, r9, r13
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r1, r4, r22
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r1, zero, .LBB0_55
# %bb.54:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_53 Depth=3
	lui r1, 1024
	or r14, r9, r1
.LBB0_56:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r12, 8(r2)
	and r19, r12, r13
	setlt.u r1, r4, r19
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r1, zero, .LBB0_58
# %bb.57:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r12, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_53 Depth=3
	lui r1, 1024
	or r23, r12, r1
.LBB0_59:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r26, 4(r2)
	and r3, r26, r13
	setlt.u r1, r4, r3
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r1, zero, .LBB0_61
# %bb.60:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r26, 0
	j .LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_53 Depth=3
	lui r1, 1024
	or r1, r26, r1
.LBB0_62:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r2, 0(r2)
	and r8, r2, r13
	setlt.u r11, r4, r8
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r11, zero, .LBB0_64
# %bb.63:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r8, r5, r8
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r8, zero, .LBB0_65
	j .LBB0_66
.LBB0_64:                               #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r2, r11
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r8, r5, r8
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r8, zero, .LBB0_66
.LBB0_65:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	lui r8, 1048560
	add.s r2, r2, r18
	and r11, r2, r8
.LBB0_66:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	setlt.u r2, r5, r3
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r2, zero, .LBB0_69
# %bb.67:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r19
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r2, zero, .LBB0_70
.LBB0_68:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r22
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r2, zero, .LBB0_52
	j .LBB0_71
.LBB0_69:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r18
	and r1, r1, r2
	setlt.u r2, r5, r19
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r2, zero, .LBB0_68
.LBB0_70:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r18
	and r23, r2, r3
	setlt.u r2, r5, r22
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r2, zero, .LBB0_52
.LBB0_71:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r18
	and r14, r2, r3
	j .LBB0_52
.LBB0_72:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_74
.LBB0_73:                               # %middle.block117
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, r30, -2432
	addli r1, zero, 3
	load.d r[8:9], 0(r3)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 143 9 is_stmt 1               # parallel-rne.mlir:143:9
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[2:3], r[8:9], 1
	beq r1, zero, .LBB0_102
.LBB0_74:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_77 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	addli r8, r30, -2432
	sll.d r[20:21], r[2:3], r1
	store.d r[2:3], 0(r8)                   # 8-byte Folded Spill
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	bneq r10, r16, .LBB0_81
# %bb.75:                               # %scalar.ph111.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_77
.LBB0_76:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	setlt.ul r8, r[1:2], r[24:25]
	.loc	1 159 13 is_stmt 1              # parallel-rne.mlir:159:13
	add.s r3, r10, r3
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r9, 0(r3)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	beq r8, zero, .LBB0_73
.LBB0_77:                               # %scalar.ph111
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[8:9], r[1:2], r[20:21]
	slli r3, r8, 2
	add.s r8, r16, r3
	loads.w r11, 0(r8)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r8, r11, r13
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r9, r4, r8
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r9, zero, .LBB0_79
# %bb.78:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r11, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r8, r5, r8
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r8, zero, .LBB0_76
	j .LBB0_80
.LBB0_79:                               #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r11, r9
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r8, r5, r8
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r8, zero, .LBB0_76
.LBB0_80:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r11, 16
	lui r9, 1048560
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r18
	and r9, r8, r9
	j .LBB0_76
.LBB0_81:                               # %vector.body113.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_83
.LBB0_82:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r3, r10, r15
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	seteq.d r2, r[27:28], r[6:7]
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r9, 12(r3)
	stores.w r12, 8(r3)
	stores.w r1, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	bneq r2, zero, .LBB0_73
.LBB0_83:                               # %vector.body113
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[1:2], r[27:28], r[20:21]
	slli r15, r1, 2
	add.s r2, r16, r15
	loads.w r14, 12(r2)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r22, r14, r13
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r1, r4, r22
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r1, zero, .LBB0_85
# %bb.84:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r14, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_83 Depth=3
	lui r1, 1024
	or r9, r14, r1
.LBB0_86:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r23, 8(r2)
	and r19, r23, r13
	setlt.u r1, r4, r19
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r1, zero, .LBB0_88
# %bb.87:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r23, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_83 Depth=3
	lui r1, 1024
	or r12, r23, r1
.LBB0_89:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r26, 4(r2)
	and r3, r26, r13
	setlt.u r1, r4, r3
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r1, zero, .LBB0_91
# %bb.90:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r26, 0
	j .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_83 Depth=3
	lui r1, 1024
	or r1, r26, r1
.LBB0_92:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r2, 0(r2)
	and r8, r2, r13
	setlt.u r11, r4, r8
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r11, zero, .LBB0_94
# %bb.93:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r8, r5, r8
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r8, zero, .LBB0_95
	j .LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r2, r11
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r8, r5, r8
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r8, zero, .LBB0_96
.LBB0_95:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	lui r8, 1048560
	add.s r2, r2, r18
	and r11, r2, r8
.LBB0_96:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	setlt.u r2, r5, r3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r2, zero, .LBB0_99
# %bb.97:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r19
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r2, zero, .LBB0_100
.LBB0_98:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r22
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r2, zero, .LBB0_82
	j .LBB0_101
.LBB0_99:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r18
	and r1, r1, r2
	setlt.u r2, r5, r19
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r2, zero, .LBB0_98
.LBB0_100:                              # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r23, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r23, r2
	add.s r2, r2, r18
	and r12, r2, r3
	setlt.u r2, r5, r22
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r2, zero, .LBB0_82
.LBB0_101:                              # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r14, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r14, r2
	add.s r2, r2, r18
	and r9, r2, r3
	j .LBB0_82
.LBB0_102:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r8
	addli r11, zero, 4
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	mfence { sm }
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r1, zero, 2
	bneq r8, r1, .LBB0_41
.LBB0_103:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 193 7 is_stmt 1               # parallel-rne.mlir:193:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_105
.LBB0_104:                              # %middle.block108
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, r30, -2432
	addli r1, zero, 11
	load.d r[8:9], 0(r3)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 201 9 is_stmt 1               # parallel-rne.mlir:201:9
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[2:3], r[8:9], 1
	beq r1, zero, .LBB0_133
.LBB0_105:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_108 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	addli r8, r30, -2432
	sll.d r[20:21], r[2:3], r1
	store.d r[2:3], 0(r8)                   # 8-byte Folded Spill
	.loc	1 202 11 is_stmt 1              # parallel-rne.mlir:202:11
	bneq r10, r16, .LBB0_112
# %bb.106:                              # %scalar.ph102.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_108
.LBB0_107:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	setlt.ul r8, r[1:2], r[24:25]
	.loc	1 217 13 is_stmt 1              # parallel-rne.mlir:217:13
	add.s r3, r10, r3
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	stores.w r9, 0(r3)
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	beq r8, zero, .LBB0_104
.LBB0_108:                              # %scalar.ph102
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	add.ul r[8:9], r[1:2], r[20:21]
	slli r3, r8, 2
	add.s r8, r16, r3
	loads.w r11, 0(r8)
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	and r8, r11, r13
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	setlt.u r9, r4, r8
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r9, zero, .LBB0_110
# %bb.109:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r11, 0
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r8, r5, r8
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r8, zero, .LBB0_107
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r11, r9
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r8, r5, r8
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r8, zero, .LBB0_107
.LBB0_111:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r11, 16
	lui r9, 1048560
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r18
	and r9, r8, r9
	j .LBB0_107
.LBB0_112:                              # %vector.body104.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_114
.LBB0_113:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 202 11 is_stmt 1              # parallel-rne.mlir:202:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	add.s r3, r10, r15
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	seteq.d r2, r[27:28], r[6:7]
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	stores.w r14, 12(r3)
	stores.w r23, 8(r3)
	stores.w r1, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	bneq r2, zero, .LBB0_104
.LBB0_114:                              # %vector.body104
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	add.ul r[1:2], r[27:28], r[20:21]
	slli r15, r1, 2
	add.s r2, r16, r15
	loads.w r9, 12(r2)
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	and r22, r9, r13
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	setlt.u r1, r4, r22
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r1, zero, .LBB0_116
# %bb.115:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_114 Depth=3
	lui r1, 1024
	or r14, r9, r1
.LBB0_117:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r12, 8(r2)
	and r19, r12, r13
	setlt.u r1, r4, r19
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r1, zero, .LBB0_119
# %bb.118:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r12, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_114 Depth=3
	lui r1, 1024
	or r23, r12, r1
.LBB0_120:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r26, 4(r2)
	and r3, r26, r13
	setlt.u r1, r4, r3
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r1, zero, .LBB0_122
# %bb.121:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r26, 0
	j .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_114 Depth=3
	lui r1, 1024
	or r1, r26, r1
.LBB0_123:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r2, 0(r2)
	and r8, r2, r13
	setlt.u r11, r4, r8
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r11, zero, .LBB0_125
# %bb.124:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r8, r5, r8
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r8, zero, .LBB0_126
	j .LBB0_127
.LBB0_125:                              #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r2, r11
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r8, r5, r8
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r8, zero, .LBB0_127
.LBB0_126:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	lui r8, 1048560
	add.s r2, r2, r18
	and r11, r2, r8
.LBB0_127:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	setlt.u r2, r5, r3
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r2, zero, .LBB0_130
# %bb.128:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r19
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r2, zero, .LBB0_131
.LBB0_129:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r22
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r2, zero, .LBB0_113
	j .LBB0_132
.LBB0_130:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r18
	and r1, r1, r2
	setlt.u r2, r5, r19
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r2, zero, .LBB0_129
.LBB0_131:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r18
	and r23, r2, r3
	setlt.u r2, r5, r22
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r2, zero, .LBB0_113
.LBB0_132:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r18
	and r14, r2, r3
	j .LBB0_113
.LBB0_133:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r8
	addli r11, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_134:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 222 7 is_stmt 1               # parallel-rne.mlir:222:7
	loadli.w r1,  -2448(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_169
# %bb.135:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	beq r8, r11, .LBB0_200
.LBB0_136:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	addli r1, zero, 7
	beq r8, r1, .LBB0_231
.LBB0_137:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 6
	beq r8, r1, .LBB0_261
# %bb.138:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 5
	bneq r8, r1, .LBB0_292
# %bb.139:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_141
.LBB0_140:                              # %middle.block
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, r30, -2432
	addli r1, zero, 23
	load.d r[8:9], 0(r3)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 288 9 is_stmt 1               # parallel-rne.mlir:288:9
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[2:3], r[8:9], 1
	beq r1, zero, .LBB0_291
.LBB0_141:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_150 Depth 3
                                        #       Child Loop BB0_144 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	addli r8, r30, -2432
	sll.d r[20:21], r[2:3], r1
	store.d r[2:3], 0(r8)                   # 8-byte Folded Spill
	.loc	1 289 11 is_stmt 1              # parallel-rne.mlir:289:11
	bneq r10, r16, .LBB0_148
# %bb.142:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_144
.LBB0_143:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	setlt.ul r8, r[1:2], r[24:25]
	.loc	1 304 13 is_stmt 1              # parallel-rne.mlir:304:13
	add.s r3, r10, r3
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	stores.w r9, 0(r3)
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	beq r8, zero, .LBB0_140
.LBB0_144:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	add.ul r[8:9], r[1:2], r[20:21]
	slli r3, r8, 2
	add.s r8, r16, r3
	loads.w r11, 0(r8)
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	and r8, r11, r13
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	setlt.u r9, r4, r8
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r9, zero, .LBB0_146
# %bb.145:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r11, 0
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r8, r5, r8
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r8, zero, .LBB0_143
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r11, r9
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r8, r5, r8
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r8, zero, .LBB0_143
.LBB0_147:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r11, 16
	lui r9, 1048560
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r18
	and r9, r8, r9
	j .LBB0_143
.LBB0_148:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_141 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_150
.LBB0_149:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 289 11 is_stmt 1              # parallel-rne.mlir:289:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	add.s r3, r10, r15
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	seteq.d r2, r[27:28], r[6:7]
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	stores.w r14, 12(r3)
	stores.w r23, 8(r3)
	stores.w r1, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	bneq r2, zero, .LBB0_140
.LBB0_150:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	add.ul r[1:2], r[27:28], r[20:21]
	slli r15, r1, 2
	add.s r2, r16, r15
	loads.w r9, 12(r2)
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	and r22, r9, r13
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	setlt.u r1, r4, r22
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r1, zero, .LBB0_152
# %bb.151:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_150 Depth=3
	lui r1, 1024
	or r14, r9, r1
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r12, 8(r2)
	and r19, r12, r13
	setlt.u r1, r4, r19
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r1, zero, .LBB0_155
# %bb.154:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r12, 0
	j .LBB0_156
.LBB0_155:                              #   in Loop: Header=BB0_150 Depth=3
	lui r1, 1024
	or r23, r12, r1
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r26, 4(r2)
	and r3, r26, r13
	setlt.u r1, r4, r3
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r1, zero, .LBB0_158
# %bb.157:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r26, 0
	j .LBB0_159
.LBB0_158:                              #   in Loop: Header=BB0_150 Depth=3
	lui r1, 1024
	or r1, r26, r1
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r2, 0(r2)
	and r8, r2, r13
	setlt.u r11, r4, r8
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r11, zero, .LBB0_165
# %bb.160:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r8, r5, r8
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r8, zero, .LBB0_162
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	lui r8, 1048560
	add.s r2, r2, r18
	and r11, r2, r8
.LBB0_162:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	setlt.u r2, r5, r3
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r2, zero, .LBB0_166
# %bb.163:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r19
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r2, zero, .LBB0_167
.LBB0_164:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r22
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r2, zero, .LBB0_149
	j .LBB0_168
.LBB0_165:                              #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r2, r11
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r8, r5, r8
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r8, zero, .LBB0_161
	j .LBB0_162
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r26, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r18
	and r1, r1, r2
	setlt.u r2, r5, r19
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r2, zero, .LBB0_164
.LBB0_167:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r18
	and r23, r2, r3
	setlt.u r2, r5, r22
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r2, zero, .LBB0_149
.LBB0_168:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r18
	and r14, r2, r3
	j .LBB0_149
.LBB0_169:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 12
	.loc	1 222 7 is_stmt 1               # parallel-rne.mlir:222:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_171
.LBB0_170:                              # %middle.block90
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, r30, -2432
	addli r1, zero, 15
	load.d r[8:9], 0(r3)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 230 9 is_stmt 1               # parallel-rne.mlir:230:9
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[2:3], r[8:9], 1
	beq r1, zero, .LBB0_199
.LBB0_171:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_180 Depth 3
                                        #       Child Loop BB0_174 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	addli r8, r30, -2432
	sll.d r[20:21], r[2:3], r1
	store.d r[2:3], 0(r8)                   # 8-byte Folded Spill
	.loc	1 231 11 is_stmt 1              # parallel-rne.mlir:231:11
	bneq r10, r16, .LBB0_178
# %bb.172:                              # %scalar.ph84.preheader
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_174
.LBB0_173:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	setlt.ul r8, r[1:2], r[24:25]
	.loc	1 246 13 is_stmt 1              # parallel-rne.mlir:246:13
	add.s r3, r10, r3
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	stores.w r9, 0(r3)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	beq r8, zero, .LBB0_170
.LBB0_174:                              # %scalar.ph84
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[8:9], r[1:2], r[20:21]
	slli r3, r8, 2
	add.s r8, r16, r3
	loads.w r11, 0(r8)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r8, r11, r13
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	setlt.u r9, r4, r8
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r9, zero, .LBB0_176
# %bb.175:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r11, 0
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r8, r5, r8
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r8, zero, .LBB0_173
	j .LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r11, r9
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r8, r5, r8
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r8, zero, .LBB0_173
.LBB0_177:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r11, 16
	lui r9, 1048560
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r18
	and r9, r8, r9
	j .LBB0_173
.LBB0_178:                              # %vector.body86.preheader
                                        #   in Loop: Header=BB0_171 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_180
.LBB0_179:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 231 11 is_stmt 1              # parallel-rne.mlir:231:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	add.s r3, r10, r15
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	seteq.d r2, r[27:28], r[6:7]
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	stores.w r14, 12(r3)
	stores.w r23, 8(r3)
	stores.w r1, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	bneq r2, zero, .LBB0_170
.LBB0_180:                              # %vector.body86
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[1:2], r[27:28], r[20:21]
	slli r15, r1, 2
	add.s r2, r16, r15
	loads.w r9, 12(r2)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r22, r9, r13
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	setlt.u r1, r4, r22
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r1, zero, .LBB0_182
# %bb.181:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_180 Depth=3
	lui r1, 1024
	or r14, r9, r1
.LBB0_183:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r12, 8(r2)
	and r19, r12, r13
	setlt.u r1, r4, r19
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r1, zero, .LBB0_185
# %bb.184:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r12, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_180 Depth=3
	lui r1, 1024
	or r23, r12, r1
.LBB0_186:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r26, 4(r2)
	and r3, r26, r13
	setlt.u r1, r4, r3
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r1, zero, .LBB0_188
# %bb.187:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r26, 0
	j .LBB0_189
.LBB0_188:                              #   in Loop: Header=BB0_180 Depth=3
	lui r1, 1024
	or r1, r26, r1
.LBB0_189:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r2, 0(r2)
	and r8, r2, r13
	setlt.u r11, r4, r8
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r11, zero, .LBB0_195
# %bb.190:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r8, r5, r8
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r8, zero, .LBB0_192
.LBB0_191:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	lui r8, 1048560
	add.s r2, r2, r18
	and r11, r2, r8
.LBB0_192:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	setlt.u r2, r5, r3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r2, zero, .LBB0_196
# %bb.193:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r19
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r2, zero, .LBB0_197
.LBB0_194:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r22
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r2, zero, .LBB0_179
	j .LBB0_198
.LBB0_195:                              #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r2, r11
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r8, r5, r8
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r8, zero, .LBB0_191
	j .LBB0_192
.LBB0_196:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r26, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r18
	and r1, r1, r2
	setlt.u r2, r5, r19
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r2, zero, .LBB0_194
.LBB0_197:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r18
	and r23, r2, r3
	setlt.u r2, r5, r22
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r2, zero, .LBB0_179
.LBB0_198:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r18
	and r14, r2, r3
	j .LBB0_179
.LBB0_199:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r8
	addli r11, zero, 4
	.loc	1 222 7                         # parallel-rne.mlir:222:7
	mfence { sm }
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	bneq r8, r11, .LBB0_136
.LBB0_200:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_202
.LBB0_201:                              # %middle.block81
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, r30, -2432
	addli r1, zero, 19
	load.d r[8:9], 0(r3)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 259 9 is_stmt 1               # parallel-rne.mlir:259:9
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[2:3], r[8:9], 1
	beq r1, zero, .LBB0_230
.LBB0_202:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_211 Depth 3
                                        #       Child Loop BB0_205 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	addli r8, r30, -2432
	sll.d r[20:21], r[2:3], r1
	store.d r[2:3], 0(r8)                   # 8-byte Folded Spill
	.loc	1 260 11 is_stmt 1              # parallel-rne.mlir:260:11
	bneq r10, r16, .LBB0_209
# %bb.203:                              # %scalar.ph75.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_205
.LBB0_204:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	setlt.ul r8, r[1:2], r[24:25]
	.loc	1 275 13 is_stmt 1              # parallel-rne.mlir:275:13
	add.s r3, r10, r3
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	stores.w r9, 0(r3)
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	beq r8, zero, .LBB0_201
.LBB0_205:                              # %scalar.ph75
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.ul r[8:9], r[1:2], r[20:21]
	slli r3, r8, 2
	add.s r8, r16, r3
	loads.w r11, 0(r8)
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	and r8, r11, r13
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	setlt.u r9, r4, r8
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r9, zero, .LBB0_207
# %bb.206:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r11, 0
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r8, r5, r8
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r8, zero, .LBB0_204
	j .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r11, r9
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r8, r5, r8
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r8, zero, .LBB0_204
.LBB0_208:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r11, 16
	lui r9, 1048560
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r18
	and r9, r8, r9
	j .LBB0_204
.LBB0_209:                              # %vector.body77.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_211
.LBB0_210:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 260 11 is_stmt 1              # parallel-rne.mlir:260:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	add.s r3, r10, r15
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	seteq.d r2, r[27:28], r[6:7]
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	stores.w r14, 12(r3)
	stores.w r23, 8(r3)
	stores.w r1, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	bneq r2, zero, .LBB0_201
.LBB0_211:                              # %vector.body77
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.ul r[1:2], r[27:28], r[20:21]
	slli r15, r1, 2
	add.s r2, r16, r15
	loads.w r9, 12(r2)
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	and r22, r9, r13
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	setlt.u r1, r4, r22
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r1, zero, .LBB0_213
# %bb.212:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_211 Depth=3
	lui r1, 1024
	or r14, r9, r1
.LBB0_214:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r12, 8(r2)
	and r19, r12, r13
	setlt.u r1, r4, r19
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r1, zero, .LBB0_216
# %bb.215:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r12, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_211 Depth=3
	lui r1, 1024
	or r23, r12, r1
.LBB0_217:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r26, 4(r2)
	and r3, r26, r13
	setlt.u r1, r4, r3
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r1, zero, .LBB0_219
# %bb.218:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r26, 0
	j .LBB0_220
.LBB0_219:                              #   in Loop: Header=BB0_211 Depth=3
	lui r1, 1024
	or r1, r26, r1
.LBB0_220:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r2, 0(r2)
	and r8, r2, r13
	setlt.u r11, r4, r8
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r11, zero, .LBB0_226
# %bb.221:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r8, r5, r8
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r8, zero, .LBB0_223
.LBB0_222:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	lui r8, 1048560
	add.s r2, r2, r18
	and r11, r2, r8
.LBB0_223:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	setlt.u r2, r5, r3
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r2, zero, .LBB0_227
# %bb.224:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r19
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r2, zero, .LBB0_228
.LBB0_225:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r22
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r2, zero, .LBB0_210
	j .LBB0_229
.LBB0_226:                              #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r2, r11
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r8, r5, r8
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r8, zero, .LBB0_222
	j .LBB0_223
.LBB0_227:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r26, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r18
	and r1, r1, r2
	setlt.u r2, r5, r19
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r2, zero, .LBB0_225
.LBB0_228:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r18
	and r23, r2, r3
	setlt.u r2, r5, r22
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r2, zero, .LBB0_210
.LBB0_229:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r18
	and r14, r2, r3
	j .LBB0_210
.LBB0_230:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r8
	addli r11, zero, 4
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	mfence { sm }
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	addli r1, zero, 7
	bneq r8, r1, .LBB0_137
.LBB0_231:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 338 7 is_stmt 1               # parallel-rne.mlir:338:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_233
.LBB0_232:                              # %middle.block72
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, r30, -2432
	addli r1, zero, 31
	load.d r[8:9], 0(r3)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 346 9 is_stmt 1               # parallel-rne.mlir:346:9
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[2:3], r[8:9], 1
	beq r1, zero, .LBB0_291
.LBB0_233:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_242 Depth 3
                                        #       Child Loop BB0_236 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	addli r8, r30, -2432
	sll.d r[20:21], r[2:3], r1
	store.d r[2:3], 0(r8)                   # 8-byte Folded Spill
	.loc	1 347 11 is_stmt 1              # parallel-rne.mlir:347:11
	bneq r10, r16, .LBB0_240
# %bb.234:                              # %scalar.ph66.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_236
.LBB0_235:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	setlt.ul r8, r[1:2], r[24:25]
	.loc	1 362 13 is_stmt 1              # parallel-rne.mlir:362:13
	add.s r3, r10, r3
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	stores.w r9, 0(r3)
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	beq r8, zero, .LBB0_232
.LBB0_236:                              # %scalar.ph66
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	add.ul r[8:9], r[1:2], r[20:21]
	slli r3, r8, 2
	add.s r8, r16, r3
	loads.w r11, 0(r8)
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r8, r11, r13
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	setlt.u r9, r4, r8
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r9, zero, .LBB0_238
# %bb.237:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r11, 0
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r8, r5, r8
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r8, zero, .LBB0_235
	j .LBB0_239
.LBB0_238:                              #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r11, r9
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r8, r5, r8
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r8, zero, .LBB0_235
.LBB0_239:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r11, 16
	lui r9, 1048560
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r18
	and r9, r8, r9
	j .LBB0_235
.LBB0_240:                              # %vector.body68.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_242
.LBB0_241:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 347 11 is_stmt 1              # parallel-rne.mlir:347:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	add.s r3, r10, r15
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	seteq.d r2, r[27:28], r[6:7]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	stores.w r14, 12(r3)
	stores.w r23, 8(r3)
	stores.w r1, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	bneq r2, zero, .LBB0_232
.LBB0_242:                              # %vector.body68
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	add.ul r[1:2], r[27:28], r[20:21]
	slli r15, r1, 2
	add.s r2, r16, r15
	loads.w r9, 12(r2)
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r22, r9, r13
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	setlt.u r1, r4, r22
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r1, zero, .LBB0_244
# %bb.243:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_245
.LBB0_244:                              #   in Loop: Header=BB0_242 Depth=3
	lui r1, 1024
	or r14, r9, r1
.LBB0_245:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r12, 8(r2)
	and r19, r12, r13
	setlt.u r1, r4, r19
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r1, zero, .LBB0_247
# %bb.246:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r12, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_242 Depth=3
	lui r1, 1024
	or r23, r12, r1
.LBB0_248:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r26, 4(r2)
	and r3, r26, r13
	setlt.u r1, r4, r3
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r1, zero, .LBB0_250
# %bb.249:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r26, 0
	j .LBB0_251
.LBB0_250:                              #   in Loop: Header=BB0_242 Depth=3
	lui r1, 1024
	or r1, r26, r1
.LBB0_251:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r2, 0(r2)
	and r8, r2, r13
	setlt.u r11, r4, r8
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r11, zero, .LBB0_253
# %bb.252:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r8, r5, r8
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r8, zero, .LBB0_254
	j .LBB0_255
.LBB0_253:                              #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r2, r11
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r8, r5, r8
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r8, zero, .LBB0_255
.LBB0_254:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	lui r8, 1048560
	add.s r2, r2, r18
	and r11, r2, r8
.LBB0_255:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r2, r5, r3
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r2, zero, .LBB0_258
# %bb.256:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r19
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r2, zero, .LBB0_259
.LBB0_257:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r22
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r2, zero, .LBB0_241
	j .LBB0_260
.LBB0_258:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r18
	and r1, r1, r2
	setlt.u r2, r5, r19
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r2, zero, .LBB0_257
.LBB0_259:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r18
	and r23, r2, r3
	setlt.u r2, r5, r22
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r2, zero, .LBB0_241
.LBB0_260:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r18
	and r14, r2, r3
	j .LBB0_241
.LBB0_261:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 24
	.loc	1 309 7 is_stmt 1               # parallel-rne.mlir:309:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_263
.LBB0_262:                              # %middle.block63
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, r30, -2432
	addli r1, zero, 27
	load.d r[8:9], 0(r3)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 317 9 is_stmt 1               # parallel-rne.mlir:317:9
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[2:3], r[8:9], 1
	beq r1, zero, .LBB0_291
.LBB0_263:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_266 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	addli r8, r30, -2432
	sll.d r[20:21], r[2:3], r1
	store.d r[2:3], 0(r8)                   # 8-byte Folded Spill
	.loc	1 318 11 is_stmt 1              # parallel-rne.mlir:318:11
	bneq r10, r16, .LBB0_270
# %bb.264:                              # %scalar.ph57.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_266
.LBB0_265:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	setlt.ul r8, r[1:2], r[24:25]
	.loc	1 333 13 is_stmt 1              # parallel-rne.mlir:333:13
	add.s r3, r10, r3
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	stores.w r9, 0(r3)
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	beq r8, zero, .LBB0_262
.LBB0_266:                              # %scalar.ph57
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	add.ul r[8:9], r[1:2], r[20:21]
	slli r3, r8, 2
	add.s r8, r16, r3
	loads.w r11, 0(r8)
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	and r8, r11, r13
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	setlt.u r9, r4, r8
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r9, zero, .LBB0_268
# %bb.267:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r11, 0
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r8, r5, r8
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r8, zero, .LBB0_265
	j .LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r11, r9
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r8, r5, r8
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r8, zero, .LBB0_265
.LBB0_269:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r11, 16
	lui r9, 1048560
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r18
	and r9, r8, r9
	j .LBB0_265
.LBB0_270:                              # %vector.body59.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_272
.LBB0_271:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 318 11 is_stmt 1              # parallel-rne.mlir:318:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	add.s r3, r10, r15
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	seteq.d r2, r[27:28], r[6:7]
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	stores.w r14, 12(r3)
	stores.w r23, 8(r3)
	stores.w r1, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	bneq r2, zero, .LBB0_262
.LBB0_272:                              # %vector.body59
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	add.ul r[1:2], r[27:28], r[20:21]
	slli r15, r1, 2
	add.s r2, r16, r15
	loads.w r9, 12(r2)
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	and r22, r9, r13
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	setlt.u r1, r4, r22
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r1, zero, .LBB0_274
# %bb.273:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_272 Depth=3
	lui r1, 1024
	or r14, r9, r1
.LBB0_275:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r12, 8(r2)
	and r19, r12, r13
	setlt.u r1, r4, r19
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r1, zero, .LBB0_277
# %bb.276:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r12, 0
	j .LBB0_278
.LBB0_277:                              #   in Loop: Header=BB0_272 Depth=3
	lui r1, 1024
	or r23, r12, r1
.LBB0_278:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r26, 4(r2)
	and r3, r26, r13
	setlt.u r1, r4, r3
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r1, zero, .LBB0_280
# %bb.279:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r26, 0
	j .LBB0_281
.LBB0_280:                              #   in Loop: Header=BB0_272 Depth=3
	lui r1, 1024
	or r1, r26, r1
.LBB0_281:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r2, 0(r2)
	and r8, r2, r13
	setlt.u r11, r4, r8
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r11, zero, .LBB0_283
# %bb.282:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r8, r5, r8
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r8, zero, .LBB0_284
	j .LBB0_285
.LBB0_283:                              #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r2, r11
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r8, r5, r8
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r8, zero, .LBB0_285
.LBB0_284:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	lui r8, 1048560
	add.s r2, r2, r18
	and r11, r2, r8
.LBB0_285:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	setlt.u r2, r5, r3
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r2, zero, .LBB0_288
# %bb.286:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r19
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r2, zero, .LBB0_289
.LBB0_287:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r22
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r2, zero, .LBB0_271
	j .LBB0_290
.LBB0_288:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r18
	and r1, r1, r2
	setlt.u r2, r5, r19
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r2, zero, .LBB0_287
.LBB0_289:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r18
	and r23, r2, r3
	setlt.u r2, r5, r22
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r2, zero, .LBB0_271
.LBB0_290:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r18
	and r14, r2, r3
	j .LBB0_271
.LBB0_291:                              # %.sink.split51
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r8
	addli r11, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_292:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 367 7 is_stmt 1               # parallel-rne.mlir:367:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	loadli.w r1,  -2448(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.293:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r16, zero, 1
	addli r19, zero, 17
	.loc	1 385 7 is_stmt 1               # parallel-rne.mlir:385:7
	bneq r8, zero, .LBB0_7
# %bb.294:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 1984
	.loc	1 375 13 is_stmt 1              # parallel-rne.mlir:375:13
	loadli.w r1,  -2488(r30)                # 4-byte Folded Reload
	zext_int2long r[8:9], r3
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	loadli.w r3,  -2484(r30)                # 4-byte Folded Reload
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	zext_int2long r[1:2], r1
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	sext_int2long r[11:12], r3
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	addli r3, r30, -2424
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	min.ul r[8:9], r[1:2], r[8:9]
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	load.d r[14:15], 0(r3)                  # 8-byte Folded Reload
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	addli.d r[8:9], r[8:9], 64
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	addli r3, r30, -2480
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	max.ul r[8:9], r[8:9], r[1:2]
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	min.sl r[14:15], r[11:12], r[14:15]
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	sub.sl r[1:2], r[8:9], r[1:2]
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	addli.d r[14:15], r[14:15], 32
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	min.ul r[1:2], r[1:2], r[6:7]
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	load.d r[6:7], 0(r3)                    # 8-byte Folded Reload
	addli r3, zero, 32
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	max.sl r[8:9], r[14:15], r[11:12]
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	sub.sl r[8:9], r[8:9], r[11:12]
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	load.d r[11:12], 16(r30)
	sll.d r[6:7], r[6:7], r19
	add.ul r[6:7], r[11:12], r[6:7]
	zext_int2long r[11:12], r3
	addli r3, r30, -2472
	load.d r[14:15], 0(r3)                  # 8-byte Folded Reload
	addli r3, zero, 12
	xwait r3, 0
	ori r3, r10, 64
	addli r10, zero, 64
	add.ul r[6:7], r[6:7], r[14:15]
	addli r14, zero, 5
	lock zero, r14
	dma_cfg r16, r16, zero, 0
	dma_cfg zero, r16, zero, 1
	dma_cfg r7, zero, zero, 2
	dma_cfg r6, r3, r10, 3
	addli r3, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	.loc	1 380 13                        # parallel-rne.mlir:380:13
	min.sl r[6:7], r[8:9], r[11:12]
	addli r11, zero, 4
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r8
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	srli r3, r3, 5
	andi r1, r1, 62
	dma_cfg r10, r2, r3, 4
	addli r2, zero, 256
	addli r3, zero, 4096
	dma_cfg r3, r2, r6, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r14
	j .LBB0_6
.LBB0_295:                              # %._crit_edge
	.loc	1 387 5                         # parallel-rne.mlir:387:5
	xsignal zero, 0
	bneq r8, zero, .LBB0_297
# %bb.296:
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
.LBB0_297:
	.loc	1 388 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:388:5
	addli sp, sp, 2496
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
	.long	2560                            # 0xa00
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-qyvmp5ny" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
