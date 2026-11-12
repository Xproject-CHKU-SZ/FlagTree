	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/m5" "cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py"
	.loc	1 22 0                          # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2968
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:73:26
	core_id r25
	addli r30, sp, 2904
	xsignal_mode_cfg r1
	beq r25, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:0:26
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
	sext_int2long r[5:6], r1
	sext_int2long r[2:3], r3
	addli r4, r30, -2896
	lui r1, 15
	loadli.w r8,  -516(r30)
	loadli.w r9,  -1540(r30)
	loadli.w r12,  -2056(r30)
	loadli.w r10,  -2828(r30)
	addli r26, zero, 6
	addli r14, zero, 2
	addli r15, zero, 4
	addli r21, zero, 128
	lui r22, 8
	addli r24, zero, 16
	addli r20, zero, 64
	addli r13, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	ori r2, r1, 4095
	addli r3, r30, -2904
	lui r1, 1047552
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	lui r2, 1023
	addli r1, zero, 1
	ori r2, r2, 4095
	storeli.w r2, -2832(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:73:26
	addli r2, zero, 10
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0                           # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, r30, -2856
	addli r4, r30, -2896
	loadli.w r13,  -2860(r30)               # 4-byte Folded Reload
	addli r10, r27, 1
	addli r12, r28, 1
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	addli.d r[5:6], r[5:6], 1
	setlt.sl r2, r[5:6], r[2:3]
	beq r2, zero, .LBB0_33
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	.loc	1 73 26                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:73:26
	bneq r25, r15, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26                          # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:0:26
	loadli.w r2,  32(r30)
	addli r3, r30, -2856
	addli r7, zero, 32
	addli r11, zero, 8
	addli r4, zero, 0
	store.d r[5:6], 0(r3)                   # 8-byte Folded Spill
	loadli.w r3,  28(r30)
	div.s r2, r5, r2
	mod.s r6, r13, r14
	addli r13, r13, 1
	storeli.w r13, -2860(r30)               # 4-byte Folded Spill
	div.s r2, r2, r3
	addli r3, zero, 256
	slli r6, r6, 14
	storeli.w r6, -2844(r30)                # 4-byte Folded Spill
	div.s r3, r2, r3
	slli r5, r3, 3
	slli r3, r3, 8
	sub.s r7, r7, r5
	sub.s r3, r2, r3
	min.s r7, r7, r11
	mod.s r2, r2, r7
	div.s r3, r3, r7
	addli r7, r30, -2872
	add.s r2, r5, r2
	slli r5, r3, 6
	storeli.w r5, -2888(r30)                # 4-byte Folded Spill
	zext_int2long r[5:6], r3
	slli r3, r2, 6
	zext_int2long r[16:17], r2
	addli r2, zero, 17
	storeli.w r3, -2884(r30)                # 4-byte Folded Spill
	addli r3, r30, -2880
	sll.d r[5:6], r[5:6], r26
	sll.d r[18:19], r[16:17], r2
	store.d r[16:17], 0(r3)                 # 8-byte Folded Spill
	.loc	1 73 26                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:73:26
	load.d r[2:3], 8(r30)
	sll.d r[5:6], r[5:6], r14
	store.d r[5:6], 0(r7)                   # 8-byte Folded Spill
	addli r7, zero, 0
	add.ul r[2:3], r[2:3], r[5:6]
	addli r5, r30, -2840
	store.d r[2:3], 0(r5)                   # 8-byte Folded Spill
	addli r5, r30, -2904
	load.d r[2:3], 0(r5)                    # 8-byte Folded Reload
	and.d r[2:3], r[18:19], r[2:3]
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 26                          # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:0:26
	addli r13, zero, 2048
	.loc	1 81 25 is_stmt 1               # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:81:25
	sub.sl r[5:6], r[16:17], r[5:6]
	.loc	1 81 20 is_stmt 0               # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:81:20
	load.d r[22:23], 0(r30)
	sll.d r[16:17], r[16:17], r14
	zext_int2long r[25:26], r13
	addli r13, zero, 1984
	add.ul r[16:17], r[22:23], r[16:17]
	lui r22, 8
	.loc	1 81 25                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:81:25
	div.sl r[5:6], r[5:6], r[25:26]
	zext_int2long r[25:26], r13
	.loc	1 81 20                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:81:20
	addli r13, zero, 3
	xwait r13, 0
	lock zero, r15
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r17, zero, 2
	dma_cfg r11, r16, r20, 3
	.loc	1 81 25                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:81:25
	min.sl r[25:26], r[5:6], r[25:26]
	sub.sl r[5:6], r[25:26], r[5:6]
	.loc	1 73 26 is_stmt 1               # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:73:26
	core_id r25
	addli r26, zero, 6
	.loc	1 81 20                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:81:20
	addli r5, r5, 64
	addli r6, zero, 8192
	dma_cfg r21, r6, r5, 4
	dma_run zero
	unlock r15
	xsignal r14, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:89:25
	addli r9, r9, 1
	.loc	1 86 20                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:86:20
	addli r8, r8, 1
.LBB0_13:                               # %.thread6
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:73:26
	addli r4, r4, 1
	beq r4, r21, .LBB0_30
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:89:25
	addli r7, r7, 1
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:86:25
	add.s r28, r12, r7
	add.s r27, r10, r7
	.loc	1 89 25                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:89:25
	addli r6, zero, 192
	.loc	1 81 20                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:81:20
	mod.s r5, r28, r21
	.loc	1 89 25                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:89:25
	mod.s r6, r27, r6
	.loc	1 81 20                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:81:20
	slli r5, r5, 13
	.loc	1 89 25                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:89:25
	slli r23, r6, 12
	.loc	1 81 20                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:81:20
	add.s r11, r5, r22
	beq r25, r14, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 0 is_stmt 0                 # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:0:0
	zext_int2long r[16:17], r4
	.loc	1 81 20                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:81:20
	bneq r25, r1, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 86 25 is_stmt 1               # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:86:25
	sll.d r[5:6], r[16:17], r15
	.loc	1 81 25                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:81:25
	add.ul r[16:17], r[5:6], r[18:19]
	loadli.w r5,  -2832(r30)                # 4-byte Folded Reload
	zext_int2long r[5:6], r5
	setlt.ul r13, r[5:6], r[16:17]
	addli.d r[5:6], r[2:3], 0
	bneq r13, zero, .LBB0_11
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 25 is_stmt 0                # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:0:25
	zext_int2long r[5:6], zero
	j .LBB0_11
.LBB0_19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25 is_stmt 1               # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:89:25
	addli r5, zero, 5
	xwait r14, 0
	xwait r5, 0
	lock zero, zero
	addli r5, zero, 32
	ds_cfg r14, zero, 0
	ds_cfg r5, zero, 1
	addli r5, zero, 3
	ds_cfg r24, zero, 14
	ds_cfg r20, zero, 13
	shuffle_batch r23, r11, r24, 1
	unlock zero
	xsignal r5, 0
	xsignal r15, 0
	j .LBB0_12
.LBB0_20:                               #   in Loop: Header=BB0_15 Depth=2
	addli r6, zero, 255
	.loc	1 86 20                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:86:20
	mod.s r5, r8, r21
	addli r8, r8, 1
	.loc	1 89 25                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:89:25
	mod.s r6, r9, r6
	addli r9, r9, 1
	.loc	1 86 20                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:86:20
	slli r5, r5, 12
	.loc	1 89 25                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:89:25
	slli r11, r6, 12
	.loc	1 86 20                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:86:20
	lui r6, 264
	add.s r13, r5, r6
	addli r5, zero, 7
	beq r25, r5, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_15 Depth=2
	bneq r25, r26, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_15 Depth=2
	addli r11, zero, 7
	addli r5, zero, 17
	xwait r11, 0
	addli r11, r30, -2840
	sll.d r[5:6], r[16:17], r5
	load.d r[16:17], 0(r11)                 # 8-byte Folded Reload
	lock zero, r15
	addli r11, zero, 256
	dma_cfg zero, zero, zero, 0
	add.ul r[5:6], r[16:17], r[5:6]
	dma_cfg zero, r6, zero, 2
	dma_cfg r13, r5, r11, 3
	addli r5, zero, 8192
	dma_cfg r11, r5, r24, 4
	dma_run zero
	unlock r15
	xsignal r26, 0
	.loc	1 89 25                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:89:25
	j .LBB0_13
.LBB0_23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r5, zero, 9
	xwait r26, 0
	addli r20, zero, 64
	xwait r5, 0
	lock zero, zero
	addli r5, zero, 64
	ds_cfg r14, zero, 0
	ds_cfg r5, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r5, zero, 13
	addli r5, zero, 7
	shuffle_coa r11, r13, r24, 2
	unlock zero
	xsignal r5, 0
	addli r5, zero, 8
	xsignal r5, 0
	j .LBB0_13
.LBB0_24:                               #   in Loop: Header=BB0_15 Depth=2
	bneq r25, r15, .LBB0_27
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	addli r5, zero, 8
	xwait r15, 0
	addli r1, zero, 1
	xwait r5, 0
	addli r5, zero, 1
	lock zero, r5
	mm_cfg r20, r24, r20, 0
	mm_cfg r5, r14, r5, 2
	beq r7, zero, .LBB0_28
# %bb.26:                               # %.preheader8
                                        #   in Loop: Header=BB0_15 Depth=2
	loadli.w r5,  -2844(r30)                # 4-byte Folded Reload
	mm_acc r5, r23, r11, 8
	j .LBB0_29
.LBB0_27:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:73:26
	addli r4, r4, 1
	bneq r4, r21, .LBB0_14
	j .LBB0_31
.LBB0_28:                               # %.preheader
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:89:25
	loadli.w r5,  -2844(r30)                # 4-byte Folded Reload
	mm r5, r23, r11, 8
.LBB0_29:                               # %.thread6.thread41
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r5, zero, 5
	unlock r1
	.loc	1 73 26                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:73:26
	addli r4, r4, 1
	.loc	1 89 25                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:89:25
	xsignal r5, 0
	addli r5, zero, 9
	xsignal r5, 0
	bneq r4, r21, .LBB0_14
	j .LBB0_5
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:73:26
	beq r25, r15, .LBB0_5
.LBB0_31:                               # %.thread40
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:101:67
	bneq r25, zero, .LBB0_7
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r2,  -2888(r30)                # 4-byte Folded Reload
	loadli.w r10,  -2884(r30)               # 4-byte Folded Reload
	addli r4, zero, 1984
	addli r13, r30, -2880
	addli r12, zero, 19
	zext_int2long r[4:5], r4
	load.d r[16:17], 0(r13)                 # 8-byte Folded Reload
	zext_int2long r[2:3], r2
	sext_int2long r[10:11], r10
	min.ul r[6:7], r[2:3], r[4:5]
	min.sl r[4:5], r[10:11], r[4:5]
	sll.d r[12:13], r[16:17], r12
	addli.d r[4:5], r[4:5], 64
	addli.d r[6:7], r[6:7], 64
	max.sl r[4:5], r[4:5], r[10:11]
	max.ul r[6:7], r[6:7], r[2:3]
	sub.sl r[4:5], r[4:5], r[10:11]
	load.d r[10:11], 16(r30)
	sub.sl r[2:3], r[6:7], r[2:3]
	zext_int2long r[6:7], r20
	min.ul r[2:3], r[2:3], r[6:7]
	min.sl r[4:5], r[4:5], r[6:7]
	add.ul r[10:11], r[10:11], r[12:13]
	addli r12, r30, -2872
	slli r2, r2, 2
	load.d r[6:7], 0(r12)                   # 8-byte Folded Reload
	add.ul r[6:7], r[10:11], r[6:7]
	addli r10, zero, 10
	xwait r10, 0
	addli r10, zero, 5
	lock zero, r10
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r1, zero, 1
	dma_cfg r7, zero, zero, 2
	loadli.w r3,  -2844(r30)                # 4-byte Folded Reload
	dma_cfg r6, r3, r2, 3
	addli r2, zero, 256
	addli r3, zero, 8192
	dma_cfg r3, r2, r4, 4
	addli r2, zero, 11
	dma_run zero
	unlock r10
	j .LBB0_6
.LBB0_33:                               # %._crit_edge
	.loc	1 22 0                          # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:22:0
	xsignal zero, 0
	bneq r25, zero, .LBB0_35
# %bb.34:
	.loc	1 0 0 is_stmt 0                 # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py:22:0
	addli sp, sp, 2904
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
	.long	2968                            # 0xb98
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
.asciz	"cm5gegk4wrz5ki4tidw47546rfwhjtedwqu7vjfjvsjmbnajbtlg.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/m5" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
