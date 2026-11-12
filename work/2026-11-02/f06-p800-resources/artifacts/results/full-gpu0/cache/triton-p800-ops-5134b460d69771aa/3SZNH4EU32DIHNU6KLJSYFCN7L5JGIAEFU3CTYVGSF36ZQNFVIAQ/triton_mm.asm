	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/tj" "ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py"
	.loc	1 22 0                          # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2960
	addli r30, sp, 2896
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:73:26
	core_id r16
	loadli.w r15,  32(r30)
	xsignal_mode_cfg r1
	beq r16, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:0:26
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
	xsignal r3, 0
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
	storeli.w zero, -2052(r30)
	storeli.w zero, -2824(r30)
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
	ble.s r3, r1, .LBB0_40
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r3
	addli r4, r30, -2872
	sext_int2long r[5:6], r1
	loadli.w r28,  -516(r30)
	loadli.w r26,  -1540(r30)
	loadli.w r8,  -2052(r30)
	loadli.w r1,  -2824(r30)
	addli r27, zero, 5
	addli r12, zero, 4
	addli r14, zero, 1
	addli r11, zero, 255
	addli r17, zero, 128
	addli r19, zero, 7
	addli r20, zero, 6
	addli r18, zero, 3
	addli r23, zero, 64
	addli r24, zero, 32
	addli r13, zero, 127
	lui r21, 10
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	lui r3, 7
	addli r2, r30, -2896
	ori r10, r3, 4095
	lui r3, 127
	lui r9, 1048448
	ori r3, r3, 4095
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	addli r9, zero, 2
	addli r10, zero, 0
	storeli.w r3, -2836(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, r30, -2848
	.loc	1 89 25 is_stmt 1               # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:89:25
	add.s r8, r8, r5
	loadli.w r15,  32(r30)
	.loc	1 73 26                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:73:26
	addli r1, r1, 32
	addli r26, r26, 32
	addli r28, r28, 32
	core_id r16
	addli r13, zero, 127
	addli r9, zero, 2
	addli r11, zero, 255
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
.LBB0_6:                                # %.thread96
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:0:26
	loadli.w r10,  -2852(r30)               # 4-byte Folded Reload
.LBB0_7:                                # %.thread96
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, r30, -2872
	addli.d r[5:6], r[5:6], 1
	addli r10, r10, 1
	load.d r[3:4], 0(r2)                    # 8-byte Folded Reload
	setlt.sl r3, r[5:6], r[3:4]
	beq r3, zero, .LBB0_40
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	div.s r3, r5, r15
	loadli.w r4,  28(r30)
	addli r2, r30, -2848
	addli r7, zero, 8
	addli r25, r30, -2864
	addli r22, zero, 8
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	div.s r5, r3, r4
	.loc	1 53 22 is_stmt 1               # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:53:22
	addli r3, zero, 256
	div.s r6, r5, r3
	.loc	1 54 41                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:54:41
	slli r3, r6, 3
	.loc	1 54 30 is_stmt 0               # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:54:30
	sub.s r4, r7, r3
	.loc	1 54 50                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:54:50
	min.s r7, r4, r7
	.loc	1 55 40 is_stmt 1               # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:55:40
	mod.s r4, r5, r7
	.loc	1 55 34 is_stmt 0               # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:55:34
	add.s r4, r3, r4
	.loc	1 95 15 is_stmt 1               # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:95:15
	zext_int2long r[2:3], r4
	store.d r[2:3], 0(r25)                  # 8-byte Folded Spill
	addli r3, zero, 448
	.loc	1 73 26                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:73:26
	addli r25, r30, -2832
	zext_int2long r[2:3], r3
	store.d r[2:3], 0(r25)                  # 8-byte Folded Spill
	bneq r16, r12, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 11
	lui r2, 264
	xwait r3, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:0:26
	lui r2, 264
	beq r16, r14, .LBB0_30
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r16, r9, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 0
	addli r6, zero, 192
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:89:25
	add.s r4, r8, r3
	add.s r5, r1, r3
	xwait r9, 0
	xwait r27, 0
	lock zero, zero
	.loc	1 73 26                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:89:25
	ds_cfg r18, zero, 0
	.loc	1 81 20                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:81:20
	mod.s r4, r4, r13
	.loc	1 89 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:89:25
	mod.s r5, r5, r6
	ds_cfg r23, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r23, zero, 13
	.loc	1 81 20                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:81:20
	slli r4, r4, 13
	.loc	1 89 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:89:25
	slli r5, r5, 12
	.loc	1 81 20                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:81:20
	add.s r4, r4, r21
	.loc	1 89 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:89:25
	shuffle_batch r5, r4, r24, 1
	unlock zero
	xsignal r18, 0
	xsignal r12, 0
	bneq r3, r24, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:0:25
	addli r2, r30, -2848
	.loc	1 73 26 is_stmt 1               # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:73:26
	addli r26, r26, 32
	addli r28, r28, 32
	.loc	1 89 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:89:25
	add.s r1, r1, r3
	add.s r8, r8, r3
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:0:25
	slli r6, r6, 8
	slli r4, r4, 6
	storeli.w r10, -2852(r30)               # 4-byte Folded Spill
	addli r3, zero, 0
	addli r13, zero, 0
	sub.s r5, r5, r6
	mod.s r6, r10, r27
	storeli.w r4, -2884(r30)                # 4-byte Folded Spill
	div.s r5, r5, r7
	slli r21, r6, 13
	addli r6, r30, -2880
	zext_int2long r[9:10], r5
	slli r4, r5, 5
	sll.d r[9:10], r[9:10], r27
	.loc	1 73 26 is_stmt 1               # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:73:26
	storeli.w r4, -2888(r30)                # 4-byte Folded Spill
	load.d r[4:5], 8(r30)
	sll.d r[9:10], r[9:10], r14
	add.ul r[4:5], r[4:5], r[9:10]
	store.d r[9:10], 0(r6)                  # 8-byte Folded Spill
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:89:25
	addli r9, zero, 9
	xwait r20, 0
	xwait r9, 0
	lock zero, zero
	ds_cfg r18, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r6, r7, r24, 2
	unlock zero
	xsignal r19, 0
	xsignal r22, 0
	.loc	1 73 26                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:73:26
	addli r3, r3, 1
	beq r3, r24, .LBB0_28
.LBB0_17:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:89:25
	addli r13, r13, 1
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r15, r28, r13
	add.s r27, r26, r13
	add.s r25, r1, r13
	.loc	1 86 20                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:86:20
	mod.s r6, r15, r17
	.loc	1 89 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:89:25
	mod.s r7, r27, r11
	.loc	1 86 20                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:86:20
	slli r9, r6, 12
	.loc	1 89 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:89:25
	slli r6, r7, 11
	.loc	1 86 20                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:86:20
	add.s r7, r9, r2
	beq r16, r19, .LBB0_16
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:0:20
	bneq r16, r20, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:86:25
	zext_int2long r[9:10], r3
	.loc	1 86 20                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:86:20
	addli r6, zero, 16
	xwait r19, 0
	lock zero, r12
	dma_cfg r14, r14, zero, 0
	sll.d r[9:10], r[9:10], r6
	addli r6, zero, 2048
	add.ul r[9:10], r[4:5], r[9:10]
	dma_cfg zero, r10, zero, 2
	dma_cfg r7, r9, r23, 3
	dma_cfg r17, r6, r24, 4
	dma_run zero
	unlock r12
	xsignal r20, 0
	.loc	1 73 26 is_stmt 1               # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:73:26
	addli r3, r3, 1
	bneq r3, r24, .LBB0_17
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:89:25
	bneq r16, r12, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:0:0
	addli r7, zero, 192
	.loc	1 89 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:89:25
	xwait r12, 0
	xwait r22, 0
	lock zero, r14
	mm_cfg r24, r24, r23, 0
	.loc	1 0 0                           # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:0:0
	mod.s r7, r25, r7
	.loc	1 89 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:89:25
	mm_cfg r14, r14, r14, 2
	.loc	1 0 0                           # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:0:0
	slli r7, r7, 12
	.loc	1 89 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:89:25
	beq r13, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r21, r7, r6, 5
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:73:26
	addli r3, r3, 1
	bneq r3, r24, .LBB0_17
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:89:25
	mm r21, r7, r6, 5
.LBB0_26:                               # %.thread6.thread93
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r6, zero, 5
	unlock r14
	.loc	1 73 26                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:89:25
	xsignal r6, 0
	addli r6, zero, 9
	xsignal r6, 0
	.loc	1 73 26                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:73:26
	bneq r3, r24, .LBB0_17
# %bb.27:                               # %.split17.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:86:20
	addli r8, r8, 32
	j .LBB0_29
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r8, r8, 32
	.loc	1 73 26                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:73:26
	bneq r16, r12, .LBB0_35
.LBB0_29:                               # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 10
	addli r2, r30, -2848
	.loc	1 101 67                        # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:101:67
	addli r1, r25, 1
	loadli.w r25,  32(r30)
	addli r26, r27, 1
	addli r28, r15, 1
	addli r27, zero, 5
	addli r13, zero, 127
	.loc	1 73 26                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:73:26
	xsignal r3, 0
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	j .LBB0_37
.LBB0_30:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:0:26
	addli r2, r30, -2864
	addli r3, zero, 16
	storeli.w r10, -2852(r30)               # 4-byte Folded Spill
	addli r11, zero, 2
	addli r25, zero, 127
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -2896
	sll.d r[3:4], r[4:5], r3
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	and.d r[9:10], r[3:4], r[5:6]
	addli r5, zero, 0
	j .LBB0_32
.LBB0_31:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	addli r13, zero, 1024
	.loc	1 81 25 is_stmt 1               # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:81:25
	sub.sl r[6:7], r[15:16], r[6:7]
	.loc	1 81 20 is_stmt 0               # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:81:20
	sll.d r[15:16], r[15:16], r14
	xwait r18, 0
	lock zero, r12
	.loc	1 81 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:81:25
	addli r2, r30, -2832
	.loc	1 81 20                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:81:20
	dma_cfg r14, r14, zero, 0
	zext_int2long r[21:22], r13
	.loc	1 0 0                           # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:0:0
	add.s r13, r8, r5
	.loc	1 73 26 is_stmt 1               # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:73:26
	addli r5, r5, 1
	.loc	1 81 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:81:25
	div.sl r[6:7], r[6:7], r[21:22]
	.loc	1 81 20 is_stmt 0               # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:81:20
	load.d r[21:22], 0(r30)
	.loc	1 81 0                          # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:81:0
	mod.s r13, r13, r25
	.loc	1 81 20                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:81:20
	add.ul r[15:16], r[21:22], r[15:16]
	dma_cfg zero, r16, zero, 2
	.loc	1 81 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:81:25
	load.d r[21:22], 0(r2)                  # 8-byte Folded Reload
	.loc	1 81 0                          # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:81:0
	slli r13, r13, 13
	.loc	1 81 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:81:25
	min.sl r[21:22], r[6:7], r[21:22]
	sub.sl r[6:7], r[21:22], r[6:7]
	lui r21, 10
	.loc	1 81 0                          # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:81:0
	add.s r13, r13, r21
	.loc	1 81 20                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:81:20
	addli r6, r6, 64
	addli r7, zero, 2048
	dma_cfg r13, r15, r23, 3
	dma_cfg r17, r7, r6, 4
	dma_run zero
	unlock r12
	xsignal r11, 0
	.loc	1 73 26 is_stmt 1               # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:73:26
	beq r5, r24, .LBB0_5
.LBB0_32:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:86:25
	zext_int2long r[6:7], r5
	sll.d r[6:7], r[6:7], r27
	.loc	1 81 25                         # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:81:25
	add.ul r[15:16], r[6:7], r[3:4]
	loadli.w r6,  -2836(r30)                # 4-byte Folded Reload
	zext_int2long r[6:7], r6
	setlt.ul r13, r[6:7], r[15:16]
	addli.d r[6:7], r[9:10], 0
	bneq r13, zero, .LBB0_31
# %bb.33:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	.loc	1 0 25 is_stmt 0                # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:0:25
	zext_int2long r[6:7], zero
	j .LBB0_31
.LBB0_34:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:86:20
	addli r8, r8, 32
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:0:20
	addli r2, r30, -2848
	.loc	1 101 67 is_stmt 1              # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:101:67
	addli r1, r25, 1
	addli r26, r27, 1
	addli r28, r15, 1
	addli r13, zero, 127
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	beq r16, zero, .LBB0_39
# %bb.36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:0:67
	loadli.w r25,  32(r30)
	addli r27, zero, 5
.LBB0_37:                               # %.thread96
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r15, r25, 0
.LBB0_38:                               # %.thread96
                                        #   in Loop: Header=BB0_8 Depth=1
	lui r21, 10
	addli r9, zero, 2
	j .LBB0_6
.LBB0_39:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:101:67
	loadli.w r2,  -2888(r30)                # 4-byte Folded Reload
	addli r5, zero, 992
	addli r7, zero, 17
	addli r27, zero, 5
	loadli.w r25,  32(r30)
	zext_int2long r[5:6], r5
	zext_int2long r[3:4], r2
	loadli.w r2,  -2884(r30)                # 4-byte Folded Reload
	min.ul r[5:6], r[3:4], r[5:6]
	sext_int2long r[9:10], r2
	addli r2, r30, -2832
	addli.d r[5:6], r[5:6], 32
	load.d r[15:16], 0(r2)                  # 8-byte Folded Reload
	max.ul r[5:6], r[5:6], r[3:4]
	sub.sl r[3:4], r[5:6], r[3:4]
	zext_int2long r[5:6], r24
	min.sl r[15:16], r[9:10], r[15:16]
	min.ul r[2:3], r[3:4], r[5:6]
	addli r4, r30, -2832
	addli.d r[15:16], r[15:16], 64
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r4, r30, -2864
	max.sl r[15:16], r[15:16], r[9:10]
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	sub.sl r[5:6], r[15:16], r[9:10]
	zext_int2long r[15:16], r23
	min.sl r[5:6], r[5:6], r[15:16]
	.loc	1 73 26 is_stmt 1               # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:73:26
	core_id r16
	addli r15, r25, 0
	.loc	1 101 67                        # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:101:67
	sll.d r[9:10], r[2:3], r7
	load.d r[3:4], 16(r30)
	addli r7, zero, 10
	add.ul r[9:10], r[3:4], r[9:10]
	addli r4, r30, -2880
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	xwait r7, 0
	lock zero, r27
	addli r4, r30, -2832
	dma_cfg r14, zero, zero, 0
	dma_cfg zero, r14, zero, 1
	add.ul r[9:10], r[9:10], r[2:3]
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	dma_cfg r10, zero, zero, 2
	slli r3, r2, 2
	addli r2, r30, -2848
	dma_cfg r9, r21, r3, 3
	addli r3, zero, 2048
	dma_cfg r3, r17, r5, 4
	addli r3, zero, 11
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	dma_run zero
	unlock r27
	xsignal r3, 0
	j .LBB0_38
.LBB0_40:                               # %._crit_edge
	.loc	1 22 0                          # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:22:0
	xsignal zero, 0
	bneq r16, zero, .LBB0_42
# %bb.41:
	.loc	1 0 0 is_stmt 0                 # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:22:0
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
.LBB0_42:
	.loc	1 22 0 epilogue_begin           # ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py:22:0
	addli sp, sp, 2896
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
	.long	2960                            # 0xb90
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
.asciz	"ctjvlk4ctqcni2asbpqxdvhsxcdjgrd24n6xwox3w5s4clyoe3o5.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/tj" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
