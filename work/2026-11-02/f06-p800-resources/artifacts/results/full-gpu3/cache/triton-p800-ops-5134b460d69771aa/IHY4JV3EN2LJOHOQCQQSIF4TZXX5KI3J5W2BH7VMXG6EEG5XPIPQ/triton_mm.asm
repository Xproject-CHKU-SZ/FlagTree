	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-m7an6892" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2568
	addli r1, zero, 1
.Ltmp0:
	.loc	1 31 5 prologue_end             # parallel-rne.mlir:31:5
	core_id r10
	addli r30, sp, 2504
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
	ble.s r3, r1, .LBB0_295
# %bb.4:                                # %.lr.ph
	.loc	1 42 11                         # parallel-rne.mlir:42:11
	sext_int2long r[12:13], r1
	lui r1, 7
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 42 11                         # parallel-rne.mlir:42:11
	addli r4, r30, -2504
	lui r8, 1024
	lui r11, 522240
	addli r7, zero, 0
	ori r16, r1, 4095
	lui r1, 127
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r2, zero, 4
	lui r4, 1048560
	lui r15, 1048448
	ori r1, r1, 4095
	storeli.w r1, -2444(r30)                # 4-byte Folded Spill
	lui r1, 524287
	ori r3, r1, 4095
	lui r1, 522239
	ori r5, r1, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 369 7 is_stmt 1               # parallel-rne.mlir:369:7
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -2464
	.loc	1 50 5 is_stmt 1                # parallel-rne.mlir:50:5
	addli r6, r30, -2504
	loadli.w r7,  -2468(r30)                # 4-byte Folded Reload
	load.d r[12:13], 0(r1)                  # 8-byte Folded Reload
	load.d r[1:2], 0(r6)                    # 8-byte Folded Reload
	addli.d r[12:13], r[12:13], 1
	setlt.sl r1, r[12:13], r[1:2]
	addli r2, zero, 4
	beq r1, zero, .LBB0_295
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_42 Depth 2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_45 Depth 3
                                        #     Child Loop BB0_75 Depth 2
                                        #       Child Loop BB0_84 Depth 3
                                        #       Child Loop BB0_78 Depth 3
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
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	bneq r10, r2, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  32(r30)
	addli r2, r30, -2464
	.loc	1 97 15 is_stmt 1               # parallel-rne.mlir:97:15
	loadli.w r22,  -2024(r30)
	addli r6, zero, 0
	addli r23, zero, 0
	store.d r[12:13], 0(r2)                 # 8-byte Folded Spill
	loadli.w r2,  28(r30)
	div.s r1, r12, r1
	addli r13, zero, 5
	addli r12, zero, 8
	mod.s r9, r7, r13
	addli r7, r7, 1
	storeli.w r7, -2468(r30)                # 4-byte Folded Spill
	div.s r1, r1, r2
	addli r2, zero, 256
	slli r14, r9, 13
	lui r9, 10
	add.s r19, r14, r9
	div.s r2, r1, r2
	slli r10, r2, 3
	slli r2, r2, 8
	sub.s r7, r12, r10
	sub.s r2, r1, r2
	min.s r7, r7, r12
	mod.s r1, r1, r7
	div.s r2, r2, r7
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	loadli.w r7,  -2412(r30)
	storeli.w r7, -2424(r30)                # 4-byte Folded Spill
	add.s r1, r10, r1
	zext_int2long r[9:10], r2
	slli r7, r2, 5
	slli r2, r1, 6
	zext_int2long r[17:18], r1
	addli r1, zero, 16
	storeli.w r7, -2496(r30)                # 4-byte Folded Spill
	sll.d r[9:10], r[9:10], r13
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r7, zero, 1
	storeli.w r2, -2492(r30)                # 4-byte Folded Spill
	addli r2, r30, -2488
	store.d r[17:18], 0(r2)                 # 8-byte Folded Spill
	sll.d r[1:2], r[17:18], r1
	sll.d r[17:18], r[9:10], r7
	addli r7, r30, -2440
	and.d r[9:10], r[1:2], r[15:16]
	store.d r[9:10], 0(r7)                  # 8-byte Folded Spill
	load.d r[9:10], 8(r30)
	addli r7, r30, -2480
	store.d r[17:18], 0(r7)                 # 8-byte Folded Spill
	addli r7, r30, -2456
	add.ul r[9:10], r[9:10], r[17:18]
	store.d r[9:10], 0(r7)                  # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r10, 20
	addli r24, zero, 64
	addli r17, zero, 5
	ori r10, r10, 64
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	add.s r10, r18, r10
	addli r18, zero, 4
	lock zero, r18
	dma_cfg r7, r7, zero, 0
	dma_cfg zero, r21, zero, 2
	dma_cfg r10, r20, r24, 3
	addli r21, zero, 128
	addli r10, zero, 2048
	addli r20, zero, 2
	dma_cfg r21, r24, r7, 4
	dma_cfg r21, r10, r26, 5
	addli r10, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	lock zero, r17
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 7
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
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r24, 3
	dma_cfg r21, zero, r7, 4
	dma_cfg r21, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	xsignal r20, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r9,  -1524(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r10,  -500(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r9, r9, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r10, r10, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r9, -1524(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r10, -500(r30)
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r23, r23, 1
	addli r7, zero, 32
	beq r23, r7, .LBB0_34
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 122 15                        # parallel-rne.mlir:122:15
	addli r6, r6, 1
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	zext_int2long r[20:21], r23
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	addli r9, zero, 5
	loadli.w r7,  -2444(r30)                # 4-byte Folded Reload
	sll.d r[9:10], r[20:21], r9
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	add.ul r[24:25], r[9:10], r[1:2]
	zext_int2long r[9:10], r7
	addli r7, r30, -2440
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	setlt.ul r9, r[9:10], r[24:25]
	load.d r[26:27], 0(r7)                  # 8-byte Folded Reload
	.loc	1 87 15                         # parallel-rne.mlir:87:15
	bneq r9, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[26:27], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	loadli.w r7,  -2424(r30)                # 4-byte Folded Reload
	add.s r17, r22, r6
	.loc	1 97 15 is_stmt 1               # parallel-rne.mlir:97:15
	addli r28, r17, 1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r9, r7, r6
	.loc	1 95 15 is_stmt 1               # parallel-rne.mlir:95:15
	addli r7, zero, 96
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	storeli.w r28, -2024(r30)
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r28
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	mod.s r10, r9, r7
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r7, zero, 124
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	addli r9, r9, 1
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	mod.s r18, r17, r7
	addli r7, zero, 448
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	storeli.w r9, -2412(r30)
	zext_int2long r[12:13], r7
	addli r7, r30, -2432
	store.d r[12:13], 0(r7)                 # 8-byte Folded Spill
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	lui r7, 20
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	slli r10, r10, 13
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	slli r18, r18, 13
	add.s r9, r18, r7
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r7, zero, 2
	beq r28, r7, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r7, zero, 1
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	bneq r28, r7, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r10, zero, 1024
	sub.sl r[20:21], r[24:25], r[26:27]
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	sll.d r[24:25], r[24:25], r7
	zext_int2long r[26:27], r10
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	addli r10, r30, -2432
	div.sl r[20:21], r[20:21], r[26:27]
	load.d r[12:13], 0(r10)                 # 8-byte Folded Reload
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r10, zero, 123
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	min.sl r[26:27], r[20:21], r[12:13]
	sub.sl r[26:27], r[26:27], r[20:21]
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	load.d r[20:21], 0(r30)
	addli r26, r26, 64
	add.ul r[20:21], r[20:21], r[24:25]
	addli r25, zero, 3
	xwait r25, 0
	blt.s r10, r17, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r17, zero, 5
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r10, zero, 2
	addli r24, zero, 128
	lock zero, r17
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 4
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 6
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 7
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
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r10, 3
	dma_cfg r24, zero, r7, 4
	dma_cfg r24, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r7, zero, 2
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	addli r17, zero, 5
	xwait r7, 0
	xwait r17, 0
	lock zero, zero
	addli r17, zero, 64
	ds_cfg r7, zero, 0
	addli r7, zero, 32
	ds_cfg r7, zero, 1
	ds_cfg r7, zero, 14
	ds_cfg r17, zero, 13
	shuffle_batch r10, r9, r7, 1
	addli r7, zero, 3
	addli r9, zero, 4
	unlock zero
	xsignal r7, 0
	xsignal r9, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r9,  -1524(r30)
	addli r7, zero, 255
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r24,  -500(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	mod.s r17, r9, r7
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r7, zero, 124
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r9, r9, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r25, r24, 1
	mod.s r18, r24, r7
	lui r7, 268
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r9, -1524(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r25, -500(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	slli r17, r17, 12
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r18, r18, 12
	add.s r9, r18, r7
	addli r7, zero, 7
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	beq r28, r7, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r25, zero, 6
	bneq r28, r25, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	addli r10, r30, -2456
	addli r25, zero, 16
	addli r26, zero, 7
	load.d r[12:13], 0(r10)                 # 8-byte Folded Reload
	sll.d r[20:21], r[20:21], r25
	xwait r7, 0
	addli r7, zero, 123
	add.ul r[20:21], r[12:13], r[20:21]
	blt.s r7, r24, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r17, zero, 5
	addli r7, zero, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r10, zero, 2
	addli r24, zero, 128
	lock zero, r17
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 3
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 4
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 6
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 8
	dma_cfg zero, zero, r26, 10
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
	dma_cfg zero, zero, r25, 10
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
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r10, 3
	addli r10, zero, 32
	dma_cfg r24, zero, r7, 4
	dma_cfg r24, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r7, 268
	addli r24, zero, 64
	addli r17, zero, 5
	ori r10, r7, 64
	addli r7, zero, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	add.s r10, r18, r10
	addli r18, zero, 4
	lock zero, r18
	dma_cfg r7, r7, zero, 0
	dma_cfg zero, r21, zero, 2
	dma_cfg r10, r20, r24, 3
	addli r21, zero, 128
	addli r20, zero, 32
	addli r10, zero, 2048
	dma_cfg r21, r24, r7, 4
	dma_cfg r21, r10, r20, 5
	addli r10, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	lock zero, r17
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 3
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 8
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 6
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r26, 10
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
	dma_cfg zero, zero, r25, 10
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
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r24, 3
	dma_cfg r21, zero, r7, 4
	dma_cfg r21, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	xsignal r18, 0
	.loc	1 119 9 is_stmt 1               # parallel-rne.mlir:119:9
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	addli r7, zero, 6
	addli r10, zero, 7
	xwait r7, 0
	addli r7, zero, 9
	xwait r7, 0
	addli r7, zero, 2
	lock zero, zero
	ds_cfg r7, zero, 0
	addli r7, zero, 32
	ds_cfg r7, zero, 1
	ds_cfg r7, zero, 14
	ds_cfg r7, zero, 13
	shuffle_coa r17, r9, r7, 2
	addli r9, zero, 8
	unlock zero
	xsignal r10, 0
	xsignal r9, 0
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r9, zero, 4
	.loc	1 121 9 is_stmt 1               # parallel-rne.mlir:121:9
	bneq r28, r9, .LBB0_31
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	xwait r9, 0
	addli r9, zero, 8
	addli r7, zero, 1
	addli r18, zero, 64
	xwait r9, 0
	addli r9, zero, 32
	lock zero, r7
	mm_cfg r9, r9, r18, 0
	addli r9, zero, 2
	mm_cfg r9, r7, r7, 2
	beq r6, zero, .LBB0_32
# %bb.30:                               # %.preheader30
                                        #   in Loop: Header=BB0_15 Depth=2
	mm_acc r19, r10, r17, 8
	j .LBB0_33
.LBB0_31:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r23, r23, 1
	addli r7, zero, 32
	bneq r23, r7, .LBB0_14
	j .LBB0_36
.LBB0_32:                               # %.preheader29
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	mm r19, r10, r17, 8
.LBB0_33:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r7, zero, 1
	addli r9, zero, 5
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r23, r23, 1
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	unlock r7
	addli r7, zero, 9
	xsignal r9, 0
	xsignal r7, 0
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r7, zero, 32
	bneq r23, r7, .LBB0_14
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	addli r1, zero, 4
	bneq r28, r1, .LBB0_36
.LBB0_35:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	storeli.w zero, -2456(r30)              # 4-byte Folded Spill
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r10
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	xsignal r1, 0
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	j .LBB0_39
.LBB0_36:                               # %.thread44
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r10
	addli r1, zero, 3
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	bneq r10, r1, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	storeli.w r1, -2456(r30)                # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -2456(r30)              # 4-byte Folded Spill
.LBB0_39:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	addli r1, zero, 255
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	xfence
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	mfence { lm, sm, gm }
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	csr_set csr5, r1
	addli r1, zero, 31
	sync_core
	zext_int2long r[6:7], r1
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	bneq r10, zero, .LBB0_71
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[9:10], zero
	mfence { lm, sm, gm }
	j .LBB0_42
.LBB0_41:                               # %middle.block117
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r12, r30, -2424
	addli r1, zero, 7
	load.d r[9:10], 0(r12)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 144 9 is_stmt 1               # parallel-rne.mlir:144:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_70
.LBB0_42:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_45 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r2, r30, -2424
	sll.d r[12:13], r[9:10], r1
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	bneq r14, r19, .LBB0_49
# %bb.43:                               # %scalar.ph111.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_45
.LBB0_44:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	setlt.ul r1, r[9:10], r[6:7]
	.loc	1 160 13 is_stmt 1              # parallel-rne.mlir:160:13
	add.s r2, r14, r17
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	stores.w r18, 0(r2)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	beq r1, zero, .LBB0_41
.LBB0_45:                               # %scalar.ph111
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[1:2], r[9:10], r[12:13]
	slli r17, r1, 2
	add.s r1, r19, r17
	loads.w r1, 0(r1)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r2, r1, r3
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r18, r11, r2
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r18, zero, .LBB0_47
# %bb.46:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r1, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r2, r5, r2
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r2, zero, .LBB0_44
	j .LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r1, r8
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r2, r5, r2
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r2, zero, .LBB0_44
.LBB0_48:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	add.s r1, r1, r16
	and r18, r1, r4
	j .LBB0_44
.LBB0_49:                               # %vector.body113.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_51
.LBB0_50:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	addli r2, zero, 32
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	add.s r9, r14, r9
	zext_int2long r[17:18], r2
	stores.w r26, 12(r9)
	stores.w r24, 8(r9)
	stores.w r20, 4(r9)
	stores.w r1, 0(r9)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	seteq.d r2, r[22:23], r[17:18]
	bneq r2, zero, .LBB0_41
.LBB0_51:                               # %vector.body113
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[1:2], r[22:23], r[12:13]
	slli r9, r1, 2
	add.s r17, r19, r9
	loads.w r18, 12(r17)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r27, r18, r3
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r1, r11, r27
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r1, zero, .LBB0_53
# %bb.52:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r26, r18, 0
	j .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_51 Depth=3
	or r26, r18, r8
.LBB0_54:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r21, 8(r17)
	and r10, r21, r3
	setlt.u r1, r11, r10
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r1, zero, .LBB0_56
# %bb.55:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r21, 0
	j .LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_51 Depth=3
	or r24, r21, r8
.LBB0_57:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r25, 4(r17)
	and r28, r25, r3
	setlt.u r1, r11, r28
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r1, zero, .LBB0_59
# %bb.58:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r25, 0
	j .LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_51 Depth=3
	or r20, r25, r8
.LBB0_60:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r17, 0(r17)
	and r2, r17, r3
	setlt.u r1, r11, r2
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r1, zero, .LBB0_62
# %bb.61:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r17, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r2, r5, r2
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r2, zero, .LBB0_63
	j .LBB0_64
.LBB0_62:                               #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r1, r17, r8
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r2, r5, r2
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r2, zero, .LBB0_64
.LBB0_63:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r17, 16
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r16
	and r1, r1, r4
.LBB0_64:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	setlt.u r2, r5, r28
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r2, zero, .LBB0_67
# %bb.65:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r10
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r2, zero, .LBB0_68
.LBB0_66:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r27
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r2, zero, .LBB0_50
	j .LBB0_69
.LBB0_67:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r25, 16
	andi r2, r2, 1
	add.s r2, r25, r2
	add.s r2, r2, r16
	and r20, r2, r4
	setlt.u r2, r5, r10
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r2, zero, .LBB0_66
.LBB0_68:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r16
	and r24, r2, r4
	setlt.u r2, r5, r27
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r2, zero, .LBB0_50
.LBB0_69:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r18, 16
	andi r2, r2, 1
	add.s r2, r18, r2
	add.s r2, r2, r16
	and r26, r2, r4
	j .LBB0_50
.LBB0_70:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r10
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	mfence { sm }
.LBB0_71:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 165 7 is_stmt 1               # parallel-rne.mlir:165:7
	addli r9, r30, -2424
	zext_int2long r[1:2], r1
	store.d r[1:2], 0(r9)                   # 8-byte Folded Spill
	addli r1, zero, 2
	beq r10, r1, .LBB0_103
# %bb.72:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 1
	bneq r10, r1, .LBB0_134
# %bb.73:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r1
	j .LBB0_75
.LBB0_74:                               # %middle.block99
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r12, r30, -2440
	addli r1, zero, 15
	load.d r[9:10], 0(r12)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 173 9 is_stmt 1               # parallel-rne.mlir:173:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_133
.LBB0_75:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_84 Depth 3
                                        #       Child Loop BB0_78 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r2, r30, -2440
	sll.d r[12:13], r[9:10], r1
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	.loc	1 174 11 is_stmt 1              # parallel-rne.mlir:174:11
	bneq r14, r19, .LBB0_82
# %bb.76:                               # %scalar.ph93.preheader
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_78
.LBB0_77:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	setlt.ul r17, r[1:2], r[6:7]
	.loc	1 189 13 is_stmt 1              # parallel-rne.mlir:189:13
	add.s r9, r14, r9
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	stores.w r10, 0(r9)
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	beq r17, zero, .LBB0_74
.LBB0_78:                               # %scalar.ph93
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	add.ul r[9:10], r[1:2], r[12:13]
	slli r9, r9, 2
	add.s r10, r19, r9
	loads.w r17, 0(r10)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r18, r17, r3
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	setlt.u r10, r11, r18
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r10, zero, .LBB0_80
# %bb.79:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r17, 0
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r18, r5, r18
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r18, zero, .LBB0_77
	j .LBB0_81
.LBB0_80:                               #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r17, r8
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r18, r5, r18
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r18, zero, .LBB0_77
.LBB0_81:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r17, 16
	andi r10, r10, 1
	add.s r10, r17, r10
	add.s r10, r10, r16
	and r10, r10, r4
	j .LBB0_77
.LBB0_82:                               # %vector.body95.preheader
                                        #   in Loop: Header=BB0_75 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_84
.LBB0_83:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 174 11 is_stmt 1              # parallel-rne.mlir:174:11
	addli r2, r30, -2424
	addli.d r[26:27], r[26:27], 4
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	add.s r9, r14, r9
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	load.d r[21:22], 0(r2)                  # 8-byte Folded Reload
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	stores.w r18, 12(r9)
	stores.w r20, 8(r9)
	stores.w r1, 4(r9)
	stores.w r10, 0(r9)
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	seteq.d r2, r[26:27], r[21:22]
	bneq r2, zero, .LBB0_74
.LBB0_84:                               # %vector.body95
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	add.ul r[1:2], r[26:27], r[12:13]
	slli r9, r1, 2
	add.s r2, r19, r9
	loads.w r28, 12(r2)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r24, r28, r3
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	setlt.u r1, r11, r24
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r1, zero, .LBB0_86
# %bb.85:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r28, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_84 Depth=3
	or r18, r28, r8
.LBB0_87:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	loads.w r17, 8(r2)
	and r25, r17, r3
	setlt.u r1, r11, r25
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r1, zero, .LBB0_89
# %bb.88:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	j .LBB0_90
.LBB0_89:                               #   in Loop: Header=BB0_84 Depth=3
	or r20, r17, r8
.LBB0_90:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	loads.w r21, 4(r2)
	and r22, r21, r3
	setlt.u r1, r11, r22
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r1, zero, .LBB0_92
# %bb.91:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r21, 0
	j .LBB0_93
.LBB0_92:                               #   in Loop: Header=BB0_84 Depth=3
	or r1, r21, r8
.LBB0_93:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	loads.w r2, 0(r2)
	and r23, r2, r3
	setlt.u r10, r11, r23
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r10, zero, .LBB0_95
# %bb.94:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r2, 0
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r23, r5, r23
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r23, zero, .LBB0_96
	j .LBB0_97
.LBB0_95:                               #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r2, r8
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r23, r5, r23
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r23, zero, .LBB0_97
.LBB0_96:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r2, 16
	andi r10, r10, 1
	add.s r2, r2, r10
	add.s r2, r2, r16
	and r10, r2, r4
.LBB0_97:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	setlt.u r2, r5, r22
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r2, zero, .LBB0_100
# %bb.98:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r25
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r2, zero, .LBB0_101
.LBB0_99:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r24
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r2, zero, .LBB0_83
	j .LBB0_102
.LBB0_100:                              # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r16
	and r1, r1, r4
	setlt.u r2, r5, r25
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r2, zero, .LBB0_99
.LBB0_101:                              # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r17, 16
	andi r2, r2, 1
	add.s r2, r17, r2
	add.s r2, r2, r16
	and r20, r2, r4
	setlt.u r2, r5, r24
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r2, zero, .LBB0_83
.LBB0_102:                              # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r28, 16
	andi r2, r2, 1
	add.s r2, r28, r2
	add.s r2, r2, r16
	and r18, r2, r4
	j .LBB0_83
.LBB0_103:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 16
	.loc	1 194 7 is_stmt 1               # parallel-rne.mlir:194:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r1
	j .LBB0_105
.LBB0_104:                              # %middle.block108
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r12, r30, -2440
	addli r1, zero, 23
	load.d r[9:10], 0(r12)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 202 9 is_stmt 1               # parallel-rne.mlir:202:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_133
.LBB0_105:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_108 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r2, r30, -2440
	sll.d r[12:13], r[9:10], r1
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	.loc	1 203 11 is_stmt 1              # parallel-rne.mlir:203:11
	bneq r14, r19, .LBB0_112
# %bb.106:                              # %scalar.ph102.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_108
.LBB0_107:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	setlt.ul r17, r[1:2], r[6:7]
	.loc	1 218 13 is_stmt 1              # parallel-rne.mlir:218:13
	add.s r9, r14, r9
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	stores.w r10, 0(r9)
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	beq r17, zero, .LBB0_104
.LBB0_108:                              # %scalar.ph102
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	add.ul r[9:10], r[1:2], r[12:13]
	slli r9, r9, 2
	add.s r10, r19, r9
	loads.w r17, 0(r10)
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	and r18, r17, r3
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	setlt.u r10, r11, r18
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r10, zero, .LBB0_110
# %bb.109:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r17, 0
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r18, r5, r18
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r18, zero, .LBB0_107
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r17, r8
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r18, r5, r18
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r18, zero, .LBB0_107
.LBB0_111:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r17, 16
	andi r10, r10, 1
	add.s r10, r17, r10
	add.s r10, r10, r16
	and r10, r10, r4
	j .LBB0_107
.LBB0_112:                              # %vector.body104.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_114
.LBB0_113:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	addli r2, zero, 32
	.loc	1 203 11 is_stmt 1              # parallel-rne.mlir:203:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	add.s r9, r14, r9
	zext_int2long r[20:21], r2
	stores.w r28, 12(r9)
	stores.w r17, 8(r9)
	stores.w r1, 4(r9)
	stores.w r10, 0(r9)
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	seteq.d r2, r[26:27], r[20:21]
	bneq r2, zero, .LBB0_104
.LBB0_114:                              # %vector.body104
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	add.ul r[1:2], r[26:27], r[12:13]
	slli r9, r1, 2
	add.s r2, r19, r9
	loads.w r18, 12(r2)
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	and r24, r18, r3
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	setlt.u r1, r11, r24
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r1, zero, .LBB0_116
# %bb.115:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r18, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_114 Depth=3
	or r28, r18, r8
.LBB0_117:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r20, 8(r2)
	and r25, r20, r3
	setlt.u r1, r11, r25
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r1, zero, .LBB0_119
# %bb.118:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r20, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_114 Depth=3
	or r17, r20, r8
.LBB0_120:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r21, 4(r2)
	and r22, r21, r3
	setlt.u r1, r11, r22
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r1, zero, .LBB0_122
# %bb.121:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r21, 0
	j .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_114 Depth=3
	or r1, r21, r8
.LBB0_123:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r2, 0(r2)
	and r23, r2, r3
	setlt.u r10, r11, r23
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r10, zero, .LBB0_125
# %bb.124:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r2, 0
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r23, r5, r23
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r23, zero, .LBB0_126
	j .LBB0_127
.LBB0_125:                              #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r2, r8
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r23, r5, r23
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r23, zero, .LBB0_127
.LBB0_126:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r2, 16
	andi r10, r10, 1
	add.s r2, r2, r10
	add.s r2, r2, r16
	and r10, r2, r4
.LBB0_127:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	setlt.u r2, r5, r22
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r2, zero, .LBB0_130
# %bb.128:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r25
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r2, zero, .LBB0_131
.LBB0_129:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r24
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r2, zero, .LBB0_113
	j .LBB0_132
.LBB0_130:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r16
	and r1, r1, r4
	setlt.u r2, r5, r25
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r2, zero, .LBB0_129
.LBB0_131:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r20, 16
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r16
	and r17, r2, r4
	setlt.u r2, r5, r24
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r2, zero, .LBB0_113
.LBB0_132:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r18, 16
	andi r2, r2, 1
	add.s r2, r18, r2
	add.s r2, r2, r16
	and r28, r2, r4
	j .LBB0_113
.LBB0_133:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r10
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_134:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 223 7 is_stmt 1               # parallel-rne.mlir:223:7
	loadli.w r1,  -2456(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_169
# %bb.135:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	addli r1, zero, 4
	beq r10, r1, .LBB0_200
.LBB0_136:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 281 7                         # parallel-rne.mlir:281:7
	addli r1, zero, 7
	beq r10, r1, .LBB0_231
.LBB0_137:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 6
	beq r10, r1, .LBB0_261
# %bb.138:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 5
	bneq r10, r1, .LBB0_292
# %bb.139:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 281 7                         # parallel-rne.mlir:281:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r1
	j .LBB0_141
.LBB0_140:                              # %middle.block
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r12, r30, -2440
	addli r1, zero, 47
	load.d r[9:10], 0(r12)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 289 9 is_stmt 1               # parallel-rne.mlir:289:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_291
.LBB0_141:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_150 Depth 3
                                        #       Child Loop BB0_144 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r2, r30, -2440
	sll.d r[12:13], r[9:10], r1
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	.loc	1 290 11 is_stmt 1              # parallel-rne.mlir:290:11
	bneq r14, r19, .LBB0_148
# %bb.142:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_144
.LBB0_143:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	setlt.ul r1, r[9:10], r[6:7]
	.loc	1 305 13 is_stmt 1              # parallel-rne.mlir:305:13
	add.s r2, r14, r17
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 305 13                        # parallel-rne.mlir:305:13
	stores.w r18, 0(r2)
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	beq r1, zero, .LBB0_140
.LBB0_144:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	add.ul r[1:2], r[9:10], r[12:13]
	slli r17, r1, 2
	add.s r1, r19, r17
	loads.w r1, 0(r1)
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	and r2, r1, r3
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	setlt.u r18, r11, r2
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r18, zero, .LBB0_146
# %bb.145:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r1, 0
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r2, r5, r2
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r2, zero, .LBB0_143
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r1, r8
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r2, r5, r2
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r2, zero, .LBB0_143
.LBB0_147:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	add.s r1, r1, r16
	and r18, r1, r4
	j .LBB0_143
.LBB0_148:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_141 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_150
.LBB0_149:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 290 11 is_stmt 1              # parallel-rne.mlir:290:11
	addli r2, r30, -2424
	addli.d r[26:27], r[26:27], 4
	.loc	1 305 13                        # parallel-rne.mlir:305:13
	add.s r9, r14, r9
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	load.d r[22:23], 0(r2)                  # 8-byte Folded Reload
	.loc	1 305 13                        # parallel-rne.mlir:305:13
	stores.w r18, 12(r9)
	stores.w r20, 8(r9)
	stores.w r21, 4(r9)
	stores.w r1, 0(r9)
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	seteq.d r2, r[26:27], r[22:23]
	bneq r2, zero, .LBB0_140
.LBB0_150:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	add.ul r[1:2], r[26:27], r[12:13]
	slli r9, r1, 2
	add.s r10, r19, r9
	loads.w r28, 12(r10)
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	and r24, r28, r3
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	setlt.u r1, r11, r24
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r1, zero, .LBB0_152
# %bb.151:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r28, 0
	j .LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_150 Depth=3
	or r18, r28, r8
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r17, 8(r10)
	and r25, r17, r3
	setlt.u r1, r11, r25
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r1, zero, .LBB0_155
# %bb.154:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	j .LBB0_156
.LBB0_155:                              #   in Loop: Header=BB0_150 Depth=3
	or r20, r17, r8
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r22, 4(r10)
	and r23, r22, r3
	setlt.u r1, r11, r23
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r1, zero, .LBB0_158
# %bb.157:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_159
.LBB0_158:                              #   in Loop: Header=BB0_150 Depth=3
	or r21, r22, r8
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r10, 0(r10)
	and r2, r10, r3
	setlt.u r1, r11, r2
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r1, zero, .LBB0_165
# %bb.160:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r10, 0
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r2, r5, r2
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r2, zero, .LBB0_162
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r16
	and r1, r1, r4
.LBB0_162:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	setlt.u r2, r5, r23
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	beq r2, zero, .LBB0_166
# %bb.163:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r25
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	beq r2, zero, .LBB0_167
.LBB0_164:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r24
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r2, zero, .LBB0_149
	j .LBB0_168
.LBB0_165:                              #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r1, r10, r8
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r2, r5, r2
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	beq r2, zero, .LBB0_161
	j .LBB0_162
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r16
	and r21, r2, r4
	setlt.u r2, r5, r25
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r2, zero, .LBB0_164
.LBB0_167:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r17, 16
	andi r2, r2, 1
	add.s r2, r17, r2
	add.s r2, r2, r16
	and r20, r2, r4
	setlt.u r2, r5, r24
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r2, zero, .LBB0_149
.LBB0_168:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r28, 16
	andi r2, r2, 1
	add.s r2, r28, r2
	add.s r2, r2, r16
	and r18, r2, r4
	j .LBB0_149
.LBB0_169:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 24
	.loc	1 223 7 is_stmt 1               # parallel-rne.mlir:223:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r1
	j .LBB0_171
.LBB0_170:                              # %middle.block90
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, r30, -2440
	load.d r[9:10], 0(r1)                   # 8-byte Folded Reload
	.loc	1 231 9 is_stmt 1               # parallel-rne.mlir:231:9
	setlt.ul r1, r[9:10], r[6:7]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_199
.LBB0_171:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_180 Depth 3
                                        #       Child Loop BB0_174 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r2, r30, -2440
	sll.d r[12:13], r[9:10], r1
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	.loc	1 232 11 is_stmt 1              # parallel-rne.mlir:232:11
	bneq r14, r19, .LBB0_178
# %bb.172:                              # %scalar.ph84.preheader
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_174
.LBB0_173:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	setlt.ul r1, r[9:10], r[6:7]
	.loc	1 247 13 is_stmt 1              # parallel-rne.mlir:247:13
	add.s r2, r14, r17
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 247 13                        # parallel-rne.mlir:247:13
	stores.w r18, 0(r2)
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	beq r1, zero, .LBB0_170
.LBB0_174:                              # %scalar.ph84
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	add.ul r[1:2], r[9:10], r[12:13]
	slli r17, r1, 2
	add.s r1, r19, r17
	loads.w r1, 0(r1)
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r2, r1, r3
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	setlt.u r18, r11, r2
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r18, zero, .LBB0_176
# %bb.175:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r1, 0
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r2, r5, r2
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r2, zero, .LBB0_173
	j .LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r1, r8
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r2, r5, r2
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r2, zero, .LBB0_173
.LBB0_177:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	add.s r1, r1, r16
	and r18, r1, r4
	j .LBB0_173
.LBB0_178:                              # %vector.body86.preheader
                                        #   in Loop: Header=BB0_171 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_180
.LBB0_179:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	addli r2, zero, 32
	.loc	1 232 11 is_stmt 1              # parallel-rne.mlir:232:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 247 13                        # parallel-rne.mlir:247:13
	add.s r9, r14, r9
	zext_int2long r[23:24], r2
	stores.w r18, 12(r9)
	stores.w r20, 8(r9)
	stores.w r22, 4(r9)
	stores.w r1, 0(r9)
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	seteq.d r2, r[26:27], r[23:24]
	bneq r2, zero, .LBB0_170
.LBB0_180:                              # %vector.body86
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	add.ul r[1:2], r[26:27], r[12:13]
	slli r9, r1, 2
	add.s r10, r19, r9
	loads.w r28, 12(r10)
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r24, r28, r3
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	setlt.u r1, r11, r24
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r1, zero, .LBB0_182
# %bb.181:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r28, 0
	j .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_180 Depth=3
	or r18, r28, r8
.LBB0_183:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r17, 8(r10)
	and r25, r17, r3
	setlt.u r1, r11, r25
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r1, zero, .LBB0_185
# %bb.184:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_180 Depth=3
	or r20, r17, r8
.LBB0_186:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r21, 4(r10)
	and r23, r21, r3
	setlt.u r1, r11, r23
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r1, zero, .LBB0_188
# %bb.187:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	j .LBB0_189
.LBB0_188:                              #   in Loop: Header=BB0_180 Depth=3
	or r22, r21, r8
.LBB0_189:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r10, 0(r10)
	and r2, r10, r3
	setlt.u r1, r11, r2
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r1, zero, .LBB0_195
# %bb.190:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r10, 0
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r2, r5, r2
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r2, zero, .LBB0_192
.LBB0_191:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r16
	and r1, r1, r4
.LBB0_192:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	setlt.u r2, r5, r23
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r2, zero, .LBB0_196
# %bb.193:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r25
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r2, zero, .LBB0_197
.LBB0_194:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r24
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r2, zero, .LBB0_179
	j .LBB0_198
.LBB0_195:                              #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r1, r10, r8
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r2, r5, r2
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r2, zero, .LBB0_191
	j .LBB0_192
.LBB0_196:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r16
	and r22, r2, r4
	setlt.u r2, r5, r25
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r2, zero, .LBB0_194
.LBB0_197:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r17, 16
	andi r2, r2, 1
	add.s r2, r17, r2
	add.s r2, r2, r16
	and r20, r2, r4
	setlt.u r2, r5, r24
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r2, zero, .LBB0_179
.LBB0_198:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r28, 16
	andi r2, r2, 1
	add.s r2, r28, r2
	add.s r2, r2, r16
	and r18, r2, r4
	j .LBB0_179
.LBB0_199:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r10
	.loc	1 223 7                         # parallel-rne.mlir:223:7
	mfence { sm }
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	addli r1, zero, 4
	bneq r10, r1, .LBB0_136
.LBB0_200:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r1, r30, -2424
	mfence { lm, sm, gm }
	load.d r[9:10], 0(r1)                   # 8-byte Folded Reload
	j .LBB0_202
.LBB0_201:                              # %middle.block81
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r12, r30, -2440
	addli r1, zero, 39
	load.d r[9:10], 0(r12)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 260 9 is_stmt 1               # parallel-rne.mlir:260:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_230
.LBB0_202:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_211 Depth 3
                                        #       Child Loop BB0_205 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r2, r30, -2440
	sll.d r[12:13], r[9:10], r1
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	.loc	1 261 11 is_stmt 1              # parallel-rne.mlir:261:11
	bneq r14, r19, .LBB0_209
# %bb.203:                              # %scalar.ph75.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_205
.LBB0_204:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	setlt.ul r1, r[9:10], r[6:7]
	.loc	1 276 13 is_stmt 1              # parallel-rne.mlir:276:13
	add.s r2, r14, r17
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 276 13                        # parallel-rne.mlir:276:13
	stores.w r18, 0(r2)
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	beq r1, zero, .LBB0_201
.LBB0_205:                              # %scalar.ph75
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.ul r[1:2], r[9:10], r[12:13]
	slli r17, r1, 2
	add.s r1, r19, r17
	loads.w r1, 0(r1)
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	and r2, r1, r3
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	setlt.u r18, r11, r2
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r18, zero, .LBB0_207
# %bb.206:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r1, 0
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r2, r5, r2
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r2, zero, .LBB0_204
	j .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r1, r8
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r2, r5, r2
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r2, zero, .LBB0_204
.LBB0_208:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	add.s r1, r1, r16
	and r18, r1, r4
	j .LBB0_204
.LBB0_209:                              # %vector.body77.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_211
.LBB0_210:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	addli r2, zero, 32
	.loc	1 261 11 is_stmt 1              # parallel-rne.mlir:261:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 276 13                        # parallel-rne.mlir:276:13
	add.s r9, r14, r9
	zext_int2long r[22:23], r2
	stores.w r18, 12(r9)
	stores.w r20, 8(r9)
	stores.w r21, 4(r9)
	stores.w r1, 0(r9)
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	seteq.d r2, r[26:27], r[22:23]
	bneq r2, zero, .LBB0_201
.LBB0_211:                              # %vector.body77
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.ul r[1:2], r[26:27], r[12:13]
	slli r9, r1, 2
	add.s r10, r19, r9
	loads.w r28, 12(r10)
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	and r24, r28, r3
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	setlt.u r1, r11, r24
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r1, zero, .LBB0_213
# %bb.212:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r28, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_211 Depth=3
	or r18, r28, r8
.LBB0_214:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r17, 8(r10)
	and r25, r17, r3
	setlt.u r1, r11, r25
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r1, zero, .LBB0_216
# %bb.215:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_211 Depth=3
	or r20, r17, r8
.LBB0_217:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r22, 4(r10)
	and r23, r22, r3
	setlt.u r1, r11, r23
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r1, zero, .LBB0_219
# %bb.218:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_220
.LBB0_219:                              #   in Loop: Header=BB0_211 Depth=3
	or r21, r22, r8
.LBB0_220:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r10, 0(r10)
	and r2, r10, r3
	setlt.u r1, r11, r2
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r1, zero, .LBB0_226
# %bb.221:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r10, 0
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r2, r5, r2
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r2, zero, .LBB0_223
.LBB0_222:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r16
	and r1, r1, r4
.LBB0_223:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	setlt.u r2, r5, r23
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r2, zero, .LBB0_227
# %bb.224:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r25
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r2, zero, .LBB0_228
.LBB0_225:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r24
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r2, zero, .LBB0_210
	j .LBB0_229
.LBB0_226:                              #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r1, r10, r8
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r2, r5, r2
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r2, zero, .LBB0_222
	j .LBB0_223
.LBB0_227:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r16
	and r21, r2, r4
	setlt.u r2, r5, r25
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r2, zero, .LBB0_225
.LBB0_228:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r17, 16
	andi r2, r2, 1
	add.s r2, r17, r2
	add.s r2, r2, r16
	and r20, r2, r4
	setlt.u r2, r5, r24
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r2, zero, .LBB0_210
.LBB0_229:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r28, 16
	andi r2, r2, 1
	add.s r2, r28, r2
	add.s r2, r2, r16
	and r18, r2, r4
	j .LBB0_210
.LBB0_230:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r10
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	mfence { sm }
	.loc	1 281 7                         # parallel-rne.mlir:281:7
	addli r1, zero, 7
	bneq r10, r1, .LBB0_137
.LBB0_231:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 339 7 is_stmt 1               # parallel-rne.mlir:339:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r1
	j .LBB0_233
.LBB0_232:                              # %middle.block72
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r12, r30, -2440
	addli r1, zero, 63
	load.d r[9:10], 0(r12)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 347 9 is_stmt 1               # parallel-rne.mlir:347:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_291
.LBB0_233:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_242 Depth 3
                                        #       Child Loop BB0_236 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r2, r30, -2440
	sll.d r[12:13], r[9:10], r1
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	.loc	1 348 11 is_stmt 1              # parallel-rne.mlir:348:11
	bneq r14, r19, .LBB0_240
# %bb.234:                              # %scalar.ph66.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_236
.LBB0_235:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	setlt.ul r1, r[9:10], r[6:7]
	.loc	1 363 13 is_stmt 1              # parallel-rne.mlir:363:13
	add.s r2, r14, r17
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	stores.w r18, 0(r2)
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	beq r1, zero, .LBB0_232
.LBB0_236:                              # %scalar.ph66
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	add.ul r[1:2], r[9:10], r[12:13]
	slli r17, r1, 2
	add.s r1, r19, r17
	loads.w r1, 0(r1)
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	and r2, r1, r3
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	setlt.u r18, r11, r2
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r18, zero, .LBB0_238
# %bb.237:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r1, 0
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r2, r5, r2
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r2, zero, .LBB0_235
	j .LBB0_239
.LBB0_238:                              #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r1, r8
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r2, r5, r2
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r2, zero, .LBB0_235
.LBB0_239:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	add.s r1, r1, r16
	and r18, r1, r4
	j .LBB0_235
.LBB0_240:                              # %vector.body68.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_242
.LBB0_241:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 348 11 is_stmt 1              # parallel-rne.mlir:348:11
	addli r2, r30, -2424
	addli.d r[26:27], r[26:27], 4
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	add.s r9, r14, r9
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	load.d r[22:23], 0(r2)                  # 8-byte Folded Reload
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	stores.w r18, 12(r9)
	stores.w r20, 8(r9)
	stores.w r21, 4(r9)
	stores.w r1, 0(r9)
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	seteq.d r2, r[26:27], r[22:23]
	bneq r2, zero, .LBB0_232
.LBB0_242:                              # %vector.body68
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	add.ul r[1:2], r[26:27], r[12:13]
	slli r9, r1, 2
	add.s r10, r19, r9
	loads.w r28, 12(r10)
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	and r24, r28, r3
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	setlt.u r1, r11, r24
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r1, zero, .LBB0_244
# %bb.243:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r28, 0
	j .LBB0_245
.LBB0_244:                              #   in Loop: Header=BB0_242 Depth=3
	or r18, r28, r8
.LBB0_245:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r17, 8(r10)
	and r25, r17, r3
	setlt.u r1, r11, r25
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r1, zero, .LBB0_247
# %bb.246:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_242 Depth=3
	or r20, r17, r8
.LBB0_248:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r22, 4(r10)
	and r23, r22, r3
	setlt.u r1, r11, r23
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r1, zero, .LBB0_250
# %bb.249:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_251
.LBB0_250:                              #   in Loop: Header=BB0_242 Depth=3
	or r21, r22, r8
.LBB0_251:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r10, 0(r10)
	and r2, r10, r3
	setlt.u r1, r11, r2
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r1, zero, .LBB0_253
# %bb.252:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r10, 0
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r2, r5, r2
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	beq r2, zero, .LBB0_254
	j .LBB0_255
.LBB0_253:                              #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r1, r10, r8
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r2, r5, r2
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r2, zero, .LBB0_255
.LBB0_254:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r16
	and r1, r1, r4
.LBB0_255:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r2, r5, r23
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	beq r2, zero, .LBB0_258
# %bb.256:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r25
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	beq r2, zero, .LBB0_259
.LBB0_257:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r24
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r2, zero, .LBB0_241
	j .LBB0_260
.LBB0_258:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r16
	and r21, r2, r4
	setlt.u r2, r5, r25
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r2, zero, .LBB0_257
.LBB0_259:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r17, 16
	andi r2, r2, 1
	add.s r2, r17, r2
	add.s r2, r2, r16
	and r20, r2, r4
	setlt.u r2, r5, r24
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r2, zero, .LBB0_241
.LBB0_260:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r28, 16
	andi r2, r2, 1
	add.s r2, r28, r2
	add.s r2, r2, r16
	and r18, r2, r4
	j .LBB0_241
.LBB0_261:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 48
	.loc	1 310 7 is_stmt 1               # parallel-rne.mlir:310:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r1
	j .LBB0_263
.LBB0_262:                              # %middle.block63
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r12, r30, -2440
	addli r1, zero, 55
	load.d r[9:10], 0(r12)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 318 9 is_stmt 1               # parallel-rne.mlir:318:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_291
.LBB0_263:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_266 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r2, r30, -2440
	sll.d r[12:13], r[9:10], r1
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	.loc	1 319 11 is_stmt 1              # parallel-rne.mlir:319:11
	bneq r14, r19, .LBB0_270
# %bb.264:                              # %scalar.ph57.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_266
.LBB0_265:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	setlt.ul r1, r[9:10], r[6:7]
	.loc	1 334 13 is_stmt 1              # parallel-rne.mlir:334:13
	add.s r2, r14, r17
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 334 13                        # parallel-rne.mlir:334:13
	stores.w r18, 0(r2)
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	beq r1, zero, .LBB0_262
.LBB0_266:                              # %scalar.ph57
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	add.ul r[1:2], r[9:10], r[12:13]
	slli r17, r1, 2
	add.s r1, r19, r17
	loads.w r1, 0(r1)
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	and r2, r1, r3
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	setlt.u r18, r11, r2
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r18, zero, .LBB0_268
# %bb.267:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r1, 0
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r2, r5, r2
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r2, zero, .LBB0_265
	j .LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r1, r8
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r2, r5, r2
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r2, zero, .LBB0_265
.LBB0_269:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	add.s r1, r1, r16
	and r18, r1, r4
	j .LBB0_265
.LBB0_270:                              # %vector.body59.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_272
.LBB0_271:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 319 11 is_stmt 1              # parallel-rne.mlir:319:11
	addli r2, r30, -2424
	addli.d r[26:27], r[26:27], 4
	.loc	1 334 13                        # parallel-rne.mlir:334:13
	add.s r9, r14, r9
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	load.d r[22:23], 0(r2)                  # 8-byte Folded Reload
	.loc	1 334 13                        # parallel-rne.mlir:334:13
	stores.w r18, 12(r9)
	stores.w r20, 8(r9)
	stores.w r21, 4(r9)
	stores.w r1, 0(r9)
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	seteq.d r2, r[26:27], r[22:23]
	bneq r2, zero, .LBB0_262
.LBB0_272:                              # %vector.body59
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	add.ul r[1:2], r[26:27], r[12:13]
	slli r9, r1, 2
	add.s r10, r19, r9
	loads.w r28, 12(r10)
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	and r24, r28, r3
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	setlt.u r1, r11, r24
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r1, zero, .LBB0_274
# %bb.273:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r28, 0
	j .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_272 Depth=3
	or r18, r28, r8
.LBB0_275:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r17, 8(r10)
	and r25, r17, r3
	setlt.u r1, r11, r25
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r1, zero, .LBB0_277
# %bb.276:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	j .LBB0_278
.LBB0_277:                              #   in Loop: Header=BB0_272 Depth=3
	or r20, r17, r8
.LBB0_278:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r22, 4(r10)
	and r23, r22, r3
	setlt.u r1, r11, r23
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r1, zero, .LBB0_280
# %bb.279:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_281
.LBB0_280:                              #   in Loop: Header=BB0_272 Depth=3
	or r21, r22, r8
.LBB0_281:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r10, 0(r10)
	and r2, r10, r3
	setlt.u r1, r11, r2
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r1, zero, .LBB0_283
# %bb.282:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r10, 0
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r2, r5, r2
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r2, zero, .LBB0_284
	j .LBB0_285
.LBB0_283:                              #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r1, r10, r8
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r2, r5, r2
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r2, zero, .LBB0_285
.LBB0_284:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r16
	and r1, r1, r4
.LBB0_285:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	setlt.u r2, r5, r23
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r2, zero, .LBB0_288
# %bb.286:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r25
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r2, zero, .LBB0_289
.LBB0_287:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r24
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r2, zero, .LBB0_271
	j .LBB0_290
.LBB0_288:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r16
	and r21, r2, r4
	setlt.u r2, r5, r25
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r2, zero, .LBB0_287
.LBB0_289:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r17, 16
	andi r2, r2, 1
	add.s r2, r17, r2
	add.s r2, r2, r16
	and r20, r2, r4
	setlt.u r2, r5, r24
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r2, zero, .LBB0_271
.LBB0_290:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r28, 16
	andi r2, r2, 1
	add.s r2, r28, r2
	add.s r2, r2, r16
	and r18, r2, r4
	j .LBB0_271
.LBB0_291:                              # %.sink.split51
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r10
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_292:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 368 7 is_stmt 1               # parallel-rne.mlir:368:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	loadli.w r1,  -2456(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.293:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r18, zero, 1
	.loc	1 386 7 is_stmt 1               # parallel-rne.mlir:386:7
	bneq r10, zero, .LBB0_7
# %bb.294:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	loadli.w r1,  -2496(r30)                # 4-byte Folded Reload
	addli r6, zero, 992
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	loadli.w r9,  -2492(r30)                # 4-byte Folded Reload
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	addli r17, r30, -2432
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	ori r14, r14, 64
	zext_int2long r[6:7], r6
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	load.d r[12:13], 0(r17)                 # 8-byte Folded Reload
	.loc	1 382 13                        # parallel-rne.mlir:382:13
	addli r17, r30, -2424
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	zext_int2long r[1:2], r1
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	sext_int2long r[9:10], r9
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	min.ul r[6:7], r[1:2], r[6:7]
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.sl r[12:13], r[9:10], r[12:13]
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	addli.d r[6:7], r[6:7], 32
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	addli.d r[12:13], r[12:13], 64
	.loc	1 380 13                        # parallel-rne.mlir:380:13
	max.ul r[6:7], r[6:7], r[1:2]
	sub.sl r[1:2], r[6:7], r[1:2]
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	max.sl r[6:7], r[12:13], r[9:10]
	.loc	1 382 13                        # parallel-rne.mlir:382:13
	load.d r[12:13], 0(r17)                 # 8-byte Folded Reload
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	addli r17, r30, -2480
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	sub.sl r[6:7], r[6:7], r[9:10]
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	load.d r[9:10], 16(r30)
	.loc	1 382 13                        # parallel-rne.mlir:382:13
	min.ul r[1:2], r[1:2], r[12:13]
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	addli r13, r30, -2488
	addli r12, zero, 17
	load.d r[19:20], 0(r13)                 # 8-byte Folded Reload
	sll.d r[12:13], r[19:20], r12
	load.d r[20:21], 0(r17)                 # 8-byte Folded Reload
	addli r17, zero, 12
	addli r19, zero, 64
	xwait r17, 0
	addli r17, zero, 5
	add.ul r[9:10], r[9:10], r[12:13]
	zext_int2long r[12:13], r19
	lock zero, r17
	add.ul r[9:10], r[9:10], r[20:21]
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	min.sl r[6:7], r[6:7], r[12:13]
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	dma_cfg r18, r18, zero, 0
	dma_cfg zero, r18, zero, 1
	dma_cfg r10, zero, zero, 2
	dma_cfg r9, r14, r19, 3
	addli r9, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r10
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	srli r9, r9, 5
	andi r1, r1, 62
	dma_cfg r19, r2, r9, 4
	addli r9, zero, 2048
	dma_cfg r9, r2, r6, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r17
	j .LBB0_6
.LBB0_295:                              # %._crit_edge
	.loc	1 388 5                         # parallel-rne.mlir:388:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_297
# %bb.296:
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
.LBB0_297:
	.loc	1 389 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:389:5
	addli sp, sp, 2504
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
	.long	2568                            # 0xa08
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-m7an6892" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
