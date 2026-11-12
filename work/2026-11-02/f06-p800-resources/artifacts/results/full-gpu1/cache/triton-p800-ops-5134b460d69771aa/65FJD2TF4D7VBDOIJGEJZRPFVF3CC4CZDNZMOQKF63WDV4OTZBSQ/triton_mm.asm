	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/cz" "ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py"
	.loc	1 22 0                          # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2992
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:73:26
	core_id r22
	addli r30, sp, 2928
	xsignal_mode_cfg r1
	beq r22, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:0:26
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
	min.s r2, r2, r3
	ble.s r2, r1, .LBB0_33
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	addli r4, r30, -2920
	loadli.w r8,  -516(r30)
	loadli.w r9,  -1540(r30)
	loadli.w r19,  -2056(r30)
	loadli.w r17,  -2828(r30)
	addli r10, zero, 128
	addli r11, zero, 6
	addli r13, zero, 2
	addli r14, zero, 4
	addli r16, zero, 1
	addli r23, zero, 5
	addli r7, zero, 3
	addli r24, zero, 64
	addli r25, zero, 32
	addli r15, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sext_int2long r[4:5], r1
	lui r1, 7
	addli r3, r30, -2928
	ori r2, r1, 4095
	lui r1, 1048448
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	lui r1, 127
	ori r1, r1, 4095
	storeli.w r1, -2852(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:73:26
	addli r1, zero, 10
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0                           # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -2880
	addli r3, r30, -2920
	loadli.w r15,  -2884(r30)               # 4-byte Folded Reload
	addli r19, r11, 1
	addli r17, r28, 1
	addli r11, zero, 6
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	addli.d r[4:5], r[4:5], 1
	setlt.sl r1, r[4:5], r[1:2]
	beq r1, zero, .LBB0_33
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	.loc	1 73 26                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:73:26
	bneq r22, r14, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26                          # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:0:26
	loadli.w r1,  32(r30)
	addli r2, r30, -2880
	addli r12, zero, 8
	addli r3, zero, 0
	addli r18, zero, 6
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	loadli.w r2,  28(r30)
	div.s r1, r4, r1
	mod.s r5, r15, r13
	addli r15, r15, 1
	storeli.w r15, -2884(r30)               # 4-byte Folded Spill
	div.s r1, r1, r2
	slli r5, r5, 14
	storeli.w r5, -2868(r30)                # 4-byte Folded Spill
	div.s r2, r1, r10
	slli r4, r2, 3
	slli r2, r2, 7
	sub.s r6, r12, r4
	sub.s r2, r1, r2
	min.s r6, r6, r12
	mod.s r1, r1, r6
	div.s r2, r2, r6
	addli r6, r30, -2896
	add.s r1, r4, r1
	slli r4, r2, 6
	storeli.w r4, -2912(r30)                # 4-byte Folded Spill
	zext_int2long r[4:5], r2
	slli r2, r1, 6
	sll.d r[4:5], r[4:5], r11
	storeli.w r2, -2908(r30)                # 4-byte Folded Spill
	zext_int2long r[11:12], r1
	addli r2, r30, -2904
	addli r1, zero, 16
	store.d r[11:12], 0(r2)                 # 8-byte Folded Spill
	sll.d r[11:12], r[11:12], r1
	.loc	1 73 26                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:73:26
	load.d r[1:2], 8(r30)
	sll.d r[4:5], r[4:5], r16
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	addli r6, zero, 448
	add.ul r[1:2], r[1:2], r[4:5]
	addli r4, r30, -2864
	store.d r[1:2], 0(r4)                   # 8-byte Folded Spill
	addli r4, r30, -2928
	load.d r[1:2], 0(r4)                    # 8-byte Folded Reload
	addli r4, r30, -2840
	store.d r[11:12], 0(r4)                 # 8-byte Folded Spill
	addli r4, r30, -2848
	and.d r[1:2], r[11:12], r[1:2]
	addli r12, zero, 0
	store.d r[1:2], 0(r4)                   # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 26                          # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:0:26
	addli r20, zero, 1024
	.loc	1 81 25 is_stmt 1               # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:81:25
	sub.sl r[26:27], r[1:2], r[26:27]
	.loc	1 81 20 is_stmt 0               # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:81:20
	load.d r[4:5], 0(r30)
	sll.d r[1:2], r[1:2], r16
	xwait r7, 0
	lock zero, r14
	.loc	1 73 26 is_stmt 1               # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:73:26
	core_id r22
	.loc	1 81 20                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:81:20
	dma_cfg r16, r16, zero, 0
	zext_int2long r[20:21], r20
	add.ul r[1:2], r[4:5], r[1:2]
	.loc	1 81 25 is_stmt 0               # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:81:25
	div.sl r[20:21], r[26:27], r[20:21]
	zext_int2long r[26:27], r6
	.loc	1 81 20                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:81:20
	dma_cfg zero, r2, zero, 2
	dma_cfg r15, r1, r24, 3
	addli r1, zero, 2048
	.loc	1 81 25                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:81:25
	min.sl r[26:27], r[20:21], r[26:27]
	sub.sl r[20:21], r[26:27], r[20:21]
	.loc	1 81 20                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:81:20
	addli r20, r20, 64
	dma_cfg r10, r1, r20, 4
	dma_run zero
	unlock r14
	xsignal r13, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25 is_stmt 1               # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:89:25
	addli r9, r9, 1
	.loc	1 86 20                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:86:20
	addli r8, r8, 1
.LBB0_13:                               # %.thread6
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:73:26
	addli r3, r3, 1
	beq r3, r25, .LBB0_30
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:89:25
	addli r12, r12, 1
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:86:25
	add.s r11, r19, r12
	add.s r28, r17, r12
	.loc	1 89 25                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:89:25
	addli r2, zero, 192
	.loc	1 81 20                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:81:20
	mod.s r1, r11, r10
	.loc	1 89 25                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:89:25
	mod.s r2, r28, r2
	slli r26, r2, 12
	.loc	1 81 20                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:81:20
	slli r1, r1, 13
	lui r2, 8
	add.s r15, r1, r2
	beq r22, r13, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 0 is_stmt 0                 # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:0:0
	zext_int2long r[1:2], r3
	.loc	1 81 20                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:81:20
	bneq r22, r16, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 81 25                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:81:25
	addli r20, r30, -2840
	.loc	1 86 25 is_stmt 1               # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:86:25
	sll.d r[1:2], r[1:2], r23
	.loc	1 81 25                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:81:25
	load.d r[4:5], 0(r20)                   # 8-byte Folded Reload
	loadli.w r20,  -2852(r30)               # 4-byte Folded Reload
	add.ul r[1:2], r[1:2], r[4:5]
	zext_int2long r[26:27], r20
	addli r4, r30, -2848
	setlt.ul r22, r[26:27], r[1:2]
	load.d r[26:27], 0(r4)                  # 8-byte Folded Reload
	bneq r22, zero, .LBB0_11
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 25 is_stmt 0                # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:0:25
	zext_int2long r[26:27], zero
	j .LBB0_11
.LBB0_19:                               #   in Loop: Header=BB0_15 Depth=2
	addli r1, zero, 3
	.loc	1 89 25 is_stmt 1               # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:89:25
	xwait r13, 0
	xwait r23, 0
	lock zero, zero
	addli r7, zero, 3
	ds_cfg r1, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r24, zero, 13
	shuffle_batch r26, r15, r25, 1
	unlock zero
	xsignal r1, 0
	xsignal r14, 0
	j .LBB0_12
.LBB0_20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 86 20                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:86:20
	mod.s r15, r8, r10
	.loc	1 89 25                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:89:25
	addli r4, zero, 255
	.loc	1 86 20                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:86:20
	addli r8, r8, 1
	.loc	1 89 25                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:89:25
	mod.s r20, r9, r4
	.loc	1 86 20                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:86:20
	lui r4, 264
	.loc	1 89 25                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:89:25
	addli r9, r9, 1
	.loc	1 86 20                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:86:20
	slli r21, r15, 12
	add.s r27, r21, r4
	.loc	1 89 25                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:89:25
	slli r15, r20, 12
	.loc	1 86 20                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:86:20
	addli r4, zero, 7
	beq r22, r4, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 20 is_stmt 0                # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:0:20
	addli r20, zero, 6
	.loc	1 86 20                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:86:20
	bneq r22, r20, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_15 Depth=2
	addli r15, zero, 16
	addli r4, zero, 7
	addli r18, zero, 6
	sll.d r[1:2], r[1:2], r15
	addli r15, r30, -2864
	xwait r4, 0
	load.d r[4:5], 0(r15)                   # 8-byte Folded Reload
	lock zero, r14
	dma_cfg r16, r16, zero, 0
	add.ul r[1:2], r[4:5], r[1:2]
	dma_cfg zero, r2, zero, 2
	dma_cfg r27, r1, r10, 3
	addli r1, zero, 2048
	dma_cfg r10, r1, r25, 4
	dma_run zero
	unlock r14
	xsignal r20, 0
	.loc	1 89 25 is_stmt 1               # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:89:25
	j .LBB0_13
.LBB0_23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r1, zero, 9
	xwait r18, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 7
	ds_cfg r7, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r15, r27, r25, 2
	unlock zero
	xsignal r1, 0
	addli r1, zero, 8
	xsignal r1, 0
	j .LBB0_13
.LBB0_24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 25 is_stmt 0                # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:0:25
	addli r18, zero, 6
	.loc	1 89 25                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:89:25
	bneq r22, r14, .LBB0_27
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	addli r1, zero, 8
	xwait r14, 0
	xwait r1, 0
	lock zero, r16
	mm_cfg r24, r25, r24, 0
	mm_cfg r16, r13, r16, 2
	beq r12, zero, .LBB0_28
# %bb.26:                               # %.preheader8
                                        #   in Loop: Header=BB0_15 Depth=2
	loadli.w r1,  -2868(r30)                # 4-byte Folded Reload
	mm_acc r1, r26, r15, 5
	j .LBB0_29
.LBB0_27:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26 is_stmt 1               # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:73:26
	addli r3, r3, 1
	bneq r3, r25, .LBB0_14
	j .LBB0_31
.LBB0_28:                               # %.preheader
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:89:25
	loadli.w r1,  -2868(r30)                # 4-byte Folded Reload
	mm r1, r26, r15, 5
.LBB0_29:                               # %.thread6.thread41
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:89:25
	addli r1, zero, 9
	unlock r16
	xsignal r23, 0
	xsignal r1, 0
	bneq r3, r25, .LBB0_14
	j .LBB0_5
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:73:26
	beq r22, r14, .LBB0_5
.LBB0_31:                               # %.thread40
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:101:67
	bneq r22, zero, .LBB0_7
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -2912(r30)                # 4-byte Folded Reload
	loadli.w r5,  -2908(r30)                # 4-byte Folded Reload
	addli r3, zero, 960
	addli r12, zero, 448
	addli r15, r30, -2904
	addli r23, zero, 5
	zext_int2long r[19:20], r12
	zext_int2long r[3:4], r3
	load.d r[17:18], 0(r15)                 # 8-byte Folded Reload
	addli r12, zero, 17
	zext_int2long r[1:2], r1
	sext_int2long r[5:6], r5
	min.ul r[3:4], r[1:2], r[3:4]
	min.sl r[19:20], r[5:6], r[19:20]
	sll.d r[21:22], r[17:18], r12
	addli r12, r30, -2896
	load.d r[17:18], 16(r30)
	addli.d r[3:4], r[3:4], 64
	addli.d r[19:20], r[19:20], 64
	max.ul r[3:4], r[3:4], r[1:2]
	max.sl r[19:20], r[19:20], r[5:6]
	sub.sl r[1:2], r[3:4], r[1:2]
	zext_int2long r[3:4], r24
	sub.sl r[5:6], r[19:20], r[5:6]
	add.ul r[19:20], r[17:18], r[21:22]
	.loc	1 73 26                         # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:73:26
	core_id r22
	.loc	1 101 67                        # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:101:67
	min.ul r[1:2], r[1:2], r[3:4]
	min.sl r[3:4], r[5:6], r[3:4]
	load.d r[5:6], 0(r12)                   # 8-byte Folded Reload
	addli r12, zero, 10
	xwait r12, 0
	addli r12, zero, 5
	slli r1, r1, 2
	add.ul r[5:6], r[19:20], r[5:6]
	lock zero, r12
	dma_cfg r16, zero, zero, 0
	dma_cfg zero, r16, zero, 1
	dma_cfg r6, zero, zero, 2
	loadli.w r2,  -2868(r30)                # 4-byte Folded Reload
	dma_cfg r5, r2, r1, 3
	addli r1, zero, 256
	addli r2, zero, 2048
	dma_cfg r2, r1, r3, 4
	addli r1, zero, 11
	dma_run zero
	unlock r12
	j .LBB0_6
.LBB0_33:                               # %._crit_edge
	.loc	1 22 0                          # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:22:0
	xsignal zero, 0
	bneq r22, zero, .LBB0_35
# %bb.34:
	.loc	1 0 0 is_stmt 0                 # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:22:0
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
	.loc	1 22 0 epilogue_begin           # ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py:22:0
	addli sp, sp, 2928
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
	.long	2992                            # 0xbb0
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
.asciz	"ccz5e4igrryepwcclzbasfmznaho4eialzrjipxdyguzufr4fpqj.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/cz" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
