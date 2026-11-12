	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/native-activation-ffjueoaq" "relu-candidate.mlir"
	.loc	1 2 0                           # relu-candidate.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2200
	addli r1, zero, 1
.Ltmp0:
	.loc	1 51 11 prologue_end            # relu-candidate.mlir:51:11
	core_id r2
	addli r30, sp, 2136
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
	addli r4, zero, 9
	unlock r3
	addli r3, zero, 11
	csr_set csr3, r1
	addli r1, zero, 5
	sync_group
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
	addli r1, zero, 7
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	addli r3, zero, 13
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 15
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	loadli.w r1,  32(r30)
	loadli.w r3,  36(r30)
	load_param_i r5, 1
	loadli.w r4,  40(r30)
	storeli.w zero, -20(r30)
	storeli.w zero, -40(r30)
	storeli.w zero, -376(r30)
	storeli.w zero, -700(r30)
	storeli.w zero, -1040(r30)
	storeli.w zero, -2064(r30)
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
	ble.s r3, r1, .LBB0_37
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	addli r5, r30, -2136
	loadli.w r14,  -20(r30)
	loadli.w r20,  -40(r30)
	loadli.w r10,  -376(r30)
	loadli.w r11,  -700(r30)
	loadli.w r12,  -1040(r30)
	loadli.w r13,  -2064(r30)
	addli r15, zero, 1
	addli r16, zero, 7
	addli r17, zero, 4
	addli r19, zero, 2
	addli r23, zero, 255
	lui r27, 8
	addli r25, zero, 32
	addli r26, zero, 16
	addli r21, zero, 128
	addli r28, zero, 64
	addli r8, zero, 0
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	sext_int2long r[5:6], r1
	addli r1, zero, 84
	j .LBB0_7
.LBB0_5:                                # %.thread51
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 79 11 is_stmt 1               # relu-candidate.mlir:79:11
	addli r5, r30, -2112
	load.d r[7:8], 16(r30)
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	add.ul r[7:8], r[7:8], r[3:4]
	addli r3, zero, 13
	xwait r3, 0
	lock zero, r17
	slli r3, r22, 2
	addli r23, zero, 255
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r8, zero, 2
	dma_cfg r6, r7, r3, 3
	addli r3, zero, 512
	dma_cfg r3, r3, r15, 4
	addli r3, zero, 12
	dma_run zero
	unlock r17
	xsignal r3, 0
	loadli.w r14,  -2076(r30)               # 4-byte Folded Reload
.LBB0_6:                                # %.thread53
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	addli r3, r30, -2088
	addli r7, r30, -2136
	loadli.w r8,  -2092(r30)                # 4-byte Folded Reload
	addli r20, r20, 1
	.loc	1 80 11 is_stmt 1               # relu-candidate.mlir:80:11
	addli r14, r14, 1
	load.d r[5:6], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r7)                    # 8-byte Folded Reload
	addli.d r[5:6], r[5:6], 1
	setlt.sl r3, r[5:6], r[3:4]
	beq r3, zero, .LBB0_37
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
                                        #     Child Loop BB0_32 Depth 2
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	storeli.w r20, -2080(r30)               # 4-byte Folded Spill
	storeli.w r14, -2076(r30)               # 4-byte Folded Spill
	.loc	1 51 11 is_stmt 1               # relu-candidate.mlir:51:11
	bneq r2, r17, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	xwait r3, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r3,  40(r30)
	addli r4, r30, -2088
	addli r7, zero, 8
	addli r9, r30, -2112
	addli r14, zero, 0
	addli r24, zero, 1
	addli r20, zero, 0
	store.d r[5:6], 0(r4)                   # 8-byte Folded Spill
	loadli.w r4,  36(r30)
	div.s r3, r5, r3
	mod.s r6, r8, r17
	addli r8, r8, 1
	storeli.w r8, -2092(r30)                # 4-byte Folded Spill
	div.s r3, r3, r4
	slli r18, r6, 13
	div.s r4, r3, r7
	slli r4, r4, 3
	sub.s r5, r15, r4
	min.s r5, r5, r7
	sub.s r7, r3, r4
	mod.s r3, r3, r5
	div.s r5, r7, r5
	add.s r3, r4, r3
	slli r4, r5, 7
	storeli.w r4, -2104(r30)                # 4-byte Folded Spill
	zext_int2long r[4:5], r5
	slli r6, r3, 4
	sll.d r[4:5], r[4:5], r16
	storeli.w r6, -2124(r30)                # 4-byte Folded Spill
	zext_int2long r[15:16], r3
	addli r3, zero, 12
	.loc	1 51 11                         # relu-candidate.mlir:51:11
	sll.d r[7:8], r[4:5], r19
	load.d r[5:6], 8(r30)
	addli r4, r30, -2120
	store.d r[7:8], 0(r9)                   # 8-byte Folded Spill
	store.d r[15:16], 0(r4)                 # 8-byte Folded Spill
	sll.d r[3:4], r[15:16], r3
	addli r16, zero, 7
	addli r15, zero, 1
	add.ul r[5:6], r[5:6], r[7:8]
	addli r7, r30, -2072
	store.d r[5:6], 0(r7)                   # 8-byte Folded Spill
	load.d r[5:6], 0(r30)
	add.ul r[6:7], r[5:6], r[3:4]
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 66 13 is_stmt 1               # relu-candidate.mlir:66:13
	addli r4, zero, 5
	xwait r19, 0
	xwait r4, 0
	lock zero, zero
	ds_cfg r19, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r26, zero, 13
	shuffle_batch r3, r8, r25, 1
	addli r3, zero, 3
	unlock zero
	xsignal r3, 0
	xsignal r17, 0
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r11, r11, 1
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	addli r10, r10, 1
.LBB0_12:                               # %.thread7
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 51 11                         # relu-candidate.mlir:51:11
	beq r24, zero, .LBB0_27
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	addli r20, r20, 1
	addli r14, zero, 1
	addli r24, zero, 0
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	.loc	1 60 13                         # relu-candidate.mlir:60:13
	mod.s r3, r12, r1
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	mod.s r4, r13, r23
	addli r13, r13, 1
	.loc	1 60 13                         # relu-candidate.mlir:60:13
	addli r12, r12, 1
	andi r24, r24, 1
	slli r5, r3, 11
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	slli r3, r4, 11
	.loc	1 60 13                         # relu-candidate.mlir:60:13
	add.s r8, r5, r27
	beq r2, r19, .LBB0_10
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	zext_int2long r[4:5], r14
	.loc	1 60 13                         # relu-candidate.mlir:60:13
	bneq r2, r15, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	sll.d r[3:4], r[4:5], r16
	addli r5, zero, 3
	xwait r5, 0
	lock zero, r17
	add.ul r[3:4], r[6:7], r[3:4]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r4, zero, 2
	dma_cfg r8, r3, r21, 3
	addli r3, zero, 256
	dma_cfg r21, r3, r26, 4
	dma_run zero
	unlock r17
	xsignal r19, 0
	.loc	1 66 13 is_stmt 1               # relu-candidate.mlir:66:13
	j .LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	addli r8, zero, 83
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	addli r9, zero, 80
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	mod.s r8, r10, r8
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	mod.s r9, r11, r9
	addli r11, r11, 1
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	addli r10, r10, 1
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	slli r14, r9, 14
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	slli r8, r8, 14
	lui r9, 50
	add.s r8, r8, r9
	beq r2, r16, .LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 13 is_stmt 0                # relu-candidate.mlir:0:13
	addli r9, zero, 6
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	bneq r2, r9, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 14
	xwait r16, 0
	sll.d r[3:4], r[4:5], r3
	addli r5, r30, -2072
	load.d r[21:22], 0(r5)                  # 8-byte Folded Reload
	lock zero, r17
	addli r5, zero, 512
	dma_cfg zero, zero, zero, 0
	add.ul r[3:4], r[21:22], r[3:4]
	addli r21, zero, 128
	dma_cfg zero, r4, zero, 2
	dma_cfg r8, r3, r5, 3
	dma_cfg r5, r5, r25, 4
	dma_run zero
	unlock r17
	xsignal r9, 0
	.loc	1 66 13 is_stmt 1               # relu-candidate.mlir:66:13
	j .LBB0_12
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 13 is_stmt 0                # relu-candidate.mlir:0:13
	addli r3, zero, 6
	.loc	1 66 13                         # relu-candidate.mlir:66:13
	xwait r3, 0
	addli r3, zero, 9
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 8
	ds_cfg r19, zero, 0
	ds_cfg r21, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r21, zero, 13
	shuffle_coa r14, r8, r25, 2
	unlock zero
	xsignal r16, 0
	xsignal r3, 0
	j .LBB0_12
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r2, r17, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r4, zero, 8
	xwait r17, 0
	addli r8, zero, 1
	addli r5, zero, 0
	xwait r4, 0
	addli r4, zero, 1
	beq r20, zero, .LBB0_24
.LBB0_23:                               # %.preheader8
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r9, r5, 13
	slli r5, r5, 8
	lock zero, r8
	mm_cfg r28, r25, r26, 0
	or r9, r9, r14
	or r5, r5, r18
	mm_cfg r19, r17, r8, 2
	mm_acc r5, r3, r9, 8
	andi r9, r4, 1
	addli r5, zero, 1
	addli r4, zero, 0
	unlock r8
	bneq r9, zero, .LBB0_23
	j .LBB0_25
.LBB0_24:                               # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r9, r5, 13
	slli r5, r5, 8
	lock zero, r8
	mm_cfg r28, r25, r26, 0
	or r9, r9, r14
	or r5, r5, r18
	mm_cfg r19, r17, r8, 2
	mm r5, r3, r9, 8
	andi r9, r4, 1
	addli r5, zero, 1
	addli r4, zero, 0
	unlock r8
	bneq r9, zero, .LBB0_24
.LBB0_25:                               # %.thread7.thread49
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 5
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	bneq r24, zero, .LBB0_13
	j .LBB0_28
.LBB0_26:                               # %.thread7.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 13                          # relu-candidate.mlir:0:13
	bneq r24, zero, .LBB0_13
	j .LBB0_29
.LBB0_27:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 51 11 is_stmt 1               # relu-candidate.mlir:51:11
	bneq r2, r17, .LBB0_29
.LBB0_28:                               # %.thread50
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 10
	xsignal r3, 0
.LBB0_29:                               # %.thread48
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r20,  -2080(r30)               # 4-byte Folded Reload
	.loc	1 79 11 is_stmt 1               # relu-candidate.mlir:79:11
	loadli.w r4,  -2104(r30)                # 4-byte Folded Reload
	zext_int2long r[6:7], r21
	mod.s r3, r20, r17
	zext_int2long r[4:5], r4
	max.ul r[6:7], r[4:5], r[6:7]
	sub.sl r[22:23], r[6:7], r[4:5]
	lui r7, 382
	slli r3, r3, 9
	add.s r6, r3, r7
	beq r2, r15, .LBB0_5
# %bb.30:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r14,  -2076(r30)               # 4-byte Folded Reload
	addli r3, r30, -2072
	ori r7, r7, 2048
	addli r8, zero, 8192
	.loc	1 80 11 is_stmt 1               # relu-candidate.mlir:80:11
	addli r4, zero, 5
	store.d r[22:23], 0(r3)                 # 8-byte Folded Spill
	mod.s r3, r14, r17
	slli r3, r3, 13
	add.s r3, r3, r7
	bneq r2, r4, .LBB0_34
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 10
	addli r4, zero, 0
	addli r23, zero, 255
	xwait r5, 0
	addli r5, zero, 12
	xwait r5, 0
	addli r5, zero, 15
	xwait r5, 0
	lock zero, r19
	lui r5, 260096
	ew_cfg r15, zero, zero, 10
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r5, r5, zero, 0
	addli r5, zero, 127
	ew_cfg zero, r5, zero, 2
	ew_cfg r15, zero, zero, 3
.LBB0_32:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r3, r4
	add.s r7, r18, r4
	addli r4, r4, 512
	dsmadd r5, r7, r6, 0
	bneq r4, r8, .LBB0_32
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	ew_cfg zero, zero, zero, 10
	unlock r19
	xsignal r3, 0
	addli r3, zero, 13
	xsignal r3, 0
	addli r3, zero, 14
	j .LBB0_36
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	addli r23, zero, 255
	.loc	1 89 5 is_stmt 1                # relu-candidate.mlir:89:5
	bneq r2, zero, .LBB0_6
# %bb.35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # relu-candidate.mlir:0:5
	loadli.w r4,  -2124(r30)                # 4-byte Folded Reload
	zext_int2long r[8:9], zero
	.loc	1 89 5                          # relu-candidate.mlir:89:5
	addli r18, r30, -2120
	addli r22, r30, -2072
	sext_int2long r[6:7], r4
	min.sl r[8:9], r[6:7], r[8:9]
	addli.d r[4:5], r[8:9], 16
	addli r8, r30, -2104
	addli r9, r30, -2120
	store.d r[4:5], 0(r8)                   # 8-byte Folded Spill
	load.d r[4:5], 0(r9)                    # 8-byte Folded Reload
	addli r8, zero, 13
	sll.d r[4:5], r[4:5], r8
	addli r8, r30, -2120
	store.d r[4:5], 0(r8)                   # 8-byte Folded Spill
	addli r8, r30, -2104
	load.d r[4:5], 0(r8)                    # 8-byte Folded Reload
	max.sl r[4:5], r[4:5], r[6:7]
	store.d r[4:5], 0(r8)                   # 8-byte Folded Spill
	load.d r[4:5], 0(r18)                   # 8-byte Folded Reload
	load.d r[8:9], 24(r30)
	addli r18, r30, -2104
	add.ul r[4:5], r[8:9], r[4:5]
	load.d r[8:9], 0(r18)                   # 8-byte Folded Reload
	addli r18, r30, -2112
	sub.sl r[6:7], r[8:9], r[6:7]
	addli r8, r30, -2104
	store.d r[6:7], 0(r8)                   # 8-byte Folded Spill
	load.d r[8:9], 0(r18)                   # 8-byte Folded Reload
	addli r18, r30, -2104
	zext_int2long r[6:7], r26
	add.ul r[8:9], r[4:5], r[8:9]
	load.d r[4:5], 0(r18)                   # 8-byte Folded Reload
	addli r18, zero, 14
	xwait r18, 0
	addli r18, zero, 5
	min.sl r[6:7], r[4:5], r[6:7]
	lock zero, r18
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r15, zero, 1
	load.d r[4:5], 0(r22)                   # 8-byte Folded Reload
	dma_cfg r9, zero, zero, 2
	slli r4, r4, 2
	dma_cfg r8, r3, r4, 3
	addli r3, zero, 512
	dma_cfg r3, r3, r6, 4
	addli r3, zero, 15
	dma_run zero
	unlock r18
.LBB0_36:                               # %.thread53
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	xsignal r3, 0
	j .LBB0_6
.LBB0_37:                               # %._crit_edge
	.loc	1 2 3 is_stmt 1                 # relu-candidate.mlir:2:3
	xsignal zero, 0
	bneq r2, zero, .LBB0_39
# %bb.38:
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
.LBB0_39:
	.loc	1 2 3 epilogue_begin            # relu-candidate.mlir:2:3
	addli sp, sp, 2136
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
	.long	2200                            # 0x898
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/native-activation-ffjueoaq" # string offset=27
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
