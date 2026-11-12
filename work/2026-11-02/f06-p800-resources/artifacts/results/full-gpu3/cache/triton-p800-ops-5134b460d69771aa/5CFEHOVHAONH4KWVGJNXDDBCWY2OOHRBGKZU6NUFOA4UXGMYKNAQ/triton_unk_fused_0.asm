	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/ki" "ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py"
	.loc	1 23 0                          # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:23:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4264
	addli r1, zero, 1
.Ltmp0:
	.loc	1 74 26 prologue_end            # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:74:26
	core_id r24
	addli r30, sp, 4200
	xsignal_mode_cfg r1
	beq r24, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
.LBB0_3:
	loadli.w r1,  32(r30)
	loadli.w r3,  36(r30)
	load_param_i r5, 1
	loadli.w r4,  40(r30)
	storeli.w zero, -16(r30)
	storeli.w zero, -1040(r30)
	storeli.w zero, -2064(r30)
	storeli.w zero, -3088(r30)
	storeli.w zero, -4112(r30)
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
	sext_int2long r[7:8], r1
	lui r1, 385
	sext_int2long r[3:4], r3
	addli r2, r30, -4192
	loadli.w r13,  -16(r30)
	loadli.w r9,  -1040(r30)
	loadli.w r10,  -2064(r30)
	loadli.w r5,  -4112(r30)
	addli r11, zero, 16
	addli r12, zero, 1
	addli r15, zero, 3
	addli r16, zero, 4
	addli r19, zero, 255
	addli r20, zero, 2
	addli r14, zero, 5
	addli r22, zero, 64
	addli r23, zero, 32
	addli r18, zero, 0
	ori r1, r1, 2048
	store.d r[3:4], 0(r2)                   # 8-byte Folded Spill
	loadli.w r4,  -3088(r30)
	addli r2, zero, 6
	addli r3, zero, 128
	storeli.w r1, -4196(r30)                # 4-byte Folded Spill
	lui r1, 130
	ori r1, r1, 2048
	storeli.w r1, -4116(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread10
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 102 66 is_stmt 1              # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:102:66
	addli r17, r30, -4168
	slli r4, r4, 1
	load.d r[7:8], 0(r17)                   # 8-byte Folded Reload
	addli r17, zero, 14
	xwait r17, 0
	load.d r[17:18], 16(r30)
	lock zero, r16
	sll.d r[7:8], r[7:8], r12
	dma_cfg zero, r12, zero, 0
	add.ul r[7:8], r[17:18], r[7:8]
	dma_cfg zero, r8, zero, 2
	dma_cfg r6, r7, r4, 3
	addli r4, zero, 256
	dma_cfg r4, r3, r12, 4
	addli r4, zero, 13
	dma_run zero
	unlock r16
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:0:0
	xsignal r4, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r4, r30, -4144
	addli r6, r30, -4192
	loadli.w r18,  -4148(r30)               # 4-byte Folded Reload
	addli r13, r13, 1
	load.d r[7:8], 0(r4)                    # 8-byte Folded Reload
	load.d r[4:5], 0(r6)                    # 8-byte Folded Reload
	addli.d r[7:8], r[7:8], 1
	setlt.sl r6, r[7:8], r[4:5]
	addli r5, r1, 1
	addli r4, r28, 1
	beq r6, zero, .LBB0_37
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_33 Depth 2
	storeli.w r13, -4132(r30)               # 4-byte Folded Spill
	.loc	1 74 26 is_stmt 1               # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:74:26
	bneq r24, r16, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 12
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:0:26
	loadli.w r1,  40(r30)
	addli r6, r30, -4144
	addli r17, zero, 8
	.loc	1 74 26                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:74:26
	load.d r[26:27], 8(r30)
	addli r21, zero, 0
	store.d r[7:8], 0(r6)                   # 8-byte Folded Spill
	loadli.w r6,  36(r30)
	div.s r1, r7, r1
	mod.s r8, r18, r15
	addli r18, r18, 1
	storeli.w r18, -4148(r30)               # 4-byte Folded Spill
	div.s r1, r1, r6
	slli r25, r8, 12
	div.s r6, r1, r11
	slli r7, r6, 3
	slli r6, r6, 4
	sub.s r13, r12, r7
	sub.s r6, r1, r6
	min.s r13, r13, r17
	mod.s r1, r1, r13
	div.s r6, r6, r13
	addli r13, zero, 1
	add.s r1, r7, r1
	slli r7, r6, 6
	storeli.w r7, -4160(r30)                # 4-byte Folded Spill
	zext_int2long r[6:7], r6
	slli r8, r1, 4
	zext_int2long r[17:18], r1
	addli r1, r30, -4168
	sll.d r[6:7], r[6:7], r2
	addli r2, r30, -4176
	storeli.w r8, -4180(r30)                # 4-byte Folded Spill
	store.d r[6:7], 0(r1)                   # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r13
	addli r1, zero, 11
	store.d r[17:18], 0(r2)                 # 8-byte Folded Spill
	sll.d r[17:18], r[17:18], r1
	add.ul r[1:2], r[26:27], r[6:7]
	addli r6, r30, -4128
	addli r26, zero, 0
	store.d r[1:2], 0(r6)                   # 8-byte Folded Spill
	load.d r[6:7], 0(r30)
	addli r2, zero, 6
	add.ul r[6:7], r[6:7], r[17:18]
	j .LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 90 25 is_stmt 1               # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:90:25
	xwait r20, 0
	xwait r14, 0
	lock zero, zero
	ds_cfg r15, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r11, zero, 13
	shuffle_batch r8, r27, r23, 1
	unlock zero
	xsignal r15, 0
	xsignal r16, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r10, r10, 1
	.loc	1 87 20                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:87:20
	addli r9, r9, 1
	.loc	1 74 26                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:74:26
	andi r8, r13, 1
	beq r8, zero, .LBB0_28
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 90 25                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:90:25
	addli r26, r26, 1
	addli r21, zero, 1
	addli r13, zero, 0
.LBB0_14:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 87 25                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:87:25
	add.s r28, r4, r26
	add.s r1, r5, r26
	.loc	1 82 20                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:82:20
	mod.s r8, r28, r19
	.loc	1 90 25                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:90:25
	mod.s r17, r1, r19
	.loc	1 82 20                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:82:20
	slli r18, r8, 11
	.loc	1 90 25                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:90:25
	slli r8, r17, 10
	.loc	1 82 20                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:82:20
	addli r27, r18, 12288
	beq r24, r20, .LBB0_11
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:0:0
	zext_int2long r[17:18], r21
	.loc	1 82 20                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:82:20
	bneq r24, r12, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	sll.d r[17:18], r[17:18], r2
	xwait r15, 0
	lock zero, r16
	dma_cfg r12, r12, zero, 0
	add.ul r[17:18], r[6:7], r[17:18]
	dma_cfg zero, r18, zero, 2
	dma_cfg r27, r17, r22, 3
	dma_cfg r3, r3, r11, 4
	dma_run zero
	unlock r16
	xsignal r20, 0
	.loc	1 90 25 is_stmt 1               # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:90:25
	j .LBB0_12
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 87 20                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:87:20
	mod.s r21, r9, r19
	.loc	1 90 25                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:90:25
	mod.s r27, r10, r19
	addli r10, r10, 1
	.loc	1 87 20                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:87:20
	addli r9, r9, 1
	addli r11, zero, 7
	slli r24, r21, 12
	.loc	1 90 25                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:90:25
	slli r21, r27, 12
	.loc	1 87 20                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:87:20
	loadli.w r27,  -4116(r30)               # 4-byte Folded Reload
	add.s r27, r24, r27
	.loc	1 74 26                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:74:26
	core_id r24
	.loc	1 87 20                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:87:20
	beq r24, r11, .LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r24, r2, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 13
	addli r8, r30, -4128
	sll.d r[17:18], r[17:18], r3
	addli r3, zero, 7
	xwait r3, 0
	load.d r[2:3], 0(r8)                    # 8-byte Folded Reload
	lock zero, r16
	addli r8, zero, 128
	dma_cfg r12, r12, zero, 0
	add.ul r[17:18], r[2:3], r[17:18]
	addli r2, zero, 6
	addli r3, zero, 128
	dma_cfg zero, r18, zero, 2
	dma_cfg r27, r17, r8, 3
	addli r17, zero, 256
	dma_cfg r8, r17, r23, 4
	dma_run zero
	unlock r16
	xsignal r2, 0
	j .LBB0_21
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 90 25                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:90:25
	addli r8, zero, 9
	xwait r2, 0
	xwait r8, 0
	lock zero, zero
	addli r8, zero, 7
	ds_cfg r15, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r21, r27, r23, 2
	unlock zero
	xsignal r8, 0
	addli r8, zero, 8
	xsignal r8, 0
.LBB0_21:                               # %.thread8
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 25 is_stmt 0                # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:0:25
	addli r11, zero, 16
	.loc	1 74 26 is_stmt 1               # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:74:26
	andi r8, r13, 1
	bneq r8, zero, .LBB0_13
	j .LBB0_28
.LBB0_22:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 26 is_stmt 0                # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:0:26
	addli r11, zero, 16
	.loc	1 90 25 is_stmt 1               # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:90:25
	bneq r24, r16, .LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=2
	addli r17, zero, 8
	xwait r16, 0
	xwait r17, 0
	lock zero, r12
	mm_cfg r22, r23, r11, 0
	mm_cfg r12, r20, r12, 2
	beq r26, zero, .LBB0_26
# %bb.24:                               # %.preheader11
                                        #   in Loop: Header=BB0_14 Depth=2
	mm_acc r25, r8, r21, 5
	j .LBB0_27
.LBB0_25:                               # %.thread8.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 74 26                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:74:26
	andi r8, r13, 1
	bneq r8, zero, .LBB0_13
	j .LBB0_30
.LBB0_26:                               # %.preheader
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 90 25                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:90:25
	mm r25, r8, r21, 5
.LBB0_27:                               # %.thread8.thread47
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 74 26                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:74:26
	andi r8, r13, 1
	.loc	1 90 25                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:90:25
	addli r13, zero, 9
	unlock r12
	xsignal r14, 0
	xsignal r13, 0
	.loc	1 74 26                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:74:26
	bneq r8, zero, .LBB0_13
	j .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:0:26
	bneq r24, r16, .LBB0_30
.LBB0_29:                               # %.thread48
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 74 26                         # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:74:26
	addli r4, zero, 10
	xsignal r4, 0
.LBB0_30:                               # %.thread46
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 102 66 is_stmt 1              # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:102:66
	loadli.w r4,  -4160(r30)                # 4-byte Folded Reload
	zext_int2long r[6:7], r22
	loadli.w r13,  -4132(r30)               # 4-byte Folded Reload
	zext_int2long r[4:5], r4
	mod.s r8, r13, r15
	min.ul r[17:18], r[4:5], r[6:7]
	addli.d r[17:18], r[17:18], 64
	max.ul r[17:18], r[17:18], r[4:5]
	slli r8, r8, 8
	sub.sl r[4:5], r[17:18], r[4:5]
	min.ul r[4:5], r[4:5], r[6:7]
	loadli.w r6,  -4196(r30)                # 4-byte Folded Reload
	add.s r6, r8, r6
	beq r24, r12, .LBB0_5
# %bb.31:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 107 18                        # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:107:18
	bneq r24, r14, .LBB0_35
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	addli r5, zero, 10
	addli r4, zero, 0
	addli r7, zero, 4096
	xwait r5, 0
	addli r5, zero, 13
	xwait r5, 0
	lock zero, r20
	lui r5, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r5, r5, zero, 0
	addli r5, zero, 63
	ew_cfg zero, r5, zero, 2
	ew_cfg r12, zero, zero, 3
.LBB0_33:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r25, r4
	addli r4, r4, 256
	dsmadd r5, r5, r6, 0
	bneq r4, r7, .LBB0_33
# %bb.34:                               # %.thread49
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 11
	unlock r20
	xsignal r4, 0
	addli r4, zero, 14
	j .LBB0_6
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 110 79                        # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:110:79
	bneq r24, zero, .LBB0_7
# %bb.36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 79 is_stmt 0                # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:0:79
	loadli.w r2,  -4180(r30)                # 4-byte Folded Reload
	zext_int2long r[17:18], zero
	addli r8, zero, 12
	.loc	1 110 79                        # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:110:79
	addli r21, zero, 11
	slli r4, r4, 2
	addli r14, zero, 5
	sext_int2long r[6:7], r2
	addli r2, r30, -4128
	min.sl r[17:18], r[6:7], r[17:18]
	addli.d r[17:18], r[17:18], 16
	max.sl r[17:18], r[17:18], r[6:7]
	sub.sl r[6:7], r[17:18], r[6:7]
	load.d r[17:18], 24(r30)
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	zext_int2long r[6:7], r11
	addli r2, r30, -4160
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -4176
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4168
	sll.d r[26:27], r[6:7], r8
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	add.ul r[26:27], r[17:18], r[26:27]
	sll.d r[6:7], r[6:7], r12
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -4128
	load.d r[17:18], 0(r2)                  # 8-byte Folded Reload
	addli r2, r30, -4160
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4168
	min.sl r[17:18], r[17:18], r[6:7]
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	xwait r21, 0
	addli r21, zero, 5
	addli r2, zero, 256
	lock zero, r21
	dma_cfg r12, zero, zero, 0
	add.ul r[6:7], r[26:27], r[6:7]
	dma_cfg zero, r12, zero, 1
	dma_cfg r7, zero, zero, 2
	dma_cfg r6, r25, r4, 3
	dma_cfg r2, r2, r17, 4
	addli r2, zero, 6
	dma_run zero
	unlock r21
	xsignal r8, 0
	j .LBB0_7
.LBB0_37:                               # %._crit_edge
	.loc	1 23 0 is_stmt 1                # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:23:0
	xsignal zero, 0
	bneq r24, zero, .LBB0_39
# %bb.38:
	.loc	1 0 0 is_stmt 0                 # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:0:0
	addli r1, zero, 2
	.loc	1 23 0                          # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:23:0
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
	.loc	1 23 0 epilogue_begin           # ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py:23:0
	addli sp, sp, 4200
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
	.long	4264                            # 0x10a8
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
.asciz	"ckiuaihcduzn2movdtaqilgwonccdglfagixwjjan3k62cleddt4.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/ki" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
