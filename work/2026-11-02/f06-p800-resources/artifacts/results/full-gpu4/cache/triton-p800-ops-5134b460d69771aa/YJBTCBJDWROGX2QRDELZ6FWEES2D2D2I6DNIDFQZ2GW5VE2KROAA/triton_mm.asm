	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/uv" "cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py"
	.loc	1 22 0                          # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3048
	addli r30, sp, 2984
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:73:26
	core_id r6
	loadli.w r7,  32(r30)
	xsignal_mode_cfg r1
	beq r6, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -624(r30)
	storeli.w zero, -1268(r30)
	storeli.w zero, -1896(r30)
	storeli.w zero, -2920(r30)
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
	addli r4, r30, -2952
	sext_int2long r[10:11], r1
	loadli.w r28,  -624(r30)
	loadli.w r26,  -1268(r30)
	loadli.w r8,  -1896(r30)
	loadli.w r1,  -2920(r30)
	addli r18, zero, 16
	addli r13, zero, 1
	addli r12, zero, 6
	addli r15, zero, 3
	addli r14, zero, 4
	addli r16, zero, 2
	addli r9, zero, 160
	addli r23, zero, 155
	lui r20, 81
	addli r21, zero, 7
	addli r24, zero, 32
	addli r17, zero, 156
	addli r22, zero, 128
	addli r25, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r3, zero, 256
	j .LBB0_9
.LBB0_5:                                # %.split17.thread90
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:86:20
	addli r8, r8, 2
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:73:26
	addli r2, zero, 10
	.loc	1 101 67                        # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:101:67
	addli r1, r13, 1
	addli r26, r15, 1
	addli r28, r17, 1
	addli r13, zero, 1
	.loc	1 73 26                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:73:26
	xsignal r2, 0
	addli r2, r30, -2928
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
.LBB0_7:                                # %.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:0:26
	loadli.w r25,  -2932(r30)               # 4-byte Folded Reload
	addli r15, zero, 3
	addli r17, zero, 156
	addli r22, zero, 128
.LBB0_8:                                # %.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r2, r30, -2952
	addli.d r[10:11], r[10:11], 1
	addli r25, r25, 1
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	setlt.sl r2, r[10:11], r[4:5]
	beq r2, zero, .LBB0_36
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	addli r2, r30, -2928
	loadli.w r4,  28(r30)
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	div.s r2, r10, r7
	.loc	1 54 50 is_stmt 1               # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:54:50
	addli r11, zero, 8
	div.s r4, r2, r4
	.loc	1 53 22                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:53:22
	div.s r5, r4, r18
	.loc	1 54 41                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:54:41
	slli r2, r5, 3
	.loc	1 54 30 is_stmt 0               # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:54:30
	sub.s r10, r13, r2
	.loc	1 54 50                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:54:50
	min.s r10, r10, r11
	.loc	1 55 40 is_stmt 1               # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:55:40
	mod.s r11, r4, r10
	.loc	1 55 34 is_stmt 0               # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:55:34
	add.s r2, r2, r11
	.loc	1 73 26 is_stmt 1               # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:73:26
	addli r11, r30, -2944
	.loc	1 95 15                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:95:15
	zext_int2long r[18:19], r2
	.loc	1 73 26                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:73:26
	store.d r[18:19], 0(r11)                # 8-byte Folded Spill
	bneq r6, r14, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r11, zero, 11
	addli r19, zero, 64
	xwait r11, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:0:26
	beq r6, r13, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	addli r19, zero, 64
	bneq r6, r16, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r4, zero, 1
	addli r10, zero, 255
	addli r11, zero, 5
	addli r18, zero, 16
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:81:20
	mod.s r2, r8, r17
	.loc	1 89 25                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:89:25
	mod.s r5, r1, r10
	xwait r16, 0
	xwait r11, 0
	lock zero, zero
	addli r1, r1, 1
	.loc	1 81 20                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:81:20
	addli r8, r8, 1
	.loc	1 89 25                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:89:25
	ds_cfg r16, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r18, zero, 13
	.loc	1 81 20                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:81:20
	slli r2, r2, 11
	.loc	1 89 25                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:89:25
	slli r5, r5, 11
	.loc	1 81 20                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:81:20
	addli r2, r2, 12288
	.loc	1 89 25                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:89:25
	shuffle_batch r5, r2, r24, 1
	.loc	1 73 26                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:73:26
	andi r2, r4, 1
	addli r4, zero, 0
	.loc	1 89 25                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:89:25
	unlock zero
	xsignal r15, 0
	xsignal r14, 0
	bneq r2, zero, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:73:26
	addli r26, r26, 2
	addli r28, r28, 2
	j .LBB0_32
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:0:26
	slli r5, r5, 4
	slli r2, r2, 4
	storeli.w r25, -2932(r30)               # 4-byte Folded Spill
	addli r27, zero, 0
	addli r22, zero, 1
	addli r18, zero, 16
	sub.s r4, r4, r5
	mod.s r5, r25, r15
	storeli.w r2, -2968(r30)                # 4-byte Folded Spill
	div.s r4, r4, r10
	slli r25, r5, 12
	zext_int2long r[10:11], r4
	slli r2, r4, 6
	.loc	1 73 26                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:73:26
	load.d r[4:5], 8(r30)
	sll.d r[10:11], r[10:11], r12
	storeli.w r2, -2976(r30)                # 4-byte Folded Spill
	addli r2, r30, -2960
	sll.d r[10:11], r[10:11], r16
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	add.ul r[10:11], r[4:5], r[10:11]
	addli r4, zero, 0
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25 is_stmt 1               # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:89:25
	addli r27, zero, 9
	xwait r12, 0
	xwait r27, 0
	lock zero, zero
	ds_cfg r16, zero, 0
	ds_cfg r19, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r19, zero, 13
	shuffle_coa r5, r2, r24, 2
	addli r2, zero, 8
	unlock zero
	xsignal r21, 0
	xsignal r2, 0
	.loc	1 73 26                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:73:26
	andi r2, r22, 1
	bneq r2, zero, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:89:25
	add.s r17, r28, r4
	add.s r15, r26, r4
	add.s r13, r1, r4
	.loc	1 86 20                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:86:20
	mod.s r2, r17, r23
	.loc	1 89 25                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:89:25
	mod.s r5, r15, r9
	.loc	1 86 20                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:86:20
	slli r2, r2, 13
	.loc	1 89 25                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:89:25
	slli r5, r5, 13
	.loc	1 86 20                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:86:20
	add.s r2, r2, r20
	beq r6, r21, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:0:20
	bneq r6, r12, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 20                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:86:20
	zext_int2long r[5:6], r27
	xwait r21, 0
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	add.ul r[5:6], r[10:11], r[5:6]
	dma_cfg zero, r6, zero, 2
	dma_cfg r2, r5, r3, 3
	addli r2, zero, 512
	.loc	1 73 26 is_stmt 1               # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:73:26
	core_id r6
	.loc	1 86 20                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:86:20
	dma_cfg r3, r2, r24, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 73 26                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:73:26
	andi r2, r22, 1
	bneq r2, zero, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:0:26
	andi r22, r22, 1
	.loc	1 89 25 is_stmt 1               # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:89:25
	bneq r6, r14, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 25 is_stmt 0                # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:0:25
	addli r2, zero, 255
	.loc	1 89 25                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:89:25
	addli r27, zero, 8
	xwait r14, 0
	mod.s r2, r13, r2
	xwait r27, 0
	addli r27, zero, 1
	lock zero, r27
	mm_cfg r19, r24, r18, 0
	mm_cfg r16, r16, r27, 2
	slli r2, r2, 11
	beq r4, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r25, r2, r5, 8
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 25                          # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:0:25
	bneq r22, zero, .LBB0_27
	j .LBB0_33
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:89:25
	mm r25, r2, r5, 8
.LBB0_26:                               # %.thread6.thread89
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r2, zero, 5
	unlock r27
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 73 26 is_stmt 1               # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:73:26
	beq r22, zero, .LBB0_5
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:89:25
	addli r4, r4, 1
	lui r27, 4
	addli r22, zero, 0
	j .LBB0_18
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:86:20
	addli r8, r8, 2
	.loc	1 73 26                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:73:26
	beq r6, r14, .LBB0_6
	j .LBB0_34
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:0:26
	addli r6, r30, -2944
	addli r2, zero, 12
	addli r18, zero, 16
	load.d r[4:5], 0(r6)                    # 8-byte Folded Reload
	load.d r[6:7], 0(r30)
	sll.d r[4:5], r[4:5], r2
	addli r2, zero, 0
	add.ul r[10:11], r[6:7], r[4:5]
	addli r4, zero, 1
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:81:20
	mod.s r5, r8, r17
	.loc	1 86 25                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:86:25
	zext_int2long r[6:7], r2
	.loc	1 81 20                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:81:20
	xwait r15, 0
	lock zero, r14
	addli r8, r8, 1
	dma_cfg zero, zero, zero, 0
	sll.d r[6:7], r[6:7], r16
	slli r2, r5, 11
	add.ul r[5:6], r[10:11], r[6:7]
	addli r2, r2, 12288
	dma_cfg zero, r6, zero, 2
	dma_cfg r2, r5, r22, 3
	.loc	1 73 26                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:73:26
	andi r5, r4, 1
	addli r2, zero, 32
	addli r4, zero, 0
	.loc	1 81 20                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:81:20
	dma_cfg r22, r3, r18, 4
	dma_run zero
	unlock r14
	xsignal r16, 0
	.loc	1 73 26                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:73:26
	bneq r5, zero, .LBB0_30
# %bb.31:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:0:26
	loadli.w r7,  32(r30)
	.loc	1 73 26                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:73:26
	addli r1, r1, 2
	addli r26, r26, 2
	addli r28, r28, 2
	core_id r6
.LBB0_32:                               # %.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26                          # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:0:26
	addli r2, r30, -2928
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	.loc	1 89 25 is_stmt 1               # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:89:25
	j .LBB0_8
.LBB0_33:                               # %.split17.thread88
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:86:20
	addli r8, r8, 2
.LBB0_34:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:0:20
	addli r2, r30, -2928
	.loc	1 101 67 is_stmt 1              # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:101:67
	addli r1, r13, 1
	addli r26, r15, 1
	addli r28, r17, 1
	addli r13, zero, 1
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	bneq r6, zero, .LBB0_7
# %bb.35:                               #   in Loop: Header=BB0_9 Depth=1
	loadli.w r2,  -2976(r30)                # 4-byte Folded Reload
	zext_int2long r[4:5], r19
	zext_int2long r[10:11], zero
	addli r15, zero, 5
	addli r17, r30, -2944
	zext_int2long r[6:7], r2
	addli r2, r30, -2984
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	min.ul r[4:5], r[6:7], r[4:5]
	addli r2, r30, -2976
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	loadli.w r2,  -2968(r30)                # 4-byte Folded Reload
	sext_int2long r[4:5], r2
	addli r2, r30, -2968
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -2976
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 64
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -2968
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	min.sl r[10:11], r[4:5], r[10:11]
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -2976
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	max.ul r[10:11], r[10:11], r[6:7]
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -2968
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 16
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -2976
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	addli r2, r30, -2968
	sub.sl r[6:7], r[10:11], r[6:7]
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	addli r2, r30, -2976
	max.sl r[10:11], r[10:11], r[4:5]
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -2984
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	addli r2, r30, -2968
	min.ul r[6:7], r[6:7], r[10:11]
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -2976
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	sub.sl r[4:5], r[6:7], r[4:5]
	addli r6, r30, -2944
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	load.d r[4:5], 0(r6)                    # 8-byte Folded Reload
	addli r2, zero, 13
	load.d r[6:7], 16(r30)
	sll.d r[10:11], r[4:5], r2
	addli r2, r30, -2976
	zext_int2long r[4:5], r18
	add.ul r[10:11], r[6:7], r[10:11]
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -2944
	min.sl r[4:5], r[6:7], r[4:5]
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -2960
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -2928
	add.ul r[6:7], r[10:11], r[6:7]
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	addli r2, zero, 10
	xwait r2, 0
	lock zero, r15
	addli r2, r30, -2968
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r13, zero, 1
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	dma_cfg r7, zero, zero, 2
	slli r2, r4, 2
	dma_cfg r6, r25, r2, 3
	addli r2, zero, 512
	loadli.w r7,  32(r30)
	.loc	1 73 26                         # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:73:26
	core_id r6
	.loc	1 101 67                        # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:101:67
	load.d r[4:5], 0(r17)                   # 8-byte Folded Reload
	dma_cfg r2, r3, r4, 4
	addli r2, zero, 11
	dma_run zero
	unlock r15
	xsignal r2, 0
	j .LBB0_7
.LBB0_36:                               # %._crit_edge
	.loc	1 22 0                          # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:22:0
	xsignal zero, 0
	bneq r6, zero, .LBB0_38
# %bb.37:
	.loc	1 0 0 is_stmt 0                 # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py:22:0
	addli sp, sp, 2984
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
	.long	3048                            # 0xbe8
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
.asciz	"cuv3mc45u6rya442w7z6q5sdpi7ciyn4bd4q7ajjwshkhv4ydmeu.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/uv" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
