	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/device-4-probe/cache/inductor/5u" "c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py"
	.loc	1 22 0                          # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4224
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:73:26
	core_id r11
	addli r30, sp, 4160
	xsignal_mode_cfg r1
	beq r11, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:0:26
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
	ble.s r2, r1, .LBB0_37
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	addli r4, r30, -4128
	sext_int2long r[9:10], r1
	loadli.w r5,  -1024(r30)
	loadli.w r28,  -2048(r30)
	loadli.w r12,  -3072(r30)
	loadli.w r1,  -4096(r30)
	addli r14, zero, 1
	addli r16, zero, 6
	addli r15, zero, 5
	addli r18, zero, 4
	addli r20, zero, 255
	addli r22, zero, 7
	addli r24, zero, 3
	addli r25, zero, 64
	addli r26, zero, 32
	addli r13, zero, 128
	addli r17, zero, 2
	lui r19, 5
	addli r23, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	lui r2, 132
	addli r3, zero, 16
	ori r21, r2, 2048
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:73:26
	addli r2, zero, 10
	.loc	1 101 67 is_stmt 1              # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:101:67
	addli r1, r9, 1
	addli r28, r17, 1
	addli r5, r8, 1
	addli r15, zero, 5
	addli r17, zero, 2
	lui r19, 5
	.loc	1 73 26                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:73:26
	xsignal r2, 0
	addli r2, r30, -4104
	loadli.w r23,  -4108(r30)               # 4-byte Folded Reload
.LBB0_6:                                # %.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:0:26
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
.LBB0_7:                                # %.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, r30, -4128
	addli.d r[9:10], r[9:10], 1
	addli r23, r23, 1
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	setlt.sl r2, r[9:10], r[6:7]
	beq r2, zero, .LBB0_37
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	loadli.w r2,  32(r30)
	loadli.w r4,  28(r30)
	.loc	1 54 50 is_stmt 1               # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:54:50
	addli r8, zero, 8
	.loc	1 73 26                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:73:26
	addli r27, r30, -4120
	div.s r2, r9, r2
	div.s r6, r2, r4
	.loc	1 53 22                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:53:22
	div.s r7, r6, r3
	.loc	1 54 41                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:54:41
	slli r2, r7, 3
	.loc	1 54 30 is_stmt 0               # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:54:30
	sub.s r4, r14, r2
	.loc	1 54 50                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:54:50
	min.s r8, r4, r8
	.loc	1 55 40 is_stmt 1               # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:55:40
	mod.s r4, r6, r8
	.loc	1 55 34 is_stmt 0               # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:55:34
	add.s r4, r2, r4
	.loc	1 95 15 is_stmt 1               # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:95:15
	zext_int2long r[2:3], r4
	.loc	1 73 26                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:73:26
	store.d r[2:3], 0(r27)                  # 8-byte Folded Spill
	bneq r11, r18, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:0:26
	beq r11, r14, .LBB0_29
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r11, r17, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 1
	addli r3, zero, 16
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:81:20
	mod.s r4, r12, r20
	.loc	1 89 25                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:89:25
	mod.s r6, r1, r20
	xwait r17, 0
	xwait r15, 0
	lock zero, zero
	addli r1, r1, 1
	.loc	1 81 20                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:81:20
	addli r12, r12, 1
	.loc	1 89 25                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:89:25
	ds_cfg r24, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r3, zero, 13
	.loc	1 81 20                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:81:20
	slli r4, r4, 11
	.loc	1 89 25                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:89:25
	slli r6, r6, 10
	.loc	1 81 20                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:81:20
	add.s r4, r4, r19
	.loc	1 89 25                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:89:25
	shuffle_batch r6, r4, r26, 1
	.loc	1 73 26                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:73:26
	andi r4, r2, 1
	addli r2, zero, 0
	.loc	1 89 25                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:89:25
	unlock zero
	xsignal r24, 0
	xsignal r18, 0
	bneq r4, zero, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:73:26
	addli r28, r28, 2
	addli r5, r5, 2
	.loc	1 89 25                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:89:25
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:0:25
	slli r7, r7, 4
	addli r2, r30, -4104
	slli r3, r4, 4
	storeli.w r23, -4108(r30)               # 4-byte Folded Spill
	sub.s r6, r6, r7
	mod.s r7, r23, r15
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	storeli.w r3, -4144(r30)                # 4-byte Folded Spill
	addli r15, zero, 1
	addli r2, zero, 0
	addli r23, zero, 0
	div.s r6, r6, r8
	slli r19, r7, 12
	zext_int2long r[8:9], r6
	slli r6, r6, 6
	sll.d r[3:4], r[8:9], r16
	storeli.w r6, -4152(r30)                # 4-byte Folded Spill
	addli r6, r30, -4136
	store.d r[3:4], 0(r6)                   # 8-byte Folded Spill
	.loc	1 73 26 is_stmt 1               # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:73:26
	load.d r[6:7], 8(r30)
	sll.d r[8:9], r[3:4], r15
	addli r3, zero, 16
	add.ul r[6:7], r[6:7], r[8:9]
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:89:25
	addli r2, zero, 9
	xwait r16, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 8
	ds_cfg r24, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r25, zero, 13
	shuffle_coa r4, r27, r26, 2
	unlock zero
	xsignal r22, 0
	xsignal r2, 0
	.loc	1 73 26                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:73:26
	andi r2, r15, 1
	beq r2, zero, .LBB0_28
.LBB0_17:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:89:25
	addli r23, r23, 1
	addli r2, zero, 8192
	addli r15, zero, 0
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r8, r5, r23
	add.s r17, r28, r23
	add.s r9, r1, r23
	.loc	1 86 20                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:86:20
	mod.s r4, r8, r20
	.loc	1 89 25                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:89:25
	mod.s r10, r17, r20
	.loc	1 86 20                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:86:20
	slli r11, r4, 12
	.loc	1 89 25                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:89:25
	slli r4, r10, 12
	.loc	1 86 20                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:86:20
	add.s r27, r11, r21
	.loc	1 73 26                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:73:26
	core_id r11
	beq r11, r22, .LBB0_16
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:0:26
	bneq r11, r16, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 20 is_stmt 1               # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:86:20
	zext_int2long r[10:11], r2
	xwait r22, 0
	lock zero, r18
	addli r2, zero, 256
	dma_cfg r14, r14, zero, 0
	add.ul r[10:11], r[6:7], r[10:11]
	dma_cfg zero, r11, zero, 2
	dma_cfg r27, r10, r13, 3
	.loc	1 73 26                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:73:26
	core_id r11
	.loc	1 86 20                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:86:20
	dma_cfg r13, r2, r26, 4
	dma_run zero
	unlock r18
	xsignal r16, 0
	.loc	1 73 26                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:73:26
	andi r2, r15, 1
	bneq r2, zero, .LBB0_17
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:0:26
	andi r2, r15, 1
	.loc	1 89 25 is_stmt 1               # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:89:25
	bneq r11, r18, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 25 is_stmt 0                # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:0:25
	mod.s r10, r9, r20
	.loc	1 89 25                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:89:25
	addli r15, zero, 8
	xwait r18, 0
	xwait r15, 0
	lock zero, r14
	mm_cfg r25, r26, r3, 0
	slli r15, r10, 10
	addli r10, zero, 2
	mm_cfg r14, r10, r14, 2
	beq r23, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r19, r15, r4, 5
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:73:26
	bneq r2, zero, .LBB0_17
	j .LBB0_32
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:89:25
	mm r19, r15, r4, 5
.LBB0_26:                               # %.thread6.thread89
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r4, zero, 5
	unlock r14
	xsignal r4, 0
	addli r4, zero, 9
	xsignal r4, 0
	.loc	1 73 26                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:73:26
	bneq r2, zero, .LBB0_17
# %bb.27:                               # %.split17.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:86:20
	addli r12, r12, 2
	j .LBB0_5
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r12, r12, 2
	.loc	1 73 26                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:73:26
	beq r11, r18, .LBB0_5
	j .LBB0_33
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:0:26
	addli r6, r30, -4120
	addli r2, r30, -4104
	load.d r[3:4], 0(r6)                    # 8-byte Folded Reload
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	addli r2, zero, 11
	load.d r[8:9], 0(r30)
	sll.d r[6:7], r[3:4], r2
	addli r2, zero, 1
	addli r4, zero, 0
	addli r3, zero, 16
	add.ul r[6:7], r[8:9], r[6:7]
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:81:20
	mod.s r8, r12, r20
	.loc	1 86 25                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:86:25
	zext_int2long r[9:10], r4
	.loc	1 81 20                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:81:20
	xwait r24, 0
	lock zero, r18
	addli r12, r12, 1
	dma_cfg r14, r14, zero, 0
	sll.d r[9:10], r[9:10], r14
	slli r4, r8, 11
	add.ul r[8:9], r[6:7], r[9:10]
	add.s r4, r4, r19
	dma_cfg zero, r9, zero, 2
	dma_cfg r4, r8, r25, 3
	.loc	1 73 26                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:73:26
	andi r8, r2, 1
	addli r4, zero, 32
	addli r2, zero, 0
	.loc	1 81 20                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:81:20
	dma_cfg r13, r13, r3, 4
	dma_run zero
	unlock r18
	xsignal r17, 0
	.loc	1 73 26                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:73:26
	bneq r8, zero, .LBB0_30
# %bb.31:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:0:26
	addli r2, r30, -4104
	.loc	1 73 26                         # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:73:26
	addli r1, r1, 2
	addli r28, r28, 2
	addli r5, r5, 2
	j .LBB0_6
.LBB0_32:                               # %.split17.thread88
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:86:20
	addli r12, r12, 2
.LBB0_33:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:0:20
	loadli.w r23,  -4108(r30)               # 4-byte Folded Reload
	.loc	1 101 67 is_stmt 1              # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:101:67
	addli r1, r9, 1
	addli r28, r17, 1
	addli r5, r8, 1
	beq r11, zero, .LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:0:67
	addli r2, r30, -4104
	addli r15, zero, 5
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:101:67
	loadli.w r2,  -4152(r30)                # 4-byte Folded Reload
	zext_int2long r[6:7], r25
	zext_int2long r[10:11], zero
	addli r4, r30, -4120
	addli r15, zero, 5
	zext_int2long r[8:9], r2
	addli r2, r30, -4160
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	min.ul r[6:7], r[8:9], r[6:7]
	addli r2, r30, -4152
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	loadli.w r2,  -4144(r30)                # 4-byte Folded Reload
	sext_int2long r[6:7], r2
	addli r2, r30, -4144
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -4152
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 64
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -4144
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	min.sl r[10:11], r[6:7], r[10:11]
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -4152
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	max.ul r[10:11], r[10:11], r[8:9]
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -4144
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 16
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -4152
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	addli r2, r30, -4144
	sub.sl r[8:9], r[10:11], r[8:9]
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	addli r2, r30, -4152
	max.sl r[10:11], r[10:11], r[6:7]
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -4160
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	addli r2, r30, -4144
	min.ul r[8:9], r[8:9], r[10:11]
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -4152
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	sub.sl r[6:7], r[8:9], r[6:7]
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	load.d r[6:7], 0(r4)                    # 8-byte Folded Reload
	addli r2, zero, 12
	sll.d r[10:11], r[6:7], r2
	zext_int2long r[6:7], r3
	addli r2, r30, -4120
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	load.d r[6:7], 16(r30)
	addli r2, r30, -4160
	add.ul r[6:7], r[6:7], r[10:11]
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -4136
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4152
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4120
	sll.d r[6:7], r[6:7], r14
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	min.sl r[8:9], r[8:9], r[10:11]
	.loc	1 73 26 is_stmt 1               # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:73:26
	core_id r11
	.loc	1 101 67                        # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:101:67
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -4160
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	addli r2, zero, 10
	xwait r2, 0
	lock zero, r15
	addli r2, r30, -4144
	dma_cfg r14, zero, zero, 0
	add.ul r[6:7], r[8:9], r[6:7]
	dma_cfg zero, r14, zero, 1
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	dma_cfg r7, zero, zero, 2
	slli r2, r8, 2
	dma_cfg r6, r19, r2, 3
	addli r2, zero, 256
	load.d r[6:7], 0(r4)                    # 8-byte Folded Reload
	dma_cfg r2, r2, r6, 4
	addli r2, zero, 11
	dma_run zero
	unlock r15
	xsignal r2, 0
	addli r2, r30, -4104
.LBB0_36:                               # %.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:0:67
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r17, zero, 2
	lui r19, 5
	j .LBB0_7
.LBB0_37:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:22:0
	xsignal zero, 0
	bneq r11, zero, .LBB0_39
# %bb.38:
	.loc	1 0 0 is_stmt 0                 # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:22:0
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
	.loc	1 22 0 epilogue_begin           # c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py:22:0
	addli sp, sp, 4160
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
	.long	4224                            # 0x1080
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
.asciz	"c5uggere3folqdkxp247jqs74e6kt5h7576ukajvmkwyoflq7tyr.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/device-4-probe/cache/inductor/5u" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
