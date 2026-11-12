	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu4/cache/triton-p800-ops-5134b460d69771aa/native-activation-tkqq5t5b" "relu-candidate.mlir"
	.loc	1 2 0                           # relu-candidate.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3064
	addli r1, zero, 1
.Ltmp0:
	.loc	1 51 11 prologue_end            # relu-candidate.mlir:51:11
	core_id r2
	addli r30, sp, 3000
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
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
	addli r1, zero, 13
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 15
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
.LBB0_3:
	loadli.w r1,  32(r30)
	loadli.w r3,  36(r30)
	load_param_i r5, 1
	loadli.w r4,  40(r30)
	storeli.w zero, -12(r30)
	storeli.w zero, -24(r30)
	storeli.w zero, -640(r30)
	storeli.w zero, -1284(r30)
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
	addli r5, r30, -3000
	loadli.w r14,  -12(r30)
	loadli.w r16,  -24(r30)
	loadli.w r10,  -640(r30)
	loadli.w r11,  -1284(r30)
	loadli.w r12,  -1904(r30)
	loadli.w r13,  -2928(r30)
	sext_int2long r[7:8], r1
	addli r15, zero, 1
	addli r17, zero, 2
	addli r18, zero, 4
	addli r21, zero, 255
	lui r22, 4
	addli r24, zero, 3
	addli r25, zero, 64
	addli r26, zero, 32
	addli r27, zero, 16
	addli r19, zero, 0
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	addli r4, zero, 154
	j .LBB0_7
.LBB0_5:                                # %.thread50
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 79 11 is_stmt 1               # relu-candidate.mlir:79:11
	addli r3, r30, -2976
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	slli r3, r19, 1
	sll.d r[7:8], r[1:2], r15
	addli r1, zero, 13
	xwait r1, 0
	load.d r[1:2], 16(r30)
	lock zero, r18
	dma_cfg zero, r15, zero, 0
	add.ul r[7:8], r[1:2], r[7:8]
	addli r1, zero, 256
	.loc	1 51 11                         # relu-candidate.mlir:51:11
	core_id r2
	.loc	1 79 11                         # relu-candidate.mlir:79:11
	dma_cfg zero, r8, zero, 2
	dma_cfg r6, r7, r3, 3
	addli r3, zero, 512
	dma_cfg r3, r1, r15, 4
	addli r1, zero, 12
	dma_run zero
	unlock r18
	xsignal r1, 0
	loadli.w r14,  -2940(r30)               # 4-byte Folded Reload
.LBB0_6:                                # %.thread52
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	addli r1, r30, -2952
	loadli.w r19,  -2956(r30)               # 4-byte Folded Reload
	addli r16, r16, 1
	.loc	1 83 11 is_stmt 1               # relu-candidate.mlir:83:11
	addli r14, r14, 1
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -3000
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	addli.d r[7:8], r[7:8], 1
	setlt.sl r3, r[7:8], r[5:6]
	beq r3, zero, .LBB0_37
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
                                        #     Child Loop BB0_32 Depth 2
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	storeli.w r16, -2944(r30)               # 4-byte Folded Spill
	storeli.w r14, -2940(r30)               # 4-byte Folded Spill
	.loc	1 51 11 is_stmt 1               # relu-candidate.mlir:51:11
	bneq r2, r18, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r3,  40(r30)
	loadli.w r5,  36(r30)
	addli r16, zero, 8
	addli r1, r30, -2952
	addli r14, zero, 1
	addli r23, zero, 0
	addli r28, zero, 0
	store.d r[7:8], 0(r1)                   # 8-byte Folded Spill
	div.s r3, r7, r3
	mod.s r7, r19, r17
	addli r19, r19, 1
	storeli.w r19, -2956(r30)               # 4-byte Folded Spill
	.loc	1 51 11                         # relu-candidate.mlir:51:11
	load.d r[19:20], 8(r30)
	div.s r3, r3, r5
	div.s r5, r3, r16
	slli r5, r5, 3
	sub.s r6, r15, r5
	sub.s r8, r3, r5
	min.s r6, r6, r16
	mod.s r9, r3, r6
	div.s r6, r8, r6
	slli r3, r7, 13
	addli r8, zero, 7
	slli r1, r6, 7
	add.s r5, r5, r9
	zext_int2long r[6:7], r6
	storeli.w r1, -2968(r30)                # 4-byte Folded Spill
	slli r1, r5, 4
	sll.d r[6:7], r[6:7], r8
	zext_int2long r[8:9], r5
	storeli.w r1, -2992(r30)                # 4-byte Folded Spill
	addli r1, r30, -2976
	store.d r[6:7], 0(r1)                   # 8-byte Folded Spill
	sll.d r[5:6], r[6:7], r14
	addli r7, r30, -2984
	addli r1, zero, 11
	store.d r[8:9], 0(r7)                   # 8-byte Folded Spill
	sll.d r[7:8], r[8:9], r1
	add.ul r[5:6], r[19:20], r[5:6]
	addli r1, r30, -2936
	addli r20, zero, 6
	store.d r[5:6], 0(r1)                   # 8-byte Folded Spill
	load.d r[5:6], 0(r30)
	add.ul r[7:8], r[5:6], r[7:8]
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 66 13 is_stmt 1               # relu-candidate.mlir:66:13
	addli r1, zero, 5
	xwait r17, 0
	xwait r1, 0
	lock zero, zero
	ds_cfg r24, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r27, zero, 13
	shuffle_batch r19, r9, r26, 1
	unlock zero
	xsignal r24, 0
	xsignal r18, 0
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r11, r11, 1
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	addli r10, r10, 1
.LBB0_12:                               # %.thread7
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 51 11                         # relu-candidate.mlir:51:11
	beq r14, zero, .LBB0_27
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	addli r28, r28, 1
	addli r23, zero, 1
	addli r14, zero, 0
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	.loc	1 60 13                         # relu-candidate.mlir:60:13
	mod.s r5, r12, r4
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	mod.s r6, r13, r21
	addli r13, r13, 1
	.loc	1 60 13                         # relu-candidate.mlir:60:13
	addli r12, r12, 1
	andi r14, r14, 1
	slli r5, r5, 11
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	slli r19, r6, 10
	.loc	1 60 13                         # relu-candidate.mlir:60:13
	add.s r9, r5, r22
	beq r2, r17, .LBB0_10
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	zext_int2long r[5:6], r23
	.loc	1 60 13                         # relu-candidate.mlir:60:13
	bneq r2, r15, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	sll.d r[5:6], r[5:6], r20
	xwait r24, 0
	lock zero, r18
	addli r1, zero, 128
	dma_cfg r15, r15, zero, 0
	add.ul r[5:6], r[7:8], r[5:6]
	dma_cfg zero, r6, zero, 2
	dma_cfg r9, r5, r25, 3
	dma_cfg r1, r1, r27, 4
	dma_run zero
	unlock r18
	xsignal r17, 0
	.loc	1 66 13 is_stmt 1               # relu-candidate.mlir:66:13
	j .LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	addli r1, zero, 153
	mod.s r9, r10, r1
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	addli r1, zero, 160
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	addli r10, r10, 1
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	mod.s r23, r11, r1
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	lui r1, 81
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	addli r11, r11, 1
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	slli r9, r9, 13
	add.s r9, r9, r1
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	slli r23, r23, 13
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	addli r1, zero, 7
	beq r2, r1, .LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r2, r20, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 13
	addli r19, zero, 7
	sll.d r[5:6], r[5:6], r1
	addli r1, r30, -2936
	xwait r19, 0
	load.d r[21:22], 0(r1)                  # 8-byte Folded Reload
	lock zero, r18
	addli r1, zero, 256
	dma_cfg r15, r15, zero, 0
	add.ul r[5:6], r[21:22], r[5:6]
	lui r22, 4
	addli r21, zero, 255
	dma_cfg zero, r6, zero, 2
	dma_cfg r9, r5, r1, 3
	dma_cfg r1, r1, r26, 4
	dma_run zero
	unlock r18
	xsignal r20, 0
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	j .LBB0_12
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 9
	xwait r20, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 128
	ds_cfg r24, zero, 0
	ds_cfg r1, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r1, zero, 13
	addli r1, zero, 7
	shuffle_coa r23, r9, r26, 2
	unlock zero
	xsignal r1, 0
	xsignal r16, 0
	j .LBB0_12
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r2, r18, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 13 is_stmt 0                # relu-candidate.mlir:0:13
	addli r9, zero, 1
	addli r5, zero, 1
	addli r6, zero, 0
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	xwait r18, 0
	xwait r16, 0
	beq r28, zero, .LBB0_24
.LBB0_23:                               # %.preheader8
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r16, r6, 12
	slli r6, r6, 8
	lock zero, r9
	mm_cfg r25, r26, r27, 0
	or r16, r16, r23
	or r6, r6, r3
	mm_cfg r9, r18, r9, 2
	mm_acc r6, r19, r16, 5
	andi r16, r5, 1
	addli r6, zero, 1
	addli r5, zero, 0
	unlock r9
	bneq r16, zero, .LBB0_23
	j .LBB0_25
.LBB0_24:                               # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r16, r6, 12
	slli r6, r6, 8
	lock zero, r9
	mm_cfg r25, r26, r27, 0
	or r16, r16, r23
	or r6, r6, r3
	mm_cfg r9, r18, r9, 2
	mm r6, r19, r16, 5
	andi r16, r5, 1
	addli r6, zero, 1
	addli r5, zero, 0
	unlock r9
	bneq r16, zero, .LBB0_24
.LBB0_25:                               # %.thread7.thread48
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 5
	addli r16, zero, 8
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	bneq r14, zero, .LBB0_13
	j .LBB0_28
.LBB0_26:                               # %.thread7.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 13                          # relu-candidate.mlir:0:13
	bneq r14, zero, .LBB0_13
	j .LBB0_29
.LBB0_27:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 51 11 is_stmt 1               # relu-candidate.mlir:51:11
	bneq r2, r18, .LBB0_29
.LBB0_28:                               # %.thread49
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_29:                               # %.thread47
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r16,  -2944(r30)               # 4-byte Folded Reload
	.loc	1 79 11 is_stmt 1               # relu-candidate.mlir:79:11
	loadli.w r1,  -2968(r30)                # 4-byte Folded Reload
	mod.s r5, r16, r17
	zext_int2long r[6:7], r1
	addli r1, zero, 128
	zext_int2long r[8:9], r1
	lui r1, 387
	max.ul r[8:9], r[6:7], r[8:9]
	slli r5, r5, 9
	sub.sl r[19:20], r[8:9], r[6:7]
	add.s r6, r5, r1
	beq r2, r15, .LBB0_5
# %bb.30:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r14,  -2940(r30)               # 4-byte Folded Reload
	addli r5, r30, -2936
	ori r7, r1, 1024
	.loc	1 83 11 is_stmt 1               # relu-candidate.mlir:83:11
	addli r1, zero, 5
	store.d r[19:20], 0(r5)                 # 8-byte Folded Spill
	addli r19, zero, 8192
	mod.s r5, r14, r17
	slli r5, r5, 13
	add.s r5, r5, r7
	bneq r2, r1, .LBB0_34
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	addli r7, zero, 0
	xwait r1, 0
	addli r1, zero, 12
	xwait r1, 0
	addli r1, zero, 15
	xwait r1, 0
	lock zero, r17
	lui r1, 260096
	ew_cfg r15, zero, zero, 10
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 127
	ew_cfg zero, r1, zero, 2
	ew_cfg r15, zero, zero, 3
.LBB0_32:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r8, r5, r7
	add.s r9, r3, r7
	addli r7, r7, 512
	dsmadd r8, r9, r6, 0
	bneq r7, r19, .LBB0_32
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	ew_cfg zero, zero, zero, 10
	unlock r17
	xsignal r1, 0
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 14
	j .LBB0_36
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 95 5                          # relu-candidate.mlir:95:5
	bneq r2, zero, .LBB0_6
# %bb.35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # relu-candidate.mlir:0:5
	loadli.w r1,  -2992(r30)                # 4-byte Folded Reload
	zext_int2long r[8:9], zero
	.loc	1 95 5                          # relu-candidate.mlir:95:5
	addli r3, r30, -2984
	sext_int2long r[6:7], r1
	addli r1, r30, -2992
	min.sl r[8:9], r[6:7], r[8:9]
	addli.d r[8:9], r[8:9], 16
	max.sl r[8:9], r[8:9], r[6:7]
	sub.sl r[6:7], r[8:9], r[6:7]
	store.d r[6:7], 0(r1)                   # 8-byte Folded Spill
	zext_int2long r[6:7], r27
	addli r1, r30, -2968
	store.d r[6:7], 0(r1)                   # 8-byte Folded Spill
	load.d r[6:7], 0(r3)                    # 8-byte Folded Reload
	addli r1, zero, 12
	addli r3, r30, -2936
	sll.d r[8:9], r[6:7], r1
	addli r1, r30, -2976
	load.d r[6:7], 0(r1)                    # 8-byte Folded Reload
	sll.d r[6:7], r[6:7], r15
	store.d r[6:7], 0(r1)                   # 8-byte Folded Spill
	addli r1, r30, -2968
	load.d r[6:7], 24(r30)
	load.d r[19:20], 0(r1)                  # 8-byte Folded Reload
	addli r1, r30, -2992
	add.ul r[6:7], r[6:7], r[8:9]
	load.d r[8:9], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2976
	min.sl r[19:20], r[8:9], r[19:20]
	load.d r[8:9], 0(r1)                    # 8-byte Folded Reload
	addli r1, zero, 14
	xwait r1, 0
	addli r1, zero, 5
	add.ul r[6:7], r[6:7], r[8:9]
	lock zero, r1
	dma_cfg r15, zero, zero, 0
	dma_cfg zero, r15, zero, 1
	load.d r[8:9], 0(r3)                    # 8-byte Folded Reload
	dma_cfg r7, zero, zero, 2
	slli r3, r8, 2
	dma_cfg r6, r5, r3, 3
	addli r3, zero, 256
	addli r5, zero, 512
	dma_cfg r3, r5, r19, 4
	dma_run zero
	unlock r1
	addli r1, zero, 15
.LBB0_36:                               # %.thread52
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	xsignal r1, 0
	j .LBB0_6
.LBB0_37:                               # %._crit_edge
	.loc	1 2 3 is_stmt 1                 # relu-candidate.mlir:2:3
	xsignal zero, 0
	bneq r2, zero, .LBB0_39
# %bb.38:
	.loc	1 0 3 is_stmt 0                 # relu-candidate.mlir:0:3
	addli r1, zero, 2
	.loc	1 2 3                           # relu-candidate.mlir:2:3
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
	.loc	1 2 3 epilogue_begin            # relu-candidate.mlir:2:3
	addli sp, sp, 3000
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
	.long	3064                            # 0xbf8
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
.asciz	"relu-candidate.mlir"           # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu4/cache/triton-p800-ops-5134b460d69771aa/native-activation-tkqq5t5b" # string offset=27
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
