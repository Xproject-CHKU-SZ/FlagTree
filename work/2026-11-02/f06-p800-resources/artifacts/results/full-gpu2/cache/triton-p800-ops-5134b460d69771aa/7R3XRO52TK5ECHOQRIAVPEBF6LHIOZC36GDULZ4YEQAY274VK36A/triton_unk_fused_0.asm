	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/native-activation-kdrsd2gg" "relu-candidate.mlir"
	.loc	1 2 0                           # relu-candidate.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2600
	addli r1, zero, 1
.Ltmp0:
	.loc	1 48 11 prologue_end            # relu-candidate.mlir:48:11
	core_id r2
	addli r30, sp, 2536
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
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
	addli r1, zero, 13
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 15
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
.LBB0_3:
	loadli.w r1,  32(r30)
	loadli.w r3,  36(r30)
	load_param_i r5, 1
	loadli.w r4,  40(r30)
	storeli.w zero, -20(r30)
	storeli.w zero, -40(r30)
	storeli.w zero, -544(r30)
	storeli.w zero, -1188(r30)
	storeli.w zero, -1692(r30)
	storeli.w zero, -2464(r30)
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
	ble.s r3, r1, .LBB0_36
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	addli r5, r30, -2536
	loadli.w r15,  -20(r30)
	loadli.w r19,  -40(r30)
	loadli.w r10,  -544(r30)
	loadli.w r11,  -1188(r30)
	sext_int2long r[6:7], r1
	addli r12, zero, 32
	addli r13, zero, 1
	addli r25, zero, 6
	addli r16, zero, 4
	addli r18, zero, 2
	addli r20, zero, 192
	addli r21, zero, 125
	lui r22, 8
	addli r24, zero, 3
	addli r27, zero, 256
	addli r1, zero, 7
	addli r17, zero, 0
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	loadli.w r3,  -1692(r30)
	loadli.w r5,  -2464(r30)
	j .LBB0_7
.LBB0_5:                                # %.thread50
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, r30, -2472
	.loc	1 76 11 is_stmt 1               # relu-candidate.mlir:76:11
	load.d r[7:8], 16(r30)
	store.d r[4:5], 0(r3)                   # 8-byte Folded Spill
	addli r5, r30, -2512
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	addli r5, r30, -2472
	add.ul r[7:8], r[7:8], r[3:4]
	addli r3, zero, 13
	xwait r3, 0
	lock zero, r16
	dma_cfg zero, zero, zero, 0
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	dma_cfg zero, r8, zero, 2
	slli r3, r3, 2
	dma_cfg r6, r7, r3, 3
	addli r3, zero, 12
	dma_cfg r27, r27, r13, 4
	dma_run zero
	unlock r16
	xsignal r3, 0
	loadli.w r15,  -2476(r30)               # 4-byte Folded Reload
.LBB0_6:                                # %.thread52
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	addli r3, r30, -2488
	addli r5, r30, -2536
	loadli.w r17,  -2492(r30)               # 4-byte Folded Reload
	addli r19, r19, 1
	.loc	1 77 11 is_stmt 1               # relu-candidate.mlir:77:11
	addli r15, r15, 1
	load.d r[6:7], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	addli r5, r25, 1
	addli r25, zero, 6
	addli.d r[6:7], r[6:7], 1
	setlt.sl r4, r[6:7], r[3:4]
	addli r3, r14, 1
	beq r4, zero, .LBB0_36
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_32 Depth 2
	storeli.w r19, -2480(r30)               # 4-byte Folded Spill
	storeli.w r15, -2476(r30)               # 4-byte Folded Spill
	.loc	1 48 11 is_stmt 1               # relu-candidate.mlir:48:11
	bneq r2, r16, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 11
	xwait r4, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r4,  40(r30)
	addli r8, r30, -2488
	addli r14, zero, 8
	addli r23, zero, 0
	addli r28, zero, 6
	addli r26, zero, 1
	store.d r[6:7], 0(r8)                   # 8-byte Folded Spill
	mod.s r8, r17, r16
	addli r17, r17, 1
	div.s r4, r6, r4
	loadli.w r6,  36(r30)
	storeli.w r17, -2492(r30)               # 4-byte Folded Spill
	slli r17, r8, 13
	div.s r4, r4, r6
	div.s r6, r4, r12
	slli r7, r6, 3
	slli r6, r6, 5
	sub.s r9, r13, r7
	sub.s r6, r4, r6
	min.s r9, r9, r14
	mod.s r4, r4, r9
	div.s r6, r6, r9
	add.s r4, r7, r4
	slli r7, r6, 6
	storeli.w r7, -2504(r30)                # 4-byte Folded Spill
	zext_int2long r[6:7], r6
	slli r8, r4, 5
	sll.d r[6:7], r[6:7], r25
	storeli.w r8, -2524(r30)                # 4-byte Folded Spill
	zext_int2long r[8:9], r4
	addli r4, zero, 13
	.loc	1 48 11                         # relu-candidate.mlir:48:11
	sll.d r[14:15], r[6:7], r18
	addli r6, r30, -2520
	store.d r[8:9], 0(r6)                   # 8-byte Folded Spill
	sll.d r[6:7], r[8:9], r4
	load.d r[8:9], 8(r30)
	addli r4, r30, -2512
	store.d r[14:15], 0(r4)                 # 8-byte Folded Spill
	addli r4, r30, -2472
	add.ul r[8:9], r[8:9], r[14:15]
	store.d r[8:9], 0(r4)                   # 8-byte Folded Spill
	load.d r[8:9], 0(r30)
	addli r4, zero, 0
	add.ul r[8:9], r[8:9], r[6:7]
	j .LBB0_12
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 63 13 is_stmt 1               # relu-candidate.mlir:63:13
	addli r6, zero, 5
	xwait r18, 0
	xwait r6, 0
	lock zero, zero
	ds_cfg r18, zero, 0
	ds_cfg r12, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg r12, zero, 13
	shuffle_batch r19, r15, r12, 1
	unlock zero
	xsignal r24, 0
	xsignal r16, 0
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_12 Depth=2
	addli r11, r11, 1
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	addli r10, r10, 1
	.loc	1 48 11                         # relu-candidate.mlir:48:11
	andi r6, r26, 1
	bneq r6, zero, .LBB0_20
	j .LBB0_27
.LBB0_12:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 61 13                         # relu-candidate.mlir:61:13
	add.s r14, r3, r4
	add.s r25, r5, r4
	.loc	1 57 13                         # relu-candidate.mlir:57:13
	mod.s r6, r14, r21
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	mod.s r7, r25, r20
	.loc	1 57 13                         # relu-candidate.mlir:57:13
	slli r6, r6, 12
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	slli r19, r7, 12
	.loc	1 57 13                         # relu-candidate.mlir:57:13
	add.s r15, r6, r22
	beq r2, r18, .LBB0_10
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	zext_int2long r[6:7], r23
	.loc	1 57 13                         # relu-candidate.mlir:57:13
	bneq r2, r13, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=2
	sll.d r[6:7], r[6:7], r1
	xwait r24, 0
	lock zero, r16
	addli r19, zero, 128
	dma_cfg zero, zero, zero, 0
	add.ul r[6:7], r[8:9], r[6:7]
	dma_cfg zero, r7, zero, 2
	dma_cfg r15, r6, r19, 3
	dma_cfg r19, r27, r12, 4
	dma_run zero
	unlock r16
	xsignal r18, 0
	.loc	1 63 13 is_stmt 1               # relu-candidate.mlir:63:13
	j .LBB0_11
.LBB0_15:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	mod.s r15, r10, r21
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	addli r23, zero, 160
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	lui r13, 133
	addli r10, r10, 1
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	mod.s r23, r11, r23
	addli r11, r11, 1
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	slli r15, r15, 13
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	slli r23, r23, 13
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	add.s r15, r15, r13
	beq r2, r1, .LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 13 is_stmt 0                # relu-candidate.mlir:0:13
	addli r24, zero, 6
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	bneq r2, r24, .LBB0_21
# %bb.17:                               #   in Loop: Header=BB0_12 Depth=2
	addli r13, r30, -2472
	addli r19, zero, 15
	xwait r1, 0
	load.d r[27:28], 0(r13)                 # 8-byte Folded Reload
	sll.d r[6:7], r[6:7], r19
	lock zero, r16
	addli r19, zero, 256
	dma_cfg zero, zero, zero, 0
	add.ul r[6:7], r[27:28], r[6:7]
	addli r27, zero, 256
	addli r28, zero, 6
	dma_cfg zero, r7, zero, 2
	dma_cfg r15, r6, r19, 3
	addli r6, zero, 1024
	dma_cfg r19, r6, r12, 4
	dma_run zero
	unlock r16
	xsignal r24, 0
	addli r24, zero, 3
	j .LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 63 13 is_stmt 1               # relu-candidate.mlir:63:13
	addli r6, zero, 9
	xwait r28, 0
	xwait r6, 0
	lock zero, zero
	addli r6, zero, 64
	ds_cfg r18, zero, 0
	ds_cfg r6, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg r6, zero, 13
	addli r6, zero, 8
	shuffle_coa r23, r15, r12, 2
	unlock zero
	xsignal r1, 0
	xsignal r6, 0
.LBB0_19:                               # %.thread7
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 13 is_stmt 0                # relu-candidate.mlir:0:13
	addli r13, zero, 1
	.loc	1 48 11 is_stmt 1               # relu-candidate.mlir:48:11
	andi r6, r26, 1
	beq r6, zero, .LBB0_27
.LBB0_20:                               # %.backedge
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	addli r4, r4, 1
	addli r23, zero, 1
	addli r26, zero, 0
	.loc	1 61 13                         # relu-candidate.mlir:61:13
	j .LBB0_12
.LBB0_21:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 13 is_stmt 0                # relu-candidate.mlir:0:13
	addli r28, zero, 6
	.loc	1 63 13 is_stmt 1               # relu-candidate.mlir:63:13
	bneq r2, r16, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_12 Depth=2
	addli r6, zero, 8
	addli r13, zero, 1
	xwait r16, 0
	addli r24, zero, 3
	xwait r6, 0
	addli r6, zero, 64
	lock zero, r13
	mm_cfg r6, r12, r12, 0
	mm_cfg r18, r18, r13, 2
	beq r4, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_12 Depth=2
	mm_acc r17, r19, r23, 8
	j .LBB0_26
.LBB0_24:                               # %.thread7.thread
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 48 11                         # relu-candidate.mlir:48:11
	andi r6, r26, 1
	addli r24, zero, 3
	addli r13, zero, 1
	bneq r6, zero, .LBB0_20
	j .LBB0_29
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	mm r17, r19, r23, 8
.LBB0_26:                               # %.thread7.thread48
                                        #   in Loop: Header=BB0_12 Depth=2
	addli r7, zero, 5
	unlock r13
	.loc	1 48 11                         # relu-candidate.mlir:48:11
	andi r6, r26, 1
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	xsignal r7, 0
	addli r7, zero, 9
	xsignal r7, 0
	bneq r6, zero, .LBB0_20
	j .LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 48 11                         # relu-candidate.mlir:48:11
	bneq r2, r16, .LBB0_29
.LBB0_28:                               # %.thread49
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 10
	xsignal r3, 0
.LBB0_29:                               # %.thread47
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 76 11                         # relu-candidate.mlir:76:11
	loadli.w r3,  -2504(r30)                # 4-byte Folded Reload
	loadli.w r19,  -2480(r30)               # 4-byte Folded Reload
	zext_int2long r[5:6], r20
	addli r8, zero, 64
	zext_int2long r[8:9], r8
	zext_int2long r[3:4], r3
	mod.s r7, r19, r16
	min.ul r[5:6], r[3:4], r[5:6]
	addli.d r[5:6], r[5:6], 64
	max.ul r[5:6], r[5:6], r[3:4]
	sub.sl r[3:4], r[5:6], r[3:4]
	slli r6, r7, 8
	lui r7, 383
	min.ul r[4:5], r[3:4], r[8:9]
	add.s r6, r6, r7
	beq r2, r13, .LBB0_5
# %bb.30:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r15,  -2476(r30)               # 4-byte Folded Reload
	ori r7, r7, 1024
	addli r8, zero, 8192
	.loc	1 77 11 is_stmt 1               # relu-candidate.mlir:77:11
	mod.s r3, r15, r16
	slli r3, r3, 13
	add.s r3, r3, r7
	addli r7, zero, 5
	bneq r2, r7, .LBB0_34
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 10
	addli r4, zero, 0
	xwait r5, 0
	addli r5, zero, 12
	xwait r5, 0
	addli r5, zero, 15
	xwait r5, 0
	lock zero, r18
	lui r5, 260096
	ew_cfg r13, zero, zero, 10
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r5, r5, zero, 0
	addli r5, zero, 63
	ew_cfg zero, r5, zero, 2
	ew_cfg r13, zero, zero, 3
.LBB0_32:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r3, r4
	add.s r7, r17, r4
	addli r4, r4, 256
	dsmadd r5, r7, r6, 0
	bneq r4, r8, .LBB0_32
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	ew_cfg zero, zero, zero, 10
	unlock r18
	xsignal r3, 0
	addli r3, zero, 13
	xsignal r3, 0
	addli r3, zero, 14
	xsignal r3, 0
	j .LBB0_6
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 5                          # relu-candidate.mlir:86:5
	bneq r2, zero, .LBB0_6
# %bb.35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # relu-candidate.mlir:0:5
	addli r6, r30, -2472
	.loc	1 86 5                          # relu-candidate.mlir:86:5
	addli r17, r30, -2520
	zext_int2long r[8:9], zero
	addli r23, zero, 15
	addli r26, r30, -2472
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	loadli.w r4,  -2524(r30)                # 4-byte Folded Reload
	sext_int2long r[6:7], r4
	load.d r[4:5], 0(r17)                   # 8-byte Folded Reload
	min.sl r[8:9], r[6:7], r[8:9]
	sll.d r[4:5], r[4:5], r23
	addli.d r[8:9], r[8:9], 32
	store.d r[4:5], 0(r17)                  # 8-byte Folded Spill
	max.sl r[4:5], r[8:9], r[6:7]
	addli r8, r30, -2504
	store.d r[4:5], 0(r8)                   # 8-byte Folded Spill
	load.d r[4:5], 0(r17)                   # 8-byte Folded Reload
	load.d r[8:9], 24(r30)
	addli r17, r30, -2504
	add.ul r[4:5], r[8:9], r[4:5]
	load.d r[8:9], 0(r17)                   # 8-byte Folded Reload
	addli r17, r30, -2512
	sub.sl r[6:7], r[8:9], r[6:7]
	addli r8, r30, -2504
	store.d r[6:7], 0(r8)                   # 8-byte Folded Spill
	load.d r[8:9], 0(r17)                   # 8-byte Folded Reload
	addli r17, r30, -2504
	zext_int2long r[6:7], r12
	add.ul r[8:9], r[4:5], r[8:9]
	load.d r[4:5], 0(r17)                   # 8-byte Folded Reload
	addli r17, zero, 14
	xwait r17, 0
	addli r17, zero, 5
	min.sl r[6:7], r[4:5], r[6:7]
	lock zero, r17
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r13, zero, 1
	load.d r[4:5], 0(r26)                   # 8-byte Folded Reload
	dma_cfg r9, zero, zero, 2
	slli r4, r4, 2
	dma_cfg r8, r3, r4, 3
	addli r3, zero, 1024
	dma_cfg r3, r27, r6, 4
	dma_run zero
	unlock r17
	xsignal r23, 0
	j .LBB0_6
.LBB0_36:                               # %._crit_edge
	.loc	1 2 3 is_stmt 1                 # relu-candidate.mlir:2:3
	xsignal zero, 0
	bneq r2, zero, .LBB0_38
# %bb.37:
	.loc	1 0 3 is_stmt 0                 # relu-candidate.mlir:0:3
	addli r1, zero, 2
	.loc	1 2 3                           # relu-candidate.mlir:2:3
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
.LBB0_38:
	.loc	1 2 3 epilogue_begin            # relu-candidate.mlir:2:3
	addli sp, sp, 2536
	mfence { lm, sm, gm }
	exit
.Ltmp1:
.Lfunc_end0:
	.size	triton_unk_fused_0, .Lfunc_end0-triton_unk_fused_0
	.cfi_endproc
                                        # -- End function
	.type	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_PARAM_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0:
	.long	44                              # 0x2c
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	2600                            # 0xa28
	.size	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0,@object # @XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0
	.section	.XPU.KERNEL_DYNAMIC_LM.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0, 4

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
.asciz	"relu-candidate.mlir"           # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/native-activation-kdrsd2gg" # string offset=27
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
