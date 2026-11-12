	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/jx" "cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py"
	.loc	1 22 0                          # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3728
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	core_id r5
	addli r30, sp, 3664
	xsignal_mode_cfg r1
	beq r5, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -780(r30)
	storeli.w zero, -1804(r30)
	storeli.w zero, -2584(r30)
	storeli.w zero, -3608(r30)
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
	loadli.w r28,  -780(r30)
	loadli.w r26,  -1804(r30)
	loadli.w r8,  -2584(r30)
	loadli.w r25,  -3608(r30)
	sext_int2long r[2:3], r2
	addli r4, r30, -3640
	sext_int2long r[10:11], r1
	addli r9, zero, 32
	addli r24, zero, 1
	addli r15, zero, 8
	addli r12, zero, 6
	addli r13, zero, 2
	addli r14, zero, 4
	addli r16, zero, 255
	addli r17, zero, 194
	lui r18, 198
	addli r19, zero, 7
	addli r7, zero, 64
	addli r22, zero, 16
	lui r27, 4
	addli r23, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67 is_stmt 1              # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:101:67
	addli r28, r1, 1
	.loc	1 73 26                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	addli r1, zero, 10
	.loc	1 101 67                        # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:101:67
	addli r26, r27, 1
	addli r25, r4, 1
	addli r24, zero, 1
	lui r27, 4
	.loc	1 73 26                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	xsignal r1, 0
	addli r1, r30, -3616
	loadli.w r23,  -3620(r30)               # 4-byte Folded Reload
.LBB0_6:                                # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:0:26
	load.d r[10:11], 0(r1)                  # 8-byte Folded Reload
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, r30, -3640
	addli.d r[10:11], r[10:11], 1
	addli r23, r23, 1
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	setlt.sl r1, r[10:11], r[1:2]
	beq r1, zero, .LBB0_39
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	loadli.w r1,  32(r30)
	loadli.w r2,  28(r30)
	.loc	1 73 26                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	core_id r6
	div.s r1, r10, r1
	div.s r2, r1, r2
	.loc	1 53 22 is_stmt 1               # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:53:22
	div.s r4, r2, r9
	.loc	1 54 41                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:54:41
	slli r1, r4, 3
	.loc	1 54 30 is_stmt 0               # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:54:30
	sub.s r3, r24, r1
	.loc	1 54 50                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:54:50
	min.s r5, r3, r15
	.loc	1 55 40 is_stmt 1               # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:55:40
	mod.s r3, r2, r5
	.loc	1 55 34 is_stmt 0               # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:55:34
	add.s r1, r1, r3
	.loc	1 73 26 is_stmt 1               # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	addli r3, r30, -3632
	.loc	1 95 15                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:95:15
	zext_int2long r[20:21], r1
	.loc	1 73 26                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	store.d r[20:21], 0(r3)                 # 8-byte Folded Spill
	bneq r6, r14, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 11
	addli r21, zero, 256
	xwait r3, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:0:26
	beq r6, r24, .LBB0_29
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	addli r21, zero, 256
	bneq r6, r13, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 0
	addli r4, zero, 5
	addli r5, zero, 3
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:89:25
	add.s r2, r8, r1
	add.s r3, r25, r1
	xwait r13, 0
	xwait r4, 0
	lock zero, zero
	.loc	1 73 26                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:89:25
	ds_cfg r13, zero, 0
	.loc	1 81 20                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:81:20
	mod.s r2, r2, r17
	.loc	1 89 25                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:89:25
	mod.s r3, r3, r16
	ds_cfg r9, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r9, zero, 13
	.loc	1 81 20                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:81:20
	slli r2, r2, 12
	.loc	1 89 25                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:89:25
	slli r3, r3, 11
	.loc	1 81 20                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:81:20
	add.s r2, r2, r27
	.loc	1 89 25                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:89:25
	shuffle_batch r3, r2, r22, 1
	unlock zero
	xsignal r5, 0
	xsignal r14, 0
	bneq r1, r14, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	addli r26, r26, 4
	addli r28, r28, 4
	.loc	1 89 25                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:89:25
	add.s r25, r25, r1
	add.s r8, r8, r1
	.loc	1 73 26                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	core_id r5
	.loc	1 89 25                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:89:25
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:0:25
	slli r4, r4, 5
	slli r1, r1, 5
	addli r3, r30, -3616
	storeli.w r23, -3620(r30)               # 4-byte Folded Spill
	sub.s r2, r2, r4
	mod.s r4, r23, r13
	storeli.w r1, -3656(r30)                # 4-byte Folded Spill
	store.d r[10:11], 0(r3)                 # 8-byte Folded Spill
	addli r3, zero, 0
	addli r23, zero, 0
	div.s r2, r2, r5
	slli r24, r4, 13
	addli r4, r30, -3648
	zext_int2long r[5:6], r2
	slli r1, r2, 6
	sll.d r[5:6], r[5:6], r12
	.loc	1 73 26 is_stmt 1               # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	storeli.w r1, -3660(r30)                # 4-byte Folded Spill
	load.d r[1:2], 8(r30)
	sll.d r[5:6], r[5:6], r13
	store.d r[5:6], 0(r4)                   # 8-byte Folded Spill
	add.ul r[10:11], r[1:2], r[5:6]
	core_id r5
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:89:25
	addli r6, zero, 9
	xwait r12, 0
	xwait r6, 0
	lock zero, zero
	ds_cfg r13, zero, 0
	ds_cfg r7, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r7, zero, 13
	shuffle_coa r20, r2, r22, 2
	unlock zero
	xsignal r19, 0
	xsignal r15, 0
	.loc	1 73 26                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	addli r3, r3, 1
	beq r3, r14, .LBB0_28
.LBB0_17:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:89:25
	addli r23, r23, 1
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r1, r28, r23
	add.s r27, r26, r23
	add.s r4, r25, r23
	.loc	1 86 20                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:86:20
	mod.s r2, r1, r17
	.loc	1 89 25                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:89:25
	mod.s r6, r27, r16
	.loc	1 86 20                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:86:20
	slli r2, r2, 12
	.loc	1 89 25                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:89:25
	slli r20, r6, 12
	.loc	1 86 20                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:86:20
	add.s r2, r2, r18
	beq r5, r19, .LBB0_16
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:0:20
	bneq r5, r12, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:86:25
	zext_int2long r[5:6], r3
	.loc	1 86 20                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:86:20
	addli r20, zero, 14
	xwait r19, 0
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	sll.d r[5:6], r[5:6], r20
	add.ul r[5:6], r[10:11], r[5:6]
	dma_cfg zero, r6, zero, 2
	dma_cfg r2, r5, r21, 3
	addli r2, zero, 1024
	.loc	1 73 26 is_stmt 1               # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	core_id r5
	.loc	1 86 20                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:86:20
	dma_cfg r21, r2, r22, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 73 26                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	addli r3, r3, 1
	bneq r3, r14, .LBB0_17
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:89:25
	bneq r5, r14, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:0:0
	mod.s r2, r4, r16
	.loc	1 89 25                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:89:25
	xwait r14, 0
	xwait r15, 0
	addli r15, zero, 1
	addli r6, zero, 1
	lock zero, r15
	mm_cfg r7, r22, r9, 0
	mm_cfg r15, r13, r15, 2
	.loc	1 0 0                           # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:0:0
	slli r2, r2, 11
	.loc	1 89 25                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:89:25
	beq r23, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r24, r2, r20, 8
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	addli r3, r3, 1
	bneq r3, r14, .LBB0_17
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:89:25
	mm r24, r2, r20, 8
.LBB0_26:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r2, zero, 5
	unlock r6
	.loc	1 73 26                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	addli r3, r3, 1
	addli r15, zero, 8
	.loc	1 89 25                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:89:25
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 73 26                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	bneq r3, r14, .LBB0_17
# %bb.27:                               # %.split17.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:86:20
	addli r8, r8, 4
	j .LBB0_5
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r8, r8, 4
	.loc	1 73 26                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	beq r5, r14, .LBB0_5
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:0:26
	addli r4, r30, -3632
	addli r1, r30, -3616
	addli r20, zero, 256
	storeli.w r23, -3620(r30)               # 4-byte Folded Spill
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	store.d r[10:11], 0(r1)                 # 8-byte Folded Spill
	addli r1, zero, 11
	sll.d r[3:4], r[2:3], r1
	addli r1, zero, 0
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	add.s r2, r8, r1
	.loc	1 81 20 is_stmt 1               # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:81:20
	addli r23, zero, 3
	sll.d r[5:6], r[5:6], r13
	.loc	1 81 25 is_stmt 0               # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:81:25
	srl.d r[10:11], r[10:11], r12
	.loc	1 73 26 is_stmt 1               # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	addli r1, r1, 1
	.loc	1 81 0                          # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:81:0
	mod.s r2, r2, r17
	.loc	1 81 20 is_stmt 0               # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:81:20
	xwait r23, 0
	load.d r[23:24], 0(r30)
	lock zero, r14
	sub.s r10, r9, r10
	dma_cfg zero, zero, zero, 0
	add.ul r[5:6], r[23:24], r[5:6]
	dma_cfg zero, r6, zero, 2
	.loc	1 81 0                          # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:81:0
	slli r2, r2, 12
	add.s r2, r2, r27
	.loc	1 81 20                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:81:20
	dma_cfg r2, r5, r7, 3
	addli r2, zero, 128
	dma_cfg r2, r20, r10, 4
	dma_run zero
	unlock r14
	xsignal r13, 0
	.loc	1 73 26 is_stmt 1               # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	beq r1, r14, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:86:25
	zext_int2long r[5:6], r1
	addli r2, zero, 2047
	sll.d r[10:11], r[5:6], r14
	zext_int2long r[23:24], r2
	.loc	1 81 25                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:81:25
	add.ul r[5:6], r[10:11], r[3:4]
	setlt.ul r2, r[23:24], r[5:6]
	bneq r2, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:0:25
	addli.d r[10:11], r[5:6], 0
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 89 25 is_stmt 1               # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:89:25
	add.s r8, r8, r1
	addli r1, r30, -3616
	loadli.w r23,  -3620(r30)               # 4-byte Folded Reload
	.loc	1 73 26                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	addli r25, r25, 4
	addli r26, r26, 4
	addli r28, r28, 4
	core_id r5
	addli r24, zero, 1
	j .LBB0_6
.LBB0_34:                               # %.split17.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:86:20
	addli r8, r8, 4
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:0:20
	loadli.w r23,  -3620(r30)               # 4-byte Folded Reload
	.loc	1 101 67 is_stmt 1              # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:101:67
	addli r25, r4, 1
	addli r26, r27, 1
	addli r28, r1, 1
	beq r5, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:0:67
	addli r1, r30, -3616
	addli r24, zero, 1
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:101:67
	loadli.w r1,  -3660(r30)                # 4-byte Folded Reload
	addli r3, zero, 192
	loadli.w r5,  -3656(r30)                # 4-byte Folded Reload
	zext_int2long r[10:11], zero
	zext_int2long r[3:4], r3
	zext_int2long r[1:2], r1
	sext_int2long r[5:6], r5
	min.ul r[3:4], r[1:2], r[3:4]
	min.sl r[10:11], r[5:6], r[10:11]
	addli.d r[3:4], r[3:4], 64
	max.ul r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	addli.d r[3:4], r[10:11], 32
	zext_int2long r[10:11], r7
	max.sl r[3:4], r[3:4], r[5:6]
	min.ul r[1:2], r[1:2], r[10:11]
	addli r10, r30, -3656
	sub.sl r[3:4], r[3:4], r[5:6]
	addli r6, r30, -3632
	store.d r[1:2], 0(r10)                  # 8-byte Folded Spill
	addli r5, zero, 15
	zext_int2long r[10:11], r9
	load.d r[1:2], 0(r6)                    # 8-byte Folded Reload
	min.sl r[3:4], r[3:4], r[10:11]
	addli r10, r30, -3648
	addli r11, r30, -3656
	sll.d r[5:6], r[1:2], r5
	load.d r[1:2], 16(r30)
	add.ul r[5:6], r[1:2], r[5:6]
	load.d r[1:2], 0(r10)                   # 8-byte Folded Reload
	addli r10, zero, 10
	xwait r10, 0
	addli r10, zero, 5
	add.ul r[5:6], r[5:6], r[1:2]
	addli r1, zero, 1
	lock zero, r10
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r1, zero, 1
	load.d r[1:2], 0(r11)                   # 8-byte Folded Reload
	dma_cfg r6, zero, zero, 2
	slli r1, r1, 2
	dma_cfg r5, r24, r1, 3
	addli r1, zero, 1024
	addli r24, zero, 1
	.loc	1 73 26 is_stmt 1               # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:73:26
	core_id r5
	.loc	1 101 67                        # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:101:67
	dma_cfg r1, r21, r3, 4
	addli r1, zero, 11
	dma_run zero
	unlock r10
	xsignal r1, 0
	addli r1, r30, -3616
.LBB0_38:                               # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:0:67
	load.d r[10:11], 0(r1)                  # 8-byte Folded Reload
	lui r27, 4
	j .LBB0_7
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:22:0
	xsignal zero, 0
	bneq r5, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py:22:0
	addli sp, sp, 3664
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
	.long	3728                            # 0xe90
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
.asciz	"cjxskarday6xmq5qobritw3h7xc52ttnxijxbis2jle3m3j3jjx3.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/jx" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
