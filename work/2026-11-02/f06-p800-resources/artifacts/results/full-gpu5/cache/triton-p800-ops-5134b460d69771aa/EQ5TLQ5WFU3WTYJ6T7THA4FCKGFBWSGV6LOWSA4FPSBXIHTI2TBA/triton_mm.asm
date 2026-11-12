	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/lh" "clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py"
	.loc	1 22 0                          # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2976
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:73:26
	core_id r12
	addli r30, sp, 2912
	xsignal_mode_cfg r1
	beq r12, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:0:26
	lui r1, 1048575
	ori r1, r1, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	addli r2, zero, 2
	uni_sram_cfg r1, r1
	lui r3, 1048575
	lock zero, r2
	ew_cfg r1, zero, zero, 16
	ori r1, r3, 4095
	addli r3, zero, 3
	unlock r2
	addli r2, zero, 11
	csr_set csr3, r1
	addli r1, zero, 5
	sync_group
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -516(r30)
	storeli.w zero, -1540(r30)
	storeli.w zero, -2056(r30)
	storeli.w zero, -2828(r30)
	mul.s r1, r2, r1
	addli r2, r4, 0
	fmac.s r2, r1, r3
	mul.s r3, r1, r3
	addli r2, r2, -1
	div.s r2, r2, r4
	load_param_i r4, 0
	mul.s r1, r2, r4
	fmac.s r2, r2, r4
	min.s r3, r2, r3
	ble.s r3, r1, .LBB0_33
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r3
	addli r4, r30, -2904
	sext_int2long r[5:6], r1
	loadli.w r8,  -516(r30)
	loadli.w r9,  -1540(r30)
	loadli.w r18,  -2056(r30)
	loadli.w r1,  -2828(r30)
	addli r10, zero, 128
	addli r11, zero, 2
	addli r15, zero, 6
	addli r14, zero, 4
	addli r23, zero, 16
	addli r24, zero, 64
	addli r27, zero, 1
	addli r16, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r3, zero, 4095
	addli r4, r30, -2912
	lui r2, 1048572
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:73:26
	addli r1, zero, 10
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0                           # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -2864
	loadli.w r16,  -2868(r30)               # 4-byte Folded Reload
	addli r15, zero, 6
	addli r18, r28, 1
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2904
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	addli r1, r22, 1
	addli.d r[5:6], r[5:6], 1
	setlt.sl r3, r[5:6], r[3:4]
	beq r3, zero, .LBB0_33
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	.loc	1 73 26                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:73:26
	bneq r12, r14, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26                          # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:0:26
	loadli.w r4,  32(r30)
	addli r2, r30, -2864
	mod.s r7, r16, r11
	addli r16, r16, 1
	addli r3, zero, 0
	addli r25, zero, 6
	addli r26, zero, 0
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	addli r2, zero, 8
	storeli.w r16, -2868(r30)               # 4-byte Folded Spill
	div.s r4, r5, r4
	loadli.w r5,  28(r30)
	div.s r4, r4, r5
	div.s r5, r4, r10
	slli r6, r5, 3
	slli r5, r5, 7
	sub.s r13, r11, r6
	sub.s r5, r4, r5
	min.s r13, r13, r2
	slli r2, r7, 14
	mod.s r4, r4, r13
	div.s r5, r5, r13
	storeli.w r2, -2852(r30)                # 4-byte Folded Spill
	add.s r4, r6, r4
	slli r2, r5, 6
	zext_int2long r[5:6], r5
	storeli.w r2, -2896(r30)                # 4-byte Folded Spill
	slli r2, r4, 6
	sll.d r[5:6], r[5:6], r15
	zext_int2long r[19:20], r4
	addli r4, r30, -2888
	storeli.w r2, -2892(r30)                # 4-byte Folded Spill
	addli r2, zero, 13
	.loc	1 73 26                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:73:26
	sll.d r[15:16], r[5:6], r11
	load.d r[6:7], 8(r30)
	store.d r[19:20], 0(r4)                 # 8-byte Folded Spill
	sll.d r[4:5], r[19:20], r2
	addli r2, r30, -2880
	add.ul r[6:7], r[6:7], r[15:16]
	store.d r[15:16], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -2848
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -2912
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -2840
	and.d r[6:7], r[4:5], r[6:7]
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	addli r2, zero, 192
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 81 25 is_stmt 1               # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:81:25
	sub.sl r[6:7], r[15:16], r[6:7]
	zext_int2long r[12:13], r10
	.loc	1 81 20 is_stmt 0               # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:81:20
	load.d r[19:20], 0(r30)
	sll.d r[15:16], r[15:16], r11
	addli r17, zero, 3
	.loc	1 81 25                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:81:25
	div.sl r[6:7], r[6:7], r[12:13]
	zext_int2long r[12:13], r24
	.loc	1 81 20                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:81:20
	xwait r17, 0
	lock zero, r14
	add.ul r[15:16], r[19:20], r[15:16]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r16, zero, 2
	dma_cfg r21, r15, r24, 3
	.loc	1 81 25                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:81:25
	min.sl r[12:13], r[6:7], r[12:13]
	sub.sl r[6:7], r[12:13], r[6:7]
	.loc	1 73 26 is_stmt 1               # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:73:26
	core_id r12
	.loc	1 81 20                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:81:20
	addli r6, r6, 64
	addli r7, zero, 512
	dma_cfg r10, r7, r6, 4
	dma_run zero
	unlock r14
	xsignal r11, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:89:25
	addli r9, r9, 1
	.loc	1 86 20                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:86:20
	addli r8, r8, 1
.LBB0_13:                               # %.thread6
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:73:26
	addli r3, r3, 1
	addli r6, zero, 8
	beq r3, r6, .LBB0_30
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:89:25
	addli r26, r26, 1
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:86:25
	add.s r28, r18, r26
	add.s r22, r1, r26
	.loc	1 81 20                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:81:20
	mod.s r6, r28, r10
	.loc	1 89 25                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:89:25
	mod.s r7, r22, r2
	slli r13, r7, 12
	.loc	1 81 20                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:81:20
	slli r6, r6, 13
	lui r7, 8
	add.s r21, r6, r7
	beq r12, r11, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 0 is_stmt 0                 # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:0:0
	zext_int2long r[16:17], r3
	.loc	1 81 20                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:81:20
	bneq r12, r27, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 86 25 is_stmt 1               # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:86:25
	sll.d r[6:7], r[16:17], r14
	addli r12, r30, -2840
	.loc	1 81 25                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:81:25
	add.ul r[15:16], r[6:7], r[4:5]
	addli r6, zero, 16383
	zext_int2long r[6:7], r6
	setlt.ul r13, r[6:7], r[15:16]
	load.d r[6:7], 0(r12)                   # 8-byte Folded Reload
	bneq r13, zero, .LBB0_11
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 25 is_stmt 0                # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:0:25
	zext_int2long r[6:7], zero
	j .LBB0_11
.LBB0_19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25 is_stmt 1               # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:89:25
	addli r6, zero, 5
	xwait r11, 0
	xwait r6, 0
	lock zero, zero
	addli r6, zero, 32
	ds_cfg r11, zero, 0
	ds_cfg r6, zero, 1
	addli r6, zero, 3
	ds_cfg r23, zero, 14
	ds_cfg r24, zero, 13
	shuffle_batch r13, r21, r23, 1
	unlock zero
	xsignal r6, 0
	xsignal r14, 0
	j .LBB0_12
.LBB0_20:                               #   in Loop: Header=BB0_15 Depth=2
	addli r7, zero, 255
	.loc	1 86 20                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:86:20
	mod.s r6, r8, r10
	addli r8, r8, 1
	.loc	1 89 25                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:89:25
	mod.s r7, r9, r7
	addli r9, r9, 1
	.loc	1 86 20                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:86:20
	slli r6, r6, 12
	.loc	1 89 25                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:89:25
	slli r21, r7, 12
	.loc	1 86 20                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:86:20
	lui r7, 264
	add.s r15, r6, r7
	addli r6, zero, 7
	beq r12, r6, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 20 is_stmt 0                # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:0:20
	addli r2, zero, 6
	.loc	1 86 20                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:86:20
	bneq r12, r2, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_15 Depth=2
	addli r13, zero, 7
	sll.d r[6:7], r[16:17], r23
	addli r25, zero, 6
	xwait r13, 0
	addli r13, r30, -2848
	load.d r[16:17], 0(r13)                 # 8-byte Folded Reload
	lock zero, r14
	addli r13, zero, 256
	dma_cfg zero, zero, zero, 0
	add.ul r[6:7], r[16:17], r[6:7]
	dma_cfg zero, r7, zero, 2
	dma_cfg r15, r6, r13, 3
	addli r6, zero, 4096
	dma_cfg r13, r6, r23, 4
	dma_run zero
	unlock r14
	xsignal r2, 0
	addli r2, zero, 192
	.loc	1 89 25 is_stmt 1               # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:89:25
	j .LBB0_13
.LBB0_23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r6, zero, 9
	xwait r25, 0
	xwait r6, 0
	lock zero, zero
	addli r6, zero, 7
	ds_cfg r11, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r21, r15, r23, 2
	unlock zero
	xsignal r6, 0
	addli r6, zero, 8
	xsignal r6, 0
	j .LBB0_13
.LBB0_24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 25 is_stmt 0                # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:0:25
	addli r25, zero, 6
	addli r2, zero, 192
	.loc	1 89 25                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:89:25
	bneq r12, r14, .LBB0_27
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	addli r6, zero, 8
	xwait r14, 0
	addli r27, zero, 1
	xwait r6, 0
	addli r6, zero, 1
	lock zero, r6
	mm_cfg r24, r23, r24, 0
	mm_cfg r6, r11, r6, 2
	beq r26, zero, .LBB0_28
# %bb.26:                               # %.preheader8
                                        #   in Loop: Header=BB0_15 Depth=2
	loadli.w r6,  -2852(r30)                # 4-byte Folded Reload
	mm_acc r6, r13, r21, 8
	j .LBB0_29
.LBB0_27:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26 is_stmt 1               # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:73:26
	addli r3, r3, 1
	addli r6, zero, 8
	bneq r3, r6, .LBB0_14
	j .LBB0_31
.LBB0_28:                               # %.preheader
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:89:25
	loadli.w r6,  -2852(r30)                # 4-byte Folded Reload
	mm r6, r13, r21, 8
.LBB0_29:                               # %.thread6.thread41
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r6, zero, 5
	unlock r27
	.loc	1 73 26                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:89:25
	xsignal r6, 0
	addli r6, zero, 9
	xsignal r6, 0
	.loc	1 73 26                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:73:26
	addli r6, zero, 8
	bneq r3, r6, .LBB0_14
	j .LBB0_5
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=1
	beq r12, r14, .LBB0_5
.LBB0_31:                               # %.thread40
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:101:67
	bneq r12, zero, .LBB0_7
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -2896(r30)                # 4-byte Folded Reload
	zext_int2long r[12:13], r24
	addli r2, r30, -2888
	addli r7, r30, -2880
	zext_int2long r[3:4], r1
	addli r1, zero, 960
	zext_int2long r[5:6], r1
	loadli.w r1,  -2892(r30)                # 4-byte Folded Reload
	min.ul r[5:6], r[3:4], r[5:6]
	sext_int2long r[15:16], r1
	addli r1, zero, 18
	addli.d r[5:6], r[5:6], 64
	min.sl r[17:18], r[15:16], r[12:13]
	max.ul r[5:6], r[5:6], r[3:4]
	sub.sl r[3:4], r[5:6], r[3:4]
	addli.d r[5:6], r[17:18], 64
	load.d r[17:18], 0(r2)                  # 8-byte Folded Reload
	max.sl r[5:6], r[5:6], r[15:16]
	min.ul r[3:4], r[3:4], r[12:13]
	sll.d r[17:18], r[17:18], r1
	load.d r[1:2], 16(r30)
	sub.sl r[5:6], r[5:6], r[15:16]
	add.ul r[15:16], r[1:2], r[17:18]
	load.d r[1:2], 0(r7)                    # 8-byte Folded Reload
	min.sl r[5:6], r[5:6], r[12:13]
	add.ul r[12:13], r[15:16], r[1:2]
	addli r1, zero, 10
	addli r2, zero, 5
	xwait r1, 0
	lock zero, r2
	slli r1, r3, 2
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r27, zero, 1
	dma_cfg r13, zero, zero, 2
	loadli.w r3,  -2852(r30)                # 4-byte Folded Reload
	dma_cfg r12, r3, r1, 3
	addli r1, zero, 256
	addli r3, zero, 4096
	.loc	1 73 26                         # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:73:26
	core_id r12
	.loc	1 101 67                        # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:101:67
	dma_cfg r3, r1, r5, 4
	addli r1, zero, 11
	dma_run zero
	unlock r2
	j .LBB0_6
.LBB0_33:                               # %._crit_edge
	.loc	1 22 0                          # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:22:0
	xsignal zero, 0
	bneq r12, zero, .LBB0_35
# %bb.34:
	.loc	1 0 0 is_stmt 0                 # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:22:0
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
.LBB0_35:
	.loc	1 22 0 epilogue_begin           # clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py:22:0
	addli sp, sp, 2912
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
	.long	2976                            # 0xba0
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
.asciz	"clhwpimpsffl6o2hpzsptasnbcwmsdjo72czafbynsu5vcbobeit.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/lh" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
