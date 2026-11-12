	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/gr" "cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py"
	.loc	1 22 0                          # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4200
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:73:26
	core_id r14
	addli r30, sp, 4136
	xsignal_mode_cfg r1
	beq r14, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:0:26
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
	ble.s r2, r1, .LBB0_36
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	addli r4, r30, -4104
	sext_int2long r[10:11], r1
	loadli.w r28,  -1024(r30)
	loadli.w r5,  -2048(r30)
	loadli.w r12,  -3072(r30)
	loadli.w r1,  -4096(r30)
	addli r13, zero, 32
	addli r24, zero, 1
	addli r25, zero, 5
	addli r17, zero, 4
	addli r19, zero, 2
	addli r20, zero, 255
	lui r21, 130
	addli r22, zero, 7
	addli r23, zero, 6
	addli r27, zero, 16
	addli r26, zero, 3
	addli r18, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r4, zero, 128
	j .LBB0_7
.LBB0_5:                                # %.split17.split.us
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:73:26
	addli r5, r5, 2
	addli r28, r28, 2
.LBB0_6:                                # %.thread91
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26                          # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:0:26
	addli r6, r30, -4104
	addli.d r[10:11], r[10:11], 1
	addli r18, r18, 1
	load.d r[2:3], 0(r6)                    # 8-byte Folded Reload
	setlt.sl r2, r[10:11], r[2:3]
	beq r2, zero, .LBB0_36
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_16 Depth 2
	loadli.w r2,  32(r30)
	loadli.w r3,  28(r30)
	.loc	1 54 50 is_stmt 1               # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:54:50
	addli r8, zero, 8
	div.s r2, r10, r2
	div.s r6, r2, r3
	.loc	1 53 22                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:53:22
	div.s r7, r6, r13
	.loc	1 54 41                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:54:41
	slli r2, r7, 3
	.loc	1 54 30 is_stmt 0               # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:54:30
	sub.s r3, r24, r2
	.loc	1 54 50                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:54:50
	min.s r8, r3, r8
	.loc	1 55 40 is_stmt 1               # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:55:40
	mod.s r3, r6, r8
	.loc	1 55 34 is_stmt 0               # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:55:34
	add.s r2, r2, r3
	.loc	1 95 15 is_stmt 1               # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:95:15
	zext_int2long r[15:16], r2
	.loc	1 73 26                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:73:26
	bneq r14, r17, .LBB0_9
# %bb.8:                                # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	xwait r3, 0
	j .LBB0_13
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:0:26
	beq r14, r24, .LBB0_28
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r14, r19, .LBB0_13
# %bb.11:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 1
.LBB0_12:                               # %.thread.us21
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:81:20
	mod.s r2, r12, r20
	.loc	1 89 25                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:89:25
	mod.s r6, r1, r20
	xwait r19, 0
	xwait r25, 0
	lock zero, zero
	addli r1, r1, 1
	.loc	1 81 20                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:81:20
	addli r12, r12, 1
	.loc	1 89 25                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:89:25
	ds_cfg r19, zero, 0
	ds_cfg r13, zero, 1
	ds_cfg r13, zero, 14
	ds_cfg r27, zero, 13
	.loc	1 81 20                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:81:20
	slli r2, r2, 11
	.loc	1 89 25                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:89:25
	slli r6, r6, 11
	.loc	1 81 20                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:81:20
	addli r2, r2, 10240
	.loc	1 89 25                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:89:25
	shuffle_batch r6, r2, r13, 1
	.loc	1 73 26                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:73:26
	andi r2, r3, 1
	addli r3, zero, 0
	.loc	1 89 25                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:89:25
	unlock zero
	xsignal r26, 0
	xsignal r17, 0
	bneq r2, zero, .LBB0_12
	j .LBB0_5
.LBB0_13:                               # %.split.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:0:25
	slli r7, r7, 5
	addli r3, r30, -4112
	slli r2, r2, 4
	addli r24, zero, 1
	addli r26, zero, 0
	sub.s r6, r6, r7
	mod.s r7, r18, r25
	store.d r[15:16], 0(r3)                 # 8-byte Folded Spill
	storeli.w r2, -4128(r30)                # 4-byte Folded Spill
	addli r3, zero, 0
	div.s r6, r6, r8
	zext_int2long r[8:9], r6
	slli r2, r6, 5
	sll.d r[15:16], r[8:9], r25
	slli r8, r7, 11
	.loc	1 73 26 is_stmt 1               # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:73:26
	load.d r[6:7], 8(r30)
	storeli.w r2, -4132(r30)                # 4-byte Folded Spill
	addli r2, r30, -4120
	sll.d r[15:16], r[15:16], r19
	add.ul r[6:7], r[6:7], r[15:16]
	store.d r[15:16], 0(r2)                 # 8-byte Folded Spill
	j .LBB0_16
.LBB0_14:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:89:25
	addli r3, zero, 9
	xwait r23, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r19, zero, 0
	ds_cfg r13, zero, 1
	ds_cfg r13, zero, 14
	ds_cfg r13, zero, 13
	shuffle_coa r15, r2, r13, 2
	addli r2, zero, 8
	unlock zero
	xsignal r22, 0
	xsignal r2, 0
	.loc	1 73 26                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:73:26
	andi r2, r24, 1
	beq r2, zero, .LBB0_26
.LBB0_15:                               # %.split.backedge
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:89:25
	addli r26, r26, 1
	lui r3, 4
	addli r24, zero, 0
.LBB0_16:                               # %.split
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r9, r28, r26
	add.s r25, r5, r26
	add.s r16, r1, r26
	.loc	1 86 20                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:86:20
	mod.s r2, r9, r20
	.loc	1 89 25                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:89:25
	mod.s r15, r25, r20
	.loc	1 86 20                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:86:20
	slli r2, r2, 12
	.loc	1 89 25                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:89:25
	slli r15, r15, 12
	.loc	1 86 20                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:86:20
	add.s r2, r2, r21
	beq r14, r22, .LBB0_14
# %bb.17:                               # %.split
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 20 is_stmt 0                # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:0:20
	bneq r14, r23, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 86 20                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:86:20
	zext_int2long r[14:15], r3
	xwait r22, 0
	lock zero, r17
	dma_cfg zero, zero, zero, 0
	add.ul r[14:15], r[6:7], r[14:15]
	dma_cfg zero, r15, zero, 2
	dma_cfg r2, r14, r4, 3
	addli r2, zero, 512
	.loc	1 73 26 is_stmt 1               # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:73:26
	core_id r14
	.loc	1 86 20                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:86:20
	dma_cfg r4, r2, r13, 4
	dma_run zero
	unlock r17
	xsignal r23, 0
	.loc	1 73 26                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:73:26
	andi r2, r24, 1
	bneq r2, zero, .LBB0_15
	j .LBB0_26
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 26 is_stmt 0                # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:0:26
	andi r3, r24, 1
	.loc	1 89 25 is_stmt 1               # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:89:25
	bneq r14, r17, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 25 is_stmt 0                # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:0:25
	mod.s r2, r16, r20
	.loc	1 89 25                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:89:25
	addli r24, zero, 8
	xwait r17, 0
	xwait r24, 0
	addli r24, zero, 1
	lock zero, r24
	mm_cfg r13, r13, r27, 0
	slli r2, r2, 11
	mm_cfg r19, r24, r24, 2
	beq r26, zero, .LBB0_23
# %bb.21:                               # %.preheader8
                                        #   in Loop: Header=BB0_16 Depth=2
	mm_acc r8, r2, r15, 8
	j .LBB0_24
.LBB0_22:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 73 26 is_stmt 1               # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:73:26
	bneq r3, zero, .LBB0_15
	j .LBB0_31
.LBB0_23:                               # %.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:89:25
	mm r8, r2, r15, 8
.LBB0_24:                               # %.thread6.thread89
                                        #   in Loop: Header=BB0_16 Depth=2
	addli r2, zero, 5
	unlock r24
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 73 26                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:73:26
	bneq r3, zero, .LBB0_15
# %bb.25:                               # %.split17.thread90
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:86:20
	addli r12, r12, 2
	j .LBB0_27
.LBB0_26:                               # %.split17
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r12, r12, 2
	.loc	1 73 26                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:73:26
	bneq r14, r17, .LBB0_32
.LBB0_27:                               # %.thread7
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	.loc	1 101 67                        # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:101:67
	addli r5, r25, 1
	addli r1, r16, 1
	addli r28, r9, 1
	addli r24, zero, 1
	addli r25, zero, 5
	addli r26, zero, 3
	j .LBB0_35
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 67 is_stmt 0                # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:0:67
	addli r2, zero, 12
	load.d r[6:7], 0(r30)
	sll.d r[2:3], r[15:16], r2
	add.ul r[6:7], r[6:7], r[2:3]
	addli r3, zero, 1
	addli r2, zero, 0
.LBB0_29:                               # %.thread.us
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:81:20
	mod.s r8, r12, r20
	.loc	1 86 25                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:86:25
	zext_int2long r[15:16], r2
	.loc	1 81 20                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:81:20
	xwait r26, 0
	lock zero, r17
	addli r12, r12, 1
	dma_cfg zero, zero, zero, 0
	sll.d r[15:16], r[15:16], r19
	slli r2, r8, 11
	add.ul r[8:9], r[6:7], r[15:16]
	addli r2, r2, 10240
	dma_cfg zero, r9, zero, 2
	dma_cfg r2, r8, r4, 3
	addli r2, zero, 256
	.loc	1 73 26                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:73:26
	andi r8, r3, 1
	addli r3, zero, 0
	.loc	1 81 20                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:81:20
	dma_cfg r4, r2, r27, 4
	addli r2, zero, 32
	dma_run zero
	unlock r17
	xsignal r19, 0
	.loc	1 73 26                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:73:26
	bneq r8, zero, .LBB0_29
# %bb.30:                               # %.split17.us
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, r1, 2
	j .LBB0_5
.LBB0_31:                               # %.split17.thread88
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:86:20
	addli r12, r12, 2
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 101 67                        # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:101:67
	addli r1, r16, 1
	addli r5, r25, 1
	addli r28, r9, 1
	addli r26, zero, 3
	beq r14, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 67 is_stmt 0                # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:0:67
	addli r24, zero, 1
	addli r25, zero, 5
	.loc	1 101 67                        # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:101:67
	j .LBB0_6
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r2,  -4132(r30)                # 4-byte Folded Reload
	addli r6, zero, 96
	loadli.w r9,  -4128(r30)                # 4-byte Folded Reload
	zext_int2long r[24:25], zero
	zext_int2long r[6:7], r6
	zext_int2long r[2:3], r2
	sext_int2long r[14:15], r9
	addli r9, r30, -4128
	min.ul r[6:7], r[2:3], r[6:7]
	min.sl r[24:25], r[14:15], r[24:25]
	addli.d r[6:7], r[6:7], 32
	max.ul r[6:7], r[6:7], r[2:3]
	sub.sl r[2:3], r[6:7], r[2:3]
	addli.d r[6:7], r[24:25], 16
	zext_int2long r[24:25], r13
	min.ul r[2:3], r[2:3], r[24:25]
	max.sl r[6:7], r[6:7], r[14:15]
	zext_int2long r[24:25], r27
	store.d r[2:3], 0(r9)                   # 8-byte Folded Spill
	addli r3, r30, -4112
	sub.sl r[6:7], r[6:7], r[14:15]
	addli r2, zero, 13
	addli r9, r30, -4120
	load.d r[14:15], 0(r3)                  # 8-byte Folded Reload
	min.sl r[6:7], r[6:7], r[24:25]
	addli r25, zero, 5
	addli r24, zero, 1
	sll.d r[14:15], r[14:15], r2
	load.d r[2:3], 16(r30)
	add.ul r[14:15], r[2:3], r[14:15]
	load.d r[2:3], 0(r9)                    # 8-byte Folded Reload
	addli r9, r30, -4128
	add.ul r[14:15], r[14:15], r[2:3]
	addli r2, zero, 10
	xwait r2, 0
	lock zero, r25
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r24, zero, 1
	load.d r[2:3], 0(r9)                    # 8-byte Folded Reload
	dma_cfg r15, zero, zero, 2
	slli r2, r2, 2
	dma_cfg r14, r8, r2, 3
	addli r2, zero, 512
	.loc	1 73 26 is_stmt 1               # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:73:26
	core_id r14
	.loc	1 101 67                        # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:101:67
	dma_cfg r2, r4, r6, 4
	addli r2, zero, 11
	dma_run zero
	unlock r25
.LBB0_35:                               # %.thread91
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:0:0
	xsignal r2, 0
	j .LBB0_6
.LBB0_36:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:22:0
	xsignal zero, 0
	bneq r14, zero, .LBB0_38
# %bb.37:
	.loc	1 0 0 is_stmt 0                 # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py:22:0
	addli sp, sp, 4136
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
	.long	4200                            # 0x1068
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
.asciz	"cgrldsf5xcsikvfae7zlq5uf5vo5fncgbwzobfwejsf23dv2gd5j.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/gr" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
