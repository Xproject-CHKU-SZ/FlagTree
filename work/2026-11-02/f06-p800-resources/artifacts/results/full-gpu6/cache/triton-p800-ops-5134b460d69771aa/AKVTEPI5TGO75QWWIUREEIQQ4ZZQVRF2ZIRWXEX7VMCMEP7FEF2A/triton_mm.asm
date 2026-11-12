	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/wh" "cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py"
	.loc	1 22 0                          # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4224
	addli r30, sp, 4160
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:73:26
	core_id r26
	loadli.w r14,  32(r30)
	loadli.w r8,  28(r30)
	xsignal_mode_cfg r1
	beq r26, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:0:26
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
	addli r4, r30, -4128
	sext_int2long r[11:12], r1
	loadli.w r24,  -1024(r30)
	loadli.w r23,  -2048(r30)
	loadli.w r22,  -3072(r30)
	loadli.w r28,  -4096(r30)
	addli r19, zero, 256
	addli r10, zero, 2
	addli r7, zero, 8
	addli r9, zero, 5
	addli r13, zero, 4
	addli r15, zero, 255
	addli r17, zero, 7
	addli r18, zero, 6
	addli r20, zero, 32
	addli r21, zero, 16
	addli r16, zero, 128
	addli r25, zero, 3
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r2, zero, 1023
	addli r3, r30, -4160
	lui r1, 1048575
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67 is_stmt 1              # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:101:67
	addli r24, r1, 1
	.loc	1 73 26                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:73:26
	addli r1, zero, 10
	addli r14, r8, 0
	loadli.w r8,  28(r30)
	.loc	1 101 67                        # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:101:67
	addli r28, r19, 1
	addli r23, r9, 1
	addli r19, zero, 256
	addli r9, zero, 5
	addli r25, zero, 3
	.loc	1 73 26                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:73:26
	xsignal r1, 0
	addli r1, r30, -4112
.LBB0_6:                                # %.thread93
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:0:26
	load.d r[11:12], 0(r1)                  # 8-byte Folded Reload
.LBB0_7:                                # %.thread93
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, r30, -4128
	addli.d r[11:12], r[11:12], 1
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	setlt.sl r1, r[11:12], r[1:2]
	beq r1, zero, .LBB0_38
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	div.s r1, r11, r14
	addli r27, r30, -4120
	div.s r1, r1, r8
	.loc	1 53 22 is_stmt 1               # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:53:22
	div.s r3, r1, r19
	.loc	1 54 41                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:54:41
	slli r2, r3, 3
	.loc	1 54 30 is_stmt 0               # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:54:30
	sub.s r4, r10, r2
	.loc	1 54 50                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:54:50
	min.s r6, r4, r7
	.loc	1 55 40 is_stmt 1               # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:55:40
	mod.s r4, r1, r6
	.loc	1 55 34 is_stmt 0               # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:55:34
	add.s r2, r2, r4
	.loc	1 95 15 is_stmt 1               # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:95:15
	zext_int2long r[4:5], r2
	store.d r[4:5], 0(r27)                  # 8-byte Folded Spill
	zext_int2long r[4:5], r20
	.loc	1 73 26                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:73:26
	addli r27, r30, -4104
	store.d r[4:5], 0(r27)                  # 8-byte Folded Spill
	bneq r26, r13, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 11
	xwait r4, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:0:26
	addli r4, zero, 1
	beq r26, r4, .LBB0_29
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r26, r10, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 0
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:89:25
	add.s r2, r22, r1
	add.s r3, r28, r1
	xwait r10, 0
	xwait r9, 0
	lock zero, zero
	.loc	1 73 26                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:89:25
	ds_cfg r10, zero, 0
	.loc	1 81 20                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:81:20
	mod.s r2, r2, r15
	.loc	1 89 25                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:89:25
	mod.s r3, r3, r15
	ds_cfg r20, zero, 1
	ds_cfg r21, zero, 14
	ds_cfg r20, zero, 13
	.loc	1 81 20                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:81:20
	slli r2, r2, 12
	.loc	1 89 25                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:89:25
	slli r3, r3, 11
	.loc	1 81 20                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:81:20
	addli r2, r2, 4096
	.loc	1 89 25                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:89:25
	shuffle_batch r3, r2, r21, 1
	unlock zero
	xsignal r25, 0
	xsignal r13, 0
	bneq r1, r13, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:73:26
	addli r23, r23, 4
	addli r24, r24, 4
	.loc	1 89 25                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:89:25
	add.s r28, r28, r1
	add.s r22, r22, r1
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:0:0
	slli r3, r3, 8
	slli r2, r2, 5
	addli r4, r30, -4112
	addli r5, r30, -4136
	addli r8, r14, 0
	addli r14, zero, 0
	addli r25, zero, 5
	sub.s r1, r1, r3
	.loc	1 73 26 is_stmt 1               # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:73:26
	storeli.w r2, -4144(r30)                # 4-byte Folded Spill
	store.d r[11:12], 0(r4)                 # 8-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:0:0
	div.s r1, r1, r6
	zext_int2long r[6:7], r1
	slli r1, r1, 5
	sll.d r[6:7], r[6:7], r9
	.loc	1 73 26                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:73:26
	storeli.w r1, -4152(r30)                # 4-byte Folded Spill
	load.d r[1:2], 8(r30)
	sll.d r[3:4], r[6:7], r10
	addli r7, zero, 8
	addli r6, zero, 9
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	add.ul r[11:12], r[1:2], r[3:4]
	addli r3, zero, 0
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25 is_stmt 1               # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:89:25
	xwait r18, 0
	xwait r6, 0
	lock zero, zero
	ds_cfg r10, zero, 0
	ds_cfg r20, zero, 1
	ds_cfg r21, zero, 14
	ds_cfg r20, zero, 13
	shuffle_coa r2, r27, r21, 2
	unlock zero
	xsignal r17, 0
	xsignal r7, 0
	.loc	1 73 26                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:73:26
	addli r14, r14, 1
	beq r14, r13, .LBB0_28
.LBB0_17:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:89:25
	addli r3, r3, 1
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r1, r24, r3
	add.s r9, r23, r3
	add.s r19, r28, r3
	.loc	1 86 20                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:86:20
	mod.s r2, r1, r15
	.loc	1 89 25                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:89:25
	mod.s r4, r9, r15
	.loc	1 86 20                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:86:20
	slli r5, r2, 11
	.loc	1 89 25                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:89:25
	slli r2, r4, 11
	.loc	1 86 20                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:86:20
	lui r4, 256
	add.s r27, r5, r4
	beq r26, r17, .LBB0_16
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:0:20
	bneq r26, r18, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:86:25
	zext_int2long r[4:5], r14
	.loc	1 86 20                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:86:20
	xwait r17, 0
	lock zero, r13
	addli r2, zero, 128
	addli r16, zero, 128
	dma_cfg zero, zero, zero, 0
	sll.d r[4:5], r[4:5], r21
	add.ul r[4:5], r[11:12], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r27, r4, r2, 3
	addli r4, zero, 4096
	dma_cfg r2, r4, r21, 4
	dma_run zero
	unlock r13
	xsignal r18, 0
	.loc	1 73 26 is_stmt 1               # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:73:26
	addli r14, r14, 1
	bneq r14, r13, .LBB0_17
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:89:25
	bneq r26, r13, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:0:0
	mod.s r4, r19, r15
	addli r5, zero, 1
	.loc	1 89 25                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:89:25
	xwait r13, 0
	xwait r7, 0
	lock zero, r5
	mm_cfg r20, r21, r20, 0
	mm_cfg r5, r5, r5, 2
	.loc	1 0 0                           # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:0:0
	slli r6, r4, 11
	.loc	1 89 25                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:89:25
	beq r3, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc zero, r6, r2, 8
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:73:26
	addli r14, r14, 1
	bneq r14, r13, .LBB0_17
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:89:25
	mm zero, r6, r2, 8
.LBB0_26:                               # %.thread6.thread90
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r2, zero, 1
	.loc	1 73 26                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:73:26
	addli r14, r14, 1
	addli r6, zero, 9
	.loc	1 89 25                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:89:25
	unlock r2
	xsignal r25, 0
	xsignal r6, 0
	.loc	1 73 26                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:73:26
	bneq r14, r13, .LBB0_17
# %bb.27:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:86:20
	addli r22, r22, 4
	j .LBB0_5
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r22, r22, 4
	.loc	1 73 26                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:73:26
	beq r26, r13, .LBB0_5
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:0:26
	addli r4, r30, -4120
	addli r1, r30, -4112
	addli r27, zero, 3
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	store.d r[11:12], 0(r1)                 # 8-byte Folded Spill
	addli r1, zero, 11
	sll.d r[11:12], r[2:3], r1
	addli r3, r30, -4160
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	and.d r[25:26], r[11:12], r[1:2]
	addli r1, zero, 0
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	addli r9, zero, 64
	.loc	1 81 25 is_stmt 1               # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:81:25
	sub.sl r[2:3], r[6:7], r[2:3]
	.loc	1 81 20 is_stmt 0               # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:81:20
	xwait r27, 0
	lock zero, r13
	dma_cfg zero, zero, zero, 0
	zext_int2long r[4:5], r9
	.loc	1 81 25                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:81:25
	div.sl r[2:3], r[2:3], r[4:5]
	.loc	1 81 20                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:81:20
	sll.d r[5:6], r[6:7], r10
	load.d r[7:8], 0(r30)
	.loc	1 0 0                           # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:0:0
	add.s r4, r22, r1
	.loc	1 73 26 is_stmt 1               # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:73:26
	addli r1, r1, 1
	.loc	1 81 0                          # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:81:0
	mod.s r4, r4, r15
	.loc	1 81 20 is_stmt 0               # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:81:20
	add.ul r[5:6], r[7:8], r[5:6]
	dma_cfg zero, r6, zero, 2
	.loc	1 81 25                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:81:25
	addli zero, r30, -4104
	load.d r[7:8], 0(zero)                  # 8-byte Folded Reload
	xor zero, zero, zero
	.loc	1 81 0                          # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:81:0
	slli r4, r4, 12
	addli r4, r4, 4096
	.loc	1 81 20                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:81:20
	dma_cfg r4, r5, r9, 3
	.loc	1 81 25                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:81:25
	min.sl r[7:8], r[2:3], r[7:8]
	sub.sl r[2:3], r[7:8], r[2:3]
	.loc	1 81 20                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:81:20
	addli r2, r2, 32
	dma_cfg r16, r19, r2, 4
	dma_run zero
	unlock r13
	xsignal r10, 0
	.loc	1 73 26 is_stmt 1               # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:73:26
	beq r1, r13, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:86:25
	zext_int2long r[2:3], r1
	sll.d r[2:3], r[2:3], r13
	.loc	1 81 25                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:81:25
	add.ul r[6:7], r[2:3], r[11:12]
	addli r2, zero, 4095
	zext_int2long r[2:3], r2
	setlt.ul r9, r[2:3], r[6:7]
	addli.d r[2:3], r[25:26], 0
	bneq r9, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:0:25
	zext_int2long r[2:3], zero
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 89 25 is_stmt 1               # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:89:25
	add.s r22, r22, r1
	addli r1, r30, -4112
	loadli.w r8,  28(r30)
	.loc	1 73 26                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:73:26
	addli r28, r28, 4
	addli r23, r23, 4
	addli r24, r24, 4
	core_id r26
	addli r7, zero, 8
	addli r9, zero, 5
	addli r25, zero, 3
	j .LBB0_6
.LBB0_34:                               # %.split17.thread89
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:86:20
	addli r22, r22, 4
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:101:67
	addli r24, r1, 1
	addli r1, r30, -4112
	addli r28, r19, 1
	addli r23, r9, 1
	addli r14, r8, 0
	addli r25, zero, 3
	load.d r[11:12], 0(r1)                  # 8-byte Folded Reload
	beq r26, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:0:67
	loadli.w r8,  28(r30)
	addli r19, zero, 256
	addli r9, zero, 5
	.loc	1 101 67                        # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:101:67
	j .LBB0_7
.LBB0_37:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -4152(r30)                # 4-byte Folded Reload
	addli r3, zero, 992
	addli r9, r30, -4144
	addli r19, r30, -4120
	zext_int2long r[3:4], r3
	zext_int2long r[7:8], r1
	loadli.w r1,  -4144(r30)                # 4-byte Folded Reload
	min.ul r[3:4], r[7:8], r[3:4]
	sext_int2long r[5:6], r1
	addli.d r[1:2], r[3:4], 32
	addli r3, r30, -4152
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r3, r30, -4104
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	min.sl r[3:4], r[5:6], r[1:2]
	store.d r[3:4], 0(r9)                   # 8-byte Folded Spill
	addli r9, r30, -4152
	load.d r[3:4], 0(r9)                    # 8-byte Folded Reload
	max.ul r[3:4], r[3:4], r[7:8]
	store.d r[3:4], 0(r9)                   # 8-byte Folded Spill
	addli r9, r30, -4144
	load.d r[3:4], 0(r9)                    # 8-byte Folded Reload
	addli.d r[3:4], r[3:4], 32
	store.d r[3:4], 0(r9)                   # 8-byte Folded Spill
	addli r9, r30, -4152
	load.d r[3:4], 0(r9)                    # 8-byte Folded Reload
	addli r9, r30, -4144
	sub.sl r[7:8], r[3:4], r[7:8]
	load.d r[3:4], 0(r9)                    # 8-byte Folded Reload
	min.ul r[7:8], r[7:8], r[1:2]
	max.sl r[3:4], r[3:4], r[5:6]
	store.d r[7:8], 0(r9)                   # 8-byte Folded Spill
	load.d r[8:9], 0(r19)                   # 8-byte Folded Reload
	addli r7, zero, 17
	addli r19, zero, 1
	sub.sl r[3:4], r[3:4], r[5:6]
	load.d r[5:6], 16(r30)
	sll.d r[7:8], r[8:9], r7
	addli r9, r30, -4136
	min.sl r[3:4], r[3:4], r[1:2]
	load.d r[1:2], 0(r9)                    # 8-byte Folded Reload
	addli r9, zero, 10
	add.ul r[5:6], r[5:6], r[7:8]
	loadli.w r8,  28(r30)
	addli r7, zero, 8
	xwait r9, 0
	addli r9, zero, 5
	add.ul r[5:6], r[5:6], r[1:2]
	lock zero, r9
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r19, zero, 1
	addli r19, r30, -4144
	load.d r[1:2], 0(r19)                   # 8-byte Folded Reload
	dma_cfg r6, zero, zero, 2
	addli r19, zero, 256
	slli r1, r1, 2
	dma_cfg r5, zero, r1, 3
	addli r1, zero, 4096
	dma_cfg r1, r16, r3, 4
	addli r1, zero, 11
	dma_run zero
	unlock r9
	xsignal r1, 0
	j .LBB0_7
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:22:0
	xsignal zero, 0
	bneq r26, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py:22:0
	addli sp, sp, 4160
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
	.long	4224                            # 0x1080
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
.asciz	"cwhsgjfwcganidfkqmgxx6avw7bw2rielpxl22a4kms3vj4bfli3.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/wh" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
