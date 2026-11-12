	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/67" "c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py"
	.loc	1 22 0                          # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2968
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:73:26
	core_id r18
	addli r30, sp, 2904
	xsignal_mode_cfg r1
	beq r18, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:0:26
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
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -516(r30)
	storeli.w zero, -1540(r30)
	storeli.w zero, -2056(r30)
	storeli.w zero, -2828(r30)
	mul.s r1, r2, r1
	addli r2, r4, 0
	fmac.s r2, r1, r3
	mul.s r3, r1, r3
	addli r2, r2, -1
	div.s r2, r2, r4
	load_param_i r4, 0
	mul.s r1, r2, r4
	fmac.s r2, r2, r4
	min.s r3, r2, r3
	ble.s r3, r1, .LBB0_33
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r3
	addli r4, r30, -2904
	loadli.w r8,  -516(r30)
	loadli.w r9,  -1540(r30)
	loadli.w r26,  -2056(r30)
	loadli.w r25,  -2828(r30)
	addli r10, zero, 128
	addli r11, zero, 1
	addli r19, zero, 6
	addli r14, zero, 2
	addli r15, zero, 4
	addli r16, zero, 192
	lui r24, 8
	addli r28, zero, 5
	addli r22, zero, 16
	addli r23, zero, 64
	addli r13, zero, 256
	addli r7, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sext_int2long r[3:4], r1
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:73:26
	addli r1, zero, 10
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0                           # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -2864
	addli r5, r30, -2904
	loadli.w r7,  -2868(r30)                # 4-byte Folded Reload
	addli r25, r12, 1
	addli r26, r17, 1
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	load.d r[1:2], 0(r5)                    # 8-byte Folded Reload
	addli.d r[3:4], r[3:4], 1
	setlt.sl r1, r[3:4], r[1:2]
	beq r1, zero, .LBB0_33
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	.loc	1 73 26                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:73:26
	bneq r18, r15, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26                          # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:0:26
	loadli.w r1,  32(r30)
	addli r2, r30, -2864
	addli r6, zero, 8
	addli r21, zero, 0
	addli r27, zero, 0
	store.d r[3:4], 0(r2)                   # 8-byte Folded Spill
	loadli.w r2,  28(r30)
	div.s r1, r3, r1
	mod.s r4, r7, r14
	addli r7, r7, 1
	storeli.w r7, -2868(r30)                # 4-byte Folded Spill
	addli r7, r30, -2880
	div.s r1, r1, r2
	slli r4, r4, 14
	storeli.w r4, -2852(r30)                # 4-byte Folded Spill
	div.s r2, r1, r10
	slli r3, r2, 3
	slli r2, r2, 7
	sub.s r5, r11, r3
	sub.s r2, r1, r2
	min.s r5, r5, r6
	mod.s r1, r1, r5
	div.s r2, r2, r5
	add.s r1, r3, r1
	zext_int2long r[3:4], r2
	slli r2, r2, 6
	storeli.w r2, -2896(r30)                # 4-byte Folded Spill
	sll.d r[2:3], r[3:4], r19
	slli r4, r1, 6
	zext_int2long r[5:6], r1
	.loc	1 73 26                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:73:26
	storeli.w r4, -2892(r30)                # 4-byte Folded Spill
	sll.d r[3:4], r[2:3], r14
	load.d r[1:2], 8(r30)
	store.d r[3:4], 0(r7)                   # 8-byte Folded Spill
	add.ul r[1:2], r[1:2], r[3:4]
	addli r3, r30, -2848
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r2, r30, -2888
	addli r1, zero, 12
	addli r3, r30, -2840
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	sll.d r[1:2], r[5:6], r1
	addli r6, zero, 9
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 26                          # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:0:26
	addli r19, zero, 6
	.loc	1 81 20 is_stmt 1               # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:81:20
	sll.d r[1:2], r[1:2], r14
	.loc	1 73 26                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:73:26
	core_id r18
	.loc	1 81 25                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:81:25
	srl.d r[3:4], r[3:4], r19
	.loc	1 81 20 is_stmt 0               # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:81:20
	sub.s r3, r23, r3
	load.d r[4:5], 0(r30)
	add.ul r[1:2], r[4:5], r[1:2]
	addli r4, zero, 3
	xwait r4, 0
	lock zero, r15
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r7, r1, r23, 3
	dma_cfg r10, r13, r3, 4
	dma_run zero
	unlock r15
	xsignal r14, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25 is_stmt 1               # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:89:25
	addli r9, r9, 1
	.loc	1 86 20                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:86:20
	addli r8, r8, 1
.LBB0_13:                               # %.thread6
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:73:26
	addli r21, r21, 1
	beq r21, r15, .LBB0_30
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:89:25
	addli r27, r27, 1
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:86:25
	add.s r17, r26, r27
	add.s r12, r25, r27
	.loc	1 81 20                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:81:20
	mod.s r1, r17, r10
	.loc	1 89 25                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:89:25
	mod.s r2, r12, r16
	.loc	1 81 20                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:81:20
	slli r3, r1, 13
	.loc	1 89 25                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:89:25
	slli r1, r2, 12
	.loc	1 81 20                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:81:20
	add.s r7, r3, r24
	beq r18, r14, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 0 is_stmt 0                 # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:0:0
	zext_int2long r[3:4], r21
	.loc	1 81 20                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:81:20
	bneq r18, r11, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 81 25                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:81:25
	addli r5, r30, -2840
	addli r18, zero, 4095
	.loc	1 86 25 is_stmt 1               # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:86:25
	sll.d r[3:4], r[3:4], r15
	.loc	1 81 25                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:81:25
	load.d r[1:2], 0(r5)                    # 8-byte Folded Reload
	zext_int2long r[18:19], r18
	add.ul r[1:2], r[3:4], r[1:2]
	setlt.ul r18, r[18:19], r[1:2]
	bneq r18, zero, .LBB0_11
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 25 is_stmt 0                # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:0:25
	addli.d r[3:4], r[1:2], 0
	j .LBB0_11
.LBB0_19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25 is_stmt 1               # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:89:25
	xwait r14, 0
	xwait r28, 0
	lock zero, zero
	addli r2, zero, 32
	ds_cfg r14, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r23, zero, 13
	shuffle_batch r1, r7, r22, 1
	addli r1, zero, 3
	unlock zero
	xsignal r1, 0
	xsignal r15, 0
	j .LBB0_12
.LBB0_20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 86 20                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:86:20
	mod.s r2, r8, r10
	.loc	1 89 25                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:89:25
	addli r7, zero, 255
	.loc	1 86 20                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:86:20
	lui r20, 264
	addli r8, r8, 1
	.loc	1 89 25                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:89:25
	mod.s r7, r9, r7
	addli r9, r9, 1
	.loc	1 86 20                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:86:20
	slli r2, r2, 12
	add.s r20, r2, r20
	.loc	1 89 25                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:89:25
	slli r7, r7, 12
	.loc	1 86 20                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:86:20
	addli r2, zero, 7
	beq r18, r2, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_15 Depth=2
	bneq r18, r19, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_15 Depth=2
	sll.d r[1:2], r[3:4], r22
	addli r3, zero, 7
	addli r5, r30, -2848
	addli r13, zero, 256
	xwait r3, 0
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	lock zero, r15
	dma_cfg zero, zero, zero, 0
	add.ul r[1:2], r[3:4], r[1:2]
	addli r3, zero, 256
	dma_cfg zero, r2, zero, 2
	dma_cfg r20, r1, r3, 3
	addli r1, zero, 4096
	dma_cfg r3, r1, r22, 4
	dma_run zero
	unlock r15
	xsignal r19, 0
	.loc	1 89 25                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:89:25
	j .LBB0_13
.LBB0_23:                               #   in Loop: Header=BB0_15 Depth=2
	xwait r19, 0
	xwait r6, 0
	lock zero, zero
	addli r1, zero, 7
	ds_cfg r14, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r7, r20, r22, 2
	unlock zero
	xsignal r1, 0
	addli r1, zero, 8
	xsignal r1, 0
	j .LBB0_13
.LBB0_24:                               #   in Loop: Header=BB0_15 Depth=2
	bneq r18, r15, .LBB0_27
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 8
	xwait r15, 0
	xwait r2, 0
	lock zero, r11
	mm_cfg r23, r22, r23, 0
	mm_cfg r11, r14, r11, 2
	beq r27, zero, .LBB0_28
# %bb.26:                               # %.preheader8
                                        #   in Loop: Header=BB0_15 Depth=2
	loadli.w r2,  -2852(r30)                # 4-byte Folded Reload
	mm_acc r2, r1, r7, 8
	j .LBB0_29
.LBB0_27:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:73:26
	addli r21, r21, 1
	bneq r21, r15, .LBB0_14
	j .LBB0_31
.LBB0_28:                               # %.preheader
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:89:25
	loadli.w r2,  -2852(r30)                # 4-byte Folded Reload
	mm r2, r1, r7, 8
.LBB0_29:                               # %.thread6.thread41
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:73:26
	addli r21, r21, 1
	.loc	1 89 25                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:89:25
	unlock r11
	xsignal r28, 0
	xsignal r6, 0
	bneq r21, r15, .LBB0_14
	j .LBB0_5
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:73:26
	beq r18, r15, .LBB0_5
.LBB0_31:                               # %.thread40
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:101:67
	bneq r18, zero, .LBB0_7
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -2896(r30)                # 4-byte Folded Reload
	loadli.w r5,  -2892(r30)                # 4-byte Folded Reload
	addli r3, zero, 960
	zext_int2long r[18:19], zero
	addli r25, r30, -2888
	addli r7, zero, 18
	addli r28, zero, 5
	zext_int2long r[3:4], r3
	load.d r[20:21], 0(r25)                 # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	sext_int2long r[5:6], r5
	min.ul r[3:4], r[1:2], r[3:4]
	min.sl r[18:19], r[5:6], r[18:19]
	sll.d r[20:21], r[20:21], r7
	addli r7, r30, -2880
	addli.d r[3:4], r[3:4], 64
	addli.d r[18:19], r[18:19], 64
	max.ul r[3:4], r[3:4], r[1:2]
	max.sl r[18:19], r[18:19], r[5:6]
	sub.sl r[1:2], r[3:4], r[1:2]
	zext_int2long r[3:4], r23
	sub.sl r[5:6], r[18:19], r[5:6]
	load.d r[18:19], 16(r30)
	min.ul r[1:2], r[1:2], r[3:4]
	min.sl r[3:4], r[5:6], r[3:4]
	load.d r[5:6], 0(r7)                    # 8-byte Folded Reload
	addli r7, zero, 10
	add.ul r[18:19], r[18:19], r[20:21]
	xwait r7, 0
	addli r7, zero, 5
	slli r1, r1, 2
	add.ul r[5:6], r[18:19], r[5:6]
	addli r19, zero, 6
	.loc	1 73 26                         # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:73:26
	core_id r18
	.loc	1 101 67                        # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:101:67
	lock zero, r7
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r11, zero, 1
	dma_cfg r6, zero, zero, 2
	loadli.w r2,  -2852(r30)                # 4-byte Folded Reload
	dma_cfg r5, r2, r1, 3
	addli r1, zero, 4096
	dma_cfg r1, r13, r3, 4
	addli r1, zero, 11
	dma_run zero
	unlock r7
	j .LBB0_6
.LBB0_33:                               # %._crit_edge
	.loc	1 22 0                          # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:22:0
	xsignal zero, 0
	bneq r18, zero, .LBB0_35
# %bb.34:
	.loc	1 0 0 is_stmt 0                 # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:22:0
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
.LBB0_35:
	.loc	1 22 0 epilogue_begin           # c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py:22:0
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
.asciz	"c67qw7u3bnyxcnforroddbahoul26qiv7h2svcwmn5q6zu3drmlx.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/67" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
