	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/y7" "cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py"
	.loc	1 22 0                          # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4224
	addli r30, sp, 4160
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:73:26
	core_id r19
	loadli.w r27,  32(r30)
	xsignal_mode_cfg r1
	beq r19, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:0:26
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
	loadli.w r1,  -1024(r30)
	loadli.w r24,  -2048(r30)
	loadli.w r8,  -3072(r30)
	loadli.w r28,  -4096(r30)
	addli r10, zero, 16
	addli r9, zero, 5
	addli r13, zero, 4
	addli r15, zero, 2
	addli r16, zero, 255
	addli r18, zero, 7
	addli r23, zero, 6
	addli r21, zero, 32
	addli r22, zero, 64
	addli r17, zero, 128
	addli r14, zero, 3
	addli r5, r30, -4160
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	lui r2, 127
	addli r4, zero, 16383
	lui r3, 1048448
	ori r2, r2, 4095
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	storeli.w r2, -4108(r30)                # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.split17.us
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, r30, -4120
	.loc	1 89 25 is_stmt 1               # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:89:25
	add.s r8, r8, r9
	.loc	1 73 26                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:73:26
	addli r28, r28, 64
	addli r24, r24, 64
	addli r1, r1, 64
	core_id r19
	addli r9, zero, 5
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
.LBB0_6:                                # %.thread93
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:0:26
	addli r4, r30, -4128
	addli.d r[11:12], r[11:12], 1
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	setlt.sl r2, r[11:12], r[2:3]
	beq r2, zero, .LBB0_38
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_17 Depth 2
	div.s r2, r11, r27
	loadli.w r3,  28(r30)
	addli r5, zero, 8
	.loc	1 73 26                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:73:26
	addli r20, r30, -4104
	div.s r2, r2, r3
	.loc	1 53 22 is_stmt 1               # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:53:22
	addli r3, zero, 256
	div.s r6, r2, r3
	.loc	1 54 41                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:54:41
	slli r3, r6, 3
	.loc	1 54 30 is_stmt 0               # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:54:30
	sub.s r4, r10, r3
	.loc	1 54 50                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:54:50
	min.s r7, r4, r5
	.loc	1 55 40 is_stmt 1               # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:55:40
	mod.s r4, r2, r7
	.loc	1 55 34 is_stmt 0               # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:55:34
	add.s r3, r3, r4
	addli r4, zero, 480
	.loc	1 95 15 is_stmt 1               # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:95:15
	zext_int2long r[25:26], r3
	zext_int2long r[4:5], r4
	.loc	1 73 26                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:73:26
	store.d r[4:5], 0(r20)                  # 8-byte Folded Spill
	bneq r19, r13, .LBB0_9
# %bb.8:                                # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 11
	xwait r4, 0
	j .LBB0_14
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:0:26
	addli r4, zero, 1
	beq r19, r4, .LBB0_29
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r19, r15, .LBB0_14
# %bb.11:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 0
.LBB0_12:                               # %.thread.us21
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:89:25
	add.s r3, r8, r2
	add.s r4, r28, r2
	xwait r15, 0
	xwait r9, 0
	lock zero, zero
	.loc	1 73 26                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:73:26
	addli r2, r2, 1
	.loc	1 89 25                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:89:25
	ds_cfg r15, zero, 0
	.loc	1 81 20                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:81:20
	mod.s r3, r3, r16
	.loc	1 89 25                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:89:25
	mod.s r4, r4, r16
	ds_cfg r21, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg r21, zero, 13
	.loc	1 81 20                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:81:20
	slli r3, r3, 12
	.loc	1 89 25                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:89:25
	slli r4, r4, 11
	.loc	1 81 20                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:81:20
	addli r3, r3, 4096
	.loc	1 89 25                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:89:25
	shuffle_batch r4, r3, r10, 1
	unlock zero
	xsignal r14, 0
	xsignal r13, 0
	bneq r2, r22, .LBB0_12
# %bb.13:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:73:26
	addli r24, r24, 64
	addli r1, r1, 64
	.loc	1 89 25                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:89:25
	add.s r28, r28, r2
	add.s r8, r8, r2
	j .LBB0_6
.LBB0_14:                               # %.split.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:0:0
	slli r6, r6, 8
	addli r4, r30, -4136
	slli r3, r3, 5
	sub.s r2, r2, r6
	store.d r[25:26], 0(r4)                 # 8-byte Folded Spill
	addli r4, r30, -4120
	.loc	1 73 26 is_stmt 1               # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:73:26
	storeli.w r3, -4148(r30)                # 4-byte Folded Spill
	addli r25, zero, 0
	addli r26, zero, 5
	.loc	1 0 0 is_stmt 0                 # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:0:0
	div.s r2, r2, r7
	store.d r[11:12], 0(r4)                 # 8-byte Folded Spill
	addli r11, zero, 0
	zext_int2long r[6:7], r2
	slli r2, r2, 5
	sll.d r[6:7], r[6:7], r9
	.loc	1 73 26                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:73:26
	storeli.w r2, -4152(r30)                # 4-byte Folded Spill
	load.d r[2:3], 8(r30)
	sll.d r[4:5], r[6:7], r15
	addli r6, r30, -4144
	addli r7, zero, 8
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	add.ul r[2:3], r[2:3], r[4:5]
	addli r6, zero, 9
	j .LBB0_17
.LBB0_15:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25 is_stmt 1               # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:89:25
	xwait r23, 0
	xwait r6, 0
	lock zero, zero
	ds_cfg r15, zero, 0
	ds_cfg r21, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg r21, zero, 13
	shuffle_coa r27, r20, r10, 2
	unlock zero
	xsignal r18, 0
	xsignal r7, 0
	.loc	1 73 26                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:73:26
	addli r25, r25, 1
	beq r25, r22, .LBB0_27
.LBB0_16:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:89:25
	addli r11, r11, 1
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r14, r1, r11
	add.s r12, r24, r11
	add.s r9, r28, r11
	.loc	1 86 20                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:86:20
	mod.s r4, r14, r16
	.loc	1 89 25                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:89:25
	mod.s r5, r12, r16
	slli r27, r5, 11
	.loc	1 86 20                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:86:20
	slli r4, r4, 11
	lui r5, 256
	add.s r20, r4, r5
	beq r19, r18, .LBB0_15
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:0:20
	bneq r19, r23, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 25                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:86:25
	zext_int2long r[4:5], r25
	.loc	1 86 20                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:86:20
	xwait r18, 0
	lock zero, r13
	addli r27, zero, 128
	addli r17, zero, 128
	dma_cfg zero, zero, zero, 0
	sll.d r[4:5], r[4:5], r10
	add.ul r[4:5], r[2:3], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r20, r4, r27, 3
	addli r4, zero, 4096
	dma_cfg r27, r4, r10, 4
	dma_run zero
	unlock r13
	xsignal r23, 0
	.loc	1 73 26 is_stmt 1               # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:73:26
	addli r25, r25, 1
	bneq r25, r22, .LBB0_16
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:89:25
	bneq r19, r13, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 0 is_stmt 0                 # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:0:0
	mod.s r4, r9, r16
	addli r5, zero, 1
	.loc	1 89 25                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:89:25
	xwait r13, 0
	xwait r7, 0
	lock zero, r5
	mm_cfg r21, r10, r21, 0
	mm_cfg r5, r5, r5, 2
	.loc	1 0 0                           # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:0:0
	slli r6, r4, 11
	.loc	1 89 25                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:89:25
	beq r11, zero, .LBB0_24
# %bb.22:                               # %.preheader8
                                        #   in Loop: Header=BB0_17 Depth=2
	mm_acc zero, r6, r27, 8
	j .LBB0_25
.LBB0_23:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:73:26
	addli r25, r25, 1
	bneq r25, r22, .LBB0_16
	j .LBB0_33
.LBB0_24:                               # %.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:89:25
	mm zero, r6, r27, 8
.LBB0_25:                               # %.thread6.thread90
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r4, zero, 1
	.loc	1 73 26                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:73:26
	addli r25, r25, 1
	addli r6, zero, 9
	.loc	1 89 25                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:89:25
	unlock r4
	xsignal r26, 0
	xsignal r6, 0
	.loc	1 73 26                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:73:26
	bneq r25, r22, .LBB0_16
# %bb.26:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:86:20
	addli r8, r8, 64
	j .LBB0_28
.LBB0_27:                               # %.split17
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r8, r8, 64
	.loc	1 73 26                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:73:26
	bneq r19, r13, .LBB0_34
.LBB0_28:                               # %.thread7
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	.loc	1 101 67                        # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:101:67
	addli r28, r9, 1
	addli r24, r12, 1
	addli r1, r14, 1
	.loc	1 73 26                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:73:26
	xsignal r2, 0
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:0:26
	addli r2, r30, -4120
	addli r6, r30, -4160
	addli r9, zero, 0
	store.d r[11:12], 0(r2)                 # 8-byte Folded Spill
	addli r2, zero, 15
	load.d r[4:5], 0(r6)                    # 8-byte Folded Reload
	sll.d r[2:3], r[25:26], r2
	and.d r[25:26], r[2:3], r[4:5]
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	addli r4, zero, 1024
	.loc	1 81 25 is_stmt 1               # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:81:25
	sub.sl r[11:12], r[6:7], r[11:12]
	.loc	1 81 20 is_stmt 0               # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:81:20
	load.d r[19:20], 0(r30)
	sll.d r[6:7], r[6:7], r15
	addli r14, zero, 3
	zext_int2long r[4:5], r4
	xwait r14, 0
	lock zero, r13
	add.ul r[6:7], r[19:20], r[6:7]
	dma_cfg zero, zero, zero, 0
	.loc	1 81 25                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:81:25
	div.sl r[4:5], r[11:12], r[4:5]
	.loc	1 0 0                           # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:0:0
	add.s r11, r8, r9
	.loc	1 81 25                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:81:25
	addli r12, r30, -4104
	.loc	1 73 26 is_stmt 1               # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:73:26
	addli r9, r9, 1
	.loc	1 81 20                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:81:20
	dma_cfg zero, r7, zero, 2
	.loc	1 81 0 is_stmt 0                # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:81:0
	mod.s r11, r11, r16
	.loc	1 81 25                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:81:25
	load.d r[19:20], 0(r12)                 # 8-byte Folded Reload
	.loc	1 81 0                          # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:81:0
	slli r11, r11, 12
	addli r11, r11, 4096
	.loc	1 81 20                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:81:20
	dma_cfg r11, r6, r22, 3
	.loc	1 81 25                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:81:25
	min.sl r[19:20], r[4:5], r[19:20]
	sub.sl r[4:5], r[19:20], r[4:5]
	.loc	1 81 20                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:81:20
	addli r4, r4, 32
	addli r5, zero, 4096
	dma_cfg r17, r5, r4, 4
	dma_run zero
	unlock r13
	xsignal r15, 0
	.loc	1 73 26 is_stmt 1               # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:73:26
	beq r9, r22, .LBB0_5
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:86:25
	zext_int2long r[6:7], r9
	loadli.w r4,  -4108(r30)                # 4-byte Folded Reload
	sll.d r[6:7], r[6:7], r13
	zext_int2long r[11:12], r4
	.loc	1 81 25                         # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:81:25
	add.ul r[6:7], r[6:7], r[2:3]
	setlt.ul r14, r[11:12], r[6:7]
	addli.d r[11:12], r[25:26], 0
	bneq r14, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:0:25
	zext_int2long r[11:12], zero
	j .LBB0_30
.LBB0_33:                               # %.split17.thread89
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20 is_stmt 1               # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:86:20
	addli r8, r8, 64
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 101 67                        # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:101:67
	addli r28, r9, 1
	addli r24, r12, 1
	addli r1, r14, 1
	beq r19, zero, .LBB0_37
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 67 is_stmt 0                # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:0:67
	addli r2, r30, -4120
	addli r9, zero, 5
.LBB0_36:                               # %.thread93
                                        #   in Loop: Header=BB0_7 Depth=1
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	loadli.w r27,  32(r30)
	addli r14, zero, 3
	j .LBB0_6
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 101 67                        # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:101:67
	loadli.w r2,  -4152(r30)                # 4-byte Folded Reload
	loadli.w r6,  -4148(r30)                # 4-byte Folded Reload
	addli r9, r30, -4104
	addli r4, zero, 992
	addli r14, r30, -4136
	load.d r[11:12], 0(r9)                  # 8-byte Folded Reload
	zext_int2long r[4:5], r4
	load.d r[19:20], 0(r14)                 # 8-byte Folded Reload
	addli r9, zero, 17
	zext_int2long r[2:3], r2
	sext_int2long r[6:7], r6
	min.ul r[4:5], r[2:3], r[4:5]
	min.sl r[11:12], r[6:7], r[11:12]
	sll.d r[19:20], r[19:20], r9
	addli r9, r30, -4144
	addli.d r[4:5], r[4:5], 32
	addli.d r[11:12], r[11:12], 32
	max.ul r[4:5], r[4:5], r[2:3]
	max.sl r[11:12], r[11:12], r[6:7]
	sub.sl r[2:3], r[4:5], r[2:3]
	zext_int2long r[4:5], r21
	sub.sl r[6:7], r[11:12], r[6:7]
	load.d r[11:12], 16(r30)
	min.ul r[2:3], r[2:3], r[4:5]
	min.sl r[4:5], r[6:7], r[4:5]
	load.d r[6:7], 0(r9)                    # 8-byte Folded Reload
	addli r9, zero, 10
	add.ul r[11:12], r[11:12], r[19:20]
	.loc	1 73 26 is_stmt 1               # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:73:26
	core_id r19
	.loc	1 101 67                        # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:101:67
	xwait r9, 0
	addli r9, zero, 5
	slli r2, r2, 2
	add.ul r[6:7], r[11:12], r[6:7]
	addli r11, zero, 1
	lock zero, r9
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r11, zero, 1
	dma_cfg r7, zero, zero, 2
	dma_cfg r6, zero, r2, 3
	addli r2, zero, 4096
	dma_cfg r2, r17, r4, 4
	addli r2, zero, 11
	dma_run zero
	unlock r9
	xsignal r2, 0
	addli r2, r30, -4120
	j .LBB0_36
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0                          # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:22:0
	xsignal zero, 0
	bneq r19, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py:22:0
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
.asciz	"cy7b725okki6te37b3wyob7ue76pwgk2go7ez4roxmq6bs3vkeha.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/y7" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
