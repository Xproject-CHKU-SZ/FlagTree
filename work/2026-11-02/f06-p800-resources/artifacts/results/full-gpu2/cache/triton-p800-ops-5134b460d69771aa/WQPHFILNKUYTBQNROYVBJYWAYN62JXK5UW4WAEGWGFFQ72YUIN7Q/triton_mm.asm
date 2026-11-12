	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/46" "c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py"
	.loc	1 22 0                          # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2952
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:73:26
	core_id r2
	addli r30, sp, 2888
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:0:26
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
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -516(r30)
	storeli.w zero, -1540(r30)
	storeli.w zero, -2056(r30)
	storeli.w zero, -2828(r30)
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
	ble.s r3, r1, .LBB0_31
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	addli r5, r30, -2888
	loadli.w r8,  -516(r30)
	loadli.w r9,  -1540(r30)
	loadli.w r16,  -2056(r30)
	loadli.w r17,  -2828(r30)
	addli r10, zero, 128
	addli r11, zero, 1
	addli r27, zero, 6
	addli r14, zero, 2
	addli r15, zero, 4
	addli r18, zero, 192
	lui r19, 8
	addli r13, zero, 5
	addli r21, zero, 3
	addli r22, zero, 64
	addli r23, zero, 32
	storeli.w zero, -2856(r30)              # 4-byte Folded Spill
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	sext_int2long r[3:4], r1
	addli r1, r30, -2848
	store.d r[3:4], 0(r1)                   # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:73:26
	addli r1, zero, 10
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0                           # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -2848
	load.d r[16:17], 0(r1)                  # 8-byte Folded Reload
	addli r1, r30, -2888
	load.d r[6:7], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2848
	addli.d r[16:17], r[16:17], 1
	store.d r[16:17], 0(r1)                 # 8-byte Folded Spill
	setlt.sl r1, r[16:17], r[6:7]
	addli r17, r3, 1
	addli r16, r5, 1
	beq r1, zero, .LBB0_31
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	.loc	1 73 26                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:73:26
	bneq r2, r15, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26                          # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:0:26
	addli r2, r30, -2848
	loadli.w r1,  32(r30)
	loadli.w r3,  28(r30)
	addli r12, zero, 8
	addli r4, zero, 0
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	loadli.w r2,  -2856(r30)                # 4-byte Folded Reload
	div.s r1, r5, r1
	mod.s r6, r2, r14
	addli r2, r2, 1
	storeli.w r2, -2856(r30)                # 4-byte Folded Spill
	div.s r1, r1, r3
	slli r2, r6, 14
	storeli.w r2, -2852(r30)                # 4-byte Folded Spill
	div.s r3, r1, r10
	slli r5, r3, 3
	slli r3, r3, 7
	sub.s r7, r11, r5
	sub.s r3, r1, r3
	min.s r7, r7, r12
	mod.s r12, r1, r7
	div.s r3, r3, r7
	addli r1, zero, 1
	add.s r5, r5, r12
	slli r2, r3, 6
	zext_int2long r[6:7], r3
	addli r12, zero, 0
	storeli.w r2, -2880(r30)                # 4-byte Folded Spill
	slli r2, r5, 6
	zext_int2long r[24:25], r5
	addli r5, r30, -2864
	storeli.w r2, -2876(r30)                # 4-byte Folded Spill
	sll.d r[2:3], r[6:7], r27
	store.d r[2:3], 0(r5)                   # 8-byte Folded Spill
	.loc	1 73 26                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:73:26
	sll.d r[5:6], r[2:3], r1
	addli r2, r30, -2872
	addli r3, zero, 13
	store.d r[24:25], 0(r2)                 # 8-byte Folded Spill
	sll.d r[24:25], r[24:25], r3
	load.d r[2:3], 8(r30)
	add.ul r[2:3], r[2:3], r[5:6]
	addli r5, r30, -2840
	store.d r[2:3], 0(r5)                   # 8-byte Folded Spill
	load.d r[2:3], 0(r30)
	add.ul r[6:7], r[2:3], r[24:25]
	core_id r2
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25 is_stmt 1               # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:89:25
	xwait r14, 0
	xwait r13, 0
	lock zero, zero
	ds_cfg r21, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r22, zero, 13
	shuffle_batch r28, r26, r23, 1
	unlock zero
	xsignal r21, 0
	xsignal r15, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r9, r9, 1
	.loc	1 86 20                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:86:20
	addli r8, r8, 1
.LBB0_13:                               # %.thread6
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:73:26
	andi r1, r1, 1
	beq r1, zero, .LBB0_28
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:89:25
	addli r12, r12, 1
	addli r4, zero, 1
	addli r1, zero, 0
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:86:25
	add.s r5, r16, r12
	add.s r3, r17, r12
	.loc	1 81 20                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:81:20
	mod.s r24, r5, r10
	.loc	1 89 25                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:89:25
	mod.s r25, r3, r18
	.loc	1 81 20                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:81:20
	slli r24, r24, 13
	.loc	1 89 25                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:89:25
	slli r28, r25, 12
	.loc	1 81 20                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:81:20
	add.s r26, r24, r19
	beq r2, r14, .LBB0_11
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 0 is_stmt 0                 # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:0:0
	zext_int2long r[24:25], r4
	.loc	1 81 20                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:81:20
	bneq r2, r11, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	sll.d r[24:25], r[24:25], r27
	xwait r21, 0
	lock zero, r15
	dma_cfg r11, r11, zero, 0
	add.ul r[24:25], r[6:7], r[24:25]
	dma_cfg zero, r25, zero, 2
	dma_cfg r26, r24, r22, 3
	dma_cfg r10, r10, r22, 4
	dma_run zero
	unlock r15
	xsignal r14, 0
	.loc	1 89 25 is_stmt 1               # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:89:25
	j .LBB0_12
.LBB0_18:                               #   in Loop: Header=BB0_15 Depth=2
	addli r20, zero, 255
	.loc	1 86 20                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:86:20
	mod.s r4, r8, r10
	addli r8, r8, 1
	.loc	1 89 25                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:89:25
	mod.s r26, r9, r20
	addli r9, r9, 1
	.loc	1 86 20                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:86:20
	slli r20, r4, 12
	.loc	1 89 25                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:89:25
	slli r4, r26, 12
	.loc	1 86 20                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:86:20
	lui r26, 264
	add.s r26, r20, r26
	addli r20, zero, 7
	beq r2, r20, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	bneq r2, r27, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	addli r4, zero, 16
	sll.d r[24:25], r[24:25], r4
	addli r4, zero, 7
	xwait r4, 0
	addli r4, r30, -2840
	load.d r[27:28], 0(r4)                  # 8-byte Folded Reload
	lock zero, r15
	addli r4, zero, 2048
	dma_cfg r11, r11, zero, 0
	add.ul r[24:25], r[27:28], r[24:25]
	addli r27, zero, 6
	dma_cfg zero, r25, zero, 2
	dma_cfg r26, r24, r10, 3
	dma_cfg r10, r4, r23, 4
	dma_run zero
	unlock r15
	xsignal r27, 0
	.loc	1 89 25                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:89:25
	j .LBB0_13
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	addli r20, zero, 9
	xwait r27, 0
	xwait r20, 0
	lock zero, zero
	ds_cfg r21, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r4, r26, r23, 2
	addli r4, zero, 7
	unlock zero
	xsignal r4, 0
	addli r4, zero, 8
	xsignal r4, 0
	j .LBB0_13
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	bneq r2, r15, .LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r20, zero, 8
	xwait r15, 0
	xwait r20, 0
	lock zero, r11
	mm_cfg r22, r23, r22, 0
	mm_cfg r11, r14, r11, 2
	beq r12, zero, .LBB0_26
# %bb.24:                               # %.preheader8
                                        #   in Loop: Header=BB0_15 Depth=2
	loadli.w r20,  -2852(r30)               # 4-byte Folded Reload
	mm_acc r20, r28, r4, 5
	j .LBB0_27
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:73:26
	andi r1, r1, 1
	bneq r1, zero, .LBB0_14
	j .LBB0_29
.LBB0_26:                               # %.preheader
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:89:25
	loadli.w r20,  -2852(r30)               # 4-byte Folded Reload
	mm r20, r28, r4, 5
.LBB0_27:                               # %.thread6.thread39
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:73:26
	andi r1, r1, 1
	.loc	1 89 25                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:89:25
	addli r4, zero, 9
	unlock r11
	xsignal r13, 0
	xsignal r4, 0
	bneq r1, zero, .LBB0_14
	j .LBB0_5
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:73:26
	beq r2, r15, .LBB0_5
.LBB0_29:                               # %.thread38
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:101:67
	bneq r2, zero, .LBB0_7
# %bb.30:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -2880(r30)                # 4-byte Folded Reload
	zext_int2long r[12:13], zero
	addli r4, r30, -2872
	zext_int2long r[6:7], r1
	addli r1, zero, 960
	zext_int2long r[16:17], r1
	loadli.w r1,  -2876(r30)                # 4-byte Folded Reload
	min.ul r[16:17], r[6:7], r[16:17]
	sext_int2long r[24:25], r1
	addli r1, zero, 17
	addli.d r[16:17], r[16:17], 64
	min.sl r[26:27], r[24:25], r[12:13]
	max.ul r[16:17], r[16:17], r[6:7]
	sub.sl r[12:13], r[16:17], r[6:7]
	addli.d r[6:7], r[26:27], 64
	zext_int2long r[16:17], r22
	max.sl r[26:27], r[6:7], r[24:25]
	load.d r[6:7], 0(r4)                    # 8-byte Folded Reload
	min.ul r[12:13], r[12:13], r[16:17]
	addli r4, zero, 5
	sub.sl r[24:25], r[26:27], r[24:25]
	load.d r[26:27], 16(r30)
	sll.d r[6:7], r[6:7], r1
	addli r1, r30, -2840
	min.sl r[16:17], r[24:25], r[16:17]
	add.ul r[6:7], r[26:27], r[6:7]
	addli r27, zero, 6
	store.d r[6:7], 0(r1)                   # 8-byte Folded Spill
	addli r1, r30, -2864
	load.d r[6:7], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2840
	load.d r[24:25], 0(r1)                  # 8-byte Folded Reload
	addli r1, zero, 10
	sll.d r[6:7], r[6:7], r11
	xwait r1, 0
	lock zero, r4
	slli r1, r12, 2
	addli r13, zero, 5
	dma_cfg r11, zero, zero, 0
	add.ul r[6:7], r[24:25], r[6:7]
	dma_cfg zero, r11, zero, 1
	dma_cfg r7, zero, zero, 2
	loadli.w r12,  -2852(r30)               # 4-byte Folded Reload
	dma_cfg r6, r12, r1, 3
	addli r1, zero, 256
	addli r6, zero, 2048
	dma_cfg r6, r1, r16, 4
	addli r1, zero, 11
	dma_run zero
	unlock r4
	j .LBB0_6
.LBB0_31:                               # %._crit_edge
	.loc	1 22 0                          # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_33
# %bb.32:
	.loc	1 0 0 is_stmt 0                 # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:22:0
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
.LBB0_33:
	.loc	1 22 0 epilogue_begin           # c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py:22:0
	addli sp, sp, 2888
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
	.long	2952                            # 0xb88
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
.asciz	"c46q2rafabb2fm4hillqvpxtpt7x2stffiqcf3r56vrjxpqqhf76.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/46" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
