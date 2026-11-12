	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/device-6-probe/cache/inductor/ad" "cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py"
	.loc	1 22 0                          # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4240
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:73:26
	core_id r13
	addli r30, sp, 4176
	xsignal_mode_cfg r1
	beq r13, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	ble.s r2, r1, .LBB0_35
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	addli r4, r30, -4128
	sext_int2long r[10:11], r1
	loadli.w r8,  -1024(r30)
	loadli.w r5,  -2048(r30)
	loadli.w r14,  -3072(r30)
	loadli.w r1,  -4096(r30)
	addli r16, zero, 1
	addli r18, zero, 6
	addli r19, zero, 3
	addli r20, zero, 4
	addli r22, zero, 255
	addli r24, zero, 7
	addli r26, zero, 64
	addli r27, zero, 32
	addli r15, zero, 128
	addli r17, zero, 2
	addli r21, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	lui r2, 130
	addli r3, zero, 16
	ori r23, r2, 2048
	j .LBB0_9
.LBB0_5:                                # %.split17.thread90
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:86:20
	addli r14, r14, 2
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:73:26
	addli r2, zero, 10
	.loc	1 101 67                        # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:101:67
	addli r1, r25, 1
	addli r5, r9, 1
	addli r8, r21, 1
	.loc	1 73 26                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:73:26
	xsignal r2, 0
	addli r2, r30, -4104
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
.LBB0_7:                                # %.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:0:26
	loadli.w r21,  -4108(r30)               # 4-byte Folded Reload
	addli r17, zero, 2
.LBB0_8:                                # %.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r2, r30, -4128
	addli.d r[10:11], r[10:11], 1
	addli r21, r21, 1
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	setlt.sl r2, r[10:11], r[6:7]
	beq r2, zero, .LBB0_35
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	loadli.w r2,  32(r30)
	loadli.w r4,  28(r30)
	.loc	1 54 50 is_stmt 1               # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:54:50
	addli r9, zero, 8
	.loc	1 73 26                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:73:26
	addli r12, r30, -4120
	div.s r2, r10, r2
	div.s r6, r2, r4
	.loc	1 53 22                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:53:22
	div.s r7, r6, r3
	.loc	1 54 41                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:54:41
	slli r2, r7, 3
	.loc	1 54 30 is_stmt 0               # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:54:30
	sub.s r4, r16, r2
	.loc	1 54 50                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:54:50
	min.s r9, r4, r9
	.loc	1 55 40 is_stmt 1               # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:55:40
	mod.s r4, r6, r9
	.loc	1 55 34 is_stmt 0               # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:55:34
	add.s r4, r2, r4
	.loc	1 95 15 is_stmt 1               # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:95:15
	zext_int2long r[2:3], r4
	.loc	1 73 26                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:73:26
	store.d r[2:3], 0(r12)                  # 8-byte Folded Spill
	bneq r13, r20, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r2, zero, 11
	xwait r2, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:0:26
	beq r13, r16, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r13, r17, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r2, zero, 1
	addli r7, zero, 5
	addli r3, zero, 16
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:81:20
	mod.s r4, r14, r22
	.loc	1 89 25                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:89:25
	mod.s r6, r1, r22
	xwait r17, 0
	xwait r7, 0
	lock zero, zero
	addli r1, r1, 1
	.loc	1 81 20                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:81:20
	addli r14, r14, 1
	.loc	1 89 25                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:89:25
	ds_cfg r19, zero, 0
	ds_cfg r26, zero, 1
	ds_cfg r27, zero, 14
	ds_cfg r3, zero, 13
	.loc	1 81 20                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:81:20
	slli r4, r4, 11
	.loc	1 89 25                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:89:25
	slli r6, r6, 10
	.loc	1 81 20                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:81:20
	addli r4, r4, 12288
	.loc	1 89 25                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:89:25
	shuffle_batch r6, r4, r27, 1
	.loc	1 73 26                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:73:26
	andi r4, r2, 1
	addli r2, zero, 0
	.loc	1 89 25                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:89:25
	unlock zero
	xsignal r19, 0
	xsignal r20, 0
	bneq r4, zero, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:73:26
	addli r5, r5, 2
	addli r8, r8, 2
	.loc	1 89 25                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:89:25
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:0:25
	slli r7, r7, 4
	addli r2, r30, -4104
	slli r3, r4, 4
	addli r17, zero, 1
	storeli.w r21, -4108(r30)               # 4-byte Folded Spill
	sub.s r6, r6, r7
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	mod.s r7, r21, r19
	storeli.w r3, -4144(r30)                # 4-byte Folded Spill
	.loc	1 73 26 is_stmt 1               # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:73:26
	load.d r[11:12], 8(r30)
	addli r2, zero, 0
	div.s r6, r6, r9
	slli r7, r7, 12
	zext_int2long r[9:10], r6
	slli r6, r6, 6
	sll.d r[3:4], r[9:10], r18
	storeli.w r6, -4152(r30)                # 4-byte Folded Spill
	addli r6, r30, -4136
	sll.d r[9:10], r[3:4], r17
	store.d r[3:4], 0(r6)                   # 8-byte Folded Spill
	addli r4, zero, 0
	addli r3, zero, 16
	add.ul r[10:11], r[11:12], r[9:10]
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:89:25
	addli r2, zero, 9
	xwait r18, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 8
	ds_cfg r19, zero, 0
	ds_cfg r26, zero, 1
	ds_cfg r27, zero, 14
	ds_cfg r26, zero, 13
	shuffle_coa r6, r28, r27, 2
	unlock zero
	xsignal r24, 0
	xsignal r2, 0
	.loc	1 73 26                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:73:26
	andi r2, r17, 1
	bneq r2, zero, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:89:25
	add.s r21, r8, r4
	add.s r9, r5, r4
	add.s r25, r1, r4
	.loc	1 86 20                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:86:20
	mod.s r6, r21, r22
	.loc	1 89 25                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:89:25
	mod.s r12, r9, r22
	.loc	1 86 20                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:86:20
	slli r13, r6, 12
	.loc	1 89 25                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:89:25
	slli r6, r12, 12
	.loc	1 86 20                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:86:20
	add.s r28, r13, r23
	.loc	1 73 26                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:73:26
	core_id r13
	beq r13, r24, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:0:26
	bneq r13, r18, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 20 is_stmt 1               # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:86:20
	zext_int2long r[12:13], r2
	xwait r24, 0
	lock zero, r20
	addli r2, zero, 256
	dma_cfg r16, r16, zero, 0
	add.ul r[12:13], r[10:11], r[12:13]
	dma_cfg zero, r13, zero, 2
	dma_cfg r28, r12, r15, 3
	.loc	1 73 26                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:73:26
	core_id r13
	.loc	1 86 20                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:86:20
	dma_cfg r15, r2, r27, 4
	dma_run zero
	unlock r20
	xsignal r18, 0
	.loc	1 73 26                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:73:26
	andi r2, r17, 1
	bneq r2, zero, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:0:26
	andi r2, r17, 1
	.loc	1 89 25 is_stmt 1               # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:89:25
	bneq r13, r20, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 25 is_stmt 0                # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:0:25
	mod.s r12, r25, r22
	.loc	1 89 25                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:89:25
	addli r17, zero, 8
	xwait r20, 0
	xwait r17, 0
	lock zero, r16
	mm_cfg r26, r27, r3, 0
	slli r17, r12, 10
	addli r12, zero, 2
	mm_cfg r16, r12, r16, 2
	beq r4, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r7, r17, r6, 5
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 25                          # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:0:25
	bneq r2, zero, .LBB0_27
	j .LBB0_32
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:89:25
	mm r7, r17, r6, 5
.LBB0_26:                               # %.thread6.thread89
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r6, zero, 5
	unlock r16
	xsignal r6, 0
	addli r6, zero, 9
	xsignal r6, 0
	.loc	1 73 26 is_stmt 1               # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:73:26
	beq r2, zero, .LBB0_5
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:89:25
	addli r4, r4, 1
	addli r2, zero, 8192
	addli r17, zero, 0
	j .LBB0_18
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:86:20
	addli r14, r14, 2
	.loc	1 73 26                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:73:26
	beq r13, r20, .LBB0_6
	j .LBB0_33
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:0:26
	addli r6, r30, -4120
	addli r2, r30, -4104
	load.d r[3:4], 0(r6)                    # 8-byte Folded Reload
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	addli r2, zero, 11
	load.d r[9:10], 0(r30)
	sll.d r[6:7], r[3:4], r2
	addli r2, zero, 1
	addli r4, zero, 0
	addli r3, zero, 16
	add.ul r[9:10], r[9:10], r[6:7]
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:81:20
	mod.s r6, r14, r22
	.loc	1 86 25                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:86:25
	zext_int2long r[11:12], r4
	.loc	1 81 20                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:81:20
	xwait r19, 0
	lock zero, r20
	addli r14, r14, 1
	dma_cfg r16, r16, zero, 0
	sll.d r[11:12], r[11:12], r16
	slli r4, r6, 11
	add.ul r[6:7], r[9:10], r[11:12]
	addli r4, r4, 12288
	dma_cfg zero, r7, zero, 2
	dma_cfg r4, r6, r26, 3
	.loc	1 73 26                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:73:26
	andi r6, r2, 1
	addli r4, zero, 32
	addli r2, zero, 0
	.loc	1 81 20                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:81:20
	dma_cfg r15, r15, r3, 4
	dma_run zero
	unlock r20
	xsignal r17, 0
	.loc	1 73 26                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:73:26
	bneq r6, zero, .LBB0_30
# %bb.31:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:0:26
	addli r2, r30, -4104
	.loc	1 73 26                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:73:26
	addli r1, r1, 2
	addli r5, r5, 2
	addli r8, r8, 2
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	.loc	1 89 25 is_stmt 1               # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:89:25
	j .LBB0_8
.LBB0_32:                               # %.split17.thread88
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:86:20
	addli r14, r14, 2
.LBB0_33:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:0:20
	addli r2, r30, -4104
	.loc	1 101 67 is_stmt 1              # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:101:67
	addli r1, r25, 1
	addli r5, r9, 1
	addli r8, r21, 1
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	bneq r13, zero, .LBB0_7
# %bb.34:                               #   in Loop: Header=BB0_9 Depth=1
	loadli.w r2,  -4152(r30)                # 4-byte Folded Reload
	zext_int2long r[9:10], r26
	addli r4, r30, -4120
	zext_int2long r[11:12], r2
	addli r2, r30, -4152
	store.d r[11:12], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -4160
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	min.ul r[9:10], r[11:12], r[9:10]
	addli r2, r30, -4168
	zext_int2long r[11:12], zero
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	loadli.w r2,  -4144(r30)                # 4-byte Folded Reload
	sext_int2long r[9:10], r2
	addli r2, r30, -4144
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	addli r2, r30, -4176
	store.d r[11:12], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -4168
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	addli.d r[11:12], r[11:12], 64
	store.d r[11:12], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -4176
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	min.sl r[9:10], r[9:10], r[11:12]
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	addli r2, r30, -4168
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	addli r2, r30, -4152
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4176
	max.ul r[11:12], r[11:12], r[9:10]
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4168
	addli.d r[9:10], r[9:10], 16
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	addli r2, r30, -4152
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	sub.sl r[9:10], r[11:12], r[9:10]
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	addli r2, r30, -4168
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	addli r2, r30, -4144
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4168
	max.sl r[11:12], r[11:12], r[9:10]
	store.d r[11:12], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -4160
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	addli r2, r30, -4152
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	min.ul r[11:12], r[9:10], r[11:12]
	store.d r[11:12], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -4168
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4144
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	sub.sl r[9:10], r[9:10], r[11:12]
	zext_int2long r[11:12], r3
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	load.d r[9:10], 0(r4)                   # 8-byte Folded Reload
	addli r2, zero, 12
	addli r4, zero, 5
	sll.d r[9:10], r[9:10], r2
	addli r2, r30, -4120
	store.d r[11:12], 0(r2)                 # 8-byte Folded Spill
	load.d r[11:12], 16(r30)
	addli r2, r30, -4160
	add.ul r[9:10], r[11:12], r[9:10]
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	addli r2, r30, -4136
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	sll.d r[9:10], r[9:10], r16
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	addli r2, r30, -4144
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	addli r2, r30, -4120
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	min.sl r[11:12], r[11:12], r[9:10]
	store.d r[11:12], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -4160
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4136
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	addli r2, zero, 10
	xwait r2, 0
	lock zero, r4
	addli r2, r30, -4152
	dma_cfg r16, zero, zero, 0
	add.ul r[9:10], r[9:10], r[11:12]
	dma_cfg zero, r16, zero, 1
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	dma_cfg r10, zero, zero, 2
	slli r2, r11, 2
	dma_cfg r9, r7, r2, 3
	addli r9, r30, -4120
	addli r2, zero, 256
	load.d r[6:7], 0(r9)                    # 8-byte Folded Reload
	dma_cfg r2, r2, r6, 4
	addli r2, r30, -4104
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	addli r2, zero, 11
	dma_run zero
	unlock r4
	xsignal r2, 0
	j .LBB0_7
.LBB0_35:                               # %._crit_edge
	.loc	1 22 0                          # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:22:0
	xsignal zero, 0
	bneq r13, zero, .LBB0_37
# %bb.36:
	.loc	1 0 0 is_stmt 0                 # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:22:0
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
.LBB0_37:
	.loc	1 22 0 epilogue_begin           # cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py:22:0
	addli sp, sp, 4176
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
	.long	4240                            # 0x1090
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
.asciz	"cadtsfu52zj7jrzlxymx3yqfmqvc2fqraokw66ggzfkb5intll7f.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/device-6-probe/cache/inductor/ad" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
