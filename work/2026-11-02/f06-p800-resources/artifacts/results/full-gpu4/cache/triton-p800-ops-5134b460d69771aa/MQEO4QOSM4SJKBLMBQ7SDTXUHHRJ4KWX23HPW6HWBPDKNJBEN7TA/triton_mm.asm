	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-n21gi0f6" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2576
	addli r1, zero, 1
.Ltmp0:
	.loc	1 32 5 prologue_end             # parallel-rne.mlir:32:5
	core_id r17
	addli r30, sp, 2512
	xsignal_mode_cfg r1
	beq r17, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 32 5                          # parallel-rne.mlir:32:5
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
	.loc	1 34 10 is_stmt 1               # parallel-rne.mlir:34:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	lui r6, 1048575
	addli r8, r30, -2512
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -500(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -1144(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -1644(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -2416(r30)
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	mul.s r1, r2, r1
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	mul.s r3, r1, r3
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	addli r2, r2, -1
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	div.s r2, r2, r4
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	load_param_i r4, 0
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	mul.s r1, r2, r4
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	fmac.s r2, r2, r4
	lui r4, 1048575
	store.d r[4:5], 0(r8)                   # 8-byte Folded Spill
	ori r4, r6, 4095
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	min.s r3, r2, r3
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	.loc	1 48 11                         # parallel-rne.mlir:48:11
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
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	ble.s r3, r1, .LBB0_295
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 43 11 is_stmt 1               # parallel-rne.mlir:43:11
	addli r4, r30, -2504
	sext_int2long r[8:9], r1
	addli r13, zero, 5
	addli r14, zero, 4
	lui r28, 1024
	storeli.w zero, -2468(r30)              # 4-byte Folded Spill
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r3, r30, -2512
	lui r4, 1048560
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	addli r2, zero, 1023
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	lui r2, 7
	lui r1, 524287
	ori r3, r2, 4095
	lui r2, 522239
	ori r27, r1, 4095
	lui r1, 522240
	ori r5, r2, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	addli r2, zero, 12
	xsignal r2, 0
	addli r2, r30, -2464
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	addli r2, r30, -2504
	addli.d r[8:9], r[8:9], 1
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	setlt.sl r2, r[8:9], r[6:7]
	beq r2, zero, .LBB0_295
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
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
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r15, zero, 16
	.loc	1 78 7 is_stmt 1                # parallel-rne.mlir:78:7
	bneq r17, r14, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	addli r6, r30, -2464
	addli r17, zero, 2
	addli r24, zero, 1
	addli r12, zero, 11
	addli r14, r30, -2480
	store.d r[8:9], 0(r6)                   # 8-byte Folded Spill
	loadli.w r6,  28(r30)
	div.s r2, r8, r2
	addli r8, zero, 8
	div.s r6, r2, r6
	addli r2, zero, 128
	div.s r9, r6, r2
	slli r2, r9, 3
	sub.s r7, r17, r2
	min.s r10, r7, r8
	.loc	1 98 15 is_stmt 1               # parallel-rne.mlir:98:15
	loadli.w r8,  -1644(r30)
	mod.s r7, r6, r10
	add.s r2, r2, r7
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	loadli.w r7,  -2416(r30)
	setlt.u r11, r24, r2
	zext_int2long r[18:19], r2
	store.d r[18:19], 0(r14)                # 8-byte Folded Spill
	sll.d r[18:19], r[18:19], r12
	bneq r11, zero, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[11:12], zero
	j .LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	addli r14, r30, -2512
	load.d r[11:12], 0(r14)                 # 8-byte Folded Reload
	and.d r[11:12], r[18:19], r[11:12]
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	slli r9, r9, 7
	addli r14, r30, -2448
	slli r2, r2, 5
	addli r23, zero, 4
	addli r20, zero, 5
	sub.s r6, r6, r9
	store.d r[11:12], 0(r14)                # 8-byte Folded Spill
	loadli.w r14,  -2468(r30)               # 4-byte Folded Reload
	addli r11, r30, -2440
	storeli.w r2, -2492(r30)                # 4-byte Folded Spill
	addli r12, zero, 0
	div.s r6, r6, r10
	store.d r[18:19], 0(r11)                # 8-byte Folded Spill
	mod.s r9, r14, r13
	addli r14, r14, 1
	storeli.w r14, -2468(r30)               # 4-byte Folded Spill
	load.d r[13:14], 8(r30)
	slli r2, r6, 6
	zext_int2long r[10:11], r6
	slli r6, r9, 13
	storeli.w r2, -2496(r30)                # 4-byte Folded Spill
	addli r2, zero, 6
	sll.d r[10:11], r[10:11], r2
	addli r2, r30, -2488
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	sll.d r[10:11], r[10:11], r24
	lui r2, 10
	add.s r9, r6, r2
	add.ul r[10:11], r[13:14], r[10:11]
	addli r2, r30, -2456
	addli r13, zero, 0
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	j .LBB0_17
.LBB0_13:                               #   in Loop: Header=BB0_17 Depth=2
	lui r11, 20
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	lock zero, r14
	addli r19, zero, 64
	dma_cfg r26, r26, zero, 0
	ori r11, r11, 64
	dma_cfg zero, r18, zero, 2
	add.s r2, r2, r11
	addli r11, zero, 6
	dma_cfg r2, r17, r19, 3
	addli r2, zero, 128
	addli r17, zero, 2
	dma_cfg r2, r19, r26, 4
	dma_cfg r2, r2, r10, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	lock zero, r13
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 5
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 7
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 8
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 9
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 11
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 12
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 13
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 14
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 15
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 17
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 18
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 19
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 20
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 21
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 22
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 23
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 24
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 25
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 26
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 27
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 28
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 29
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 30
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 31
	dma_cfg zero, zero, r11, 10
	dma_cfg r26, r26, zero, 0
	dma_cfg r26, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r25, zero, r19, 3
	dma_cfg r2, zero, r26, 4
	dma_cfg r2, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	xsignal r17, 0
.LBB0_14:                               # %.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r2,  -1144(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r10,  -500(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r2, r2, 1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r10, r10, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r2, -1144(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r10, -500(r30)
.LBB0_15:                               # %.thread20
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	andi r2, r24, 1
	beq r2, zero, .LBB0_34
.LBB0_16:                               # %.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r23, zero, 4
	.loc	1 123 15 is_stmt 1              # parallel-rne.mlir:123:15
	addli r12, r12, 1
	addli r13, zero, 1
	addli r24, zero, 0
.LBB0_17:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	addli r18, zero, 64
	.loc	1 80 15 is_stmt 1               # parallel-rne.mlir:80:15
	add.s r11, r8, r12
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	addli r14, zero, 124
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	add.s r2, r7, r12
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r10, zero, 192
	addli r16, r30, -2424
	zext_int2long r[18:19], r18
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	mod.s r14, r11, r14
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	mod.s r10, r2, r10
	addli r2, r2, 1
	store.d r[18:19], 0(r16)                # 8-byte Folded Spill
	addli r18, zero, 32
	addli r16, r30, -2432
	storeli.w r2, -2416(r30)
	zext_int2long r[18:19], r18
	store.d r[18:19], 0(r16)                # 8-byte Folded Spill
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	slli r2, r14, 12
	lui r18, 20
	addli r14, r11, 1
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r10, r10, 12
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r19
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	add.s r25, r2, r18
	storeli.w r14, -1644(r30)
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	beq r19, r17, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r22, zero, 2
	zext_int2long r[13:14], r13
	addli r26, zero, 1
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	bneq r19, r26, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r10, zero, 5
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r21
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sll.d r[13:14], r[13:14], r10
	addli r10, r30, -2440
	load.d r[16:17], 0(r10)                 # 8-byte Folded Reload
	addli r10, r30, -2448
	or.d r[13:14], r[13:14], r[16:17]
	load.d r[16:17], 0(r10)                 # 8-byte Folded Reload
	addli r10, r30, -2424
	load.d r[19:20], 0(r10)                 # 8-byte Folded Reload
	addli r10, r30, -2432
	sub.sl r[17:18], r[13:14], r[16:17]
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	sll.d r[13:14], r[13:14], r26
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.sl r[17:18], r[17:18], r[19:20]
	load.d r[19:20], 0(r10)                 # 8-byte Folded Reload
	min.sl r[19:20], r[17:18], r[19:20]
	sub.sl r[19:20], r[19:20], r[17:18]
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	load.d r[16:17], 0(r30)
	addli r10, r19, 32
	addli r20, zero, 3
	add.ul r[17:18], r[16:17], r[13:14]
	addli r13, zero, 5
	addli r14, zero, 4
	addli r16, zero, 123
	xwait r20, 0
	blt.s r16, r11, .LBB0_13
# %bb.20:                               #   in Loop: Header=BB0_17 Depth=2
	lock zero, r13
	addli r11, zero, 6
	addli r19, zero, 32
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 7
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 8
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 9
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 11
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 12
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 13
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 14
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 15
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 17
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 18
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 19
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 20
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 21
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 22
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 23
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 24
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 25
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 26
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 27
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 28
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 29
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 30
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 31
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 64
	dma_cfg r26, r26, zero, 0
	dma_cfg r26, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r25, zero, r11, 3
	addli r11, zero, 128
	dma_cfg r11, zero, r26, 4
	dma_cfg r11, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	j .LBB0_13
.LBB0_21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 103 9 is_stmt 1               # parallel-rne.mlir:103:9
	xwait r17, 0
	xwait r20, 0
	lock zero, zero
	addli r2, zero, 32
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r21
	addli r14, zero, 4
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	ds_cfg r17, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r2, zero, 13
	shuffle_batch r10, r25, r2, 1
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	xsignal r14, 0
	j .LBB0_14
.LBB0_22:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r17,  -500(r30)
	addli r18, zero, 124
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r2,  -1144(r30)
	addli r11, zero, 160
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	lui r16, 144
	mod.s r18, r17, r18
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r11, r2, r11
	addli r2, r2, 1
	storeli.w r2, -1144(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	slli r2, r18, 13
	addli r18, r17, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r11, r11, 13
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	add.s r25, r2, r16
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r16, zero, 7
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r18, -500(r30)
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	beq r19, r16, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_17 Depth=2
	addli r18, zero, 6
	bneq r19, r18, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r16, zero, 16
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r15, r30, -2456
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r21
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	sll.d r[10:11], r[13:14], r16
	load.d r[13:14], 0(r15)                 # 8-byte Folded Reload
	addli r15, zero, 7
	xwait r15, 0
	add.ul r[10:11], r[13:14], r[10:11]
	addli r13, zero, 123
	blt.s r13, r17, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r17, zero, 5
	addli r18, zero, 1
	addli r14, zero, 2
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r13, zero, 3
	lock zero, r17
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 6
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 8
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 9
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 10
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 11
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 12
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 13
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 14
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 15
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 17
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 18
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
	addli r13, zero, 64
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r25, zero, r13, 3
	addli r13, zero, 128
	dma_cfg r13, zero, r14, 4
	addli r13, zero, 32
	addli r14, zero, 256
	dma_cfg r14, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
.LBB0_26:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r13, 144
	addli r14, zero, 4
	addli r20, zero, 1
	addli r18, zero, 64
	addli r17, zero, 2
	addli r19, zero, 32
	addli r22, zero, 256
	ori r13, r13, 64
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	lock zero, r14
	dma_cfg r20, r20, zero, 0
	add.s r2, r2, r13
	dma_cfg zero, r11, zero, 2
	addli r13, zero, 5
	dma_cfg r2, r10, r18, 3
	addli r2, zero, 128
	addli r10, zero, 2048
	addli r11, zero, 6
	dma_cfg r2, r18, r17, 4
	dma_cfg r22, r10, r19, 5
	addli r10, zero, 3
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	lock zero, r13
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 8
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 16
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
	dma_cfg zero, zero, r16, 10
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
	dma_cfg r20, r20, zero, 0
	dma_cfg r20, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r25, zero, r18, 3
	dma_cfg r2, zero, r17, 4
	dma_cfg r22, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	addli r20, zero, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	xsignal r11, 0
	.loc	1 120 9 is_stmt 1               # parallel-rne.mlir:120:9
	j .LBB0_15
.LBB0_27:                               #   in Loop: Header=BB0_17 Depth=2
	addli r2, zero, 6
	addli r17, zero, 2
	addli r10, zero, 32
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r21
	addli r14, zero, 4
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	xwait r2, 0
	addli r2, zero, 9
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 64
	ds_cfg r17, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg r2, zero, 13
	addli r2, zero, 7
	shuffle_coa r11, r25, r10, 2
	unlock zero
	xsignal r2, 0
	addli r2, zero, 8
	xsignal r2, 0
	j .LBB0_15
.LBB0_28:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	andi r2, r24, 1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r13
	addli r14, zero, 4
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	bneq r13, r14, .LBB0_31
# %bb.29:                               #   in Loop: Header=BB0_17 Depth=2
	addli r13, zero, 8
	xwait r14, 0
	addli r17, zero, 32
	xwait r13, 0
	addli r13, zero, 1
	lock zero, r13
	addli r13, zero, 64
	mm_cfg r13, r17, r17, 0
	addli r13, zero, 1
	addli r17, zero, 2
	mm_cfg r17, r17, r13, 2
	beq r12, zero, .LBB0_32
# %bb.30:                               # %.preheader30
                                        #   in Loop: Header=BB0_17 Depth=2
	mm_acc r9, r10, r11, 8
	j .LBB0_33
.LBB0_31:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r17, zero, 2
	bneq r2, zero, .LBB0_16
	j .LBB0_36
.LBB0_32:                               # %.preheader29
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	mm r9, r10, r11, 8
.LBB0_33:                               # %.thread20.thread43
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r10, zero, 5
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	unlock r13
	addli r20, zero, 5
	xsignal r10, 0
	addli r10, zero, 9
	xsignal r10, 0
	bneq r2, zero, .LBB0_16
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 126 7 is_stmt 1               # parallel-rne.mlir:126:7
	bneq r21, r14, .LBB0_36
.LBB0_35:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	storeli.w zero, -2456(r30)              # 4-byte Folded Spill
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r17
	.loc	1 126 7                         # parallel-rne.mlir:126:7
	xsignal r2, 0
	j .LBB0_39
.LBB0_36:                               # %.thread42
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r17
	addli r2, zero, 3
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	bneq r17, r2, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	storeli.w r2, -2456(r30)                # 4-byte Folded Spill
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -2456(r30)              # 4-byte Folded Spill
.LBB0_39:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	addli r2, zero, 255
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	xfence
	addli r13, zero, 5
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	mfence { lm, sm, gm }
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	csr_set csr5, r2
	addli r2, zero, 63
	sync_core
	zext_int2long r[7:8], r2
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	bneq r17, zero, .LBB0_71
# %bb.40:                               #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[10:11], zero
	mfence { lm, sm, gm }
	j .LBB0_42
.LBB0_41:                               # %middle.block114
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 3
	zext_int2long r[10:11], r2
	addli r2, r30, -2440
	load.d r[12:13], 0(r2)                  # 8-byte Folded Reload
	.loc	1 145 9 is_stmt 1               # parallel-rne.mlir:145:9
	setlt.ul r2, r[12:13], r[10:11]
	addli.d r[10:11], r[12:13], 1
	beq r2, zero, .LBB0_70
.LBB0_42:                               # %.preheader28
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_45 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	addli r12, r30, -2440
	sll.d r[17:18], r[10:11], r2
	store.d r[10:11], 0(r12)                # 8-byte Folded Spill
	.loc	1 146 11 is_stmt 1              # parallel-rne.mlir:146:11
	bneq r6, r9, .LBB0_49
# %bb.43:                               # %scalar.ph108.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_45
.LBB0_44:                               # %scalar.ph108
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	setlt.ul r13, r[10:11], r[7:8]
	.loc	1 161 13 is_stmt 1              # parallel-rne.mlir:161:13
	add.s r2, r6, r2
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	stores.w r12, 0(r2)
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	beq r13, zero, .LBB0_41
.LBB0_45:                               # %scalar.ph108
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	add.ul r[12:13], r[10:11], r[17:18]
	slli r2, r12, 2
	add.s r12, r9, r2
	loads.w r13, 0(r12)
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	and r14, r13, r27
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	setlt.u r12, r1, r14
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r12, zero, .LBB0_47
# %bb.46:                               # %scalar.ph108
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r14, r5, r14
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r14, zero, .LBB0_44
	j .LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r13, r28
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r14, r5, r14
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r14, zero, .LBB0_44
.LBB0_48:                               # %scalar.ph108
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r13, 16
	andi r12, r12, 1
	add.s r12, r13, r12
	add.s r12, r12, r3
	and r12, r12, r4
	j .LBB0_44
.LBB0_49:                               # %vector.body110.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	zext_int2long r[24:25], zero
	j .LBB0_51
.LBB0_50:                               # %vector.body110
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 146 11 is_stmt 1              # parallel-rne.mlir:146:11
	addli r14, r30, -2424
	addli.d r[24:25], r[24:25], 4
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	add.s r10, r6, r10
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	load.d r[12:13], 0(r14)                 # 8-byte Folded Reload
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	stores.w r11, 12(r10)
	stores.w r2, 8(r10)
	stores.w r23, 4(r10)
	stores.w r26, 0(r10)
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	seteq.d r12, r[24:25], r[12:13]
	bneq r12, zero, .LBB0_41
.LBB0_51:                               # %vector.body110
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	add.ul r[10:11], r[24:25], r[17:18]
	slli r10, r10, 2
	add.s r26, r9, r10
	loads.w r12, 12(r26)
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	and r14, r12, r27
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	setlt.u r2, r1, r14
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r2, zero, .LBB0_53
# %bb.52:                               # %vector.body110
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_51 Depth=3
	or r11, r12, r28
.LBB0_54:                               # %vector.body110
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r22, 8(r26)
	and r13, r22, r27
	setlt.u r2, r1, r13
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r2, zero, .LBB0_56
# %bb.55:                               # %vector.body110
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r22, 0
	j .LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_51 Depth=3
	or r2, r22, r28
.LBB0_57:                               # %vector.body110
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r19, 4(r26)
	and r15, r19, r27
	setlt.u r16, r1, r15
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r16, zero, .LBB0_59
# %bb.58:                               # %vector.body110
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r19, 0
	j .LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_51 Depth=3
	or r23, r19, r28
.LBB0_60:                               # %vector.body110
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r16, 0(r26)
	and r20, r16, r27
	setlt.u r21, r1, r20
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r21, zero, .LBB0_62
# %bb.61:                               # %vector.body110
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r16, 0
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r20, r5, r20
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	beq r20, zero, .LBB0_63
	j .LBB0_64
.LBB0_62:                               #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r16, r28
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r20, r5, r20
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r20, zero, .LBB0_64
.LBB0_63:                               # %vector.body110
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r16, 16
	andi r20, r20, 1
	add.s r16, r16, r20
	add.s r16, r16, r3
	and r26, r16, r4
.LBB0_64:                               # %vector.body110
                                        #   in Loop: Header=BB0_51 Depth=3
	setlt.u r15, r5, r15
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	beq r15, zero, .LBB0_67
# %bb.65:                               # %vector.body110
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r13, r5, r13
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	beq r13, zero, .LBB0_68
.LBB0_66:                               # %vector.body110
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r13, r5, r14
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r13, zero, .LBB0_50
	j .LBB0_69
.LBB0_67:                               # %vector.body110
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r19, 16
	andi r15, r15, 1
	add.s r15, r19, r15
	add.s r15, r15, r3
	and r23, r15, r4
	setlt.u r13, r5, r13
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r13, zero, .LBB0_66
.LBB0_68:                               # %vector.body110
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r3
	and r2, r2, r4
	setlt.u r13, r5, r14
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r13, zero, .LBB0_50
.LBB0_69:                               # %vector.body110
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r12, 16
	andi r11, r11, 1
	add.s r11, r12, r11
	add.s r11, r11, r3
	and r11, r11, r4
	j .LBB0_50
.LBB0_70:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r17
	addli r13, zero, 5
	addli r14, zero, 4
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	mfence { sm }
.LBB0_71:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	addli r2, zero, 2
	addli r10, zero, 16
	beq r17, r2, .LBB0_103
# %bb.72:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 1
	bneq r17, r2, .LBB0_134
# %bb.73:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[10:11], zero
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	addli r2, r30, -2448
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	zext_int2long r[10:11], r14
	xfence
	mfence { lm, sm, gm }
	j .LBB0_75
.LBB0_74:                               # %middle.block96
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 7
	zext_int2long r[10:11], r2
	addli r2, r30, -2440
	load.d r[12:13], 0(r2)                  # 8-byte Folded Reload
	.loc	1 174 9 is_stmt 1               # parallel-rne.mlir:174:9
	setlt.ul r2, r[12:13], r[10:11]
	addli.d r[10:11], r[12:13], 1
	beq r2, zero, .LBB0_133
.LBB0_75:                               # %.preheader26
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_84 Depth 3
                                        #       Child Loop BB0_78 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	addli r12, r30, -2440
	sll.d r[24:25], r[10:11], r2
	store.d r[10:11], 0(r12)                # 8-byte Folded Spill
	.loc	1 175 11 is_stmt 1              # parallel-rne.mlir:175:11
	bneq r6, r9, .LBB0_82
# %bb.76:                               # %scalar.ph90.preheader
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_78
.LBB0_77:                               # %scalar.ph90
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	setlt.ul r13, r[10:11], r[7:8]
	.loc	1 190 13 is_stmt 1              # parallel-rne.mlir:190:13
	add.s r2, r6, r2
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	stores.w r12, 0(r2)
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	beq r13, zero, .LBB0_74
.LBB0_78:                               # %scalar.ph90
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	add.ul r[12:13], r[10:11], r[24:25]
	slli r2, r12, 2
	add.s r12, r9, r2
	loads.w r13, 0(r12)
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	and r14, r13, r27
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	setlt.u r12, r1, r14
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r12, zero, .LBB0_80
# %bb.79:                               # %scalar.ph90
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r14, r5, r14
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r14, zero, .LBB0_77
	j .LBB0_81
.LBB0_80:                               #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r13, r28
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r14, r5, r14
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r14, zero, .LBB0_77
.LBB0_81:                               # %scalar.ph90
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r13, 16
	andi r12, r12, 1
	add.s r12, r13, r12
	add.s r12, r12, r3
	and r12, r12, r4
	j .LBB0_77
.LBB0_82:                               # %vector.body92.preheader
                                        #   in Loop: Header=BB0_75 Depth=2
	addli r2, r30, -2448
	load.d r[15:16], 0(r2)                  # 8-byte Folded Reload
	j .LBB0_84
.LBB0_83:                               # %vector.body92
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 175 11 is_stmt 1              # parallel-rne.mlir:175:11
	addli r2, r30, -2424
	addli.d r[15:16], r[15:16], 4
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	add.s r12, r6, r12
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	load.d r[17:18], 0(r2)                  # 8-byte Folded Reload
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	stores.w r14, 12(r12)
	stores.w r10, 8(r12)
	stores.w r22, 4(r12)
	stores.w r11, 0(r12)
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	seteq.d r2, r[15:16], r[17:18]
	bneq r2, zero, .LBB0_74
.LBB0_84:                               # %vector.body92
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	add.ul r[10:11], r[15:16], r[24:25]
	slli r12, r10, 2
	add.s r11, r9, r12
	loads.w r26, 12(r11)
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	and r2, r26, r27
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	setlt.u r10, r1, r2
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r10, zero, .LBB0_86
# %bb.85:                               # %vector.body92
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r26, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_84 Depth=3
	or r14, r26, r28
.LBB0_87:                               # %vector.body92
                                        #   in Loop: Header=BB0_84 Depth=3
	loads.w r19, 8(r11)
	and r13, r19, r27
	setlt.u r10, r1, r13
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r10, zero, .LBB0_89
# %bb.88:                               # %vector.body92
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r19, 0
	j .LBB0_90
.LBB0_89:                               #   in Loop: Header=BB0_84 Depth=3
	or r10, r19, r28
.LBB0_90:                               # %vector.body92
                                        #   in Loop: Header=BB0_84 Depth=3
	loads.w r23, 4(r11)
	and r17, r23, r27
	setlt.u r18, r1, r17
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r18, zero, .LBB0_92
# %bb.91:                               # %vector.body92
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r23, 0
	j .LBB0_93
.LBB0_92:                               #   in Loop: Header=BB0_84 Depth=3
	or r22, r23, r28
.LBB0_93:                               # %vector.body92
                                        #   in Loop: Header=BB0_84 Depth=3
	loads.w r18, 0(r11)
	and r20, r18, r27
	setlt.u r11, r1, r20
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r11, zero, .LBB0_95
# %bb.94:                               # %vector.body92
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r18, 0
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r20, r5, r20
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r20, zero, .LBB0_96
	j .LBB0_97
.LBB0_95:                               #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r18, r28
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r20, r5, r20
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r20, zero, .LBB0_97
.LBB0_96:                               # %vector.body92
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r18, 16
	andi r11, r11, 1
	add.s r11, r18, r11
	add.s r11, r11, r3
	and r11, r11, r4
.LBB0_97:                               # %vector.body92
                                        #   in Loop: Header=BB0_84 Depth=3
	setlt.u r17, r5, r17
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r17, zero, .LBB0_100
# %bb.98:                               # %vector.body92
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r13, r5, r13
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r13, zero, .LBB0_101
.LBB0_99:                               # %vector.body92
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r2
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r2, zero, .LBB0_83
	j .LBB0_102
.LBB0_100:                              # %vector.body92
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r17, r23, 16
	andi r17, r17, 1
	add.s r17, r23, r17
	add.s r17, r17, r3
	and r22, r17, r4
	setlt.u r13, r5, r13
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r13, zero, .LBB0_99
.LBB0_101:                              # %vector.body92
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r19, 16
	andi r10, r10, 1
	add.s r10, r19, r10
	add.s r10, r10, r3
	and r10, r10, r4
	setlt.u r2, r5, r2
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r2, zero, .LBB0_83
.LBB0_102:                              # %vector.body92
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r26, 16
	andi r2, r2, 1
	add.s r2, r26, r2
	add.s r2, r2, r3
	and r14, r2, r4
	j .LBB0_83
.LBB0_103:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 8
	.loc	1 195 7 is_stmt 1               # parallel-rne.mlir:195:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_105
.LBB0_104:                              # %middle.block105
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 11
	zext_int2long r[10:11], r2
	addli r2, r30, -2440
	load.d r[12:13], 0(r2)                  # 8-byte Folded Reload
	.loc	1 203 9 is_stmt 1               # parallel-rne.mlir:203:9
	setlt.ul r2, r[12:13], r[10:11]
	addli.d r[10:11], r[12:13], 1
	beq r2, zero, .LBB0_133
.LBB0_105:                              # %.preheader27
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_108 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	addli r12, r30, -2440
	sll.d r[17:18], r[10:11], r2
	store.d r[10:11], 0(r12)                # 8-byte Folded Spill
	.loc	1 204 11 is_stmt 1              # parallel-rne.mlir:204:11
	bneq r6, r9, .LBB0_112
# %bb.106:                              # %scalar.ph99.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_108
.LBB0_107:                              # %scalar.ph99
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	setlt.ul r13, r[10:11], r[7:8]
	.loc	1 219 13 is_stmt 1              # parallel-rne.mlir:219:13
	add.s r2, r6, r2
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 219 13                        # parallel-rne.mlir:219:13
	stores.w r12, 0(r2)
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	beq r13, zero, .LBB0_104
.LBB0_108:                              # %scalar.ph99
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	add.ul r[12:13], r[10:11], r[17:18]
	slli r2, r12, 2
	add.s r12, r9, r2
	loads.w r13, 0(r12)
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	and r14, r13, r27
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	setlt.u r12, r1, r14
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r12, zero, .LBB0_110
# %bb.109:                              # %scalar.ph99
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r14, r5, r14
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r14, zero, .LBB0_107
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r13, r28
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r14, r5, r14
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r14, zero, .LBB0_107
.LBB0_111:                              # %scalar.ph99
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r13, 16
	andi r12, r12, 1
	add.s r12, r13, r12
	add.s r12, r12, r3
	and r12, r12, r4
	j .LBB0_107
.LBB0_112:                              # %vector.body101.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	zext_int2long r[24:25], zero
	j .LBB0_114
.LBB0_113:                              # %vector.body101
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 204 11 is_stmt 1              # parallel-rne.mlir:204:11
	addli r14, r30, -2424
	addli.d r[24:25], r[24:25], 4
	.loc	1 219 13                        # parallel-rne.mlir:219:13
	add.s r10, r6, r10
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	load.d r[12:13], 0(r14)                 # 8-byte Folded Reload
	.loc	1 219 13                        # parallel-rne.mlir:219:13
	stores.w r11, 12(r10)
	stores.w r2, 8(r10)
	stores.w r19, 4(r10)
	stores.w r26, 0(r10)
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	seteq.d r12, r[24:25], r[12:13]
	bneq r12, zero, .LBB0_104
.LBB0_114:                              # %vector.body101
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	add.ul r[10:11], r[24:25], r[17:18]
	slli r10, r10, 2
	add.s r26, r9, r10
	loads.w r12, 12(r26)
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	and r14, r12, r27
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	setlt.u r2, r1, r14
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r2, zero, .LBB0_116
# %bb.115:                              # %vector.body101
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_114 Depth=3
	or r11, r12, r28
.LBB0_117:                              # %vector.body101
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r22, 8(r26)
	and r13, r22, r27
	setlt.u r2, r1, r13
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r2, zero, .LBB0_119
# %bb.118:                              # %vector.body101
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r22, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_114 Depth=3
	or r2, r22, r28
.LBB0_120:                              # %vector.body101
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r23, 4(r26)
	and r15, r23, r27
	setlt.u r16, r1, r15
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r16, zero, .LBB0_122
# %bb.121:                              # %vector.body101
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r23, 0
	j .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_114 Depth=3
	or r19, r23, r28
.LBB0_123:                              # %vector.body101
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r16, 0(r26)
	and r20, r16, r27
	setlt.u r21, r1, r20
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r21, zero, .LBB0_125
# %bb.124:                              # %vector.body101
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r16, 0
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r20, r5, r20
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	beq r20, zero, .LBB0_126
	j .LBB0_127
.LBB0_125:                              #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r16, r28
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r20, r5, r20
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r20, zero, .LBB0_127
.LBB0_126:                              # %vector.body101
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r16, 16
	andi r20, r20, 1
	add.s r16, r16, r20
	add.s r16, r16, r3
	and r26, r16, r4
.LBB0_127:                              # %vector.body101
                                        #   in Loop: Header=BB0_114 Depth=3
	setlt.u r15, r5, r15
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	beq r15, zero, .LBB0_130
# %bb.128:                              # %vector.body101
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r13, r5, r13
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	beq r13, zero, .LBB0_131
.LBB0_129:                              # %vector.body101
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r13, r5, r14
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r13, zero, .LBB0_113
	j .LBB0_132
.LBB0_130:                              # %vector.body101
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r23, 16
	andi r15, r15, 1
	add.s r15, r23, r15
	add.s r15, r15, r3
	and r19, r15, r4
	setlt.u r13, r5, r13
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r13, zero, .LBB0_129
.LBB0_131:                              # %vector.body101
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r3
	and r2, r2, r4
	setlt.u r13, r5, r14
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r13, zero, .LBB0_113
.LBB0_132:                              # %vector.body101
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r12, 16
	andi r11, r11, 1
	add.s r11, r12, r11
	add.s r11, r11, r3
	and r11, r11, r4
	j .LBB0_113
.LBB0_133:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r17
	addli r13, zero, 5
	addli r14, zero, 4
	addli r10, zero, 16
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_134:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 224 7 is_stmt 1               # parallel-rne.mlir:224:7
	loadli.w r2,  -2456(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_169
# %bb.135:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	beq r17, r14, .LBB0_200
.LBB0_136:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 7
	.loc	1 282 7 is_stmt 1               # parallel-rne.mlir:282:7
	beq r17, r2, .LBB0_231
.LBB0_137:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 6
	beq r17, r2, .LBB0_261
# %bb.138:                              #   in Loop: Header=BB0_7 Depth=1
	bneq r17, r13, .LBB0_292
# %bb.139:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 282 7                         # parallel-rne.mlir:282:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_141
.LBB0_140:                              # %middle.block
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 23
	zext_int2long r[10:11], r2
	addli r2, r30, -2440
	load.d r[12:13], 0(r2)                  # 8-byte Folded Reload
	.loc	1 290 9 is_stmt 1               # parallel-rne.mlir:290:9
	setlt.ul r2, r[12:13], r[10:11]
	addli.d r[10:11], r[12:13], 1
	beq r2, zero, .LBB0_291
.LBB0_141:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_150 Depth 3
                                        #       Child Loop BB0_144 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	addli r12, r30, -2440
	sll.d r[17:18], r[10:11], r2
	store.d r[10:11], 0(r12)                # 8-byte Folded Spill
	.loc	1 291 11 is_stmt 1              # parallel-rne.mlir:291:11
	bneq r6, r9, .LBB0_148
# %bb.142:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_144
.LBB0_143:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	setlt.ul r13, r[10:11], r[7:8]
	.loc	1 306 13 is_stmt 1              # parallel-rne.mlir:306:13
	add.s r2, r6, r2
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	stores.w r12, 0(r2)
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	beq r13, zero, .LBB0_140
.LBB0_144:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	add.ul r[12:13], r[10:11], r[17:18]
	slli r2, r12, 2
	add.s r12, r9, r2
	loads.w r13, 0(r12)
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	and r14, r13, r27
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	setlt.u r12, r1, r14
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r12, zero, .LBB0_146
# %bb.145:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r14, r5, r14
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r14, zero, .LBB0_143
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r13, r28
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r14, r5, r14
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r14, zero, .LBB0_143
.LBB0_147:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r13, 16
	andi r12, r12, 1
	add.s r12, r13, r12
	add.s r12, r12, r3
	and r12, r12, r4
	j .LBB0_143
.LBB0_148:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_141 Depth=2
	zext_int2long r[24:25], zero
	j .LBB0_150
.LBB0_149:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 291 11 is_stmt 1              # parallel-rne.mlir:291:11
	addli r2, r30, -2424
	addli.d r[24:25], r[24:25], 4
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	add.s r10, r6, r10
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	load.d r[12:13], 0(r2)                  # 8-byte Folded Reload
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	stores.w r11, 12(r10)
	stores.w r14, 8(r10)
	stores.w r19, 4(r10)
	stores.w r26, 0(r10)
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	seteq.d r2, r[24:25], r[12:13]
	bneq r2, zero, .LBB0_140
.LBB0_150:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	add.ul r[10:11], r[24:25], r[17:18]
	slli r10, r10, 2
	add.s r26, r9, r10
	loads.w r12, 12(r26)
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	and r2, r12, r27
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	setlt.u r11, r1, r2
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r11, zero, .LBB0_152
# %bb.151:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_150 Depth=3
	or r11, r12, r28
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r22, 8(r26)
	and r13, r22, r27
	setlt.u r14, r1, r13
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r14, zero, .LBB0_155
# %bb.154:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r22, 0
	j .LBB0_156
.LBB0_155:                              #   in Loop: Header=BB0_150 Depth=3
	or r14, r22, r28
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r23, 4(r26)
	and r15, r23, r27
	setlt.u r16, r1, r15
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r16, zero, .LBB0_158
# %bb.157:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r23, 0
	j .LBB0_159
.LBB0_158:                              #   in Loop: Header=BB0_150 Depth=3
	or r19, r23, r28
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r16, 0(r26)
	and r20, r16, r27
	setlt.u r21, r1, r20
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r21, zero, .LBB0_165
# %bb.160:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r16, 0
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r20, r5, r20
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r20, zero, .LBB0_162
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r16, 16
	andi r20, r20, 1
	add.s r16, r16, r20
	add.s r16, r16, r3
	and r26, r16, r4
.LBB0_162:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	setlt.u r15, r5, r15
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	beq r15, zero, .LBB0_166
# %bb.163:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r13, r5, r13
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	beq r13, zero, .LBB0_167
.LBB0_164:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r2
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r2, zero, .LBB0_149
	j .LBB0_168
.LBB0_165:                              #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r26, r16, r28
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r20, r5, r20
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	beq r20, zero, .LBB0_161
	j .LBB0_162
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r15, r23, 16
	andi r15, r15, 1
	add.s r15, r23, r15
	add.s r15, r15, r3
	and r19, r15, r4
	setlt.u r13, r5, r13
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r13, zero, .LBB0_164
.LBB0_167:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r22, 16
	andi r13, r13, 1
	add.s r13, r22, r13
	add.s r13, r13, r3
	and r14, r13, r4
	setlt.u r2, r5, r2
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r2, zero, .LBB0_149
.LBB0_168:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r3
	and r11, r2, r4
	j .LBB0_149
.LBB0_169:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 12
	.loc	1 224 7 is_stmt 1               # parallel-rne.mlir:224:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_171
.LBB0_170:                              # %middle.block87
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 15
	zext_int2long r[10:11], r2
	addli r2, r30, -2440
	load.d r[12:13], 0(r2)                  # 8-byte Folded Reload
	.loc	1 232 9 is_stmt 1               # parallel-rne.mlir:232:9
	setlt.ul r2, r[12:13], r[10:11]
	addli.d r[10:11], r[12:13], 1
	beq r2, zero, .LBB0_199
.LBB0_171:                              # %.preheader25
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_180 Depth 3
                                        #       Child Loop BB0_174 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	addli r12, r30, -2440
	sll.d r[17:18], r[10:11], r2
	store.d r[10:11], 0(r12)                # 8-byte Folded Spill
	.loc	1 233 11 is_stmt 1              # parallel-rne.mlir:233:11
	bneq r6, r9, .LBB0_178
# %bb.172:                              # %scalar.ph81.preheader
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_174
.LBB0_173:                              # %scalar.ph81
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	setlt.ul r13, r[10:11], r[7:8]
	.loc	1 248 13 is_stmt 1              # parallel-rne.mlir:248:13
	add.s r2, r6, r2
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	stores.w r12, 0(r2)
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	beq r13, zero, .LBB0_170
.LBB0_174:                              # %scalar.ph81
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	add.ul r[12:13], r[10:11], r[17:18]
	slli r2, r12, 2
	add.s r12, r9, r2
	loads.w r13, 0(r12)
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	and r14, r13, r27
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	setlt.u r12, r1, r14
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r12, zero, .LBB0_176
# %bb.175:                              # %scalar.ph81
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r14, r5, r14
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r14, zero, .LBB0_173
	j .LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r13, r28
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r14, r5, r14
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r14, zero, .LBB0_173
.LBB0_177:                              # %scalar.ph81
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r13, 16
	andi r12, r12, 1
	add.s r12, r13, r12
	add.s r12, r12, r3
	and r12, r12, r4
	j .LBB0_173
.LBB0_178:                              # %vector.body83.preheader
                                        #   in Loop: Header=BB0_171 Depth=2
	zext_int2long r[24:25], zero
	j .LBB0_180
.LBB0_179:                              # %vector.body83
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 233 11 is_stmt 1              # parallel-rne.mlir:233:11
	addli r2, r30, -2424
	addli.d r[24:25], r[24:25], 4
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	add.s r10, r6, r10
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	load.d r[12:13], 0(r2)                  # 8-byte Folded Reload
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	stores.w r11, 12(r10)
	stores.w r14, 8(r10)
	stores.w r19, 4(r10)
	stores.w r26, 0(r10)
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	seteq.d r2, r[24:25], r[12:13]
	bneq r2, zero, .LBB0_170
.LBB0_180:                              # %vector.body83
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	add.ul r[10:11], r[24:25], r[17:18]
	slli r10, r10, 2
	add.s r26, r9, r10
	loads.w r12, 12(r26)
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	and r2, r12, r27
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	setlt.u r11, r1, r2
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r11, zero, .LBB0_182
# %bb.181:                              # %vector.body83
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_180 Depth=3
	or r11, r12, r28
.LBB0_183:                              # %vector.body83
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r22, 8(r26)
	and r13, r22, r27
	setlt.u r14, r1, r13
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r14, zero, .LBB0_185
# %bb.184:                              # %vector.body83
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r22, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_180 Depth=3
	or r14, r22, r28
.LBB0_186:                              # %vector.body83
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r23, 4(r26)
	and r15, r23, r27
	setlt.u r16, r1, r15
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r16, zero, .LBB0_188
# %bb.187:                              # %vector.body83
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r23, 0
	j .LBB0_189
.LBB0_188:                              #   in Loop: Header=BB0_180 Depth=3
	or r19, r23, r28
.LBB0_189:                              # %vector.body83
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r16, 0(r26)
	and r20, r16, r27
	setlt.u r21, r1, r20
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r21, zero, .LBB0_195
# %bb.190:                              # %vector.body83
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r16, 0
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r20, r5, r20
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r20, zero, .LBB0_192
.LBB0_191:                              # %vector.body83
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r16, 16
	andi r20, r20, 1
	add.s r16, r16, r20
	add.s r16, r16, r3
	and r26, r16, r4
.LBB0_192:                              # %vector.body83
                                        #   in Loop: Header=BB0_180 Depth=3
	setlt.u r15, r5, r15
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	beq r15, zero, .LBB0_196
# %bb.193:                              # %vector.body83
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r13, r5, r13
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	beq r13, zero, .LBB0_197
.LBB0_194:                              # %vector.body83
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r2
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r2, zero, .LBB0_179
	j .LBB0_198
.LBB0_195:                              #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r26, r16, r28
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r20, r5, r20
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	beq r20, zero, .LBB0_191
	j .LBB0_192
.LBB0_196:                              # %vector.body83
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r15, r23, 16
	andi r15, r15, 1
	add.s r15, r23, r15
	add.s r15, r15, r3
	and r19, r15, r4
	setlt.u r13, r5, r13
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r13, zero, .LBB0_194
.LBB0_197:                              # %vector.body83
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r22, 16
	andi r13, r13, 1
	add.s r13, r22, r13
	add.s r13, r13, r3
	and r14, r13, r4
	setlt.u r2, r5, r2
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r2, zero, .LBB0_179
.LBB0_198:                              # %vector.body83
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r3
	and r11, r2, r4
	j .LBB0_179
.LBB0_199:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r17
	addli r13, zero, 5
	addli r14, zero, 4
	addli r10, zero, 16
	.loc	1 224 7                         # parallel-rne.mlir:224:7
	mfence { sm }
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	bneq r17, r14, .LBB0_136
.LBB0_200:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[10:11], r10
	mfence { lm, sm, gm }
	j .LBB0_202
.LBB0_201:                              # %middle.block78
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 19
	zext_int2long r[10:11], r2
	addli r2, r30, -2440
	load.d r[12:13], 0(r2)                  # 8-byte Folded Reload
	.loc	1 261 9 is_stmt 1               # parallel-rne.mlir:261:9
	setlt.ul r2, r[12:13], r[10:11]
	addli.d r[10:11], r[12:13], 1
	beq r2, zero, .LBB0_230
.LBB0_202:                              # %.preheader24
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_211 Depth 3
                                        #       Child Loop BB0_205 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	addli r12, r30, -2440
	sll.d r[17:18], r[10:11], r2
	store.d r[10:11], 0(r12)                # 8-byte Folded Spill
	.loc	1 262 11 is_stmt 1              # parallel-rne.mlir:262:11
	bneq r6, r9, .LBB0_209
# %bb.203:                              # %scalar.ph72.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_205
.LBB0_204:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	setlt.ul r13, r[10:11], r[7:8]
	.loc	1 277 13 is_stmt 1              # parallel-rne.mlir:277:13
	add.s r2, r6, r2
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 277 13                        # parallel-rne.mlir:277:13
	stores.w r12, 0(r2)
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	beq r13, zero, .LBB0_201
.LBB0_205:                              # %scalar.ph72
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	add.ul r[12:13], r[10:11], r[17:18]
	slli r2, r12, 2
	add.s r12, r9, r2
	loads.w r13, 0(r12)
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	and r14, r13, r27
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	setlt.u r12, r1, r14
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r12, zero, .LBB0_207
# %bb.206:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r14, r5, r14
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r14, zero, .LBB0_204
	j .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r13, r28
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r14, r5, r14
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r14, zero, .LBB0_204
.LBB0_208:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r13, 16
	andi r12, r12, 1
	add.s r12, r13, r12
	add.s r12, r12, r3
	and r12, r12, r4
	j .LBB0_204
.LBB0_209:                              # %vector.body74.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	zext_int2long r[24:25], zero
	j .LBB0_211
.LBB0_210:                              # %vector.body74
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 262 11 is_stmt 1              # parallel-rne.mlir:262:11
	addli r2, r30, -2424
	addli.d r[24:25], r[24:25], 4
	.loc	1 277 13                        # parallel-rne.mlir:277:13
	add.s r10, r6, r10
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	load.d r[12:13], 0(r2)                  # 8-byte Folded Reload
	.loc	1 277 13                        # parallel-rne.mlir:277:13
	stores.w r11, 12(r10)
	stores.w r14, 8(r10)
	stores.w r19, 4(r10)
	stores.w r26, 0(r10)
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	seteq.d r2, r[24:25], r[12:13]
	bneq r2, zero, .LBB0_201
.LBB0_211:                              # %vector.body74
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	add.ul r[10:11], r[24:25], r[17:18]
	slli r10, r10, 2
	add.s r26, r9, r10
	loads.w r12, 12(r26)
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	and r2, r12, r27
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	setlt.u r11, r1, r2
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r11, zero, .LBB0_213
# %bb.212:                              # %vector.body74
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_211 Depth=3
	or r11, r12, r28
.LBB0_214:                              # %vector.body74
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r22, 8(r26)
	and r13, r22, r27
	setlt.u r14, r1, r13
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r14, zero, .LBB0_216
# %bb.215:                              # %vector.body74
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r22, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_211 Depth=3
	or r14, r22, r28
.LBB0_217:                              # %vector.body74
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r23, 4(r26)
	and r15, r23, r27
	setlt.u r16, r1, r15
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r16, zero, .LBB0_219
# %bb.218:                              # %vector.body74
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r23, 0
	j .LBB0_220
.LBB0_219:                              #   in Loop: Header=BB0_211 Depth=3
	or r19, r23, r28
.LBB0_220:                              # %vector.body74
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r16, 0(r26)
	and r20, r16, r27
	setlt.u r21, r1, r20
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r21, zero, .LBB0_226
# %bb.221:                              # %vector.body74
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r16, 0
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r20, r5, r20
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r20, zero, .LBB0_223
.LBB0_222:                              # %vector.body74
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r16, 16
	andi r20, r20, 1
	add.s r16, r16, r20
	add.s r16, r16, r3
	and r26, r16, r4
.LBB0_223:                              # %vector.body74
                                        #   in Loop: Header=BB0_211 Depth=3
	setlt.u r15, r5, r15
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	beq r15, zero, .LBB0_227
# %bb.224:                              # %vector.body74
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r13, r5, r13
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	beq r13, zero, .LBB0_228
.LBB0_225:                              # %vector.body74
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r2
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r2, zero, .LBB0_210
	j .LBB0_229
.LBB0_226:                              #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r26, r16, r28
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r20, r5, r20
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	beq r20, zero, .LBB0_222
	j .LBB0_223
.LBB0_227:                              # %vector.body74
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r15, r23, 16
	andi r15, r15, 1
	add.s r15, r23, r15
	add.s r15, r15, r3
	and r19, r15, r4
	setlt.u r13, r5, r13
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r13, zero, .LBB0_225
.LBB0_228:                              # %vector.body74
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r22, 16
	andi r13, r13, 1
	add.s r13, r22, r13
	add.s r13, r13, r3
	and r14, r13, r4
	setlt.u r2, r5, r2
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r2, zero, .LBB0_210
.LBB0_229:                              # %vector.body74
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r3
	and r11, r2, r4
	j .LBB0_210
.LBB0_230:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r17
	addli r13, zero, 5
	addli r14, zero, 4
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	mfence { sm }
	addli r2, zero, 7
	.loc	1 282 7                         # parallel-rne.mlir:282:7
	bneq r17, r2, .LBB0_137
.LBB0_231:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 340 7 is_stmt 1               # parallel-rne.mlir:340:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_233
.LBB0_232:                              # %middle.block69
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 31
	zext_int2long r[10:11], r2
	addli r2, r30, -2440
	load.d r[12:13], 0(r2)                  # 8-byte Folded Reload
	.loc	1 348 9 is_stmt 1               # parallel-rne.mlir:348:9
	setlt.ul r2, r[12:13], r[10:11]
	addli.d r[10:11], r[12:13], 1
	beq r2, zero, .LBB0_291
.LBB0_233:                              # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_242 Depth 3
                                        #       Child Loop BB0_236 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	addli r12, r30, -2440
	sll.d r[17:18], r[10:11], r2
	store.d r[10:11], 0(r12)                # 8-byte Folded Spill
	.loc	1 349 11 is_stmt 1              # parallel-rne.mlir:349:11
	bneq r6, r9, .LBB0_240
# %bb.234:                              # %scalar.ph63.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_236
.LBB0_235:                              # %scalar.ph63
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	setlt.ul r13, r[10:11], r[7:8]
	.loc	1 364 13 is_stmt 1              # parallel-rne.mlir:364:13
	add.s r2, r6, r2
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	stores.w r12, 0(r2)
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	beq r13, zero, .LBB0_232
.LBB0_236:                              # %scalar.ph63
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	add.ul r[12:13], r[10:11], r[17:18]
	slli r2, r12, 2
	add.s r12, r9, r2
	loads.w r13, 0(r12)
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	and r14, r13, r27
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	setlt.u r12, r1, r14
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r12, zero, .LBB0_238
# %bb.237:                              # %scalar.ph63
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r14, r5, r14
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r14, zero, .LBB0_235
	j .LBB0_239
.LBB0_238:                              #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r13, r28
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r14, r5, r14
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r14, zero, .LBB0_235
.LBB0_239:                              # %scalar.ph63
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r13, 16
	andi r12, r12, 1
	add.s r12, r13, r12
	add.s r12, r12, r3
	and r12, r12, r4
	j .LBB0_235
.LBB0_240:                              # %vector.body65.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	zext_int2long r[24:25], zero
	j .LBB0_242
.LBB0_241:                              # %vector.body65
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 349 11 is_stmt 1              # parallel-rne.mlir:349:11
	addli r2, r30, -2424
	addli.d r[24:25], r[24:25], 4
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	add.s r10, r6, r10
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	load.d r[12:13], 0(r2)                  # 8-byte Folded Reload
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	stores.w r11, 12(r10)
	stores.w r14, 8(r10)
	stores.w r19, 4(r10)
	stores.w r26, 0(r10)
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	seteq.d r2, r[24:25], r[12:13]
	bneq r2, zero, .LBB0_232
.LBB0_242:                              # %vector.body65
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	add.ul r[10:11], r[24:25], r[17:18]
	slli r10, r10, 2
	add.s r26, r9, r10
	loads.w r12, 12(r26)
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	and r2, r12, r27
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	setlt.u r11, r1, r2
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r11, zero, .LBB0_244
# %bb.243:                              # %vector.body65
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_245
.LBB0_244:                              #   in Loop: Header=BB0_242 Depth=3
	or r11, r12, r28
.LBB0_245:                              # %vector.body65
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r22, 8(r26)
	and r13, r22, r27
	setlt.u r14, r1, r13
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r14, zero, .LBB0_247
# %bb.246:                              # %vector.body65
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r22, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_242 Depth=3
	or r14, r22, r28
.LBB0_248:                              # %vector.body65
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r23, 4(r26)
	and r15, r23, r27
	setlt.u r16, r1, r15
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r16, zero, .LBB0_250
# %bb.249:                              # %vector.body65
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r23, 0
	j .LBB0_251
.LBB0_250:                              #   in Loop: Header=BB0_242 Depth=3
	or r19, r23, r28
.LBB0_251:                              # %vector.body65
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r16, 0(r26)
	and r20, r16, r27
	setlt.u r21, r1, r20
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r21, zero, .LBB0_253
# %bb.252:                              # %vector.body65
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r16, 0
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r20, r5, r20
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	beq r20, zero, .LBB0_254
	j .LBB0_255
.LBB0_253:                              #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r16, r28
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r20, r5, r20
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r20, zero, .LBB0_255
.LBB0_254:                              # %vector.body65
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r16, 16
	andi r20, r20, 1
	add.s r16, r16, r20
	add.s r16, r16, r3
	and r26, r16, r4
.LBB0_255:                              # %vector.body65
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r15, r5, r15
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	beq r15, zero, .LBB0_258
# %bb.256:                              # %vector.body65
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r13, r5, r13
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	beq r13, zero, .LBB0_259
.LBB0_257:                              # %vector.body65
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r2
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r2, zero, .LBB0_241
	j .LBB0_260
.LBB0_258:                              # %vector.body65
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r23, 16
	andi r15, r15, 1
	add.s r15, r23, r15
	add.s r15, r15, r3
	and r19, r15, r4
	setlt.u r13, r5, r13
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r13, zero, .LBB0_257
.LBB0_259:                              # %vector.body65
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r22, 16
	andi r13, r13, 1
	add.s r13, r22, r13
	add.s r13, r13, r3
	and r14, r13, r4
	setlt.u r2, r5, r2
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r2, zero, .LBB0_241
.LBB0_260:                              # %vector.body65
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r3
	and r11, r2, r4
	j .LBB0_241
.LBB0_261:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 24
	.loc	1 311 7 is_stmt 1               # parallel-rne.mlir:311:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_263
.LBB0_262:                              # %middle.block60
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 27
	zext_int2long r[10:11], r2
	addli r2, r30, -2440
	load.d r[12:13], 0(r2)                  # 8-byte Folded Reload
	.loc	1 319 9 is_stmt 1               # parallel-rne.mlir:319:9
	setlt.ul r2, r[12:13], r[10:11]
	addli.d r[10:11], r[12:13], 1
	beq r2, zero, .LBB0_291
.LBB0_263:                              # %.preheader23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_266 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	addli r12, r30, -2440
	sll.d r[17:18], r[10:11], r2
	store.d r[10:11], 0(r12)                # 8-byte Folded Spill
	.loc	1 320 11 is_stmt 1              # parallel-rne.mlir:320:11
	bneq r6, r9, .LBB0_270
# %bb.264:                              # %scalar.ph54.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_266
.LBB0_265:                              # %scalar.ph54
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	setlt.ul r13, r[10:11], r[7:8]
	.loc	1 335 13 is_stmt 1              # parallel-rne.mlir:335:13
	add.s r2, r6, r2
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 335 13                        # parallel-rne.mlir:335:13
	stores.w r12, 0(r2)
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	beq r13, zero, .LBB0_262
.LBB0_266:                              # %scalar.ph54
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	add.ul r[12:13], r[10:11], r[17:18]
	slli r2, r12, 2
	add.s r12, r9, r2
	loads.w r13, 0(r12)
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	and r14, r13, r27
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	setlt.u r12, r1, r14
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r12, zero, .LBB0_268
# %bb.267:                              # %scalar.ph54
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r14, r5, r14
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r14, zero, .LBB0_265
	j .LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r13, r28
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r14, r5, r14
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r14, zero, .LBB0_265
.LBB0_269:                              # %scalar.ph54
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r13, 16
	andi r12, r12, 1
	add.s r12, r13, r12
	add.s r12, r12, r3
	and r12, r12, r4
	j .LBB0_265
.LBB0_270:                              # %vector.body56.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	zext_int2long r[24:25], zero
	j .LBB0_272
.LBB0_271:                              # %vector.body56
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 320 11 is_stmt 1              # parallel-rne.mlir:320:11
	addli r2, r30, -2424
	addli.d r[24:25], r[24:25], 4
	.loc	1 335 13                        # parallel-rne.mlir:335:13
	add.s r10, r6, r10
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	load.d r[12:13], 0(r2)                  # 8-byte Folded Reload
	.loc	1 335 13                        # parallel-rne.mlir:335:13
	stores.w r11, 12(r10)
	stores.w r14, 8(r10)
	stores.w r19, 4(r10)
	stores.w r26, 0(r10)
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	seteq.d r2, r[24:25], r[12:13]
	bneq r2, zero, .LBB0_262
.LBB0_272:                              # %vector.body56
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	add.ul r[10:11], r[24:25], r[17:18]
	slli r10, r10, 2
	add.s r26, r9, r10
	loads.w r12, 12(r26)
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	and r2, r12, r27
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	setlt.u r11, r1, r2
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r11, zero, .LBB0_274
# %bb.273:                              # %vector.body56
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_272 Depth=3
	or r11, r12, r28
.LBB0_275:                              # %vector.body56
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r22, 8(r26)
	and r13, r22, r27
	setlt.u r14, r1, r13
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r14, zero, .LBB0_277
# %bb.276:                              # %vector.body56
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r22, 0
	j .LBB0_278
.LBB0_277:                              #   in Loop: Header=BB0_272 Depth=3
	or r14, r22, r28
.LBB0_278:                              # %vector.body56
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r23, 4(r26)
	and r15, r23, r27
	setlt.u r16, r1, r15
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r16, zero, .LBB0_280
# %bb.279:                              # %vector.body56
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r23, 0
	j .LBB0_281
.LBB0_280:                              #   in Loop: Header=BB0_272 Depth=3
	or r19, r23, r28
.LBB0_281:                              # %vector.body56
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r16, 0(r26)
	and r20, r16, r27
	setlt.u r21, r1, r20
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r21, zero, .LBB0_283
# %bb.282:                              # %vector.body56
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r16, 0
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r20, r5, r20
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	beq r20, zero, .LBB0_284
	j .LBB0_285
.LBB0_283:                              #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r16, r28
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r20, r5, r20
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r20, zero, .LBB0_285
.LBB0_284:                              # %vector.body56
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r16, 16
	andi r20, r20, 1
	add.s r16, r16, r20
	add.s r16, r16, r3
	and r26, r16, r4
.LBB0_285:                              # %vector.body56
                                        #   in Loop: Header=BB0_272 Depth=3
	setlt.u r15, r5, r15
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	beq r15, zero, .LBB0_288
# %bb.286:                              # %vector.body56
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r13, r5, r13
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	beq r13, zero, .LBB0_289
.LBB0_287:                              # %vector.body56
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r2
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r2, zero, .LBB0_271
	j .LBB0_290
.LBB0_288:                              # %vector.body56
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r23, 16
	andi r15, r15, 1
	add.s r15, r23, r15
	add.s r15, r15, r3
	and r19, r15, r4
	setlt.u r13, r5, r13
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r13, zero, .LBB0_287
.LBB0_289:                              # %vector.body56
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r22, 16
	andi r13, r13, 1
	add.s r13, r22, r13
	add.s r13, r13, r3
	and r14, r13, r4
	setlt.u r2, r5, r2
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r2, zero, .LBB0_271
.LBB0_290:                              # %vector.body56
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r3
	and r11, r2, r4
	j .LBB0_271
.LBB0_291:                              # %.sink.split48
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r17
	addli r13, zero, 5
	addli r14, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_292:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 369 7 is_stmt 1               # parallel-rne.mlir:369:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	loadli.w r2,  -2456(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_5
# %bb.293:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, r30, -2464
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	.loc	1 387 7 is_stmt 1               # parallel-rne.mlir:387:7
	bneq r17, zero, .LBB0_6
# %bb.294:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	loadli.w r2,  -2496(r30)                # 4-byte Folded Reload
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	addli r15, r30, -2424
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	loadli.w r11,  -2492(r30)               # 4-byte Folded Reload
	addli r18, zero, 1
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	load.d r[13:14], 0(r15)                 # 8-byte Folded Reload
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	addli r15, r30, -2480
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	zext_int2long r[7:8], r2
	addli r2, zero, 960
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	sext_int2long r[11:12], r11
	zext_int2long r[9:10], r2
	addli r2, zero, 16
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	min.ul r[9:10], r[7:8], r[9:10]
	addli.d r[9:10], r[9:10], 64
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	max.ul r[9:10], r[9:10], r[7:8]
	sub.sl r[7:8], r[9:10], r[7:8]
	addli r9, r30, -2432
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	min.ul r[7:8], r[7:8], r[13:14]
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	load.d r[13:14], 0(r15)                 # 8-byte Folded Reload
	load.d r[19:20], 0(r9)                  # 8-byte Folded Reload
	load.d r[15:16], 16(r30)
	sll.d r[13:14], r[13:14], r2
	addli r2, r30, -2488
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	min.sl r[9:10], r[11:12], r[19:20]
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	add.ul r[13:14], r[15:16], r[13:14]
	load.d r[15:16], 0(r2)                  # 8-byte Folded Reload
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	addli.d r[9:10], r[9:10], 32
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	addli r2, zero, 12
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	max.sl r[9:10], r[9:10], r[11:12]
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	xwait r2, 0
	ori r2, r6, 64
	slli r6, r7, 1
	sll.d r[15:16], r[15:16], r18
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	sub.sl r[9:10], r[9:10], r[11:12]
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	add.ul r[11:12], r[13:14], r[15:16]
	addli r13, zero, 5
	addli r15, zero, 64
	addli r14, zero, 4
	.loc	1 382 13                        # parallel-rne.mlir:382:13
	min.sl r[9:10], r[9:10], r[19:20]
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	lock zero, r13
	dma_cfg r18, r18, zero, 0
	dma_cfg zero, r18, zero, 1
	dma_cfg r12, zero, zero, 2
	dma_cfg r11, r2, r15, 3
	addli r2, r7, 31
	addli r7, zero, 128
	srli r2, r2, 5
	dma_cfg r15, r7, r2, 4
	andi r2, r6, 62
	addli r6, zero, 256
	addli r7, zero, 2048
	dma_cfg r7, r6, r9, 5
	addli r6, r30, -2464
	load.d r[8:9], 0(r6)                    # 8-byte Folded Reload
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	addli r2, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r13
	xsignal r2, 0
	j .LBB0_6
.LBB0_295:                              # %._crit_edge
	.loc	1 389 5                         # parallel-rne.mlir:389:5
	xsignal zero, 0
	bneq r17, zero, .LBB0_297
# %bb.296:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 389 5                         # parallel-rne.mlir:389:5
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
	.loc	1 390 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:390:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-n21gi0f6" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
