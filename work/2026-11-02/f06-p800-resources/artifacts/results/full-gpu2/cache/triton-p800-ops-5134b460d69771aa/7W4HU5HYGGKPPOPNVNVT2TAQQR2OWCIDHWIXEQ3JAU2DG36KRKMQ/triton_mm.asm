	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/j2" "cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py"
	.loc	1 22 0                          # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2992
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:73:26
	core_id r7
	addli r30, sp, 2928
	xsignal_mode_cfg r1
	beq r7, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:0:26
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
	min.s r2, r2, r3
	ble.s r2, r1, .LBB0_33
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	addli r4, r30, -2920
	addli r5, r30, -2928
	loadli.w r8,  -516(r30)
	loadli.w r9,  -1540(r30)
	loadli.w r20,  -2056(r30)
	loadli.w r12,  -2828(r30)
	addli r11, zero, 32
	addli r23, zero, 6
	addli r14, zero, 2
	addli r15, zero, 4
	addli r17, zero, 1
	addli r21, zero, 192
	addli r22, zero, 128
	lui r19, 8
	addli r24, zero, 5
	addli r25, zero, 3
	addli r26, zero, 64
	addli r10, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sext_int2long r[3:4], r1
	lui r1, 15
	ori r2, r1, 4095
	lui r1, 1047552
	store.d r[1:2], 0(r5)                   # 8-byte Folded Spill
	lui r1, 1023
	ori r1, r1, 4095
	storeli.w r1, -2852(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:73:26
	addli r1, zero, 10
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0                           # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -2880
	addli r5, r30, -2920
	loadli.w r10,  -2884(r30)               # 4-byte Folded Reload
	addli r12, r16, 1
	addli r20, r18, 1
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	load.d r[1:2], 0(r5)                    # 8-byte Folded Reload
	addli.d r[3:4], r[3:4], 1
	setlt.sl r1, r[3:4], r[1:2]
	beq r1, zero, .LBB0_33
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	.loc	1 73 26                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:73:26
	bneq r7, r15, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26                          # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:0:26
	loadli.w r1,  32(r30)
	addli r2, r30, -2880
	addli r6, zero, 8
	addli r28, zero, 0
	addli r27, zero, 0
	store.d r[3:4], 0(r2)                   # 8-byte Folded Spill
	loadli.w r2,  28(r30)
	div.s r1, r3, r1
	mod.s r4, r10, r14
	addli r10, r10, 1
	storeli.w r10, -2884(r30)               # 4-byte Folded Spill
	addli r10, r30, -2896
	div.s r1, r1, r2
	addli r2, zero, 256
	slli r4, r4, 14
	storeli.w r4, -2868(r30)                # 4-byte Folded Spill
	div.s r2, r1, r2
	slli r3, r2, 3
	slli r2, r2, 8
	sub.s r5, r11, r3
	sub.s r2, r1, r2
	min.s r5, r5, r6
	mod.s r1, r1, r5
	div.s r2, r2, r5
	add.s r1, r3, r1
	slli r3, r2, 6
	storeli.w r3, -2912(r30)                # 4-byte Folded Spill
	zext_int2long r[2:3], r2
	slli r4, r1, 6
	zext_int2long r[5:6], r1
	addli r1, zero, 17
	sll.d r[2:3], r[2:3], r23
	storeli.w r4, -2908(r30)                # 4-byte Folded Spill
	.loc	1 73 26                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:73:26
	sll.d r[3:4], r[2:3], r17
	addli r2, r30, -2904
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r1
	load.d r[1:2], 8(r30)
	store.d r[3:4], 0(r10)                  # 8-byte Folded Spill
	add.ul r[1:2], r[1:2], r[3:4]
	addli r3, r30, -2864
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r3, r30, -2928
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	addli r3, r30, -2840
	store.d r[5:6], 0(r3)                   # 8-byte Folded Spill
	addli r3, r30, -2848
	and.d r[1:2], r[5:6], r[1:2]
	lui r5, 264
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 26                          # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:0:26
	addli r3, zero, 2048
	.loc	1 81 25 is_stmt 1               # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:81:25
	sub.sl r[6:7], r[1:2], r[6:7]
	.loc	1 81 20 is_stmt 0               # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:81:20
	sll.d r[1:2], r[1:2], r17
	xwait r25, 0
	lock zero, r15
	dma_cfg r17, r17, zero, 0
	zext_int2long r[23:24], r3
	addli r3, zero, 1984
	.loc	1 81 25                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:81:25
	div.sl r[6:7], r[6:7], r[23:24]
	zext_int2long r[23:24], r3
	.loc	1 81 20                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:81:20
	load.d r[3:4], 0(r30)
	add.ul r[1:2], r[3:4], r[1:2]
	dma_cfg zero, r2, zero, 2
	dma_cfg r10, r1, r26, 3
	addli r1, zero, 4096
	.loc	1 81 25                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:81:25
	min.sl r[23:24], r[6:7], r[23:24]
	sub.sl r[6:7], r[23:24], r[6:7]
	addli r23, zero, 6
	addli r24, zero, 5
	.loc	1 81 20                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:81:20
	addli r3, r6, 64
	.loc	1 73 26 is_stmt 1               # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:73:26
	core_id r7
	.loc	1 81 20                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:81:20
	dma_cfg r22, r1, r3, 4
	dma_run zero
	unlock r15
	xsignal r14, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:89:25
	addli r9, r9, 1
	.loc	1 86 20                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:86:20
	addli r8, r8, 1
.LBB0_13:                               # %.thread6
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:73:26
	addli r28, r28, 1
	beq r28, r26, .LBB0_30
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:89:25
	addli r27, r27, 1
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:86:25
	add.s r18, r20, r27
	add.s r16, r12, r27
	.loc	1 81 20                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:81:20
	mod.s r1, r18, r22
	.loc	1 89 25                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:89:25
	mod.s r2, r16, r21
	.loc	1 81 20                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:81:20
	slli r1, r1, 13
	.loc	1 89 25                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:89:25
	slli r13, r2, 12
	.loc	1 81 20                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:81:20
	add.s r10, r1, r19
	beq r7, r14, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 0 is_stmt 0                 # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:0:0
	zext_int2long r[2:3], r28
	.loc	1 81 20                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:81:20
	bneq r7, r17, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 81 25                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:81:25
	addli r6, r30, -2840
	.loc	1 86 25 is_stmt 1               # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:86:25
	sll.d r[1:2], r[2:3], r24
	.loc	1 81 25                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:81:25
	load.d r[3:4], 0(r6)                    # 8-byte Folded Reload
	add.ul r[1:2], r[1:2], r[3:4]
	loadli.w r3,  -2852(r30)                # 4-byte Folded Reload
	addli r4, r30, -2848
	zext_int2long r[6:7], r3
	setlt.ul r3, r[6:7], r[1:2]
	load.d r[6:7], 0(r4)                    # 8-byte Folded Reload
	bneq r3, zero, .LBB0_11
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 25 is_stmt 0                # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:0:25
	zext_int2long r[6:7], zero
	j .LBB0_11
.LBB0_19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25 is_stmt 1               # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:89:25
	xwait r14, 0
	xwait r24, 0
	lock zero, zero
	ds_cfg r25, zero, 0
	ds_cfg r26, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r26, zero, 13
	shuffle_batch r13, r10, r11, 1
	unlock zero
	xsignal r25, 0
	xsignal r15, 0
	j .LBB0_12
.LBB0_20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 86 20                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:86:20
	mod.s r1, r8, r22
	.loc	1 89 25                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:89:25
	addli r6, zero, 255
	.loc	1 86 20                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:86:20
	addli r8, r8, 1
	addli r4, zero, 7
	.loc	1 89 25                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:89:25
	mod.s r6, r9, r6
	addli r9, r9, 1
	.loc	1 86 20                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:86:20
	slli r1, r1, 12
	.loc	1 89 25                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:89:25
	slli r10, r6, 12
	.loc	1 86 20                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:86:20
	add.s r1, r1, r5
	beq r7, r4, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_15 Depth=2
	bneq r7, r23, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_15 Depth=2
	addli r6, zero, 17
	addli r4, zero, 7
	sll.d r[2:3], r[2:3], r6
	addli r6, r30, -2864
	xwait r4, 0
	load.d r[4:5], 0(r6)                    # 8-byte Folded Reload
	lock zero, r15
	dma_cfg r17, r17, zero, 0
	add.ul r[2:3], r[4:5], r[2:3]
	lui r5, 264
	dma_cfg zero, r3, zero, 2
	dma_cfg r1, r2, r22, 3
	addli r1, zero, 4096
	dma_cfg r22, r1, r11, 4
	dma_run zero
	unlock r15
	xsignal r23, 0
	.loc	1 89 25                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:89:25
	j .LBB0_13
.LBB0_23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 9
	xwait r23, 0
	xwait r2, 0
	lock zero, zero
	ds_cfg r25, zero, 0
	ds_cfg r26, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r26, zero, 13
	shuffle_coa r10, r1, r11, 2
	addli r1, zero, 7
	unlock zero
	xsignal r1, 0
	addli r1, zero, 8
	xsignal r1, 0
	j .LBB0_13
.LBB0_24:                               #   in Loop: Header=BB0_15 Depth=2
	bneq r7, r15, .LBB0_27
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	addli r1, zero, 8
	xwait r15, 0
	xwait r1, 0
	lock zero, r17
	mm_cfg r26, r11, r26, 0
	mm_cfg r17, r14, r17, 2
	beq r27, zero, .LBB0_28
# %bb.26:                               # %.preheader8
                                        #   in Loop: Header=BB0_15 Depth=2
	loadli.w r1,  -2868(r30)                # 4-byte Folded Reload
	mm_acc r1, r13, r10, 5
	j .LBB0_29
.LBB0_27:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:73:26
	addli r28, r28, 1
	bneq r28, r26, .LBB0_14
	j .LBB0_31
.LBB0_28:                               # %.preheader
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:89:25
	loadli.w r1,  -2868(r30)                # 4-byte Folded Reload
	mm r1, r13, r10, 5
.LBB0_29:                               # %.thread6.thread41
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:73:26
	addli r28, r28, 1
	.loc	1 89 25                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:89:25
	addli r1, zero, 9
	unlock r17
	xsignal r24, 0
	xsignal r1, 0
	bneq r28, r26, .LBB0_14
	j .LBB0_5
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:73:26
	beq r7, r15, .LBB0_5
.LBB0_31:                               # %.thread40
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:101:67
	bneq r7, zero, .LBB0_7
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -2912(r30)                # 4-byte Folded Reload
	loadli.w r10,  -2908(r30)               # 4-byte Folded Reload
	addli r3, zero, 1984
	addli r20, r30, -2904
	zext_int2long r[3:4], r3
	load.d r[23:24], 0(r20)                 # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	sext_int2long r[12:13], r10
	addli r10, zero, 18
	min.ul r[5:6], r[1:2], r[3:4]
	min.sl r[3:4], r[12:13], r[3:4]
	sll.d r[23:24], r[23:24], r10
	addli r10, r30, -2896
	addli.d r[3:4], r[3:4], 64
	addli.d r[5:6], r[5:6], 64
	max.sl r[3:4], r[3:4], r[12:13]
	max.ul r[5:6], r[5:6], r[1:2]
	sub.sl r[3:4], r[3:4], r[12:13]
	load.d r[12:13], 16(r30)
	sub.sl r[1:2], r[5:6], r[1:2]
	zext_int2long r[5:6], r26
	min.ul r[1:2], r[1:2], r[5:6]
	min.sl r[3:4], r[3:4], r[5:6]
	load.d r[5:6], 0(r10)                   # 8-byte Folded Reload
	addli r10, zero, 10
	add.ul r[12:13], r[12:13], r[23:24]
	addli r24, zero, 5
	addli r23, zero, 6
	xwait r10, 0
	slli r1, r1, 2
	lock zero, r24
	add.ul r[5:6], r[12:13], r[5:6]
	dma_cfg r17, zero, zero, 0
	dma_cfg zero, r17, zero, 1
	dma_cfg r6, zero, zero, 2
	loadli.w r2,  -2868(r30)                # 4-byte Folded Reload
	dma_cfg r5, r2, r1, 3
	addli r1, zero, 256
	addli r2, zero, 4096
	dma_cfg r2, r1, r3, 4
	addli r1, zero, 11
	dma_run zero
	unlock r24
	j .LBB0_6
.LBB0_33:                               # %._crit_edge
	.loc	1 22 0                          # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:22:0
	xsignal zero, 0
	bneq r7, zero, .LBB0_35
# %bb.34:
	.loc	1 0 0 is_stmt 0                 # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py:22:0
	addli sp, sp, 2928
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
	.long	2992                            # 0xbb0
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
.asciz	"cj2c2gl4gwafwjkkjbm6ktq6lxxstq53vfpwddpzbnajwpll6w4a.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/j2" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
