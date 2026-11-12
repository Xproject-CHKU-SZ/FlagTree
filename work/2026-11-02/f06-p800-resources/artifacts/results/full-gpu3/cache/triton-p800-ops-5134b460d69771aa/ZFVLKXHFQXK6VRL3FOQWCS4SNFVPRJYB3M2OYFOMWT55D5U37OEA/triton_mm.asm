	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/aw" "cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py"
	.loc	1 22 0                          # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4216
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:73:26
	core_id r11
	addli r30, sp, 4152
	xsignal_mode_cfg r1
	beq r11, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -1024(r30)
	storeli.w zero, -2048(r30)
	storeli.w zero, -3072(r30)
	storeli.w zero, -4096(r30)
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
	sext_int2long r[2:3], r3
	addli r4, r30, -4120
	sext_int2long r[14:15], r1
	lui r1, 129
	loadli.w r5,  -1024(r30)
	loadli.w r28,  -2048(r30)
	loadli.w r12,  -3072(r30)
	addli r13, zero, 16
	addli r16, zero, 6
	addli r17, zero, 2
	addli r18, zero, 4
	addli r20, zero, 255
	addli r22, zero, 7
	addli r24, zero, 64
	addli r23, zero, 5
	addli r27, zero, 1023
	addli r25, zero, 3
	addli r26, zero, 32
	addli r19, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	loadli.w r3,  -4096(r30)
	addli r2, zero, 1
	ori r21, r1, 2048
	addli r4, zero, 256
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67 is_stmt 1              # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:101:67
	addli r3, r1, 1
	.loc	1 73 26                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:73:26
	addli r1, zero, 10
	.loc	1 101 67                        # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:101:67
	addli r28, r8, 1
	addli r5, r7, 1
	addli r23, zero, 5
	addli r27, zero, 1023
	.loc	1 73 26                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:73:26
	xsignal r1, 0
	addli r1, r30, -4104
.LBB0_6:                                # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:0:26
	load.d r[14:15], 0(r1)                  # 8-byte Folded Reload
	addli r25, zero, 3
	addli r26, zero, 32
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -4120
	addli.d r[14:15], r[14:15], 1
	addli r19, r19, 1
	load.d r[6:7], 0(r1)                    # 8-byte Folded Reload
	setlt.sl r1, r[14:15], r[6:7]
	beq r1, zero, .LBB0_37
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	loadli.w r1,  32(r30)
	loadli.w r6,  28(r30)
	.loc	1 54 50 is_stmt 1               # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:54:50
	addli r9, zero, 8
	.loc	1 73 26                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:73:26
	addli zero, r30, -4112
	div.s r1, r14, r1
	div.s r6, r1, r6
	.loc	1 53 22                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:53:22
	div.s r7, r6, r13
	.loc	1 54 41                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:54:41
	slli r1, r7, 3
	.loc	1 54 30 is_stmt 0               # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:54:30
	sub.s r8, r2, r1
	.loc	1 54 50                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:54:50
	min.s r8, r8, r9
	.loc	1 55 40 is_stmt 1               # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:55:40
	mod.s r9, r6, r8
	.loc	1 55 34 is_stmt 0               # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:55:34
	add.s r1, r1, r9
	.loc	1 95 15 is_stmt 1               # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:95:15
	zext_int2long r[9:10], r1
	.loc	1 73 26                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:73:26
	store.d r[9:10], 0(zero)                # 8-byte Folded Spill
	xor zero, zero, zero
	bneq r11, r18, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r9, zero, 11
	xwait r9, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:0:26
	beq r11, r2, .LBB0_29
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r11, r17, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 0
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:89:25
	add.s r6, r12, r1
	add.s r7, r3, r1
	xwait r17, 0
	xwait r23, 0
	lock zero, zero
	.loc	1 73 26                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:89:25
	ds_cfg r17, zero, 0
	.loc	1 81 20                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:81:20
	mod.s r6, r6, r20
	.loc	1 89 25                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:89:25
	mod.s r7, r7, r20
	ds_cfg r26, zero, 1
	ds_cfg r13, zero, 14
	ds_cfg r13, zero, 13
	.loc	1 81 20                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:81:20
	slli r6, r6, 11
	.loc	1 89 25                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:89:25
	slli r7, r7, 10
	.loc	1 81 20                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:81:20
	addli r6, r6, 8192
	.loc	1 89 25                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:89:25
	shuffle_batch r7, r6, r13, 1
	unlock zero
	xsignal r25, 0
	xsignal r18, 0
	bneq r1, r18, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:73:26
	addli r28, r28, 4
	addli r5, r5, 4
	.loc	1 89 25                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:89:25
	add.s r3, r3, r1
	add.s r12, r12, r1
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:0:25
	slli r7, r7, 4
	slli r1, r1, 4
	addli r9, r30, -4104
	addli r23, zero, 0
	sub.s r6, r6, r7
	mod.s r7, r19, r17
	storeli.w r1, -4136(r30)                # 4-byte Folded Spill
	store.d r[14:15], 0(r9)                 # 8-byte Folded Spill
	addli r9, zero, 0
	div.s r6, r6, r8
	zext_int2long r[25:26], r6
	slli r1, r6, 6
	slli r6, r7, 12
	.loc	1 73 26 is_stmt 1               # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:73:26
	load.d r[7:8], 8(r30)
	sll.d r[25:26], r[25:26], r16
	storeli.w r1, -4144(r30)                # 4-byte Folded Spill
	addli r1, r30, -4128
	sll.d r[14:15], r[25:26], r17
	add.ul r[26:27], r[7:8], r[14:15]
	store.d r[14:15], 0(r1)                 # 8-byte Folded Spill
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:89:25
	addli r10, zero, 9
	xwait r16, 0
	xwait r10, 0
	lock zero, zero
	addli r10, zero, 8
	ds_cfg r17, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r13, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r25, r15, r13, 2
	unlock zero
	xsignal r22, 0
	xsignal r10, 0
	.loc	1 73 26                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:73:26
	addli r9, r9, 1
	beq r9, r18, .LBB0_28
.LBB0_17:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:89:25
	addli r23, r23, 1
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r7, r5, r23
	add.s r8, r28, r23
	add.s r1, r3, r23
	.loc	1 86 20                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:86:20
	mod.s r14, r7, r20
	.loc	1 89 25                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:89:25
	mod.s r15, r8, r20
	.loc	1 86 20                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:86:20
	slli r14, r14, 12
	.loc	1 89 25                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:89:25
	slli r25, r15, 12
	.loc	1 86 20                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:86:20
	add.s r15, r14, r21
	beq r11, r22, .LBB0_16
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:0:20
	bneq r11, r16, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:86:25
	zext_int2long r[10:11], r9
	.loc	1 86 20                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:86:20
	addli r14, zero, 13
	xwait r22, 0
	lock zero, r18
	dma_cfg zero, zero, zero, 0
	sll.d r[10:11], r[10:11], r14
	add.ul r[10:11], r[26:27], r[10:11]
	dma_cfg zero, r11, zero, 2
	dma_cfg r15, r10, r4, 3
	addli r10, zero, 512
	.loc	1 73 26 is_stmt 1               # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:73:26
	core_id r11
	.loc	1 86 20                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:86:20
	dma_cfg r4, r10, r13, 4
	dma_run zero
	unlock r18
	xsignal r16, 0
	.loc	1 73 26                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:73:26
	addli r9, r9, 1
	bneq r9, r18, .LBB0_17
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:89:25
	bneq r11, r18, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:0:0
	mod.s r10, r1, r20
	.loc	1 89 25                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:89:25
	addli r14, zero, 8
	xwait r18, 0
	xwait r14, 0
	lock zero, r2
	mm_cfg r24, r13, r13, 0
	mm_cfg r2, r17, r2, 2
	.loc	1 0 0                           # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:0:0
	slli r15, r10, 10
	.loc	1 89 25                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:89:25
	beq r23, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r6, r15, r25, 8
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:73:26
	addli r9, r9, 1
	bneq r9, r18, .LBB0_17
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:89:25
	mm r6, r15, r25, 8
.LBB0_26:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r10, zero, 5
	unlock r2
	.loc	1 73 26                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:73:26
	addli r9, r9, 1
	.loc	1 89 25                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:89:25
	xsignal r10, 0
	addli r10, zero, 9
	xsignal r10, 0
	.loc	1 73 26                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:73:26
	bneq r9, r18, .LBB0_17
# %bb.27:                               # %.split17.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:86:20
	addli r12, r12, 4
	j .LBB0_5
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r12, r12, 4
	.loc	1 73 26                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:73:26
	beq r11, r18, .LBB0_5
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:0:26
	addli r8, r30, -4112
	addli r1, r30, -4104
	addli r10, zero, 3
	load.d r[6:7], 0(r8)                    # 8-byte Folded Reload
	store.d r[14:15], 0(r1)                 # 8-byte Folded Spill
	addli r1, zero, 10
	sll.d r[6:7], r[6:7], r1
	addli r1, zero, 0
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	add.s r14, r12, r1
	.loc	1 81 25 is_stmt 1               # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:81:25
	srl.d r[25:26], r[25:26], r16
	.loc	1 81 20 is_stmt 0               # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:81:20
	sll.d r[8:9], r[8:9], r17
	xwait r10, 0
	lock zero, r18
	.loc	1 73 26 is_stmt 1               # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:73:26
	addli r1, r1, 1
	.loc	1 81 20                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:81:20
	dma_cfg zero, zero, zero, 0
	.loc	1 81 0 is_stmt 0                # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:81:0
	mod.s r14, r14, r20
	.loc	1 81 20                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:81:20
	sub.s r15, r13, r25
	load.d r[25:26], 0(r30)
	add.ul r[8:9], r[25:26], r[8:9]
	dma_cfg zero, r9, zero, 2
	.loc	1 81 0                          # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:81:0
	slli r14, r14, 11
	addli r14, r14, 8192
	.loc	1 81 20                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:81:20
	dma_cfg r14, r8, r24, 3
	addli r8, zero, 128
	dma_cfg r8, r4, r15, 4
	dma_run zero
	unlock r18
	xsignal r17, 0
	.loc	1 73 26 is_stmt 1               # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:73:26
	beq r1, r18, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:86:25
	zext_int2long r[8:9], r1
	zext_int2long r[14:15], r27
	sll.d r[25:26], r[8:9], r18
	.loc	1 81 25                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:81:25
	add.ul r[8:9], r[25:26], r[6:7]
	setlt.ul r14, r[14:15], r[8:9]
	bneq r14, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:0:25
	addli.d r[25:26], r[8:9], 0
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 89 25 is_stmt 1               # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:89:25
	add.s r12, r12, r1
	addli r1, r30, -4104
	.loc	1 73 26                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:73:26
	addli r3, r3, 4
	addli r28, r28, 4
	addli r5, r5, 4
	j .LBB0_6
.LBB0_34:                               # %.split17.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:86:20
	addli r12, r12, 4
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:101:67
	addli r3, r1, 1
	addli r1, r30, -4104
	addli r28, r8, 1
	addli r5, r7, 1
	addli r23, zero, 5
	addli r27, zero, 1023
	addli r25, zero, 3
	addli r26, zero, 32
	load.d r[14:15], 0(r1)                  # 8-byte Folded Reload
	bneq r11, zero, .LBB0_7
# %bb.36:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -4144(r30)                # 4-byte Folded Reload
	zext_int2long r[9:10], r24
	zext_int2long r[7:8], r1
	addli r1, r30, -4144
	min.ul r[14:15], r[7:8], r[9:10]
	store.d r[14:15], 0(r1)                 # 8-byte Folded Spill
	loadli.w r1,  -4136(r30)                # 4-byte Folded Reload
	zext_int2long r[14:15], zero
	sext_int2long r[25:26], r1
	addli r1, r30, -4152
	store.d r[14:15], 0(r1)                 # 8-byte Folded Spill
	addli r1, r30, -4144
	load.d r[14:15], 0(r1)                  # 8-byte Folded Reload
	addli r1, r30, -4136
	addli.d r[14:15], r[14:15], 64
	store.d r[14:15], 0(r1)                 # 8-byte Folded Spill
	addli r1, r30, -4152
	load.d r[14:15], 0(r1)                  # 8-byte Folded Reload
	addli r1, r30, -4144
	min.sl r[14:15], r[25:26], r[14:15]
	store.d r[14:15], 0(r1)                 # 8-byte Folded Spill
	addli r1, r30, -4136
	load.d r[14:15], 0(r1)                  # 8-byte Folded Reload
	max.ul r[14:15], r[14:15], r[7:8]
	store.d r[14:15], 0(r1)                 # 8-byte Folded Spill
	addli r1, r30, -4144
	load.d r[14:15], 0(r1)                  # 8-byte Folded Reload
	addli.d r[14:15], r[14:15], 16
	store.d r[14:15], 0(r1)                 # 8-byte Folded Spill
	addli r1, r30, -4136
	load.d r[14:15], 0(r1)                  # 8-byte Folded Reload
	addli r1, r30, -4144
	sub.sl r[7:8], r[14:15], r[7:8]
	load.d r[14:15], 0(r1)                  # 8-byte Folded Reload
	addli r1, r30, -4136
	min.ul r[7:8], r[7:8], r[9:10]
	max.sl r[14:15], r[14:15], r[25:26]
	store.d r[7:8], 0(r1)                   # 8-byte Folded Spill
	addli r1, zero, 13
	sub.sl r[9:10], r[14:15], r[25:26]
	addli r14, r30, -4112
	zext_int2long r[25:26], r13
	load.d r[7:8], 0(r14)                   # 8-byte Folded Reload
	min.sl r[9:10], r[9:10], r[25:26]
	addli r26, zero, 32
	addli r25, zero, 3
	sll.d r[14:15], r[7:8], r1
	load.d r[7:8], 16(r30)
	addli r1, r30, -4128
	add.ul r[14:15], r[7:8], r[14:15]
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	addli r1, zero, 10
	xwait r1, 0
	lock zero, r23
	addli r1, r30, -4136
	dma_cfg zero, zero, zero, 0
	add.ul r[14:15], r[14:15], r[7:8]
	dma_cfg zero, r2, zero, 1
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	dma_cfg r15, zero, zero, 2
	slli r1, r7, 2
	dma_cfg r14, r6, r1, 3
	addli r1, r30, -4104
	load.d r[14:15], 0(r1)                  # 8-byte Folded Reload
	addli r1, zero, 512
	dma_cfg r1, r4, r9, 4
	addli r1, zero, 11
	dma_run zero
	unlock r23
	xsignal r1, 0
	j .LBB0_7
.LBB0_37:                               # %._crit_edge
	.loc	1 22 0                          # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:22:0
	xsignal zero, 0
	bneq r11, zero, .LBB0_39
# %bb.38:
	.loc	1 0 0 is_stmt 0                 # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py:22:0
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
.asciz	"cawbuyp43r67jxawi62diwflwv73ee5anphcobim5cijdslw52h7.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/aw" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
