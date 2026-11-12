	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/fo" "cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py"
	.loc	1 22 0                          # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4208
	addli r30, sp, 4144
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:73:26
	core_id r12
	loadli.w r8,  32(r30)
	loadli.w r9,  28(r30)
	xsignal_mode_cfg r1
	beq r12, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	ble.s r2, r1, .LBB0_39
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	addli r4, r30, -4120
	loadli.w r25,  -2048(r30)
	loadli.w r10,  -3072(r30)
	loadli.w r5,  -4096(r30)
	sext_int2long r[6:7], r1
	addli r11, zero, 32
	addli r13, zero, 1
	addli r22, zero, 5
	addli r15, zero, 4
	addli r17, zero, 2
	addli r18, zero, 255
	lui r19, 128
	addli r20, zero, 7
	addli r21, zero, 6
	addli r23, zero, 16
	addli r27, zero, 128
	addli r24, zero, 1023
	addli r26, zero, 3
	addli r28, zero, 64
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	loadli.w r3,  -1024(r30)
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:73:26
	addli r1, zero, 10
	addli r8, r9, 0
	loadli.w r9,  28(r30)
	.loc	1 101 67 is_stmt 1              # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:101:67
	addli r5, r26, 1
	addli r25, r24, 1
	addli r3, r16, 1
	addli r22, zero, 5
	addli r24, zero, 1023
	addli r26, zero, 3
	addli r28, zero, 64
	.loc	1 73 26                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:73:26
	xsignal r1, 0
	addli r1, r30, -4104
.LBB0_6:                                # %.thread93
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:0:26
	load.d r[6:7], 0(r1)                    # 8-byte Folded Reload
.LBB0_7:                                # %.thread93
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, r30, -4120
	addli.d r[6:7], r[6:7], 1
	load.d r[1:2], 0(r4)                    # 8-byte Folded Reload
	setlt.sl r1, r[6:7], r[1:2]
	beq r1, zero, .LBB0_39
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	addli r1, r30, -4104
	.loc	1 54 50 is_stmt 1               # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:54:50
	addli r4, zero, 8
	store.d r[6:7], 0(r1)                   # 8-byte Folded Spill
	div.s r1, r6, r8
	div.s r6, r1, r9
	.loc	1 53 22                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:53:22
	div.s r14, r6, r11
	.loc	1 54 41                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:54:41
	slli r1, r14, 3
	.loc	1 54 30 is_stmt 0               # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:54:30
	sub.s r2, r13, r1
	.loc	1 54 50                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:54:50
	min.s r16, r2, r4
	.loc	1 73 26 is_stmt 1               # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:73:26
	addli r4, r30, -4112
	.loc	1 55 40                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:55:40
	mod.s r2, r6, r16
	.loc	1 55 34 is_stmt 0               # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:55:34
	add.s r7, r1, r2
	.loc	1 95 15 is_stmt 1               # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:95:15
	zext_int2long r[1:2], r7
	.loc	1 73 26                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:73:26
	store.d r[1:2], 0(r4)                   # 8-byte Folded Spill
	bneq r12, r15, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:0:26
	beq r12, r13, .LBB0_29
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r12, r17, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 0
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:89:25
	add.s r1, r10, r4
	add.s r2, r5, r4
	xwait r17, 0
	xwait r22, 0
	lock zero, zero
	.loc	1 73 26                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:73:26
	addli r4, r4, 1
	.loc	1 89 25                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:89:25
	ds_cfg r17, zero, 0
	.loc	1 81 20                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:81:20
	mod.s r1, r1, r18
	.loc	1 89 25                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:89:25
	mod.s r2, r2, r18
	ds_cfg r11, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r23, zero, 13
	.loc	1 81 20                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:81:20
	slli r1, r1, 11
	.loc	1 89 25                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:89:25
	slli r2, r2, 10
	.loc	1 81 20                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:81:20
	addli r1, r1, 2048
	.loc	1 89 25                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:89:25
	shuffle_batch r2, r1, r23, 1
	unlock zero
	xsignal r26, 0
	xsignal r15, 0
	bneq r4, r15, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:0:25
	addli r1, r30, -4104
	.loc	1 73 26 is_stmt 1               # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:73:26
	addli r25, r25, 4
	addli r3, r3, 4
	.loc	1 89 25                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:89:25
	add.s r5, r5, r4
	add.s r10, r10, r4
	j .LBB0_6
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:0:0
	slli r1, r14, 5
	slli r2, r7, 4
	addli r9, r8, 0
	addli r4, zero, 0
	addli r8, zero, 5
	addli r28, zero, 0
	sub.s r1, r6, r1
	.loc	1 73 26 is_stmt 1               # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:73:26
	storeli.w r2, -4136(r30)                # 4-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:0:0
	div.s r1, r1, r16
	zext_int2long r[13:14], r1
	slli r1, r1, 5
	sll.d r[13:14], r[13:14], r22
	.loc	1 73 26                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:73:26
	storeli.w r1, -4140(r30)                # 4-byte Folded Spill
	load.d r[1:2], 8(r30)
	sll.d r[6:7], r[13:14], r17
	addli r14, r30, -4128
	addli r13, zero, 1
	store.d r[6:7], 0(r14)                  # 8-byte Folded Spill
	add.ul r[6:7], r[1:2], r[6:7]
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25 is_stmt 1               # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:89:25
	addli r1, zero, 9
	xwait r21, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 8
	ds_cfg r17, zero, 0
	ds_cfg r11, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r11, zero, 13
	shuffle_coa r14, r22, r23, 2
	unlock zero
	xsignal r20, 0
	xsignal r1, 0
	.loc	1 73 26                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:73:26
	addli r4, r4, 1
	beq r4, r15, .LBB0_28
.LBB0_17:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:89:25
	addli r28, r28, 1
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r16, r3, r28
	add.s r24, r25, r28
	add.s r26, r5, r28
	.loc	1 86 20                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:86:20
	mod.s r1, r16, r18
	.loc	1 89 25                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:89:25
	mod.s r2, r24, r18
	.loc	1 86 20                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:86:20
	slli r1, r1, 11
	.loc	1 89 25                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:89:25
	slli r14, r2, 11
	.loc	1 86 20                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:86:20
	add.s r22, r1, r19
	beq r12, r20, .LBB0_16
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:0:20
	bneq r12, r21, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:86:25
	zext_int2long r[1:2], r4
	.loc	1 86 20                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:86:20
	addli r14, zero, 13
	xwait r20, 0
	lock zero, r15
	dma_cfg zero, zero, zero, 0
	sll.d r[1:2], r[1:2], r14
	add.ul r[1:2], r[6:7], r[1:2]
	dma_cfg zero, r2, zero, 2
	dma_cfg r22, r1, r27, 3
	addli r1, zero, 512
	dma_cfg r27, r1, r23, 4
	dma_run zero
	unlock r15
	xsignal r21, 0
	.loc	1 73 26 is_stmt 1               # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:73:26
	addli r4, r4, 1
	bneq r4, r15, .LBB0_17
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:89:25
	bneq r12, r15, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:0:0
	mod.s r1, r26, r18
	.loc	1 89 25                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:89:25
	addli r2, zero, 8
	xwait r15, 0
	xwait r2, 0
	lock zero, r13
	mm_cfg r11, r23, r23, 0
	mm_cfg r13, r13, r13, 2
	.loc	1 0 0                           # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:0:0
	slli r1, r1, 10
	.loc	1 89 25                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:89:25
	beq r28, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc zero, r1, r14, 8
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:73:26
	addli r4, r4, 1
	bneq r4, r15, .LBB0_17
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:89:25
	mm zero, r1, r14, 8
.LBB0_26:                               # %.thread6.thread90
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:73:26
	addli r4, r4, 1
	.loc	1 89 25                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:89:25
	addli r1, zero, 9
	unlock r13
	xsignal r8, 0
	xsignal r1, 0
	.loc	1 73 26                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:73:26
	bneq r4, r15, .LBB0_17
# %bb.27:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:86:20
	addli r10, r10, 4
	j .LBB0_5
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r10, r10, 4
	.loc	1 73 26                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:73:26
	beq r12, r15, .LBB0_5
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:0:26
	addli r2, r30, -4112
	addli r1, zero, 10
	addli r4, zero, 0
	addli r16, zero, 256
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	sll.d r[6:7], r[6:7], r1
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	add.s r8, r10, r4
	.loc	1 81 25 is_stmt 1               # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:81:25
	srl.d r[13:14], r[13:14], r21
	.loc	1 81 20 is_stmt 0               # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:81:20
	sll.d r[1:2], r[1:2], r17
	xwait r26, 0
	lock zero, r15
	.loc	1 73 26 is_stmt 1               # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:73:26
	addli r4, r4, 1
	.loc	1 81 20                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:81:20
	dma_cfg zero, zero, zero, 0
	.loc	1 81 0 is_stmt 0                # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:81:0
	mod.s r8, r8, r18
	.loc	1 81 20                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:81:20
	sub.s r9, r23, r13
	load.d r[13:14], 0(r30)
	add.ul r[1:2], r[13:14], r[1:2]
	dma_cfg zero, r2, zero, 2
	.loc	1 81 0                          # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:81:0
	slli r8, r8, 11
	addli r8, r8, 2048
	.loc	1 81 20                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:81:20
	dma_cfg r8, r1, r28, 3
	dma_cfg r27, r16, r9, 4
	dma_run zero
	unlock r15
	xsignal r17, 0
	.loc	1 73 26 is_stmt 1               # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:73:26
	beq r4, r15, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:86:25
	zext_int2long r[1:2], r4
	zext_int2long r[8:9], r24
	sll.d r[13:14], r[1:2], r15
	.loc	1 81 25                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:81:25
	add.ul r[1:2], r[13:14], r[6:7]
	setlt.ul r8, r[8:9], r[1:2]
	bneq r8, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:0:25
	addli.d r[13:14], r[1:2], 0
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -4104
	loadli.w r8,  32(r30)
	loadli.w r9,  28(r30)
	.loc	1 73 26 is_stmt 1               # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:73:26
	addli r5, r5, 4
	addli r25, r25, 4
	addli r3, r3, 4
	.loc	1 89 25                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:89:25
	add.s r10, r10, r4
	addli r13, zero, 1
	j .LBB0_6
.LBB0_34:                               # %.split17.thread89
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:86:20
	addli r10, r10, 4
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:0:20
	addli r1, r30, -4104
	.loc	1 101 67 is_stmt 1              # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:101:67
	addli r5, r26, 1
	addli r25, r24, 1
	addli r3, r16, 1
	addli r28, zero, 64
	load.d r[6:7], 0(r1)                    # 8-byte Folded Reload
	beq r12, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:0:67
	addli r8, r9, 0
	loadli.w r9,  28(r30)
	addli r22, zero, 5
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:101:67
	loadli.w r1,  -4140(r30)                # 4-byte Folded Reload
	addli r4, zero, 96
	zext_int2long r[13:14], zero
	addli r22, zero, 5
	zext_int2long r[6:7], r4
	loadli.w r4,  -4136(r30)                # 4-byte Folded Reload
	zext_int2long r[1:2], r1
	min.ul r[6:7], r[1:2], r[6:7]
	sext_int2long r[8:9], r4
	addli r4, r30, -4136
	addli.d r[6:7], r[6:7], 32
	min.sl r[13:14], r[8:9], r[13:14]
	max.ul r[6:7], r[6:7], r[1:2]
	sub.sl r[1:2], r[6:7], r[1:2]
	addli.d r[6:7], r[13:14], 16
	zext_int2long r[13:14], r11
	min.ul r[1:2], r[1:2], r[13:14]
	max.sl r[6:7], r[6:7], r[8:9]
	zext_int2long r[13:14], r23
	store.d r[1:2], 0(r4)                   # 8-byte Folded Spill
	addli r2, r30, -4112
	sub.sl r[6:7], r[6:7], r[8:9]
	addli r1, zero, 13
	addli r4, r30, -4128
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	min.sl r[6:7], r[6:7], r[13:14]
	addli r13, zero, 1
	sll.d r[8:9], r[8:9], r1
	load.d r[1:2], 16(r30)
	add.ul r[8:9], r[1:2], r[8:9]
	load.d r[1:2], 0(r4)                    # 8-byte Folded Reload
	addli r4, r30, -4136
	add.ul r[8:9], r[8:9], r[1:2]
	addli r1, zero, 10
	xwait r1, 0
	lock zero, r22
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r13, zero, 1
	load.d r[1:2], 0(r4)                    # 8-byte Folded Reload
	dma_cfg r9, zero, zero, 2
	slli r1, r1, 2
	dma_cfg r8, zero, r1, 3
	addli r1, zero, 512
	loadli.w r9,  28(r30)
	loadli.w r8,  32(r30)
	dma_cfg r1, r27, r6, 4
	addli r1, r30, -4104
	load.d r[6:7], 0(r1)                    # 8-byte Folded Reload
	addli r1, zero, 11
	dma_run zero
	unlock r22
	xsignal r1, 0
.LBB0_38:                               # %.thread93
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67                          # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:0:67
	addli r24, zero, 1023
	addli r26, zero, 3
	j .LBB0_7
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:22:0
	xsignal zero, 0
	bneq r12, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py:22:0
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
.asciz	"cfoslbvl6vbuzt5wfg2u7wbiizksadiasohuqypw7sn3sjscai5s.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/fo" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
