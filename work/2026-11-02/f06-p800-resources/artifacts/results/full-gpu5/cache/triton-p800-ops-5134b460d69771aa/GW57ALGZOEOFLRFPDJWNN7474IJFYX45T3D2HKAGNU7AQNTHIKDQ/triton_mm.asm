	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/j5" "cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py"
	.loc	1 22 0                          # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3720
	addli r30, sp, 3656
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:73:26
	core_id r24
	loadli.w r22,  32(r30)
	xsignal_mode_cfg r1
	beq r24, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:0:26
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
	addli r4, r30, -3632
	sext_int2long r[7:8], r1
	loadli.w r28,  -768(r30)
	loadli.w r26,  -1792(r30)
	loadli.w r27,  -2560(r30)
	loadli.w r1,  -3584(r30)
	addli r10, zero, 64
	addli r12, zero, 6
	addli r11, zero, 5
	addli r14, zero, 4
	addli r19, zero, 1
	addli r17, zero, 255
	addli r18, zero, 191
	lui r25, 201
	addli r20, zero, 7
	addli r23, zero, 32
	addli r5, r30, -3656
	addli r9, zero, 2
	lui r21, 10
	addli r13, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	lui r2, 7
	ori r4, r2, 4095
	lui r2, 1023
	lui r3, 1047552
	ori r2, r2, 4095
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	storeli.w r2, -3596(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:73:26
	addli r2, zero, 10
	loadli.w r22,  32(r30)
	.loc	1 101 67 is_stmt 1              # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:101:67
	addli r26, r11, 1
	addli r28, r9, 1
	addli r1, r5, 1
	addli r11, zero, 5
	addli r9, zero, 2
	.loc	1 73 26                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:73:26
	xsignal r2, 0
	addli r2, r30, -3608
.LBB0_6:                                # %.thread96
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:0:26
	load.d r[7:8], 0(r2)                    # 8-byte Folded Reload
	loadli.w r13,  -3612(r30)               # 4-byte Folded Reload
	lui r21, 10
.LBB0_7:                                # %.thread96
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, r30, -3632
	addli.d r[7:8], r[7:8], 1
	addli r13, r13, 1
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	setlt.sl r2, r[7:8], r[2:3]
	beq r2, zero, .LBB0_39
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	div.s r2, r7, r22
	loadli.w r3,  28(r30)
	.loc	1 54 50 is_stmt 1               # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:54:50
	addli r6, zero, 8
	div.s r3, r2, r3
	.loc	1 53 22                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:53:22
	addli r2, zero, 256
	div.s r4, r3, r2
	.loc	1 54 41                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:54:41
	slli r2, r4, 3
	.loc	1 54 30 is_stmt 0               # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:54:30
	sub.s r5, r10, r2
	.loc	1 54 50                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:54:50
	min.s r5, r5, r6
	.loc	1 55 40 is_stmt 1               # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:55:40
	mod.s r6, r3, r5
	.loc	1 55 34 is_stmt 0               # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:55:34
	add.s r2, r2, r6
	addli r6, r30, -3624
	.loc	1 95 15 is_stmt 1               # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:95:15
	zext_int2long r[15:16], r2
	store.d r[15:16], 0(r6)                 # 8-byte Folded Spill
	addli r6, zero, 2016
	zext_int2long r[15:16], r6
	.loc	1 73 26                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:73:26
	addli r6, r30, -3592
	store.d r[15:16], 0(r6)                 # 8-byte Folded Spill
	bneq r24, r14, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r6, zero, 11
	addli r15, zero, 3
	xwait r6, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:0:26
	addli r15, zero, 3
	beq r24, r19, .LBB0_29
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r24, r9, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 0
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:89:25
	add.s r3, r27, r2
	add.s r4, r1, r2
	xwait r9, 0
	xwait r11, 0
	lock zero, zero
	.loc	1 73 26                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:73:26
	addli r2, r2, 1
	.loc	1 89 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:89:25
	ds_cfg r15, zero, 0
	.loc	1 81 20                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:81:20
	mod.s r3, r3, r18
	.loc	1 89 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:89:25
	mod.s r4, r4, r17
	ds_cfg r10, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r23, zero, 13
	.loc	1 81 20                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:81:20
	slli r3, r3, 12
	.loc	1 89 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:89:25
	slli r4, r4, 11
	.loc	1 81 20                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:81:20
	add.s r3, r3, r21
	.loc	1 89 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:89:25
	shuffle_batch r4, r3, r23, 1
	unlock zero
	xsignal r15, 0
	xsignal r14, 0
	bneq r2, r10, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:73:26
	addli r26, r26, 64
	addli r28, r28, 64
	.loc	1 89 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:89:25
	add.s r1, r1, r2
	add.s r27, r27, r2
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:0:25
	slli r4, r4, 8
	addli r6, r30, -3608
	slli r16, r2, 5
	addli r21, zero, 0
	addli r22, zero, 5
	storeli.w r13, -3612(r30)               # 4-byte Folded Spill
	sub.s r3, r3, r4
	mod.s r4, r13, r11
	store.d r[7:8], 0(r6)                   # 8-byte Folded Spill
	addli r7, r30, -3640
	addli r13, zero, 0
	div.s r3, r3, r5
	slli r4, r4, 13
	zext_int2long r[5:6], r3
	slli r2, r3, 6
	sll.d r[5:6], r[5:6], r12
	.loc	1 73 26 is_stmt 1               # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:73:26
	storeli.w r2, -3644(r30)                # 4-byte Folded Spill
	load.d r[2:3], 8(r30)
	sll.d r[5:6], r[5:6], r19
	add.ul r[2:3], r[2:3], r[5:6]
	store.d r[5:6], 0(r7)                   # 8-byte Folded Spill
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:89:25
	addli r8, zero, 9
	xwait r12, 0
	xwait r8, 0
	lock zero, zero
	ds_cfg r15, zero, 0
	ds_cfg r10, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r10, zero, 13
	shuffle_coa r6, r7, r23, 2
	addli r6, zero, 8
	unlock zero
	xsignal r20, 0
	xsignal r6, 0
	.loc	1 73 26                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:73:26
	addli r21, r21, 1
	beq r21, r10, .LBB0_28
.LBB0_17:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:89:25
	addli r13, r13, 1
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r9, r28, r13
	add.s r11, r26, r13
	add.s r5, r1, r13
	.loc	1 86 20                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:86:20
	mod.s r6, r9, r18
	.loc	1 89 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:89:25
	mod.s r7, r11, r17
	.loc	1 86 20                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:86:20
	slli r8, r6, 12
	.loc	1 89 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:89:25
	slli r6, r7, 12
	.loc	1 86 20                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:86:20
	add.s r7, r8, r25
	beq r24, r20, .LBB0_16
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:0:20
	bneq r24, r12, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:86:25
	zext_int2long r[24:25], r21
	.loc	1 86 20                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:86:20
	addli r6, zero, 17
	xwait r20, 0
	lock zero, r14
	addli r8, zero, 128
	dma_cfg r19, r19, zero, 0
	sll.d r[24:25], r[24:25], r6
	addli r6, zero, 4096
	add.ul r[24:25], r[2:3], r[24:25]
	dma_cfg zero, r25, zero, 2
	dma_cfg r7, r24, r8, 3
	lui r25, 201
	.loc	1 73 26 is_stmt 1               # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:73:26
	core_id r24
	.loc	1 86 20                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:86:20
	dma_cfg r8, r6, r23, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 73 26                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:73:26
	addli r21, r21, 1
	bneq r21, r10, .LBB0_17
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:89:25
	bneq r24, r14, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:0:0
	mod.s r7, r5, r17
	.loc	1 89 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:89:25
	addli r8, zero, 8
	xwait r14, 0
	xwait r8, 0
	lock zero, r19
	addli r8, zero, 2
	mm_cfg r10, r23, r23, 0
	mm_cfg r19, r8, r19, 2
	.loc	1 0 0                           # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:0:0
	slli r7, r7, 11
	.loc	1 89 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:89:25
	beq r13, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r4, r7, r6, 5
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:73:26
	addli r21, r21, 1
	bneq r21, r10, .LBB0_17
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:89:25
	mm r4, r7, r6, 5
.LBB0_26:                               # %.thread6.thread93
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:73:26
	addli r21, r21, 1
	.loc	1 89 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:89:25
	addli r6, zero, 9
	unlock r19
	xsignal r22, 0
	xsignal r6, 0
	.loc	1 73 26                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:73:26
	bneq r21, r10, .LBB0_17
# %bb.27:                               # %.split17.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:86:20
	addli r27, r27, 64
	j .LBB0_5
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r27, r27, 64
	.loc	1 73 26                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:73:26
	beq r24, r14, .LBB0_5
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:0:26
	addli r5, r30, -3624
	addli r2, r30, -3608
	addli r6, r30, -3656
	storeli.w r13, -3612(r30)               # 4-byte Folded Spill
	lui r13, 10
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	store.d r[7:8], 0(r2)                   # 8-byte Folded Spill
	addli r2, zero, 16
	sll.d r[2:3], r[3:4], r2
	load.d r[4:5], 0(r6)                    # 8-byte Folded Reload
	and.d r[21:22], r[2:3], r[4:5]
	addli r4, zero, 0
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	addli r7, zero, 2048
	.loc	1 81 25 is_stmt 1               # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:81:25
	sub.sl r[5:6], r[24:25], r[5:6]
	.loc	1 81 20 is_stmt 0               # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:81:20
	xwait r15, 0
	lock zero, r14
	dma_cfg r19, r19, zero, 0
	zext_int2long r[7:8], r7
	.loc	1 81 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:81:25
	div.sl r[5:6], r[5:6], r[7:8]
	.loc	1 81 20                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:81:20
	sll.d r[8:9], r[24:25], r19
	load.d r[24:25], 0(r30)
	.loc	1 0 0                           # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:0:0
	add.s r7, r27, r4
	.loc	1 73 26 is_stmt 1               # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:73:26
	addli r4, r4, 1
	.loc	1 81 0                          # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:81:0
	mod.s r7, r7, r18
	.loc	1 81 20 is_stmt 0               # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:81:20
	add.ul r[8:9], r[24:25], r[8:9]
	.loc	1 81 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:81:25
	addli r24, r30, -3592
	.loc	1 81 20                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:81:20
	dma_cfg zero, r9, zero, 2
	.loc	1 81 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:81:25
	load.d r[15:16], 0(r24)                 # 8-byte Folded Reload
	.loc	1 81 0                          # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:81:0
	slli r7, r7, 12
	add.s r7, r7, r13
	.loc	1 81 20                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:81:20
	dma_cfg r7, r8, r10, 3
	addli r7, zero, 128
	addli r9, zero, 2
	.loc	1 81 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:81:25
	min.sl r[24:25], r[5:6], r[15:16]
	addli r15, zero, 3
	sub.sl r[5:6], r[24:25], r[5:6]
	.loc	1 81 20                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:81:20
	addli r5, r5, 32
	addli r6, zero, 4096
	dma_cfg r7, r6, r5, 4
	dma_run zero
	unlock r14
	xsignal r9, 0
	.loc	1 73 26 is_stmt 1               # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:73:26
	beq r4, r10, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:86:25
	zext_int2long r[5:6], r4
	sll.d r[5:6], r[5:6], r11
	.loc	1 81 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:81:25
	add.ul r[24:25], r[5:6], r[2:3]
	loadli.w r5,  -3596(r30)                # 4-byte Folded Reload
	zext_int2long r[5:6], r5
	setlt.ul r7, r[5:6], r[24:25]
	addli.d r[5:6], r[21:22], 0
	bneq r7, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:0:25
	zext_int2long r[5:6], zero
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, r30, -3608
	loadli.w r22,  32(r30)
	.loc	1 73 26 is_stmt 1               # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:73:26
	addli r1, r1, 64
	addli r26, r26, 64
	addli r28, r28, 64
	.loc	1 89 25                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:89:25
	add.s r27, r27, r4
	.loc	1 73 26                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:73:26
	core_id r24
	lui r25, 201
	j .LBB0_6
.LBB0_34:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:86:20
	addli r27, r27, 64
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:0:20
	loadli.w r13,  -3612(r30)               # 4-byte Folded Reload
	.loc	1 101 67 is_stmt 1              # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:101:67
	addli r1, r5, 1
	addli r26, r11, 1
	addli r28, r9, 1
	lui r21, 10
	beq r24, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:0:67
	addli r2, r30, -3608
	loadli.w r22,  32(r30)
	addli r11, zero, 5
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:101:67
	loadli.w r2,  -3644(r30)                # 4-byte Folded Reload
	addli r5, zero, 1984
	addli r9, r30, -3592
	sext_int2long r[7:8], r16
	addli r11, zero, 5
	zext_int2long r[5:6], r5
	load.d r[21:22], 0(r9)                  # 8-byte Folded Reload
	addli r9, r30, -3640
	zext_int2long r[2:3], r2
	min.ul r[5:6], r[2:3], r[5:6]
	min.sl r[21:22], r[7:8], r[21:22]
	addli.d r[5:6], r[5:6], 64
	addli.d r[21:22], r[21:22], 32
	max.ul r[5:6], r[5:6], r[2:3]
	max.sl r[21:22], r[21:22], r[7:8]
	sub.sl r[2:3], r[5:6], r[2:3]
	zext_int2long r[5:6], r10
	min.ul r[15:16], r[2:3], r[5:6]
	sub.sl r[5:6], r[21:22], r[7:8]
	addli r8, r30, -3624
	addli r7, zero, 17
	zext_int2long r[21:22], r23
	load.d r[2:3], 0(r8)                    # 8-byte Folded Reload
	min.sl r[5:6], r[5:6], r[21:22]
	loadli.w r22,  32(r30)
	lui r21, 10
	sll.d r[7:8], r[2:3], r7
	load.d r[2:3], 16(r30)
	add.ul r[7:8], r[2:3], r[7:8]
	load.d r[2:3], 0(r9)                    # 8-byte Folded Reload
	addli r9, zero, 10
	xwait r9, 0
	lock zero, r11
	add.ul r[7:8], r[7:8], r[2:3]
	dma_cfg r19, zero, zero, 0
	slli r2, r15, 2
	addli r3, zero, 4096
	dma_cfg zero, r19, zero, 1
	dma_cfg r8, zero, zero, 2
	dma_cfg r7, r4, r2, 3
	addli r2, zero, 256
	dma_cfg r3, r2, r5, 4
	addli r2, zero, 11
	dma_run zero
	unlock r11
	xsignal r2, 0
	addli r2, r30, -3608
.LBB0_38:                               # %.thread96
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67                          # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:0:67
	load.d r[7:8], 0(r2)                    # 8-byte Folded Reload
	addli r9, zero, 2
	j .LBB0_7
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:22:0
	xsignal zero, 0
	bneq r24, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py:22:0
	addli sp, sp, 3656
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
	.long	3720                            # 0xe88
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
.asciz	"cj5opkupibj5hrowbqrvp7nd3n7yshayhytbkxnz6fudlzitog7c.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/j5" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
