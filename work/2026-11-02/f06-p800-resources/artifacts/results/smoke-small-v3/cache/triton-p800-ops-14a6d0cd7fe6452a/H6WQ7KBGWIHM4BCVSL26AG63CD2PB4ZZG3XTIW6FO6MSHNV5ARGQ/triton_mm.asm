	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/smoke-small-v3/cache/inductor/o3" "co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py"
	.loc	1 22 0                          # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4200
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:73:26
	core_id r10
	addli r30, sp, 4136
	xsignal_mode_cfg r1
	beq r10, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:0:26
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
	ble.s r2, r1, .LBB0_38
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	addli r4, r30, -4112
	sext_int2long r[6:7], r1
	loadli.w r27,  -1024(r30)
	loadli.w r12,  -3072(r30)
	loadli.w r1,  -4096(r30)
	addli r13, zero, 32
	addli r14, zero, 1
	addli r23, zero, 5
	addli r17, zero, 4
	addli r19, zero, 255
	lui r20, 128
	addli r21, zero, 7
	addli r22, zero, 6
	addli r24, zero, 3
	addli r25, zero, 64
	addli r26, zero, 16
	addli r18, zero, 1023
	addli r28, zero, 2
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	loadli.w r3,  -2048(r30)
	addli r2, zero, 128
	j .LBB0_7
.LBB0_5:                                # %.split17.us
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:73:26
	addli r1, r1, 4
	addli r3, r3, 4
	addli r27, r27, 4
	.loc	1 89 25 is_stmt 1               # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:89:25
	add.s r12, r12, r6
	.loc	1 73 26                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:73:26
	core_id r10
.LBB0_6:                                # %.thread93
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:0:26
	addli r4, r30, -4104
	addli r8, r30, -4112
	load.d r[6:7], 0(r4)                    # 8-byte Folded Reload
	load.d r[4:5], 0(r8)                    # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	setlt.sl r4, r[6:7], r[4:5]
	beq r4, zero, .LBB0_38
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_16 Depth 2
	addli r4, r30, -4104
	loadli.w r5,  28(r30)
	.loc	1 54 50 is_stmt 1               # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:54:50
	addli r8, zero, 8
	store.d r[6:7], 0(r4)                   # 8-byte Folded Spill
	loadli.w r4,  32(r30)
	div.s r4, r6, r4
	div.s r4, r4, r5
	.loc	1 53 22                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:53:22
	div.s r7, r4, r13
	.loc	1 54 41                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:54:41
	slli r5, r7, 3
	.loc	1 54 30 is_stmt 0               # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:54:30
	sub.s r6, r14, r5
	.loc	1 54 50                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:54:50
	min.s r8, r6, r8
	.loc	1 55 40 is_stmt 1               # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:55:40
	mod.s r6, r4, r8
	.loc	1 55 34 is_stmt 0               # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:55:34
	add.s r6, r5, r6
	.loc	1 95 15 is_stmt 1               # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:95:15
	zext_int2long r[15:16], r6
	.loc	1 73 26                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:73:26
	bneq r10, r17, .LBB0_9
# %bb.8:                                # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 11
	xwait r5, 0
	j .LBB0_14
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:0:26
	beq r10, r14, .LBB0_27
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r10, r28, .LBB0_14
# %bb.11:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r6, zero, 0
.LBB0_12:                               # %.thread.us21
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:89:25
	add.s r4, r12, r6
	add.s r5, r1, r6
	xwait r28, 0
	xwait r23, 0
	lock zero, zero
	.loc	1 73 26                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:73:26
	addli r6, r6, 1
	.loc	1 89 25                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:89:25
	ds_cfg r24, zero, 0
	.loc	1 81 20                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:81:20
	mod.s r4, r4, r19
	.loc	1 89 25                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:89:25
	mod.s r5, r5, r19
	ds_cfg r25, zero, 1
	ds_cfg r13, zero, 14
	ds_cfg r26, zero, 13
	.loc	1 81 20                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:81:20
	slli r4, r4, 11
	.loc	1 89 25                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:89:25
	slli r5, r5, 10
	.loc	1 81 20                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:81:20
	addli r4, r4, 2048
	.loc	1 89 25                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:89:25
	shuffle_batch r5, r4, r26, 1
	unlock zero
	xsignal r24, 0
	xsignal r17, 0
	bneq r6, r17, .LBB0_12
# %bb.13:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:73:26
	addli r3, r3, 4
	addli r27, r27, 4
	.loc	1 89 25                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:89:25
	add.s r1, r1, r6
	add.s r12, r12, r6
	j .LBB0_6
.LBB0_14:                               # %.split.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:0:25
	addli r5, r30, -4120
	addli r9, zero, 0
	store.d r[15:16], 0(r5)                 # 8-byte Folded Spill
	slli r5, r7, 5
	addli r15, zero, 5
	addli r16, zero, 0
	sub.s r4, r4, r5
	slli r5, r6, 4
	div.s r4, r4, r8
	.loc	1 73 26 is_stmt 1               # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:73:26
	storeli.w r5, -4132(r30)                # 4-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:0:0
	zext_int2long r[7:8], r4
	slli r4, r4, 5
	sll.d r[7:8], r[7:8], r23
	.loc	1 73 26                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:73:26
	storeli.w r4, -4136(r30)                # 4-byte Folded Spill
	load.d r[4:5], 8(r30)
	sll.d r[6:7], r[7:8], r14
	addli r8, r30, -4128
	store.d r[6:7], 0(r8)                   # 8-byte Folded Spill
	add.ul r[7:8], r[4:5], r[6:7]
	j .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25 is_stmt 1               # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:89:25
	addli r5, zero, 9
	xwait r22, 0
	xwait r5, 0
	lock zero, zero
	ds_cfg r24, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r13, zero, 14
	ds_cfg r13, zero, 13
	shuffle_coa r23, r4, r26, 2
	addli r4, zero, 8
	unlock zero
	xsignal r21, 0
	xsignal r4, 0
	.loc	1 73 26                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:73:26
	addli r9, r9, 1
	bneq r9, r17, .LBB0_25
	j .LBB0_26
.LBB0_16:                               # %.split
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:89:25
	add.s r18, r27, r16
	add.s r6, r3, r16
	add.s r28, r1, r16
	.loc	1 86 20                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:86:20
	mod.s r4, r18, r19
	.loc	1 89 25                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:89:25
	mod.s r5, r6, r19
	.loc	1 86 20                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:86:20
	slli r4, r4, 11
	.loc	1 89 25                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:89:25
	slli r23, r5, 11
	.loc	1 86 20                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:86:20
	add.s r4, r4, r20
	beq r10, r21, .LBB0_15
# %bb.17:                               # %.split
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 20 is_stmt 0                # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:0:20
	bneq r10, r22, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 86 25                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:86:25
	zext_int2long r[10:11], r9
	.loc	1 86 20                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:86:20
	addli r5, zero, 12
	xwait r21, 0
	lock zero, r17
	dma_cfg r14, r14, zero, 0
	sll.d r[10:11], r[10:11], r5
	add.ul r[10:11], r[7:8], r[10:11]
	dma_cfg zero, r11, zero, 2
	dma_cfg r4, r10, r25, 3
	addli r4, zero, 256
	.loc	1 73 26 is_stmt 1               # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:73:26
	core_id r10
	.loc	1 86 20                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:86:20
	dma_cfg r2, r4, r26, 4
	dma_run zero
	unlock r17
	xsignal r22, 0
	.loc	1 73 26                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:73:26
	addli r9, r9, 1
	bneq r9, r17, .LBB0_25
	j .LBB0_26
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:89:25
	bneq r10, r17, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 0 is_stmt 0                 # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:0:0
	mod.s r4, r28, r19
	.loc	1 89 25                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:89:25
	addli r5, zero, 8
	xwait r17, 0
	xwait r5, 0
	lock zero, r14
	mm_cfg r13, r26, r26, 0
	mm_cfg r14, r14, r14, 2
	.loc	1 0 0                           # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:0:0
	slli r4, r4, 10
	.loc	1 89 25                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:89:25
	beq r16, zero, .LBB0_23
# %bb.21:                               # %.preheader8
                                        #   in Loop: Header=BB0_16 Depth=2
	mm_acc zero, r4, r23, 5
	j .LBB0_24
.LBB0_22:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 73 26 is_stmt 1               # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:73:26
	addli r9, r9, 1
	bneq r9, r17, .LBB0_25
	j .LBB0_31
.LBB0_23:                               # %.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:89:25
	mm zero, r4, r23, 5
.LBB0_24:                               # %.thread6.thread90
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 73 26                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:73:26
	addli r9, r9, 1
	.loc	1 89 25                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:89:25
	addli r4, zero, 9
	unlock r14
	xsignal r15, 0
	xsignal r4, 0
	.loc	1 73 26                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:73:26
	beq r9, r17, .LBB0_34
.LBB0_25:                               # %.split.backedge
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:89:25
	addli r16, r16, 1
	j .LBB0_16
.LBB0_26:                               # %.split17
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:86:20
	addli r12, r12, 4
	.loc	1 73 26                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:73:26
	bneq r10, r17, .LBB0_32
	j .LBB0_35
.LBB0_27:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:0:26
	addli r4, zero, 10
	addli r6, zero, 0
	sll.d r[7:8], r[15:16], r4
	j .LBB0_29
.LBB0_28:                               # %.thread.us
                                        #   in Loop: Header=BB0_29 Depth=2
	add.s r9, r12, r6
	.loc	1 81 25 is_stmt 1               # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:81:25
	srl.d r[10:11], r[15:16], r22
	.loc	1 81 20 is_stmt 0               # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:81:20
	load.d r[15:16], 0(r30)
	sll.d r[4:5], r[4:5], r14
	xwait r24, 0
	lock zero, r17
	.loc	1 73 26 is_stmt 1               # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:73:26
	addli r6, r6, 1
	.loc	1 81 20                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:81:20
	dma_cfg r14, r14, zero, 0
	.loc	1 81 0 is_stmt 0                # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:81:0
	mod.s r9, r9, r19
	.loc	1 81 20                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:81:20
	sub.s r10, r26, r10
	add.ul r[4:5], r[15:16], r[4:5]
	dma_cfg zero, r5, zero, 2
	.loc	1 81 0                          # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:81:0
	slli r9, r9, 11
	addli r9, r9, 2048
	.loc	1 81 20                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:81:20
	dma_cfg r9, r4, r13, 3
	dma_cfg r2, r2, r10, 4
	dma_run zero
	unlock r17
	xsignal r28, 0
	.loc	1 73 26 is_stmt 1               # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:73:26
	beq r6, r17, .LBB0_5
.LBB0_29:                               # %.thread.us
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:86:25
	zext_int2long r[4:5], r6
	zext_int2long r[9:10], r18
	sll.d r[15:16], r[4:5], r17
	.loc	1 81 25                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:81:25
	add.ul r[4:5], r[15:16], r[7:8]
	setlt.ul r9, r[9:10], r[4:5]
	bneq r9, zero, .LBB0_28
# %bb.30:                               # %.thread.us
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 25 is_stmt 0                # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:0:25
	addli.d r[15:16], r[4:5], 0
	j .LBB0_28
.LBB0_31:                               # %.split17.thread89
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20 is_stmt 1               # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:86:20
	addli r12, r12, 4
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 101 67                        # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:101:67
	addli r1, r28, 1
	addli r3, r6, 1
	addli r27, r18, 1
	bneq r10, zero, .LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r4,  -4136(r30)                # 4-byte Folded Reload
	addli r6, zero, 96
	loadli.w r8,  -4132(r30)                # 4-byte Folded Reload
	zext_int2long r[10:11], zero
	load.d r[15:16], 16(r30)
	addli r23, zero, 5
	zext_int2long r[6:7], r6
	zext_int2long r[4:5], r4
	sext_int2long r[8:9], r8
	min.ul r[6:7], r[4:5], r[6:7]
	min.sl r[10:11], r[8:9], r[10:11]
	addli.d r[6:7], r[6:7], 32
	max.ul r[6:7], r[6:7], r[4:5]
	sub.sl r[4:5], r[6:7], r[4:5]
	addli.d r[6:7], r[10:11], 16
	zext_int2long r[10:11], r13
	min.ul r[4:5], r[4:5], r[10:11]
	max.sl r[6:7], r[6:7], r[8:9]
	addli r11, r30, -4120
	sub.sl r[6:7], r[6:7], r[8:9]
	load.d r[9:10], 0(r11)                  # 8-byte Folded Reload
	addli r8, zero, 12
	slli r4, r4, 2
	sll.d r[8:9], r[9:10], r8
	zext_int2long r[10:11], r26
	min.sl r[6:7], r[6:7], r[10:11]
	addli r11, r30, -4128
	add.ul r[8:9], r[15:16], r[8:9]
	.loc	1 73 26                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:73:26
	core_id r10
	.loc	1 101 67                        # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:101:67
	load.d r[15:16], 0(r11)                 # 8-byte Folded Reload
	addli r11, zero, 10
	xwait r11, 0
	lock zero, r23
	dma_cfg r14, zero, zero, 0
	add.ul r[8:9], r[8:9], r[15:16]
	dma_cfg zero, r14, zero, 1
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, zero, r4, 3
	addli r4, zero, 256
	dma_cfg r4, r2, r6, 4
	addli r4, zero, 11
	dma_run zero
	unlock r23
	xsignal r4, 0
	j .LBB0_37
.LBB0_34:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:86:20
	addli r12, r12, 4
.LBB0_35:                               # %.thread7
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:73:26
	addli r4, zero, 10
	.loc	1 101 67                        # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:101:67
	addli r1, r28, 1
	addli r3, r6, 1
	addli r27, r18, 1
	.loc	1 73 26                         # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:73:26
	xsignal r4, 0
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:0:26
	addli r23, zero, 5
.LBB0_37:                               # %.thread93
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r18, zero, 1023
	addli r28, zero, 2
	j .LBB0_6
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:22:0
	xsignal zero, 0
	bneq r10, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:22:0
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
	.loc	1 22 0 epilogue_begin           # co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py:22:0
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
.asciz	"co3iewivjflcxl3lxhw5aln77b4nbbcmu77mk7wkxbd2stv2rkte.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/smoke-small-v3/cache/inductor/o3" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
