	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-zph0cb72" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2568
	addli r1, zero, 1
.Ltmp0:
	.loc	1 31 5 prologue_end             # parallel-rne.mlir:31:5
	core_id r7
	addli r30, sp, 2504
	xsignal_mode_cfg r1
	beq r7, zero, .LBB0_2
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	.loc	1 33 10 is_stmt 1               # parallel-rne.mlir:33:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -500(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -1144(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -1644(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -2416(r30)
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r1, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	fmac.s r2, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	min.s r3, r2, r3
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	ble.s r3, r1, .LBB0_294
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 42 11 is_stmt 1               # parallel-rne.mlir:42:11
	addli r4, r30, -2496
	sext_int2long r[19:20], r1
	addli r14, zero, 16
	addli r12, zero, 4
	addli r21, zero, 1
	lui r17, 522240
	lui r18, 1048560
	addli r6, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r2, zero, 16383
	addli r3, r30, -2504
	lui r1, 1048448
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	lui r1, 127
	lui r2, 522239
	ori r1, r1, 4095
	ori r5, r2, 4095
	storeli.w r1, -2428(r30)                # 4-byte Folded Spill
	lui r1, 524287
	ori r13, r1, 4095
	lui r1, 7
	ori r4, r1, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	addli r1, zero, 11
	addli r14, zero, 16
	addli r21, zero, 1
	xsignal r1, 0
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	addli r1, zero, 12
	xsignal r1, 0
	addli r1, r30, -2456
	load.d r[19:20], 0(r1)                  # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	addli r3, r30, -2496
	addli.d r[19:20], r[19:20], 1
	loadli.w r6,  -2460(r30)                # 4-byte Folded Reload
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	setlt.sl r1, r[19:20], r[1:2]
	beq r1, zero, .LBB0_294
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_73 Depth 2
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_76 Depth 3
                                        #     Child Loop BB0_43 Depth 2
                                        #       Child Loop BB0_52 Depth 3
                                        #       Child Loop BB0_46 Depth 3
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
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	bneq r7, r12, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  32(r30)
	addli r2, r30, -2456
	addli r3, zero, 5
	addli r8, zero, 8
	.loc	1 95 15 is_stmt 1               # parallel-rne.mlir:95:15
	loadli.w r16,  -2416(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	loadli.w r24,  -1644(r30)
	addli r15, zero, 0
	addli r25, zero, 0
	store.d r[19:20], 0(r2)                 # 8-byte Folded Spill
	loadli.w r2,  28(r30)
	mod.s r3, r6, r3
	addli r6, r6, 1
	div.s r1, r19, r1
	storeli.w r6, -2460(r30)                # 4-byte Folded Spill
	div.s r1, r1, r2
	addli r2, zero, 128
	div.s r2, r1, r2
	slli r7, r2, 3
	slli r2, r2, 7
	sub.s r6, r14, r7
	sub.s r2, r1, r2
	min.s r6, r6, r8
	mod.s r1, r1, r6
	div.s r2, r2, r6
	slli r6, r3, 13
	lui r3, 10
	add.s r9, r6, r3
	add.s r1, r7, r1
	slli r3, r2, 6
	storeli.w r3, -2488(r30)                # 4-byte Folded Spill
	slli r7, r1, 5
	zext_int2long r[10:11], r1
	zext_int2long r[2:3], r2
	addli r1, zero, 6
	storeli.w r7, -2484(r30)                # 4-byte Folded Spill
	sll.d r[7:8], r[2:3], r1
	addli r2, r30, -2480
	addli r1, zero, 15
	addli r3, r30, -2504
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	sll.d r[1:2], r[10:11], r1
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	sll.d r[19:20], r[7:8], r21
	load.d r[7:8], 0(r3)                    # 8-byte Folded Reload
	load.d r[10:11], 8(r30)
	addli r3, r30, -2472
	store.d r[19:20], 0(r3)                 # 8-byte Folded Spill
	addli r3, r30, -2440
	and.d r[7:8], r[1:2], r[7:8]
	add.ul r[10:11], r[10:11], r[19:20]
	store.d r[10:11], 0(r3)                 # 8-byte Folded Spill
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r3, 20
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	lock zero, r12
	addli r23, zero, 64
	addli r11, zero, 5
	addli r14, zero, 2
	dma_cfg r27, r27, zero, 0
	ori r3, r3, 64
	dma_cfg zero, r22, zero, 2
	add.s r3, r10, r3
	addli r10, zero, 2048
	dma_cfg r3, r21, r23, 3
	addli r3, zero, 128
	dma_cfg r3, r23, r27, 4
	dma_cfg r3, r10, r20, 5
	addli r10, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r27, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
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
	dma_cfg r27, r27, zero, 0
	dma_cfg r27, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r28, zero, r23, 3
	dma_cfg r3, zero, r27, 4
	dma_cfg r3, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r27, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r14, 0
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r3,  -1144(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r10,  -500(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r3, r3, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r10, r10, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r3, -1144(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r10, -500(r30)
.LBB0_12:                               # %.thread20
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r25, r25, 1
	addli r3, zero, 32
	beq r25, r3, .LBB0_33
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 122 15                        # parallel-rne.mlir:122:15
	addli r15, r15, 1
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	zext_int2long r[11:12], r25
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	addli r3, zero, 5
	sll.d r[19:20], r[11:12], r3
	loadli.w r3,  -2428(r30)                # 4-byte Folded Reload
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	add.ul r[19:20], r[19:20], r[1:2]
	zext_int2long r[21:22], r3
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	setlt.ul r3, r[21:22], r[19:20]
	addli.d r[21:22], r[7:8], 0
	.loc	1 87 15                         # parallel-rne.mlir:87:15
	bneq r3, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[21:22], zero
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	add.s r3, r16, r15
	.loc	1 95 15 is_stmt 1               # parallel-rne.mlir:95:15
	addli r10, zero, 192
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r23, r24, r15
	.loc	1 97 15 is_stmt 1               # parallel-rne.mlir:97:15
	addli r14, zero, 124
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	mod.s r10, r3, r10
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	mod.s r26, r23, r14
	addli r14, zero, 480
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	addli r3, r3, 1
	zext_int2long r[27:28], r14
	addli r14, r30, -2424
	storeli.w r3, -2416(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r3, r23, 1
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	store.d r[27:28], 0(r14)                # 8-byte Folded Spill
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	storeli.w r3, -1644(r30)
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r3, zero, 2
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	slli r14, r10, 12
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	slli r10, r26, 12
	lui r26, 20
	add.s r28, r10, r26
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r26
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	beq r26, r3, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r27, zero, 1
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	bneq r26, r27, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r3, zero, 1024
	sub.sl r[11:12], r[19:20], r[21:22]
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	sll.d r[19:20], r[19:20], r27
	zext_int2long r[21:22], r3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	addli r3, r30, -2424
	div.sl r[11:12], r[11:12], r[21:22]
	load.d r[21:22], 0(r3)                  # 8-byte Folded Reload
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r3, zero, 123
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	min.sl r[21:22], r[11:12], r[21:22]
	sub.sl r[11:12], r[21:22], r[11:12]
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	load.d r[21:22], 0(r30)
	add.ul r[21:22], r[21:22], r[19:20]
	addli r20, r11, 32
	addli r19, zero, 3
	addli r12, zero, 4
	xwait r19, 0
	blt.s r3, r23, .LBB0_10
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r11, zero, 5
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r3, zero, 2
	addli r14, zero, 32
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 6
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 7
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
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
	addli r3, zero, 17
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 18
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
	dma_cfg r27, r27, zero, 0
	dma_cfg r27, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r28, zero, r3, 3
	addli r3, zero, 128
	dma_cfg r3, zero, r27, 4
	dma_cfg r3, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r27, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_10
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r10, zero, 2
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	addli r3, zero, 5
	addli r12, zero, 4
	xwait r10, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 32
	ds_cfg r10, zero, 0
	ds_cfg r3, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r3, zero, 13
	shuffle_batch r14, r28, r3, 1
	addli r3, zero, 3
	unlock zero
	xsignal r3, 0
	xsignal r12, 0
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r3,  -1144(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r22,  -500(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r10, zero, 160
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r19, zero, 124
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	mod.s r10, r3, r10
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r20, r22, r19
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r3, r3, 1
	storeli.w r3, -1144(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r3, r22, 1
	storeli.w r3, -500(r30)
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r3, zero, 7
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	slli r19, r10, 13
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r10, r20, 13
	lui r20, 144
	add.s r28, r10, r20
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	beq r26, r3, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 6
	bneq r26, r3, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, r30, -2440
	addli r14, zero, 16
	addli r23, zero, 7
	load.d r[19:20], 0(r3)                  # 8-byte Folded Reload
	sll.d r[11:12], r[11:12], r14
	addli r3, zero, 123
	xwait r23, 0
	add.ul r[20:21], r[19:20], r[11:12]
	addli r12, zero, 4
	blt.s r3, r22, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r11, zero, 5
	addli r19, zero, 1
	addli r22, zero, 2
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r3, zero, 3
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 6
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r23, 10
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
	addli r3, zero, 17
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 18
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
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r28, zero, r3, 3
	addli r3, zero, 128
	dma_cfg r3, zero, r22, 4
	addli r3, zero, 32
	addli r22, zero, 256
	dma_cfg r22, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r3, 144
	addli r19, zero, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	lock zero, r12
	addli r22, zero, 64
	addli r27, zero, 256
	addli r11, zero, 3
	ori r3, r3, 64
	dma_cfg r19, r19, zero, 0
	dma_cfg zero, r21, zero, 2
	add.s r3, r10, r3
	addli r10, zero, 2048
	dma_cfg r3, r20, r22, 3
	addli r3, zero, 128
	addli r20, zero, 2
	addli r21, zero, 32
	dma_cfg r3, r22, r20, 4
	dma_cfg r27, r10, r21, 5
	addli r10, zero, 4
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	addli r12, zero, 5
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 6
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 8
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r23, 10
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
	dma_cfg zero, zero, r14, 10
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
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r28, zero, r22, 3
	dma_cfg r3, zero, r20, 4
	dma_cfg r27, zero, r21, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	addli r12, zero, 4
	xsignal r11, 0
	.loc	1 119 9 is_stmt 1               # parallel-rne.mlir:119:9
	j .LBB0_12
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 6
	addli r10, zero, 64
	addli r12, zero, 4
	xwait r3, 0
	addli r3, zero, 9
	xwait r3, 0
	addli r3, zero, 2
	lock zero, zero
	ds_cfg r3, zero, 0
	addli r3, zero, 32
	ds_cfg r10, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r10, zero, 13
	shuffle_coa r19, r28, r3, 2
	addli r3, zero, 7
	unlock zero
	xsignal r3, 0
	addli r3, zero, 8
	xsignal r3, 0
	j .LBB0_12
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r12, zero, 4
	.loc	1 121 9 is_stmt 1               # parallel-rne.mlir:121:9
	bneq r26, r12, .LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 8
	xwait r12, 0
	addli r10, zero, 32
	addli r11, zero, 64
	xwait r3, 0
	addli r3, zero, 1
	lock zero, r3
	mm_cfg r11, r10, r10, 0
	addli r10, zero, 2
	mm_cfg r10, r10, r3, 2
	beq r15, zero, .LBB0_31
# %bb.29:                               # %.preheader30
                                        #   in Loop: Header=BB0_14 Depth=2
	mm_acc r9, r14, r19, 8
	j .LBB0_32
.LBB0_30:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r25, r25, 1
	addli r3, zero, 32
	bneq r25, r3, .LBB0_13
	j .LBB0_35
.LBB0_31:                               # %.preheader29
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	mm r9, r14, r19, 8
.LBB0_32:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 1
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r25, r25, 1
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	unlock r3
	addli r3, zero, 5
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r3, zero, 32
	bneq r25, r3, .LBB0_13
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	bneq r26, r12, .LBB0_35
.LBB0_34:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	storeli.w zero, -2444(r30)              # 4-byte Folded Spill
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r7
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	xsignal r1, 0
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	j .LBB0_38
.LBB0_35:                               # %.thread44
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r7
	addli r1, zero, 3
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	bneq r7, r1, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	storeli.w r1, -2444(r30)                # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -2444(r30)              # 4-byte Folded Spill
.LBB0_38:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	addli r1, zero, 255
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	xfence
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	mfence { lm, sm, gm }
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	csr_set csr5, r1
	addli r1, zero, 64
	sync_core
	zext_int2long r[15:16], r1
	addli r1, zero, 63
	zext_int2long r[24:25], r1
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	beq r7, zero, .LBB0_71
# %bb.39:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	addli r1, zero, 2
	beq r7, r1, .LBB0_102
.LBB0_40:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 1
	bneq r7, r1, .LBB0_133
# %bb.41:                               #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[2:3], r12
	mfence { lm, sm, gm }
	j .LBB0_43
.LBB0_42:                               # %middle.block99
                                        #   in Loop: Header=BB0_43 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, r30, -2440
	addli r1, zero, 7
	load.d r[7:8], 0(r3)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 173 9 is_stmt 1               # parallel-rne.mlir:173:9
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[2:3], r[7:8], 1
	beq r1, zero, .LBB0_132
.LBB0_43:                               # %.preheader26
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_52 Depth 3
                                        #       Child Loop BB0_46 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	sll.d r[7:8], r[2:3], r1
	.loc	1 174 11 is_stmt 1              # parallel-rne.mlir:174:11
	addli r1, r30, -2440
	store.d r[2:3], 0(r1)                   # 8-byte Folded Spill
	bneq r6, r9, .LBB0_50
# %bb.44:                               # %scalar.ph93.preheader
                                        #   in Loop: Header=BB0_43 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_46
.LBB0_45:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	setlt.ul r3, r[10:11], r[24:25]
	.loc	1 189 13 is_stmt 1              # parallel-rne.mlir:189:13
	add.s r1, r6, r1
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	stores.w r2, 0(r1)
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	beq r3, zero, .LBB0_42
.LBB0_46:                               # %scalar.ph93
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	add.ul r[1:2], r[10:11], r[7:8]
	slli r1, r1, 2
	add.s r2, r9, r1
	loads.w r12, 0(r2)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r3, r12, r13
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	setlt.u r2, r17, r3
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r2, zero, .LBB0_48
# %bb.47:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r12, 0
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r3, r5, r3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r3, zero, .LBB0_45
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r12, r2
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r3, r5, r3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r3, zero, .LBB0_45
.LBB0_49:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_45
.LBB0_50:                               # %vector.body95.preheader
                                        #   in Loop: Header=BB0_43 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_52
.LBB0_51:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 174 11 is_stmt 1              # parallel-rne.mlir:174:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	add.s r2, r6, r28
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	seteq.d r1, r[20:21], r[15:16]
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	stores.w r10, 12(r2)
	stores.w r23, 8(r2)
	stores.w r27, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	bneq r1, zero, .LBB0_42
.LBB0_52:                               # %vector.body95
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	add.ul r[1:2], r[20:21], r[7:8]
	slli r28, r1, 2
	add.s r12, r9, r28
	loads.w r14, 12(r12)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r22, r14, r13
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	setlt.u r1, r17, r22
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r1, zero, .LBB0_54
# %bb.53:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r14, 0
	j .LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_52 Depth=3
	lui r1, 1024
	or r10, r14, r1
.LBB0_55:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r26, 8(r12)
	and r11, r26, r13
	setlt.u r1, r17, r11
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r1, zero, .LBB0_57
# %bb.56:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r26, 0
	j .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_52 Depth=3
	lui r1, 1024
	or r23, r26, r1
.LBB0_58:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r19, 4(r12)
	and r1, r19, r13
	setlt.u r2, r17, r1
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r2, zero, .LBB0_60
# %bb.59:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r19, 0
	j .LBB0_61
.LBB0_60:                               #   in Loop: Header=BB0_52 Depth=3
	lui r2, 1024
	or r27, r19, r2
.LBB0_61:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r2, 0(r12)
	and r3, r2, r13
	setlt.u r12, r17, r3
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r12, zero, .LBB0_63
# %bb.62:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r2, 0
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r3, r5, r3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r3, zero, .LBB0_64
	j .LBB0_65
.LBB0_63:                               #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r2, r12
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r3, r5, r3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r3, zero, .LBB0_65
.LBB0_64:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r12, r2, r18
.LBB0_65:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	setlt.u r1, r5, r1
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r1, zero, .LBB0_68
# %bb.66:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r1, zero, .LBB0_69
.LBB0_67:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r22
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r1, zero, .LBB0_51
	j .LBB0_70
.LBB0_68:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r4
	and r27, r1, r18
	setlt.u r1, r5, r11
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r1, zero, .LBB0_67
.LBB0_69:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r4
	and r23, r1, r18
	setlt.u r1, r5, r22
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r1, zero, .LBB0_51
.LBB0_70:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r4
	and r10, r1, r18
	j .LBB0_51
.LBB0_71:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_73
.LBB0_72:                               # %middle.block117
                                        #   in Loop: Header=BB0_73 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, r30, -2440
	addli r1, zero, 3
	load.d r[7:8], 0(r3)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 144 9 is_stmt 1               # parallel-rne.mlir:144:9
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[2:3], r[7:8], 1
	beq r1, zero, .LBB0_101
.LBB0_73:                               # %.preheader28
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_76 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	sll.d r[7:8], r[2:3], r1
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	addli r1, r30, -2440
	store.d r[2:3], 0(r1)                   # 8-byte Folded Spill
	bneq r6, r9, .LBB0_80
# %bb.74:                               # %scalar.ph111.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_76
.LBB0_75:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	setlt.ul r3, r[10:11], r[24:25]
	.loc	1 160 13 is_stmt 1              # parallel-rne.mlir:160:13
	add.s r1, r6, r1
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	stores.w r2, 0(r1)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	beq r3, zero, .LBB0_72
.LBB0_76:                               # %scalar.ph111
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[1:2], r[10:11], r[7:8]
	slli r1, r1, 2
	add.s r2, r9, r1
	loads.w r12, 0(r2)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r3, r12, r13
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r2, r17, r3
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r2, zero, .LBB0_78
# %bb.77:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r12, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r3, r5, r3
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r3, zero, .LBB0_75
	j .LBB0_79
.LBB0_78:                               #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r12, r2
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r3, r5, r3
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r3, zero, .LBB0_75
.LBB0_79:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_75
.LBB0_80:                               # %vector.body113.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_82
.LBB0_81:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	add.s r2, r6, r28
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	seteq.d r1, r[20:21], r[15:16]
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	stores.w r14, 12(r2)
	stores.w r26, 8(r2)
	stores.w r19, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	bneq r1, zero, .LBB0_72
.LBB0_82:                               # %vector.body113
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[1:2], r[20:21], r[7:8]
	slli r28, r1, 2
	add.s r12, r9, r28
	loads.w r10, 12(r12)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r22, r10, r13
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r1, r17, r22
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r1, zero, .LBB0_84
# %bb.83:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r10, 0
	j .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_82 Depth=3
	lui r1, 1024
	or r14, r10, r1
.LBB0_85:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r23, 8(r12)
	and r11, r23, r13
	setlt.u r1, r17, r11
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r1, zero, .LBB0_87
# %bb.86:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r23, 0
	j .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_82 Depth=3
	lui r1, 1024
	or r26, r23, r1
.LBB0_88:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r27, 4(r12)
	and r1, r27, r13
	setlt.u r2, r17, r1
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r2, zero, .LBB0_90
# %bb.89:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r27, 0
	j .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_82 Depth=3
	lui r2, 1024
	or r19, r27, r2
.LBB0_91:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r2, 0(r12)
	and r3, r2, r13
	setlt.u r12, r17, r3
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r12, zero, .LBB0_93
# %bb.92:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r2, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r3, r5, r3
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r3, zero, .LBB0_94
	j .LBB0_95
.LBB0_93:                               #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r2, r12
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r3, r5, r3
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r3, zero, .LBB0_95
.LBB0_94:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r12, r2, r18
.LBB0_95:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	setlt.u r1, r5, r1
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r1, zero, .LBB0_98
# %bb.96:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r1, zero, .LBB0_99
.LBB0_97:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r22
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r1, zero, .LBB0_81
	j .LBB0_100
.LBB0_98:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r4
	and r19, r1, r18
	setlt.u r1, r5, r11
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r1, zero, .LBB0_97
.LBB0_99:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r23, 16
	andi r1, r1, 1
	add.s r1, r23, r1
	add.s r1, r1, r4
	and r26, r1, r18
	setlt.u r1, r5, r22
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r1, zero, .LBB0_81
.LBB0_100:                              # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r4
	and r14, r1, r18
	j .LBB0_81
.LBB0_101:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r7
	addli r12, zero, 4
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	mfence { sm }
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	addli r1, zero, 2
	bneq r7, r1, .LBB0_40
.LBB0_102:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 194 7 is_stmt 1               # parallel-rne.mlir:194:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_104
.LBB0_103:                              # %middle.block108
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, r30, -2440
	addli r1, zero, 11
	load.d r[7:8], 0(r3)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 202 9 is_stmt 1               # parallel-rne.mlir:202:9
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[2:3], r[7:8], 1
	beq r1, zero, .LBB0_132
.LBB0_104:                              # %.preheader27
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_107 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	sll.d r[7:8], r[2:3], r1
	.loc	1 203 11 is_stmt 1              # parallel-rne.mlir:203:11
	addli r1, r30, -2440
	store.d r[2:3], 0(r1)                   # 8-byte Folded Spill
	bneq r6, r9, .LBB0_111
# %bb.105:                              # %scalar.ph102.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_107
.LBB0_106:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	setlt.ul r3, r[10:11], r[24:25]
	.loc	1 218 13 is_stmt 1              # parallel-rne.mlir:218:13
	add.s r1, r6, r1
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	stores.w r2, 0(r1)
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	beq r3, zero, .LBB0_103
.LBB0_107:                              # %scalar.ph102
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	add.ul r[1:2], r[10:11], r[7:8]
	slli r1, r1, 2
	add.s r2, r9, r1
	loads.w r12, 0(r2)
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	and r3, r12, r13
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	setlt.u r2, r17, r3
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r2, zero, .LBB0_109
# %bb.108:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r12, 0
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r3, r5, r3
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r3, zero, .LBB0_106
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r12, r2
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r3, r5, r3
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r3, zero, .LBB0_106
.LBB0_110:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_106
.LBB0_111:                              # %vector.body104.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_113
.LBB0_112:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 203 11 is_stmt 1              # parallel-rne.mlir:203:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	add.s r2, r6, r28
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	seteq.d r1, r[20:21], r[15:16]
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	stores.w r10, 12(r2)
	stores.w r23, 8(r2)
	stores.w r27, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	bneq r1, zero, .LBB0_103
.LBB0_113:                              # %vector.body104
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	add.ul r[1:2], r[20:21], r[7:8]
	slli r28, r1, 2
	add.s r12, r9, r28
	loads.w r14, 12(r12)
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	and r22, r14, r13
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	setlt.u r1, r17, r22
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r1, zero, .LBB0_115
# %bb.114:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r14, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_113 Depth=3
	lui r1, 1024
	or r10, r14, r1
.LBB0_116:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r26, 8(r12)
	and r11, r26, r13
	setlt.u r1, r17, r11
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r1, zero, .LBB0_118
# %bb.117:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r26, 0
	j .LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_113 Depth=3
	lui r1, 1024
	or r23, r26, r1
.LBB0_119:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r19, 4(r12)
	and r1, r19, r13
	setlt.u r2, r17, r1
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r2, zero, .LBB0_121
# %bb.120:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r19, 0
	j .LBB0_122
.LBB0_121:                              #   in Loop: Header=BB0_113 Depth=3
	lui r2, 1024
	or r27, r19, r2
.LBB0_122:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r2, 0(r12)
	and r3, r2, r13
	setlt.u r12, r17, r3
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r12, zero, .LBB0_124
# %bb.123:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r2, 0
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r3, r5, r3
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r3, zero, .LBB0_125
	j .LBB0_126
.LBB0_124:                              #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r2, r12
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r3, r5, r3
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r3, zero, .LBB0_126
.LBB0_125:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r12, r2, r18
.LBB0_126:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	setlt.u r1, r5, r1
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r1, zero, .LBB0_129
# %bb.127:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r1, zero, .LBB0_130
.LBB0_128:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r22
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r1, zero, .LBB0_112
	j .LBB0_131
.LBB0_129:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r4
	and r27, r1, r18
	setlt.u r1, r5, r11
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r1, zero, .LBB0_128
.LBB0_130:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r4
	and r23, r1, r18
	setlt.u r1, r5, r22
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r1, zero, .LBB0_112
.LBB0_131:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r4
	and r10, r1, r18
	j .LBB0_112
.LBB0_132:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r7
	addli r12, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_133:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 223 7 is_stmt 1               # parallel-rne.mlir:223:7
	loadli.w r1,  -2444(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_168
# %bb.134:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	beq r7, r12, .LBB0_199
.LBB0_135:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 281 7                         # parallel-rne.mlir:281:7
	addli r1, zero, 7
	beq r7, r1, .LBB0_230
.LBB0_136:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 6
	beq r7, r1, .LBB0_260
# %bb.137:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 5
	bneq r7, r1, .LBB0_291
# %bb.138:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 281 7                         # parallel-rne.mlir:281:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_140
.LBB0_139:                              # %middle.block
                                        #   in Loop: Header=BB0_140 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, r30, -2440
	addli r1, zero, 23
	load.d r[7:8], 0(r3)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 289 9 is_stmt 1               # parallel-rne.mlir:289:9
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[2:3], r[7:8], 1
	beq r1, zero, .LBB0_290
.LBB0_140:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_149 Depth 3
                                        #       Child Loop BB0_143 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	sll.d r[7:8], r[2:3], r1
	.loc	1 290 11 is_stmt 1              # parallel-rne.mlir:290:11
	addli r1, r30, -2440
	store.d r[2:3], 0(r1)                   # 8-byte Folded Spill
	bneq r6, r9, .LBB0_147
# %bb.141:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_140 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_143
.LBB0_142:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	setlt.ul r3, r[10:11], r[24:25]
	.loc	1 305 13 is_stmt 1              # parallel-rne.mlir:305:13
	add.s r1, r6, r1
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 305 13                        # parallel-rne.mlir:305:13
	stores.w r2, 0(r1)
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	beq r3, zero, .LBB0_139
.LBB0_143:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	add.ul r[1:2], r[10:11], r[7:8]
	slli r1, r1, 2
	add.s r2, r9, r1
	loads.w r12, 0(r2)
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	and r3, r12, r13
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	setlt.u r2, r17, r3
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r2, zero, .LBB0_145
# %bb.144:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r12, 0
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r3, r5, r3
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r3, zero, .LBB0_142
	j .LBB0_146
.LBB0_145:                              #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r12, r2
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r3, r5, r3
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r3, zero, .LBB0_142
.LBB0_146:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_142
.LBB0_147:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_140 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_149
.LBB0_148:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 290 11 is_stmt 1              # parallel-rne.mlir:290:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 305 13                        # parallel-rne.mlir:305:13
	add.s r2, r6, r28
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	seteq.d r1, r[20:21], r[15:16]
	.loc	1 305 13                        # parallel-rne.mlir:305:13
	stores.w r10, 12(r2)
	stores.w r23, 8(r2)
	stores.w r27, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	bneq r1, zero, .LBB0_139
.LBB0_149:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	add.ul r[1:2], r[20:21], r[7:8]
	slli r28, r1, 2
	add.s r12, r9, r28
	loads.w r14, 12(r12)
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	and r22, r14, r13
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	setlt.u r1, r17, r22
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r1, zero, .LBB0_151
# %bb.150:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r14, 0
	j .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_149 Depth=3
	lui r1, 1024
	or r10, r14, r1
.LBB0_152:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r26, 8(r12)
	and r11, r26, r13
	setlt.u r1, r17, r11
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r1, zero, .LBB0_154
# %bb.153:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r26, 0
	j .LBB0_155
.LBB0_154:                              #   in Loop: Header=BB0_149 Depth=3
	lui r1, 1024
	or r23, r26, r1
.LBB0_155:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r19, 4(r12)
	and r1, r19, r13
	setlt.u r2, r17, r1
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r2, zero, .LBB0_157
# %bb.156:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r19, 0
	j .LBB0_158
.LBB0_157:                              #   in Loop: Header=BB0_149 Depth=3
	lui r2, 1024
	or r27, r19, r2
.LBB0_158:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r2, 0(r12)
	and r3, r2, r13
	setlt.u r12, r17, r3
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r12, zero, .LBB0_164
# %bb.159:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r2, 0
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r3, r5, r3
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r3, zero, .LBB0_161
.LBB0_160:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r12, r2, r18
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	setlt.u r1, r5, r1
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	beq r1, zero, .LBB0_165
# %bb.162:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	beq r1, zero, .LBB0_166
.LBB0_163:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r22
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r1, zero, .LBB0_148
	j .LBB0_167
.LBB0_164:                              #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r2, r12
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r3, r5, r3
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	beq r3, zero, .LBB0_160
	j .LBB0_161
.LBB0_165:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r4
	and r27, r1, r18
	setlt.u r1, r5, r11
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r1, zero, .LBB0_163
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r4
	and r23, r1, r18
	setlt.u r1, r5, r22
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r1, zero, .LBB0_148
.LBB0_167:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r4
	and r10, r1, r18
	j .LBB0_148
.LBB0_168:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 12
	.loc	1 223 7 is_stmt 1               # parallel-rne.mlir:223:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_170
.LBB0_169:                              # %middle.block90
                                        #   in Loop: Header=BB0_170 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, r30, -2440
	addli r1, zero, 15
	load.d r[7:8], 0(r3)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 231 9 is_stmt 1               # parallel-rne.mlir:231:9
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[2:3], r[7:8], 1
	beq r1, zero, .LBB0_198
.LBB0_170:                              # %.preheader25
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_179 Depth 3
                                        #       Child Loop BB0_173 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	sll.d r[7:8], r[2:3], r1
	.loc	1 232 11 is_stmt 1              # parallel-rne.mlir:232:11
	addli r1, r30, -2440
	store.d r[2:3], 0(r1)                   # 8-byte Folded Spill
	bneq r6, r9, .LBB0_177
# %bb.171:                              # %scalar.ph84.preheader
                                        #   in Loop: Header=BB0_170 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_173
.LBB0_172:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	setlt.ul r3, r[10:11], r[24:25]
	.loc	1 247 13 is_stmt 1              # parallel-rne.mlir:247:13
	add.s r1, r6, r1
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 247 13                        # parallel-rne.mlir:247:13
	stores.w r2, 0(r1)
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	beq r3, zero, .LBB0_169
.LBB0_173:                              # %scalar.ph84
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	add.ul r[1:2], r[10:11], r[7:8]
	slli r1, r1, 2
	add.s r2, r9, r1
	loads.w r12, 0(r2)
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r3, r12, r13
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	setlt.u r2, r17, r3
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r2, zero, .LBB0_175
# %bb.174:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r12, 0
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r3, r5, r3
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r3, zero, .LBB0_172
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r12, r2
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r3, r5, r3
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r3, zero, .LBB0_172
.LBB0_176:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_172
.LBB0_177:                              # %vector.body86.preheader
                                        #   in Loop: Header=BB0_170 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_179
.LBB0_178:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 232 11 is_stmt 1              # parallel-rne.mlir:232:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 247 13                        # parallel-rne.mlir:247:13
	add.s r2, r6, r28
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	seteq.d r1, r[20:21], r[15:16]
	.loc	1 247 13                        # parallel-rne.mlir:247:13
	stores.w r10, 12(r2)
	stores.w r23, 8(r2)
	stores.w r27, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	bneq r1, zero, .LBB0_169
.LBB0_179:                              # %vector.body86
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	add.ul r[1:2], r[20:21], r[7:8]
	slli r28, r1, 2
	add.s r12, r9, r28
	loads.w r14, 12(r12)
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r22, r14, r13
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	setlt.u r1, r17, r22
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r1, zero, .LBB0_181
# %bb.180:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r14, 0
	j .LBB0_182
.LBB0_181:                              #   in Loop: Header=BB0_179 Depth=3
	lui r1, 1024
	or r10, r14, r1
.LBB0_182:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r26, 8(r12)
	and r11, r26, r13
	setlt.u r1, r17, r11
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r1, zero, .LBB0_184
# %bb.183:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r26, 0
	j .LBB0_185
.LBB0_184:                              #   in Loop: Header=BB0_179 Depth=3
	lui r1, 1024
	or r23, r26, r1
.LBB0_185:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r19, 4(r12)
	and r1, r19, r13
	setlt.u r2, r17, r1
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r2, zero, .LBB0_187
# %bb.186:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r19, 0
	j .LBB0_188
.LBB0_187:                              #   in Loop: Header=BB0_179 Depth=3
	lui r2, 1024
	or r27, r19, r2
.LBB0_188:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r2, 0(r12)
	and r3, r2, r13
	setlt.u r12, r17, r3
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r12, zero, .LBB0_194
# %bb.189:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r2, 0
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r3, r5, r3
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r3, zero, .LBB0_191
.LBB0_190:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r12, r2, r18
.LBB0_191:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	setlt.u r1, r5, r1
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r1, zero, .LBB0_195
# %bb.192:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r1, zero, .LBB0_196
.LBB0_193:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r22
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r1, zero, .LBB0_178
	j .LBB0_197
.LBB0_194:                              #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r2, r12
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r3, r5, r3
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r3, zero, .LBB0_190
	j .LBB0_191
.LBB0_195:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r4
	and r27, r1, r18
	setlt.u r1, r5, r11
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r1, zero, .LBB0_193
.LBB0_196:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r4
	and r23, r1, r18
	setlt.u r1, r5, r22
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r1, zero, .LBB0_178
.LBB0_197:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r4
	and r10, r1, r18
	j .LBB0_178
.LBB0_198:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r7
	addli r12, zero, 4
	.loc	1 223 7                         # parallel-rne.mlir:223:7
	mfence { sm }
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	bneq r7, r12, .LBB0_135
.LBB0_199:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_201
.LBB0_200:                              # %middle.block81
                                        #   in Loop: Header=BB0_201 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, r30, -2440
	addli r1, zero, 19
	load.d r[7:8], 0(r3)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 260 9 is_stmt 1               # parallel-rne.mlir:260:9
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[2:3], r[7:8], 1
	beq r1, zero, .LBB0_229
.LBB0_201:                              # %.preheader24
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_210 Depth 3
                                        #       Child Loop BB0_204 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	sll.d r[7:8], r[2:3], r1
	.loc	1 261 11 is_stmt 1              # parallel-rne.mlir:261:11
	addli r1, r30, -2440
	store.d r[2:3], 0(r1)                   # 8-byte Folded Spill
	bneq r6, r9, .LBB0_208
# %bb.202:                              # %scalar.ph75.preheader
                                        #   in Loop: Header=BB0_201 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_204
.LBB0_203:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	setlt.ul r3, r[10:11], r[24:25]
	.loc	1 276 13 is_stmt 1              # parallel-rne.mlir:276:13
	add.s r1, r6, r1
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 276 13                        # parallel-rne.mlir:276:13
	stores.w r2, 0(r1)
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	beq r3, zero, .LBB0_200
.LBB0_204:                              # %scalar.ph75
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.ul r[1:2], r[10:11], r[7:8]
	slli r1, r1, 2
	add.s r2, r9, r1
	loads.w r12, 0(r2)
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	and r3, r12, r13
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	setlt.u r2, r17, r3
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r2, zero, .LBB0_206
# %bb.205:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r12, 0
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r3, r5, r3
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r3, zero, .LBB0_203
	j .LBB0_207
.LBB0_206:                              #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r12, r2
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r3, r5, r3
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r3, zero, .LBB0_203
.LBB0_207:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_203
.LBB0_208:                              # %vector.body77.preheader
                                        #   in Loop: Header=BB0_201 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_210
.LBB0_209:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 261 11 is_stmt 1              # parallel-rne.mlir:261:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 276 13                        # parallel-rne.mlir:276:13
	add.s r2, r6, r28
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	seteq.d r1, r[20:21], r[15:16]
	.loc	1 276 13                        # parallel-rne.mlir:276:13
	stores.w r10, 12(r2)
	stores.w r23, 8(r2)
	stores.w r27, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	bneq r1, zero, .LBB0_200
.LBB0_210:                              # %vector.body77
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.ul r[1:2], r[20:21], r[7:8]
	slli r28, r1, 2
	add.s r12, r9, r28
	loads.w r14, 12(r12)
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	and r22, r14, r13
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	setlt.u r1, r17, r22
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r1, zero, .LBB0_212
# %bb.211:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r14, 0
	j .LBB0_213
.LBB0_212:                              #   in Loop: Header=BB0_210 Depth=3
	lui r1, 1024
	or r10, r14, r1
.LBB0_213:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r26, 8(r12)
	and r11, r26, r13
	setlt.u r1, r17, r11
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r1, zero, .LBB0_215
# %bb.214:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r26, 0
	j .LBB0_216
.LBB0_215:                              #   in Loop: Header=BB0_210 Depth=3
	lui r1, 1024
	or r23, r26, r1
.LBB0_216:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r19, 4(r12)
	and r1, r19, r13
	setlt.u r2, r17, r1
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r2, zero, .LBB0_218
# %bb.217:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r19, 0
	j .LBB0_219
.LBB0_218:                              #   in Loop: Header=BB0_210 Depth=3
	lui r2, 1024
	or r27, r19, r2
.LBB0_219:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r2, 0(r12)
	and r3, r2, r13
	setlt.u r12, r17, r3
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r12, zero, .LBB0_225
# %bb.220:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r2, 0
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r3, r5, r3
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r3, zero, .LBB0_222
.LBB0_221:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r12, r2, r18
.LBB0_222:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	setlt.u r1, r5, r1
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r1, zero, .LBB0_226
# %bb.223:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r1, zero, .LBB0_227
.LBB0_224:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r22
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r1, zero, .LBB0_209
	j .LBB0_228
.LBB0_225:                              #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r2, r12
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r3, r5, r3
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r3, zero, .LBB0_221
	j .LBB0_222
.LBB0_226:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r4
	and r27, r1, r18
	setlt.u r1, r5, r11
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r1, zero, .LBB0_224
.LBB0_227:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r4
	and r23, r1, r18
	setlt.u r1, r5, r22
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r1, zero, .LBB0_209
.LBB0_228:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r4
	and r10, r1, r18
	j .LBB0_209
.LBB0_229:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r7
	addli r12, zero, 4
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	mfence { sm }
	.loc	1 281 7                         # parallel-rne.mlir:281:7
	addli r1, zero, 7
	bneq r7, r1, .LBB0_136
.LBB0_230:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 339 7 is_stmt 1               # parallel-rne.mlir:339:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_232
.LBB0_231:                              # %middle.block72
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, r30, -2440
	addli r1, zero, 31
	load.d r[7:8], 0(r3)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 347 9 is_stmt 1               # parallel-rne.mlir:347:9
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[2:3], r[7:8], 1
	beq r1, zero, .LBB0_290
.LBB0_232:                              # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_241 Depth 3
                                        #       Child Loop BB0_235 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	sll.d r[7:8], r[2:3], r1
	.loc	1 348 11 is_stmt 1              # parallel-rne.mlir:348:11
	addli r1, r30, -2440
	store.d r[2:3], 0(r1)                   # 8-byte Folded Spill
	bneq r6, r9, .LBB0_239
# %bb.233:                              # %scalar.ph66.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_235
.LBB0_234:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	setlt.ul r3, r[10:11], r[24:25]
	.loc	1 363 13 is_stmt 1              # parallel-rne.mlir:363:13
	add.s r1, r6, r1
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	stores.w r2, 0(r1)
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	beq r3, zero, .LBB0_231
.LBB0_235:                              # %scalar.ph66
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	add.ul r[1:2], r[10:11], r[7:8]
	slli r1, r1, 2
	add.s r2, r9, r1
	loads.w r12, 0(r2)
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	and r3, r12, r13
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	setlt.u r2, r17, r3
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r2, zero, .LBB0_237
# %bb.236:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r12, 0
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r3, r5, r3
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r3, zero, .LBB0_234
	j .LBB0_238
.LBB0_237:                              #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r12, r2
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r3, r5, r3
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r3, zero, .LBB0_234
.LBB0_238:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_234
.LBB0_239:                              # %vector.body68.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_241
.LBB0_240:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 348 11 is_stmt 1              # parallel-rne.mlir:348:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	add.s r2, r6, r28
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	seteq.d r1, r[20:21], r[15:16]
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	stores.w r10, 12(r2)
	stores.w r23, 8(r2)
	stores.w r27, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	bneq r1, zero, .LBB0_231
.LBB0_241:                              # %vector.body68
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	add.ul r[1:2], r[20:21], r[7:8]
	slli r28, r1, 2
	add.s r12, r9, r28
	loads.w r14, 12(r12)
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	and r22, r14, r13
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	setlt.u r1, r17, r22
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r1, zero, .LBB0_243
# %bb.242:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r14, 0
	j .LBB0_244
.LBB0_243:                              #   in Loop: Header=BB0_241 Depth=3
	lui r1, 1024
	or r10, r14, r1
.LBB0_244:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r26, 8(r12)
	and r11, r26, r13
	setlt.u r1, r17, r11
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r1, zero, .LBB0_246
# %bb.245:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r26, 0
	j .LBB0_247
.LBB0_246:                              #   in Loop: Header=BB0_241 Depth=3
	lui r1, 1024
	or r23, r26, r1
.LBB0_247:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r19, 4(r12)
	and r1, r19, r13
	setlt.u r2, r17, r1
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r2, zero, .LBB0_249
# %bb.248:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r19, 0
	j .LBB0_250
.LBB0_249:                              #   in Loop: Header=BB0_241 Depth=3
	lui r2, 1024
	or r27, r19, r2
.LBB0_250:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r2, 0(r12)
	and r3, r2, r13
	setlt.u r12, r17, r3
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r12, zero, .LBB0_252
# %bb.251:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r2, 0
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r3, r5, r3
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	beq r3, zero, .LBB0_253
	j .LBB0_254
.LBB0_252:                              #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r2, r12
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r3, r5, r3
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r3, zero, .LBB0_254
.LBB0_253:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r12, r2, r18
.LBB0_254:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	setlt.u r1, r5, r1
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	beq r1, zero, .LBB0_257
# %bb.255:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	beq r1, zero, .LBB0_258
.LBB0_256:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r22
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r1, zero, .LBB0_240
	j .LBB0_259
.LBB0_257:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r4
	and r27, r1, r18
	setlt.u r1, r5, r11
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r1, zero, .LBB0_256
.LBB0_258:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r4
	and r23, r1, r18
	setlt.u r1, r5, r22
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r1, zero, .LBB0_240
.LBB0_259:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r4
	and r10, r1, r18
	j .LBB0_240
.LBB0_260:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 24
	.loc	1 310 7 is_stmt 1               # parallel-rne.mlir:310:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_262
.LBB0_261:                              # %middle.block63
                                        #   in Loop: Header=BB0_262 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, r30, -2440
	addli r1, zero, 27
	load.d r[7:8], 0(r3)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 318 9 is_stmt 1               # parallel-rne.mlir:318:9
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[2:3], r[7:8], 1
	beq r1, zero, .LBB0_290
.LBB0_262:                              # %.preheader23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_271 Depth 3
                                        #       Child Loop BB0_265 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	sll.d r[7:8], r[2:3], r1
	.loc	1 319 11 is_stmt 1              # parallel-rne.mlir:319:11
	addli r1, r30, -2440
	store.d r[2:3], 0(r1)                   # 8-byte Folded Spill
	bneq r6, r9, .LBB0_269
# %bb.263:                              # %scalar.ph57.preheader
                                        #   in Loop: Header=BB0_262 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_265
.LBB0_264:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	setlt.ul r3, r[10:11], r[24:25]
	.loc	1 334 13 is_stmt 1              # parallel-rne.mlir:334:13
	add.s r1, r6, r1
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 334 13                        # parallel-rne.mlir:334:13
	stores.w r2, 0(r1)
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	beq r3, zero, .LBB0_261
.LBB0_265:                              # %scalar.ph57
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_262 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	add.ul r[1:2], r[10:11], r[7:8]
	slli r1, r1, 2
	add.s r2, r9, r1
	loads.w r12, 0(r2)
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	and r3, r12, r13
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	setlt.u r2, r17, r3
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r2, zero, .LBB0_267
# %bb.266:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r12, 0
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r3, r5, r3
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r3, zero, .LBB0_264
	j .LBB0_268
.LBB0_267:                              #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r12, r2
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r3, r5, r3
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r3, zero, .LBB0_264
.LBB0_268:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_264
.LBB0_269:                              # %vector.body59.preheader
                                        #   in Loop: Header=BB0_262 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_271
.LBB0_270:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 319 11 is_stmt 1              # parallel-rne.mlir:319:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 334 13                        # parallel-rne.mlir:334:13
	add.s r2, r6, r28
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	seteq.d r1, r[20:21], r[15:16]
	.loc	1 334 13                        # parallel-rne.mlir:334:13
	stores.w r10, 12(r2)
	stores.w r23, 8(r2)
	stores.w r27, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	bneq r1, zero, .LBB0_261
.LBB0_271:                              # %vector.body59
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_262 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	add.ul r[1:2], r[20:21], r[7:8]
	slli r28, r1, 2
	add.s r12, r9, r28
	loads.w r14, 12(r12)
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	and r22, r14, r13
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	setlt.u r1, r17, r22
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r1, zero, .LBB0_273
# %bb.272:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r14, 0
	j .LBB0_274
.LBB0_273:                              #   in Loop: Header=BB0_271 Depth=3
	lui r1, 1024
	or r10, r14, r1
.LBB0_274:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r26, 8(r12)
	and r11, r26, r13
	setlt.u r1, r17, r11
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r1, zero, .LBB0_276
# %bb.275:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r26, 0
	j .LBB0_277
.LBB0_276:                              #   in Loop: Header=BB0_271 Depth=3
	lui r1, 1024
	or r23, r26, r1
.LBB0_277:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r19, 4(r12)
	and r1, r19, r13
	setlt.u r2, r17, r1
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r2, zero, .LBB0_279
# %bb.278:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r19, 0
	j .LBB0_280
.LBB0_279:                              #   in Loop: Header=BB0_271 Depth=3
	lui r2, 1024
	or r27, r19, r2
.LBB0_280:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r2, 0(r12)
	and r3, r2, r13
	setlt.u r12, r17, r3
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r12, zero, .LBB0_282
# %bb.281:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r2, 0
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r3, r5, r3
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r3, zero, .LBB0_283
	j .LBB0_284
.LBB0_282:                              #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r2, r12
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r3, r5, r3
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r3, zero, .LBB0_284
.LBB0_283:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r12, r2, r18
.LBB0_284:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	setlt.u r1, r5, r1
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r1, zero, .LBB0_287
# %bb.285:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r1, zero, .LBB0_288
.LBB0_286:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r22
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r1, zero, .LBB0_270
	j .LBB0_289
.LBB0_287:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r4
	and r27, r1, r18
	setlt.u r1, r5, r11
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r1, zero, .LBB0_286
.LBB0_288:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r4
	and r23, r1, r18
	setlt.u r1, r5, r22
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r1, zero, .LBB0_270
.LBB0_289:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r4
	and r10, r1, r18
	j .LBB0_270
.LBB0_290:                              # %.sink.split51
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r7
	addli r12, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_291:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 368 7 is_stmt 1               # parallel-rne.mlir:368:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	loadli.w r1,  -2444(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.292:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, r30, -2456
	addli r14, zero, 16
	addli r21, zero, 1
	load.d r[19:20], 0(r1)                  # 8-byte Folded Reload
	.loc	1 386 7 is_stmt 1               # parallel-rne.mlir:386:7
	bneq r7, zero, .LBB0_6
# %bb.293:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 960
	.loc	1 376 13 is_stmt 1              # parallel-rne.mlir:376:13
	loadli.w r1,  -2488(r30)                # 4-byte Folded Reload
	zext_int2long r[7:8], r3
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	loadli.w r3,  -2484(r30)                # 4-byte Folded Reload
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	zext_int2long r[1:2], r1
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	sext_int2long r[9:10], r3
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	addli r3, r30, -2424
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	min.ul r[7:8], r[1:2], r[7:8]
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	load.d r[11:12], 0(r3)                  # 8-byte Folded Reload
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	addli.d r[7:8], r[7:8], 64
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	addli r3, r30, -2480
	.loc	1 380 13                        # parallel-rne.mlir:380:13
	max.ul r[7:8], r[7:8], r[1:2]
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.sl r[11:12], r[9:10], r[11:12]
	.loc	1 380 13                        # parallel-rne.mlir:380:13
	sub.sl r[1:2], r[7:8], r[1:2]
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	addli.d r[11:12], r[11:12], 32
	.loc	1 382 13                        # parallel-rne.mlir:382:13
	min.ul r[1:2], r[1:2], r[15:16]
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	max.sl r[7:8], r[11:12], r[9:10]
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	load.d r[11:12], 0(r3)                  # 8-byte Folded Reload
	addli r3, zero, 32
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	sub.sl r[7:8], r[7:8], r[9:10]
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	load.d r[9:10], 16(r30)
	sll.d r[11:12], r[11:12], r14
	add.ul r[9:10], r[9:10], r[11:12]
	zext_int2long r[11:12], r3
	addli r3, r30, -2472
	load.d r[15:16], 0(r3)                  # 8-byte Folded Reload
	addli r3, zero, 12
	xwait r3, 0
	ori r3, r6, 64
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	min.sl r[6:7], r[7:8], r[11:12]
	addli r12, zero, 4
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	add.ul r[9:10], r[9:10], r[15:16]
	addli r15, zero, 5
	addli r16, zero, 64
	lock zero, r15
	dma_cfg r21, r21, zero, 0
	dma_cfg zero, r21, zero, 1
	dma_cfg r10, zero, zero, 2
	dma_cfg r9, r3, r16, 3
	addli r3, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	srli r3, r3, 5
	andi r1, r1, 62
	dma_cfg r16, r2, r3, 4
	addli r2, zero, 256
	addli r3, zero, 2048
	dma_cfg r3, r2, r6, 5
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r7
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r21, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r15
	xsignal r1, 0
	j .LBB0_6
.LBB0_294:                              # %._crit_edge
	.loc	1 388 5                         # parallel-rne.mlir:388:5
	xsignal zero, 0
	bneq r7, zero, .LBB0_296
# %bb.295:
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
.LBB0_296:
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-zph0cb72" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
