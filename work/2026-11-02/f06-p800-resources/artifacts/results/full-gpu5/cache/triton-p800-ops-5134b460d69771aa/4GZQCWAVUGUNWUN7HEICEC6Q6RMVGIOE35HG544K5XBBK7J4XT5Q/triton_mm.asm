	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/k3" "ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py"
	.loc	1 22 0                          # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2832
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:73:26
	core_id r17
	addli r30, sp, 2768
	xsignal_mode_cfg r1
	beq r17, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:0:26
	lui r1, 1048575
	ori r1, r1, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	addli r3, zero, 2
	uni_sram_cfg r1, r1
	lui r4, 1048575
	lock zero, r3
	ew_cfg r1, zero, zero, 16
	ori r1, r4, 4095
	unlock r3
	addli r3, zero, 11
	csr_set csr3, r1
	sync_group
	addli r1, zero, 5
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 3
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -516(r30)
	storeli.w zero, -1160(r30)
	storeli.w zero, -1676(r30)
	storeli.w zero, -2700(r30)
	mul.s r1, r3, r1
	addli r3, r5, 0
	fmac.s r3, r1, r4
	mul.s r4, r1, r4
	addli r3, r3, -1
	div.s r3, r3, r5
	load_param_i r5, 0
	mul.s r1, r3, r5
	fmac.s r3, r3, r5
	min.s r3, r3, r4
	ble.s r3, r1, .LBB0_31
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	addli r2, r30, -2768
	loadli.w r10,  -516(r30)
	loadli.w r11,  -1160(r30)
	loadli.w r12,  -1676(r30)
	loadli.w r13,  -2700(r30)
	sext_int2long r[6:7], r1
	addli r15, zero, 1
	addli r18, zero, 2
	addli r19, zero, 4
	addli r22, zero, 255
	addli r23, zero, 128
	lui r24, 8
	addli r26, zero, 3
	addli r27, zero, 64
	addli r28, zero, 32
	addli r9, zero, 6
	addli r16, zero, 0
	store.d r[3:4], 0(r2)                   # 8-byte Folded Spill
	addli r2, zero, 7
	addli r3, zero, 5
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:73:26
	addli r1, zero, 10
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0                           # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -2720
	loadli.w r16,  -2724(r30)               # 4-byte Folded Reload
	load.d r[6:7], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2768
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	setlt.sl r1, r[6:7], r[4:5]
	beq r1, zero, .LBB0_31
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 73 26                         # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:73:26
	bneq r17, r19, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26                          # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:0:26
	addli r1, r30, -2720
	loadli.w r5,  28(r30)
	addli r8, zero, 8
	addli r4, zero, 0
	store.d r[6:7], 0(r1)                   # 8-byte Folded Spill
	loadli.w r1,  32(r30)
	div.s r1, r6, r1
	mod.s r7, r16, r18
	addli r16, r16, 1
	storeli.w r16, -2724(r30)               # 4-byte Folded Spill
	addli r16, zero, 1
	div.s r1, r1, r5
	addli r5, zero, 16
	slli r7, r7, 14
	div.s r5, r1, r5
	slli r6, r5, 3
	slli r5, r5, 4
	sub.s r14, r15, r6
	sub.s r5, r1, r5
	min.s r14, r14, r8
	mod.s r1, r1, r14
	div.s r5, r5, r14
	add.s r1, r6, r1
	slli r6, r5, 7
	storeli.w r6, -2760(r30)                # 4-byte Folded Spill
	zext_int2long r[5:6], r5
	slli r8, r1, 5
	zext_int2long r[20:21], r1
	addli r1, r30, -2736
	sll.d r[5:6], r[5:6], r2
	addli r2, r30, -2744
	storeli.w r8, -2752(r30)                # 4-byte Folded Spill
	store.d r[5:6], 0(r1)                   # 8-byte Folded Spill
	addli r1, zero, 12
	store.d r[20:21], 0(r2)                 # 8-byte Folded Spill
	.loc	1 73 26                         # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:73:26
	sll.d r[5:6], r[5:6], r16
	sll.d r[20:21], r[20:21], r1
	load.d r[1:2], 8(r30)
	add.ul r[1:2], r[1:2], r[5:6]
	addli r5, r30, -2712
	store.d r[1:2], 0(r5)                   # 8-byte Folded Spill
	load.d r[5:6], 0(r30)
	addli r2, zero, 7
	addli r1, zero, 0
	add.ul r[20:21], r[5:6], r[20:21]
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25 is_stmt 1               # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:89:25
	xwait r18, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r26, zero, 0
	ds_cfg r27, zero, 1
	ds_cfg r28, zero, 14
	ds_cfg r28, zero, 13
	shuffle_batch r14, r25, r28, 1
	unlock zero
	xsignal r26, 0
	xsignal r19, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r11, r11, 1
	.loc	1 86 20                         # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:86:20
	addli r10, r10, 1
.LBB0_13:                               # %.thread6
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26                         # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:73:26
	beq r16, zero, .LBB0_28
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:89:25
	addli r1, r1, 1
	addli r4, zero, 1
	addli r16, zero, 0
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 81 20                         # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:81:20
	mod.s r5, r12, r23
	.loc	1 89 25                         # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:89:25
	mod.s r6, r13, r22
	addli r13, r13, 1
	.loc	1 81 20                         # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:81:20
	addli r12, r12, 1
	andi r16, r16, 1
	slli r5, r5, 12
	.loc	1 89 25                         # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:89:25
	slli r14, r6, 11
	.loc	1 81 20                         # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:81:20
	add.s r25, r5, r24
	beq r17, r18, .LBB0_11
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 0 is_stmt 0                 # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:0:0
	zext_int2long r[5:6], r4
	.loc	1 81 20                         # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:81:20
	bneq r17, r15, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	sll.d r[4:5], r[5:6], r9
	xwait r26, 0
	lock zero, r19
	dma_cfg r15, r15, zero, 0
	add.ul r[4:5], r[20:21], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r25, r4, r27, 3
	dma_cfg r23, r23, r28, 4
	dma_run zero
	unlock r19
	xsignal r18, 0
	.loc	1 89 25 is_stmt 1               # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:89:25
	j .LBB0_12
.LBB0_18:                               #   in Loop: Header=BB0_15 Depth=2
	addli r8, zero, 160
	.loc	1 86 20                         # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:86:20
	mod.s r4, r10, r23
	addli r10, r10, 1
	.loc	1 89 25                         # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:89:25
	mod.s r25, r11, r8
	addli r11, r11, 1
	.loc	1 86 20                         # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:86:20
	slli r8, r4, 13
	.loc	1 89 25                         # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:89:25
	slli r4, r25, 13
	.loc	1 86 20                         # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:86:20
	lui r25, 136
	add.s r25, r8, r25
	beq r17, r2, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	bneq r17, r9, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	addli r4, zero, 14
	xwait r2, 0
	sll.d r[4:5], r[5:6], r4
	addli r6, r30, -2712
	load.d r[8:9], 0(r6)                    # 8-byte Folded Reload
	lock zero, r19
	addli r6, zero, 256
	dma_cfg r15, r15, zero, 0
	add.ul r[4:5], r[8:9], r[4:5]
	addli r9, zero, 6
	dma_cfg zero, r5, zero, 2
	dma_cfg r25, r4, r6, 3
	addli r4, zero, 512
	dma_cfg r6, r4, r28, 4
	dma_run zero
	unlock r19
	xsignal r9, 0
	.loc	1 89 25                         # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:89:25
	j .LBB0_13
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	addli r5, zero, 9
	xwait r9, 0
	xwait r5, 0
	lock zero, zero
	ds_cfg r26, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r28, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r4, r25, r28, 2
	addli r4, zero, 8
	unlock zero
	xsignal r2, 0
	xsignal r4, 0
	j .LBB0_13
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	bneq r17, r19, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r5, zero, 8
	xwait r19, 0
	addli r25, zero, 1
	addli r6, zero, 0
	xwait r5, 0
	addli r5, zero, 1
	beq r1, zero, .LBB0_25
.LBB0_24:                               # %.preheader8
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r8, r6, 12
	slli r6, r6, 8
	lock zero, r25
	mm_cfg r27, r28, r28, 0
	or r8, r8, r4
	or r6, r6, r7
	mm_cfg r25, r19, r25, 2
	mm_acc r6, r14, r8, 5
	andi r8, r5, 1
	addli r6, zero, 1
	addli r5, zero, 0
	unlock r25
	bneq r8, zero, .LBB0_24
	j .LBB0_26
.LBB0_25:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r8, r6, 12
	slli r6, r6, 8
	lock zero, r25
	mm_cfg r27, r28, r28, 0
	or r8, r8, r4
	or r6, r6, r7
	mm_cfg r25, r19, r25, 2
	mm r6, r14, r8, 5
	andi r8, r5, 1
	addli r6, zero, 1
	addli r5, zero, 0
	unlock r25
	bneq r8, zero, .LBB0_25
.LBB0_26:                               # %.thread6.thread40
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r4, zero, 9
	xsignal r3, 0
	xsignal r4, 0
	bneq r16, zero, .LBB0_14
	j .LBB0_5
.LBB0_27:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 25 is_stmt 0                # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:0:25
	bneq r16, zero, .LBB0_14
	j .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26 is_stmt 1               # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:73:26
	beq r17, r19, .LBB0_5
.LBB0_29:                               # %.thread39
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:101:67
	bneq r17, zero, .LBB0_7
# %bb.30:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -2760(r30)                # 4-byte Folded Reload
	zext_int2long r[3:4], r23
	zext_int2long r[20:21], zero
	addli r6, zero, 5
	zext_int2long r[8:9], r1
	addli r1, r30, -2760
	store.d r[3:4], 0(r1)                   # 8-byte Folded Spill
	min.ul r[3:4], r[8:9], r[3:4]
	addli r1, r30, -2712
	store.d r[3:4], 0(r1)                   # 8-byte Folded Spill
	loadli.w r1,  -2752(r30)                # 4-byte Folded Reload
	sext_int2long r[4:5], r1
	addli r1, r30, -2752
	store.d r[20:21], 0(r1)                 # 8-byte Folded Spill
	addli r1, r30, -2712
	load.d r[20:21], 0(r1)                  # 8-byte Folded Reload
	addli.d r[20:21], r[20:21], 128
	store.d r[20:21], 0(r1)                 # 8-byte Folded Spill
	addli r1, r30, -2752
	load.d r[20:21], 0(r1)                  # 8-byte Folded Reload
	min.sl r[20:21], r[4:5], r[20:21]
	store.d r[20:21], 0(r1)                 # 8-byte Folded Spill
	addli r1, r30, -2712
	load.d r[20:21], 0(r1)                  # 8-byte Folded Reload
	max.ul r[20:21], r[20:21], r[8:9]
	store.d r[20:21], 0(r1)                 # 8-byte Folded Spill
	addli r1, r30, -2752
	load.d r[20:21], 0(r1)                  # 8-byte Folded Reload
	addli.d r[20:21], r[20:21], 32
	store.d r[20:21], 0(r1)                 # 8-byte Folded Spill
	addli r1, r30, -2712
	load.d r[20:21], 0(r1)                  # 8-byte Folded Reload
	addli r1, r30, -2752
	sub.sl r[8:9], r[20:21], r[8:9]
	load.d r[20:21], 0(r1)                  # 8-byte Folded Reload
	max.sl r[20:21], r[20:21], r[4:5]
	store.d r[20:21], 0(r1)                 # 8-byte Folded Spill
	addli r1, r30, -2760
	load.d r[20:21], 0(r1)                  # 8-byte Folded Reload
	addli r1, r30, -2712
	min.ul r[8:9], r[8:9], r[20:21]
	store.d r[8:9], 0(r1)                   # 8-byte Folded Spill
	addli r1, r30, -2752
	load.d r[8:9], 0(r1)                    # 8-byte Folded Reload
	sub.sl r[3:4], r[8:9], r[4:5]
	store.d r[3:4], 0(r1)                   # 8-byte Folded Spill
	addli r3, r30, -2744
	addli r1, zero, 14
	load.d r[4:5], 0(r3)                    # 8-byte Folded Reload
	sll.d r[20:21], r[4:5], r1
	zext_int2long r[3:4], r28
	addli r1, r30, -2744
	store.d r[3:4], 0(r1)                   # 8-byte Folded Spill
	load.d r[4:5], 16(r30)
	addli r1, r30, -2760
	add.ul r[3:4], r[4:5], r[20:21]
	store.d r[3:4], 0(r1)                   # 8-byte Folded Spill
	addli r1, r30, -2736
	addli r3, zero, 5
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2752
	load.d r[8:9], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2744
	sll.d r[4:5], r[4:5], r15
	load.d r[20:21], 0(r1)                  # 8-byte Folded Reload
	addli r1, r30, -2760
	min.sl r[8:9], r[8:9], r[20:21]
	load.d r[20:21], 0(r1)                  # 8-byte Folded Reload
	addli r1, zero, 10
	xwait r1, 0
	lock zero, r6
	addli r1, r30, -2712
	dma_cfg r15, zero, zero, 0
	add.ul r[4:5], r[20:21], r[4:5]
	dma_cfg zero, r15, zero, 1
	load.d r[20:21], 0(r1)                  # 8-byte Folded Reload
	dma_cfg r5, zero, zero, 2
	slli r1, r20, 2
	dma_cfg r4, r7, r1, 3
	addli r1, zero, 512
	dma_cfg r1, r1, r8, 4
	addli r9, zero, 6
	addli r1, zero, 11
	dma_run zero
	unlock r6
	j .LBB0_6
.LBB0_31:                               # %._crit_edge
	.loc	1 22 0                          # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:22:0
	xsignal zero, 0
	bneq r17, zero, .LBB0_33
# %bb.32:
	.loc	1 0 0 is_stmt 0                 # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:22:0
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
.LBB0_33:
	.loc	1 22 0 epilogue_begin           # ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py:22:0
	addli sp, sp, 2768
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
	.long	2832                            # 0xb10
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
.asciz	"ck32c2uhe2uhf5ee43azdnklthve2c2zgwbjw4aeiz26rka4kqgy.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/k3" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
