	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/yv" "cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py"
	.loc	1 22 0                          # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4200
	addli r30, sp, 4136
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:73:26
	core_id r28
	loadli.w r9,  32(r30)
	xsignal_mode_cfg r1
	beq r28, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	ble.s r2, r1, .LBB0_37
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	addli r4, r30, -4112
	sext_int2long r[6:7], r1
	loadli.w r1,  -1024(r30)
	loadli.w r26,  -2048(r30)
	loadli.w r10,  -3072(r30)
	loadli.w r5,  -4096(r30)
	addli r11, zero, 64
	addli r12, zero, 1
	addli r14, zero, 5
	addli r15, zero, 4
	addli r17, zero, 255
	lui r18, 256
	addli r19, zero, 7
	addli r20, zero, 6
	addli r22, zero, 3
	addli r23, zero, 32
	addli r24, zero, 16
	addli r21, zero, 2047
	addli r16, zero, 2
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r2, zero, 128
	j .LBB0_7
.LBB0_5:                                # %.split17.us
                                        #   in Loop: Header=BB0_7 Depth=1
	loadli.w r9,  32(r30)
	.loc	1 73 26                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:73:26
	addli r5, r5, 4
	addli r26, r26, 4
	addli r1, r1, 4
	.loc	1 89 25 is_stmt 1               # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:89:25
	add.s r10, r10, r3
	.loc	1 73 26                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:73:26
	core_id r28
	addli r14, zero, 5
.LBB0_6:                                # %.thread93
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:0:26
	addli r3, r30, -4104
	addli r8, r30, -4112
	load.d r[6:7], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r8)                    # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	setlt.sl r3, r[6:7], r[3:4]
	beq r3, zero, .LBB0_37
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_17 Depth 2
	addli r3, r30, -4104
	loadli.w r4,  28(r30)
	.loc	1 54 50 is_stmt 1               # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:54:50
	addli r8, zero, 8
	store.d r[6:7], 0(r3)                   # 8-byte Folded Spill
	div.s r3, r6, r9
	div.s r3, r3, r4
	.loc	1 53 22                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:53:22
	div.s r6, r3, r11
	.loc	1 54 41                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:54:41
	slli r4, r6, 3
	.loc	1 54 30 is_stmt 0               # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:54:30
	sub.s r7, r12, r4
	.loc	1 54 50                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:54:50
	min.s r13, r7, r8
	.loc	1 55 40 is_stmt 1               # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:55:40
	mod.s r7, r3, r13
	.loc	1 55 34 is_stmt 0               # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:55:34
	add.s r4, r4, r7
	.loc	1 95 15 is_stmt 1               # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:95:15
	zext_int2long r[7:8], r4
	.loc	1 73 26                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:73:26
	bneq r28, r15, .LBB0_9
# %bb.8:                                # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:0:26
	addli r9, r30, -4120
	store.d r[7:8], 0(r9)                   # 8-byte Folded Spill
	.loc	1 73 26                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:73:26
	addli r7, zero, 11
	xwait r7, 0
	j .LBB0_14
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26                          # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:0:26
	beq r28, r12, .LBB0_29
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	addli r25, r30, -4120
	store.d r[7:8], 0(r25)                  # 8-byte Folded Spill
	bneq r28, r16, .LBB0_14
# %bb.11:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 0
.LBB0_12:                               # %.thread.us21
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:89:25
	add.s r4, r10, r3
	add.s r6, r5, r3
	xwait r16, 0
	xwait r14, 0
	lock zero, zero
	.loc	1 73 26                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:89:25
	ds_cfg r22, zero, 0
	.loc	1 81 20                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:81:20
	mod.s r4, r4, r17
	.loc	1 89 25                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:89:25
	mod.s r6, r6, r17
	ds_cfg r11, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r23, zero, 13
	.loc	1 81 20                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:81:20
	slli r4, r4, 12
	.loc	1 89 25                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:89:25
	slli r6, r6, 11
	.loc	1 81 20                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:81:20
	addli r4, r4, 4096
	.loc	1 89 25                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:89:25
	shuffle_batch r6, r4, r24, 1
	unlock zero
	xsignal r22, 0
	xsignal r15, 0
	bneq r3, r15, .LBB0_12
# %bb.13:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:73:26
	addli r26, r26, 4
	addli r1, r1, 4
	.loc	1 89 25                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:89:25
	add.s r5, r5, r3
	add.s r10, r10, r3
	j .LBB0_6
.LBB0_14:                               # %.split.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:0:0
	slli r6, r6, 6
	slli r4, r4, 5
	addli r16, zero, 0
	addli r9, zero, 5
	addli r8, r30, -4128
	addli r27, zero, 0
	sub.s r3, r3, r6
	.loc	1 73 26 is_stmt 1               # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:73:26
	storeli.w r4, -4132(r30)                # 4-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:0:0
	div.s r3, r3, r13
	zext_int2long r[6:7], r3
	slli r3, r3, 5
	sll.d r[6:7], r[6:7], r14
	.loc	1 73 26                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:73:26
	storeli.w r3, -4136(r30)                # 4-byte Folded Spill
	load.d r[3:4], 8(r30)
	sll.d r[6:7], r[6:7], r12
	add.ul r[13:14], r[3:4], r[6:7]
	store.d r[6:7], 0(r8)                   # 8-byte Folded Spill
	j .LBB0_17
.LBB0_15:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25 is_stmt 1               # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:89:25
	addli r7, zero, 9
	xwait r20, 0
	xwait r7, 0
	lock zero, zero
	addli r7, zero, 8
	ds_cfg r22, zero, 0
	ds_cfg r11, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r21, r25, r24, 2
	unlock zero
	xsignal r19, 0
	xsignal r7, 0
	.loc	1 73 26                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:73:26
	addli r16, r16, 1
	beq r16, r15, .LBB0_27
.LBB0_16:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:89:25
	addli r27, r27, 1
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r3, r1, r27
	add.s r6, r26, r27
	add.s r4, r5, r27
	.loc	1 86 20                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:86:20
	mod.s r7, r3, r17
	.loc	1 89 25                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:89:25
	mod.s r8, r6, r17
	.loc	1 86 20                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:86:20
	slli r7, r7, 11
	.loc	1 89 25                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:89:25
	slli r21, r8, 11
	.loc	1 86 20                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:86:20
	add.s r25, r7, r18
	beq r28, r19, .LBB0_15
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:0:20
	bneq r28, r20, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 25                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:86:25
	zext_int2long r[7:8], r16
	.loc	1 86 20                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:86:20
	addli r21, zero, 13
	xwait r19, 0
	lock zero, r15
	dma_cfg r12, r12, zero, 0
	sll.d r[7:8], r[7:8], r21
	add.ul r[7:8], r[13:14], r[7:8]
	dma_cfg zero, r8, zero, 2
	dma_cfg r25, r7, r11, 3
	addli r7, zero, 512
	dma_cfg r2, r7, r24, 4
	dma_run zero
	unlock r15
	xsignal r20, 0
	.loc	1 73 26 is_stmt 1               # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:73:26
	addli r16, r16, 1
	bneq r16, r15, .LBB0_16
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:89:25
	bneq r28, r15, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 0 is_stmt 0                 # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:0:0
	mod.s r7, r4, r17
	.loc	1 89 25                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:89:25
	addli r8, zero, 8
	xwait r15, 0
	xwait r8, 0
	lock zero, r12
	mm_cfg r23, r24, r23, 0
	mm_cfg r12, r12, r12, 2
	.loc	1 0 0                           # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:0:0
	slli r7, r7, 11
	.loc	1 89 25                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:89:25
	beq r27, zero, .LBB0_24
# %bb.22:                               # %.preheader8
                                        #   in Loop: Header=BB0_17 Depth=2
	mm_acc zero, r7, r21, 5
	j .LBB0_25
.LBB0_23:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:73:26
	addli r16, r16, 1
	bneq r16, r15, .LBB0_16
	j .LBB0_33
.LBB0_24:                               # %.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:89:25
	mm zero, r7, r21, 5
.LBB0_25:                               # %.thread6.thread90
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:73:26
	addli r16, r16, 1
	.loc	1 89 25                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:89:25
	addli r7, zero, 9
	unlock r12
	xsignal r9, 0
	xsignal r7, 0
	.loc	1 73 26                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:73:26
	bneq r16, r15, .LBB0_16
# %bb.26:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:86:20
	addli r10, r10, 4
	j .LBB0_28
.LBB0_27:                               # %.split17
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r10, r10, 4
	.loc	1 73 26                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:73:26
	bneq r28, r15, .LBB0_34
.LBB0_28:                               # %.thread7
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:0:26
	loadli.w r9,  32(r30)
	.loc	1 101 67 is_stmt 1              # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:101:67
	addli r1, r3, 1
	.loc	1 73 26                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:73:26
	addli r3, zero, 10
	.loc	1 101 67                        # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:101:67
	addli r5, r4, 1
	addli r26, r6, 1
	addli r14, zero, 5
	addli r21, zero, 2047
	addli r16, zero, 2
	j .LBB0_36
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 67 is_stmt 0                # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:0:67
	addli r3, zero, 11
	sll.d r[13:14], r[7:8], r3
	addli r3, zero, 0
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	add.s r4, r10, r3
	.loc	1 81 20 is_stmt 1               # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:81:20
	sll.d r[8:9], r[27:28], r12
	load.d r[27:28], 0(r30)
	.loc	1 81 25 is_stmt 0               # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:81:25
	srl.d r[6:7], r[6:7], r20
	.loc	1 81 20                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:81:20
	xwait r22, 0
	lock zero, r15
	.loc	1 73 26 is_stmt 1               # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:73:26
	addli r3, r3, 1
	.loc	1 81 20                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:81:20
	dma_cfg r12, r12, zero, 0
	.loc	1 81 0 is_stmt 0                # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:81:0
	mod.s r4, r4, r17
	.loc	1 81 20                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:81:20
	sub.s r6, r23, r6
	add.ul r[7:8], r[27:28], r[8:9]
	dma_cfg zero, r8, zero, 2
	.loc	1 81 0                          # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:81:0
	slli r4, r4, 12
	addli r4, r4, 4096
	.loc	1 81 20                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:81:20
	dma_cfg r4, r7, r23, 3
	dma_cfg r2, r2, r6, 4
	dma_run zero
	unlock r15
	xsignal r16, 0
	.loc	1 73 26 is_stmt 1               # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:73:26
	beq r3, r15, .LBB0_5
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:86:25
	zext_int2long r[6:7], r3
	zext_int2long r[8:9], r21
	sll.d r[6:7], r[6:7], r15
	.loc	1 81 25                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:81:25
	add.ul r[27:28], r[6:7], r[13:14]
	setlt.ul r4, r[8:9], r[27:28]
	bneq r4, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:0:25
	addli.d r[6:7], r[27:28], 0
	j .LBB0_30
.LBB0_33:                               # %.split17.thread89
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20 is_stmt 1               # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:86:20
	addli r10, r10, 4
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 20 is_stmt 0                # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:0:20
	loadli.w r9,  32(r30)
	.loc	1 101 67 is_stmt 1              # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:101:67
	addli r5, r4, 1
	addli r26, r6, 1
	addli r1, r3, 1
	addli r14, zero, 5
	addli r21, zero, 2047
	addli r16, zero, 2
	bneq r28, zero, .LBB0_6
# %bb.35:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r3,  -4136(r30)                # 4-byte Folded Reload
	loadli.w r8,  -4132(r30)                # 4-byte Folded Reload
	addli r6, zero, 224
	zext_int2long r[13:14], zero
	addli r25, r30, -4120
	addli r16, zero, 14
	zext_int2long r[6:7], r6
	load.d r[27:28], 0(r25)                 # 8-byte Folded Reload
	addli r25, r30, -4128
	zext_int2long r[3:4], r3
	sext_int2long r[8:9], r8
	min.ul r[6:7], r[3:4], r[6:7]
	min.sl r[13:14], r[8:9], r[13:14]
	sll.d r[27:28], r[27:28], r16
	addli r16, zero, 2
	addli.d r[6:7], r[6:7], 32
	addli.d r[13:14], r[13:14], 32
	max.ul r[6:7], r[6:7], r[3:4]
	max.sl r[13:14], r[13:14], r[8:9]
	sub.sl r[3:4], r[6:7], r[3:4]
	zext_int2long r[6:7], r23
	sub.sl r[8:9], r[13:14], r[8:9]
	load.d r[13:14], 16(r30)
	min.ul r[3:4], r[3:4], r[6:7]
	min.sl r[6:7], r[8:9], r[6:7]
	load.d r[8:9], 0(r25)                   # 8-byte Folded Reload
	add.ul r[13:14], r[13:14], r[27:28]
	.loc	1 73 26                         # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:73:26
	core_id r28
	.loc	1 101 67                        # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:101:67
	slli r3, r3, 2
	add.ul r[8:9], r[13:14], r[8:9]
	addli r13, zero, 10
	addli r14, zero, 5
	xwait r13, 0
	lock zero, r14
	dma_cfg r12, zero, zero, 0
	dma_cfg zero, r12, zero, 1
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, zero, r3, 3
	addli r3, zero, 512
	loadli.w r9,  32(r30)
	dma_cfg r3, r2, r6, 4
	addli r3, zero, 11
	dma_run zero
	unlock r14
.LBB0_36:                               # %.thread93
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:0:0
	xsignal r3, 0
	j .LBB0_6
.LBB0_37:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:22:0
	xsignal zero, 0
	bneq r28, zero, .LBB0_39
# %bb.38:
	.loc	1 0 0 is_stmt 0                 # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py:22:0
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
.asciz	"cyvzunfqyb25os6d7kyj6ruaqaecop5c57yu46j4k5xba3xpuro6.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/yv" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
