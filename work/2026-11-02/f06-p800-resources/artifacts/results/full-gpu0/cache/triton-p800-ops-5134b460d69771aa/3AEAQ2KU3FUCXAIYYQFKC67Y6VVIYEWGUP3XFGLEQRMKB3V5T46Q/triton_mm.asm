	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/d5" "cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py"
	.loc	1 22 0                          # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4224
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:73:26
	core_id r6
	addli r30, sp, 4160
	xsignal_mode_cfg r1
	beq r6, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:0:26
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
	ble.s r2, r1, .LBB0_37
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	addli r4, r30, -4128
	sext_int2long r[26:27], r1
	lui r1, 127
	loadli.w r25,  -2048(r30)
	loadli.w r8,  -3072(r30)
	loadli.w r28,  -4096(r30)
	addli r10, zero, 16
	addli r7, zero, 8
	addli r13, zero, 4
	addli r15, zero, 1
	addli r16, zero, 255
	lui r17, 256
	addli r18, zero, 7
	addli r19, zero, 6
	addli r21, zero, 3
	addli r22, zero, 64
	addli r23, zero, 32
	addli r24, zero, 1024
	addli r14, zero, 2
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r5, zero, 16383
	loadli.w r3,  -1024(r30)
	ori r20, r1, 4095
	addli r2, r30, -4160
	lui r4, 1048448
	storeli.w r20, -4148(r30)               # 4-byte Folded Spill
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split17.thread92
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:86:20
	addli r8, r8, 64
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:73:26
	addli r1, zero, 10
	.loc	1 101 67                        # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:101:67
	addli r28, r11, 1
	addli r25, r12, 1
	addli r3, r14, 1
	addli r24, zero, 1024
	.loc	1 73 26                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:73:26
	xsignal r1, 0
	addli r1, r30, -4112
	loadli.w r20,  -4148(r30)               # 4-byte Folded Reload
	load.d r[26:27], 0(r1)                  # 8-byte Folded Reload
.LBB0_7:                                # %.thread93
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:0:26
	addli r14, zero, 2
.LBB0_8:                                # %.thread93
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r4, r30, -4128
	addli.d r[26:27], r[26:27], 1
	load.d r[1:2], 0(r4)                    # 8-byte Folded Reload
	setlt.sl r1, r[26:27], r[1:2]
	beq r1, zero, .LBB0_37
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	loadli.w r1,  32(r30)
	loadli.w r2,  28(r30)
	addli r9, r30, -4120
	div.s r1, r26, r1
	div.s r2, r1, r2
	.loc	1 53 22 is_stmt 1               # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:53:22
	addli r1, zero, 256
	div.s r1, r2, r1
	.loc	1 54 41                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:54:41
	slli r4, r1, 3
	.loc	1 54 30 is_stmt 0               # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:54:30
	sub.s r5, r10, r4
	.loc	1 54 50                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:54:50
	min.s r12, r5, r7
	.loc	1 55 40 is_stmt 1               # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:55:40
	mod.s r5, r2, r12
	.loc	1 55 34 is_stmt 0               # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:55:34
	add.s r11, r4, r5
	.loc	1 95 15 is_stmt 1               # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:95:15
	zext_int2long r[4:5], r11
	store.d r[4:5], 0(r9)                   # 8-byte Folded Spill
	addli r4, zero, 480
	.loc	1 73 26                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:73:26
	addli r9, r30, -4104
	zext_int2long r[4:5], r4
	store.d r[4:5], 0(r9)                   # 8-byte Folded Spill
	bneq r6, r13, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r4, zero, 11
	addli r5, zero, 5
	xwait r4, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:0:26
	addli r5, zero, 5
	beq r6, r15, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r6, r14, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r4, zero, 0
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:89:25
	add.s r1, r8, r4
	add.s r2, r28, r4
	xwait r14, 0
	xwait r5, 0
	lock zero, zero
	.loc	1 73 26                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:73:26
	addli r4, r4, 1
	.loc	1 89 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:89:25
	ds_cfg r21, zero, 0
	.loc	1 81 20                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:81:20
	mod.s r1, r1, r16
	.loc	1 89 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:89:25
	mod.s r2, r2, r16
	ds_cfg r22, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r23, zero, 13
	.loc	1 81 20                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:81:20
	slli r1, r1, 12
	.loc	1 89 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:89:25
	slli r2, r2, 11
	.loc	1 81 20                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:81:20
	addli r1, r1, 4096
	.loc	1 89 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:89:25
	shuffle_batch r2, r1, r10, 1
	unlock zero
	xsignal r21, 0
	xsignal r13, 0
	bneq r4, r22, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:73:26
	addli r25, r25, 64
	addli r3, r3, 64
	.loc	1 89 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:89:25
	add.s r28, r28, r4
	add.s r8, r8, r4
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 0 is_stmt 0                 # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:0:0
	slli r1, r1, 8
	addli r4, r30, -4112
	addli r9, zero, 0
	addli r24, zero, 0
	sub.s r1, r2, r1
	slli r2, r11, 5
	store.d r[26:27], 0(r4)                 # 8-byte Folded Spill
	addli r4, r30, -4136
	div.s r1, r1, r12
	.loc	1 73 26 is_stmt 1               # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:73:26
	storeli.w r2, -4140(r30)                # 4-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:0:0
	zext_int2long r[6:7], r1
	slli r1, r1, 5
	sll.d r[6:7], r[6:7], r5
	.loc	1 73 26                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:73:26
	storeli.w r1, -4144(r30)                # 4-byte Folded Spill
	load.d r[1:2], 8(r30)
	sll.d r[11:12], r[6:7], r15
	addli r7, zero, 8
	core_id r6
	store.d r[11:12], 0(r4)                 # 8-byte Folded Spill
	add.ul r[26:27], r[1:2], r[11:12]
	addli r4, zero, 9
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25 is_stmt 1               # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:89:25
	xwait r19, 0
	xwait r4, 0
	lock zero, zero
	ds_cfg r21, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r2, r20, r10, 2
	unlock zero
	xsignal r18, 0
	xsignal r7, 0
	.loc	1 73 26                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:73:26
	addli r9, r9, 1
	bneq r9, r22, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:89:25
	add.s r14, r3, r24
	add.s r12, r25, r24
	add.s r11, r28, r24
	.loc	1 86 20                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:86:20
	mod.s r1, r14, r16
	.loc	1 89 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:89:25
	mod.s r2, r12, r16
	.loc	1 86 20                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:86:20
	slli r1, r1, 11
	.loc	1 89 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:89:25
	slli r2, r2, 11
	.loc	1 86 20                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:86:20
	add.s r20, r1, r17
	beq r6, r18, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:0:20
	bneq r6, r19, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:86:25
	zext_int2long r[1:2], r9
	.loc	1 86 20                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:86:20
	addli r17, zero, 15
	xwait r18, 0
	lock zero, r13
	dma_cfg r15, r15, zero, 0
	sll.d r[1:2], r[1:2], r17
	lui r17, 256
	add.ul r[1:2], r[26:27], r[1:2]
	dma_cfg zero, r2, zero, 2
	dma_cfg r20, r1, r22, 3
	addli r1, zero, 128
	addli r2, zero, 2048
	dma_cfg r1, r2, r10, 4
	dma_run zero
	unlock r13
	xsignal r19, 0
	.loc	1 73 26 is_stmt 1               # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:73:26
	addli r9, r9, 1
	bneq r9, r22, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:89:25
	bneq r6, r13, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:0:0
	mod.s r1, r11, r16
	.loc	1 89 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:89:25
	xwait r13, 0
	xwait r7, 0
	lock zero, r15
	mm_cfg r23, r10, r23, 0
	mm_cfg r15, r15, r15, 2
	.loc	1 0 0                           # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:0:0
	slli r1, r1, 11
	.loc	1 89 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:89:25
	beq r24, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc zero, r1, r2, 5
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:73:26
	addli r9, r9, 1
	bneq r9, r22, .LBB0_27
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:89:25
	mm zero, r1, r2, 5
.LBB0_26:                               # %.thread6.thread90
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:73:26
	addli r9, r9, 1
	.loc	1 89 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:89:25
	unlock r15
	xsignal r5, 0
	xsignal r4, 0
	.loc	1 73 26                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:73:26
	beq r9, r22, .LBB0_5
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:89:25
	addli r24, r24, 1
	j .LBB0_18
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:86:20
	addli r8, r8, 64
	.loc	1 73 26                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:73:26
	beq r6, r13, .LBB0_6
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:0:26
	addli r2, r30, -4120
	addli r1, r30, -4112
	addli r9, zero, 0
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	store.d r[26:27], 0(r1)                 # 8-byte Folded Spill
	addli r1, zero, 15
	sll.d r[11:12], r[4:5], r1
	addli r4, r30, -4160
	load.d r[1:2], 0(r4)                    # 8-byte Folded Reload
	and.d r[6:7], r[11:12], r[1:2]
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 81 25 is_stmt 1               # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:81:25
	sub.sl r[26:27], r[1:2], r[26:27]
	zext_int2long r[4:5], r24
	.loc	1 81 20 is_stmt 0               # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:81:20
	sll.d r[1:2], r[1:2], r15
	.loc	1 0 0                           # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:0:0
	add.s r14, r8, r9
	.loc	1 81 20                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:81:20
	xwait r21, 0
	lock zero, r13
	.loc	1 73 26 is_stmt 1               # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:73:26
	addli r9, r9, 1
	.loc	1 81 20                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:81:20
	dma_cfg r15, r15, zero, 0
	.loc	1 81 25 is_stmt 0               # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:81:25
	div.sl r[4:5], r[26:27], r[4:5]
	.loc	1 81 20                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:81:20
	load.d r[26:27], 0(r30)
	.loc	1 81 0                          # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:81:0
	mod.s r14, r14, r16
	.loc	1 81 20                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:81:20
	add.ul r[1:2], r[26:27], r[1:2]
	dma_cfg zero, r2, zero, 2
	.loc	1 81 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:81:25
	addli zero, r30, -4104
	.loc	1 81 0                          # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:81:0
	slli r14, r14, 12
	.loc	1 81 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:81:25
	load.d r[26:27], 0(zero)                # 8-byte Folded Reload
	xor zero, zero, zero
	.loc	1 81 0                          # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:81:0
	addli r14, r14, 4096
	.loc	1 81 20                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:81:20
	dma_cfg r14, r1, r23, 3
	addli r14, zero, 2
	addli r1, zero, 128
	addli r2, zero, 2048
	.loc	1 81 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:81:25
	min.sl r[26:27], r[4:5], r[26:27]
	sub.sl r[4:5], r[26:27], r[4:5]
	.loc	1 81 20                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:81:20
	addli r4, r4, 32
	dma_cfg r1, r2, r4, 4
	dma_run zero
	unlock r13
	xsignal r14, 0
	.loc	1 73 26 is_stmt 1               # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:73:26
	beq r9, r22, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:86:25
	zext_int2long r[1:2], r9
	zext_int2long r[26:27], r20
	sll.d r[1:2], r[1:2], r13
	.loc	1 81 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:81:25
	add.ul r[1:2], r[1:2], r[11:12]
	setlt.ul r14, r[26:27], r[1:2]
	addli.d r[26:27], r[6:7], 0
	bneq r14, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:0:25
	zext_int2long r[26:27], zero
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, r30, -4112
	.loc	1 73 26 is_stmt 1               # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:73:26
	addli r28, r28, 64
	addli r25, r25, 64
	addli r3, r3, 64
	.loc	1 89 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:89:25
	add.s r8, r8, r9
	.loc	1 73 26                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:73:26
	core_id r6
	addli r7, zero, 8
	load.d r[26:27], 0(r1)                  # 8-byte Folded Reload
	.loc	1 89 25                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:89:25
	j .LBB0_8
.LBB0_34:                               # %.split17.thread89
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:86:20
	addli r8, r8, 64
.LBB0_35:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:0:20
	addli r1, r30, -4112
	loadli.w r20,  -4148(r30)               # 4-byte Folded Reload
	.loc	1 101 67 is_stmt 1              # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:101:67
	addli r28, r11, 1
	addli r25, r12, 1
	addli r3, r14, 1
	addli r24, zero, 1024
	load.d r[26:27], 0(r1)                  # 8-byte Folded Reload
	bneq r6, zero, .LBB0_7
# %bb.36:                               #   in Loop: Header=BB0_9 Depth=1
	loadli.w r6,  -4140(r30)                # 4-byte Folded Reload
	addli r14, r30, -4104
	loadli.w r1,  -4144(r30)                # 4-byte Folded Reload
	addli r4, zero, 992
	addli r9, zero, 5
	load.d r[11:12], 0(r14)                 # 8-byte Folded Reload
	zext_int2long r[4:5], r4
	addli r14, r30, -4120
	sext_int2long r[6:7], r6
	zext_int2long r[1:2], r1
	load.d r[26:27], 0(r14)                 # 8-byte Folded Reload
	addli r14, r30, -4112
	min.sl r[11:12], r[6:7], r[11:12]
	min.ul r[4:5], r[1:2], r[4:5]
	addli.d r[11:12], r[11:12], 32
	addli.d r[4:5], r[4:5], 32
	sll.d r[26:27], r[26:27], r10
	max.sl r[11:12], r[11:12], r[6:7]
	max.ul r[4:5], r[4:5], r[1:2]
	sub.sl r[6:7], r[11:12], r[6:7]
	load.d r[11:12], 16(r30)
	sub.sl r[1:2], r[4:5], r[1:2]
	zext_int2long r[4:5], r23
	min.ul r[1:2], r[1:2], r[4:5]
	min.sl r[4:5], r[6:7], r[4:5]
	add.ul r[11:12], r[11:12], r[26:27]
	load.d r[26:27], 0(r14)                 # 8-byte Folded Reload
	addli r14, r30, -4136
	slli r1, r1, 2
	addli r2, zero, 2048
	load.d r[6:7], 0(r14)                   # 8-byte Folded Reload
	add.ul r[6:7], r[11:12], r[6:7]
	addli r11, zero, 10
	xwait r11, 0
	lock zero, r9
	dma_cfg r15, zero, zero, 0
	dma_cfg zero, r15, zero, 1
	dma_cfg r7, zero, zero, 2
	dma_cfg r6, zero, r1, 3
	addli r1, zero, 128
	addli r7, zero, 8
	.loc	1 73 26                         # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:73:26
	core_id r6
	.loc	1 101 67                        # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:101:67
	dma_cfg r2, r1, r4, 4
	addli r1, zero, 5
	dma_run zero
	unlock r1
	addli r1, zero, 11
	xsignal r1, 0
	j .LBB0_7
.LBB0_37:                               # %._crit_edge
	.loc	1 22 0                          # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:22:0
	xsignal zero, 0
	bneq r6, zero, .LBB0_39
# %bb.38:
	.loc	1 0 0 is_stmt 0                 # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py:22:0
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
.asciz	"cd5ittowrhvmxylf7efejx5j5g3uxoyuv4c7ji6gkrelt57te5wx.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/d5" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
