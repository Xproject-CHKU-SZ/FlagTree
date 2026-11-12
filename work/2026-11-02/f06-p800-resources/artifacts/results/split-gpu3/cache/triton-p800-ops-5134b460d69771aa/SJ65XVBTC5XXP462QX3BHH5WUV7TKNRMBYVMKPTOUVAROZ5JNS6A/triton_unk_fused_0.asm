	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-gpu3/cache/inductor/3m" "c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py"
	.loc	1 23 0                          # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:23:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3080
	addli r1, zero, 1
.Ltmp0:
	.loc	1 74 26 prologue_end            # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:74:26
	core_id r22
	addli r30, sp, 3016
	xsignal_mode_cfg r1
	beq r22, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:0:26
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
	addli r3, zero, 12
	csr_set csr3, r1
	addli r1, zero, 5
	sync_group
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
	addli r1, zero, 14
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	loadli.w r1,  32(r30)
	loadli.w r3,  36(r30)
	load_param_i r5, 1
	loadli.w r4,  40(r30)
	storeli.w zero, -12(r30)
	storeli.w zero, -636(r30)
	storeli.w zero, -1280(r30)
	storeli.w zero, -1904(r30)
	storeli.w zero, -2928(r30)
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
	ble.s r3, r1, .LBB0_37
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	addli r2, r30, -3008
	sext_int2long r[5:6], r1
	loadli.w r13,  -12(r30)
	loadli.w r9,  -636(r30)
	loadli.w r10,  -1280(r30)
	loadli.w r11,  -1904(r30)
	loadli.w r12,  -2928(r30)
	addli r14, zero, 1
	addli r16, zero, 2
	addli r17, zero, 4
	addli r20, zero, 255
	addli r21, zero, 155
	addli r15, zero, 3
	addli r25, zero, 64
	addli r26, zero, 32
	addli r27, zero, 16
	addli r18, zero, 6
	addli r19, zero, 0
	store.d r[3:4], 0(r2)                   # 8-byte Folded Spill
	lui r3, 391
	lui r2, 4
	ori r1, r3, 2048
	lui r3, 81
	storeli.w r1, -3012(r30)                # 4-byte Folded Spill
	ori r1, r3, 2048
	storeli.w r1, -2932(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread10
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 102 66 is_stmt 1              # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:102:66
	addli r1, r30, -2984
	load.d r[18:19], 16(r30)
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	addli r1, zero, 14
	xwait r1, 0
	lock zero, r17
	slli r1, r3, 1
	addli r3, zero, 512
	sll.d r[7:8], r[7:8], r14
	dma_cfg zero, r14, zero, 0
	add.ul r[7:8], r[18:19], r[7:8]
	addli r18, zero, 6
	dma_cfg zero, r8, zero, 2
	dma_cfg r6, r7, r1, 3
	addli r1, zero, 256
	dma_cfg r3, r1, r14, 4
	addli r1, zero, 13
	dma_run zero
	unlock r17
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -2960
	loadli.w r19,  -2964(r30)               # 4-byte Folded Reload
	addli r13, r13, 1
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -3008
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	addli.d r[5:6], r[5:6], 1
	setlt.sl r1, r[5:6], r[3:4]
	beq r1, zero, .LBB0_37
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
                                        #     Child Loop BB0_33 Depth 2
	storeli.w r13, -2948(r30)               # 4-byte Folded Spill
	.loc	1 74 26 is_stmt 1               # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:74:26
	bneq r22, r17, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 12
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:0:26
	loadli.w r1,  40(r30)
	addli r3, r30, -2960
	addli r28, zero, 1
	.loc	1 74 26                         # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:74:26
	load.d r[22:23], 8(r30)
	addli r13, r30, -2992
	addli r8, zero, 0
	store.d r[5:6], 0(r3)                   # 8-byte Folded Spill
	div.s r3, r5, r1
	loadli.w r1,  36(r30)
	mod.s r6, r19, r16
	addli r19, r19, 1
	storeli.w r19, -2964(r30)               # 4-byte Folded Spill
	div.s r3, r3, r1
	addli r1, zero, 8
	slli r19, r6, 13
	div.s r4, r3, r1
	slli r4, r4, 3
	sub.s r5, r14, r4
	sub.s r7, r3, r4
	min.s r5, r5, r1
	mod.s r3, r3, r5
	div.s r5, r7, r5
	add.s r3, r4, r3
	slli r4, r5, 7
	slli r6, r3, 4
	storeli.w r4, -2976(r30)                # 4-byte Folded Spill
	zext_int2long r[4:5], r5
	storeli.w r6, -2996(r30)                # 4-byte Folded Spill
	addli r6, zero, 7
	sll.d r[4:5], r[4:5], r6
	zext_int2long r[6:7], r3
	addli r3, r30, -2984
	store.d r[4:5], 0(r3)                   # 8-byte Folded Spill
	sll.d r[3:4], r[4:5], r28
	addli r5, zero, 11
	store.d r[6:7], 0(r13)                  # 8-byte Folded Spill
	addli r13, zero, 0
	sll.d r[5:6], r[6:7], r5
	add.ul r[3:4], r[22:23], r[3:4]
	addli r7, r30, -2944
	core_id r22
	store.d r[3:4], 0(r7)                   # 8-byte Folded Spill
	load.d r[3:4], 0(r30)
	add.ul r[6:7], r[3:4], r[5:6]
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 90 25 is_stmt 1               # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:90:25
	addli r4, zero, 5
	xwait r16, 0
	xwait r4, 0
	lock zero, zero
	ds_cfg r15, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r27, zero, 13
	shuffle_batch r23, r3, r26, 1
	unlock zero
	xsignal r15, 0
	xsignal r17, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r10, r10, 1
	.loc	1 87 20                         # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:87:20
	addli r9, r9, 1
.LBB0_13:                               # %.thread8
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 74 26                         # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:74:26
	beq r28, zero, .LBB0_28
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 90 25                         # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:90:25
	addli r13, r13, 1
	addli r8, zero, 1
	addli r28, zero, 0
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 82 20                         # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:82:20
	mod.s r3, r11, r21
	.loc	1 90 25                         # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:90:25
	mod.s r4, r12, r20
	addli r12, r12, 1
	.loc	1 82 20                         # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:82:20
	addli r11, r11, 1
	andi r28, r28, 1
	slli r3, r3, 11
	.loc	1 90 25                         # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:90:25
	slli r23, r4, 10
	.loc	1 82 20                         # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:82:20
	add.s r3, r3, r2
	beq r22, r16, .LBB0_11
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 0 is_stmt 0                 # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:0:0
	zext_int2long r[4:5], r8
	.loc	1 82 20                         # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:82:20
	bneq r22, r14, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	sll.d r[4:5], r[4:5], r18
	xwait r15, 0
	lock zero, r17
	dma_cfg r14, r14, zero, 0
	add.ul r[4:5], r[6:7], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r3, r4, r25, 3
	addli r3, zero, 128
	dma_cfg r3, r3, r27, 4
	dma_run zero
	unlock r17
	xsignal r16, 0
	.loc	1 90 25 is_stmt 1               # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:90:25
	j .LBB0_12
.LBB0_18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 87 20                         # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:87:20
	mod.s r3, r9, r21
	.loc	1 90 25                         # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:90:25
	addli r8, zero, 160
	.loc	1 87 20                         # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:87:20
	loadli.w r18,  -2932(r30)               # 4-byte Folded Reload
	addli r9, r9, 1
	.loc	1 90 25                         # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:90:25
	mod.s r8, r10, r8
	addli r10, r10, 1
	.loc	1 87 20                         # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:87:20
	slli r3, r3, 13
	add.s r3, r3, r18
	.loc	1 90 25                         # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:90:25
	slli r8, r8, 13
	.loc	1 87 20                         # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:87:20
	addli r18, zero, 7
	beq r22, r18, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 20 is_stmt 0                # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:0:20
	addli r18, zero, 6
	.loc	1 87 20                         # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:87:20
	bneq r22, r18, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	addli r8, zero, 13
	sll.d r[4:5], r[4:5], r8
	addli r8, zero, 7
	xwait r8, 0
	addli r8, r30, -2944
	load.d r[23:24], 0(r8)                  # 8-byte Folded Reload
	lock zero, r17
	addli r8, zero, 256
	dma_cfg r14, r14, zero, 0
	add.ul r[4:5], r[23:24], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r3, r4, r8, 3
	dma_cfg r8, r8, r26, 4
	dma_run zero
	unlock r17
	xsignal r18, 0
	.loc	1 90 25 is_stmt 1               # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:90:25
	j .LBB0_13
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 25 is_stmt 0                # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:0:25
	addli r18, zero, 6
	.loc	1 90 25                         # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:90:25
	addli r4, zero, 9
	xwait r18, 0
	xwait r4, 0
	lock zero, zero
	addli r4, zero, 128
	ds_cfg r15, zero, 0
	ds_cfg r4, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r4, zero, 13
	shuffle_coa r8, r3, r26, 2
	addli r3, zero, 7
	unlock zero
	xsignal r3, 0
	xsignal r1, 0
	j .LBB0_13
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	bneq r22, r17, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 25                          # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:0:25
	addli r3, zero, 1
	addli r4, zero, 1
	addli r5, zero, 0
	.loc	1 90 25                         # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:90:25
	xwait r17, 0
	xwait r1, 0
	beq r13, zero, .LBB0_25
.LBB0_24:                               # %.preheader11
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r1, r5, 12
	slli r5, r5, 8
	lock zero, r3
	mm_cfg r25, r26, r27, 0
	or r1, r1, r8
	or r5, r5, r19
	mm_cfg r3, r17, r3, 2
	mm_acc r5, r23, r1, 5
	andi r1, r4, 1
	addli r5, zero, 1
	addli r4, zero, 0
	unlock r3
	bneq r1, zero, .LBB0_24
	j .LBB0_26
.LBB0_25:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r1, r5, 12
	slli r5, r5, 8
	lock zero, r3
	mm_cfg r25, r26, r27, 0
	or r1, r1, r8
	or r5, r5, r19
	mm_cfg r3, r17, r3, 2
	mm r5, r23, r1, 5
	andi r1, r4, 1
	addli r5, zero, 1
	addli r4, zero, 0
	unlock r3
	bneq r1, zero, .LBB0_25
.LBB0_26:                               # %.thread8.thread47
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r1, zero, 5
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	addli r1, zero, 8
	bneq r28, zero, .LBB0_14
	j .LBB0_29
.LBB0_27:                               # %.thread8.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 25                          # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:0:25
	bneq r28, zero, .LBB0_14
	j .LBB0_30
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 74 26 is_stmt 1               # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:74:26
	bneq r22, r17, .LBB0_30
.LBB0_29:                               # %.thread48
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_30:                               # %.thread46
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:0:26
	loadli.w r13,  -2948(r30)               # 4-byte Folded Reload
	.loc	1 102 66 is_stmt 1              # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:102:66
	loadli.w r3,  -2976(r30)                # 4-byte Folded Reload
	addli r5, zero, 128
	zext_int2long r[5:6], r5
	mod.s r1, r13, r16
	zext_int2long r[3:4], r3
	max.ul r[5:6], r[3:4], r[5:6]
	sub.sl r[3:4], r[5:6], r[3:4]
	loadli.w r5,  -3012(r30)                # 4-byte Folded Reload
	slli r1, r1, 9
	add.s r6, r1, r5
	beq r22, r14, .LBB0_5
# %bb.31:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 107 18                        # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:107:18
	addli r1, zero, 5
	bneq r22, r1, .LBB0_35
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	addli r3, zero, 0
	addli r4, zero, 8192
	xwait r1, 0
	addli r1, zero, 13
	xwait r1, 0
	lock zero, r16
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 127
	ew_cfg zero, r1, zero, 2
	ew_cfg r14, zero, zero, 3
.LBB0_33:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r1, r19, r3
	addli r3, r3, 512
	dsmadd r1, r1, r6, 0
	bneq r3, r4, .LBB0_33
# %bb.34:                               # %.thread49
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	unlock r16
	xsignal r1, 0
	addli r1, zero, 14
	j .LBB0_6
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 110 79                        # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:110:79
	bneq r22, zero, .LBB0_7
# %bb.36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 79 is_stmt 0                # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:0:79
	loadli.w r1,  -2996(r30)                # 4-byte Folded Reload
	zext_int2long r[7:8], zero
	addli r18, zero, 12
	sext_int2long r[5:6], r1
	addli r1, r30, -2976
	min.sl r[7:8], r[5:6], r[7:8]
	addli.d r[7:8], r[7:8], 16
	max.sl r[7:8], r[7:8], r[5:6]
	sub.sl r[5:6], r[7:8], r[5:6]
	store.d r[5:6], 0(r1)                   # 8-byte Folded Spill
	zext_int2long r[5:6], r27
	addli r1, r30, -2944
	store.d r[5:6], 0(r1)                   # 8-byte Folded Spill
	.loc	1 110 79                        # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:110:79
	addli r1, r30, -2992
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2984
	sll.d r[7:8], r[5:6], r18
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	sll.d r[5:6], r[5:6], r14
	store.d r[5:6], 0(r1)                   # 8-byte Folded Spill
	addli r1, r30, -2944
	load.d r[5:6], 24(r30)
	load.d r[23:24], 0(r1)                  # 8-byte Folded Reload
	addli r1, r30, -2976
	add.ul r[5:6], r[5:6], r[7:8]
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2984
	min.sl r[23:24], r[7:8], r[23:24]
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	addli r1, zero, 11
	xwait r1, 0
	slli r1, r3, 2
	addli r3, zero, 512
	add.ul r[5:6], r[5:6], r[7:8]
	addli r7, zero, 5
	lock zero, r7
	dma_cfg r14, zero, zero, 0
	dma_cfg zero, r14, zero, 1
	dma_cfg r6, zero, zero, 2
	dma_cfg r5, r19, r1, 3
	addli r1, zero, 256
	dma_cfg r1, r3, r23, 4
	dma_run zero
	unlock r7
	xsignal r18, 0
	addli r18, zero, 6
	j .LBB0_7
.LBB0_37:                               # %._crit_edge
	.loc	1 23 0 is_stmt 1                # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:23:0
	xsignal zero, 0
	bneq r22, zero, .LBB0_39
# %bb.38:
	.loc	1 0 0 is_stmt 0                 # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:0:0
	addli r1, zero, 2
	.loc	1 23 0                          # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:23:0
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
	.loc	1 23 0 epilogue_begin           # c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py:23:0
	addli sp, sp, 3016
	mfence { lm, sm, gm }
	exit
.Ltmp1:
.Lfunc_end0:
	.size	triton_unk_fused_0, .Lfunc_end0-triton_unk_fused_0
	.cfi_endproc
                                        # -- End function
	.type	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_PARAM_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0:
	.long	44                              # 0x2c
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	3080                            # 0xc08
	.size	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0,@object # @XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0
	.section	.XPU.KERNEL_DYNAMIC_LM.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0, 4

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
.asciz	"c3mi4rohhvdx72zbp3golgettocyal6zwkfhl5z7msdt2amwhau3.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-gpu3/cache/inductor/3m" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
