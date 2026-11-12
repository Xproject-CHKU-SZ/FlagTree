	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/fz" "cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py"
	.loc	1 22 0                          # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2968
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:73:26
	core_id r17
	addli r30, sp, 2904
	xsignal_mode_cfg r1
	beq r17, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	load_param_i r5, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -516(r30)
	storeli.w zero, -1540(r30)
	storeli.w zero, -2052(r30)
	storeli.w zero, -2824(r30)
	mul.s r1, r2, r1
	addli r2, r5, 0
	fmac.s r2, r1, r3
	mul.s r3, r1, r3
	addli r2, r2, -1
	div.s r2, r2, r5
	load_param_i r5, 0
	mul.s r1, r2, r5
	fmac.s r2, r2, r5
	min.s r3, r2, r3
	ble.s r3, r1, .LBB0_38
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r3
	addli r4, r30, -2864
	sext_int2long r[10:11], r1
	loadli.w r28,  -516(r30)
	loadli.w r26,  -1540(r30)
	loadli.w r8,  -2052(r30)
	loadli.w r1,  -2824(r30)
	addli r27, zero, 256
	addli r14, zero, 2
	addli r22, zero, 5
	addli r13, zero, 4
	addli r15, zero, 1
	addli r12, zero, 192
	addli r18, zero, 128
	addli r20, zero, 7
	addli r21, zero, 6
	addli r23, zero, 3
	addli r24, zero, 64
	addli r25, zero, 32
	addli r5, r30, -2904
	addli r16, zero, 127
	storeli.w zero, -2836(r30)              # 4-byte Folded Spill
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r3, zero, 4095
	addli r4, zero, 255
	lui r2, 1048572
	store.d r[2:3], 0(r5)                   # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:73:26
	addli r2, zero, 10
	.loc	1 101 67 is_stmt 1              # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:101:67
	addli r1, r27, 1
	addli r26, r14, 1
	addli r28, r22, 1
	addli r27, zero, 256
	addli r14, zero, 2
	addli r22, zero, 5
	addli r12, zero, 192
	addli r16, zero, 127
	.loc	1 73 26                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:73:26
	xsignal r2, 0
	addli r2, r30, -2848
.LBB0_6:                                # %.thread96
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:0:26
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
.LBB0_7:                                # %.thread96
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r5, r30, -2864
	addli.d r[10:11], r[10:11], 1
	load.d r[2:3], 0(r5)                    # 8-byte Folded Reload
	setlt.sl r2, r[10:11], r[2:3]
	loadli.w r3,  -2836(r30)                # 4-byte Folded Reload
	addli r3, r3, 1
	storeli.w r3, -2836(r30)                # 4-byte Folded Spill
	beq r2, zero, .LBB0_38
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	loadli.w r2,  32(r30)
	loadli.w r3,  28(r30)
	.loc	1 54 50 is_stmt 1               # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:54:50
	addli r5, zero, 8
	addli zero, r30, -2856
	lui r19, 10
	div.s r2, r10, r2
	div.s r6, r2, r3
	.loc	1 53 22                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:53:22
	div.s r7, r6, r27
	.loc	1 54 41                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:54:41
	slli r2, r7, 3
	.loc	1 54 30 is_stmt 0               # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:54:30
	sub.s r3, r14, r2
	.loc	1 54 50                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:54:50
	min.s r9, r3, r5
	.loc	1 55 40 is_stmt 1               # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:55:40
	mod.s r3, r6, r9
	.loc	1 55 34 is_stmt 0               # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:55:34
	add.s r5, r2, r3
	.loc	1 95 15 is_stmt 1               # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:95:15
	zext_int2long r[2:3], r5
	store.d r[2:3], 0(zero)                 # 8-byte Folded Spill
	xor zero, zero, zero
	zext_int2long r[2:3], r24
	.loc	1 73 26                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:73:26
	addli zero, r30, -2832
	store.d r[2:3], 0(zero)                 # 8-byte Folded Spill
	xor zero, zero, zero
	bneq r17, r13, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:0:26
	beq r17, r15, .LBB0_29
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r17, r14, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 0
	lui r6, 10
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:89:25
	add.s r2, r8, r3
	add.s r5, r1, r3
	xwait r14, 0
	xwait r22, 0
	lock zero, zero
	.loc	1 73 26                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:89:25
	ds_cfg r23, zero, 0
	.loc	1 81 20                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:81:20
	mod.s r2, r2, r16
	.loc	1 89 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:89:25
	mod.s r5, r5, r12
	ds_cfg r24, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r24, zero, 13
	.loc	1 81 20                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:81:20
	slli r2, r2, 13
	.loc	1 89 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:89:25
	slli r5, r5, 12
	.loc	1 81 20                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:81:20
	add.s r2, r2, r6
	.loc	1 89 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:89:25
	shuffle_batch r5, r2, r25, 1
	unlock zero
	xsignal r23, 0
	xsignal r13, 0
	bneq r3, r13, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:73:26
	addli r26, r26, 4
	addli r28, r28, 4
	.loc	1 89 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:89:25
	add.s r1, r1, r3
	add.s r8, r8, r3
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:0:25
	addli r2, r30, -2848
	loadli.w r3,  -2836(r30)                # 4-byte Folded Reload
	slli r5, r5, 6
	addli r16, zero, 0
	addli r12, zero, 5
	lui r19, 264
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	slli r2, r7, 8
	storeli.w r5, -2880(r30)                # 4-byte Folded Spill
	mod.s r3, r3, r22
	sub.s r2, r6, r2
	div.s r2, r2, r9
	slli r9, r3, 13
	zext_int2long r[6:7], r2
	slli r2, r2, 5
	sll.d r[5:6], r[6:7], r22
	.loc	1 73 26 is_stmt 1               # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:73:26
	storeli.w r2, -2888(r30)                # 4-byte Folded Spill
	load.d r[2:3], 8(r30)
	addli r7, r30, -2872
	sll.d r[5:6], r[5:6], r15
	store.d r[5:6], 0(r7)                   # 8-byte Folded Spill
	add.ul r[10:11], r[2:3], r[5:6]
	addli r5, zero, 0
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:89:25
	addli r2, zero, 9
	xwait r21, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 8
	ds_cfg r23, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r25, zero, 13
	shuffle_coa r6, r7, r25, 2
	unlock zero
	xsignal r20, 0
	xsignal r2, 0
	.loc	1 73 26                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:73:26
	addli r16, r16, 1
	beq r16, r13, .LBB0_28
.LBB0_17:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:89:25
	addli r5, r5, 1
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r22, r28, r5
	add.s r14, r26, r5
	add.s r27, r1, r5
	.loc	1 86 20                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:86:20
	mod.s r2, r22, r18
	.loc	1 89 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:89:25
	mod.s r3, r14, r4
	.loc	1 86 20                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:86:20
	slli r2, r2, 12
	.loc	1 89 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:89:25
	slli r6, r3, 11
	.loc	1 86 20                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:86:20
	add.s r7, r2, r19
	beq r17, r20, .LBB0_16
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:0:20
	bneq r17, r21, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:86:25
	zext_int2long r[2:3], r16
	.loc	1 86 20                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:86:20
	addli r6, zero, 16
	xwait r20, 0
	lock zero, r13
	dma_cfg r15, r15, zero, 0
	sll.d r[2:3], r[2:3], r6
	add.ul r[2:3], r[10:11], r[2:3]
	dma_cfg zero, r3, zero, 2
	dma_cfg r7, r2, r24, 3
	addli r2, zero, 2048
	dma_cfg r18, r2, r25, 4
	dma_run zero
	unlock r13
	xsignal r21, 0
	.loc	1 73 26 is_stmt 1               # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:73:26
	addli r16, r16, 1
	bneq r16, r13, .LBB0_17
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:89:25
	bneq r17, r13, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:0:0
	addli r2, zero, 192
	.loc	1 89 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:89:25
	addli r3, zero, 8
	xwait r13, 0
	.loc	1 0 0                           # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:0:0
	mod.s r2, r27, r2
	.loc	1 89 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:89:25
	xwait r3, 0
	lock zero, r15
	mm_cfg r25, r25, r24, 0
	mm_cfg r15, r15, r15, 2
	.loc	1 0 0                           # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:0:0
	slli r2, r2, 12
	.loc	1 89 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:89:25
	beq r5, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r9, r2, r6, 5
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:73:26
	addli r16, r16, 1
	bneq r16, r13, .LBB0_17
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:89:25
	mm r9, r2, r6, 5
.LBB0_26:                               # %.thread6.thread93
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:73:26
	addli r16, r16, 1
	.loc	1 89 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:89:25
	addli r2, zero, 9
	unlock r15
	xsignal r12, 0
	xsignal r2, 0
	.loc	1 73 26                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:73:26
	bneq r16, r13, .LBB0_17
# %bb.27:                               # %.split17.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:86:20
	addli r8, r8, 4
	j .LBB0_5
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r8, r8, 4
	.loc	1 73 26                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:73:26
	beq r17, r13, .LBB0_5
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:0:26
	addli r3, r30, -2856
	addli r2, r30, -2848
	addli r4, zero, 127
	addli r22, zero, 5
	load.d r[5:6], 0(r3)                    # 8-byte Folded Reload
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	addli r2, zero, 13
	sll.d r[9:10], r[5:6], r2
	addli r5, r30, -2904
	load.d r[2:3], 0(r5)                    # 8-byte Folded Reload
	addli r5, zero, 0
	and.d r[2:3], r[9:10], r[2:3]
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 81 25 is_stmt 1               # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:81:25
	sub.sl r[6:7], r[11:12], r[6:7]
	zext_int2long r[16:17], r18
	.loc	1 81 20 is_stmt 0               # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:81:20
	sll.d r[11:12], r[11:12], r15
	.loc	1 0 0                           # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:0:0
	add.s r14, r8, r5
	.loc	1 81 20                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:81:20
	xwait r23, 0
	lock zero, r13
	.loc	1 73 26 is_stmt 1               # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:73:26
	addli r5, r5, 1
	.loc	1 81 20                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:81:20
	dma_cfg r15, r15, zero, 0
	.loc	1 81 25 is_stmt 0               # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:81:25
	div.sl r[6:7], r[6:7], r[16:17]
	.loc	1 81 20                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:81:20
	load.d r[16:17], 0(r30)
	.loc	1 81 0                          # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:81:0
	mod.s r14, r14, r4
	.loc	1 81 20                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:81:20
	add.ul r[11:12], r[16:17], r[11:12]
	dma_cfg zero, r12, zero, 2
	.loc	1 81 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:81:25
	addli zero, r30, -2832
	.loc	1 81 0                          # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:81:0
	slli r14, r14, 13
	.loc	1 81 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:81:25
	load.d r[16:17], 0(zero)                # 8-byte Folded Reload
	xor zero, zero, zero
	.loc	1 81 0                          # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:81:0
	add.s r14, r14, r19
	.loc	1 81 20                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:81:20
	dma_cfg r14, r11, r24, 3
	addli r14, zero, 2
	.loc	1 81 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:81:25
	min.sl r[16:17], r[6:7], r[16:17]
	sub.sl r[6:7], r[16:17], r[6:7]
	.loc	1 81 20                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:81:20
	addli r6, r6, 64
	dma_cfg r18, r27, r6, 4
	dma_run zero
	unlock r13
	xsignal r14, 0
	.loc	1 73 26 is_stmt 1               # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:73:26
	beq r5, r13, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:86:25
	zext_int2long r[6:7], r5
	sll.d r[6:7], r[6:7], r22
	.loc	1 81 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:81:25
	add.ul r[11:12], r[6:7], r[9:10]
	addli r6, zero, 16383
	zext_int2long r[6:7], r6
	setlt.ul r14, r[6:7], r[11:12]
	addli.d r[6:7], r[2:3], 0
	bneq r14, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:0:25
	zext_int2long r[6:7], zero
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, r30, -2848
	.loc	1 73 26 is_stmt 1               # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:73:26
	addli r1, r1, 4
	addli r26, r26, 4
	addli r28, r28, 4
	.loc	1 89 25                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:89:25
	add.s r8, r8, r5
	.loc	1 73 26                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:73:26
	core_id r17
	addli r22, zero, 5
	addli r12, zero, 192
	addli r16, zero, 127
	addli r4, zero, 255
	j .LBB0_6
.LBB0_34:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:86:20
	addli r8, r8, 4
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:0:20
	addli r2, r30, -2848
	.loc	1 101 67 is_stmt 1              # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:101:67
	addli r1, r27, 1
	addli r26, r14, 1
	addli r28, r22, 1
	addli r12, zero, 192
	addli r16, zero, 127
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	beq r17, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:0:67
	addli r27, zero, 256
	addli r14, zero, 2
	addli r22, zero, 5
	.loc	1 101 67                        # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:101:67
	j .LBB0_7
.LBB0_37:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r2,  -2888(r30)                # 4-byte Folded Reload
	addli r5, zero, 992
	loadli.w r7,  -2880(r30)                # 4-byte Folded Reload
	addli r14, r30, -2856
	addli r22, zero, 5
	addli r27, zero, 256
	zext_int2long r[5:6], r5
	zext_int2long r[2:3], r2
	sext_int2long r[10:11], r7
	addli r7, r30, -2880
	min.ul r[5:6], r[2:3], r[5:6]
	addli.d r[5:6], r[5:6], 32
	max.ul r[5:6], r[5:6], r[2:3]
	store.d r[5:6], 0(r7)                   # 8-byte Folded Spill
	addli r7, r30, -2832
	load.d r[5:6], 0(r7)                    # 8-byte Folded Reload
	addli r7, r30, -2888
	min.sl r[16:17], r[10:11], r[5:6]
	store.d r[16:17], 0(r7)                 # 8-byte Folded Spill
	addli r7, r30, -2880
	load.d r[16:17], 0(r7)                  # 8-byte Folded Reload
	sub.sl r[2:3], r[16:17], r[2:3]
	store.d r[2:3], 0(r7)                   # 8-byte Folded Spill
	zext_int2long r[2:3], r25
	addli r7, r30, -2896
	store.d r[2:3], 0(r7)                   # 8-byte Folded Spill
	addli r7, r30, -2888
	load.d r[2:3], 0(r7)                    # 8-byte Folded Reload
	addli.d r[2:3], r[2:3], 64
	store.d r[2:3], 0(r7)                   # 8-byte Folded Spill
	addli r7, r30, -2880
	load.d r[2:3], 0(r7)                    # 8-byte Folded Reload
	addli r7, r30, -2896
	load.d r[16:17], 0(r7)                  # 8-byte Folded Reload
	addli r7, r30, -2880
	min.ul r[2:3], r[2:3], r[16:17]
	load.d r[16:17], 0(r14)                 # 8-byte Folded Reload
	addli r14, zero, 2
	store.d r[2:3], 0(r7)                   # 8-byte Folded Spill
	addli r7, r30, -2888
	load.d r[2:3], 0(r7)                    # 8-byte Folded Reload
	addli r7, zero, 17
	sll.d r[16:17], r[16:17], r7
	addli r7, r30, -2872
	max.sl r[2:3], r[2:3], r[10:11]
	sub.sl r[2:3], r[2:3], r[10:11]
	load.d r[10:11], 16(r30)
	min.sl r[5:6], r[2:3], r[5:6]
	load.d r[2:3], 0(r7)                    # 8-byte Folded Reload
	addli r7, zero, 10
	add.ul r[10:11], r[10:11], r[16:17]
	addli r16, zero, 127
	.loc	1 73 26 is_stmt 1               # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:73:26
	core_id r17
	.loc	1 101 67                        # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:101:67
	xwait r7, 0
	lock zero, r22
	addli r7, r30, -2880
	dma_cfg r15, zero, zero, 0
	add.ul r[10:11], r[10:11], r[2:3]
	dma_cfg zero, r15, zero, 1
	load.d r[2:3], 0(r7)                    # 8-byte Folded Reload
	dma_cfg r11, zero, zero, 2
	slli r2, r2, 2
	dma_cfg r10, r9, r2, 3
	addli r2, r30, -2848
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	addli r2, zero, 2048
	dma_cfg r2, r18, r5, 4
	addli r2, zero, 11
	dma_run zero
	unlock r22
	xsignal r2, 0
	j .LBB0_7
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0                          # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:22:0
	xsignal zero, 0
	bneq r17, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:22:0
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
.LBB0_40:
	.loc	1 22 0 epilogue_begin           # cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py:22:0
	addli sp, sp, 2904
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
	.long	2968                            # 0xb98
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
.asciz	"cfzxikxnwyneyttb4ljjvg37rgzw3w677btyuxprzjjhvpjavnzy.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/fz" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
