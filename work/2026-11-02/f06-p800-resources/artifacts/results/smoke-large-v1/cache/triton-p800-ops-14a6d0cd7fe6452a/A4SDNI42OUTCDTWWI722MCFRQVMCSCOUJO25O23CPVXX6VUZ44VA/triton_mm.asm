	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/smoke-large-v1/cache/inductor/tl" "ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py"
	.loc	1 22 0                          # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3160
	addli r30, sp, 3096
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:73:26
	core_id r20
	loadli.w r19,  32(r30)
	xsignal_mode_cfg r1
	beq r20, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -620(r30)
	storeli.w zero, -1644(r30)
	storeli.w zero, -2260(r30)
	storeli.w zero, -3032(r30)
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
	ble.s r2, r1, .LBB0_38
# %bb.4:                                # %.lr.ph
	sext_int2long r[9:10], r1
	sext_int2long r[2:3], r2
	addli r4, r30, -3072
	lui r1, 15
	loadli.w r28,  -620(r30)
	loadli.w r26,  -1644(r30)
	loadli.w r8,  -2260(r30)
	addli r11, zero, 32
	addli r12, zero, 6
	addli r22, zero, 2
	addli r14, zero, 4
	addli r16, zero, 1
	addli r17, zero, 192
	addli r21, zero, 7
	addli r23, zero, 3
	addli r24, zero, 64
	addli r25, zero, 16
	addli r27, zero, 128
	addli r18, zero, 5
	storeli.w zero, -3048(r30)              # 4-byte Folded Spill
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	ori r5, r1, 4095
	lui r1, 1023
	loadli.w r3,  -3032(r30)
	addli r2, r30, -3096
	lui r4, 1047552
	ori r1, r1, 4095
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	storeli.w r1, -3044(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67 is_stmt 1              # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:101:67
	addli r28, r1, 1
	.loc	1 73 26                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:73:26
	addli r1, zero, 10
	.loc	1 101 67                        # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:101:67
	addli r3, r9, 1
	loadli.w r19,  32(r30)
	addli r26, r22, 1
	addli r11, zero, 32
	addli r22, zero, 2
	.loc	1 73 26                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:73:26
	xsignal r1, 0
	addli r1, r30, -3056
.LBB0_6:                                # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:0:26
	load.d r[9:10], 0(r1)                   # 8-byte Folded Reload
	addli r17, zero, 192
	addli r18, zero, 5
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, r30, -3072
	addli.d r[9:10], r[9:10], 1
	load.d r[1:2], 0(r4)                    # 8-byte Folded Reload
	setlt.sl r1, r[9:10], r[1:2]
	loadli.w r2,  -3048(r30)                # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -3048(r30)                # 4-byte Folded Spill
	beq r1, zero, .LBB0_38
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	div.s r1, r9, r19
	loadli.w r2,  28(r30)
	.loc	1 54 50 is_stmt 1               # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:54:50
	addli r5, zero, 8
	addli r15, zero, 153
	lui r13, 8
	div.s r2, r1, r2
	.loc	1 53 22                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:53:22
	addli r1, zero, 256
	addli zero, r30, -3064
	div.s r6, r2, r1
	.loc	1 54 41                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:54:41
	slli r1, r6, 3
	.loc	1 54 30 is_stmt 0               # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:54:30
	sub.s r4, r11, r1
	.loc	1 54 50                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:54:50
	min.s r7, r4, r5
	.loc	1 55 40 is_stmt 1               # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:55:40
	mod.s r4, r2, r7
	.loc	1 55 34 is_stmt 0               # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:55:34
	add.s r1, r1, r4
	.loc	1 95 15 is_stmt 1               # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:95:15
	zext_int2long r[4:5], r1
	store.d r[4:5], 0(zero)                 # 8-byte Folded Spill
	xor zero, zero, zero
	addli r4, zero, 1984
	.loc	1 73 26                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:73:26
	addli zero, r30, -3040
	zext_int2long r[4:5], r4
	store.d r[4:5], 0(zero)                 # 8-byte Folded Spill
	xor zero, zero, zero
	bneq r20, r14, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 11
	addli r5, zero, 255
	xwait r4, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:0:26
	addli r5, zero, 255
	beq r20, r16, .LBB0_29
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r20, r22, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 0
	addli r5, zero, 153
	lui r6, 8
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:89:25
	add.s r2, r8, r1
	add.s r4, r3, r1
	xwait r22, 0
	xwait r18, 0
	lock zero, zero
	.loc	1 73 26                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:89:25
	ds_cfg r23, zero, 0
	.loc	1 81 20                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:81:20
	mod.s r2, r2, r5
	.loc	1 89 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:89:25
	mod.s r4, r4, r17
	ds_cfg r24, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r24, zero, 13
	.loc	1 81 20                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:81:20
	slli r2, r2, 13
	.loc	1 89 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:89:25
	slli r4, r4, 12
	.loc	1 81 20                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:81:20
	add.s r2, r2, r6
	.loc	1 89 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:89:25
	shuffle_batch r4, r2, r25, 1
	unlock zero
	xsignal r23, 0
	xsignal r14, 0
	bneq r1, r27, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:73:26
	addli r26, r26, 128
	addli r28, r28, 128
	.loc	1 89 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:89:25
	add.s r3, r3, r1
	add.s r8, r8, r1
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:0:25
	slli r6, r6, 8
	addli r4, r30, -3056
	slli r1, r1, 6
	addli r19, zero, 32
	addli r11, zero, 0
	addli r17, zero, 0
	addli r15, zero, 154
	lui r13, 314
	sub.s r2, r2, r6
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	loadli.w r4,  -3048(r30)                # 4-byte Folded Reload
	storeli.w r1, -3084(r30)                # 4-byte Folded Spill
	div.s r2, r2, r7
	mod.s r6, r4, r22
	addli r4, r30, -3080
	zext_int2long r[9:10], r2
	slli r1, r2, 6
	slli r18, r6, 14
	sll.d r[9:10], r[9:10], r12
	.loc	1 73 26 is_stmt 1               # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:73:26
	storeli.w r1, -3088(r30)                # 4-byte Folded Spill
	load.d r[1:2], 8(r30)
	sll.d r[9:10], r[9:10], r16
	add.ul r[6:7], r[1:2], r[9:10]
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:89:25
	addli r4, zero, 9
	xwait r12, 0
	xwait r4, 0
	lock zero, zero
	ds_cfg r23, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r19, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r10, r2, r25, 2
	addli r2, zero, 8
	unlock zero
	xsignal r21, 0
	xsignal r2, 0
	.loc	1 73 26                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:73:26
	addli r11, r11, 1
	beq r11, r27, .LBB0_28
.LBB0_17:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:89:25
	addli r17, r17, 1
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r1, r28, r17
	add.s r22, r26, r17
	add.s r9, r3, r17
	.loc	1 86 20                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:86:20
	mod.s r2, r1, r15
	.loc	1 89 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:89:25
	mod.s r4, r22, r5
	.loc	1 86 20                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:86:20
	slli r2, r2, 11
	.loc	1 89 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:89:25
	slli r10, r4, 12
	.loc	1 86 20                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:86:20
	add.s r2, r2, r13
	beq r20, r21, .LBB0_16
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:0:20
	bneq r20, r12, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:86:25
	zext_int2long r[4:5], r11
	.loc	1 86 20                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:86:20
	xwait r21, 0
	lock zero, r14
	dma_cfg r16, r16, zero, 0
	sll.d r[4:5], r[4:5], r25
	add.ul r[4:5], r[6:7], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r2, r4, r27, 3
	addli r2, zero, 4096
	addli r5, zero, 255
	dma_cfg r27, r2, r25, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:73:26
	addli r11, r11, 1
	bneq r11, r27, .LBB0_17
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:89:25
	bneq r20, r14, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:0:0
	addli r2, zero, 192
	.loc	1 89 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:89:25
	addli r4, zero, 8
	xwait r14, 0
	.loc	1 0 0                           # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:0:0
	mod.s r2, r9, r2
	.loc	1 89 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:89:25
	xwait r4, 0
	lock zero, r16
	addli r4, zero, 2
	mm_cfg r24, r25, r24, 0
	mm_cfg r16, r4, r16, 2
	.loc	1 0 0                           # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:0:0
	slli r2, r2, 12
	.loc	1 89 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:89:25
	beq r17, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r18, r2, r10, 5
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:73:26
	addli r11, r11, 1
	bneq r11, r27, .LBB0_17
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:89:25
	mm r18, r2, r10, 5
.LBB0_26:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r2, zero, 5
	unlock r16
	.loc	1 73 26                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:73:26
	addli r11, r11, 1
	.loc	1 89 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:89:25
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 73 26                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:73:26
	bneq r11, r27, .LBB0_17
# %bb.27:                               # %.split17.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:86:20
	addli r8, r8, 128
	j .LBB0_5
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r8, r8, 128
	.loc	1 73 26                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:73:26
	beq r20, r14, .LBB0_5
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:0:26
	addli r2, r30, -3064
	addli r1, r30, -3056
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	store.d r[9:10], 0(r1)                  # 8-byte Folded Spill
	addli r1, zero, 17
	sll.d r[6:7], r[4:5], r1
	addli r4, r30, -3096
	load.d r[1:2], 0(r4)                    # 8-byte Folded Reload
	and.d r[19:20], r[6:7], r[1:2]
	addli r1, zero, 0
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	addli r2, zero, 2048
	.loc	1 81 25 is_stmt 1               # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:81:25
	sub.sl r[9:10], r[17:18], r[9:10]
	.loc	1 81 20 is_stmt 0               # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:81:20
	xwait r23, 0
	lock zero, r14
	dma_cfg r16, r16, zero, 0
	zext_int2long r[4:5], r2
	.loc	1 0 0                           # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:0:0
	add.s r2, r8, r1
	.loc	1 73 26 is_stmt 1               # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:73:26
	addli r1, r1, 1
	.loc	1 81 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:81:25
	div.sl r[4:5], r[9:10], r[4:5]
	.loc	1 81 20 is_stmt 0               # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:81:20
	sll.d r[9:10], r[17:18], r16
	load.d r[17:18], 0(r30)
	.loc	1 81 0                          # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:81:0
	mod.s r2, r2, r15
	.loc	1 81 20                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:81:20
	add.ul r[9:10], r[17:18], r[9:10]
	dma_cfg zero, r10, zero, 2
	.loc	1 81 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:81:25
	addli zero, r30, -3040
	.loc	1 81 0                          # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:81:0
	slli r2, r2, 13
	.loc	1 81 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:81:25
	load.d r[17:18], 0(zero)                # 8-byte Folded Reload
	xor zero, zero, zero
	.loc	1 81 0                          # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:81:0
	add.s r2, r2, r13
	.loc	1 81 20                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:81:20
	dma_cfg r2, r9, r11, 3
	addli r2, zero, 4096
	.loc	1 81 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:81:25
	min.sl r[17:18], r[4:5], r[17:18]
	sub.sl r[4:5], r[17:18], r[4:5]
	.loc	1 81 20                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:81:20
	addli r4, r4, 64
	dma_cfg r27, r2, r4, 4
	dma_run zero
	unlock r14
	xsignal r22, 0
	.loc	1 73 26 is_stmt 1               # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:73:26
	beq r1, r27, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:86:25
	zext_int2long r[9:10], r1
	loadli.w r2,  -3044(r30)                # 4-byte Folded Reload
	sll.d r[9:10], r[9:10], r14
	.loc	1 81 25                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:81:25
	add.ul r[17:18], r[9:10], r[6:7]
	zext_int2long r[9:10], r2
	setlt.ul r2, r[9:10], r[17:18]
	addli.d r[9:10], r[19:20], 0
	bneq r2, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:0:25
	zext_int2long r[9:10], zero
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 89 25 is_stmt 1               # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:89:25
	add.s r8, r8, r1
	addli r1, r30, -3056
	loadli.w r19,  32(r30)
	.loc	1 73 26                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:73:26
	addli r3, r3, 128
	addli r26, r26, 128
	addli r28, r28, 128
	core_id r20
	j .LBB0_6
.LBB0_34:                               # %.split17.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:86:20
	addli r8, r8, 128
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:101:67
	addli r3, r9, 1
	addli r26, r22, 1
	addli r28, r1, 1
	addli r11, zero, 32
	addli r17, zero, 192
	beq r20, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:0:67
	addli r1, r30, -3056
	loadli.w r19,  32(r30)
	addli r22, zero, 2
	addli r18, zero, 5
	load.d r[9:10], 0(r1)                   # 8-byte Folded Reload
	j .LBB0_7
.LBB0_37:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:101:67
	loadli.w r1,  -3088(r30)                # 4-byte Folded Reload
	addli r4, r30, -3040
	loadli.w r6,  -3084(r30)                # 4-byte Folded Reload
	addli r13, r30, -3040
	addli r19, zero, 18
	addli r22, zero, 2
	load.d r[9:10], 0(r4)                   # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	sext_int2long r[6:7], r6
	min.ul r[4:5], r[1:2], r[9:10]
	min.sl r[9:10], r[6:7], r[9:10]
	addli.d r[4:5], r[4:5], 64
	addli.d r[9:10], r[9:10], 64
	max.ul r[4:5], r[4:5], r[1:2]
	max.sl r[9:10], r[9:10], r[6:7]
	sub.sl r[1:2], r[4:5], r[1:2]
	zext_int2long r[4:5], r24
	sub.sl r[6:7], r[9:10], r[6:7]
	load.d r[9:10], 16(r30)
	min.ul r[1:2], r[1:2], r[4:5]
	min.sl r[4:5], r[6:7], r[4:5]
	addli r6, r30, -3080
	store.d r[1:2], 0(r13)                  # 8-byte Folded Spill
	addli r13, r30, -3064
	load.d r[1:2], 0(r13)                   # 8-byte Folded Reload
	sll.d r[19:20], r[1:2], r19
	load.d r[1:2], 0(r6)                    # 8-byte Folded Reload
	add.ul r[9:10], r[9:10], r[19:20]
	loadli.w r19,  32(r30)
	.loc	1 73 26 is_stmt 1               # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:73:26
	core_id r20
	.loc	1 101 67                        # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:101:67
	add.ul r[6:7], r[9:10], r[1:2]
	addli r9, zero, 10
	xwait r9, 0
	addli r9, zero, 5
	lock zero, r9
	addli r9, r30, -3040
	dma_cfg r16, zero, zero, 0
	dma_cfg zero, r16, zero, 1
	load.d r[1:2], 0(r9)                    # 8-byte Folded Reload
	dma_cfg r7, zero, zero, 2
	slli r1, r1, 2
	addli r2, zero, 4096
	dma_cfg r6, r18, r1, 3
	addli r1, zero, 256
	addli r18, zero, 5
	dma_cfg r2, r1, r4, 4
	addli r1, zero, 11
	dma_run zero
	unlock r18
	xsignal r1, 0
	addli r1, r30, -3056
	load.d r[9:10], 0(r1)                   # 8-byte Folded Reload
	j .LBB0_7
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0                          # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:22:0
	xsignal zero, 0
	bneq r20, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:22:0
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
	.loc	1 22 0 epilogue_begin           # ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py:22:0
	addli sp, sp, 3096
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
	.long	3160                            # 0xc58
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
.asciz	"ctlxok7me6pesy7oxsoo2ca74bahhvjjmhnp3ly3a276zsvbpgrl.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/smoke-large-v1/cache/inductor/tl" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
