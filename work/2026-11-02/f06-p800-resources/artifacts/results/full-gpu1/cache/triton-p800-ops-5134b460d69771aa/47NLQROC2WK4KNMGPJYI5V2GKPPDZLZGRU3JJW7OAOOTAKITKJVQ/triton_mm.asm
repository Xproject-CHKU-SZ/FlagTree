	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/og" "cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py"
	.loc	1 22 0                          # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2936
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:73:26
	core_id r2
	addli r30, sp, 2872
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:0:26
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -508(r30)
	storeli.w zero, -1532(r30)
	storeli.w zero, -2044(r30)
	storeli.w zero, -2816(r30)
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
	ble.s r3, r1, .LBB0_35
# %bb.4:                                # %.lr.ph
	loadli.w r28,  -508(r30)
	loadli.w r26,  -1532(r30)
	loadli.w r8,  -2044(r30)
	loadli.w r27,  -2816(r30)
	sext_int2long r[3:4], r3
	addli r5, r30, -2848
	sext_int2long r[24:25], r1
	addli r17, zero, 128
	addli r10, zero, 1
	addli r12, zero, 6
	addli r13, zero, 3
	addli r14, zero, 4
	addli r11, zero, 192
	addli r9, zero, 255
	lui r19, 266
	addli r20, zero, 7
	addli r22, zero, 64
	addli r23, zero, 32
	addli r21, zero, 5
	addli r15, zero, 2
	addli r16, zero, 127
	lui r7, 12
	storeli.w zero, -2820(r30)              # 4-byte Folded Spill
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split17.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:86:20
	addli r8, r8, 2
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:101:67
	addli r28, r1, 1
	.loc	1 73 26                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:73:26
	addli r1, zero, 10
	.loc	1 101 67                        # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:101:67
	addli r27, r15, 1
	addli r26, r16, 1
	addli r11, zero, 192
	addli r21, zero, 5
	addli r15, zero, 2
	addli r16, zero, 127
	lui r7, 12
	.loc	1 73 26                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:73:26
	xsignal r1, 0
	addli r1, r30, -2832
	load.d r[24:25], 0(r1)                  # 8-byte Folded Reload
.LBB0_7:                                # %.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:0:26
	addli r1, r30, -2848
	addli.d r[24:25], r[24:25], 1
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	setlt.sl r1, r[24:25], r[3:4]
	loadli.w r3,  -2820(r30)                # 4-byte Folded Reload
	addli r3, r3, 1
	storeli.w r3, -2820(r30)                # 4-byte Folded Spill
	beq r1, zero, .LBB0_35
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_17 Depth 2
	loadli.w r1,  32(r30)
	loadli.w r3,  28(r30)
	.loc	1 54 50 is_stmt 1               # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:54:50
	addli r6, zero, 8
	div.s r1, r24, r1
	div.s r3, r1, r3
	.loc	1 53 22                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:53:22
	div.s r5, r3, r17
	.loc	1 54 41                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:54:41
	slli r1, r5, 3
	.loc	1 54 30 is_stmt 0               # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:54:30
	sub.s r4, r10, r1
	.loc	1 54 50                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:54:50
	min.s r6, r4, r6
	.loc	1 55 40 is_stmt 1               # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:55:40
	mod.s r4, r3, r6
	.loc	1 55 34 is_stmt 0               # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:55:34
	add.s r1, r1, r4
	.loc	1 73 26 is_stmt 1               # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:73:26
	addli r4, r30, -2840
	.loc	1 95 15                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:95:15
	zext_int2long r[17:18], r1
	.loc	1 73 26                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:73:26
	store.d r[17:18], 0(r4)                 # 8-byte Folded Spill
	bneq r2, r14, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 11
	addli r17, zero, 128
	addli r18, zero, 126
	xwait r4, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:0:26
	addli r18, zero, 126
	beq r2, r10, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	addli r17, zero, 128
	bneq r2, r15, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 1
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:81:20
	mod.s r3, r8, r16
	.loc	1 89 25                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:89:25
	mod.s r4, r27, r11
	xwait r15, 0
	xwait r21, 0
	lock zero, zero
	addli r27, r27, 1
	.loc	1 81 20                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:81:20
	addli r8, r8, 1
	.loc	1 89 25                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:89:25
	ds_cfg r13, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r22, zero, 13
	.loc	1 81 20                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:81:20
	slli r3, r3, 13
	.loc	1 89 25                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:89:25
	slli r4, r4, 12
	.loc	1 81 20                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:81:20
	add.s r3, r3, r7
	.loc	1 89 25                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:89:25
	shuffle_batch r4, r3, r23, 1
	.loc	1 73 26                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:73:26
	andi r3, r1, 1
	addli r1, zero, 0
	.loc	1 89 25                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:89:25
	unlock zero
	xsignal r13, 0
	xsignal r14, 0
	bneq r3, zero, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:73:26
	addli r26, r26, 2
	addli r28, r28, 2
	.loc	1 89 25                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:89:25
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:0:25
	slli r5, r5, 7
	slli r1, r1, 6
	addli r11, zero, 1
	.loc	1 73 26 is_stmt 1               # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:73:26
	load.d r[15:16], 8(r30)
	addli r4, r30, -2832
	addli r21, zero, 0
	sub.s r3, r3, r5
	loadli.w r5,  -2820(r30)                # 4-byte Folded Reload
	storeli.w r1, -2864(r30)                # 4-byte Folded Spill
	store.d r[24:25], 0(r4)                 # 8-byte Folded Spill
	addli r4, zero, 0
	div.s r3, r3, r6
	mod.s r5, r5, r13
	zext_int2long r[6:7], r3
	slli r1, r3, 6
	slli r5, r5, 14
	storeli.w r1, -2868(r30)                # 4-byte Folded Spill
	sll.d r[6:7], r[6:7], r12
	addli r1, r30, -2856
	store.d r[6:7], 0(r1)                   # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r11
	add.ul r[24:25], r[15:16], r[6:7]
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:89:25
	addli r4, zero, 9
	xwait r12, 0
	xwait r4, 0
	lock zero, zero
	ds_cfg r13, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r3, r6, r23, 2
	addli r3, zero, 8
	unlock zero
	xsignal r20, 0
	xsignal r3, 0
	.loc	1 73 26                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:73:26
	andi r3, r11, 1
	bneq r3, zero, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:89:25
	add.s r1, r28, r21
	add.s r16, r26, r21
	add.s r15, r27, r21
	.loc	1 86 20                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:86:20
	mod.s r3, r1, r18
	.loc	1 89 25                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:89:25
	mod.s r6, r16, r9
	.loc	1 86 20                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:86:20
	slli r7, r3, 12
	.loc	1 89 25                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:89:25
	slli r3, r6, 12
	.loc	1 86 20                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:86:20
	add.s r6, r7, r19
	beq r2, r20, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:0:20
	bneq r2, r12, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 20                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:86:20
	zext_int2long r[3:4], r4
	xwait r20, 0
	lock zero, r14
	dma_cfg r10, r10, zero, 0
	add.ul r[3:4], r[24:25], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r6, r3, r17, 3
	addli r3, zero, 2048
	dma_cfg r17, r3, r23, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:73:26
	andi r3, r11, 1
	bneq r3, zero, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:0:26
	andi r4, r11, 1
	.loc	1 89 25 is_stmt 1               # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:89:25
	bneq r2, r14, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 25 is_stmt 0                # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:0:25
	addli r6, zero, 192
	.loc	1 89 25                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:89:25
	addli r7, zero, 8
	xwait r14, 0
	mod.s r6, r15, r6
	xwait r7, 0
	lock zero, r10
	addli r7, zero, 2
	mm_cfg r22, r23, r22, 0
	mm_cfg r10, r7, r10, 2
	slli r6, r6, 12
	beq r21, zero, .LBB0_24
# %bb.22:                               # %.preheader8
                                        #   in Loop: Header=BB0_17 Depth=2
	mm_acc r5, r6, r3, 5
	j .LBB0_25
.LBB0_23:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 25                          # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:0:25
	bneq r4, zero, .LBB0_26
	j .LBB0_31
.LBB0_24:                               # %.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:89:25
	mm r5, r6, r3, 5
.LBB0_25:                               # %.thread6.thread89
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r3, zero, 5
	unlock r10
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	.loc	1 73 26 is_stmt 1               # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:73:26
	beq r4, zero, .LBB0_5
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:89:25
	addli r21, r21, 1
	lui r4, 16
	addli r11, zero, 0
	j .LBB0_17
.LBB0_27:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:86:20
	addli r8, r8, 2
	.loc	1 73 26                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:73:26
	beq r2, r14, .LBB0_6
	j .LBB0_32
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:0:26
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	addli r1, zero, 13
	load.d r[5:6], 0(r30)
	addli r17, zero, 128
	sll.d r[3:4], r[2:3], r1
	addli r1, zero, 1
	lui r2, 12
	add.ul r[4:5], r[5:6], r[3:4]
	addli r3, zero, 0
.LBB0_29:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:81:20
	mod.s r6, r8, r16
	.loc	1 86 25                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:86:25
	zext_int2long r[15:16], r3
	.loc	1 81 20                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:81:20
	xwait r13, 0
	lock zero, r14
	addli r8, r8, 1
	dma_cfg r10, r10, zero, 0
	sll.d r[15:16], r[15:16], r10
	slli r3, r6, 13
	add.ul r[6:7], r[4:5], r[15:16]
	addli r16, zero, 127
	addli r15, zero, 2
	add.s r3, r3, r2
	dma_cfg zero, r7, zero, 2
	dma_cfg r3, r6, r22, 3
	.loc	1 73 26                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:73:26
	andi r6, r1, 1
	addli r3, zero, 32
	addli r1, zero, 0
	.loc	1 81 20                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:81:20
	dma_cfg r17, r17, r22, 4
	dma_run zero
	unlock r14
	xsignal r15, 0
	.loc	1 73 26                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:73:26
	bneq r6, zero, .LBB0_29
# %bb.30:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r27, r27, 2
	addli r26, r26, 2
	addli r28, r28, 2
	lui r7, 12
	core_id r2
	.loc	1 89 25                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:89:25
	j .LBB0_7
.LBB0_31:                               # %.split17.thread88
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:86:20
	addli r8, r8, 2
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:101:67
	addli r28, r1, 1
	addli r1, r30, -2832
	addli r27, r15, 1
	addli r26, r16, 1
	addli r11, zero, 192
	addli r21, zero, 5
	lui r7, 12
	load.d r[24:25], 0(r1)                  # 8-byte Folded Reload
	bneq r2, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -2868(r30)                # 4-byte Folded Reload
	zext_int2long r[24:25], zero
	addli r18, r30, -2840
	zext_int2long r[3:4], r1
	addli r1, zero, 960
	zext_int2long r[6:7], r1
	loadli.w r1,  -2864(r30)                # 4-byte Folded Reload
	min.ul r[6:7], r[3:4], r[6:7]
	sext_int2long r[15:16], r1
	addli r1, r30, -2864
	addli.d r[6:7], r[6:7], 64
	min.sl r[24:25], r[15:16], r[24:25]
	max.ul r[6:7], r[6:7], r[3:4]
	addli.d r[24:25], r[24:25], 64
	sub.sl r[3:4], r[6:7], r[3:4]
	zext_int2long r[6:7], r22
	max.sl r[24:25], r[24:25], r[15:16]
	min.ul r[3:4], r[3:4], r[6:7]
	sub.sl r[15:16], r[24:25], r[15:16]
	load.d r[24:25], 16(r30)
	store.d r[3:4], 0(r1)                   # 8-byte Folded Spill
	load.d r[3:4], 0(r18)                   # 8-byte Folded Reload
	addli r1, zero, 17
	min.sl r[6:7], r[15:16], r[6:7]
	sll.d r[3:4], r[3:4], r1
	addli r1, r30, -2856
	add.ul r[3:4], r[24:25], r[3:4]
	load.d r[24:25], 0(r1)                  # 8-byte Folded Reload
	addli r1, r30, -2832
	sll.d r[24:25], r[24:25], r10
	add.ul r[3:4], r[3:4], r[24:25]
	load.d r[24:25], 0(r1)                  # 8-byte Folded Reload
	addli r1, zero, 10
	xwait r1, 0
	lock zero, r21
	addli r1, r30, -2864
	dma_cfg r10, zero, zero, 0
	dma_cfg zero, r10, zero, 1
	load.d r[15:16], 0(r1)                  # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r1, r15, 2
	dma_cfg r3, r5, r1, 3
	addli r1, zero, 256
	addli r3, zero, 2048
	dma_cfg r3, r1, r6, 4
	lui r7, 12
	addli r1, zero, 11
	dma_run zero
	unlock r21
	xsignal r1, 0
.LBB0_34:                               # %.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:0:67
	addli r15, zero, 2
	addli r16, zero, 127
	j .LBB0_7
.LBB0_35:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_37
# %bb.36:
	.loc	1 0 0 is_stmt 0                 # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py:22:0
	addli sp, sp, 2872
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
	.long	2936                            # 0xb78
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
.asciz	"cogmw3dhmalvs6dowsvfr74u3jh4bbmaaje3avr2odzn3sgpoz6y.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/og" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
