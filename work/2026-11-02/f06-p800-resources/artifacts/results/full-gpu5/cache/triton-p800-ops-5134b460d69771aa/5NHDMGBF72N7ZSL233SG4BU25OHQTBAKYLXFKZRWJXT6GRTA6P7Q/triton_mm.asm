	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/yl" "cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py"
	.loc	1 22 0                          # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3024
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:73:26
	core_id r7
	addli r30, sp, 2960
	xsignal_mode_cfg r1
	beq r7, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -624(r30)
	storeli.w zero, -1268(r30)
	storeli.w zero, -1888(r30)
	storeli.w zero, -2912(r30)
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
	ble.s r3, r1, .LBB0_36
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r3
	addli r4, r30, -2944
	loadli.w r28,  -624(r30)
	loadli.w r26,  -1268(r30)
	loadli.w r8,  -1888(r30)
	addli r11, zero, 16
	addli r6, zero, 1
	addli r12, zero, 6
	addli r15, zero, 5
	addli r14, zero, 4
	addli r16, zero, 2
	addli r27, zero, 155
	lui r20, 82
	addli r21, zero, 7
	addli r24, zero, 32
	addli r13, zero, 154
	lui r17, 5
	addli r22, zero, 3
	addli r25, zero, 128
	storeli.w zero, -2916(r30)              # 4-byte Folded Spill
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sext_int2long r[4:5], r1
	loadli.w r1,  -2912(r30)
	j .LBB0_10
.LBB0_5:                                # %.split17.thread90
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 86 20 is_stmt 1               # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:86:20
	addli r8, r8, 2
	addli r11, zero, 16
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 73 26                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:73:26
	addli r2, zero, 10
	.loc	1 101 67                        # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:101:67
	addli r1, r25, 1
	addli r26, r15, 1
	addli r28, r13, 1
	.loc	1 73 26                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:73:26
	xsignal r2, 0
	addli r2, r30, -2928
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
.LBB0_7:                                #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 26 is_stmt 0                # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:0:26
	addli r15, zero, 5
.LBB0_8:                                # %.thread91
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r13, zero, 154
	lui r17, 5
	addli r22, zero, 3
	addli r25, zero, 128
.LBB0_9:                                # %.thread91
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r9, r30, -2944
	addli.d r[4:5], r[4:5], 1
	load.d r[2:3], 0(r9)                    # 8-byte Folded Reload
	setlt.sl r2, r[4:5], r[2:3]
	loadli.w r3,  -2916(r30)                # 4-byte Folded Reload
	addli r3, r3, 1
	storeli.w r3, -2916(r30)                # 4-byte Folded Spill
	beq r2, zero, .LBB0_36
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_19 Depth 2
	loadli.w r2,  32(r30)
	addli r3, r30, -2928
	store.d r[4:5], 0(r3)                   # 8-byte Folded Spill
	div.s r3, r4, r2
	loadli.w r2,  28(r30)
	div.s r4, r3, r2
	.loc	1 54 50 is_stmt 1               # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:54:50
	addli r2, zero, 8
	.loc	1 53 22                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:53:22
	div.s r5, r4, r11
	.loc	1 54 41                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:54:41
	slli r3, r5, 3
	.loc	1 54 30 is_stmt 0               # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:54:30
	sub.s r9, r6, r3
	.loc	1 54 50                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:54:50
	min.s r9, r9, r2
	.loc	1 73 26 is_stmt 1               # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:73:26
	addli r2, r30, -2936
	.loc	1 55 40                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:55:40
	mod.s r10, r4, r9
	.loc	1 55 34 is_stmt 0               # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:55:34
	add.s r3, r3, r10
	.loc	1 95 15 is_stmt 1               # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:95:15
	zext_int2long r[18:19], r3
	.loc	1 73 26                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:73:26
	store.d r[18:19], 0(r2)                 # 8-byte Folded Spill
	bneq r7, r14, .LBB0_12
# %bb.11:                               # %.thread
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r2, zero, 11
	addli r18, zero, 64
	addli r19, zero, 256
	xwait r2, 0
	j .LBB0_17
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 26 is_stmt 0                # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:0:26
	beq r7, r6, .LBB0_30
# %bb.13:                               #   in Loop: Header=BB0_10 Depth=1
	addli r18, zero, 64
	addli r19, zero, 256
	bneq r7, r16, .LBB0_17
# %bb.14:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r4, zero, 1
	addli r5, zero, 255
.LBB0_15:                               # %.thread.us21
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:81:20
	mod.s r2, r8, r13
	.loc	1 89 25                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:89:25
	mod.s r3, r1, r5
	xwait r16, 0
	xwait r15, 0
	lock zero, zero
	addli r1, r1, 1
	.loc	1 81 20                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:81:20
	addli r8, r8, 1
	.loc	1 89 25                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:89:25
	ds_cfg r16, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r11, zero, 13
	.loc	1 81 20                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:81:20
	slli r2, r2, 11
	.loc	1 89 25                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:89:25
	slli r3, r3, 11
	.loc	1 81 20                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:81:20
	add.s r2, r2, r17
	.loc	1 89 25                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:89:25
	shuffle_batch r3, r2, r24, 1
	.loc	1 73 26                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:73:26
	andi r2, r4, 1
	addli r4, zero, 0
	.loc	1 89 25                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:89:25
	unlock zero
	xsignal r22, 0
	xsignal r14, 0
	bneq r2, zero, .LBB0_15
# %bb.16:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 25 is_stmt 0                # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:0:25
	addli r2, r30, -2928
	.loc	1 73 26 is_stmt 1               # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:73:26
	addli r26, r26, 2
	addli r28, r28, 2
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	.loc	1 89 25                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:89:25
	j .LBB0_9
.LBB0_17:                               # %.split.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 25 is_stmt 0                # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:0:25
	slli r5, r5, 4
	loadli.w r2,  -2916(r30)                # 4-byte Folded Reload
	addli r10, zero, 0
	addli r11, zero, 1
	sub.s r4, r4, r5
	mod.s r5, r2, r15
	slli r2, r3, 4
	div.s r4, r4, r9
	storeli.w r2, -2956(r30)                # 4-byte Folded Spill
	slli r17, r5, 12
	zext_int2long r[6:7], r4
	slli r2, r4, 6
	addli r4, r30, -2952
	sll.d r[6:7], r[6:7], r12
	.loc	1 73 26 is_stmt 1               # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:73:26
	storeli.w r2, -2960(r30)                # 4-byte Folded Spill
	load.d r[2:3], 8(r30)
	sll.d r[22:23], r[6:7], r16
	addli r6, zero, 1
	core_id r7
	store.d r[22:23], 0(r4)                 # 8-byte Folded Spill
	add.ul r[4:5], r[2:3], r[22:23]
	addli r23, zero, 160
	addli r22, zero, 0
	j .LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:89:25
	addli r2, zero, 9
	xwait r12, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 8
	ds_cfg r16, zero, 0
	ds_cfg r18, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r18, zero, 13
	shuffle_coa r3, r9, r24, 2
	unlock zero
	xsignal r21, 0
	xsignal r2, 0
	.loc	1 73 26                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:73:26
	andi r2, r11, 1
	bneq r2, zero, .LBB0_28
	j .LBB0_29
.LBB0_19:                               # %.split
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:89:25
	add.s r13, r28, r22
	add.s r15, r26, r22
	add.s r25, r1, r22
	.loc	1 86 20                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:86:20
	mod.s r2, r13, r27
	.loc	1 89 25                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:89:25
	mod.s r3, r15, r23
	.loc	1 86 20                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:86:20
	slli r2, r2, 13
	.loc	1 89 25                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:89:25
	slli r3, r3, 13
	.loc	1 86 20                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:86:20
	add.s r9, r2, r20
	beq r7, r21, .LBB0_18
# %bb.20:                               # %.split
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 20 is_stmt 0                # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:0:20
	bneq r7, r12, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 86 20                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:86:20
	zext_int2long r[2:3], r10
	xwait r21, 0
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	add.ul r[2:3], r[4:5], r[2:3]
	dma_cfg zero, r3, zero, 2
	dma_cfg r9, r2, r19, 3
	addli r2, zero, 512
	dma_cfg r19, r2, r24, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:73:26
	andi r2, r11, 1
	bneq r2, zero, .LBB0_28
	j .LBB0_29
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 26 is_stmt 0                # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:0:26
	andi r10, r11, 1
	.loc	1 89 25 is_stmt 1               # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:89:25
	bneq r7, r14, .LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 25 is_stmt 0                # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:0:25
	addli r2, zero, 255
	.loc	1 89 25                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:89:25
	addli r9, zero, 8
	xwait r14, 0
	mod.s r2, r25, r2
	xwait r9, 0
	lock zero, r6
	slli r9, r2, 11
	addli r2, zero, 16
	mm_cfg r18, r24, r2, 0
	mm_cfg r16, r16, r6, 2
	beq r22, zero, .LBB0_26
# %bb.24:                               # %.preheader8
                                        #   in Loop: Header=BB0_19 Depth=2
	mm_acc r17, r9, r3, 8
	j .LBB0_27
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 25                          # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:0:25
	bneq r10, zero, .LBB0_28
	j .LBB0_33
.LBB0_26:                               # %.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:89:25
	mm r17, r9, r3, 8
.LBB0_27:                               # %.thread6.thread89
                                        #   in Loop: Header=BB0_19 Depth=2
	addli r2, zero, 5
	unlock r6
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 73 26 is_stmt 1               # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:73:26
	beq r10, zero, .LBB0_5
.LBB0_28:                               # %.split.backedge
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:89:25
	addli r22, r22, 1
	lui r10, 4
	addli r11, zero, 0
	j .LBB0_19
.LBB0_29:                               # %.split17
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 86 20                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:86:20
	addli r8, r8, 2
	addli r11, zero, 16
	.loc	1 73 26                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:73:26
	beq r7, r14, .LBB0_6
	j .LBB0_34
.LBB0_30:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 26 is_stmt 0                # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:0:26
	addli r5, r30, -2936
	addli r2, zero, 12
	addli r10, zero, 1
	addli r9, zero, 256
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	load.d r[5:6], 0(r30)
	sll.d r[3:4], r[3:4], r2
	add.ul r[4:5], r[5:6], r[3:4]
	addli r3, zero, 0
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:81:20
	mod.s r6, r8, r13
	.loc	1 86 25                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:86:25
	zext_int2long r[2:3], r3
	.loc	1 81 20                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:81:20
	xwait r22, 0
	lock zero, r14
	addli r8, r8, 1
	dma_cfg zero, zero, zero, 0
	sll.d r[2:3], r[2:3], r16
	add.ul r[2:3], r[4:5], r[2:3]
	slli r6, r6, 11
	dma_cfg zero, r3, zero, 2
	add.s r6, r6, r17
	dma_cfg r6, r2, r25, 3
	.loc	1 73 26                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:73:26
	andi r2, r10, 1
	addli r3, zero, 32
	addli r10, zero, 0
	.loc	1 81 20                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:81:20
	dma_cfg r25, r9, r11, 4
	dma_run zero
	unlock r14
	xsignal r16, 0
	.loc	1 73 26                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:73:26
	bneq r2, zero, .LBB0_31
# %bb.32:                               # %.split17.us
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 26 is_stmt 0                # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:0:26
	addli r2, r30, -2928
	.loc	1 73 26                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:73:26
	addli r1, r1, 2
	addli r26, r26, 2
	addli r28, r28, 2
	addli r6, zero, 1
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	.loc	1 89 25 is_stmt 1               # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:89:25
	j .LBB0_9
.LBB0_33:                               # %.split17.thread88
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 86 20                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:86:20
	addli r8, r8, 2
	addli r11, zero, 16
.LBB0_34:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 20 is_stmt 0                # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:0:20
	addli r2, r30, -2928
	.loc	1 101 67 is_stmt 1              # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:101:67
	addli r1, r25, 1
	addli r26, r15, 1
	addli r28, r13, 1
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	bneq r7, zero, .LBB0_7
# %bb.35:                               #   in Loop: Header=BB0_10 Depth=1
	loadli.w r2,  -2960(r30)                # 4-byte Folded Reload
	loadli.w r6,  -2956(r30)                # 4-byte Folded Reload
	zext_int2long r[4:5], r18
	addli r15, zero, 5
	addli r13, zero, 1
	zext_int2long r[2:3], r2
	sext_int2long r[9:10], r6
	zext_int2long r[6:7], zero
	min.ul r[22:23], r[2:3], r[4:5]
	min.sl r[6:7], r[9:10], r[6:7]
	addli.d r[22:23], r[22:23], 64
	addli.d r[6:7], r[6:7], 16
	max.ul r[22:23], r[22:23], r[2:3]
	max.sl r[6:7], r[6:7], r[9:10]
	sub.sl r[2:3], r[22:23], r[2:3]
	min.ul r[22:23], r[2:3], r[4:5]
	sub.sl r[4:5], r[6:7], r[9:10]
	addli r7, r30, -2936
	addli r6, zero, 13
	zext_int2long r[9:10], r11
	load.d r[2:3], 0(r7)                    # 8-byte Folded Reload
	min.sl r[4:5], r[4:5], r[9:10]
	addli r9, r30, -2952
	sll.d r[6:7], r[2:3], r6
	load.d r[2:3], 16(r30)
	add.ul r[6:7], r[2:3], r[6:7]
	load.d r[2:3], 0(r9)                    # 8-byte Folded Reload
	addli r9, zero, 10
	xwait r9, 0
	lock zero, r15
	add.ul r[6:7], r[6:7], r[2:3]
	dma_cfg zero, zero, zero, 0
	slli r2, r22, 2
	dma_cfg zero, r13, zero, 1
	dma_cfg r7, zero, zero, 2
	dma_cfg r6, r17, r2, 3
	addli r2, zero, 512
	addli r6, zero, 1
	.loc	1 73 26                         # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:73:26
	core_id r7
	.loc	1 101 67                        # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:101:67
	dma_cfg r2, r19, r4, 4
	addli r2, r30, -2928
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	addli r2, zero, 11
	dma_run zero
	unlock r15
	xsignal r2, 0
	j .LBB0_8
.LBB0_36:                               # %._crit_edge
	.loc	1 22 0                          # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:22:0
	xsignal zero, 0
	bneq r7, zero, .LBB0_38
# %bb.37:
	.loc	1 0 0 is_stmt 0                 # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py:22:0
	addli sp, sp, 2960
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
	.long	3024                            # 0xbd0
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
.asciz	"cylodko74tnrsr2ozeuqeanostdosyyqrrpbb5cyp76ljrciulud.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/yl" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
