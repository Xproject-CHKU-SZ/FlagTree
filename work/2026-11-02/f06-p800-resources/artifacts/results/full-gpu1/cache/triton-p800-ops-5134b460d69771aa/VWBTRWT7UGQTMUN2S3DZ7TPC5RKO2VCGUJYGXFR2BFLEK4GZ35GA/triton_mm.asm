	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/bc" "cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py"
	.loc	1 22 0                          # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3160
	addli r30, sp, 3096
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:73:26
	core_id r19
	loadli.w r14,  32(r30)
	xsignal_mode_cfg r1
	beq r19, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -620(r30)
	storeli.w zero, -1644(r30)
	storeli.w zero, -2260(r30)
	storeli.w zero, -3032(r30)
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
	ble.s r2, r1, .LBB0_38
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	addli r4, r30, -3072
	sext_int2long r[9:10], r1
	loadli.w r28,  -620(r30)
	loadli.w r26,  -1644(r30)
	loadli.w r8,  -2260(r30)
	loadli.w r1,  -3032(r30)
	addli r24, zero, 128
	addli r11, zero, 6
	addli r21, zero, 2
	addli r13, zero, 4
	addli r15, zero, 1
	addli r16, zero, 192
	addli r20, zero, 7
	addli r22, zero, 3
	addli r23, zero, 64
	addli r25, zero, 16
	addli r17, zero, 5
	addli r5, r30, -3096
	storeli.w zero, -3048(r30)              # 4-byte Folded Spill
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	lui r2, 7
	ori r4, r2, 4095
	lui r2, 127
	lui r3, 1048448
	ori r2, r2, 4095
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	storeli.w r2, -3044(r30)                # 4-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split17.thread94
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:86:20
	addli r8, r8, 64
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:73:26
	addli r2, zero, 10
	.loc	1 101 67                        # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:101:67
	addli r26, r10, 1
	loadli.w r14,  32(r30)
	addli r28, r21, 1
	addli r1, r7, 1
	addli r21, zero, 2
	.loc	1 73 26                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:73:26
	xsignal r2, 0
	addli r2, r30, -3056
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:0:26
	addli r16, zero, 192
	addli r17, zero, 5
.LBB0_8:                                # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r4, r30, -3072
	addli.d r[9:10], r[9:10], 1
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	setlt.sl r2, r[9:10], r[2:3]
	loadli.w r3,  -3048(r30)                # 4-byte Folded Reload
	addli r3, r3, 1
	storeli.w r3, -3048(r30)                # 4-byte Folded Spill
	beq r2, zero, .LBB0_38
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	div.s r2, r9, r14
	loadli.w r3,  28(r30)
	addli r4, zero, 8
	addli r12, zero, 153
	addli r18, zero, 8
	addli zero, r30, -3064
	lui r27, 8
	div.s r5, r2, r3
	.loc	1 53 22 is_stmt 1               # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:53:22
	div.s r6, r5, r24
	.loc	1 54 41                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:54:41
	slli r2, r6, 3
	.loc	1 54 30 is_stmt 0               # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:54:30
	sub.s r3, r4, r2
	.loc	1 54 50                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:54:50
	min.s r7, r3, r4
	.loc	1 55 40 is_stmt 1               # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:55:40
	mod.s r3, r5, r7
	.loc	1 55 34 is_stmt 0               # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:55:34
	add.s r2, r2, r3
	.loc	1 95 15 is_stmt 1               # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:95:15
	zext_int2long r[3:4], r2
	store.d r[3:4], 0(zero)                 # 8-byte Folded Spill
	xor zero, zero, zero
	addli r3, zero, 448
	.loc	1 73 26                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:73:26
	addli zero, r30, -3040
	zext_int2long r[3:4], r3
	store.d r[3:4], 0(zero)                 # 8-byte Folded Spill
	xor zero, zero, zero
	bneq r19, r13, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 11
	addli r4, zero, 255
	xwait r3, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:0:26
	addli r4, zero, 255
	beq r19, r15, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r19, r21, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 0
	addli r5, zero, 32
	addli r6, zero, 153
	lui r7, 8
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:89:25
	add.s r2, r8, r3
	add.s r4, r1, r3
	xwait r21, 0
	xwait r17, 0
	lock zero, zero
	.loc	1 73 26                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:89:25
	ds_cfg r22, zero, 0
	.loc	1 81 20                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:81:20
	mod.s r2, r2, r6
	.loc	1 89 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:89:25
	mod.s r4, r4, r16
	ds_cfg r23, zero, 1
	ds_cfg r5, zero, 14
	ds_cfg r23, zero, 13
	.loc	1 81 20                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:81:20
	slli r2, r2, 13
	.loc	1 89 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:89:25
	slli r4, r4, 12
	.loc	1 81 20                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:81:20
	add.s r2, r2, r7
	.loc	1 89 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:89:25
	shuffle_batch r4, r2, r25, 1
	unlock zero
	xsignal r22, 0
	xsignal r13, 0
	bneq r3, r23, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:73:26
	addli r26, r26, 64
	addli r28, r28, 64
	.loc	1 89 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:89:25
	add.s r1, r1, r3
	add.s r8, r8, r3
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:0:25
	slli r6, r6, 7
	addli r3, r30, -3056
	slli r2, r2, 6
	addli r14, zero, 0
	addli r16, zero, 0
	addli r12, zero, 154
	lui r27, 314
	sub.s r5, r5, r6
	store.d r[9:10], 0(r3)                  # 8-byte Folded Spill
	loadli.w r3,  -3048(r30)                # 4-byte Folded Reload
	storeli.w r2, -3084(r30)                # 4-byte Folded Spill
	div.s r5, r5, r7
	mod.s r6, r3, r21
	zext_int2long r[9:10], r5
	slli r2, r5, 6
	addli r5, r30, -3080
	slli r17, r6, 14
	sll.d r[9:10], r[9:10], r11
	.loc	1 73 26 is_stmt 1               # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:73:26
	storeli.w r2, -3088(r30)                # 4-byte Folded Spill
	load.d r[2:3], 8(r30)
	sll.d r[9:10], r[9:10], r15
	store.d r[9:10], 0(r5)                  # 8-byte Folded Spill
	add.ul r[5:6], r[2:3], r[9:10]
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:89:25
	addli r3, zero, 9
	xwait r11, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 32
	ds_cfg r22, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r9, r2, r25, 2
	unlock zero
	xsignal r20, 0
	xsignal r18, 0
	.loc	1 73 26                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:73:26
	addli r14, r14, 1
	bneq r14, r23, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:89:25
	add.s r21, r28, r16
	add.s r10, r26, r16
	add.s r7, r1, r16
	.loc	1 86 20                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:86:20
	mod.s r2, r21, r12
	.loc	1 89 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:89:25
	mod.s r3, r10, r4
	.loc	1 86 20                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:86:20
	slli r2, r2, 11
	.loc	1 89 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:89:25
	slli r9, r3, 12
	.loc	1 86 20                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:86:20
	add.s r2, r2, r27
	beq r19, r20, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:0:20
	bneq r19, r11, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:86:25
	zext_int2long r[3:4], r14
	.loc	1 86 20                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:86:20
	addli r9, zero, 15
	xwait r20, 0
	lock zero, r13
	addli r24, zero, 128
	dma_cfg r15, r15, zero, 0
	sll.d r[3:4], r[3:4], r9
	addli r9, zero, 128
	add.ul r[3:4], r[5:6], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r2, r3, r9, 3
	addli r2, zero, 2048
	addli r4, zero, 255
	dma_cfg r9, r2, r25, 4
	dma_run zero
	unlock r13
	xsignal r11, 0
	.loc	1 73 26 is_stmt 1               # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:73:26
	addli r14, r14, 1
	bneq r14, r23, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:89:25
	bneq r19, r13, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:0:0
	addli r2, zero, 192
	.loc	1 89 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:89:25
	xwait r13, 0
	xwait r18, 0
	lock zero, r15
	addli r3, zero, 2
	mm_cfg r23, r25, r23, 0
	.loc	1 0 0                           # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:0:0
	mod.s r2, r7, r2
	.loc	1 89 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:89:25
	mm_cfg r15, r3, r15, 2
	.loc	1 0 0                           # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:0:0
	slli r2, r2, 12
	.loc	1 89 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:89:25
	beq r16, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r17, r2, r9, 5
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:73:26
	addli r14, r14, 1
	bneq r14, r23, .LBB0_27
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:89:25
	mm r17, r2, r9, 5
.LBB0_26:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r2, zero, 5
	unlock r15
	.loc	1 73 26                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:73:26
	addli r14, r14, 1
	.loc	1 89 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:89:25
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 73 26                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:73:26
	beq r14, r23, .LBB0_5
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:89:25
	addli r16, r16, 1
	j .LBB0_18
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:86:20
	addli r8, r8, 64
	.loc	1 73 26                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:73:26
	beq r19, r13, .LBB0_6
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:0:26
	addli r2, r30, -3056
	addli r4, r30, -3064
	addli r7, zero, 0
	addli r14, zero, 32
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	addli r4, r30, -3096
	sll.d r[5:6], r[2:3], r25
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	and.d r[18:19], r[5:6], r[2:3]
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	addli r2, zero, 1024
	.loc	1 81 25 is_stmt 1               # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:81:25
	sub.sl r[9:10], r[16:17], r[9:10]
	.loc	1 0 0 is_stmt 0                 # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:0:0
	add.s r4, r8, r7
	.loc	1 81 20                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:81:20
	xwait r22, 0
	lock zero, r13
	.loc	1 73 26 is_stmt 1               # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:73:26
	addli r7, r7, 1
	.loc	1 81 20                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:81:20
	dma_cfg r15, r15, zero, 0
	zext_int2long r[2:3], r2
	.loc	1 81 0 is_stmt 0                # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:81:0
	mod.s r4, r4, r12
	.loc	1 81 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:81:25
	div.sl r[2:3], r[9:10], r[2:3]
	.loc	1 81 20                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:81:20
	sll.d r[9:10], r[16:17], r15
	load.d r[16:17], 0(r30)
	add.ul r[9:10], r[16:17], r[9:10]
	.loc	1 81 0                          # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:81:0
	slli r4, r4, 13
	.loc	1 81 20                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:81:20
	dma_cfg zero, r10, zero, 2
	.loc	1 81 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:81:25
	addli zero, r30, -3040
	.loc	1 81 0                          # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:81:0
	add.s r4, r4, r27
	.loc	1 81 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:81:25
	load.d r[16:17], 0(zero)                # 8-byte Folded Reload
	xor zero, zero, zero
	.loc	1 81 20                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:81:20
	dma_cfg r4, r9, r14, 3
	.loc	1 81 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:81:25
	min.sl r[16:17], r[2:3], r[16:17]
	sub.sl r[2:3], r[16:17], r[2:3]
	.loc	1 81 20                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:81:20
	addli r2, r2, 64
	addli r3, zero, 2048
	dma_cfg r24, r3, r2, 4
	dma_run zero
	unlock r13
	xsignal r21, 0
	.loc	1 73 26 is_stmt 1               # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:73:26
	beq r7, r23, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:86:25
	zext_int2long r[9:10], r7
	loadli.w r2,  -3044(r30)                # 4-byte Folded Reload
	sll.d r[9:10], r[9:10], r13
	.loc	1 81 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:81:25
	add.ul r[16:17], r[9:10], r[5:6]
	zext_int2long r[9:10], r2
	setlt.ul r2, r[9:10], r[16:17]
	addli.d r[9:10], r[18:19], 0
	bneq r2, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:0:25
	zext_int2long r[9:10], zero
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r18,  32(r30)
	addli r2, r30, -3056
	.loc	1 73 26 is_stmt 1               # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:73:26
	addli r1, r1, 64
	addli r26, r26, 64
	addli r28, r28, 64
	.loc	1 89 25                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:89:25
	add.s r8, r8, r7
	.loc	1 73 26                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:73:26
	core_id r19
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r14, r18, 0
	j .LBB0_7
.LBB0_34:                               # %.split17.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:86:20
	addli r8, r8, 64
.LBB0_35:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:101:67
	addli r1, r7, 1
	addli r26, r10, 1
	addli r28, r21, 1
	addli r16, zero, 192
	beq r19, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67 is_stmt 0                # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:0:67
	addli r2, r30, -3056
	loadli.w r14,  32(r30)
	addli r21, zero, 2
	addli r17, zero, 5
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	j .LBB0_8
.LBB0_37:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:101:67
	loadli.w r2,  -3088(r30)                # 4-byte Folded Reload
	loadli.w r6,  -3084(r30)                # 4-byte Folded Reload
	addli r12, r30, -3040
	addli r4, zero, 960
	addli r14, zero, 17
	addli r21, zero, 2
	load.d r[9:10], 0(r12)                  # 8-byte Folded Reload
	zext_int2long r[4:5], r4
	addli r12, r30, -3064
	zext_int2long r[2:3], r2
	sext_int2long r[6:7], r6
	load.d r[18:19], 0(r12)                 # 8-byte Folded Reload
	addli r12, r30, -3080
	min.ul r[4:5], r[2:3], r[4:5]
	min.sl r[9:10], r[6:7], r[9:10]
	addli.d r[4:5], r[4:5], 64
	addli.d r[9:10], r[9:10], 64
	sll.d r[18:19], r[18:19], r14
	max.ul r[4:5], r[4:5], r[2:3]
	max.sl r[9:10], r[9:10], r[6:7]
	sub.sl r[2:3], r[4:5], r[2:3]
	zext_int2long r[4:5], r23
	sub.sl r[6:7], r[9:10], r[6:7]
	load.d r[9:10], 16(r30)
	min.ul r[2:3], r[2:3], r[4:5]
	min.sl r[4:5], r[6:7], r[4:5]
	load.d r[6:7], 0(r12)                   # 8-byte Folded Reload
	add.ul r[9:10], r[9:10], r[18:19]
	loadli.w r18,  32(r30)
	.loc	1 73 26 is_stmt 1               # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:73:26
	core_id r19
	.loc	1 101 67                        # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:101:67
	slli r2, r2, 2
	addli r3, zero, 2048
	add.ul r[6:7], r[9:10], r[6:7]
	addli r9, zero, 10
	addli r14, r18, 0
	xwait r9, 0
	addli r9, zero, 5
	lock zero, r9
	dma_cfg r15, zero, zero, 0
	dma_cfg zero, r15, zero, 1
	dma_cfg r7, zero, zero, 2
	dma_cfg r6, r17, r2, 3
	addli r2, zero, 256
	addli r17, zero, 5
	dma_cfg r3, r2, r4, 4
	addli r2, zero, 11
	dma_run zero
	unlock r17
	xsignal r2, 0
	addli r2, r30, -3056
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	j .LBB0_8
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0                          # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:22:0
	xsignal zero, 0
	bneq r19, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:22:0
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
.LBB0_40:
	.loc	1 22 0 epilogue_begin           # cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py:22:0
	addli sp, sp, 3096
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
	.long	3160                            # 0xc58
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
.asciz	"cbcggdm77y47ht73imx7yvd5ih3ennbbh37fydvdzdplrqhikxi2.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/bc" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
