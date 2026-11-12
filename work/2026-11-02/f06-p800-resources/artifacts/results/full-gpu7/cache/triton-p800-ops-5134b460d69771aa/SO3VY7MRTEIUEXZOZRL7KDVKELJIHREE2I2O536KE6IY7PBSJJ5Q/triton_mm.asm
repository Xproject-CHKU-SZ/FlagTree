	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/b2" "cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py"
	.loc	1 22 0                          # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3712
	addli r30, sp, 3648
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:73:26
	core_id r7
	loadli.w r27,  32(r30)
	xsignal_mode_cfg r1
	beq r7, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:0:26
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
	ble.s r2, r1, .LBB0_39
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	addli r4, r30, -3624
	sext_int2long r[13:14], r1
	loadli.w r28,  -768(r30)
	loadli.w r26,  -1792(r30)
	loadli.w r8,  -2560(r30)
	loadli.w r1,  -3584(r30)
	addli r9, zero, 128
	addli r10, zero, 4
	addli r12, zero, 6
	addli r11, zero, 5
	addli r15, zero, 1
	addli r16, zero, 255
	addli r17, zero, 191
	addli r19, zero, 7
	addli r18, zero, 3
	addli r22, zero, 64
	addli r23, zero, 32
	addli r20, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r3, zero, 2047
	addli r4, r30, -3648
	lui r2, 1048572
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	j .LBB0_10
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 73 26                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:73:26
	addli r2, zero, 10
	.loc	1 101 67 is_stmt 1              # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:101:67
	addli r1, r5, 1
	addli r26, r27, 1
	addli r28, r20, 1
	addli r11, zero, 5
.LBB0_6:                                # %.thread96
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 0 is_stmt 0                 # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:0:0
	xsignal r2, 0
.LBB0_7:                                # %.thread96
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r2, r30, -3600
	load.d r[13:14], 0(r2)                  # 8-byte Folded Reload
	loadli.w r27,  32(r30)
.LBB0_8:                                # %.thread96
                                        #   in Loop: Header=BB0_10 Depth=1
	loadli.w r20,  -3604(r30)               # 4-byte Folded Reload
.LBB0_9:                                # %.thread96
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r4, r30, -3624
	addli.d r[13:14], r[13:14], 1
	addli r20, r20, 1
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	setlt.sl r2, r[13:14], r[2:3]
	beq r2, zero, .LBB0_39
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_20 Depth 2
	div.s r2, r13, r27
	loadli.w r3,  28(r30)
	.loc	1 54 50 is_stmt 1               # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:54:50
	addli r7, zero, 8
	.loc	1 73 26                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:73:26
	core_id r4
	div.s r5, r2, r3
	.loc	1 53 22                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:53:22
	div.s r6, r5, r9
	.loc	1 54 41                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:54:41
	slli r2, r6, 3
	.loc	1 54 30 is_stmt 0               # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:54:30
	sub.s r3, r10, r2
	.loc	1 54 50                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:54:50
	min.s r7, r3, r7
	.loc	1 55 40 is_stmt 1               # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:55:40
	mod.s r3, r5, r7
	.loc	1 55 34 is_stmt 0               # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:55:34
	add.s r2, r2, r3
	addli r3, r30, -3616
	.loc	1 95 15 is_stmt 1               # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:95:15
	zext_int2long r[24:25], r2
	store.d r[24:25], 0(r3)                 # 8-byte Folded Spill
	addli r3, zero, 96
	zext_int2long r[24:25], r3
	.loc	1 73 26                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:73:26
	addli r3, r30, -3592
	store.d r[24:25], 0(r3)                 # 8-byte Folded Spill
	bneq r4, r10, .LBB0_12
# %bb.11:                               # %.thread
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r3, zero, 11
	xwait r3, 0
	j .LBB0_17
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 26 is_stmt 0                # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:0:26
	beq r4, r15, .LBB0_31
# %bb.13:                               #   in Loop: Header=BB0_10 Depth=1
	addli r3, zero, 2
	bneq r4, r3, .LBB0_17
# %bb.14:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r3, zero, 0
	addli r5, zero, 2
	lui r6, 10
.LBB0_15:                               # %.thread.us21
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:89:25
	add.s r2, r8, r3
	add.s r4, r1, r3
	xwait r5, 0
	xwait r11, 0
	lock zero, zero
	.loc	1 73 26                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:89:25
	ds_cfg r18, zero, 0
	.loc	1 81 20                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:81:20
	mod.s r2, r2, r17
	.loc	1 89 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:89:25
	mod.s r4, r4, r16
	ds_cfg r22, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r23, zero, 13
	.loc	1 81 20                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:81:20
	slli r2, r2, 12
	.loc	1 89 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:89:25
	slli r4, r4, 11
	.loc	1 81 20                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:81:20
	add.s r2, r2, r6
	.loc	1 89 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:89:25
	shuffle_batch r4, r2, r23, 1
	unlock zero
	xsignal r18, 0
	xsignal r10, 0
	bneq r3, r10, .LBB0_15
# %bb.16:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 73 26                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:73:26
	addli r26, r26, 4
	addli r28, r28, 4
	.loc	1 89 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:89:25
	add.s r1, r1, r3
	add.s r8, r8, r3
	.loc	1 73 26                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:73:26
	core_id r7
	.loc	1 89 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:89:25
	j .LBB0_9
.LBB0_17:                               # %.split.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 25 is_stmt 0                # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:0:25
	addli r3, r30, -3600
	slli r2, r2, 5
	mod.s r4, r20, r11
	addli r24, zero, 0
	addli r21, zero, 5
	addli r11, zero, 0
	storeli.w r20, -3604(r30)               # 4-byte Folded Spill
	store.d r[13:14], 0(r3)                 # 8-byte Folded Spill
	slli r3, r6, 7
	storeli.w r2, -3636(r30)                # 4-byte Folded Spill
	sub.s r3, r5, r3
	div.s r3, r3, r7
	slli r25, r4, 13
	addli r4, r30, -3632
	.loc	1 73 26 is_stmt 1               # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:73:26
	core_id r7
	zext_int2long r[5:6], r3
	slli r2, r3, 6
	sll.d r[5:6], r[5:6], r12
	storeli.w r2, -3640(r30)                # 4-byte Folded Spill
	load.d r[2:3], 8(r30)
	sll.d r[5:6], r[5:6], r15
	add.ul r[13:14], r[2:3], r[5:6]
	store.d r[5:6], 0(r4)                   # 8-byte Folded Spill
	j .LBB0_20
.LBB0_18:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 89 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:89:25
	addli r3, zero, 9
	xwait r12, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r18, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r2, r6, r23, 2
	addli r2, zero, 8
	unlock zero
	xsignal r19, 0
	xsignal r2, 0
	.loc	1 73 26                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:73:26
	addli r24, r24, 1
	beq r24, r10, .LBB0_30
.LBB0_19:                               # %.split.backedge
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 89 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:89:25
	addli r11, r11, 1
.LBB0_20:                               # %.split
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r20, r28, r11
	add.s r27, r26, r11
	add.s r5, r1, r11
	.loc	1 86 20                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:86:20
	mod.s r2, r20, r17
	.loc	1 89 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:89:25
	mod.s r3, r27, r16
	.loc	1 86 20                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:86:20
	slli r4, r2, 12
	.loc	1 89 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:89:25
	slli r2, r3, 12
	.loc	1 86 20                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:86:20
	lui r3, 201
	add.s r6, r4, r3
	beq r7, r19, .LBB0_18
# %bb.21:                               # %.split
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 20 is_stmt 0                # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:0:20
	bneq r7, r12, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 86 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:86:25
	zext_int2long r[2:3], r24
	.loc	1 86 20                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:86:20
	addli r4, zero, 16
	xwait r19, 0
	lock zero, r10
	dma_cfg r15, r15, zero, 0
	sll.d r[2:3], r[2:3], r4
	add.ul r[2:3], r[13:14], r[2:3]
	dma_cfg zero, r3, zero, 2
	dma_cfg r6, r2, r9, 3
	addli r2, zero, 2048
	dma_cfg r9, r2, r23, 4
	dma_run zero
	unlock r10
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:73:26
	addli r24, r24, 1
	bneq r24, r10, .LBB0_19
	j .LBB0_30
.LBB0_23:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 89 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:89:25
	bneq r7, r10, .LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 0 is_stmt 0                 # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:0:0
	mod.s r3, r5, r16
	.loc	1 89 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:89:25
	addli r4, zero, 8
	xwait r10, 0
	xwait r4, 0
	lock zero, r15
	addli r4, zero, 2
	mm_cfg r22, r23, r23, 0
	mm_cfg r15, r4, r15, 2
	.loc	1 0 0                           # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:0:0
	slli r3, r3, 11
	.loc	1 89 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:89:25
	beq r11, zero, .LBB0_27
# %bb.25:                               # %.preheader8
                                        #   in Loop: Header=BB0_20 Depth=2
	mm_acc r25, r3, r2, 5
	j .LBB0_28
.LBB0_26:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 73 26 is_stmt 1               # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:73:26
	addli r24, r24, 1
	bneq r24, r10, .LBB0_19
	j .LBB0_36
.LBB0_27:                               # %.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 89 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:89:25
	mm r25, r3, r2, 5
.LBB0_28:                               # %.thread6.thread93
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 73 26                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:73:26
	addli r24, r24, 1
	.loc	1 89 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:89:25
	addli r2, zero, 9
	unlock r15
	xsignal r21, 0
	xsignal r2, 0
	.loc	1 73 26                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:73:26
	bneq r24, r10, .LBB0_19
# %bb.29:                               # %.split17.thread95
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 86 20                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:86:20
	addli r8, r8, 4
	j .LBB0_5
.LBB0_30:                               # %.split17
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r8, r8, 4
	.loc	1 73 26                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:73:26
	beq r7, r10, .LBB0_5
	j .LBB0_37
.LBB0_31:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 26 is_stmt 0                # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:0:26
	addli r5, r30, -3616
	addli r2, r30, -3600
	storeli.w r20, -3604(r30)               # 4-byte Folded Spill
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	store.d r[13:14], 0(r2)                 # 8-byte Folded Spill
	addli r2, zero, 12
	addli r5, zero, 0
	sll.d r[13:14], r[3:4], r2
	addli r4, r30, -3648
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	and.d r[2:3], r[13:14], r[2:3]
	j .LBB0_33
.LBB0_32:                               # %.thread.us
                                        #   in Loop: Header=BB0_33 Depth=2
	.loc	1 81 25 is_stmt 1               # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:81:25
	sub.sl r[24:25], r[6:7], r[24:25]
	zext_int2long r[20:21], r9
	.loc	1 0 0 is_stmt 0                 # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:0:0
	add.s r4, r8, r5
	.loc	1 81 20                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:81:20
	sll.d r[6:7], r[6:7], r15
	xwait r18, 0
	lock zero, r10
	.loc	1 81 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:81:25
	addli r11, r30, -3592
	.loc	1 73 26 is_stmt 1               # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:73:26
	addli r5, r5, 1
	.loc	1 81 20                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:81:20
	dma_cfg r15, r15, zero, 0
	.loc	1 81 25 is_stmt 0               # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:81:25
	div.sl r[20:21], r[24:25], r[20:21]
	.loc	1 81 20                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:81:20
	load.d r[24:25], 0(r30)
	.loc	1 81 0                          # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:81:0
	mod.s r4, r4, r17
	.loc	1 81 20                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:81:20
	add.ul r[6:7], r[24:25], r[6:7]
	dma_cfg zero, r7, zero, 2
	.loc	1 81 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:81:25
	load.d r[24:25], 0(r11)                 # 8-byte Folded Reload
	.loc	1 81 0                          # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:81:0
	slli r4, r4, 12
	lui r11, 10
	add.s r4, r4, r11
	.loc	1 81 20                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:81:20
	dma_cfg r4, r6, r22, 3
	addli r4, zero, 256
	.loc	1 81 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:81:25
	min.sl r[24:25], r[20:21], r[24:25]
	sub.sl r[20:21], r[24:25], r[20:21]
	.loc	1 81 20                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:81:20
	addli r11, r20, 32
	dma_cfg r9, r4, r11, 4
	addli r11, zero, 5
	addli r4, zero, 2
	dma_run zero
	unlock r10
	xsignal r4, 0
	.loc	1 73 26 is_stmt 1               # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:73:26
	beq r5, r10, .LBB0_35
.LBB0_33:                               # %.thread.us
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:86:25
	zext_int2long r[6:7], r5
	addli r4, zero, 16383
	sll.d r[6:7], r[6:7], r11
	zext_int2long r[24:25], r4
	.loc	1 81 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:81:25
	add.ul r[6:7], r[6:7], r[13:14]
	setlt.ul r4, r[24:25], r[6:7]
	addli.d r[24:25], r[2:3], 0
	bneq r4, zero, .LBB0_32
# %bb.34:                               # %.thread.us
                                        #   in Loop: Header=BB0_33 Depth=2
	.loc	1 0 25 is_stmt 0                # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:0:25
	zext_int2long r[24:25], zero
	j .LBB0_32
.LBB0_35:                               # %.split17.us
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r2, r30, -3600
	.loc	1 73 26 is_stmt 1               # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:73:26
	addli r1, r1, 4
	addli r26, r26, 4
	addli r28, r28, 4
	.loc	1 89 25                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:89:25
	add.s r8, r8, r5
	.loc	1 73 26                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:73:26
	core_id r7
	load.d r[13:14], 0(r2)                  # 8-byte Folded Reload
	j .LBB0_8
.LBB0_36:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 86 20                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:86:20
	addli r8, r8, 4
.LBB0_37:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 101 67                        # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:101:67
	addli r1, r5, 1
	addli r26, r27, 1
	addli r28, r20, 1
	addli r11, zero, 5
	bneq r7, zero, .LBB0_7
# %bb.38:                               #   in Loop: Header=BB0_10 Depth=1
	loadli.w r2,  -3640(r30)                # 4-byte Folded Reload
	addli r4, zero, 960
	loadli.w r6,  -3636(r30)                # 4-byte Folded Reload
	addli r20, r30, -3592
	zext_int2long r[4:5], r4
	load.d r[13:14], 0(r20)                 # 8-byte Folded Reload
	load.d r[20:21], 16(r30)
	zext_int2long r[2:3], r2
	sext_int2long r[6:7], r6
	min.ul r[4:5], r[2:3], r[4:5]
	min.sl r[13:14], r[6:7], r[13:14]
	addli.d r[4:5], r[4:5], 64
	addli.d r[13:14], r[13:14], 32
	max.ul r[4:5], r[4:5], r[2:3]
	max.sl r[13:14], r[13:14], r[6:7]
	sub.sl r[2:3], r[4:5], r[2:3]
	zext_int2long r[4:5], r22
	min.ul r[2:3], r[2:3], r[4:5]
	sub.sl r[4:5], r[13:14], r[6:7]
	addli r7, r30, -3616
	addli r6, zero, 16
	load.d r[13:14], 0(r7)                  # 8-byte Folded Reload
	slli r2, r2, 2
	addli r3, zero, 2048
	sll.d r[6:7], r[13:14], r6
	zext_int2long r[13:14], r23
	add.ul r[6:7], r[20:21], r[6:7]
	addli r20, r30, -3632
	min.sl r[4:5], r[4:5], r[13:14]
	load.d r[13:14], 0(r20)                 # 8-byte Folded Reload
	add.ul r[6:7], r[6:7], r[13:14]
	addli r13, zero, 10
	xwait r13, 0
	lock zero, r11
	dma_cfg r15, zero, zero, 0
	dma_cfg zero, r15, zero, 1
	dma_cfg r7, zero, zero, 2
	dma_cfg r6, r25, r2, 3
	addli r2, zero, 256
	.loc	1 73 26                         # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:73:26
	core_id r7
	.loc	1 101 67                        # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:101:67
	dma_cfg r3, r2, r4, 4
	addli r2, zero, 11
	dma_run zero
	unlock r11
	j .LBB0_6
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0                          # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:22:0
	xsignal zero, 0
	bneq r7, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:22:0
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
.LBB0_41:
	.loc	1 22 0 epilogue_begin           # cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py:22:0
	addli sp, sp, 3648
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
	.long	3712                            # 0xe80
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
.asciz	"cb2wzomhcvmdvz5n3dvo2eoi2neqrk4gip4w5cdxrdnqdzyxprwh.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/b2" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
