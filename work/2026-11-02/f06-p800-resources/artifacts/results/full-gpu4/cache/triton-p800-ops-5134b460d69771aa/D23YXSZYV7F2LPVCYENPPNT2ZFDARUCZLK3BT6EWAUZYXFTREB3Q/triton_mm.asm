	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-91wplhik" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2576
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r18
	addli r30, sp, 2512
	xsignal_mode_cfg r1
	beq r18, zero, .LBB0_2
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	storeli.w zero, -1524(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -2024(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -2412(r30)
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r1, r2, r6
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	fmac.s r2, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	min.s r3, r2, r3
	.loc	1 49 5                          # parallel-rne.mlir:49:5
	ble.s r3, r1, .LBB0_294
# %bb.4:                                # %.lr.ph
	.loc	1 41 11                         # parallel-rne.mlir:41:11
	sext_int2long r[19:20], r1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 41 11                         # parallel-rne.mlir:41:11
	addli r4, r30, -2504
	lui r1, 15
	addli r10, zero, 4
	addli r21, zero, 1
	lui r8, 1024
	lui r12, 522240
	lui r16, 1048560
	addli r9, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	ori r2, r1, 4095
	addli r3, r30, -2512
	lui r1, 1047552
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	lui r1, 1023
	lui r2, 522239
	ori r1, r1, 4095
	ori r5, r2, 4095
	storeli.w r1, -2436(r30)                # 4-byte Folded Spill
	lui r1, 524287
	ori r3, r1, 4095
	lui r1, 7
	ori r4, r1, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 368 7 is_stmt 1               # parallel-rne.mlir:368:7
	addli r1, zero, 11
	addli r21, zero, 1
	xsignal r1, 0
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	addli r1, zero, 12
	xsignal r1, 0
	addli r1, r30, -2464
	load.d r[19:20], 0(r1)                  # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 49 5                          # parallel-rne.mlir:49:5
	addli r6, r30, -2504
	addli.d r[19:20], r[19:20], 1
	loadli.w r9,  -2468(r30)                # 4-byte Folded Reload
	load.d r[1:2], 0(r6)                    # 8-byte Folded Reload
	setlt.sl r1, r[19:20], r[1:2]
	beq r1, zero, .LBB0_294
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_41 Depth 2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_44 Depth 3
                                        #     Child Loop BB0_74 Depth 2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_77 Depth 3
                                        #     Child Loop BB0_104 Depth 2
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_107 Depth 3
                                        #     Child Loop BB0_170 Depth 2
                                        #       Child Loop BB0_179 Depth 3
                                        #       Child Loop BB0_173 Depth 3
                                        #     Child Loop BB0_201 Depth 2
                                        #       Child Loop BB0_210 Depth 3
                                        #       Child Loop BB0_204 Depth 3
                                        #     Child Loop BB0_140 Depth 2
                                        #       Child Loop BB0_149 Depth 3
                                        #       Child Loop BB0_143 Depth 3
                                        #     Child Loop BB0_262 Depth 2
                                        #       Child Loop BB0_271 Depth 3
                                        #       Child Loop BB0_265 Depth 3
                                        #     Child Loop BB0_232 Depth 2
                                        #       Child Loop BB0_241 Depth 3
                                        #       Child Loop BB0_235 Depth 3
	.loc	1 76 7                          # parallel-rne.mlir:76:7
	bneq r18, r10, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  32(r30)
	addli r2, r30, -2464
	addli r11, zero, 5
	addli r10, zero, 8
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	loadli.w r27,  -2024(r30)
	addli r23, zero, 0
	addli r28, zero, 0
	store.d r[19:20], 0(r2)                 # 8-byte Folded Spill
	loadli.w r2,  28(r30)
	mod.s r6, r9, r11
	addli r9, r9, 1
	div.s r1, r19, r1
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	loadli.w r20,  -2412(r30)
	storeli.w r9, -2468(r30)                # 4-byte Folded Spill
	addli r9, zero, 32
	slli r17, r6, 13
	lui r6, 10
	div.s r1, r1, r2
	addli r2, zero, 512
	add.s r15, r17, r6
	div.s r2, r1, r2
	slli r7, r2, 3
	slli r2, r2, 9
	sub.s r9, r9, r7
	sub.s r2, r1, r2
	min.s r9, r9, r10
	mod.s r1, r1, r9
	div.s r2, r2, r9
	add.s r1, r7, r1
	slli r6, r2, 5
	storeli.w r6, -2496(r30)                # 4-byte Folded Spill
	zext_int2long r[6:7], r2
	slli r2, r1, 6
	zext_int2long r[9:10], r1
	addli r1, zero, 17
	storeli.w r2, -2492(r30)                # 4-byte Folded Spill
	sll.d r[6:7], r[6:7], r11
	addli r2, r30, -2488
	addli r11, r30, -2512
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	sll.d r[1:2], r[9:10], r1
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	sll.d r[9:10], r[6:7], r21
	load.d r[6:7], 0(r11)                   # 8-byte Folded Reload
	addli r11, r30, -2424
	and.d r[6:7], r[1:2], r[6:7]
	store.d r[6:7], 0(r11)                  # 8-byte Folded Spill
	load.d r[6:7], 8(r30)
	addli r11, r30, -2480
	store.d r[9:10], 0(r11)                 # 8-byte Folded Spill
	add.ul r[6:7], r[6:7], r[9:10]
	addli r9, r30, -2456
	store.d r[6:7], 0(r9)                   # 8-byte Folded Spill
	addli r6, r30, -2448
	store.d r[1:2], 0(r6)                   # 8-byte Folded Spill
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r7, 20
	.loc	1 100 9 is_stmt 1               # parallel-rne.mlir:100:9
	lock zero, r10
	addli r24, zero, 64
	addli r9, zero, 2
	addli r20, r27, 0
	addli r27, r1, 0
	dma_cfg r11, r11, zero, 0
	ori r7, r7, 64
	dma_cfg zero, r22, zero, 2
	add.s r6, r6, r7
	addli r7, zero, 5
	dma_cfg r6, r21, r24, 3
	addli r21, zero, 128
	addli r6, zero, 4096
	dma_cfg r21, r24, r11, 4
	dma_cfg r21, r6, r13, 5
	addli r6, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 7
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 8
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 9
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 11
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 12
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 13
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 14
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 15
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 16
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 17
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 18
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 19
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 20
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 21
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 22
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 23
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 24
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 25
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 26
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 27
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 28
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 29
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 30
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 31
	dma_cfg zero, zero, r6, 10
	addli r6, r30, -2448
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r14, zero, r24, 3
	dma_cfg r21, zero, r11, 4
	dma_cfg r21, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	xsignal r9, 0
	load.d r[1:2], 0(r6)                    # 8-byte Folded Reload
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r6,  -1524(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r7,  -500(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r6, r6, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r7, r7, 1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	storeli.w r6, -1524(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r7, -500(r30)
.LBB0_12:                               # %.thread20
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r28, r28, 1
	addli r6, zero, 64
	beq r28, r6, .LBB0_33
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 121 15                        # parallel-rne.mlir:121:15
	addli r23, r23, 1
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 78 15                         # parallel-rne.mlir:78:15
	zext_int2long r[10:11], r28
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	addli r6, zero, 5
	sll.d r[6:7], r[10:11], r6
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	add.ul r[21:22], r[6:7], r[1:2]
	loadli.w r6,  -2436(r30)                # 4-byte Folded Reload
	zext_int2long r[6:7], r6
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	setlt.ul r6, r[6:7], r[21:22]
	addli r7, r30, -2424
	load.d r[25:26], 0(r7)                  # 8-byte Folded Reload
	.loc	1 86 15                         # parallel-rne.mlir:86:15
	bneq r6, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[25:26], zero
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	add.s r9, r27, r23
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	addli r13, zero, 124
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r6, r20, r23
	.loc	1 94 15 is_stmt 1               # parallel-rne.mlir:94:15
	addli r7, zero, 96
	addli r14, zero, 1984
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r24
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	mod.s r13, r9, r13
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	mod.s r7, r6, r7
	addli r6, r6, 1
	zext_int2long r[18:19], r14
	addli r14, r30, -2432
	store.d r[18:19], 0(r14)                # 8-byte Folded Spill
	storeli.w r6, -2412(r30)
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	lui r14, 20
	slli r6, r13, 13
	addli r13, r9, 1
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	slli r7, r7, 13
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	storeli.w r13, -2024(r30)
	add.s r14, r6, r14
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r13, zero, 2
	beq r24, r13, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r13, zero, 1
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	bneq r24, r13, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r7, zero, 2048
	sub.sl r[10:11], r[21:22], r[25:26]
	addli r2, r30, -2432
	addli r1, r27, 0
	addli r27, r20, 0
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	sll.d r[21:22], r[21:22], r13
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r18
	zext_int2long r[25:26], r7
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	load.d r[19:20], 0(r2)                  # 8-byte Folded Reload
	.loc	1 100 9 is_stmt 1               # parallel-rne.mlir:100:9
	addli r7, zero, 123
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.sl r[10:11], r[10:11], r[25:26]
	min.sl r[25:26], r[10:11], r[19:20]
	sub.sl r[10:11], r[25:26], r[10:11]
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	load.d r[24:25], 0(r30)
	addli r13, r10, 64
	addli r10, zero, 4
	addli r11, zero, 1
	add.ul r[21:22], r[24:25], r[21:22]
	addli r25, zero, 3
	xwait r25, 0
	blt.s r7, r9, .LBB0_10
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r9, zero, 5
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r7, zero, 2
	addli r24, zero, 128
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 6
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 7
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
	addli r7, zero, 14
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 15
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
	addli r7, zero, 64
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r14, zero, r7, 3
	dma_cfg r24, zero, r11, 4
	dma_cfg r24, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	j .LBB0_10
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r9, zero, 2
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	addli r6, zero, 5
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r18
	addli r10, zero, 4
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	xwait r9, 0
	xwait r6, 0
	lock zero, zero
	addli r6, zero, 32
	ds_cfg r9, zero, 0
	addli r9, zero, 64
	ds_cfg r6, zero, 1
	ds_cfg r6, zero, 14
	ds_cfg r9, zero, 13
	shuffle_batch r7, r14, r6, 1
	addli r6, zero, 3
	unlock zero
	xsignal r6, 0
	xsignal r10, 0
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r13,  -500(r30)
	addli r14, zero, 124
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r6,  -1524(r30)
	addli r9, zero, 255
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r14, r13, r14
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	mod.s r9, r6, r9
	addli r6, r6, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r18, r13, 1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	storeli.w r6, -1524(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r18, -500(r30)
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r18, zero, 7
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r6, r14, 12
	lui r14, 268
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	slli r9, r9, 12
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	add.s r14, r6, r14
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	beq r24, r18, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r18, zero, 6
	bneq r24, r18, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=2
	addli r7, r30, -2456
	addli r24, zero, 17
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r18
	addli r25, zero, 7
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	load.d r[21:22], 0(r7)                  # 8-byte Folded Reload
	sll.d r[9:10], r[10:11], r24
	addli r7, zero, 123
	xwait r25, 0
	add.ul r[21:22], r[21:22], r[9:10]
	addli r10, zero, 4
	blt.s r7, r13, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r9, zero, 5
	addli r11, zero, 1
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r7, zero, 2
	addli r13, zero, 128
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 3
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 6
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 8
	dma_cfg zero, zero, r25, 10
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
	addli r7, zero, 14
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 15
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 16
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 18
	dma_cfg zero, zero, r24, 10
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
	addli r7, zero, 64
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r14, zero, r7, 3
	addli r7, zero, 32
	dma_cfg r13, zero, r11, 4
	dma_cfg r13, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r7, 268
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	lock zero, r10
	addli r11, zero, 64
	addli r9, zero, 4096
	addli r13, zero, 18
	ori r7, r7, 64
	add.s r6, r6, r7
	addli r7, zero, 1
	dma_cfg r7, r7, zero, 0
	dma_cfg zero, r22, zero, 2
	dma_cfg r6, r21, r11, 3
	addli r21, zero, 128
	addli r6, zero, 32
	addli r22, zero, 6
	dma_cfg r21, r11, r7, 4
	dma_cfg r21, r9, r6, 5
	addli r9, zero, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 2
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 3
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 8
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r25, 10
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
	addli r7, zero, 14
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 15
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 16
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 1
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 19
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 20
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 21
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 22
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 23
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 24
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 25
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 26
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 27
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 28
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 29
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 30
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 31
	dma_cfg zero, zero, r13, 10
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r14, zero, r11, 3
	dma_cfg r21, zero, r7, 4
	dma_cfg r21, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r22, 0
	.loc	1 118 9 is_stmt 1               # parallel-rne.mlir:118:9
	j .LBB0_12
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=2
	addli r6, zero, 6
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r18
	addli r10, zero, 4
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	xwait r6, 0
	addli r6, zero, 9
	xwait r6, 0
	addli r6, zero, 2
	lock zero, zero
	ds_cfg r6, zero, 0
	addli r6, zero, 32
	ds_cfg r6, zero, 1
	ds_cfg r6, zero, 14
	ds_cfg r6, zero, 13
	shuffle_coa r9, r14, r6, 2
	addli r6, zero, 7
	unlock zero
	xsignal r6, 0
	addli r6, zero, 8
	xsignal r6, 0
	j .LBB0_12
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r10, zero, 4
	.loc	1 120 9 is_stmt 1               # parallel-rne.mlir:120:9
	bneq r24, r10, .LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_14 Depth=2
	addli r6, zero, 8
	addli r11, zero, 1
	xwait r10, 0
	addli r13, zero, 64
	xwait r6, 0
	addli r6, zero, 32
	lock zero, r11
	mm_cfg r6, r6, r13, 0
	addli r6, zero, 2
	mm_cfg r6, r11, r11, 2
	beq r23, zero, .LBB0_31
# %bb.29:                               # %.preheader30
                                        #   in Loop: Header=BB0_14 Depth=2
	mm_acc r15, r7, r9, 8
	j .LBB0_32
.LBB0_30:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r28, r28, 1
	addli r6, zero, 64
	bneq r28, r6, .LBB0_13
	j .LBB0_35
.LBB0_31:                               # %.preheader29
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	mm r15, r7, r9, 8
.LBB0_32:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r6, zero, 5
	unlock r11
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r28, r28, 1
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	xsignal r6, 0
	addli r6, zero, 9
	xsignal r6, 0
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r6, zero, 64
	bneq r28, r6, .LBB0_13
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 124 7                         # parallel-rne.mlir:124:7
	bneq r18, r10, .LBB0_35
.LBB0_34:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	storeli.w zero, -2456(r30)              # 4-byte Folded Spill
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r18
	.loc	1 124 7                         # parallel-rne.mlir:124:7
	xsignal r1, 0
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	j .LBB0_38
.LBB0_35:                               # %.thread44
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r18
	addli r1, zero, 3
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	bneq r18, r1, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	storeli.w r1, -2456(r30)                # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -2456(r30)              # 4-byte Folded Spill
.LBB0_38:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 134 7 is_stmt 1               # parallel-rne.mlir:134:7
	addli r1, zero, 255
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	xfence
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	mfence { lm, sm, gm }
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	csr_set csr5, r1
	addli r1, zero, 31
	sync_core
	zext_int2long r[23:24], r1
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	bneq r18, zero, .LBB0_70
# %bb.39:                               #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	j .LBB0_41
.LBB0_40:                               # %middle.block117
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, r30, -2424
	addli r1, zero, 7
	load.d r[6:7], 0(r9)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 143 9 is_stmt 1               # parallel-rne.mlir:143:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_69
.LBB0_41:                               # %.preheader28
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_44 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r2, r30, -2424
	sll.d r[19:20], r[6:7], r1
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	bneq r17, r15, .LBB0_48
# %bb.42:                               # %scalar.ph111.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_44
.LBB0_43:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	setlt.ul r1, r[6:7], r[23:24]
	.loc	1 159 13 is_stmt 1              # parallel-rne.mlir:159:13
	add.s r2, r17, r9
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r10, 0(r2)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	beq r1, zero, .LBB0_40
.LBB0_44:                               # %scalar.ph111
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[1:2], r[6:7], r[19:20]
	slli r9, r1, 2
	add.s r1, r15, r9
	loads.w r11, 0(r1)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r1, r11, r3
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r2, r12, r1
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r2, zero, .LBB0_46
# %bb.45:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r1, r5, r1
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r1, zero, .LBB0_43
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r11, r8
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r1, r5, r1
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r1, zero, .LBB0_43
.LBB0_47:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r10, r1, r16
	j .LBB0_43
.LBB0_48:                               # %vector.body113.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_50
.LBB0_49:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	addli r1, zero, 32
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	addli.d r[27:28], r[27:28], 4
	zext_int2long r[1:2], r1
	seteq.d r1, r[27:28], r[1:2]
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r2, r17, r13
	stores.w r10, 12(r2)
	stores.w r14, 8(r2)
	stores.w r21, 4(r2)
	stores.w r25, 0(r2)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	bneq r1, zero, .LBB0_40
.LBB0_50:                               # %vector.body113
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[1:2], r[27:28], r[19:20]
	slli r13, r1, 2
	add.s r9, r15, r13
	loads.w r6, 12(r9)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r7, r6, r3
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r1, r12, r7
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r1, zero, .LBB0_52
# %bb.51:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r6, 0
	j .LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_50 Depth=3
	or r10, r6, r8
.LBB0_53:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r22, 8(r9)
	and r18, r22, r3
	setlt.u r1, r12, r18
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r1, zero, .LBB0_55
# %bb.54:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r22, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_50 Depth=3
	or r14, r22, r8
.LBB0_56:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r11, 4(r9)
	and r26, r11, r3
	setlt.u r1, r12, r26
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r1, zero, .LBB0_58
# %bb.57:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_50 Depth=3
	or r21, r11, r8
.LBB0_59:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r9, 0(r9)
	and r1, r9, r3
	setlt.u r2, r12, r1
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r2, zero, .LBB0_61
# %bb.60:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r9, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r1, r5, r1
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r1, zero, .LBB0_62
	j .LBB0_63
.LBB0_61:                               #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r25, r9, r8
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r1, r5, r1
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r1, zero, .LBB0_63
.LBB0_62:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r4
	and r25, r1, r16
.LBB0_63:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	setlt.u r1, r5, r26
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r1, zero, .LBB0_66
# %bb.64:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r18
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r1, zero, .LBB0_67
.LBB0_65:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r7
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r1, zero, .LBB0_49
	j .LBB0_68
.LBB0_66:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r21, r1, r16
	setlt.u r1, r5, r18
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r1, zero, .LBB0_65
.LBB0_67:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r4
	and r14, r1, r16
	setlt.u r1, r5, r7
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r1, zero, .LBB0_49
.LBB0_68:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r6, 16
	andi r1, r1, 1
	add.s r1, r6, r1
	add.s r1, r1, r4
	and r10, r1, r16
	j .LBB0_49
.LBB0_69:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r18
	addli r10, zero, 4
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	mfence { sm }
.LBB0_70:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 164 7 is_stmt 1               # parallel-rne.mlir:164:7
	addli r6, r30, -2424
	zext_int2long r[1:2], r1
	store.d r[1:2], 0(r6)                   # 8-byte Folded Spill
	addli r1, zero, 2
	beq r18, r1, .LBB0_102
# %bb.71:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 1
	bneq r18, r1, .LBB0_133
# %bb.72:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_74
.LBB0_73:                               # %middle.block99
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r9, r30, -2448
	addli r1, zero, 15
	load.d r[6:7], 0(r9)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 172 9 is_stmt 1               # parallel-rne.mlir:172:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_132
.LBB0_74:                               # %.preheader26
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_77 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r2, r30, -2448
	sll.d r[19:20], r[6:7], r1
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	bneq r17, r15, .LBB0_81
# %bb.75:                               # %scalar.ph93.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_77
.LBB0_76:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	setlt.ul r9, r[6:7], r[23:24]
	.loc	1 188 13 is_stmt 1              # parallel-rne.mlir:188:13
	add.s r1, r17, r1
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r2, 0(r1)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	beq r9, zero, .LBB0_73
.LBB0_77:                               # %scalar.ph93
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[1:2], r[6:7], r[19:20]
	slli r1, r1, 2
	add.s r2, r15, r1
	loads.w r9, 0(r2)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r10, r9, r3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r2, r12, r10
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r2, zero, .LBB0_79
# %bb.78:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r9, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r10, r5, r10
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r10, zero, .LBB0_76
	j .LBB0_80
.LBB0_79:                               #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r9, r8
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r10, r5, r10
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r10, zero, .LBB0_76
.LBB0_80:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r4
	and r2, r2, r16
	j .LBB0_76
.LBB0_81:                               # %vector.body95.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_83
.LBB0_82:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	addli r7, r30, -2424
	addli.d r[13:14], r[13:14], 4
	load.d r[1:2], 0(r7)                    # 8-byte Folded Reload
	seteq.d r1, r[13:14], r[1:2]
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	add.s r2, r17, r10
	stores.w r6, 12(r2)
	stores.w r21, 8(r2)
	stores.w r22, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	bneq r1, zero, .LBB0_73
.LBB0_83:                               # %vector.body95
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[1:2], r[13:14], r[19:20]
	slli r10, r1, 2
	add.s r18, r15, r10
	loads.w r7, 12(r18)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r25, r7, r3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r1, r12, r25
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r1, zero, .LBB0_85
# %bb.84:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_83 Depth=3
	or r6, r7, r8
.LBB0_86:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r26, 8(r18)
	and r11, r26, r3
	setlt.u r1, r12, r11
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r1, zero, .LBB0_88
# %bb.87:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r26, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_83 Depth=3
	or r21, r26, r8
.LBB0_89:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r9, 4(r18)
	and r1, r9, r3
	setlt.u r2, r12, r1
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r2, zero, .LBB0_91
# %bb.90:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r9, 0
	j .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_83 Depth=3
	or r22, r9, r8
.LBB0_92:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r2, 0(r18)
	and r27, r2, r3
	setlt.u r18, r12, r27
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r18, zero, .LBB0_94
# %bb.93:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r2, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r27, r5, r27
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r27, zero, .LBB0_95
	j .LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r2, r8
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r27, r5, r27
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r27, zero, .LBB0_96
.LBB0_95:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r2, 16
	andi r18, r18, 1
	add.s r2, r2, r18
	add.s r2, r2, r4
	and r18, r2, r16
.LBB0_96:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	setlt.u r1, r5, r1
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r1, zero, .LBB0_99
# %bb.97:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r1, zero, .LBB0_100
.LBB0_98:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r25
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_82
	j .LBB0_101
.LBB0_99:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r4
	and r22, r1, r16
	setlt.u r1, r5, r11
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_98
.LBB0_100:                              # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r4
	and r21, r1, r16
	setlt.u r1, r5, r25
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_82
.LBB0_101:                              # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r4
	and r6, r1, r16
	j .LBB0_82
.LBB0_102:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 16
	.loc	1 193 7 is_stmt 1               # parallel-rne.mlir:193:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_104
.LBB0_103:                              # %middle.block108
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, r30, -2448
	addli r1, zero, 23
	load.d r[6:7], 0(r9)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 201 9 is_stmt 1               # parallel-rne.mlir:201:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_132
.LBB0_104:                              # %.preheader27
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_107 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r2, r30, -2448
	sll.d r[19:20], r[6:7], r1
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	.loc	1 202 11 is_stmt 1              # parallel-rne.mlir:202:11
	bneq r17, r15, .LBB0_111
# %bb.105:                              # %scalar.ph102.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_107
.LBB0_106:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	setlt.ul r9, r[6:7], r[23:24]
	.loc	1 217 13 is_stmt 1              # parallel-rne.mlir:217:13
	add.s r1, r17, r1
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	stores.w r2, 0(r1)
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	beq r9, zero, .LBB0_103
.LBB0_107:                              # %scalar.ph102
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	add.ul r[1:2], r[6:7], r[19:20]
	slli r1, r1, 2
	add.s r2, r15, r1
	loads.w r9, 0(r2)
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	and r10, r9, r3
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	setlt.u r2, r12, r10
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r2, zero, .LBB0_109
# %bb.108:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r9, 0
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r10, r5, r10
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r10, zero, .LBB0_106
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r9, r8
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r10, r5, r10
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r10, zero, .LBB0_106
.LBB0_110:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r4
	and r2, r2, r16
	j .LBB0_106
.LBB0_111:                              # %vector.body104.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_113
.LBB0_112:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	addli r1, zero, 32
	.loc	1 202 11 is_stmt 1              # parallel-rne.mlir:202:11
	addli.d r[13:14], r[13:14], 4
	zext_int2long r[1:2], r1
	seteq.d r1, r[13:14], r[1:2]
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	add.s r2, r17, r10
	stores.w r7, 12(r2)
	stores.w r26, 8(r2)
	stores.w r9, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	bneq r1, zero, .LBB0_103
.LBB0_113:                              # %vector.body104
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	add.ul r[1:2], r[13:14], r[19:20]
	slli r10, r1, 2
	add.s r18, r15, r10
	loads.w r6, 12(r18)
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	and r25, r6, r3
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	setlt.u r1, r12, r25
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r1, zero, .LBB0_115
# %bb.114:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_113 Depth=3
	or r7, r6, r8
.LBB0_116:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r21, 8(r18)
	and r11, r21, r3
	setlt.u r1, r12, r11
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r1, zero, .LBB0_118
# %bb.117:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r21, 0
	j .LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_113 Depth=3
	or r26, r21, r8
.LBB0_119:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r22, 4(r18)
	and r1, r22, r3
	setlt.u r2, r12, r1
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r2, zero, .LBB0_121
# %bb.120:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r22, 0
	j .LBB0_122
.LBB0_121:                              #   in Loop: Header=BB0_113 Depth=3
	or r9, r22, r8
.LBB0_122:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r2, 0(r18)
	and r27, r2, r3
	setlt.u r18, r12, r27
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r18, zero, .LBB0_124
# %bb.123:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r2, 0
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r27, r5, r27
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r27, zero, .LBB0_125
	j .LBB0_126
.LBB0_124:                              #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r2, r8
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r27, r5, r27
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r27, zero, .LBB0_126
.LBB0_125:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r2, 16
	andi r18, r18, 1
	add.s r2, r2, r18
	add.s r2, r2, r4
	and r18, r2, r16
.LBB0_126:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	setlt.u r1, r5, r1
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r1, zero, .LBB0_129
# %bb.127:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r1, zero, .LBB0_130
.LBB0_128:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r25
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r1, zero, .LBB0_112
	j .LBB0_131
.LBB0_129:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r4
	and r9, r1, r16
	setlt.u r1, r5, r11
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r1, zero, .LBB0_128
.LBB0_130:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r4
	and r26, r1, r16
	setlt.u r1, r5, r25
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r1, zero, .LBB0_112
.LBB0_131:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r6, 16
	andi r1, r1, 1
	add.s r1, r6, r1
	add.s r1, r1, r4
	and r7, r1, r16
	j .LBB0_112
.LBB0_132:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r18
	addli r10, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_133:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 222 7 is_stmt 1               # parallel-rne.mlir:222:7
	loadli.w r1,  -2456(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_168
# %bb.134:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	beq r18, r10, .LBB0_199
.LBB0_135:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 7
	.loc	1 280 7 is_stmt 1               # parallel-rne.mlir:280:7
	beq r18, r1, .LBB0_230
.LBB0_136:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 6
	beq r18, r1, .LBB0_260
# %bb.137:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 5
	bneq r18, r1, .LBB0_291
# %bb.138:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_140
.LBB0_139:                              # %middle.block
                                        #   in Loop: Header=BB0_140 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r9, r30, -2448
	addli r1, zero, 47
	load.d r[6:7], 0(r9)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 288 9 is_stmt 1               # parallel-rne.mlir:288:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_290
.LBB0_140:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_149 Depth 3
                                        #       Child Loop BB0_143 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r2, r30, -2448
	sll.d r[19:20], r[6:7], r1
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	.loc	1 289 11 is_stmt 1              # parallel-rne.mlir:289:11
	bneq r17, r15, .LBB0_147
# %bb.141:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_140 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_143
.LBB0_142:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	setlt.ul r1, r[6:7], r[23:24]
	.loc	1 304 13 is_stmt 1              # parallel-rne.mlir:304:13
	add.s r2, r17, r9
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	stores.w r10, 0(r2)
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	beq r1, zero, .LBB0_139
.LBB0_143:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	add.ul r[1:2], r[6:7], r[19:20]
	slli r9, r1, 2
	add.s r1, r15, r9
	loads.w r11, 0(r1)
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	and r1, r11, r3
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	setlt.u r2, r12, r1
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r2, zero, .LBB0_145
# %bb.144:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r1, r5, r1
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r1, zero, .LBB0_142
	j .LBB0_146
.LBB0_145:                              #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r11, r8
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r1, r5, r1
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r1, zero, .LBB0_142
.LBB0_146:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r10, r1, r16
	j .LBB0_142
.LBB0_147:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_140 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_149
.LBB0_148:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 289 11 is_stmt 1              # parallel-rne.mlir:289:11
	addli r7, r30, -2424
	addli.d r[13:14], r[13:14], 4
	load.d r[1:2], 0(r7)                    # 8-byte Folded Reload
	seteq.d r1, r[13:14], r[1:2]
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	add.s r2, r17, r10
	stores.w r6, 12(r2)
	stores.w r21, 8(r2)
	stores.w r22, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	bneq r1, zero, .LBB0_139
.LBB0_149:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	add.ul r[1:2], r[13:14], r[19:20]
	slli r10, r1, 2
	add.s r18, r15, r10
	loads.w r7, 12(r18)
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	and r25, r7, r3
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	setlt.u r1, r12, r25
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r1, zero, .LBB0_151
# %bb.150:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	j .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_149 Depth=3
	or r6, r7, r8
.LBB0_152:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r26, 8(r18)
	and r11, r26, r3
	setlt.u r1, r12, r11
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r1, zero, .LBB0_154
# %bb.153:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r26, 0
	j .LBB0_155
.LBB0_154:                              #   in Loop: Header=BB0_149 Depth=3
	or r21, r26, r8
.LBB0_155:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r9, 4(r18)
	and r27, r9, r3
	setlt.u r1, r12, r27
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r1, zero, .LBB0_157
# %bb.156:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r9, 0
	j .LBB0_158
.LBB0_157:                              #   in Loop: Header=BB0_149 Depth=3
	or r22, r9, r8
.LBB0_158:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r28, 0(r18)
	and r1, r28, r3
	setlt.u r2, r12, r1
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r2, zero, .LBB0_164
# %bb.159:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r28, 0
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r1, r5, r1
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r1, zero, .LBB0_161
.LBB0_160:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r4
	and r18, r1, r16
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	setlt.u r1, r5, r27
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r1, zero, .LBB0_165
# %bb.162:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r1, zero, .LBB0_166
.LBB0_163:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r25
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r1, zero, .LBB0_148
	j .LBB0_167
.LBB0_164:                              #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r28, r8
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r1, r5, r1
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r1, zero, .LBB0_160
	j .LBB0_161
.LBB0_165:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r4
	and r22, r1, r16
	setlt.u r1, r5, r11
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r1, zero, .LBB0_163
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r4
	and r21, r1, r16
	setlt.u r1, r5, r25
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r1, zero, .LBB0_148
.LBB0_167:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r4
	and r6, r1, r16
	j .LBB0_148
.LBB0_168:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 24
	.loc	1 222 7 is_stmt 1               # parallel-rne.mlir:222:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_170
.LBB0_169:                              # %middle.block90
                                        #   in Loop: Header=BB0_170 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, r30, -2448
	load.d r[6:7], 0(r1)                    # 8-byte Folded Reload
	.loc	1 230 9 is_stmt 1               # parallel-rne.mlir:230:9
	setlt.ul r1, r[6:7], r[23:24]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_198
.LBB0_170:                              # %.preheader25
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_179 Depth 3
                                        #       Child Loop BB0_173 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r2, r30, -2448
	sll.d r[19:20], r[6:7], r1
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	.loc	1 231 11 is_stmt 1              # parallel-rne.mlir:231:11
	bneq r17, r15, .LBB0_177
# %bb.171:                              # %scalar.ph84.preheader
                                        #   in Loop: Header=BB0_170 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_173
.LBB0_172:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	setlt.ul r1, r[6:7], r[23:24]
	.loc	1 246 13 is_stmt 1              # parallel-rne.mlir:246:13
	add.s r2, r17, r9
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	stores.w r10, 0(r2)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	beq r1, zero, .LBB0_169
.LBB0_173:                              # %scalar.ph84
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[1:2], r[6:7], r[19:20]
	slli r9, r1, 2
	add.s r1, r15, r9
	loads.w r11, 0(r1)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r1, r11, r3
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	setlt.u r2, r12, r1
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r2, zero, .LBB0_175
# %bb.174:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r1, r5, r1
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r1, zero, .LBB0_172
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r11, r8
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r1, r5, r1
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r1, zero, .LBB0_172
.LBB0_176:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r10, r1, r16
	j .LBB0_172
.LBB0_177:                              # %vector.body86.preheader
                                        #   in Loop: Header=BB0_170 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_179
.LBB0_178:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	addli r1, zero, 32
	.loc	1 231 11 is_stmt 1              # parallel-rne.mlir:231:11
	addli.d r[13:14], r[13:14], 4
	zext_int2long r[1:2], r1
	seteq.d r1, r[13:14], r[1:2]
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	add.s r2, r17, r10
	stores.w r6, 12(r2)
	stores.w r21, 8(r2)
	stores.w r22, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	bneq r1, zero, .LBB0_169
.LBB0_179:                              # %vector.body86
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[1:2], r[13:14], r[19:20]
	slli r10, r1, 2
	add.s r18, r15, r10
	loads.w r7, 12(r18)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r25, r7, r3
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	setlt.u r1, r12, r25
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r1, zero, .LBB0_181
# %bb.180:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	j .LBB0_182
.LBB0_181:                              #   in Loop: Header=BB0_179 Depth=3
	or r6, r7, r8
.LBB0_182:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r26, 8(r18)
	and r11, r26, r3
	setlt.u r1, r12, r11
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r1, zero, .LBB0_184
# %bb.183:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r26, 0
	j .LBB0_185
.LBB0_184:                              #   in Loop: Header=BB0_179 Depth=3
	or r21, r26, r8
.LBB0_185:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r9, 4(r18)
	and r27, r9, r3
	setlt.u r1, r12, r27
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r1, zero, .LBB0_187
# %bb.186:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r9, 0
	j .LBB0_188
.LBB0_187:                              #   in Loop: Header=BB0_179 Depth=3
	or r22, r9, r8
.LBB0_188:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r28, 0(r18)
	and r1, r28, r3
	setlt.u r2, r12, r1
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r2, zero, .LBB0_194
# %bb.189:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r28, 0
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r1, r5, r1
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r1, zero, .LBB0_191
.LBB0_190:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r4
	and r18, r1, r16
.LBB0_191:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	setlt.u r1, r5, r27
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r1, zero, .LBB0_195
# %bb.192:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r1, zero, .LBB0_196
.LBB0_193:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r25
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r1, zero, .LBB0_178
	j .LBB0_197
.LBB0_194:                              #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r28, r8
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r1, r5, r1
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r1, zero, .LBB0_190
	j .LBB0_191
.LBB0_195:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r4
	and r22, r1, r16
	setlt.u r1, r5, r11
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r1, zero, .LBB0_193
.LBB0_196:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r4
	and r21, r1, r16
	setlt.u r1, r5, r25
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r1, zero, .LBB0_178
.LBB0_197:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r4
	and r6, r1, r16
	j .LBB0_178
.LBB0_198:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r18
	addli r10, zero, 4
	.loc	1 222 7                         # parallel-rne.mlir:222:7
	mfence { sm }
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	bneq r18, r10, .LBB0_135
.LBB0_199:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	addli r1, r30, -2424
	mfence { lm, sm, gm }
	load.d r[6:7], 0(r1)                    # 8-byte Folded Reload
	j .LBB0_201
.LBB0_200:                              # %middle.block81
                                        #   in Loop: Header=BB0_201 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, r30, -2448
	addli r1, zero, 39
	load.d r[6:7], 0(r9)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 259 9 is_stmt 1               # parallel-rne.mlir:259:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_229
.LBB0_201:                              # %.preheader24
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_210 Depth 3
                                        #       Child Loop BB0_204 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r2, r30, -2448
	sll.d r[19:20], r[6:7], r1
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	.loc	1 260 11 is_stmt 1              # parallel-rne.mlir:260:11
	bneq r17, r15, .LBB0_208
# %bb.202:                              # %scalar.ph75.preheader
                                        #   in Loop: Header=BB0_201 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_204
.LBB0_203:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	setlt.ul r1, r[6:7], r[23:24]
	.loc	1 275 13 is_stmt 1              # parallel-rne.mlir:275:13
	add.s r2, r17, r9
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	stores.w r10, 0(r2)
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	beq r1, zero, .LBB0_200
.LBB0_204:                              # %scalar.ph75
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.ul r[1:2], r[6:7], r[19:20]
	slli r9, r1, 2
	add.s r1, r15, r9
	loads.w r11, 0(r1)
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	and r1, r11, r3
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	setlt.u r2, r12, r1
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r2, zero, .LBB0_206
# %bb.205:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r1, r5, r1
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r1, zero, .LBB0_203
	j .LBB0_207
.LBB0_206:                              #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r11, r8
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r1, r5, r1
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r1, zero, .LBB0_203
.LBB0_207:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r10, r1, r16
	j .LBB0_203
.LBB0_208:                              # %vector.body77.preheader
                                        #   in Loop: Header=BB0_201 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_210
.LBB0_209:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	addli r1, zero, 32
	.loc	1 260 11 is_stmt 1              # parallel-rne.mlir:260:11
	addli.d r[13:14], r[13:14], 4
	zext_int2long r[1:2], r1
	seteq.d r1, r[13:14], r[1:2]
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	add.s r2, r17, r10
	stores.w r6, 12(r2)
	stores.w r21, 8(r2)
	stores.w r22, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	bneq r1, zero, .LBB0_200
.LBB0_210:                              # %vector.body77
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.ul r[1:2], r[13:14], r[19:20]
	slli r10, r1, 2
	add.s r18, r15, r10
	loads.w r7, 12(r18)
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	and r25, r7, r3
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	setlt.u r1, r12, r25
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r1, zero, .LBB0_212
# %bb.211:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	j .LBB0_213
.LBB0_212:                              #   in Loop: Header=BB0_210 Depth=3
	or r6, r7, r8
.LBB0_213:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r26, 8(r18)
	and r11, r26, r3
	setlt.u r1, r12, r11
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r1, zero, .LBB0_215
# %bb.214:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r26, 0
	j .LBB0_216
.LBB0_215:                              #   in Loop: Header=BB0_210 Depth=3
	or r21, r26, r8
.LBB0_216:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r9, 4(r18)
	and r27, r9, r3
	setlt.u r1, r12, r27
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r1, zero, .LBB0_218
# %bb.217:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r9, 0
	j .LBB0_219
.LBB0_218:                              #   in Loop: Header=BB0_210 Depth=3
	or r22, r9, r8
.LBB0_219:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r28, 0(r18)
	and r1, r28, r3
	setlt.u r2, r12, r1
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r2, zero, .LBB0_225
# %bb.220:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r28, 0
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r1, r5, r1
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r1, zero, .LBB0_222
.LBB0_221:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r4
	and r18, r1, r16
.LBB0_222:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	setlt.u r1, r5, r27
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r1, zero, .LBB0_226
# %bb.223:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r1, zero, .LBB0_227
.LBB0_224:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r25
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r1, zero, .LBB0_209
	j .LBB0_228
.LBB0_225:                              #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r28, r8
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r1, r5, r1
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r1, zero, .LBB0_221
	j .LBB0_222
.LBB0_226:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r4
	and r22, r1, r16
	setlt.u r1, r5, r11
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r1, zero, .LBB0_224
.LBB0_227:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r4
	and r21, r1, r16
	setlt.u r1, r5, r25
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r1, zero, .LBB0_209
.LBB0_228:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r4
	and r6, r1, r16
	j .LBB0_209
.LBB0_229:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r18
	addli r10, zero, 4
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	mfence { sm }
	addli r1, zero, 7
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	bneq r18, r1, .LBB0_136
.LBB0_230:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 338 7 is_stmt 1               # parallel-rne.mlir:338:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_232
.LBB0_231:                              # %middle.block72
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, r30, -2448
	addli r1, zero, 63
	load.d r[6:7], 0(r9)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 346 9 is_stmt 1               # parallel-rne.mlir:346:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_290
.LBB0_232:                              # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_241 Depth 3
                                        #       Child Loop BB0_235 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r2, r30, -2448
	sll.d r[19:20], r[6:7], r1
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	.loc	1 347 11 is_stmt 1              # parallel-rne.mlir:347:11
	bneq r17, r15, .LBB0_239
# %bb.233:                              # %scalar.ph66.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_235
.LBB0_234:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	setlt.ul r1, r[6:7], r[23:24]
	.loc	1 362 13 is_stmt 1              # parallel-rne.mlir:362:13
	add.s r2, r17, r9
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	stores.w r10, 0(r2)
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	beq r1, zero, .LBB0_231
.LBB0_235:                              # %scalar.ph66
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	add.ul r[1:2], r[6:7], r[19:20]
	slli r9, r1, 2
	add.s r1, r15, r9
	loads.w r11, 0(r1)
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r1, r11, r3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	setlt.u r2, r12, r1
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r2, zero, .LBB0_237
# %bb.236:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r1, r5, r1
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r1, zero, .LBB0_234
	j .LBB0_238
.LBB0_237:                              #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r11, r8
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r1, r5, r1
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r1, zero, .LBB0_234
.LBB0_238:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r10, r1, r16
	j .LBB0_234
.LBB0_239:                              # %vector.body68.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_241
.LBB0_240:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 347 11 is_stmt 1              # parallel-rne.mlir:347:11
	addli r7, r30, -2424
	addli.d r[13:14], r[13:14], 4
	load.d r[1:2], 0(r7)                    # 8-byte Folded Reload
	seteq.d r1, r[13:14], r[1:2]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	add.s r2, r17, r10
	stores.w r6, 12(r2)
	stores.w r21, 8(r2)
	stores.w r22, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	bneq r1, zero, .LBB0_231
.LBB0_241:                              # %vector.body68
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	add.ul r[1:2], r[13:14], r[19:20]
	slli r10, r1, 2
	add.s r18, r15, r10
	loads.w r7, 12(r18)
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r25, r7, r3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	setlt.u r1, r12, r25
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r1, zero, .LBB0_243
# %bb.242:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	j .LBB0_244
.LBB0_243:                              #   in Loop: Header=BB0_241 Depth=3
	or r6, r7, r8
.LBB0_244:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r26, 8(r18)
	and r11, r26, r3
	setlt.u r1, r12, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r1, zero, .LBB0_246
# %bb.245:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r26, 0
	j .LBB0_247
.LBB0_246:                              #   in Loop: Header=BB0_241 Depth=3
	or r21, r26, r8
.LBB0_247:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r9, 4(r18)
	and r27, r9, r3
	setlt.u r1, r12, r27
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r1, zero, .LBB0_249
# %bb.248:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r9, 0
	j .LBB0_250
.LBB0_249:                              #   in Loop: Header=BB0_241 Depth=3
	or r22, r9, r8
.LBB0_250:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r28, 0(r18)
	and r1, r28, r3
	setlt.u r2, r12, r1
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r2, zero, .LBB0_252
# %bb.251:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r28, 0
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r1, r5, r1
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r1, zero, .LBB0_253
	j .LBB0_254
.LBB0_252:                              #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r28, r8
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r1, r5, r1
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r1, zero, .LBB0_254
.LBB0_253:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r4
	and r18, r1, r16
.LBB0_254:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	setlt.u r1, r5, r27
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r1, zero, .LBB0_257
# %bb.255:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r1, zero, .LBB0_258
.LBB0_256:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r25
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r1, zero, .LBB0_240
	j .LBB0_259
.LBB0_257:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r4
	and r22, r1, r16
	setlt.u r1, r5, r11
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r1, zero, .LBB0_256
.LBB0_258:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r4
	and r21, r1, r16
	setlt.u r1, r5, r25
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r1, zero, .LBB0_240
.LBB0_259:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r4
	and r6, r1, r16
	j .LBB0_240
.LBB0_260:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 48
	.loc	1 309 7 is_stmt 1               # parallel-rne.mlir:309:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_262
.LBB0_261:                              # %middle.block63
                                        #   in Loop: Header=BB0_262 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, r30, -2448
	addli r1, zero, 55
	load.d r[6:7], 0(r9)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 317 9 is_stmt 1               # parallel-rne.mlir:317:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_290
.LBB0_262:                              # %.preheader23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_271 Depth 3
                                        #       Child Loop BB0_265 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r2, r30, -2448
	sll.d r[19:20], r[6:7], r1
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	.loc	1 318 11 is_stmt 1              # parallel-rne.mlir:318:11
	bneq r17, r15, .LBB0_269
# %bb.263:                              # %scalar.ph57.preheader
                                        #   in Loop: Header=BB0_262 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_265
.LBB0_264:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	setlt.ul r1, r[6:7], r[23:24]
	.loc	1 333 13 is_stmt 1              # parallel-rne.mlir:333:13
	add.s r2, r17, r9
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	stores.w r10, 0(r2)
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	beq r1, zero, .LBB0_261
.LBB0_265:                              # %scalar.ph57
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_262 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	add.ul r[1:2], r[6:7], r[19:20]
	slli r9, r1, 2
	add.s r1, r15, r9
	loads.w r11, 0(r1)
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	and r1, r11, r3
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	setlt.u r2, r12, r1
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r2, zero, .LBB0_267
# %bb.266:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r1, r5, r1
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r1, zero, .LBB0_264
	j .LBB0_268
.LBB0_267:                              #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r11, r8
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r1, r5, r1
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r1, zero, .LBB0_264
.LBB0_268:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r10, r1, r16
	j .LBB0_264
.LBB0_269:                              # %vector.body59.preheader
                                        #   in Loop: Header=BB0_262 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_271
.LBB0_270:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 318 11 is_stmt 1              # parallel-rne.mlir:318:11
	addli r7, r30, -2424
	addli.d r[13:14], r[13:14], 4
	load.d r[1:2], 0(r7)                    # 8-byte Folded Reload
	seteq.d r1, r[13:14], r[1:2]
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	add.s r2, r17, r10
	stores.w r6, 12(r2)
	stores.w r21, 8(r2)
	stores.w r22, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	bneq r1, zero, .LBB0_261
.LBB0_271:                              # %vector.body59
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_262 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	add.ul r[1:2], r[13:14], r[19:20]
	slli r10, r1, 2
	add.s r18, r15, r10
	loads.w r7, 12(r18)
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	and r25, r7, r3
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	setlt.u r1, r12, r25
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r1, zero, .LBB0_273
# %bb.272:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	j .LBB0_274
.LBB0_273:                              #   in Loop: Header=BB0_271 Depth=3
	or r6, r7, r8
.LBB0_274:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r26, 8(r18)
	and r11, r26, r3
	setlt.u r1, r12, r11
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r1, zero, .LBB0_276
# %bb.275:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r26, 0
	j .LBB0_277
.LBB0_276:                              #   in Loop: Header=BB0_271 Depth=3
	or r21, r26, r8
.LBB0_277:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r9, 4(r18)
	and r27, r9, r3
	setlt.u r1, r12, r27
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r1, zero, .LBB0_279
# %bb.278:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r9, 0
	j .LBB0_280
.LBB0_279:                              #   in Loop: Header=BB0_271 Depth=3
	or r22, r9, r8
.LBB0_280:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r28, 0(r18)
	and r1, r28, r3
	setlt.u r2, r12, r1
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r2, zero, .LBB0_282
# %bb.281:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r28, 0
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r1, r5, r1
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r1, zero, .LBB0_283
	j .LBB0_284
.LBB0_282:                              #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r28, r8
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r1, r5, r1
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r1, zero, .LBB0_284
.LBB0_283:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r4
	and r18, r1, r16
.LBB0_284:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	setlt.u r1, r5, r27
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r1, zero, .LBB0_287
# %bb.285:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r1, zero, .LBB0_288
.LBB0_286:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r25
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r1, zero, .LBB0_270
	j .LBB0_289
.LBB0_287:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r4
	and r22, r1, r16
	setlt.u r1, r5, r11
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r1, zero, .LBB0_286
.LBB0_288:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r4
	and r21, r1, r16
	setlt.u r1, r5, r25
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r1, zero, .LBB0_270
.LBB0_289:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r4
	and r6, r1, r16
	j .LBB0_270
.LBB0_290:                              # %.sink.split51
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r18
	addli r10, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_291:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 367 7 is_stmt 1               # parallel-rne.mlir:367:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	loadli.w r1,  -2456(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.292:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, r30, -2464
	addli r21, zero, 1
	load.d r[19:20], 0(r1)                  # 8-byte Folded Reload
	.loc	1 385 7 is_stmt 1               # parallel-rne.mlir:385:7
	bneq r18, zero, .LBB0_6
# %bb.293:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	loadli.w r1,  -2496(r30)                # 4-byte Folded Reload
	addli r6, zero, 2016
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	loadli.w r9,  -2492(r30)                # 4-byte Folded Reload
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	addli r11, r30, -2432
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	addli r15, r30, -2488
	addli r22, zero, 64
	zext_int2long r[6:7], r6
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	load.d r[13:14], 0(r11)                 # 8-byte Folded Reload
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	addli r11, r30, -2424
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	zext_int2long r[1:2], r1
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	sext_int2long r[9:10], r9
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	min.ul r[6:7], r[1:2], r[6:7]
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	min.sl r[13:14], r[9:10], r[13:14]
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	addli.d r[6:7], r[6:7], 32
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	addli.d r[13:14], r[13:14], 64
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	max.ul r[6:7], r[6:7], r[1:2]
	sub.sl r[1:2], r[6:7], r[1:2]
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	max.sl r[6:7], r[13:14], r[9:10]
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	load.d r[13:14], 0(r11)                 # 8-byte Folded Reload
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	addli r11, zero, 18
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	sub.sl r[6:7], r[6:7], r[9:10]
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	load.d r[9:10], 16(r30)
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	min.ul r[1:2], r[1:2], r[13:14]
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	load.d r[13:14], 0(r15)                 # 8-byte Folded Reload
	addli r15, zero, 5
	sll.d r[13:14], r[13:14], r11
	addli r11, r30, -2480
	load.d r[23:24], 0(r11)                 # 8-byte Folded Reload
	addli r11, zero, 12
	add.ul r[9:10], r[9:10], r[13:14]
	zext_int2long r[13:14], r22
	xwait r11, 0
	lock zero, r15
	ori r11, r17, 64
	.loc	1 380 13                        # parallel-rne.mlir:380:13
	min.sl r[6:7], r[6:7], r[13:14]
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	dma_cfg r21, r21, zero, 0
	add.ul r[9:10], r[9:10], r[23:24]
	dma_cfg zero, r21, zero, 1
	dma_cfg r10, zero, zero, 2
	dma_cfg r9, r11, r22, 3
	addli r9, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	addli r10, zero, 4
	srli r9, r9, 5
	andi r1, r1, 62
	dma_cfg r22, r2, r9, 4
	addli r9, zero, 4096
	dma_cfg r9, r2, r6, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r21, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r15
	xsignal r1, 0
	j .LBB0_6
.LBB0_294:                              # %._crit_edge
	.loc	1 387 5                         # parallel-rne.mlir:387:5
	xsignal zero, 0
	bneq r18, zero, .LBB0_296
# %bb.295:
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
.LBB0_296:
	.loc	1 388 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:388:5
	addli sp, sp, 2512
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
	.long	2576                            # 0xa10
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-91wplhik" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
