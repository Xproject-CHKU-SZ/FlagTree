	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/5f" "c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py"
	.loc	1 23 0                          # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:23:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3736
	addli r1, zero, 1
.Ltmp0:
	.loc	1 74 26 prologue_end            # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:74:26
	core_id r25
	addli r30, sp, 3672
	xsignal_mode_cfg r1
	beq r25, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	loadli.w r1,  32(r30)
	loadli.w r3,  36(r30)
	load_param_i r5, 1
	loadli.w r4,  40(r30)
	storeli.w zero, -20(r30)
	storeli.w zero, -788(r30)
	storeli.w zero, -1812(r30)
	storeli.w zero, -2584(r30)
	storeli.w zero, -3608(r30)
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
	addli r2, r30, -3672
	loadli.w r21,  -20(r30)
	loadli.w r9,  -788(r30)
	loadli.w r10,  -1812(r30)
	loadli.w r5,  -2584(r30)
	loadli.w r28,  -3608(r30)
	sext_int2long r[6:7], r1
	addli r11, zero, 32
	addli r12, zero, 1
	addli r13, zero, 6
	addli r15, zero, 4
	addli r17, zero, 255
	addli r14, zero, 192
	lui r23, 8
	addli r20, zero, 2
	addli r22, zero, 3
	addli r19, zero, 64
	addli r18, zero, 128
	store.d r[3:4], 0(r2)                   # 8-byte Folded Spill
	addli r2, zero, 0
	j .LBB0_8
.LBB0_5:                                # %.thread10
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 102 66 is_stmt 1              # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:102:66
	addli r2, r30, -3648
	addli r7, zero, 14
	slli r3, r3, 1
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	xwait r7, 0
	load.d r[7:8], 16(r30)
	lock zero, r15
	dma_cfg zero, r12, zero, 0
	sll.d r[5:6], r[5:6], r12
	add.ul r[5:6], r[7:8], r[5:6]
	dma_cfg zero, r6, zero, 2
	dma_cfg r1, r5, r3, 3
	addli r1, zero, 256
	dma_cfg r1, r18, r12, 4
	dma_run zero
	unlock r15
	addli r1, zero, 13
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -3632
	loadli.w r2,  -3636(r30)                # 4-byte Folded Reload
	addli r28, r13, 1
	addli r21, r21, 1
	addli r5, r16, 1
	addli r13, zero, 6
	load.d r[6:7], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -3672
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	setlt.sl r1, r[6:7], r[3:4]
	beq r1, zero, .LBB0_37
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_33 Depth 2
	storeli.w r21, -3624(r30)               # 4-byte Folded Spill
	.loc	1 74 26 is_stmt 1               # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:74:26
	bneq r25, r15, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 12
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:0:26
	loadli.w r1,  40(r30)
	addli r3, r30, -3632
	addli r8, zero, 8
	addli r24, zero, 1
	.loc	1 74 26                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:74:26
	load.d r[26:27], 8(r30)
	addli r21, zero, 0
	store.d r[6:7], 0(r3)                   # 8-byte Folded Spill
	loadli.w r3,  36(r30)
	div.s r1, r6, r1
	mod.s r6, r2, r15
	addli r2, r2, 1
	storeli.w r2, -3636(r30)                # 4-byte Folded Spill
	div.s r1, r1, r3
	slli r2, r6, 13
	storeli.w r2, -3620(r30)                # 4-byte Folded Spill
	div.s r3, r1, r11
	slli r4, r3, 3
	slli r3, r3, 5
	sub.s r7, r12, r4
	sub.s r3, r1, r3
	min.s r7, r7, r8
	addli r8, r30, -3656
	mod.s r1, r1, r7
	div.s r3, r3, r7
	add.s r1, r4, r1
	slli r2, r3, 6
	zext_int2long r[3:4], r3
	storeli.w r2, -3640(r30)                # 4-byte Folded Spill
	slli r2, r1, 5
	zext_int2long r[6:7], r1
	sll.d r[3:4], r[3:4], r13
	addli r1, r30, -3648
	store.d r[3:4], 0(r1)                   # 8-byte Folded Spill
	sll.d r[3:4], r[3:4], r24
	addli r1, zero, 12
	store.d r[6:7], 0(r8)                   # 8-byte Folded Spill
	storeli.w r2, -3660(r30)                # 4-byte Folded Spill
	addli r2, zero, 6
	sll.d r[6:7], r[6:7], r1
	add.ul r[3:4], r[26:27], r[3:4]
	addli r1, r30, -3616
	store.d r[3:4], 0(r1)                   # 8-byte Folded Spill
	load.d r[3:4], 0(r30)
	addli r1, zero, 0
	add.ul r[6:7], r[3:4], r[6:7]
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 90 25 is_stmt 1               # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:90:25
	addli r3, zero, 5
	xwait r20, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r22, zero, 0
	ds_cfg r19, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r11, zero, 13
	shuffle_batch r8, r27, r11, 1
	unlock zero
	xsignal r22, 0
	xsignal r15, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r10, r10, 1
	.loc	1 87 20                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:87:20
	addli r9, r9, 1
.LBB0_13:                               # %.thread8
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 74 26                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:74:26
	andi r3, r24, 1
	beq r3, zero, .LBB0_28
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 90 25                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:90:25
	addli r1, r1, 1
	addli r21, zero, 1
	addli r24, zero, 0
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 87 25                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:87:25
	add.s r16, r5, r1
	add.s r13, r28, r1
	.loc	1 82 20                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:82:20
	mod.s r3, r16, r14
	.loc	1 90 25                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:90:25
	mod.s r4, r13, r17
	.loc	1 82 20                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:82:20
	slli r3, r3, 12
	.loc	1 90 25                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:90:25
	slli r8, r4, 11
	.loc	1 82 20                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:82:20
	add.s r27, r3, r23
	beq r25, r20, .LBB0_11
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 0 is_stmt 0                 # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:0:0
	zext_int2long r[3:4], r21
	.loc	1 82 20                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:82:20
	bneq r25, r12, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	sll.d r[3:4], r[3:4], r2
	xwait r22, 0
	lock zero, r15
	dma_cfg r12, r12, zero, 0
	add.ul r[3:4], r[6:7], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r27, r3, r19, 3
	dma_cfg r18, r18, r11, 4
	dma_run zero
	unlock r15
	xsignal r20, 0
	.loc	1 90 25 is_stmt 1               # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:90:25
	j .LBB0_12
.LBB0_18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 87 20                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:87:20
	addli r21, zero, 191
	.loc	1 90 25                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:90:25
	mod.s r27, r10, r17
	.loc	1 87 20                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:87:20
	lui r26, 200
	.loc	1 90 25                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:90:25
	addli r10, r10, 1
	.loc	1 87 20                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:87:20
	mod.s r21, r9, r21
	addli r9, r9, 1
	slli r25, r21, 12
	.loc	1 90 25                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:90:25
	slli r21, r27, 12
	.loc	1 87 20                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:87:20
	add.s r27, r25, r26
	.loc	1 74 26                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:74:26
	core_id r25
	.loc	1 87 20                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:87:20
	addli r26, zero, 7
	beq r25, r26, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 20 is_stmt 0                # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:0:20
	addli r26, zero, 6
	.loc	1 87 20                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:87:20
	bneq r25, r26, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 7
	addli r8, zero, 14
	xwait r2, 0
	addli r2, r30, -3616
	sll.d r[3:4], r[3:4], r8
	addli r8, zero, 128
	load.d r[18:19], 0(r2)                  # 8-byte Folded Reload
	lock zero, r15
	addli r2, zero, 512
	dma_cfg r12, r12, zero, 0
	add.ul r[3:4], r[18:19], r[3:4]
	addli r19, zero, 64
	addli r18, zero, 128
	dma_cfg zero, r4, zero, 2
	dma_cfg r27, r3, r8, 3
	dma_cfg r8, r2, r11, 4
	dma_run zero
	unlock r15
	addli r2, zero, 6
	xsignal r26, 0
	.loc	1 90 25 is_stmt 1               # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:90:25
	j .LBB0_13
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	addli r3, zero, 9
	xwait r2, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 7
	ds_cfg r22, zero, 0
	ds_cfg r19, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r19, zero, 13
	shuffle_coa r21, r27, r11, 2
	unlock zero
	xsignal r3, 0
	addli r3, zero, 8
	xsignal r3, 0
	j .LBB0_13
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 25 is_stmt 0                # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:0:25
	addli r2, zero, 6
	.loc	1 90 25                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:90:25
	bneq r25, r15, .LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r3, zero, 8
	xwait r15, 0
	xwait r3, 0
	lock zero, r12
	mm_cfg r19, r11, r11, 0
	mm_cfg r12, r20, r12, 2
	beq r1, zero, .LBB0_26
# %bb.24:                               # %.preheader11
                                        #   in Loop: Header=BB0_15 Depth=2
	loadli.w r3,  -3620(r30)                # 4-byte Folded Reload
	mm_acc r3, r8, r21, 5
	j .LBB0_27
.LBB0_25:                               # %.thread8.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 74 26 is_stmt 1               # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:74:26
	andi r3, r24, 1
	bneq r3, zero, .LBB0_14
	j .LBB0_30
.LBB0_26:                               # %.preheader
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 90 25                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:90:25
	loadli.w r3,  -3620(r30)                # 4-byte Folded Reload
	mm r3, r8, r21, 5
.LBB0_27:                               # %.thread8.thread47
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r4, zero, 5
	unlock r12
	.loc	1 74 26                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:74:26
	andi r3, r24, 1
	.loc	1 90 25                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:90:25
	xsignal r4, 0
	addli r4, zero, 9
	xsignal r4, 0
	bneq r3, zero, .LBB0_14
	j .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 74 26                         # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:74:26
	bneq r25, r15, .LBB0_30
.LBB0_29:                               # %.thread48
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_30:                               # %.thread46
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 102 66                        # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:102:66
	loadli.w r1,  -3640(r30)                # 4-byte Folded Reload
	loadli.w r21,  -3624(r30)               # 4-byte Folded Reload
	zext_int2long r[5:6], r14
	zext_int2long r[7:8], r19
	zext_int2long r[3:4], r1
	mod.s r1, r21, r15
	min.ul r[5:6], r[3:4], r[5:6]
	addli.d r[5:6], r[5:6], 64
	max.ul r[5:6], r[5:6], r[3:4]
	slli r1, r1, 8
	sub.sl r[3:4], r[5:6], r[3:4]
	lui r5, 391
	min.ul r[3:4], r[3:4], r[7:8]
	add.s r1, r1, r5
	beq r25, r12, .LBB0_5
# %bb.31:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 107 18                        # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:107:18
	addli r2, zero, 5
	bneq r25, r2, .LBB0_35
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 10
	addli r2, zero, 13
	addli r3, zero, 0
	xwait r4, 0
	xwait r2, 0
	lock zero, r20
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, r2, zero, 0
	addli r2, zero, 63
	ew_cfg zero, r2, zero, 2
	addli r2, zero, 8192
	ew_cfg r12, zero, zero, 3
	loadli.w r5,  -3620(r30)                # 4-byte Folded Reload
.LBB0_33:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r5, r3
	addli r3, r3, 256
	dsmadd r4, r4, r1, 0
	bneq r3, r2, .LBB0_33
# %bb.34:                               # %.thread49
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	unlock r20
	xsignal r1, 0
	addli r1, zero, 14
	j .LBB0_6
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 110 79                        # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:110:79
	bneq r25, zero, .LBB0_7
# %bb.36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 79 is_stmt 0                # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:0:79
	loadli.w r1,  -3660(r30)                # 4-byte Folded Reload
	.loc	1 110 79                        # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:110:79
	addli r2, r30, -3656
	zext_int2long r[7:8], zero
	addli r26, r30, -3648
	load.d r[24:25], 0(r2)                  # 8-byte Folded Reload
	sext_int2long r[5:6], r1
	addli r1, zero, 14
	min.sl r[7:8], r[5:6], r[7:8]
	sll.d r[24:25], r[24:25], r1
	load.d r[1:2], 0(r26)                   # 8-byte Folded Reload
	addli.d r[7:8], r[7:8], 32
	sll.d r[27:28], r[1:2], r12
	load.d r[1:2], 24(r30)
	max.sl r[7:8], r[7:8], r[5:6]
	sub.sl r[5:6], r[7:8], r[5:6]
	zext_int2long r[7:8], r11
	add.ul r[24:25], r[1:2], r[24:25]
	addli r1, zero, 11
	min.sl r[5:6], r[5:6], r[7:8]
	add.ul r[7:8], r[24:25], r[27:28]
	addli r24, zero, 5
	xwait r1, 0
	slli r1, r3, 2
	.loc	1 74 26 is_stmt 1               # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:74:26
	core_id r25
	.loc	1 110 79                        # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:110:79
	lock zero, r24
	dma_cfg r12, zero, zero, 0
	dma_cfg zero, r12, zero, 1
	dma_cfg r8, zero, zero, 2
	loadli.w r2,  -3620(r30)                # 4-byte Folded Reload
	dma_cfg r7, r2, r1, 3
	addli r1, zero, 256
	addli r2, zero, 512
	dma_cfg r2, r1, r5, 4
	addli r1, zero, 12
	dma_run zero
	unlock r24
	j .LBB0_6
.LBB0_37:                               # %._crit_edge
	.loc	1 23 0                          # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:23:0
	xsignal zero, 0
	bneq r25, zero, .LBB0_39
# %bb.38:
	.loc	1 0 0 is_stmt 0                 # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:0:0
	addli r1, zero, 2
	.loc	1 23 0                          # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:23:0
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
	.loc	1 23 0 epilogue_begin           # c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py:23:0
	addli sp, sp, 3672
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
	.long	3736                            # 0xe98
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
.asciz	"c5fjl5xz7otzmwufnofvefe7qswdcjubojh4zp5vq5jsimfu7h4z.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/5f" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
