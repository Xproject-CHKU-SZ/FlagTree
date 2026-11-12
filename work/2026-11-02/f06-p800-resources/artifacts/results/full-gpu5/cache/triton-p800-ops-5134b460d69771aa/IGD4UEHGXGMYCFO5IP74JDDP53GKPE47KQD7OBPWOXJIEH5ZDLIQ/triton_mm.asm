	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/l3" "cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py"
	.loc	1 22 0                          # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2944
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:73:26
	core_id r2
	addli r30, sp, 2880
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:0:26
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
	xsignal r3, 0
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -516(r30)
	storeli.w zero, -1540(r30)
	storeli.w zero, -2052(r30)
	storeli.w zero, -2824(r30)
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
	ble.s r3, r1, .LBB0_37
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	addli r5, r30, -2856
	loadli.w r28,  -516(r30)
	loadli.w r26,  -1540(r30)
	loadli.w r8,  -2052(r30)
	loadli.w r27,  -2824(r30)
	addli r10, zero, 1
	addli r14, zero, 5
	addli r13, zero, 4
	addli r15, zero, 192
	addli r16, zero, 255
	addli r17, zero, 128
	lui r18, 264
	addli r19, zero, 7
	addli r20, zero, 6
	addli r22, zero, 3
	addli r23, zero, 64
	addli r24, zero, 32
	addli r21, zero, 127
	lui r25, 10
	addli r11, zero, 2
	addli r12, zero, 0
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	sext_int2long r[5:6], r1
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:73:26
	addli r1, zero, 10
	.loc	1 101 67 is_stmt 1              # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:101:67
	addli r26, r15, 1
	addli r27, r3, 1
	addli r28, r5, 1
	addli r14, zero, 5
	addli r15, zero, 192
	addli r21, zero, 127
	lui r25, 10
	addli r11, zero, 2
	.loc	1 73 26                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:73:26
	xsignal r1, 0
	loadli.w r12,  -2836(r30)               # 4-byte Folded Reload
.LBB0_6:                                # %.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:0:26
	addli r1, r30, -2832
.LBB0_7:                                # %.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2856
	addli.d r[5:6], r[5:6], 1
	addli r12, r12, 1
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	setlt.sl r1, r[5:6], r[3:4]
	beq r1, zero, .LBB0_37
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	loadli.w r1,  32(r30)
	addli r3, r30, -2832
	.loc	1 54 50 is_stmt 1               # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:54:50
	addli r9, zero, 8
	store.d r[5:6], 0(r3)                   # 8-byte Folded Spill
	loadli.w r3,  28(r30)
	div.s r1, r5, r1
	div.s r4, r1, r3
	.loc	1 53 22                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:53:22
	addli r1, zero, 256
	div.s r5, r4, r1
	.loc	1 54 41                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:54:41
	slli r1, r5, 3
	.loc	1 54 30 is_stmt 0               # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:54:30
	sub.s r3, r10, r1
	.loc	1 54 50                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:54:50
	min.s r9, r3, r9
	.loc	1 55 40 is_stmt 1               # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:55:40
	mod.s r3, r4, r9
	.loc	1 55 34 is_stmt 0               # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:55:34
	add.s r3, r1, r3
	.loc	1 73 26 is_stmt 1               # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:73:26
	addli r1, r30, -2848
	.loc	1 95 15                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:95:15
	zext_int2long r[6:7], r3
	.loc	1 73 26                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:73:26
	store.d r[6:7], 0(r1)                   # 8-byte Folded Spill
	bneq r2, r13, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:0:26
	beq r2, r10, .LBB0_29
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r2, r11, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 1
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:81:20
	mod.s r3, r8, r21
	.loc	1 89 25                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:89:25
	mod.s r4, r27, r15
	xwait r11, 0
	xwait r14, 0
	lock zero, zero
	addli r27, r27, 1
	.loc	1 81 20                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:81:20
	addli r8, r8, 1
	.loc	1 89 25                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:89:25
	ds_cfg r22, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r23, zero, 13
	.loc	1 81 20                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:81:20
	slli r3, r3, 13
	.loc	1 89 25                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:89:25
	slli r4, r4, 12
	.loc	1 81 20                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:81:20
	add.s r3, r3, r25
	.loc	1 89 25                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:89:25
	shuffle_batch r4, r3, r24, 1
	.loc	1 73 26                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:73:26
	andi r3, r1, 1
	addli r1, zero, 0
	.loc	1 89 25                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:89:25
	unlock zero
	xsignal r22, 0
	xsignal r13, 0
	bneq r3, zero, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:73:26
	addli r26, r26, 2
	addli r28, r28, 2
	j .LBB0_6
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:0:26
	slli r5, r5, 8
	storeli.w r12, -2836(r30)               # 4-byte Folded Spill
	slli r3, r3, 6
	addli r25, zero, 1
	addli r1, zero, 0
	addli r21, zero, 0
	sub.s r4, r4, r5
	mod.s r5, r12, r14
	storeli.w r3, -2864(r30)                # 4-byte Folded Spill
	div.s r4, r4, r9
	zext_int2long r[11:12], r4
	slli r3, r4, 5
	slli r4, r5, 13
	sll.d r[6:7], r[11:12], r14
	.loc	1 73 26                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:73:26
	load.d r[14:15], 8(r30)
	storeli.w r3, -2872(r30)                # 4-byte Folded Spill
	addli r3, r30, -2880
	sll.d r[11:12], r[6:7], r25
	store.d r[6:7], 0(r3)                   # 8-byte Folded Spill
	add.ul r[11:12], r[14:15], r[11:12]
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25 is_stmt 1               # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:89:25
	addli r1, zero, 9
	xwait r20, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 8
	ds_cfg r22, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r14, r9, r24, 2
	unlock zero
	xsignal r19, 0
	xsignal r1, 0
	.loc	1 73 26                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:73:26
	andi r1, r25, 1
	beq r1, zero, .LBB0_28
.LBB0_17:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:89:25
	addli r21, r21, 1
	lui r1, 16
	addli r25, zero, 0
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r28, r21
	add.s r15, r26, r21
	add.s r3, r27, r21
	.loc	1 86 20                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:86:20
	mod.s r9, r5, r17
	.loc	1 89 25                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:89:25
	mod.s r14, r15, r16
	.loc	1 86 20                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:86:20
	slli r9, r9, 12
	.loc	1 89 25                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:89:25
	slli r14, r14, 11
	.loc	1 86 20                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:86:20
	add.s r9, r9, r18
	beq r2, r19, .LBB0_16
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:0:20
	bneq r2, r20, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 20                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:86:20
	zext_int2long r[1:2], r1
	xwait r19, 0
	lock zero, r13
	dma_cfg r10, r10, zero, 0
	add.ul r[1:2], r[11:12], r[1:2]
	dma_cfg zero, r2, zero, 2
	dma_cfg r9, r1, r23, 3
	addli r1, zero, 2048
	.loc	1 73 26 is_stmt 1               # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:73:26
	core_id r2
	.loc	1 86 20                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:86:20
	dma_cfg r17, r1, r24, 4
	dma_run zero
	unlock r13
	xsignal r20, 0
	.loc	1 73 26                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:73:26
	andi r1, r25, 1
	bneq r1, zero, .LBB0_17
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:0:26
	andi r1, r25, 1
	.loc	1 89 25 is_stmt 1               # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:89:25
	bneq r2, r13, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 25 is_stmt 0                # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:0:25
	addli r2, zero, 192
	.loc	1 89 25                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:89:25
	addli r9, zero, 8
	xwait r13, 0
	mod.s r2, r3, r2
	xwait r9, 0
	lock zero, r10
	mm_cfg r24, r24, r23, 0
	mm_cfg r10, r10, r10, 2
	slli r9, r2, 12
	beq r21, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r4, r9, r14, 5
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:73:26
	bneq r1, zero, .LBB0_17
	j .LBB0_32
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:89:25
	mm r4, r9, r14, 5
.LBB0_26:                               # %.thread6.thread89
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r2, zero, 5
	unlock r10
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 73 26                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:73:26
	core_id r2
	bneq r1, zero, .LBB0_17
# %bb.27:                               # %.split17.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:86:20
	addli r8, r8, 2
	j .LBB0_5
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r8, r8, 2
	.loc	1 73 26                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:73:26
	beq r2, r13, .LBB0_5
	j .LBB0_33
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:0:26
	addli r5, r30, -2848
	addli r1, zero, 13
	storeli.w r12, -2836(r30)               # 4-byte Folded Spill
	load.d r[11:12], 0(r30)
	addli r6, zero, 2
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	addli r5, zero, 0
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 1
	add.ul r[3:4], r[11:12], r[3:4]
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:81:20
	mod.s r9, r8, r21
	.loc	1 86 25                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:86:25
	zext_int2long r[11:12], r5
	.loc	1 81 20                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:81:20
	xwait r22, 0
	lock zero, r13
	addli r8, r8, 1
	dma_cfg r10, r10, zero, 0
	sll.d r[11:12], r[11:12], r10
	add.ul r[11:12], r[3:4], r[11:12]
	slli r5, r9, 13
	dma_cfg zero, r12, zero, 2
	.loc	1 73 26                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:73:26
	andi r9, r1, 1
	addli r1, zero, 0
	.loc	1 81 20                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:81:20
	add.s r5, r5, r25
	dma_cfg r5, r11, r23, 3
	addli r5, zero, 32
	dma_cfg r17, r17, r23, 4
	dma_run zero
	unlock r13
	xsignal r6, 0
	.loc	1 73 26                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:73:26
	bneq r9, zero, .LBB0_30
# %bb.31:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:0:26
	addli r1, r30, -2832
	loadli.w r12,  -2836(r30)               # 4-byte Folded Reload
	.loc	1 73 26                         # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:73:26
	addli r27, r27, 2
	addli r26, r26, 2
	addli r28, r28, 2
	addli r11, zero, 2
	j .LBB0_7
.LBB0_32:                               # %.split17.thread88
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:86:20
	addli r8, r8, 2
.LBB0_33:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:0:20
	loadli.w r12,  -2836(r30)               # 4-byte Folded Reload
	.loc	1 101 67 is_stmt 1              # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:101:67
	addli r27, r3, 1
	addli r26, r15, 1
	addli r28, r5, 1
	addli r21, zero, 127
	lui r25, 10
	addli r11, zero, 2
	beq r2, zero, .LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:0:67
	addli r14, zero, 5
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:101:67
	loadli.w r1,  -2872(r30)                # 4-byte Folded Reload
	addli r3, zero, 992
	zext_int2long r[5:6], zero
	zext_int2long r[11:12], r3
	loadli.w r3,  -2864(r30)                # 4-byte Folded Reload
	zext_int2long r[1:2], r1
	min.ul r[11:12], r[1:2], r[11:12]
	sext_int2long r[14:15], r3
	addli r3, r30, -2864
	addli.d r[11:12], r[11:12], 32
	store.d r[5:6], 0(r3)                   # 8-byte Folded Spill
	load.d r[5:6], 0(r3)                    # 8-byte Folded Reload
	max.ul r[11:12], r[11:12], r[1:2]
	sub.sl r[1:2], r[11:12], r[1:2]
	min.sl r[5:6], r[14:15], r[5:6]
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli.d r[11:12], r[5:6], 64
	zext_int2long r[1:2], r24
	load.d r[5:6], 0(r3)                    # 8-byte Folded Reload
	max.sl r[11:12], r[11:12], r[14:15]
	min.ul r[1:2], r[5:6], r[1:2]
	addli r5, r30, -2848
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	sub.sl r[1:2], r[11:12], r[14:15]
	addli r3, r30, -2872
	zext_int2long r[11:12], r23
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	load.d r[2:3], 0(r5)                    # 8-byte Folded Reload
	addli r1, zero, 17
	sll.d r[14:15], r[2:3], r1
	load.d r[1:2], 16(r30)
	addli r3, r30, -2880
	add.ul r[14:15], r[1:2], r[14:15]
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	addli r3, r30, -2872
	load.d r[5:6], 0(r3)                    # 8-byte Folded Reload
	addli r3, zero, 10
	sll.d r[1:2], r[1:2], r10
	xwait r3, 0
	addli r3, r30, -2864
	add.ul r[1:2], r[14:15], r[1:2]
	addli r14, zero, 5
	min.sl r[11:12], r[5:6], r[11:12]
	lock zero, r14
	dma_cfg r10, zero, zero, 0
	dma_cfg zero, r10, zero, 1
	load.d r[5:6], 0(r3)                    # 8-byte Folded Reload
	dma_cfg r2, zero, zero, 2
	slli r3, r5, 2
	dma_cfg r1, r4, r3, 3
	addli r1, zero, 2048
	.loc	1 73 26 is_stmt 1               # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:73:26
	core_id r2
	.loc	1 101 67                        # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:101:67
	dma_cfg r1, r17, r11, 4
	addli r11, zero, 2
	addli r1, zero, 11
	loadli.w r12,  -2836(r30)               # 4-byte Folded Reload
	dma_run zero
	unlock r14
	xsignal r1, 0
.LBB0_36:                               # %.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:0:67
	addli r15, zero, 192
	j .LBB0_6
.LBB0_37:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_39
# %bb.38:
	.loc	1 0 0 is_stmt 0                 # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:22:0
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
.LBB0_39:
	.loc	1 22 0 epilogue_begin           # cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py:22:0
	addli sp, sp, 2880
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
	.long	2944                            # 0xb80
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
.asciz	"cl3yxhlp2x7u5f4nafypyy6nlim2rhzpkoc64wtcysy7yfne3inr.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/l3" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
