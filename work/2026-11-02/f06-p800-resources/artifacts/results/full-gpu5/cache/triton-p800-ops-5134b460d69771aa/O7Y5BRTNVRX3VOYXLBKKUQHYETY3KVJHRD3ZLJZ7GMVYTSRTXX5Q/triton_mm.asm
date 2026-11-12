	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/v3" "cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py"
	.loc	1 22 0                          # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2808
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:73:26
	core_id r2
	addli r30, sp, 2744
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -504(r30)
	storeli.w zero, -1148(r30)
	storeli.w zero, -1656(r30)
	storeli.w zero, -2680(r30)
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
	sext_int2long r[3:4], r3
	addli r2, r30, -2712
	loadli.w r8,  -504(r30)
	loadli.w r9,  -1148(r30)
	loadli.w r10,  -1656(r30)
	loadli.w r5,  -2680(r30)
	sext_int2long r[6:7], r1
	addli r12, zero, 1
	addli r14, zero, 7
	addli r15, zero, 4
	addli r18, zero, 160
	addli r19, zero, 125
	lui r20, 142
	addli r21, zero, 6
	addli r23, zero, 3
	addli r24, zero, 128
	addli r25, zero, 32
	addli r22, zero, 5
	addli r28, zero, 126
	addli r26, zero, 2
	storeli.w zero, -2684(r30)              # 4-byte Folded Spill
	store.d r[3:4], 0(r2)                   # 8-byte Folded Spill
	addli r3, zero, 64
	j .LBB0_9
.LBB0_5:                                # %.split17.thread89
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:86:20
	addli r10, r10, 2
.LBB0_6:                                #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:0:20
	addli r22, zero, 5
	addli r28, zero, 126
	addli r26, zero, 2
	beq r1, zero, .LBB0_32
.LBB0_7:                                # %.thread92
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, r30, -2696
.LBB0_8:                                # %.thread92
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[6:7], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2712
	addli.d r[6:7], r[6:7], 1
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	setlt.sl r4, r[6:7], r[4:5]
	loadli.w r5,  -2684(r30)                # 4-byte Folded Reload
	addli r5, r5, 1
	storeli.w r5, -2684(r30)                # 4-byte Folded Spill
	addli r5, r27, 0
	beq r4, zero, .LBB0_35
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	loadli.w r4,  32(r30)
	addli r1, r30, -2696
	store.d r[6:7], 0(r1)                   # 8-byte Folded Spill
	div.s r6, r6, r4
	loadli.w r4,  28(r30)
	div.s r7, r6, r4
	.loc	1 53 22 is_stmt 1               # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:53:22
	addli r4, zero, 16
	div.s r11, r7, r4
	.loc	1 54 50                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:54:50
	addli r4, zero, 8
	.loc	1 54 41 is_stmt 0               # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:54:41
	slli r6, r11, 3
	.loc	1 54 30                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:54:30
	sub.s r13, r12, r6
	.loc	1 54 50                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:54:50
	min.s r17, r13, r4
	.loc	1 73 26 is_stmt 1               # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:73:26
	addli r4, r30, -2704
	.loc	1 55 40                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:55:40
	mod.s r13, r7, r17
	.loc	1 55 34 is_stmt 0               # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:55:34
	add.s r6, r6, r13
	.loc	1 95 15 is_stmt 1               # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:95:15
	zext_int2long r[1:2], r6
	.loc	1 73 26                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:73:26
	store.d r[1:2], 0(r4)                   # 8-byte Folded Spill
	core_id r1
	bneq r1, r15, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r4, zero, 11
	xwait r4, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:0:26
	beq r1, r12, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r1, r26, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r6, zero, 1
	addli r4, zero, 255
	lui r13, 16
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:81:20
	mod.s r7, r10, r28
	.loc	1 89 25                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:89:25
	mod.s r11, r5, r4
	xwait r26, 0
	xwait r22, 0
	lock zero, zero
	addli r5, r5, 1
	.loc	1 81 20                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:81:20
	addli r10, r10, 1
	.loc	1 89 25                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:89:25
	ds_cfg r23, zero, 0
	ds_cfg r3, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r25, zero, 13
	.loc	1 81 20                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:81:20
	slli r7, r7, 12
	.loc	1 89 25                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:89:25
	slli r11, r11, 11
	.loc	1 81 20                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:81:20
	add.s r7, r7, r13
	.loc	1 89 25                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:89:25
	shuffle_batch r11, r7, r25, 1
	.loc	1 73 26                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:73:26
	andi r7, r6, 1
	addli r6, zero, 0
	.loc	1 89 25                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:89:25
	unlock zero
	xsignal r23, 0
	xsignal r15, 0
	bneq r7, zero, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:73:26
	addli r9, r9, 2
	addli r8, r8, 2
	addli r27, r5, 0
	j .LBB0_7
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:0:26
	slli r11, r11, 4
	slli r2, r6, 5
	loadli.w r4,  -2684(r30)                # 4-byte Folded Reload
	addli r16, zero, 0
	sub.s r7, r7, r11
	storeli.w r2, -2728(r30)                # 4-byte Folded Spill
	mod.s r11, r4, r15
	div.s r7, r7, r17
	slli r17, r11, 14
	zext_int2long r[26:27], r7
	slli r2, r7, 7
	sll.d r[27:28], r[26:27], r14
	addli r26, zero, 1
	storeli.w r2, -2736(r30)                # 4-byte Folded Spill
	addli r2, r30, -2720
	store.d r[27:28], 0(r2)                 # 8-byte Folded Spill
	.loc	1 73 26                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:73:26
	sll.d r[6:7], r[27:28], r26
	load.d r[27:28], 8(r30)
	addli r2, zero, 256
	add.ul r[6:7], r[27:28], r[6:7]
	addli r28, zero, 0
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25 is_stmt 1               # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:89:25
	addli r4, zero, 9
	xwait r21, 0
	xwait r4, 0
	lock zero, zero
	addli r4, zero, 8
	ds_cfg r23, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r22, r11, r25, 2
	unlock zero
	xsignal r14, 0
	xsignal r4, 0
	.loc	1 73 26                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:73:26
	andi r4, r26, 1
	beq r4, zero, .LBB0_28
.LBB0_18:                               # %.split.backedge
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 26 is_stmt 0                # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:0:26
	addli r26, zero, 0
	.loc	1 89 25 is_stmt 1               # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:89:25
	addli r28, r28, 1
	lui r16, 4
	addli r5, r27, 0
.LBB0_19:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 86 20                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:86:20
	mod.s r11, r8, r19
	.loc	1 89 25                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:89:25
	mod.s r13, r9, r18
	addli r27, r5, 1
	addli r9, r9, 1
	.loc	1 86 20                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:86:20
	addli r8, r8, 1
	slli r11, r11, 13
	.loc	1 89 25                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:89:25
	slli r22, r13, 13
	.loc	1 86 20                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:86:20
	add.s r11, r11, r20
	beq r1, r14, .LBB0_17
# %bb.20:                               # %.split
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 20 is_stmt 0                # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:0:20
	bneq r1, r21, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 86 20                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:86:20
	zext_int2long r[4:5], r16
	xwait r14, 0
	lock zero, r15
	dma_cfg r12, r12, zero, 0
	add.ul r[4:5], r[6:7], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r11, r4, r2, 3
	addli r4, zero, 512
	dma_cfg r2, r4, r25, 4
	dma_run zero
	unlock r15
	xsignal r21, 0
	.loc	1 73 26 is_stmt 1               # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:73:26
	andi r4, r26, 1
	bneq r4, zero, .LBB0_18
	j .LBB0_28
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 26 is_stmt 0                # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:0:26
	andi r26, r26, 1
	.loc	1 89 25 is_stmt 1               # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:89:25
	bneq r1, r15, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 25 is_stmt 0                # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:0:25
	addli r4, zero, 255
	addli r11, zero, 1
	addli r16, zero, 1
	addli r13, zero, 0
	.loc	1 89 25                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:89:25
	xwait r15, 0
	mod.s r4, r5, r4
	slli r5, r4, 11
	addli r4, zero, 8
	xwait r4, 0
	beq r28, zero, .LBB0_25
.LBB0_24:                               # %.preheader8
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r4, r13, 12
	slli r13, r13, 8
	lock zero, r11
	mm_cfg r3, r25, r25, 0
	or r4, r4, r22
	or r13, r13, r17
	mm_cfg r11, r15, r11, 2
	mm_acc r13, r5, r4, 5
	andi r4, r16, 1
	addli r13, zero, 1
	addli r16, zero, 0
	unlock r11
	bneq r4, zero, .LBB0_24
	j .LBB0_26
.LBB0_25:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r4, r13, 12
	slli r13, r13, 8
	lock zero, r11
	mm_cfg r3, r25, r25, 0
	or r4, r4, r22
	or r13, r13, r17
	mm_cfg r11, r15, r11, 2
	mm r13, r5, r4, 5
	andi r4, r16, 1
	addli r13, zero, 1
	addli r16, zero, 0
	unlock r11
	bneq r4, zero, .LBB0_25
.LBB0_26:                               # %.thread6.thread90
                                        #   in Loop: Header=BB0_19 Depth=2
	addli r4, zero, 5
	xsignal r4, 0
	addli r4, zero, 9
	xsignal r4, 0
	bneq r26, zero, .LBB0_18
	j .LBB0_33
.LBB0_27:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 25                          # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:0:25
	bneq r26, zero, .LBB0_18
	j .LBB0_5
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:86:20
	addli r10, r10, 2
	.loc	1 73 26                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:73:26
	bneq r1, r15, .LBB0_6
	j .LBB0_34
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:0:26
	addli r6, r30, -2704
	addli r4, zero, 12
	load.d r[16:17], 0(r30)
	load.d r[1:2], 0(r6)                    # 8-byte Folded Reload
	sll.d r[6:7], r[1:2], r4
	lui r4, 16
	add.ul r[6:7], r[16:17], r[6:7]
	addli r16, zero, 1
	addli r17, zero, 0
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:81:20
	mod.s r11, r10, r28
	.loc	1 86 25                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:86:25
	zext_int2long r[26:27], r17
	.loc	1 81 20                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:81:20
	xwait r23, 0
	lock zero, r15
	addli r17, zero, 32
	addli r10, r10, 1
	dma_cfg r12, r12, zero, 0
	sll.d r[26:27], r[26:27], r12
	add.ul r[26:27], r[6:7], r[26:27]
	slli r11, r11, 12
	dma_cfg zero, r27, zero, 2
	add.s r11, r11, r4
	dma_cfg r11, r26, r3, 3
	.loc	1 73 26                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:73:26
	andi r11, r16, 1
	addli r26, zero, 2
	addli r16, zero, 0
	.loc	1 81 20                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:81:20
	dma_cfg r24, r24, r17, 4
	dma_run zero
	unlock r15
	xsignal r26, 0
	.loc	1 73 26                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:73:26
	bneq r11, zero, .LBB0_30
# %bb.31:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r27, r5, 2
	addli r9, r9, 2
	addli r8, r8, 2
	j .LBB0_7
.LBB0_32:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:101:67
	loadli.w r1,  -2736(r30)                # 4-byte Folded Reload
	addli r4, r30, -2736
	addli r11, r30, -2728
	zext_int2long r[6:7], r1
	zext_int2long r[1:2], r24
	store.d r[1:2], 0(r4)                   # 8-byte Folded Spill
	min.ul r[1:2], r[6:7], r[1:2]
	addli r4, r30, -2744
	store.d r[1:2], 0(r4)                   # 8-byte Folded Spill
	loadli.w r1,  -2728(r30)                # 4-byte Folded Reload
	sext_int2long r[4:5], r1
	zext_int2long r[1:2], zero
	store.d r[1:2], 0(r11)                  # 8-byte Folded Spill
	addli r11, r30, -2744
	load.d r[1:2], 0(r11)                   # 8-byte Folded Reload
	addli.d r[1:2], r[1:2], 128
	store.d r[1:2], 0(r11)                  # 8-byte Folded Spill
	addli r11, r30, -2728
	load.d r[1:2], 0(r11)                   # 8-byte Folded Reload
	min.sl r[1:2], r[4:5], r[1:2]
	store.d r[1:2], 0(r11)                  # 8-byte Folded Spill
	addli r11, r30, -2744
	load.d r[1:2], 0(r11)                   # 8-byte Folded Reload
	max.ul r[1:2], r[1:2], r[6:7]
	store.d r[1:2], 0(r11)                  # 8-byte Folded Spill
	addli r11, r30, -2728
	load.d r[1:2], 0(r11)                   # 8-byte Folded Reload
	addli.d r[1:2], r[1:2], 32
	store.d r[1:2], 0(r11)                  # 8-byte Folded Spill
	addli r11, r30, -2744
	load.d r[1:2], 0(r11)                   # 8-byte Folded Reload
	addli r11, r30, -2728
	sub.sl r[6:7], r[1:2], r[6:7]
	load.d r[1:2], 0(r11)                   # 8-byte Folded Reload
	addli r11, r30, -2744
	max.sl r[1:2], r[1:2], r[4:5]
	store.d r[1:2], 0(r11)                  # 8-byte Folded Spill
	addli r11, r30, -2736
	load.d r[1:2], 0(r11)                   # 8-byte Folded Reload
	addli r11, r30, -2704
	min.ul r[1:2], r[6:7], r[1:2]
	addli r6, r30, -2728
	store.d r[1:2], 0(r6)                   # 8-byte Folded Spill
	addli r6, r30, -2744
	load.d r[1:2], 0(r6)                    # 8-byte Folded Reload
	sub.sl r[1:2], r[1:2], r[4:5]
	addli r4, r30, -2736
	store.d r[1:2], 0(r4)                   # 8-byte Folded Spill
	addli r1, r30, -2704
	addli r4, zero, 14
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	zext_int2long r[1:2], r25
	sll.d r[4:5], r[5:6], r4
	addli r6, r30, -2704
	store.d r[1:2], 0(r6)                   # 8-byte Folded Spill
	load.d r[6:7], 16(r30)
	add.ul r[1:2], r[6:7], r[4:5]
	addli r4, r30, -2744
	addli r6, r30, -2736
	store.d r[1:2], 0(r4)                   # 8-byte Folded Spill
	addli r4, r30, -2720
	load.d r[1:2], 0(r4)                    # 8-byte Folded Reload
	sll.d r[4:5], r[1:2], r12
	load.d r[1:2], 0(r6)                    # 8-byte Folded Reload
	load.d r[6:7], 0(r11)                   # 8-byte Folded Reload
	addli r11, r30, -2744
	min.sl r[6:7], r[1:2], r[6:7]
	load.d r[1:2], 0(r11)                   # 8-byte Folded Reload
	addli r11, zero, 10
	xwait r11, 0
	lock zero, r22
	addli r11, r30, -2728
	dma_cfg r12, zero, zero, 0
	add.ul r[4:5], r[1:2], r[4:5]
	dma_cfg zero, r12, zero, 1
	load.d r[1:2], 0(r11)                   # 8-byte Folded Reload
	dma_cfg r5, zero, zero, 2
	slli r11, r1, 2
	dma_cfg r4, r17, r11, 3
	addli r4, zero, 512
	dma_cfg r4, r4, r6, 4
	addli r4, zero, 11
	dma_run zero
	unlock r22
	xsignal r4, 0
	j .LBB0_7
.LBB0_33:                               # %.split17.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:86:20
	addli r10, r10, 2
.LBB0_34:                               # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:73:26
	addli r4, zero, 10
	addli r1, r30, -2696
	addli r22, zero, 5
	addli r28, zero, 126
	addli r26, zero, 2
	xsignal r4, 0
	j .LBB0_8
.LBB0_35:                               # %._crit_edge
	.loc	1 22 0                          # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:22:0
	core_id r1
	xsignal zero, 0
	bneq r1, zero, .LBB0_37
# %bb.36:
	.loc	1 0 0 is_stmt 0                 # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py:22:0
	addli sp, sp, 2744
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
	.long	2808                            # 0xaf8
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
.asciz	"cv3a3p4brt75ylifteo6knk3ib4viit7i47dwikwxvq7x5tyhvpv.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/v3" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
