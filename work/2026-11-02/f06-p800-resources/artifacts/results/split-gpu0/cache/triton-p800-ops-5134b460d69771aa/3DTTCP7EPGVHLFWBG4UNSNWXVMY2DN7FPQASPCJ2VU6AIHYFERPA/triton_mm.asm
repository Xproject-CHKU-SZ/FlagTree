	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-gpu0/cache/inductor/co" "cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py"
	.loc	1 22 0                          # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4216
	addli r30, sp, 4152
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:73:26
	core_id r26
	loadli.w r27,  32(r30)
	xsignal_mode_cfg r1
	beq r26, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	ble.s r2, r1, .LBB0_39
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	addli r4, r30, -4128
	sext_int2long r[9:10], r1
	lui r1, 129
	loadli.w r5,  -1024(r30)
	loadli.w r28,  -2048(r30)
	loadli.w r12,  -3072(r30)
	addli r13, zero, 16
	addli r14, zero, 1
	addli r16, zero, 6
	addli r15, zero, 2
	addli r18, zero, 4
	addli r20, zero, 255
	addli r22, zero, 7
	addli r17, zero, 3
	addli r6, zero, 64
	addli r19, zero, 32
	addli r23, zero, 5
	storeli.w zero, -4100(r30)              # 4-byte Folded Spill
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	loadli.w r3,  -4096(r30)
	ori r21, r1, 2048
	j .LBB0_8
.LBB0_5:                                # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 89 25 is_stmt 1               # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:89:25
	add.s r12, r12, r1
	addli r1, r30, -4112
	loadli.w r24,  32(r30)
	.loc	1 73 26                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:73:26
	addli r3, r3, 4
	addli r28, r28, 4
	addli r5, r5, 4
	core_id r26
.LBB0_6:                                # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:0:26
	addli r23, zero, 5
	load.d r[9:10], 0(r1)                   # 8-byte Folded Reload
	addli r27, r24, 0
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, r30, -4128
	addli.d r[9:10], r[9:10], 1
	load.d r[1:2], 0(r4)                    # 8-byte Folded Reload
	setlt.sl r1, r[9:10], r[1:2]
	loadli.w r2,  -4100(r30)                # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -4100(r30)                # 4-byte Folded Spill
	beq r1, zero, .LBB0_39
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	div.s r1, r9, r27
	loadli.w r2,  28(r30)
	.loc	1 54 50 is_stmt 1               # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:54:50
	addli r8, zero, 8
	div.s r2, r1, r2
	.loc	1 53 22                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:53:22
	div.s r4, r2, r13
	.loc	1 54 41                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:54:41
	slli r1, r4, 3
	.loc	1 54 30 is_stmt 0               # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:54:30
	sub.s r7, r14, r1
	.loc	1 54 50                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:54:50
	min.s r7, r7, r8
	.loc	1 55 40 is_stmt 1               # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:55:40
	mod.s r8, r2, r7
	.loc	1 55 34 is_stmt 0               # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:55:34
	add.s r1, r1, r8
	.loc	1 73 26 is_stmt 1               # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:73:26
	addli r8, r30, -4120
	.loc	1 95 15                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:95:15
	zext_int2long r[24:25], r1
	.loc	1 73 26                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:73:26
	store.d r[24:25], 0(r8)                 # 8-byte Folded Spill
	bneq r26, r18, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r8, zero, 11
	addli r25, zero, 128
	xwait r8, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:0:26
	beq r26, r14, .LBB0_30
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	addli r25, zero, 128
	bneq r26, r15, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 0
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:89:25
	add.s r2, r12, r1
	add.s r4, r3, r1
	xwait r15, 0
	xwait r23, 0
	lock zero, zero
	.loc	1 73 26                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:89:25
	ds_cfg r17, zero, 0
	.loc	1 81 20                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:81:20
	mod.s r2, r2, r20
	.loc	1 89 25                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:89:25
	mod.s r4, r4, r20
	ds_cfg r6, zero, 1
	ds_cfg r19, zero, 14
	ds_cfg r13, zero, 13
	.loc	1 81 20                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:81:20
	slli r2, r2, 11
	.loc	1 89 25                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:89:25
	slli r4, r4, 10
	.loc	1 81 20                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:81:20
	addli r2, r2, 8192
	.loc	1 89 25                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:89:25
	shuffle_batch r4, r2, r13, 1
	unlock zero
	xsignal r17, 0
	xsignal r18, 0
	bneq r1, r18, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:73:26
	addli r28, r28, 4
	addli r5, r5, 4
	.loc	1 89 25                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:89:25
	add.s r3, r3, r1
	add.s r12, r12, r1
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:0:25
	slli r4, r4, 4
	addli r8, r30, -4112
	slli r1, r1, 4
	addli r24, zero, 32
	sub.s r2, r2, r4
	loadli.w r4,  -4100(r30)                # 4-byte Folded Reload
	store.d r[9:10], 0(r8)                  # 8-byte Folded Spill
	storeli.w r1, -4144(r30)                # 4-byte Folded Spill
	addli r8, zero, 0
	div.s r2, r2, r7
	mod.s r4, r4, r15
	addli r15, zero, 0
	zext_int2long r[9:10], r2
	slli r1, r2, 6
	slli r7, r4, 12
	addli r4, r30, -4136
	sll.d r[9:10], r[9:10], r16
	.loc	1 73 26 is_stmt 1               # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:73:26
	storeli.w r1, -4148(r30)                # 4-byte Folded Spill
	load.d r[1:2], 8(r30)
	sll.d r[9:10], r[9:10], r14
	add.ul r[1:2], r[1:2], r[9:10]
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:89:25
	addli r10, zero, 9
	xwait r16, 0
	xwait r10, 0
	lock zero, zero
	addli r10, zero, 8
	ds_cfg r17, zero, 0
	ds_cfg r6, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r6, zero, 13
	shuffle_coa r19, r27, r13, 2
	unlock zero
	xsignal r22, 0
	xsignal r10, 0
	.loc	1 73 26                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:73:26
	addli r8, r8, 1
	beq r8, r18, .LBB0_28
.LBB0_17:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:89:25
	addli r15, r15, 1
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r9, r5, r15
	add.s r4, r28, r15
	add.s r23, r3, r15
	.loc	1 86 20                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:86:20
	mod.s r10, r9, r20
	.loc	1 89 25                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:89:25
	mod.s r19, r4, r20
	.loc	1 86 20                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:86:20
	slli r10, r10, 11
	.loc	1 89 25                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:89:25
	slli r19, r19, 12
	.loc	1 86 20                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:86:20
	add.s r27, r10, r21
	beq r26, r22, .LBB0_16
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:0:20
	bneq r26, r16, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:86:25
	zext_int2long r[10:11], r8
	.loc	1 86 20                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:86:20
	addli r19, zero, 12
	xwait r22, 0
	lock zero, r18
	dma_cfg r14, r14, zero, 0
	sll.d r[10:11], r[10:11], r19
	add.ul r[10:11], r[1:2], r[10:11]
	dma_cfg zero, r11, zero, 2
	dma_cfg r27, r10, r25, 3
	addli r10, zero, 256
	dma_cfg r25, r10, r13, 4
	dma_run zero
	unlock r18
	xsignal r16, 0
	.loc	1 73 26 is_stmt 1               # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:73:26
	addli r8, r8, 1
	bneq r8, r18, .LBB0_17
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:89:25
	bneq r26, r18, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:0:0
	mod.s r10, r23, r20
	.loc	1 89 25                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:89:25
	addli r11, zero, 8
	xwait r18, 0
	xwait r11, 0
	lock zero, r14
	addli r11, zero, 2
	mm_cfg r6, r13, r13, 0
	mm_cfg r14, r11, r14, 2
	.loc	1 0 0                           # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:0:0
	slli r10, r10, 10
	.loc	1 89 25                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:89:25
	beq r15, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r7, r10, r19, 5
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:73:26
	addli r8, r8, 1
	bneq r8, r18, .LBB0_17
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:89:25
	mm r7, r10, r19, 5
.LBB0_26:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r10, zero, 5
	unlock r14
	.loc	1 73 26                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:73:26
	addli r8, r8, 1
	.loc	1 89 25                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:89:25
	xsignal r10, 0
	addli r10, zero, 9
	xsignal r10, 0
	.loc	1 73 26                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:73:26
	bneq r8, r18, .LBB0_17
# %bb.27:                               # %.split17.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:86:20
	addli r12, r12, 4
	j .LBB0_29
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r12, r12, 4
	.loc	1 73 26                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:73:26
	bneq r26, r18, .LBB0_35
.LBB0_29:                               # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	loadli.w r24,  32(r30)
	.loc	1 101 67                        # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:101:67
	addli r5, r9, 1
	addli r3, r23, 1
	addli r28, r4, 1
	addli r15, zero, 2
	addli r19, zero, 32
	addli r23, zero, 5
	.loc	1 73 26                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:73:26
	xsignal r1, 0
	addli r1, r30, -4112
	addli r27, r24, 0
	j .LBB0_38
.LBB0_30:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:0:26
	addli r2, r30, -4120
	addli r1, r30, -4112
	addli r11, zero, 128
	load.d r[7:8], 0(r2)                    # 8-byte Folded Reload
	store.d r[9:10], 0(r1)                  # 8-byte Folded Spill
	addli r1, zero, 10
	sll.d r[7:8], r[7:8], r1
	addli r1, zero, 0
	j .LBB0_32
.LBB0_31:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	add.s r2, r12, r1
	.loc	1 81 25 is_stmt 1               # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:81:25
	srl.d r[9:10], r[9:10], r16
	.loc	1 81 20 is_stmt 0               # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:81:20
	sll.d r[23:24], r[26:27], r14
	xwait r17, 0
	lock zero, r18
	.loc	1 73 26 is_stmt 1               # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:73:26
	addli r1, r1, 1
	.loc	1 81 20                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:81:20
	dma_cfg r14, r14, zero, 0
	.loc	1 81 0 is_stmt 0                # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:81:0
	mod.s r2, r2, r20
	.loc	1 81 20                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:81:20
	sub.s r4, r13, r9
	load.d r[9:10], 0(r30)
	add.ul r[9:10], r[9:10], r[23:24]
	dma_cfg zero, r10, zero, 2
	.loc	1 81 0                          # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:81:0
	slli r2, r2, 11
	addli r2, r2, 8192
	.loc	1 81 20                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:81:20
	dma_cfg r2, r9, r19, 3
	dma_cfg r11, r11, r4, 4
	dma_run zero
	unlock r18
	xsignal r15, 0
	.loc	1 73 26 is_stmt 1               # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:73:26
	beq r1, r18, .LBB0_5
.LBB0_32:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:86:25
	zext_int2long r[9:10], r1
	addli r2, zero, 1023
	sll.d r[9:10], r[9:10], r18
	zext_int2long r[23:24], r2
	.loc	1 81 25                         # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:81:25
	add.ul r[26:27], r[9:10], r[7:8]
	setlt.ul r2, r[23:24], r[26:27]
	bneq r2, zero, .LBB0_31
# %bb.33:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	.loc	1 0 25 is_stmt 0                # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:0:25
	addli.d r[9:10], r[26:27], 0
	j .LBB0_31
.LBB0_34:                               # %.split17.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:86:20
	addli r12, r12, 4
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:101:67
	addli r3, r23, 1
	addli r28, r4, 1
	addli r5, r9, 1
	addli r15, zero, 2
	addli r19, zero, 32
	beq r26, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:0:67
	addli r1, r30, -4112
	loadli.w r24,  32(r30)
	j .LBB0_6
.LBB0_37:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:101:67
	loadli.w r1,  -4148(r30)                # 4-byte Folded Reload
	zext_int2long r[8:9], r6
	loadli.w r4,  -4144(r30)                # 4-byte Folded Reload
	zext_int2long r[26:27], zero
	zext_int2long r[1:2], r1
	sext_int2long r[23:24], r4
	addli r4, r30, -4144
	min.ul r[10:11], r[1:2], r[8:9]
	min.sl r[26:27], r[23:24], r[26:27]
	addli.d r[10:11], r[10:11], 64
	addli.d r[26:27], r[26:27], 16
	max.ul r[10:11], r[10:11], r[1:2]
	sub.sl r[1:2], r[10:11], r[1:2]
	max.sl r[10:11], r[26:27], r[23:24]
	.loc	1 73 26 is_stmt 1               # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:73:26
	core_id r26
	.loc	1 101 67                        # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:101:67
	min.ul r[1:2], r[1:2], r[8:9]
	sub.sl r[8:9], r[10:11], r[23:24]
	zext_int2long r[23:24], r13
	store.d r[1:2], 0(r4)                   # 8-byte Folded Spill
	addli r2, r30, -4120
	addli r1, zero, 12
	addli r4, r30, -4136
	min.sl r[8:9], r[8:9], r[23:24]
	addli r23, zero, 5
	loadli.w r24,  32(r30)
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	addli r27, r24, 0
	sll.d r[10:11], r[10:11], r1
	load.d r[1:2], 16(r30)
	add.ul r[10:11], r[1:2], r[10:11]
	load.d r[1:2], 0(r4)                    # 8-byte Folded Reload
	addli r4, r30, -4144
	add.ul r[10:11], r[10:11], r[1:2]
	addli r1, zero, 10
	xwait r1, 0
	lock zero, r23
	dma_cfg r14, zero, zero, 0
	dma_cfg zero, r14, zero, 1
	load.d r[1:2], 0(r4)                    # 8-byte Folded Reload
	dma_cfg r11, zero, zero, 2
	slli r1, r1, 2
	dma_cfg r10, r7, r1, 3
	addli r1, zero, 256
	dma_cfg r1, r1, r8, 4
	addli r1, zero, 11
	dma_run zero
	unlock r23
	xsignal r1, 0
	addli r1, r30, -4112
.LBB0_38:                               # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:0:67
	load.d r[9:10], 0(r1)                   # 8-byte Folded Reload
	j .LBB0_7
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:22:0
	xsignal zero, 0
	bneq r26, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py:22:0
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
.asciz	"cconwh3ceeqcfsbhuk3unb2inzg3cyzglr3kdmlcgyntv253jng2.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-gpu0/cache/inductor/co" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
