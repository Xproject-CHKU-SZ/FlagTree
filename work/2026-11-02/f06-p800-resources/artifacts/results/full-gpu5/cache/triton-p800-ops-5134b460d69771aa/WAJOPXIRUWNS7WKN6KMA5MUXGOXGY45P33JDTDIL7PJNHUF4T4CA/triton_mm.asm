	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/eb" "cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py"
	.loc	1 22 0                          # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3712
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:73:26
	core_id r21
	addli r30, sp, 3648
	xsignal_mode_cfg r1
	beq r21, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:0:26
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
	addli r4, r30, -3616
	sext_int2long r[10:11], r1
	loadli.w r28,  -768(r30)
	loadli.w r26,  -1792(r30)
	loadli.w r8,  -2560(r30)
	loadli.w r27,  -3584(r30)
	addli r22, zero, 128
	addli r7, zero, 2
	addli r12, zero, 6
	addli r15, zero, 5
	addli r14, zero, 4
	addli r18, zero, 255
	addli r9, zero, 191
	addli r19, zero, 7
	addli r25, zero, 3
	addli r16, zero, 64
	addli r23, zero, 32
	addli r17, zero, 1
	lui r13, 10
	addli r24, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r2, zero, 1023
	addli r3, r30, -3648
	lui r1, 1048575
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67 is_stmt 1              # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:101:67
	addli r28, r1, 1
	.loc	1 73 26                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:73:26
	addli r1, zero, 10
	.loc	1 101 67                        # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:101:67
	addli r27, r2, 1
	addli r26, r5, 1
	addli r22, zero, 128
	addli r7, zero, 2
	addli r15, zero, 5
	lui r13, 10
	.loc	1 73 26                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:73:26
	xsignal r1, 0
	addli r1, r30, -3592
	loadli.w r24,  -3596(r30)               # 4-byte Folded Reload
.LBB0_6:                                # %.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:0:26
	load.d r[10:11], 0(r1)                  # 8-byte Folded Reload
.LBB0_7:                                # %.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, r30, -3616
	addli.d r[10:11], r[10:11], 1
	addli r24, r24, 1
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	setlt.sl r1, r[10:11], r[1:2]
	beq r1, zero, .LBB0_39
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_37 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	loadli.w r1,  32(r30)
	loadli.w r2,  28(r30)
	.loc	1 54 50 is_stmt 1               # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:54:50
	addli r4, zero, 8
	addli r20, r30, -3608
	div.s r1, r10, r1
	div.s r2, r1, r2
	.loc	1 53 22                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:53:22
	div.s r5, r2, r22
	.loc	1 54 41                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:54:41
	slli r1, r5, 3
	.loc	1 54 30 is_stmt 0               # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:54:30
	sub.s r3, r7, r1
	.loc	1 54 50                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:54:50
	min.s r6, r3, r4
	.loc	1 55 40 is_stmt 1               # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:55:40
	mod.s r3, r2, r6
	.loc	1 55 34 is_stmt 0               # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:55:34
	add.s r1, r1, r3
	.loc	1 95 15 is_stmt 1               # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:95:15
	zext_int2long r[3:4], r1
	store.d r[3:4], 0(r20)                  # 8-byte Folded Spill
	zext_int2long r[3:4], r16
	.loc	1 73 26                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:73:26
	bneq r21, r14, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:0:26
	addli r7, r30, -3624
	store.d r[3:4], 0(r7)                   # 8-byte Folded Spill
	.loc	1 73 26                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:73:26
	addli r3, zero, 11
	xwait r3, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26                          # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:0:26
	beq r21, r17, .LBB0_29
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	addli r20, r30, -3624
	store.d r[3:4], 0(r20)                  # 8-byte Folded Spill
	bneq r21, r7, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 1
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:81:20
	mod.s r2, r8, r9
	.loc	1 89 25                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:89:25
	mod.s r3, r27, r18
	xwait r7, 0
	xwait r15, 0
	lock zero, zero
	addli r27, r27, 1
	.loc	1 81 20                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:81:20
	addli r8, r8, 1
	.loc	1 89 25                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:89:25
	ds_cfg r25, zero, 0
	ds_cfg r16, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r23, zero, 13
	.loc	1 81 20                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:81:20
	slli r2, r2, 12
	.loc	1 89 25                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:89:25
	slli r3, r3, 11
	.loc	1 81 20                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:81:20
	add.s r2, r2, r13
	.loc	1 89 25                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:89:25
	shuffle_batch r3, r2, r23, 1
	.loc	1 73 26                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:73:26
	andi r2, r1, 1
	addli r1, zero, 0
	.loc	1 89 25                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:89:25
	unlock zero
	xsignal r25, 0
	xsignal r14, 0
	bneq r2, zero, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:73:26
	addli r26, r26, 2
	addli r28, r28, 2
	.loc	1 89 25                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:89:25
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:0:25
	slli r5, r5, 7
	slli r1, r1, 5
	addli r3, r30, -3592
	storeli.w r24, -3596(r30)               # 4-byte Folded Spill
	addli r13, zero, 0
	addli r22, zero, 5
	addli r20, zero, 0
	sub.s r2, r2, r5
	storeli.w r1, -3636(r30)                # 4-byte Folded Spill
	mod.s r5, r24, r15
	store.d r[10:11], 0(r3)                 # 8-byte Folded Spill
	addli r24, zero, 1
	div.s r2, r2, r6
	slli r15, r5, 13
	zext_int2long r[6:7], r2
	slli r1, r2, 6
	storeli.w r1, -3640(r30)                # 4-byte Folded Spill
	sll.d r[3:4], r[6:7], r12
	addli r1, r30, -3632
	store.d r[3:4], 0(r1)                   # 8-byte Folded Spill
	.loc	1 73 26 is_stmt 1               # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:73:26
	sll.d r[1:2], r[3:4], r24
	load.d r[3:4], 8(r30)
	add.ul r[10:11], r[3:4], r[1:2]
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:89:25
	addli r3, zero, 9
	xwait r12, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 8
	ds_cfg r25, zero, 0
	ds_cfg r16, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r16, zero, 13
	shuffle_coa r6, r7, r23, 2
	unlock zero
	xsignal r19, 0
	xsignal r3, 0
	.loc	1 73 26                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:73:26
	andi r3, r24, 1
	beq r3, zero, .LBB0_28
.LBB0_17:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:89:25
	addli r20, r20, 1
	lui r13, 16
	addli r24, zero, 0
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r1, r28, r20
	add.s r5, r26, r20
	add.s r2, r27, r20
	.loc	1 86 20                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:86:20
	mod.s r3, r1, r9
	.loc	1 89 25                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:89:25
	mod.s r4, r5, r18
	slli r6, r4, 12
	.loc	1 86 20                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:86:20
	slli r3, r3, 12
	lui r4, 201
	add.s r7, r3, r4
	beq r21, r19, .LBB0_16
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:0:20
	bneq r21, r12, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 20                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:86:20
	zext_int2long r[3:4], r13
	xwait r19, 0
	lock zero, r14
	addli r6, zero, 128
	dma_cfg r17, r17, zero, 0
	add.ul r[3:4], r[10:11], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r7, r3, r6, 3
	addli r3, zero, 2048
	dma_cfg r6, r3, r23, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:73:26
	andi r3, r24, 1
	bneq r3, zero, .LBB0_17
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:0:26
	andi r7, r24, 1
	.loc	1 89 25 is_stmt 1               # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:89:25
	bneq r21, r14, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 25 is_stmt 0                # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:0:25
	mod.s r3, r2, r18
	.loc	1 89 25                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:89:25
	addli r4, zero, 8
	xwait r14, 0
	xwait r4, 0
	lock zero, r17
	mm_cfg r16, r23, r23, 0
	slli r13, r3, 11
	addli r3, zero, 2
	mm_cfg r17, r3, r17, 2
	beq r20, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r15, r13, r6, 5
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:73:26
	bneq r7, zero, .LBB0_17
	j .LBB0_31
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:89:25
	mm r15, r13, r6, 5
.LBB0_26:                               # %.thread6.thread89
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r3, zero, 9
	unlock r17
	xsignal r22, 0
	xsignal r3, 0
	.loc	1 73 26                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:73:26
	bneq r7, zero, .LBB0_17
# %bb.27:                               # %.split17.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:86:20
	addli r8, r8, 2
	j .LBB0_5
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r8, r8, 2
	.loc	1 73 26                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:73:26
	beq r21, r14, .LBB0_5
	j .LBB0_32
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:0:26
	addli r2, r30, -3592
	addli r5, zero, 1
	addli.d r[16:17], r[3:4], 0
	storeli.w r24, -3596(r30)               # 4-byte Folded Spill
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	setlt.u r6, r5, r1
	addli r2, r30, -3608
	addli r1, zero, 11
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	sll.d r[1:2], r[10:11], r1
	bneq r6, zero, .LBB0_35
# %bb.30:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	zext_int2long r[10:11], zero
	j .LBB0_36
.LBB0_31:                               # %.split17.thread88
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:86:20
	addli r8, r8, 2
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:101:67
	addli r28, r1, 1
	addli r1, r30, -3592
	loadli.w r24,  -3596(r30)               # 4-byte Folded Reload
	addli r27, r2, 1
	addli r26, r5, 1
	addli r22, zero, 128
	addli r7, zero, 2
	lui r13, 10
	load.d r[10:11], 0(r1)                  # 8-byte Folded Reload
	beq r21, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:0:67
	addli r15, zero, 5
	.loc	1 101 67                        # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:101:67
	j .LBB0_7
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -3640(r30)                # 4-byte Folded Reload
	addli r3, zero, 960
	loadli.w r5,  -3636(r30)                # 4-byte Folded Reload
	addli r13, r30, -3624
	zext_int2long r[10:11], r23
	zext_int2long r[3:4], r3
	load.d r[16:17], 0(r13)                 # 8-byte Folded Reload
	addli r13, zero, 16
	zext_int2long r[1:2], r1
	sext_int2long r[5:6], r5
	min.ul r[3:4], r[1:2], r[3:4]
	min.sl r[20:21], r[5:6], r[10:11]
	addli.d r[3:4], r[3:4], 64
	max.ul r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	addli.d r[3:4], r[20:21], 32
	min.ul r[1:2], r[1:2], r[16:17]
	addli r17, zero, 1
	addli r16, zero, 64
	addli zero, r30, -3608
	max.sl r[3:4], r[3:4], r[5:6]
	load.d r[20:21], 0(zero)                # 8-byte Folded Reload
	sub.sl r[3:4], r[3:4], r[5:6]
	load.d r[5:6], 16(r30)
	xor zero, zero, zero
	slli r1, r1, 2
	min.sl r[3:4], r[3:4], r[10:11]
	addli r2, zero, 2048
	sll.d r[20:21], r[20:21], r13
	addli r13, r30, -3632
	add.ul r[5:6], r[5:6], r[20:21]
	load.d r[20:21], 0(r13)                 # 8-byte Folded Reload
	addli r13, r30, -3592
	load.d r[10:11], 0(r13)                 # 8-byte Folded Reload
	addli r13, zero, 10
	sll.d r[20:21], r[20:21], r17
	xwait r13, 0
	addli r13, zero, 5
	add.ul r[5:6], r[5:6], r[20:21]
	.loc	1 73 26 is_stmt 1               # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:73:26
	core_id r21
	.loc	1 101 67                        # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:101:67
	lock zero, r13
	lui r13, 10
	dma_cfg r17, zero, zero, 0
	dma_cfg zero, r17, zero, 1
	dma_cfg r6, zero, zero, 2
	dma_cfg r5, r15, r1, 3
	addli r1, zero, 256
	addli r15, zero, 5
	dma_cfg r2, r1, r3, 4
	addli r1, zero, 11
	dma_run zero
	unlock r15
	xsignal r1, 0
	j .LBB0_7
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:0:67
	addli r6, r30, -3648
	load.d r[3:4], 0(r6)                    # 8-byte Folded Reload
	and.d r[10:11], r[1:2], r[3:4]
.LBB0_36:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	load.d r[24:25], 0(r30)
	addli r15, zero, 0
	addli r12, zero, 1
.LBB0_37:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25 is_stmt 1               # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:86:25
	zext_int2long r[6:7], r15
	.loc	1 81 20                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:81:20
	mod.s r13, r8, r9
	addli r15, zero, 32
	addli r20, zero, 3
	addli r8, r8, 1
	.loc	1 81 25 is_stmt 0               # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:81:25
	or.d r[6:7], r[1:2], r[6:7]
	zext_int2long r[21:22], r15
	.loc	1 81 20                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:81:20
	xwait r20, 0
	.loc	1 73 26 is_stmt 1               # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:73:26
	andi r20, r5, 1
	.loc	1 81 20                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:81:20
	lock zero, r14
	dma_cfg r12, r12, zero, 0
	.loc	1 81 25 is_stmt 0               # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:81:25
	sub.sl r[3:4], r[6:7], r[10:11]
	.loc	1 81 20                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:81:20
	sll.d r[5:6], r[6:7], r12
	.loc	1 81 25                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:81:25
	div.sl r[3:4], r[3:4], r[16:17]
	.loc	1 81 20                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:81:20
	slli r7, r13, 12
	lui r13, 10
	add.ul r[5:6], r[24:25], r[5:6]
	add.s r7, r7, r13
	dma_cfg zero, r6, zero, 2
	.loc	1 81 25                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:81:25
	min.sl r[21:22], r[3:4], r[21:22]
	sub.sl r[3:4], r[21:22], r[3:4]
	addli r22, zero, 128
	.loc	1 81 20                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:81:20
	addli r3, r3, 32
	addli r4, zero, 64
	dma_cfg r7, r5, r4, 3
	addli r7, zero, 2
	addli r5, zero, 0
	dma_cfg r22, r22, r3, 4
	dma_run zero
	unlock r14
	xsignal r7, 0
	.loc	1 73 26 is_stmt 1               # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:73:26
	bneq r20, zero, .LBB0_37
# %bb.38:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:0:26
	addli r1, r30, -3592
	loadli.w r24,  -3596(r30)               # 4-byte Folded Reload
	.loc	1 73 26                         # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:73:26
	addli r27, r27, 2
	addli r26, r26, 2
	addli r28, r28, 2
	core_id r21
	addli r15, zero, 5
	addli r25, zero, 3
	addli r12, zero, 6
	addli r16, zero, 64
	addli r17, zero, 1
	j .LBB0_6
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:22:0
	xsignal zero, 0
	bneq r21, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py:22:0
	addli sp, sp, 3648
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
	.long	3712                            # 0xe80
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
.asciz	"cebnu2wtevs57lsm2de3fs5wabmv6te3hew4cjxuu6dwqth6s47q.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/eb" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
