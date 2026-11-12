	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-gpu7/cache/inductor/ik" "cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py"
	.loc	1 22 0                          # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4208
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:73:26
	core_id r10
	addli r30, sp, 4144
	xsignal_mode_cfg r1
	beq r10, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -1024(r30)
	storeli.w zero, -2048(r30)
	storeli.w zero, -3072(r30)
	storeli.w zero, -4096(r30)
	mul.s r1, r2, r1
	addli r2, r4, 0
	fmac.s r2, r1, r3
	mul.s r3, r1, r3
	addli r2, r2, -1
	div.s r2, r2, r4
	load_param_i r4, 0
	mul.s r1, r2, r4
	fmac.s r2, r2, r4
	min.s r2, r2, r3
	ble.s r2, r1, .LBB0_35
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	addli r4, r30, -4128
	loadli.w r5,  -2048(r30)
	loadli.w r12,  -3072(r30)
	sext_int2long r[26:27], r1
	addli r13, zero, 32
	addli r14, zero, 1
	addli r18, zero, 5
	addli r17, zero, 4
	addli r19, zero, 255
	addli r21, zero, 7
	addli r22, zero, 6
	addli r20, zero, 3
	addli r23, zero, 16
	addli r11, zero, 128
	addli r28, zero, 2
	addli r16, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	loadli.w r4,  -1024(r30)
	loadli.w r3,  -4096(r30)
	j .LBB0_7
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 101 67 is_stmt 1              # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:101:67
	addli r5, r1, 1
	.loc	1 73 26                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:73:26
	addli r1, zero, 10
	.loc	1 101 67                        # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:101:67
	addli r3, r23, 1
	addli r4, r18, 1
	addli r18, zero, 5
	addli r11, zero, 128
	addli r23, zero, 16
	addli r28, zero, 2
	.loc	1 73 26                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:73:26
	xsignal r1, 0
	addli r1, r30, -4112
	loadli.w r16,  -4100(r30)               # 4-byte Folded Reload
	load.d r[26:27], 0(r1)                  # 8-byte Folded Reload
.LBB0_6:                                # %.thread91
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:0:26
	addli r6, r30, -4128
	addli.d r[26:27], r[26:27], 1
	addli r16, r16, 1
	load.d r[1:2], 0(r6)                    # 8-byte Folded Reload
	setlt.sl r1, r[26:27], r[1:2]
	beq r1, zero, .LBB0_35
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_16 Depth 2
	loadli.w r1,  32(r30)
	loadli.w r2,  28(r30)
	.loc	1 54 50 is_stmt 1               # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:54:50
	addli r6, zero, 8
	div.s r1, r26, r1
	div.s r2, r1, r2
	.loc	1 53 22                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:53:22
	div.s r7, r2, r13
	.loc	1 54 41                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:54:41
	slli r1, r7, 3
	.loc	1 54 30 is_stmt 0               # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:54:30
	sub.s r8, r14, r1
	.loc	1 54 50                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:54:50
	min.s r8, r8, r6
	.loc	1 73 26 is_stmt 1               # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:73:26
	addli r6, r30, -4120
	.loc	1 55 40                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:55:40
	mod.s r9, r2, r8
	.loc	1 55 34 is_stmt 0               # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:55:34
	add.s r1, r1, r9
	.loc	1 95 15 is_stmt 1               # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:95:15
	zext_int2long r[24:25], r1
	.loc	1 73 26                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:73:26
	store.d r[24:25], 0(r6)                 # 8-byte Folded Spill
	bneq r10, r17, .LBB0_9
# %bb.8:                                # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r6, zero, 11
	lui r24, 130
	addli r25, zero, 64
	xwait r6, 0
	j .LBB0_13
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:0:26
	lui r24, 130
	beq r10, r14, .LBB0_27
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	addli r25, zero, 64
	bneq r10, r28, .LBB0_13
# %bb.11:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 1
.LBB0_12:                               # %.thread.us21
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:81:20
	mod.s r2, r12, r19
	.loc	1 89 25                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:89:25
	mod.s r7, r3, r19
	xwait r28, 0
	xwait r18, 0
	lock zero, zero
	addli r3, r3, 1
	.loc	1 81 20                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:81:20
	addli r12, r12, 1
	.loc	1 89 25                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:89:25
	ds_cfg r20, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r13, zero, 14
	ds_cfg r23, zero, 13
	.loc	1 81 20                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:81:20
	slli r2, r2, 11
	.loc	1 89 25                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:89:25
	slli r7, r7, 10
	.loc	1 81 20                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:81:20
	addli r2, r2, 10240
	.loc	1 89 25                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:89:25
	shuffle_batch r7, r2, r13, 1
	.loc	1 73 26                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:73:26
	andi r2, r1, 1
	addli r1, zero, 0
	.loc	1 89 25                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:89:25
	unlock zero
	xsignal r20, 0
	xsignal r17, 0
	bneq r2, zero, .LBB0_12
	j .LBB0_30
.LBB0_13:                               # %.split.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:0:25
	slli r7, r7, 5
	slli r1, r1, 4
	addli r6, r30, -4112
	addli r28, zero, 128
	addli r15, zero, 0
	storeli.w r16, -4100(r30)               # 4-byte Folded Spill
	sub.s r2, r2, r7
	mod.s r7, r16, r18
	storeli.w r1, -4140(r30)                # 4-byte Folded Spill
	store.d r[26:27], 0(r6)                 # 8-byte Folded Spill
	addli r26, zero, 1
	addli r16, zero, 0
	div.s r2, r2, r8
	zext_int2long r[8:9], r2
	slli r1, r2, 5
	storeli.w r1, -4144(r30)                # 4-byte Folded Spill
	sll.d r[8:9], r[8:9], r18
	addli r1, r30, -4136
	store.d r[8:9], 0(r1)                   # 8-byte Folded Spill
	.loc	1 73 26 is_stmt 1               # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:73:26
	sll.d r[1:2], r[8:9], r26
	slli r9, r7, 11
	load.d r[6:7], 8(r30)
	add.ul r[7:8], r[6:7], r[1:2]
	j .LBB0_16
.LBB0_14:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:89:25
	addli r6, zero, 9
	xwait r22, 0
	xwait r6, 0
	lock zero, zero
	ds_cfg r20, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r13, zero, 14
	ds_cfg r13, zero, 13
	shuffle_coa r2, r27, r13, 2
	addli r2, zero, 8
	unlock zero
	xsignal r21, 0
	xsignal r2, 0
	.loc	1 73 26                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:73:26
	andi r2, r26, 1
	beq r2, zero, .LBB0_26
.LBB0_15:                               # %.split.backedge
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:89:25
	addli r16, r16, 1
	addli r15, zero, 8192
	addli r26, zero, 0
.LBB0_16:                               # %.split
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r18, r4, r16
	add.s r1, r5, r16
	add.s r23, r3, r16
	.loc	1 86 20                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:86:20
	mod.s r2, r18, r19
	.loc	1 89 25                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:89:25
	mod.s r27, r1, r19
	.loc	1 86 20                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:86:20
	slli r6, r2, 12
	.loc	1 89 25                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:89:25
	slli r2, r27, 11
	.loc	1 86 20                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:86:20
	add.s r27, r6, r24
	beq r10, r21, .LBB0_14
# %bb.17:                               # %.split
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 20 is_stmt 0                # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:0:20
	bneq r10, r22, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 86 20                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:86:20
	zext_int2long r[10:11], r15
	xwait r21, 0
	lock zero, r17
	addli r2, zero, 256
	dma_cfg r14, r14, zero, 0
	add.ul r[10:11], r[7:8], r[10:11]
	dma_cfg zero, r11, zero, 2
	dma_cfg r27, r10, r25, 3
	.loc	1 73 26 is_stmt 1               # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:73:26
	core_id r10
	.loc	1 86 20                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:86:20
	dma_cfg r28, r2, r13, 4
	dma_run zero
	unlock r17
	xsignal r22, 0
	.loc	1 73 26                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:73:26
	andi r2, r26, 1
	bneq r2, zero, .LBB0_15
	j .LBB0_26
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 26 is_stmt 0                # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:0:26
	andi r15, r26, 1
	.loc	1 89 25 is_stmt 1               # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:89:25
	bneq r10, r17, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 25 is_stmt 0                # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:0:25
	mod.s r6, r23, r19
	.loc	1 89 25                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:89:25
	addli r11, zero, 8
	xwait r17, 0
	xwait r11, 0
	lock zero, r14
	slli r26, r6, 10
	addli r6, zero, 16
	mm_cfg r13, r13, r6, 0
	mm_cfg r14, r14, r14, 2
	beq r16, zero, .LBB0_23
# %bb.21:                               # %.preheader8
                                        #   in Loop: Header=BB0_16 Depth=2
	mm_acc r9, r26, r2, 5
	j .LBB0_24
.LBB0_22:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 73 26 is_stmt 1               # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:73:26
	bneq r15, zero, .LBB0_15
	j .LBB0_31
.LBB0_23:                               # %.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:89:25
	mm r9, r26, r2, 5
.LBB0_24:                               # %.thread6.thread89
                                        #   in Loop: Header=BB0_16 Depth=2
	addli r2, zero, 5
	unlock r14
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 73 26                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:73:26
	bneq r15, zero, .LBB0_15
# %bb.25:                               # %.split17.thread90
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:86:20
	addli r12, r12, 2
	j .LBB0_5
.LBB0_26:                               # %.split17
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r12, r12, 2
	.loc	1 73 26                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:73:26
	beq r10, r17, .LBB0_5
	j .LBB0_32
.LBB0_27:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:0:26
	addli r2, r30, -4120
	addli r1, zero, 11
	storeli.w r16, -4100(r30)               # 4-byte Folded Spill
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	sll.d r[1:2], r[6:7], r1
	load.d r[6:7], 0(r30)
	add.ul r[7:8], r[6:7], r[1:2]
	addli r1, zero, 1
	addli r2, zero, 0
	addli r6, zero, 64
.LBB0_28:                               # %.thread.us
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:81:20
	mod.s r9, r12, r19
	.loc	1 86 25                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:86:25
	zext_int2long r[15:16], r2
	.loc	1 81 20                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:81:20
	xwait r20, 0
	lock zero, r17
	addli r12, r12, 1
	dma_cfg r14, r14, zero, 0
	sll.d r[15:16], r[15:16], r14
	add.ul r[15:16], r[7:8], r[15:16]
	slli r2, r9, 11
	dma_cfg zero, r16, zero, 2
	.loc	1 73 26                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:73:26
	andi r9, r1, 1
	addli r1, zero, 0
	.loc	1 81 20                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:81:20
	addli r2, r2, 10240
	dma_cfg r2, r15, r6, 3
	addli r2, zero, 32
	dma_cfg r11, r11, r23, 4
	dma_run zero
	unlock r17
	xsignal r28, 0
	.loc	1 73 26                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:73:26
	bneq r9, zero, .LBB0_28
# %bb.29:                               # %.split17.us
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:0:26
	loadli.w r16,  -4100(r30)               # 4-byte Folded Reload
	.loc	1 73 26                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:73:26
	addli r3, r3, 2
.LBB0_30:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r5, r5, 2
	addli r4, r4, 2
	.loc	1 89 25 is_stmt 1               # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:89:25
	j .LBB0_6
.LBB0_31:                               # %.split17.thread88
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:86:20
	addli r12, r12, 2
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 101 67                        # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:101:67
	addli r5, r1, 1
	addli r1, r30, -4112
	loadli.w r16,  -4100(r30)               # 4-byte Folded Reload
	addli r3, r23, 1
	addli r4, r18, 1
	addli r28, zero, 2
	load.d r[26:27], 0(r1)                  # 8-byte Folded Reload
	beq r10, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 67 is_stmt 0                # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:0:67
	addli r18, zero, 5
	addli r11, zero, 128
	addli r23, zero, 16
	.loc	1 101 67                        # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:101:67
	j .LBB0_6
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r1,  -4144(r30)                # 4-byte Folded Reload
	addli r6, zero, 96
	loadli.w r8,  -4140(r30)                # 4-byte Folded Reload
	zext_int2long r[15:16], zero
	load.d r[26:27], 16(r30)
	addli r23, zero, 16
	addli r18, zero, 5
	zext_int2long r[6:7], r6
	zext_int2long r[1:2], r1
	sext_int2long r[10:11], r8
	addli r8, zero, 12
	min.ul r[6:7], r[1:2], r[6:7]
	min.sl r[15:16], r[10:11], r[15:16]
	addli.d r[6:7], r[6:7], 32
	max.ul r[6:7], r[6:7], r[1:2]
	sub.sl r[1:2], r[6:7], r[1:2]
	addli.d r[6:7], r[15:16], 16
	zext_int2long r[15:16], r13
	min.ul r[1:2], r[1:2], r[15:16]
	max.sl r[6:7], r[6:7], r[10:11]
	addli r15, r30, -4120
	sub.sl r[6:7], r[6:7], r[10:11]
	load.d r[10:11], 0(r15)                 # 8-byte Folded Reload
	zext_int2long r[15:16], r23
	slli r1, r1, 2
	min.sl r[6:7], r[6:7], r[15:16]
	loadli.w r16,  -4100(r30)               # 4-byte Folded Reload
	sll.d r[10:11], r[10:11], r8
	addli r8, r30, -4136
	load.d r[24:25], 0(r8)                  # 8-byte Folded Reload
	add.ul r[10:11], r[26:27], r[10:11]
	addli r8, r30, -4112
	sll.d r[26:27], r[24:25], r14
	add.ul r[10:11], r[10:11], r[26:27]
	load.d r[26:27], 0(r8)                  # 8-byte Folded Reload
	addli r8, zero, 10
	xwait r8, 0
	lock zero, r18
	dma_cfg r14, zero, zero, 0
	dma_cfg zero, r14, zero, 1
	dma_cfg r11, zero, zero, 2
	dma_cfg r10, r9, r1, 3
	addli r11, zero, 128
	addli r1, zero, 256
	.loc	1 73 26 is_stmt 1               # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:73:26
	core_id r10
	.loc	1 101 67                        # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:101:67
	dma_cfg r1, r11, r6, 4
	addli r1, zero, 11
	dma_run zero
	unlock r18
	xsignal r1, 0
	j .LBB0_6
.LBB0_35:                               # %._crit_edge
	.loc	1 22 0                          # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:22:0
	xsignal zero, 0
	bneq r10, zero, .LBB0_37
# %bb.36:
	.loc	1 0 0 is_stmt 0                 # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:22:0
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
.LBB0_37:
	.loc	1 22 0 epilogue_begin           # cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py:22:0
	addli sp, sp, 4144
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
	.long	4208                            # 0x1070
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
.asciz	"cikgomdkdy7zqzn2x5jstkk6a5tqw242dul7krkfbw4ynzthvr3t.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-gpu7/cache/inductor/ik" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
