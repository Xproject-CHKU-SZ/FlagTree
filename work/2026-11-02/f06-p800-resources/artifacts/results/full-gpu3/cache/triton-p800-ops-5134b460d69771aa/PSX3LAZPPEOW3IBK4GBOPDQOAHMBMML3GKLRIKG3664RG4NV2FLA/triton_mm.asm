	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/z2" "cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py"
	.loc	1 22 0                          # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2984
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:73:26
	core_id r22
	addli r30, sp, 2920
	xsignal_mode_cfg r1
	beq r22, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:0:26
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
	addli r4, r30, -2912
	sext_int2long r[5:6], r1
	loadli.w r8,  -516(r30)
	loadli.w r9,  -1540(r30)
	loadli.w r18,  -2056(r30)
	loadli.w r28,  -2828(r30)
	addli r10, zero, 128
	addli r11, zero, 2
	addli r23, zero, 6
	addli r14, zero, 4
	addli r16, zero, 1
	addli r27, zero, 192
	addli r13, zero, 5
	addli r25, zero, 3
	addli r24, zero, 64
	addli r26, zero, 32
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r2, zero, 4095
	addli r3, r30, -2920
	lui r1, 1048572
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r2, zero, 0
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:73:26
	addli r1, zero, 10
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0                           # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -2872
	loadli.w r2,  -2876(r30)                # 4-byte Folded Reload
	addli r28, r19, 1
	addli r18, r12, 1
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2912
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	addli.d r[5:6], r[5:6], 1
	setlt.sl r1, r[5:6], r[3:4]
	beq r1, zero, .LBB0_33
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	.loc	1 73 26                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:73:26
	bneq r22, r14, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26                          # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:0:26
	loadli.w r1,  32(r30)
	addli r3, r30, -2872
	addli r7, zero, 8
	addli r17, zero, 0
	store.d r[5:6], 0(r3)                   # 8-byte Folded Spill
	loadli.w r3,  28(r30)
	div.s r1, r5, r1
	mod.s r5, r2, r11
	addli r2, r2, 1
	storeli.w r2, -2876(r30)                # 4-byte Folded Spill
	div.s r1, r1, r3
	slli r2, r5, 14
	storeli.w r2, -2860(r30)                # 4-byte Folded Spill
	div.s r3, r1, r10
	slli r4, r3, 3
	slli r3, r3, 7
	sub.s r6, r11, r4
	sub.s r3, r1, r3
	min.s r6, r6, r7
	mod.s r1, r1, r6
	div.s r3, r3, r6
	add.s r1, r4, r1
	slli r2, r3, 6
	zext_int2long r[3:4], r3
	storeli.w r2, -2904(r30)                # 4-byte Folded Spill
	slli r2, r1, 6
	sll.d r[3:4], r[3:4], r23
	zext_int2long r[5:6], r1
	addli r1, zero, 13
	storeli.w r2, -2900(r30)                # 4-byte Folded Spill
	.loc	1 73 26                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:73:26
	sll.d r[2:3], r[3:4], r16
	addli r4, r30, -2896
	sll.d r[19:20], r[5:6], r1
	addli r1, r30, -2888
	store.d r[5:6], 0(r4)                   # 8-byte Folded Spill
	load.d r[5:6], 8(r30)
	store.d r[2:3], 0(r1)                   # 8-byte Folded Spill
	addli r4, zero, 7
	add.ul r[1:2], r[5:6], r[2:3]
	addli r3, r30, -2856
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r1, r30, -2920
	addli r3, r30, -2848
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2840
	store.d r[19:20], 0(r1)                 # 8-byte Folded Spill
	and.d r[1:2], r[19:20], r[5:6]
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r1, zero, 0
	j .LBB0_13
.LBB0_11:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 81 25 is_stmt 1               # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:81:25
	sub.sl r[5:6], r[20:21], r[5:6]
	zext_int2long r[22:23], r10
	.loc	1 81 20 is_stmt 0               # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:81:20
	load.d r[2:3], 0(r30)
	sll.d r[20:21], r[20:21], r16
	xwait r25, 0
	lock zero, r14
	dma_cfg r16, r16, zero, 0
	.loc	1 81 25                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:81:25
	div.sl r[5:6], r[5:6], r[22:23]
	zext_int2long r[22:23], r24
	.loc	1 81 20                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:81:20
	add.ul r[20:21], r[2:3], r[20:21]
	dma_cfg zero, r21, zero, 2
	dma_cfg r7, r20, r24, 3
	.loc	1 81 25                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:81:25
	min.sl r[22:23], r[5:6], r[22:23]
	sub.sl r[5:6], r[22:23], r[5:6]
	.loc	1 73 26 is_stmt 1               # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:73:26
	core_id r22
	addli r23, zero, 6
	.loc	1 81 20                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:81:20
	addli r5, r5, 64
	addli r6, zero, 256
	dma_cfg r10, r6, r5, 4
	dma_run zero
	unlock r14
	xsignal r11, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 89 25                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:89:25
	addli r9, r9, 1
	.loc	1 86 20                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:86:20
	addli r8, r8, 1
	.loc	1 73 26                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:73:26
	addli r17, r17, 1
	bneq r17, r14, .LBB0_23
	j .LBB0_30
.LBB0_13:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:86:25
	add.s r12, r18, r1
	add.s r19, r28, r1
	.loc	1 81 20                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:81:20
	mod.s r5, r12, r10
	.loc	1 89 25                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:89:25
	mod.s r6, r19, r27
	slli r15, r6, 12
	.loc	1 81 20                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:81:20
	slli r5, r5, 13
	lui r6, 8
	add.s r7, r5, r6
	beq r22, r11, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 0 is_stmt 0                 # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:0:0
	zext_int2long r[20:21], r17
	.loc	1 81 20                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:81:20
	bneq r22, r16, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 81 25                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:81:25
	addli r15, r30, -2840
	.loc	1 86 25 is_stmt 1               # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:86:25
	sll.d r[5:6], r[20:21], r13
	.loc	1 81 25                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:81:25
	load.d r[2:3], 0(r15)                   # 8-byte Folded Reload
	add.ul r[20:21], r[5:6], r[2:3]
	addli r5, zero, 16383
	addli r2, r30, -2848
	zext_int2long r[5:6], r5
	setlt.ul r15, r[5:6], r[20:21]
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	bneq r15, zero, .LBB0_11
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 25 is_stmt 0                # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:0:25
	zext_int2long r[5:6], zero
	j .LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	addli r6, zero, 3
	.loc	1 89 25 is_stmt 1               # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:89:25
	xwait r11, 0
	xwait r13, 0
	lock zero, zero
	addli r5, zero, 32
	addli r26, zero, 32
	addli r25, zero, 3
	ds_cfg r6, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r5, zero, 14
	ds_cfg r24, zero, 13
	shuffle_batch r15, r7, r5, 1
	unlock zero
	xsignal r6, 0
	xsignal r14, 0
	j .LBB0_12
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=2
	addli r6, zero, 255
	.loc	1 86 20                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:86:20
	mod.s r5, r8, r10
	addli r8, r8, 1
	.loc	1 89 25                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:89:25
	mod.s r6, r9, r6
	addli r9, r9, 1
	.loc	1 86 20                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:86:20
	slli r5, r5, 12
	.loc	1 89 25                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:89:25
	slli r7, r6, 12
	.loc	1 86 20                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:86:20
	lui r6, 264
	add.s r27, r5, r6
	beq r22, r4, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_13 Depth=2
	bneq r22, r23, .LBB0_24
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=2
	addli r2, zero, 16
	addli r7, r30, -2856
	xwait r4, 0
	sll.d r[5:6], r[20:21], r2
	load.d r[2:3], 0(r7)                    # 8-byte Folded Reload
	lock zero, r14
	dma_cfg r16, r16, zero, 0
	add.ul r[5:6], r[2:3], r[5:6]
	dma_cfg zero, r6, zero, 2
	dma_cfg r27, r5, r10, 3
	addli r5, zero, 2048
	dma_cfg r10, r5, r26, 4
	dma_run zero
	unlock r14
	xsignal r23, 0
	j .LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 89 25                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:89:25
	addli r2, zero, 9
	xwait r23, 0
	addli r5, zero, 32
	addli r26, zero, 32
	xwait r2, 0
	lock zero, zero
	ds_cfg r25, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r5, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r7, r27, r5, 2
	addli r5, zero, 8
	unlock zero
	xsignal r4, 0
	xsignal r5, 0
.LBB0_22:                               # %.thread6
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 25 is_stmt 0                # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:0:25
	addli r27, zero, 192
	.loc	1 73 26 is_stmt 1               # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:73:26
	addli r17, r17, 1
	beq r17, r14, .LBB0_30
.LBB0_23:                               # %.backedge
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 89 25                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:89:25
	addli r1, r1, 1
	.loc	1 86 25                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:86:25
	j .LBB0_13
.LBB0_24:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 25 is_stmt 0                # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:0:25
	addli r27, zero, 192
	.loc	1 89 25 is_stmt 1               # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:89:25
	bneq r22, r14, .LBB0_27
# %bb.25:                               #   in Loop: Header=BB0_13 Depth=2
	addli r5, zero, 8
	xwait r14, 0
	xwait r5, 0
	lock zero, r16
	mm_cfg r24, r26, r24, 0
	mm_cfg r16, r11, r16, 2
	beq r1, zero, .LBB0_28
# %bb.26:                               # %.preheader8
                                        #   in Loop: Header=BB0_13 Depth=2
	loadli.w r2,  -2860(r30)                # 4-byte Folded Reload
	mm_acc r2, r15, r7, 5
	j .LBB0_29
.LBB0_27:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 73 26                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:73:26
	addli r17, r17, 1
	bneq r17, r14, .LBB0_23
	j .LBB0_31
.LBB0_28:                               # %.preheader
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 89 25                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:89:25
	loadli.w r2,  -2860(r30)                # 4-byte Folded Reload
	mm r2, r15, r7, 5
.LBB0_29:                               # %.thread6.thread41
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 73 26                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:73:26
	addli r17, r17, 1
	.loc	1 89 25                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:89:25
	addli r2, zero, 9
	unlock r16
	xsignal r13, 0
	xsignal r2, 0
	bneq r17, r14, .LBB0_23
	j .LBB0_5
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:73:26
	beq r22, r14, .LBB0_5
.LBB0_31:                               # %.thread40
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:101:67
	bneq r22, zero, .LBB0_7
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -2904(r30)                # 4-byte Folded Reload
	zext_int2long r[17:18], r24
	addli r2, r30, -2896
	addli r7, r30, -2888
	addli r13, zero, 5
	zext_int2long r[3:4], r1
	addli r1, zero, 960
	zext_int2long r[5:6], r1
	loadli.w r1,  -2900(r30)                # 4-byte Folded Reload
	min.ul r[5:6], r[3:4], r[5:6]
	sext_int2long r[20:21], r1
	addli r1, zero, 17
	addli.d r[5:6], r[5:6], 64
	min.sl r[22:23], r[20:21], r[17:18]
	max.ul r[5:6], r[5:6], r[3:4]
	sub.sl r[3:4], r[5:6], r[3:4]
	addli.d r[5:6], r[22:23], 64
	load.d r[22:23], 0(r2)                  # 8-byte Folded Reload
	max.sl r[5:6], r[5:6], r[20:21]
	min.ul r[3:4], r[3:4], r[17:18]
	sll.d r[22:23], r[22:23], r1
	load.d r[1:2], 0(r7)                    # 8-byte Folded Reload
	addli r7, zero, 5
	sub.sl r[5:6], r[5:6], r[20:21]
	load.d r[20:21], 16(r30)
	min.sl r[5:6], r[5:6], r[17:18]
	add.ul r[20:21], r[20:21], r[22:23]
	addli r23, zero, 6
	.loc	1 73 26                         # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:73:26
	core_id r22
	.loc	1 101 67                        # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:101:67
	add.ul r[17:18], r[20:21], r[1:2]
	addli r1, zero, 10
	xwait r1, 0
	lock zero, r7
	slli r1, r3, 2
	addli r3, zero, 2048
	dma_cfg r16, zero, zero, 0
	dma_cfg zero, r16, zero, 1
	dma_cfg r18, zero, zero, 2
	loadli.w r2,  -2860(r30)                # 4-byte Folded Reload
	dma_cfg r17, r2, r1, 3
	addli r1, zero, 256
	dma_cfg r3, r1, r5, 4
	addli r1, zero, 11
	dma_run zero
	unlock r7
	j .LBB0_6
.LBB0_33:                               # %._crit_edge
	.loc	1 22 0                          # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:22:0
	xsignal zero, 0
	bneq r22, zero, .LBB0_35
# %bb.34:
	.loc	1 0 0 is_stmt 0                 # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py:22:0
	addli sp, sp, 2920
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
	.long	2984                            # 0xba8
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
.asciz	"cz2mcqqmfcrodwxlbxpf64o466gvnwyh6szbc4bqk255w7jy6j46.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/z2" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
