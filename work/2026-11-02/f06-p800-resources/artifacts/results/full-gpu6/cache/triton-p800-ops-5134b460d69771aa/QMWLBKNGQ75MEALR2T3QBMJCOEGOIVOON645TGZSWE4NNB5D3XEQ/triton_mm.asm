	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/ic" "cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py"
	.loc	1 22 0                          # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2600
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:73:26
	core_id r13
	addli r30, sp, 2536
	xsignal_mode_cfg r1
	beq r13, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -512(r30)
	storeli.w zero, -1156(r30)
	storeli.w zero, -1672(r30)
	storeli.w zero, -2444(r30)
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
	addli r4, r30, -2528
	sext_int2long r[5:6], r1
	loadli.w r8,  -512(r30)
	loadli.w r9,  -1156(r30)
	loadli.w r12,  -1672(r30)
	addli r10, zero, 128
	addli r14, zero, 6
	addli r24, zero, 5
	addli r15, zero, 4
	addli r17, zero, 2
	lui r22, 10
	addli r23, zero, 32
	addli r21, zero, 1
	addli r16, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r2, zero, 16383
	addli r4, r30, -2536
	loadli.w r3,  -2444(r30)
	lui r1, 1048448
	store.d r[1:2], 0(r4)                   # 8-byte Folded Spill
	lui r1, 127
	ori r1, r1, 4095
	storeli.w r1, -2460(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:73:26
	addli r1, zero, 10
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0                           # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -2488
	addli r3, r30, -2528
	loadli.w r16,  -2492(r30)               # 4-byte Folded Reload
	addli r12, r27, 1
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	addli r3, r28, 1
	addli.d r[5:6], r[5:6], 1
	setlt.sl r1, r[5:6], r[1:2]
	beq r1, zero, .LBB0_33
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	.loc	1 73 26                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:73:26
	bneq r13, r15, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26                          # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:0:26
	loadli.w r1,  32(r30)
	addli r2, r30, -2488
	addli r7, zero, 16
	addli r11, zero, 8
	addli r4, zero, 0
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	loadli.w r2,  28(r30)
	div.s r1, r5, r1
	mod.s r6, r16, r24
	addli r16, r16, 1
	storeli.w r16, -2492(r30)               # 4-byte Folded Spill
	div.s r1, r1, r2
	slli r6, r6, 13
	storeli.w r6, -2476(r30)                # 4-byte Folded Spill
	div.s r2, r1, r10
	slli r5, r2, 3
	slli r2, r2, 7
	sub.s r7, r7, r5
	sub.s r2, r1, r2
	min.s r7, r7, r11
	mod.s r1, r1, r7
	div.s r2, r2, r7
	addli r7, r30, -2504
	add.s r1, r5, r1
	slli r5, r2, 6
	storeli.w r5, -2520(r30)                # 4-byte Folded Spill
	zext_int2long r[5:6], r2
	slli r2, r1, 5
	zext_int2long r[18:19], r1
	addli r1, zero, 15
	storeli.w r2, -2516(r30)                # 4-byte Folded Spill
	addli r2, r30, -2512
	sll.d r[5:6], r[5:6], r14
	store.d r[18:19], 0(r2)                 # 8-byte Folded Spill
	sll.d r[18:19], r[18:19], r1
	.loc	1 73 26                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:73:26
	load.d r[1:2], 8(r30)
	sll.d r[5:6], r[5:6], r17
	store.d r[5:6], 0(r7)                   # 8-byte Folded Spill
	addli r7, zero, 0
	add.ul r[1:2], r[1:2], r[5:6]
	addli r5, r30, -2472
	store.d r[1:2], 0(r5)                   # 8-byte Folded Spill
	addli r5, r30, -2536
	load.d r[1:2], 0(r5)                    # 8-byte Folded Reload
	addli r5, r30, -2456
	and.d r[1:2], r[18:19], r[1:2]
	store.d r[1:2], 0(r5)                   # 8-byte Folded Spill
	j .LBB0_13
.LBB0_11:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 26                          # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:0:26
	addli r1, zero, 1024
	.loc	1 81 25 is_stmt 1               # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:81:25
	sub.sl r[5:6], r[25:26], r[5:6]
	.loc	1 81 20 is_stmt 0               # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:81:20
	addli r16, zero, 3
	sll.d r[25:26], r[25:26], r17
	zext_int2long r[13:14], r1
	load.d r[1:2], 0(r30)
	xwait r16, 0
	lock zero, r15
	dma_cfg zero, zero, zero, 0
	.loc	1 81 25                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:81:25
	div.sl r[5:6], r[5:6], r[13:14]
	addli r13, zero, 480
	.loc	1 81 20                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:81:20
	add.ul r[25:26], r[1:2], r[25:26]
	zext_int2long r[13:14], r13
	dma_cfg zero, r26, zero, 2
	dma_cfg r11, r25, r10, 3
	.loc	1 81 25                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:81:25
	min.sl r[13:14], r[5:6], r[13:14]
	sub.sl r[5:6], r[13:14], r[5:6]
	addli r14, zero, 6
	.loc	1 73 26 is_stmt 1               # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:73:26
	core_id r13
	.loc	1 81 20                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:81:20
	addli r5, r5, 32
	addli r6, zero, 4096
	dma_cfg r10, r6, r5, 4
	dma_run zero
	unlock r15
	xsignal r17, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 89 25                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:89:25
	addli r9, r9, 1
	.loc	1 86 20                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:86:20
	addli r8, r8, 1
	.loc	1 73 26                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:73:26
	addli r4, r4, 1
	bneq r4, r23, .LBB0_23
	j .LBB0_30
.LBB0_13:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:86:25
	add.s r27, r12, r7
	add.s r28, r3, r7
	.loc	1 89 25                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:89:25
	addli r6, zero, 192
	.loc	1 81 20                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:81:20
	mod.s r5, r27, r10
	.loc	1 89 25                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:89:25
	mod.s r6, r28, r6
	.loc	1 81 20                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:81:20
	slli r5, r5, 12
	.loc	1 89 25                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:89:25
	slli r20, r6, 12
	.loc	1 81 20                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:81:20
	add.s r11, r5, r22
	beq r13, r17, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 0 is_stmt 0                 # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:0:0
	zext_int2long r[25:26], r4
	.loc	1 73 26 is_stmt 1               # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:73:26
	core_id r16
	.loc	1 81 20                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:81:20
	bneq r16, r21, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 86 25                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:86:25
	sll.d r[5:6], r[25:26], r24
	addli r1, r30, -2456
	.loc	1 81 25                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:81:25
	add.ul r[25:26], r[5:6], r[18:19]
	loadli.w r5,  -2460(r30)                # 4-byte Folded Reload
	zext_int2long r[5:6], r5
	setlt.ul r13, r[5:6], r[25:26]
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	bneq r13, zero, .LBB0_11
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 25 is_stmt 0                # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:0:25
	zext_int2long r[5:6], zero
	j .LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 89 25 is_stmt 1               # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:89:25
	xwait r17, 0
	xwait r24, 0
	lock zero, zero
	addli r5, zero, 3
	ds_cfg r17, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r23, zero, 13
	shuffle_batch r20, r11, r23, 1
	unlock zero
	xsignal r5, 0
	xsignal r15, 0
	j .LBB0_12
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 86 20                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:86:20
	addli r1, zero, 127
	mod.s r5, r8, r1
	.loc	1 89 25                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:89:25
	addli r1, zero, 160
	.loc	1 86 20                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:86:20
	addli r8, r8, 1
	.loc	1 89 25                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:89:25
	mod.s r6, r9, r1
	.loc	1 86 20                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:86:20
	lui r1, 138
	.loc	1 89 25                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:89:25
	addli r9, r9, 1
	.loc	1 86 20                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:86:20
	slli r5, r5, 13
	add.s r13, r5, r1
	.loc	1 89 25                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:89:25
	slli r11, r6, 13
	.loc	1 86 20                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:86:20
	addli r1, zero, 7
	beq r16, r1, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_13 Depth=2
	bneq r16, r14, .LBB0_24
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 7
	addli r11, r30, -2472
	addli r5, zero, 17
	xwait r1, 0
	load.d r[1:2], 0(r11)                   # 8-byte Folded Reload
	sll.d r[5:6], r[25:26], r5
	lock zero, r15
	addli r11, zero, 256
	dma_cfg zero, zero, zero, 0
	add.ul r[5:6], r[1:2], r[5:6]
	dma_cfg zero, r6, zero, 2
	dma_cfg r13, r5, r11, 3
	addli r5, zero, 4096
	dma_cfg r11, r5, r23, 4
	dma_run zero
	unlock r15
	xsignal r14, 0
	.loc	1 73 26                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:73:26
	j .LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 89 25                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:89:25
	addli r1, zero, 9
	xwait r14, 0
	addli r5, zero, 64
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 7
	ds_cfg r17, zero, 0
	ds_cfg r5, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r5, zero, 13
	addli r5, zero, 8
	shuffle_coa r11, r13, r23, 2
	unlock zero
	xsignal r1, 0
	xsignal r5, 0
.LBB0_22:                               # %.thread6
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 73 26                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:73:26
	core_id r13
	addli r4, r4, 1
	beq r4, r23, .LBB0_30
.LBB0_23:                               # %.backedge
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 89 25                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:89:25
	addli r7, r7, 1
	.loc	1 86 25                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:86:25
	j .LBB0_13
.LBB0_24:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 73 26                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:73:26
	core_id r13
	.loc	1 89 25                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:89:25
	bneq r13, r15, .LBB0_27
# %bb.25:                               #   in Loop: Header=BB0_13 Depth=2
	addli r5, zero, 8
	addli r6, zero, 1
	xwait r15, 0
	addli r21, zero, 1
	xwait r5, 0
	addli r5, zero, 64
	lock zero, r6
	mm_cfg r5, r23, r23, 0
	mm_cfg r17, r17, r6, 2
	beq r7, zero, .LBB0_28
# %bb.26:                               # %.preheader8
                                        #   in Loop: Header=BB0_13 Depth=2
	loadli.w r1,  -2476(r30)                # 4-byte Folded Reload
	mm_acc r1, r20, r11, 8
	j .LBB0_29
.LBB0_27:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 73 26                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:73:26
	addli r4, r4, 1
	bneq r4, r23, .LBB0_23
	j .LBB0_31
.LBB0_28:                               # %.preheader
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 89 25                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:89:25
	loadli.w r1,  -2476(r30)                # 4-byte Folded Reload
	mm r1, r20, r11, 8
.LBB0_29:                               # %.thread6.thread42
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 73 26                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:73:26
	addli r4, r4, 1
	.loc	1 89 25                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:89:25
	addli r1, zero, 9
	unlock r21
	xsignal r24, 0
	xsignal r1, 0
	bneq r4, r23, .LBB0_23
	j .LBB0_5
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:73:26
	beq r13, r15, .LBB0_5
.LBB0_31:                               # %.thread41
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:101:67
	bneq r13, zero, .LBB0_7
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -2520(r30)                # 4-byte Folded Reload
	addli r3, zero, 960
	loadli.w r5,  -2516(r30)                # 4-byte Folded Reload
	addli r7, zero, 480
	load.d r[18:19], 16(r30)
	addli r24, zero, 5
	zext_int2long r[3:4], r3
	zext_int2long r[11:12], r7
	addli r7, zero, 64
	zext_int2long r[1:2], r1
	sext_int2long r[5:6], r5
	min.ul r[3:4], r[1:2], r[3:4]
	min.sl r[11:12], r[5:6], r[11:12]
	addli.d r[3:4], r[3:4], 64
	max.ul r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	addli.d r[3:4], r[11:12], 32
	zext_int2long r[11:12], r7
	min.ul r[1:2], r[1:2], r[11:12]
	max.sl r[3:4], r[3:4], r[5:6]
	addli r11, r30, -2512
	sub.sl r[3:4], r[3:4], r[5:6]
	load.d r[6:7], 0(r11)                   # 8-byte Folded Reload
	addli r5, zero, 17
	zext_int2long r[11:12], r23
	slli r1, r1, 2
	min.sl r[3:4], r[3:4], r[11:12]
	sll.d r[5:6], r[6:7], r5
	addli r7, r30, -2504
	load.d r[11:12], 0(r7)                  # 8-byte Folded Reload
	addli r7, zero, 10
	add.ul r[5:6], r[18:19], r[5:6]
	xwait r7, 0
	addli r7, zero, 5
	add.ul r[5:6], r[5:6], r[11:12]
	lock zero, r7
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r21, zero, 1
	dma_cfg r6, zero, zero, 2
	loadli.w r2,  -2476(r30)                # 4-byte Folded Reload
	dma_cfg r5, r2, r1, 3
	addli r1, zero, 256
	addli r2, zero, 4096
	dma_cfg r2, r1, r3, 4
	addli r1, zero, 11
	dma_run zero
	unlock r7
	j .LBB0_6
.LBB0_33:                               # %._crit_edge
	.loc	1 22 0                          # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:22:0
	xsignal zero, 0
	bneq r13, zero, .LBB0_35
# %bb.34:
	.loc	1 0 0 is_stmt 0                 # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py:22:0
	addli sp, sp, 2536
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
	.long	2600                            # 0xa28
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
.asciz	"cicsvhimpxgmmjrz6hc3vtnn2eadjhe2umu7lcjfywqdhsgg55ub.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/ic" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
