	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/jj" "cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py"
	.loc	1 22 0                          # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3696
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:73:26
	core_id r8
	addli r30, sp, 3632
	xsignal_mode_cfg r1
	beq r8, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:0:26
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -768(r30)
	storeli.w zero, -1792(r30)
	storeli.w zero, -2560(r30)
	storeli.w zero, -3584(r30)
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
	ble.s r2, r1, .LBB0_36
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	addli r4, r30, -3616
	loadli.w r5,  -768(r30)
	loadli.w r28,  -1792(r30)
	loadli.w r10,  -2560(r30)
	loadli.w r27,  -3584(r30)
	sext_int2long r[25:26], r1
	addli r11, zero, 32
	addli r12, zero, 1
	addli r14, zero, 6
	addli r13, zero, 5
	addli r16, zero, 4
	addli r18, zero, 255
	addli r19, zero, 191
	lui r20, 201
	addli r21, zero, 7
	addli r24, zero, 64
	addli r9, zero, 2
	lui r15, 10
	addli r17, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r4, zero, 3
	j .LBB0_9
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:73:26
	addli r1, zero, 10
	.loc	1 101 67 is_stmt 1              # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:101:67
	addli r27, r26, 1
	addli r28, r15, 1
	addli r5, r6, 1
	.loc	1 73 26                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:73:26
	xsignal r1, 0
.LBB0_6:                                #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:0:26
	addli r1, r30, -3592
	addli r13, zero, 5
.LBB0_7:                                # %.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[25:26], 0(r1)                  # 8-byte Folded Reload
	loadli.w r17,  -3596(r30)               # 4-byte Folded Reload
	addli r9, zero, 2
	lui r15, 10
.LBB0_8:                                # %.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, r30, -3616
	addli.d r[25:26], r[25:26], 1
	addli r17, r17, 1
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	setlt.sl r1, r[25:26], r[1:2]
	beq r1, zero, .LBB0_36
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_19 Depth 2
	loadli.w r1,  32(r30)
	loadli.w r2,  28(r30)
	.loc	1 54 50 is_stmt 1               # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:54:50
	addli r7, zero, 8
	div.s r1, r25, r1
	div.s r2, r1, r2
	.loc	1 53 22                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:53:22
	div.s r3, r2, r11
	.loc	1 54 41                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:54:41
	slli r1, r3, 3
	.loc	1 54 30 is_stmt 0               # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:54:30
	sub.s r6, r12, r1
	.loc	1 54 50                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:54:50
	min.s r6, r6, r7
	.loc	1 55 40 is_stmt 1               # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:55:40
	mod.s r7, r2, r6
	.loc	1 55 34 is_stmt 0               # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:55:34
	add.s r1, r1, r7
	.loc	1 73 26 is_stmt 1               # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:73:26
	addli r7, r30, -3608
	.loc	1 95 15                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:95:15
	zext_int2long r[22:23], r1
	.loc	1 73 26                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:73:26
	store.d r[22:23], 0(r7)                 # 8-byte Folded Spill
	bneq r8, r16, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r7, zero, 11
	addli r23, zero, 128
	xwait r7, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:0:26
	beq r8, r12, .LBB0_30
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	addli r23, zero, 128
	bneq r8, r9, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r2, zero, 1
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:81:20
	mod.s r1, r10, r19
	.loc	1 89 25                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:89:25
	mod.s r3, r27, r18
	xwait r9, 0
	xwait r13, 0
	lock zero, zero
	addli r27, r27, 1
	.loc	1 81 20                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:81:20
	addli r10, r10, 1
	.loc	1 89 25                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:89:25
	ds_cfg r4, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r11, zero, 13
	.loc	1 81 20                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:81:20
	slli r1, r1, 12
	.loc	1 89 25                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:89:25
	slli r3, r3, 11
	.loc	1 81 20                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:81:20
	add.s r1, r1, r15
	.loc	1 89 25                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:89:25
	shuffle_batch r3, r1, r11, 1
	.loc	1 73 26                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:73:26
	andi r1, r2, 1
	addli r2, zero, 0
	.loc	1 89 25                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:89:25
	unlock zero
	xsignal r4, 0
	xsignal r16, 0
	bneq r1, zero, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:73:26
	addli r28, r28, 2
	addli r5, r5, 2
	.loc	1 89 25                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:89:25
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:0:25
	slli r3, r3, 5
	addli r7, r30, -3592
	slli r1, r1, 5
	addli r9, zero, 5
	storeli.w r17, -3596(r30)               # 4-byte Folded Spill
	addli r22, zero, 0
	sub.s r2, r2, r3
	store.d r[25:26], 0(r7)                 # 8-byte Folded Spill
	storeli.w r1, -3628(r30)                # 4-byte Folded Spill
	mod.s r3, r17, r13
	addli r13, zero, 1
	addli r7, zero, 0
	div.s r2, r2, r6
	slli r17, r3, 13
	zext_int2long r[25:26], r2
	slli r1, r2, 6
	storeli.w r1, -3632(r30)                # 4-byte Folded Spill
	sll.d r[25:26], r[25:26], r14
	addli r1, r30, -3624
	store.d r[25:26], 0(r1)                 # 8-byte Folded Spill
	.loc	1 73 26 is_stmt 1               # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:73:26
	sll.d r[1:2], r[25:26], r13
	load.d r[25:26], 8(r30)
	add.ul r[2:3], r[25:26], r[1:2]
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:89:25
	addli r7, zero, 9
	xwait r14, 0
	xwait r7, 0
	lock zero, zero
	ds_cfg r4, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r25, r1, r11, 2
	addli r1, zero, 8
	unlock zero
	xsignal r21, 0
	xsignal r1, 0
	.loc	1 73 26                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:73:26
	andi r1, r13, 1
	beq r1, zero, .LBB0_29
.LBB0_18:                               # %.split.backedge
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:89:25
	addli r22, r22, 1
	lui r7, 4
	addli r13, zero, 0
.LBB0_19:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r6, r5, r22
	add.s r15, r28, r22
	add.s r26, r27, r22
	.loc	1 86 20                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:86:20
	mod.s r1, r6, r19
	.loc	1 89 25                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:89:25
	mod.s r25, r15, r18
	.loc	1 86 20                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:86:20
	slli r1, r1, 12
	.loc	1 89 25                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:89:25
	slli r25, r25, 12
	.loc	1 86 20                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:86:20
	add.s r1, r1, r20
	beq r8, r21, .LBB0_17
# %bb.20:                               # %.split
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 20 is_stmt 0                # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:0:20
	bneq r8, r14, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 86 20                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:86:20
	zext_int2long r[7:8], r7
	xwait r21, 0
	lock zero, r16
	dma_cfg r12, r12, zero, 0
	add.ul r[7:8], r[2:3], r[7:8]
	dma_cfg zero, r8, zero, 2
	dma_cfg r1, r7, r23, 3
	addli r1, zero, 512
	.loc	1 73 26 is_stmt 1               # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:73:26
	core_id r8
	.loc	1 86 20                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:86:20
	dma_cfg r23, r1, r11, 4
	dma_run zero
	unlock r16
	xsignal r14, 0
	.loc	1 73 26                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:73:26
	andi r1, r13, 1
	bneq r1, zero, .LBB0_18
	j .LBB0_29
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 26 is_stmt 0                # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:0:26
	andi r7, r13, 1
	.loc	1 89 25 is_stmt 1               # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:89:25
	bneq r8, r16, .LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 25 is_stmt 0                # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:0:25
	mod.s r1, r26, r18
	.loc	1 89 25                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:89:25
	addli r13, zero, 8
	xwait r16, 0
	xwait r13, 0
	lock zero, r12
	addli r13, zero, 2
	mm_cfg r24, r11, r11, 0
	mm_cfg r12, r13, r12, 2
	slli r1, r1, 11
	beq r22, zero, .LBB0_26
# %bb.24:                               # %.preheader8
                                        #   in Loop: Header=BB0_19 Depth=2
	mm_acc r17, r1, r25, 5
	j .LBB0_27
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 73 26 is_stmt 1               # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:73:26
	bneq r7, zero, .LBB0_18
	j .LBB0_33
.LBB0_26:                               # %.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:89:25
	mm r17, r1, r25, 5
.LBB0_27:                               # %.thread6.thread89
                                        #   in Loop: Header=BB0_19 Depth=2
	addli r1, zero, 9
	unlock r12
	xsignal r9, 0
	xsignal r1, 0
	.loc	1 73 26                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:73:26
	bneq r7, zero, .LBB0_18
# %bb.28:                               # %.split17.thread90
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:86:20
	addli r10, r10, 2
	j .LBB0_5
.LBB0_29:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r10, r10, 2
	.loc	1 73 26                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:73:26
	beq r8, r16, .LBB0_5
	j .LBB0_34
.LBB0_30:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:0:26
	addli r6, r30, -3608
	addli r1, r30, -3592
	addli r22, zero, 128
	load.d r[2:3], 0(r6)                    # 8-byte Folded Reload
	store.d r[25:26], 0(r1)                 # 8-byte Folded Spill
	addli r1, zero, 12
	load.d r[6:7], 0(r30)
	sll.d r[1:2], r[2:3], r1
	add.ul r[2:3], r[6:7], r[1:2]
	addli r6, zero, 1
	addli r7, zero, 0
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:81:20
	mod.s r1, r10, r19
	.loc	1 86 25                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:86:25
	zext_int2long r[25:26], r7
	.loc	1 81 20                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:81:20
	xwait r4, 0
	lock zero, r16
	addli r7, zero, 32
	addli r10, r10, 1
	dma_cfg r12, r12, zero, 0
	sll.d r[25:26], r[25:26], r12
	add.ul r[25:26], r[2:3], r[25:26]
	slli r1, r1, 12
	dma_cfg zero, r26, zero, 2
	add.s r1, r1, r15
	dma_cfg r1, r25, r24, 3
	.loc	1 73 26                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:73:26
	andi r1, r6, 1
	addli r6, zero, 0
	.loc	1 81 20                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:81:20
	dma_cfg r22, r22, r7, 4
	dma_run zero
	unlock r16
	xsignal r9, 0
	.loc	1 73 26                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:73:26
	bneq r1, zero, .LBB0_31
# %bb.32:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:0:26
	addli r1, r30, -3592
	.loc	1 73 26                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:73:26
	addli r27, r27, 2
	addli r28, r28, 2
	addli r5, r5, 2
	load.d r[25:26], 0(r1)                  # 8-byte Folded Reload
	.loc	1 89 25 is_stmt 1               # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:89:25
	j .LBB0_8
.LBB0_33:                               # %.split17.thread88
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:86:20
	addli r10, r10, 2
.LBB0_34:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:101:67
	addli r27, r26, 1
	addli r28, r15, 1
	addli r5, r6, 1
	bneq r8, zero, .LBB0_6
# %bb.35:                               #   in Loop: Header=BB0_9 Depth=1
	loadli.w r1,  -3632(r30)                # 4-byte Folded Reload
	addli r3, zero, 192
	zext_int2long r[25:26], zero
	addli r13, zero, 5
	zext_int2long r[6:7], r3
	loadli.w r3,  -3628(r30)                # 4-byte Folded Reload
	zext_int2long r[1:2], r1
	min.ul r[6:7], r[1:2], r[6:7]
	sext_int2long r[8:9], r3
	addli.d r[6:7], r[6:7], 64
	min.sl r[25:26], r[8:9], r[25:26]
	max.ul r[6:7], r[6:7], r[1:2]
	sub.sl r[1:2], r[6:7], r[1:2]
	addli.d r[6:7], r[25:26], 32
	zext_int2long r[25:26], r24
	max.sl r[6:7], r[6:7], r[8:9]
	min.ul r[22:23], r[1:2], r[25:26]
	addli r1, zero, 14
	zext_int2long r[25:26], r11
	sub.sl r[6:7], r[6:7], r[8:9]
	addli r8, r30, -3608
	load.d r[2:3], 0(r8)                    # 8-byte Folded Reload
	min.sl r[6:7], r[6:7], r[25:26]
	sll.d r[8:9], r[2:3], r1
	load.d r[1:2], 16(r30)
	addli r3, r30, -3624
	add.ul r[8:9], r[1:2], r[8:9]
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	addli r3, zero, 10
	xwait r3, 0
	lock zero, r13
	slli r3, r22, 2
	sll.d r[1:2], r[1:2], r12
	dma_cfg r12, zero, zero, 0
	dma_cfg zero, r12, zero, 1
	add.ul r[1:2], r[8:9], r[1:2]
	.loc	1 73 26                         # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:73:26
	core_id r8
	.loc	1 101 67                        # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:101:67
	dma_cfg r2, zero, zero, 2
	dma_cfg r1, r17, r3, 3
	addli r1, zero, 256
	addli r2, zero, 512
	dma_cfg r2, r1, r6, 4
	addli r1, zero, 11
	dma_run zero
	unlock r13
	xsignal r1, 0
	addli r1, r30, -3592
	j .LBB0_7
.LBB0_36:                               # %._crit_edge
	.loc	1 22 0                          # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:22:0
	xsignal zero, 0
	bneq r8, zero, .LBB0_38
# %bb.37:
	.loc	1 0 0 is_stmt 0                 # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:22:0
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
.LBB0_38:
	.loc	1 22 0 epilogue_begin           # cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py:22:0
	addli sp, sp, 3632
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
	.long	3696                            # 0xe70
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
.asciz	"cjjryurtedrjxq7polktu7d4j3mib5llh6irlhixum5c72c5bnhk.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/jj" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
