	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/native-activation-929c5ngo" "relu-candidate.mlir"
	.loc	1 2 0                           # relu-candidate.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2264
	addli r1, zero, 1
.Ltmp0:
	.loc	1 51 11 prologue_end            # relu-candidate.mlir:51:11
	core_id r2
	addli r30, sp, 2200
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
	storeli.w zero, -368(r30)
	storeli.w zero, -1012(r30)
	storeli.w zero, -1344(r30)
	storeli.w zero, -2116(r30)
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
	ble.s r3, r1, .LBB0_39
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	addli r5, r30, -2192
	loadli.w r16,  -20(r30)
	loadli.w r27,  -40(r30)
	loadli.w r10,  -368(r30)
	loadli.w r11,  -1012(r30)
	loadli.w r12,  -1344(r30)
	loadli.w r13,  -2116(r30)
	addli r14, zero, 64
	addli r15, zero, 2
	addli r18, zero, 4
	addli r20, zero, 1
	addli r9, zero, 192
	addli r19, zero, 5
	addli r28, zero, 3
	addli r17, zero, 128
	addli r26, zero, 6
	addli r21, zero, 0
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	addli r4, zero, 4095
	sext_int2long r[5:6], r1
	addli r1, r30, -2200
	lui r3, 1048572
	store.d r[3:4], 0(r1)                   # 8-byte Folded Spill
	addli r1, zero, 32
	j .LBB0_7
.LBB0_5:                                # %.thread55
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 79 11 is_stmt 1               # relu-candidate.mlir:79:11
	addli r5, r30, -2168
	load.d r[3:4], 16(r30)
	load.d r[21:22], 0(r5)                  # 8-byte Folded Reload
	addli r5, zero, 13
	xwait r5, 0
	lock zero, r18
	slli r5, r6, 1
	add.ul r[3:4], r[3:4], r[21:22]
	dma_cfg zero, r20, zero, 0
	dma_cfg zero, r4, zero, 2
	dma_cfg r8, r3, r5, 3
	addli r3, zero, 256
	addli r4, zero, 512
	dma_cfg r4, r3, r20, 4
	addli r3, zero, 12
	dma_run zero
	unlock r18
	xsignal r3, 0
	loadli.w r16,  -2140(r30)               # 4-byte Folded Reload
.LBB0_6:                                # %.thread57
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	addli r3, r30, -2152
	addli r7, r30, -2192
	loadli.w r21,  -2156(r30)               # 4-byte Folded Reload
	addli r27, r27, 1
	.loc	1 83 11 is_stmt 1               # relu-candidate.mlir:83:11
	addli r16, r16, 1
	load.d r[5:6], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r7)                    # 8-byte Folded Reload
	addli.d r[5:6], r[5:6], 1
	setlt.sl r3, r[5:6], r[3:4]
	beq r3, zero, .LBB0_39
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_26 Depth 3
                                        #     Child Loop BB0_34 Depth 2
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	storeli.w r27, -2144(r30)               # 4-byte Folded Spill
	storeli.w r16, -2140(r30)               # 4-byte Folded Spill
	.loc	1 51 11 is_stmt 1               # relu-candidate.mlir:51:11
	bneq r2, r18, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	xwait r3, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r3,  40(r30)
	addli r4, r30, -2152
	mod.s r7, r21, r18
	addli r21, r21, 1
	addli r23, zero, 0
	addli r16, zero, 0
	store.d r[5:6], 0(r4)                   # 8-byte Folded Spill
	storeli.w r21, -2156(r30)               # 4-byte Folded Spill
	div.s r4, r5, r3
	loadli.w r3,  36(r30)
	div.s r4, r4, r3
	addli r3, zero, 8
	div.s r5, r4, r14
	slli r6, r5, 3
	slli r5, r5, 6
	sub.s r8, r15, r6
	sub.s r5, r4, r5
	min.s r8, r8, r3
	mod.s r4, r4, r8
	div.s r8, r5, r8
	slli r5, r7, 15
	add.s r4, r6, r4
	slli r3, r8, 7
	zext_int2long r[6:7], r8
	addli r8, r30, -2168
	storeli.w r3, -2160(r30)                # 4-byte Folded Spill
	slli r3, r4, 6
	zext_int2long r[21:22], r4
	addli r4, r30, -2176
	storeli.w r3, -2180(r30)                # 4-byte Folded Spill
	addli r3, zero, 7
	store.d r[21:22], 0(r4)                 # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r3
	addli r3, zero, 13
	sll.d r[21:22], r[21:22], r3
	.loc	1 51 11                         # relu-candidate.mlir:51:11
	load.d r[3:4], 8(r30)
	sll.d r[6:7], r[6:7], r20
	store.d r[6:7], 0(r8)                   # 8-byte Folded Spill
	addli r8, zero, 82
	add.ul r[3:4], r[3:4], r[6:7]
	addli r6, r30, -2136
	store.d r[3:4], 0(r6)                   # 8-byte Folded Spill
	addli r6, r30, -2200
	load.d r[3:4], 0(r6)                    # 8-byte Folded Reload
	addli r6, r30, -2128
	and.d r[3:4], r[21:22], r[3:4]
	store.d r[3:4], 0(r6)                   # 8-byte Folded Spill
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 59 13 is_stmt 1               # relu-candidate.mlir:59:13
	sub.sl r[7:8], r[24:25], r[8:9]
	addli r9, zero, 128
	.loc	1 60 13                         # relu-candidate.mlir:60:13
	load.d r[26:27], 0(r30)
	sll.d r[24:25], r[24:25], r20
	xwait r28, 0
	lock zero, r18
	addli r17, zero, 128
	dma_cfg r20, r20, zero, 0
	zext_int2long r[3:4], r9
	add.ul r[24:25], r[26:27], r[24:25]
	addli r26, zero, 6
	.loc	1 59 13                         # relu-candidate.mlir:59:13
	div.sl r[3:4], r[7:8], r[3:4]
	zext_int2long r[7:8], r14
	.loc	1 60 13                         # relu-candidate.mlir:60:13
	dma_cfg zero, r25, zero, 2
	dma_cfg r6, r24, r14, 3
	.loc	1 59 13                         # relu-candidate.mlir:59:13
	min.sl r[7:8], r[3:4], r[7:8]
	sub.sl r[3:4], r[7:8], r[3:4]
	addli r8, zero, 82
	.loc	1 60 13                         # relu-candidate.mlir:60:13
	addli r3, r3, 64
	addli r4, zero, 256
	dma_cfg r9, r4, r3, 4
	dma_run zero
	unlock r18
	xsignal r15, 0
	addli r9, zero, 192
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	addli r11, r11, 1
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	addli r10, r10, 1
.LBB0_12:                               # %.thread7
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 51 11                         # relu-candidate.mlir:51:11
	addli r23, r23, 1
	beq r23, r18, .LBB0_29
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	addli r16, r16, 1
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	.loc	1 60 13                         # relu-candidate.mlir:60:13
	mod.s r4, r12, r8
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	mod.s r6, r13, r9
	.loc	1 60 13                         # relu-candidate.mlir:60:13
	lui r3, 32
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	addli r13, r13, 1
	.loc	1 60 13                         # relu-candidate.mlir:60:13
	addli r12, r12, 1
	slli r7, r4, 13
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	slli r4, r6, 12
	.loc	1 60 13                         # relu-candidate.mlir:60:13
	add.s r6, r7, r3
	beq r2, r15, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	zext_int2long r[24:25], r23
	.loc	1 60 13                         # relu-candidate.mlir:60:13
	bneq r2, r20, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 64 13 is_stmt 1               # relu-candidate.mlir:64:13
	sll.d r[7:8], r[24:25], r19
	addli r3, zero, 16383
	.loc	1 59 13                         # relu-candidate.mlir:59:13
	add.ul r[24:25], r[7:8], r[21:22]
	zext_int2long r[7:8], r3
	addli r3, r30, -2128
	setlt.ul r4, r[7:8], r[24:25]
	load.d r[8:9], 0(r3)                    # 8-byte Folded Reload
	bneq r4, zero, .LBB0_10
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 13 is_stmt 0                # relu-candidate.mlir:0:13
	zext_int2long r[8:9], zero
	j .LBB0_10
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 66 13 is_stmt 1               # relu-candidate.mlir:66:13
	xwait r15, 0
	xwait r19, 0
	lock zero, zero
	ds_cfg r28, zero, 0
	ds_cfg r14, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r14, zero, 13
	shuffle_batch r4, r6, r1, 1
	unlock zero
	xsignal r28, 0
	xsignal r18, 0
	j .LBB0_11
.LBB0_19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	addli r3, zero, 81
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	addli r6, zero, 160
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	lui r7, 196
	mod.s r3, r10, r3
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	mod.s r6, r11, r6
	addli r11, r11, 1
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	addli r10, r10, 1
	slli r3, r3, 13
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	slli r6, r6, 13
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	add.s r7, r3, r7
	addli r3, zero, 7
	beq r2, r3, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r2, r26, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=2
	addli r6, zero, 7
	addli r3, zero, 16
	xwait r6, 0
	addli r6, r30, -2136
	sll.d r[3:4], r[24:25], r3
	load.d r[24:25], 0(r6)                  # 8-byte Folded Reload
	lock zero, r18
	addli r6, zero, 256
	dma_cfg r20, r20, zero, 0
	add.ul r[3:4], r[24:25], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r7, r3, r6, 3
	addli r3, zero, 2048
	dma_cfg r6, r3, r1, 4
	dma_run zero
	unlock r18
	xsignal r26, 0
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 9
	xwait r26, 0
	addli r17, zero, 128
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 128
	ds_cfg r28, zero, 0
	ds_cfg r3, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r3, zero, 13
	addli r3, zero, 7
	shuffle_coa r6, r7, r1, 2
	unlock zero
	xsignal r3, 0
	addli r3, zero, 8
	xsignal r3, 0
	j .LBB0_12
.LBB0_23:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r2, r18, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 8
	addli r7, zero, 1
	addli r24, zero, 1
	addli r25, zero, 0
	xwait r18, 0
	xwait r3, 0
	beq r16, zero, .LBB0_26
.LBB0_25:                               # %.preheader8
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r3, r25, 12
	slli r8, r25, 8
	lock zero, r7
	addli r25, zero, 1
	mm_cfg r14, r1, r14, 0
	or r3, r3, r6
	or r8, r8, r5
	mm_cfg r7, r18, r7, 2
	mm_acc r8, r4, r3, 5
	andi r3, r24, 1
	addli r24, zero, 0
	unlock r7
	bneq r3, zero, .LBB0_25
	j .LBB0_27
.LBB0_26:                               # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r3, r25, 12
	slli r8, r25, 8
	lock zero, r7
	addli r25, zero, 1
	mm_cfg r14, r1, r14, 0
	or r3, r3, r6
	or r8, r8, r5
	mm_cfg r7, r18, r7, 2
	mm r8, r4, r3, 5
	andi r3, r24, 1
	addli r24, zero, 0
	unlock r7
	bneq r3, zero, .LBB0_26
.LBB0_27:                               # %.thread7.thread52
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 51 11                         # relu-candidate.mlir:51:11
	addli r23, r23, 1
	addli r8, zero, 82
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	addli r3, zero, 9
	xsignal r19, 0
	xsignal r3, 0
	bneq r23, r18, .LBB0_13
	j .LBB0_30
.LBB0_28:                               # %.thread7.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 51 11                         # relu-candidate.mlir:51:11
	addli r23, r23, 1
	bneq r23, r18, .LBB0_13
	j .LBB0_31
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r2, r18, .LBB0_31
.LBB0_30:                               # %.thread54
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 10
	xsignal r3, 0
.LBB0_31:                               # %.thread51
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 79 11                         # relu-candidate.mlir:79:11
	loadli.w r3,  -2160(r30)                # 4-byte Folded Reload
	addli r6, zero, 896
	loadli.w r27,  -2144(r30)               # 4-byte Folded Reload
	zext_int2long r[21:22], r17
	zext_int2long r[6:7], r6
	zext_int2long r[3:4], r3
	mod.s r8, r27, r18
	min.ul r[6:7], r[3:4], r[6:7]
	addli.d r[6:7], r[6:7], 128
	max.ul r[6:7], r[6:7], r[3:4]
	slli r8, r8, 9
	sub.sl r[3:4], r[6:7], r[3:4]
	min.ul r[6:7], r[3:4], r[21:22]
	lui r3, 358
	add.s r8, r8, r3
	beq r2, r20, .LBB0_5
# %bb.32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r16,  -2140(r30)               # 4-byte Folded Reload
	lui r4, 358
	lui r21, 8
	ori r4, r4, 2048
	.loc	1 83 11 is_stmt 1               # relu-candidate.mlir:83:11
	mod.s r3, r16, r18
	slli r3, r3, 15
	add.s r4, r3, r4
	bneq r2, r19, .LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 10
	addli r6, zero, 0
	xwait r3, 0
	addli r3, zero, 12
	xwait r3, 0
	addli r3, zero, 15
	xwait r3, 0
	lock zero, r15
	lui r3, 260096
	ew_cfg r20, zero, zero, 10
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r3, r3, zero, 0
	addli r3, zero, 127
	ew_cfg zero, r3, zero, 2
	ew_cfg r20, zero, zero, 3
.LBB0_34:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r3, r4, r6
	add.s r7, r5, r6
	addli r6, r6, 512
	dsmadd r3, r7, r8, 0
	bneq r6, r21, .LBB0_34
# %bb.35:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	ew_cfg zero, zero, zero, 10
	unlock r15
	xsignal r3, 0
	addli r3, zero, 13
	xsignal r3, 0
	addli r3, zero, 14
	j .LBB0_38
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 95 5                          # relu-candidate.mlir:95:5
	bneq r2, zero, .LBB0_6
# %bb.37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # relu-candidate.mlir:0:5
	loadli.w r3,  -2180(r30)                # 4-byte Folded Reload
	.loc	1 95 5                          # relu-candidate.mlir:95:5
	addli r5, r30, -2176
	zext_int2long r[21:22], r14
	addli r19, zero, 5
	load.d r[25:26], 0(r5)                  # 8-byte Folded Reload
	addli r5, zero, 5
	sext_int2long r[8:9], r3
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	addli r3, r30, -2136
	store.d r[21:22], 0(r3)                 # 8-byte Folded Spill
	.loc	1 95 5                          # relu-candidate.mlir:95:5
	addli r3, zero, 17
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	min.sl r[23:24], r[8:9], r[21:22]
	.loc	1 95 5                          # relu-candidate.mlir:95:5
	sll.d r[25:26], r[25:26], r3
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	addli r3, r30, -2128
	addli.d r[23:24], r[23:24], 64
	store.d r[25:26], 0(r3)                 # 8-byte Folded Spill
	.loc	1 95 5                          # relu-candidate.mlir:95:5
	addli r3, zero, 14
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	max.sl r[23:24], r[23:24], r[8:9]
	.loc	1 95 5                          # relu-candidate.mlir:95:5
	load.d r[25:26], 24(r30)
	xwait r3, 0
	addli r3, r30, -2128
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	sub.sl r[8:9], r[23:24], r[8:9]
	.loc	1 95 5                          # relu-candidate.mlir:95:5
	load.d r[21:22], 0(r3)                  # 8-byte Folded Reload
	addli r3, r30, -2168
	load.d r[23:24], 0(r3)                  # 8-byte Folded Reload
	addli r3, r30, -2136
	add.ul r[25:26], r[25:26], r[21:22]
	load.d r[21:22], 0(r3)                  # 8-byte Folded Reload
	lock zero, r5
	slli r3, r6, 2
	add.ul r[23:24], r[25:26], r[23:24]
	dma_cfg r20, zero, zero, 0
	addli r26, zero, 6
	dma_cfg zero, r20, zero, 1
	dma_cfg r24, zero, zero, 2
	min.sl r[8:9], r[8:9], r[21:22]
	dma_cfg r23, r4, r3, 3
	addli r3, zero, 512
	addli r4, zero, 2048
	dma_cfg r4, r3, r8, 4
	addli r9, zero, 192
	addli r3, zero, 15
	dma_run zero
	unlock r5
.LBB0_38:                               # %.thread57
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	xsignal r3, 0
	j .LBB0_6
.LBB0_39:                               # %._crit_edge
	.loc	1 2 3 is_stmt 1                 # relu-candidate.mlir:2:3
	xsignal zero, 0
	bneq r2, zero, .LBB0_41
# %bb.40:
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
.LBB0_41:
	.loc	1 2 3 epilogue_begin            # relu-candidate.mlir:2:3
	addli sp, sp, 2200
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
	.long	2264                            # 0x8d8
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/native-activation-929c5ngo" # string offset=27
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
