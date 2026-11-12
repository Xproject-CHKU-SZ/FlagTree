	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/xv" "cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py"
	.loc	1 22 0                          # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4216
	addli r30, sp, 4152
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:73:26
	core_id r20
	loadli.w r19,  32(r30)
	xsignal_mode_cfg r1
	beq r20, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:0:26
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
	addli r4, r30, -4120
	sext_int2long r[12:13], r1
	loadli.w r25,  -2048(r30)
	loadli.w r8,  -3072(r30)
	loadli.w r28,  -4096(r30)
	addli r10, zero, 4
	addli r11, zero, 8
	addli r14, zero, 1
	addli r15, zero, 255
	addli r17, zero, 7
	addli r18, zero, 6
	addli r21, zero, 3
	addli r9, zero, 64
	addli r22, zero, 32
	addli r23, zero, 16
	addli r16, zero, 128
	addli r24, zero, 2
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r2, zero, 2047
	loadli.w r3,  -1024(r30)
	addli r4, r30, -4152
	lui r1, 1048572
	store.d r[1:2], 0(r4)                   # 8-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split17.thread92
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:86:20
	addli r8, r8, 8
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:73:26
	addli r1, zero, 10
	.loc	1 101 67                        # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:101:67
	addli r28, r19, 1
	addli r25, r24, 1
	addli r3, r9, 1
	.loc	1 73 26                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:73:26
	xsignal r1, 0
	addli r1, r30, -4112
	load.d r[12:13], 0(r1)                  # 8-byte Folded Reload
.LBB0_7:                                # %.thread93
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:0:26
	loadli.w r24,  32(r30)
	addli r9, zero, 64
	addli r19, r24, 0
	addli r24, zero, 2
.LBB0_8:                                # %.thread93
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r4, r30, -4120
	addli.d r[12:13], r[12:13], 1
	load.d r[1:2], 0(r4)                    # 8-byte Folded Reload
	setlt.sl r1, r[12:13], r[1:2]
	beq r1, zero, .LBB0_37
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	div.s r1, r12, r19
	loadli.w r2,  28(r30)
	div.s r1, r1, r2
	.loc	1 53 22 is_stmt 1               # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:53:22
	addli r2, zero, 256
	div.s r6, r1, r2
	.loc	1 54 41                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:54:41
	slli r2, r6, 3
	.loc	1 54 30 is_stmt 0               # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:54:30
	sub.s r4, r10, r2
	.loc	1 54 50                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:54:50
	min.s r7, r4, r11
	.loc	1 55 40 is_stmt 1               # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:55:40
	mod.s r4, r1, r7
	.loc	1 55 34 is_stmt 0               # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:55:34
	add.s r2, r2, r4
	addli r4, zero, 96
	.loc	1 73 26 is_stmt 1               # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:73:26
	addli zero, r30, -4104
	.loc	1 95 15                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:95:15
	zext_int2long r[26:27], r2
	zext_int2long r[4:5], r4
	.loc	1 73 26                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:73:26
	store.d r[4:5], 0(zero)                 # 8-byte Folded Spill
	xor zero, zero, zero
	bneq r20, r10, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r4, zero, 11
	xwait r4, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:0:26
	beq r20, r14, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r20, r24, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, zero, 0
	addli r5, zero, 5
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:89:25
	add.s r2, r8, r1
	add.s r4, r28, r1
	xwait r24, 0
	xwait r5, 0
	lock zero, zero
	.loc	1 73 26                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:89:25
	ds_cfg r21, zero, 0
	.loc	1 81 20                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:81:20
	mod.s r2, r2, r15
	.loc	1 89 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:89:25
	mod.s r4, r4, r15
	ds_cfg r9, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r22, zero, 13
	.loc	1 81 20                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:81:20
	slli r2, r2, 12
	.loc	1 89 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:89:25
	slli r4, r4, 11
	.loc	1 81 20                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:81:20
	addli r2, r2, 4096
	.loc	1 89 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:89:25
	shuffle_batch r4, r2, r23, 1
	unlock zero
	xsignal r21, 0
	xsignal r10, 0
	bneq r1, r11, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:73:26
	addli r25, r25, 8
	addli r3, r3, 8
	.loc	1 89 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:89:25
	add.s r28, r28, r1
	add.s r8, r8, r1
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 0 is_stmt 0                 # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:0:0
	slli r6, r6, 8
	addli r4, r30, -4128
	slli r2, r2, 5
	sub.s r1, r1, r6
	store.d r[26:27], 0(r4)                 # 8-byte Folded Spill
	addli r4, r30, -4112
	.loc	1 73 26 is_stmt 1               # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:73:26
	storeli.w r2, -4140(r30)                # 4-byte Folded Spill
	addli r27, zero, 64
	addli r26, zero, 0
	.loc	1 0 0 is_stmt 0                 # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:0:0
	div.s r1, r1, r7
	store.d r[12:13], 0(r4)                 # 8-byte Folded Spill
	addli r4, zero, 5
	addli r13, zero, 0
	zext_int2long r[6:7], r1
	slli r1, r1, 5
	sll.d r[6:7], r[6:7], r4
	.loc	1 73 26                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:73:26
	storeli.w r1, -4144(r30)                # 4-byte Folded Spill
	load.d r[1:2], 8(r30)
	sll.d r[4:5], r[6:7], r14
	addli r6, r30, -4136
	addli r7, zero, 5
	add.ul r[1:2], r[1:2], r[4:5]
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25 is_stmt 1               # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:89:25
	addli r4, zero, 9
	xwait r18, 0
	xwait r4, 0
	lock zero, zero
	ds_cfg r21, zero, 0
	ds_cfg r27, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r12, r6, r23, 2
	unlock zero
	xsignal r17, 0
	xsignal r11, 0
	.loc	1 73 26                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:73:26
	addli r13, r13, 1
	bneq r13, r11, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:89:25
	add.s r9, r3, r26
	add.s r24, r25, r26
	add.s r19, r28, r26
	.loc	1 86 20                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:86:20
	mod.s r4, r9, r15
	.loc	1 89 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:89:25
	mod.s r5, r24, r15
	slli r12, r5, 11
	.loc	1 86 20                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:86:20
	slli r4, r4, 11
	lui r5, 256
	add.s r6, r4, r5
	beq r20, r17, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:0:20
	bneq r20, r18, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:86:25
	zext_int2long r[4:5], r13
	.loc	1 86 20                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:86:20
	addli r12, zero, 15
	xwait r17, 0
	lock zero, r10
	dma_cfg r14, r14, zero, 0
	sll.d r[4:5], r[4:5], r12
	add.ul r[4:5], r[1:2], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r6, r4, r27, 3
	addli r4, zero, 2048
	dma_cfg r16, r4, r23, 4
	dma_run zero
	unlock r10
	xsignal r18, 0
	.loc	1 73 26 is_stmt 1               # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:73:26
	addli r13, r13, 1
	bneq r13, r11, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:89:25
	bneq r20, r10, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:0:0
	mod.s r4, r19, r15
	.loc	1 89 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:89:25
	xwait r10, 0
	xwait r11, 0
	lock zero, r14
	mm_cfg r22, r23, r22, 0
	mm_cfg r14, r14, r14, 2
	.loc	1 0 0                           # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:0:0
	slli r6, r4, 11
	.loc	1 89 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:89:25
	beq r26, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc zero, r6, r12, 5
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:73:26
	addli r13, r13, 1
	bneq r13, r11, .LBB0_27
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:89:25
	mm zero, r6, r12, 5
.LBB0_26:                               # %.thread6.thread90
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:73:26
	addli r13, r13, 1
	.loc	1 89 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:89:25
	addli r4, zero, 9
	unlock r14
	xsignal r7, 0
	xsignal r4, 0
	.loc	1 73 26                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:73:26
	beq r13, r11, .LBB0_5
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:89:25
	addli r26, r26, 1
	j .LBB0_18
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:86:20
	addli r8, r8, 8
	.loc	1 73 26                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:73:26
	beq r20, r10, .LBB0_6
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:0:26
	addli r1, r30, -4112
	addli r6, r30, -4152
	addli r9, zero, 0
	store.d r[12:13], 0(r1)                 # 8-byte Folded Spill
	addli r1, zero, 12
	load.d r[4:5], 0(r6)                    # 8-byte Folded Reload
	sll.d r[1:2], r[26:27], r1
	and.d r[26:27], r[1:2], r[4:5]
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	addli r24, zero, 128
	.loc	1 81 25 is_stmt 1               # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:81:25
	sub.sl r[12:13], r[6:7], r[12:13]
	.loc	1 81 20 is_stmt 0               # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:81:20
	load.d r[19:20], 0(r30)
	sll.d r[6:7], r[6:7], r14
	xwait r21, 0
	lock zero, r10
	addli r16, zero, 128
	dma_cfg r14, r14, zero, 0
	zext_int2long r[4:5], r24
	add.ul r[6:7], r[19:20], r[6:7]
	.loc	1 81 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:81:25
	div.sl r[4:5], r[12:13], r[4:5]
	.loc	1 0 0                           # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:0:0
	add.s r12, r8, r9
	.loc	1 81 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:81:25
	addli r13, r30, -4104
	.loc	1 73 26 is_stmt 1               # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:73:26
	addli r9, r9, 1
	.loc	1 81 20                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:81:20
	dma_cfg zero, r7, zero, 2
	.loc	1 81 0 is_stmt 0                # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:81:0
	mod.s r12, r12, r15
	.loc	1 81 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:81:25
	load.d r[19:20], 0(r13)                 # 8-byte Folded Reload
	.loc	1 81 0                          # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:81:0
	slli r12, r12, 12
	addli r12, r12, 4096
	.loc	1 81 20                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:81:20
	dma_cfg r12, r6, r22, 3
	.loc	1 81 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:81:25
	min.sl r[19:20], r[4:5], r[19:20]
	sub.sl r[4:5], r[19:20], r[4:5]
	.loc	1 81 20                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:81:20
	addli r4, r4, 32
	addli r5, zero, 256
	dma_cfg r24, r5, r4, 4
	addli r24, zero, 2
	dma_run zero
	unlock r10
	xsignal r24, 0
	.loc	1 73 26 is_stmt 1               # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:73:26
	beq r9, r11, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:86:25
	zext_int2long r[6:7], r9
	addli r4, zero, 16383
	sll.d r[6:7], r[6:7], r10
	zext_int2long r[12:13], r4
	.loc	1 81 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:81:25
	add.ul r[6:7], r[6:7], r[1:2]
	setlt.ul r19, r[12:13], r[6:7]
	addli.d r[12:13], r[26:27], 0
	bneq r19, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:0:25
	zext_int2long r[12:13], zero
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, r30, -4112
	loadli.w r19,  32(r30)
	.loc	1 89 25 is_stmt 1               # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:89:25
	add.s r8, r8, r9
	.loc	1 73 26                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:73:26
	addli r28, r28, 8
	addli r25, r25, 8
	addli r3, r3, 8
	core_id r20
	addli r9, zero, 64
	load.d r[12:13], 0(r1)                  # 8-byte Folded Reload
	.loc	1 89 25                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:89:25
	j .LBB0_8
.LBB0_34:                               # %.split17.thread89
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:86:20
	addli r8, r8, 8
.LBB0_35:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:0:20
	addli r1, r30, -4112
	.loc	1 101 67 is_stmt 1              # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:101:67
	addli r28, r19, 1
	addli r25, r24, 1
	addli r3, r9, 1
	load.d r[12:13], 0(r1)                  # 8-byte Folded Reload
	bneq r20, zero, .LBB0_7
# %bb.36:                               #   in Loop: Header=BB0_9 Depth=1
	loadli.w r6,  -4140(r30)                # 4-byte Folded Reload
	addli r19, r30, -4104
	loadli.w r1,  -4144(r30)                # 4-byte Folded Reload
	addli r4, zero, 992
	addli r24, r30, -4128
	addli r9, zero, 5
	load.d r[12:13], 0(r19)                 # 8-byte Folded Reload
	zext_int2long r[4:5], r4
	load.d r[19:20], 0(r24)                 # 8-byte Folded Reload
	sext_int2long r[6:7], r6
	zext_int2long r[1:2], r1
	min.sl r[12:13], r[6:7], r[12:13]
	min.ul r[4:5], r[1:2], r[4:5]
	sll.d r[19:20], r[19:20], r23
	addli.d r[12:13], r[12:13], 32
	addli.d r[4:5], r[4:5], 32
	max.sl r[12:13], r[12:13], r[6:7]
	max.ul r[4:5], r[4:5], r[1:2]
	sub.sl r[6:7], r[12:13], r[6:7]
	load.d r[12:13], 16(r30)
	sub.sl r[1:2], r[4:5], r[1:2]
	zext_int2long r[4:5], r22
	min.ul r[1:2], r[1:2], r[4:5]
	min.sl r[4:5], r[6:7], r[4:5]
	add.ul r[12:13], r[12:13], r[19:20]
	addli r19, r30, -4136
	.loc	1 73 26                         # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:73:26
	core_id r20
	.loc	1 101 67                        # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:101:67
	slli r1, r1, 2
	addli r2, zero, 2048
	load.d r[6:7], 0(r19)                   # 8-byte Folded Reload
	addli r19, r30, -4112
	add.ul r[6:7], r[12:13], r[6:7]
	load.d r[12:13], 0(r19)                 # 8-byte Folded Reload
	addli r19, zero, 10
	xwait r19, 0
	lock zero, r9
	dma_cfg r14, zero, zero, 0
	dma_cfg zero, r14, zero, 1
	dma_cfg r7, zero, zero, 2
	dma_cfg r6, zero, r1, 3
	addli r1, zero, 5
	dma_cfg r2, r16, r4, 4
	dma_run zero
	unlock r1
	addli r1, zero, 11
	xsignal r1, 0
	j .LBB0_7
.LBB0_37:                               # %._crit_edge
	.loc	1 22 0                          # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:22:0
	xsignal zero, 0
	bneq r20, zero, .LBB0_39
# %bb.38:
	.loc	1 0 0 is_stmt 0                 # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py:22:0
	addli sp, sp, 4152
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
	.long	4216                            # 0x1078
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
.asciz	"cxv4xg2qcjrxwa336sgdrnrjo55nj7yz4h3badm2dqsiuamawvcl.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/xv" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
