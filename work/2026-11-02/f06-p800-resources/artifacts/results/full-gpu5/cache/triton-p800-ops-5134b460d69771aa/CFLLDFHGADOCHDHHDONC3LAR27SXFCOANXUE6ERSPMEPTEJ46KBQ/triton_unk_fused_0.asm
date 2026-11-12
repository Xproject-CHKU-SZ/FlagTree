	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-15f5sqqj" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -296
	addli r1, zero, 1
.Ltmp0:
	.loc	1 32 5 prologue_end             # parallel-rne.mlir:32:5
	core_id r10
	addli r30, sp, 232
	xsignal_mode_cfg r1
	beq r10, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r2, 1048575
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	xwait r1, 0
	xwait r1, 0
	xwait zero, 0
	ori r1, r2, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r4, zero, 2
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	uni_sram_cfg r1, r1
	addli r5, zero, 4
	load.d r[2:3], 32(r30)
	addli r6, zero, 4096
	lock zero, r4
	ew_cfg r1, zero, zero, 16
	unlock r4
	lock zero, r5
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r3, zero, 2
	dma_cfg zero, r2, r6, 3
	addli r2, zero, 32
	addli r3, zero, 1024
	dma_cfg zero, zero, r1, 4
	dma_run zero
	unlock r5
	xsignal r1, 0
	xwait r1, 0
	lock zero, zero
	ds_cfg r4, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r2, zero, 13
	addli r2, zero, 5
	ds_cfg r3, zero, 14
	shuffle_batch r6, zero, r3, 4
	unlock zero
	xsignal r1, 0
	xwait r1, 0
	lock zero, r4
	lui r1, 17
	ewtable_cfg r6, 0
	ewtable_cfg r1, 1
	lui r1, 1048575
	unlock r4
	xsignal zero, 0
	xwait zero, 0
	ori r1, r1, 4095
	csr_set csr3, r1
	addli r1, zero, 11
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 3
	addli r2, zero, 9
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 7
	addli r2, zero, 16
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 18
	addli r2, zero, 22
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 24
	addli r2, zero, 26
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 34 10 is_stmt 1               # parallel-rne.mlir:34:10
	load_param_i r4, 1
	loadli.w r3,  48(r30)
	lui r5, 1048575
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -24(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -48(r30)
	ori r5, r5, 4095
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	mul.s r1, r2, r1
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	addli r2, r4, 0
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r5, -20(r30)
	storeli.w r5, -16(r30)
	storeli.w r5, -12(r30)
	storeli.w r5, -8(r30)
	storeli.w r5, -4(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r5, -44(r30)
	storeli.w r5, -40(r30)
	storeli.w r5, -36(r30)
	storeli.w r5, -32(r30)
	storeli.w r5, -28(r30)
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	fmac.s r2, r1, r3
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	mul.s r3, r1, r3
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	addli r2, r2, -1
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	div.s r2, r2, r4
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	load_param_i r4, 0
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	mul.s r1, r2, r4
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	fmac.s r2, r2, r4
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	min.s r2, r2, r3
	.loc	1 55 5                          # parallel-rne.mlir:55:5
	ble.s r2, r1, .LBB0_862
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 43 11 is_stmt 1               # parallel-rne.mlir:43:11
	sext_int2long r[14:15], r1
	lui r1, 524287
	addli r12, zero, 5
	addli r16, zero, 64
	addli r17, zero, 1
	addli r11, zero, 7
	addli r18, zero, 13
	addli r19, zero, 3
	addli r21, zero, 4
	addli r23, zero, 2
	addli r24, zero, 6
	addli r28, zero, 18
	lui r5, 1024
	lui r22, 522240
	lui r20, 1048560
	addli r27, zero, 0
	store.d r[2:3], -224(r30)               # 8-byte Folded Spill
	ori r3, r1, 4095
	lui r1, 7
	lui r2, 522239
	ori r13, r1, 4095
	lui r1, 180
	ori r4, r2, 4095
	lui r2, 220
	ori r1, r1, 2560
	storeli.w r1, -228(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2560
	storeli.w r1, -232(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge17.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1014 7                        # parallel-rne.mlir:1014:7
	addli r1, zero, 15
	addli r12, zero, 5
	addli r16, zero, 64
	addli r17, zero, 1
	addli r11, zero, 7
	addli r18, zero, 13
	addli r21, zero, 4
	addli r23, zero, 2
	addli r24, zero, 6
	addli r28, zero, 18
	xsignal r1, 0
	.loc	1 1015 7                        # parallel-rne.mlir:1015:7
	addli r1, zero, 22
	xsignal r1, 0
	.loc	1 1016 7                        # parallel-rne.mlir:1016:7
	addli r1, zero, 24
	xsignal r1, 0
	.loc	1 1017 7                        # parallel-rne.mlir:1017:7
	addli r1, zero, 26
	xsignal r1, 0
	load.d r[14:15], -184(r30)              # 8-byte Folded Reload
	loadli.w r27,  -172(r30)                # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 55 5                          # parallel-rne.mlir:55:5
	load.d r[1:2], -224(r30)                # 8-byte Folded Reload
	addli.d r[14:15], r[14:15], 1
	addli r27, r27, 1
	setlt.sl r1, r[14:15], r[1:2]
	beq r1, zero, .LBB0_862
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #       Child Loop BB0_33 Depth 3
                                        #     Child Loop BB0_56 Depth 2
                                        #       Child Loop BB0_58 Depth 3
                                        #     Child Loop BB0_81 Depth 2
                                        #       Child Loop BB0_83 Depth 3
                                        #     Child Loop BB0_106 Depth 2
                                        #       Child Loop BB0_108 Depth 3
                                        #     Child Loop BB0_131 Depth 2
                                        #       Child Loop BB0_133 Depth 3
                                        #     Child Loop BB0_156 Depth 2
                                        #       Child Loop BB0_158 Depth 3
                                        #     Child Loop BB0_181 Depth 2
                                        #       Child Loop BB0_183 Depth 3
                                        #     Child Loop BB0_206 Depth 2
                                        #       Child Loop BB0_208 Depth 3
                                        #     Child Loop BB0_236 Depth 2
                                        #     Child Loop BB0_243 Depth 2
                                        #       Child Loop BB0_245 Depth 3
                                        #     Child Loop BB0_267 Depth 2
                                        #       Child Loop BB0_269 Depth 3
                                        #     Child Loop BB0_291 Depth 2
                                        #       Child Loop BB0_293 Depth 3
                                        #     Child Loop BB0_316 Depth 2
                                        #       Child Loop BB0_318 Depth 3
                                        #     Child Loop BB0_341 Depth 2
                                        #       Child Loop BB0_343 Depth 3
                                        #     Child Loop BB0_366 Depth 2
                                        #       Child Loop BB0_368 Depth 3
                                        #     Child Loop BB0_391 Depth 2
                                        #       Child Loop BB0_393 Depth 3
                                        #     Child Loop BB0_416 Depth 2
                                        #       Child Loop BB0_418 Depth 3
                                        #     Child Loop BB0_446 Depth 2
                                        #       Child Loop BB0_467 Depth 3
                                        #       Child Loop BB0_449 Depth 3
                                        #     Child Loop BB0_498 Depth 2
                                        #       Child Loop BB0_519 Depth 3
                                        #       Child Loop BB0_501 Depth 3
                                        #     Child Loop BB0_550 Depth 2
                                        #       Child Loop BB0_571 Depth 3
                                        #       Child Loop BB0_553 Depth 3
                                        #     Child Loop BB0_602 Depth 2
                                        #       Child Loop BB0_623 Depth 3
                                        #       Child Loop BB0_605 Depth 3
                                        #     Child Loop BB0_654 Depth 2
                                        #       Child Loop BB0_675 Depth 3
                                        #       Child Loop BB0_657 Depth 3
                                        #     Child Loop BB0_706 Depth 2
                                        #       Child Loop BB0_727 Depth 3
                                        #       Child Loop BB0_709 Depth 3
                                        #     Child Loop BB0_758 Depth 2
                                        #       Child Loop BB0_779 Depth 3
                                        #       Child Loop BB0_761 Depth 3
                                        #     Child Loop BB0_810 Depth 2
                                        #       Child Loop BB0_831 Depth 3
                                        #       Child Loop BB0_813 Depth 3
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	loadli.w r1,  48(r30)
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	loadli.w r2,  44(r30)
	.loc	1 64 13                         # parallel-rne.mlir:64:13
	addli r8, zero, 8
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	mod.s r9, r27, r12
	storeli.w r27, -172(r30)                # 4-byte Folded Spill
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	div.s r1, r14, r1
	storeli.w r9, -72(r30)                  # 4-byte Folded Spill
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	div.s r2, r1, r2
	.loc	1 61 13                         # parallel-rne.mlir:61:13
	div.s r6, r2, r16
	.loc	1 62 13                         # parallel-rne.mlir:62:13
	slli r1, r6, 3
	.loc	1 63 13                         # parallel-rne.mlir:63:13
	sub.s r7, r17, r1
	.loc	1 64 13                         # parallel-rne.mlir:64:13
	min.s r7, r7, r8
	.loc	1 65 13                         # parallel-rne.mlir:65:13
	mod.s r8, r2, r7
	.loc	1 66 13                         # parallel-rne.mlir:66:13
	add.s r8, r8, r1
	.loc	1 91 13                         # parallel-rne.mlir:91:13
	slli r1, r9, 14
	.loc	1 74 13                         # parallel-rne.mlir:74:13
	zext_int2long r[25:26], r8
	storeli.w r8, -212(r30)                 # 4-byte Folded Spill
	.loc	1 93 13                         # parallel-rne.mlir:93:13
	lui r8, 40
	add.s r9, r1, r8
	.loc	1 97 7                          # parallel-rne.mlir:97:7
	store.d r[25:26], -208(r30)             # 8-byte Folded Spill
	bneq r10, r17, .LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	load.d r[27:28], 0(r30)
	sll.d r[10:11], r[25:26], r18
	addli r8, zero, 7
	add.ul r[10:11], r[27:28], r[10:11]
	loadli.w r27,  -172(r30)                # 4-byte Folded Reload
	addli r28, zero, 18
	xwait r19, 0
	blt.s r21, r27, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 8
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 9
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 11
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 12
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 14
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 15
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 16
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 17
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 19
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 20
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 21
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 22
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 23
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 24
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 25
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 26
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 27
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 28
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 29
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 30
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 31
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 128
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r16, 3
	dma_cfg r8, zero, r23, 4
	addli r8, zero, 256
	dma_cfg r8, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
.LBB0_10:                               # %.thread46
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r8, 40
	storeli.w zero, -168(r30)               # 4-byte Folded Spill
	addli r25, zero, 256
	.loc	1 97 7                          # parallel-rne.mlir:97:7
	lock zero, r21
	ori r8, r8, 64
	dma_cfg r17, r17, zero, 0
	dma_cfg zero, r11, zero, 2
	add.s r8, r1, r8
	dma_cfg r8, r10, r16, 3
	addli r10, zero, 128
	addli r11, zero, 7
	addli r8, zero, 8
	dma_cfg r10, r16, r23, 4
	dma_cfg r25, r10, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r21
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 9
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 11
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 12
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 14
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 15
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 16
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 17
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 19
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 20
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 21
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 22
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 23
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 24
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 25
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 26
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 27
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 28
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 29
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 30
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 31
	dma_cfg zero, zero, r8, 10
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r16, 3
	dma_cfg r10, zero, r23, 4
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r10
	.loc	1 97 7                          # parallel-rne.mlir:97:7
	dma_cfg r25, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r23, 0
	.loc	1 98 7                          # parallel-rne.mlir:98:7
	j .LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r10, r23, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	xwait r23, 0
	xwait r12, 0
	lock zero, zero
	addli r8, zero, 1
	ds_cfg r23, zero, 0
	ds_cfg r16, zero, 1
	ds_cfg r16, zero, 14
	ds_cfg r16, zero, 13
	shuffle_batch r1, r9, r16, 1
	unlock zero
	xsignal r19, 0
	storeli.w r8, -168(r30)                 # 4-byte Folded Spill
	xsignal r21, 0
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -168(r30)               # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	slli r6, r6, 6
	sub.s r2, r2, r6
	div.s r2, r2, r7
	zext_int2long r[6:7], r2
	storeli.w r2, -144(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -72(r30)                  # 4-byte Folded Reload
	sll.d r[6:7], r[6:7], r11
	slli r9, r2, 15
	.loc	1 108 13 is_stmt 1              # parallel-rne.mlir:108:13
	lui r2, 60
	.loc	1 114 7                         # parallel-rne.mlir:114:7
	sll.d r[25:26], r[6:7], r17
	.loc	1 108 13                        # parallel-rne.mlir:108:13
	add.s r2, r9, r2
	.loc	1 114 7                         # parallel-rne.mlir:114:7
	bneq r10, r24, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[6:7], 8(r30)
	xwait r11, 0
	add.ul r[6:7], r[6:7], r[25:26]
	blt.s r21, r27, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	lock zero, r12
	addli r1, zero, 8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 21
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 22
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 23
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 24
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 25
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 26
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 27
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 28
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 29
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 30
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 31
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 128
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r16, 3
	dma_cfg r1, zero, r21, 4
	addli r1, zero, 512
	dma_cfg r1, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
.LBB0_17:                               # %.thread47
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r1, 60
	storeli.w zero, -164(r30)               # 4-byte Folded Spill
	storeli.w zero, -160(r30)               # 4-byte Folded Spill
	.loc	1 114 7                         # parallel-rne.mlir:114:7
	lock zero, r21
	ori r1, r1, 64
	dma_cfg r17, r17, zero, 0
	dma_cfg zero, r7, zero, 2
	add.s r1, r9, r1
	dma_cfg r1, r6, r16, 3
	addli r6, zero, 128
	addli r7, zero, 512
	addli r1, zero, 2048
	dma_cfg r6, r16, r21, 4
	dma_cfg r7, r1, r16, 5
	addli r1, zero, 8
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r21
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 21
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 22
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 23
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 24
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 25
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 26
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 27
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 28
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 29
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 30
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 31
	dma_cfg zero, zero, r1, 10
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r16, 3
	dma_cfg r6, zero, r21, 4
	dma_cfg r7, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r24, 0
	.loc	1 115 7 is_stmt 1               # parallel-rne.mlir:115:7
	j .LBB0_26
.LBB0_18:                               #   in Loop: Header=BB0_7 Depth=1
	beq r10, r21, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r10, r11, .LBB0_25
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 9
	storeli.w zero, -164(r30)               # 4-byte Folded Spill
	xwait r24, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 128
	ds_cfg r23, zero, 0
	ds_cfg r1, zero, 1
	ds_cfg r16, zero, 14
	ds_cfg r1, zero, 13
	addli r1, zero, 1
	shuffle_coa r9, r2, r16, 2
	unlock zero
	xsignal r11, 0
	storeli.w r1, -160(r30)                 # 4-byte Folded Spill
	addli r1, zero, 8
	j .LBB0_24
.LBB0_21:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 116 7                         # parallel-rne.mlir:116:7
	addli r2, zero, 8
	xwait r21, 0
	addli r7, zero, 0
	addli r6, zero, 1
	addli r8, zero, 11
	xwait r2, 0
	addli r2, zero, 1
	xwait r8, 0
.LBB0_22:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r8, r7, 14
	slli r7, r7, 8
	lock zero, r2
	mm_cfg r16, r16, r16, 0
	or r8, r8, r9
	or r7, r7, r9
	mm_cfg r21, r21, r2, 2
	mm r7, r1, r8, 8
	andi r8, r6, 1
	addli r7, zero, 1
	addli r6, zero, 0
	unlock r2
	bneq r8, zero, .LBB0_22
# %bb.23:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 9
	storeli.w zero, -160(r30)               # 4-byte Folded Spill
	xsignal r12, 0
	xsignal r1, 0
	addli r1, zero, 1
	storeli.w r1, -164(r30)                 # 4-byte Folded Spill
	addli r1, zero, 10
.LBB0_24:                               # %.thread48
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
	j .LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_7 Depth=1
	storeli.w zero, -164(r30)               # 4-byte Folded Spill
	storeli.w zero, -160(r30)               # 4-byte Folded Spill
.LBB0_26:                               # %.thread48
                                        #   in Loop: Header=BB0_7 Depth=1
	store.d r[25:26], -192(r30)             # 8-byte Folded Spill
	store.d r[14:15], -184(r30)             # 8-byte Folded Spill
	.loc	1 133 7 is_stmt 1               # parallel-rne.mlir:133:7
	bneq r10, r19, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	addli r1, zero, 16
	xwait r1, 0
.LBB0_28:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r1, 100
	storeli.w r9, -52(r30)                  # 4-byte Folded Spill
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	xfence
	add.s r24, r9, r1
	addli r1, zero, 128
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	mfence { lm, sm, gm }
	zext_int2long r[26:27], r1
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	addli r1, zero, 255
	csr_set csr5, r1
	zext_int2long r[1:2], r11
	store.d r[1:2], -136(r30)               # 8-byte Folded Spill
	sync_core
	.loc	1 139 7                         # parallel-rne.mlir:139:7
	bneq r10, zero, .LBB0_53
# %bb.29:                               #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	j .LBB0_31
.LBB0_30:                               # %middle.block365
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 147 9                         # parallel-rne.mlir:147:9
	load.d r[1:2], -136(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_52
.LBB0_31:                               # %.preheader85
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_33 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	load.d r[15:16], -64(r30)               # 8-byte Folded Reload
	sll.d r[10:11], r[6:7], r1
	j .LBB0_33
.LBB0_32:                               # %vector.body361
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 148 11 is_stmt 1              # parallel-rne.mlir:148:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	add.s r2, r24, r17
	.loc	1 148 11                        # parallel-rne.mlir:148:11
	setneq.d r1, r[15:16], r[26:27]
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	stores.w r19, 12(r2)
	stores.w r21, 8(r2)
	stores.w r25, 4(r2)
	stores.w r8, 0(r2)
	.loc	1 148 11                        # parallel-rne.mlir:148:11
	beq r1, zero, .LBB0_30
.LBB0_33:                               # %vector.body361
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	add.ul r[1:2], r[15:16], r[10:11]
	slli r17, r1, 2
	loadli.w r1,  -52(r30)                  # 4-byte Folded Reload
	add.s r1, r1, r17
	loads.w r18, 12(r1)
	loads.w r9, 0(r1)
	loads.w r28, 4(r1)
	loads.w r23, 8(r1)
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	and r12, r18, r3
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	setlt.u r1, r22, r12
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r1, zero, .LBB0_35
# %bb.34:                               # %vector.body361
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r18, 0
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_33 Depth=3
	or r19, r18, r5
.LBB0_36:                               # %vector.body361
                                        #   in Loop: Header=BB0_33 Depth=3
	and r14, r23, r3
	setlt.u r1, r22, r14
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r1, zero, .LBB0_38
# %bb.37:                               # %vector.body361
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r23, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_33 Depth=3
	or r21, r23, r5
.LBB0_39:                               # %vector.body361
                                        #   in Loop: Header=BB0_33 Depth=3
	and r1, r28, r3
	setlt.u r2, r22, r1
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r2, zero, .LBB0_41
# %bb.40:                               # %vector.body361
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r28, 0
	j .LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_33 Depth=3
	or r25, r28, r5
.LBB0_42:                               # %vector.body361
                                        #   in Loop: Header=BB0_33 Depth=3
	and r2, r9, r3
	setlt.u r8, r22, r2
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r8, zero, .LBB0_44
# %bb.43:                               # %vector.body361
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 160 19 is_stmt 1              # parallel-rne.mlir:160:19
	setlt.u r2, r4, r2
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	beq r2, zero, .LBB0_45
	j .LBB0_46
.LBB0_44:                               #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r9, r5
	.loc	1 160 19 is_stmt 1              # parallel-rne.mlir:160:19
	setlt.u r2, r4, r2
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	bneq r2, zero, .LBB0_46
.LBB0_45:                               # %vector.body361
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r13
	and r8, r2, r20
.LBB0_46:                               # %vector.body361
                                        #   in Loop: Header=BB0_33 Depth=3
	setlt.u r1, r4, r1
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	beq r1, zero, .LBB0_49
# %bb.47:                               # %vector.body361
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r4, r14
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	beq r1, zero, .LBB0_50
.LBB0_48:                               # %vector.body361
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r4, r12
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	bneq r1, zero, .LBB0_32
	j .LBB0_51
.LBB0_49:                               # %vector.body361
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r13
	and r25, r1, r20
	setlt.u r1, r4, r14
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	bneq r1, zero, .LBB0_48
.LBB0_50:                               # %vector.body361
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r23, 16
	andi r1, r1, 1
	add.s r1, r23, r1
	add.s r1, r1, r13
	and r21, r1, r20
	setlt.u r1, r4, r12
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	bneq r1, zero, .LBB0_32
.LBB0_51:                               # %vector.body361
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r13
	and r19, r1, r20
	j .LBB0_32
.LBB0_52:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r10
	.loc	1 139 7                         # parallel-rne.mlir:139:7
	mfence { sm }
.LBB0_53:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 15
	zext_int2long r[1:2], r1
	.loc	1 168 7 is_stmt 1               # parallel-rne.mlir:168:7
	store.d r[1:2], -128(r30)               # 8-byte Folded Spill
	addli r1, zero, 1
	bneq r10, r1, .LBB0_78
# %bb.54:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 168 7                         # parallel-rne.mlir:168:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[1:2], r1
	j .LBB0_56
.LBB0_55:                               # %middle.block356
                                        #   in Loop: Header=BB0_56 Depth=2
	.loc	1 176 9 is_stmt 1               # parallel-rne.mlir:176:9
	load.d r[6:7], -128(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r6, r[1:2], r[6:7]
	addli.d r[1:2], r[1:2], 1
	beq r6, zero, .LBB0_77
.LBB0_56:                               # %.preheader84
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_58 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[1:2], r11
	zext_int2long r[10:11], zero
	j .LBB0_58
.LBB0_57:                               # %vector.body352
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 177 11 is_stmt 1              # parallel-rne.mlir:177:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 192 13                        # parallel-rne.mlir:192:13
	add.s r12, r24, r15
	.loc	1 177 11                        # parallel-rne.mlir:177:11
	setneq.d r8, r[10:11], r[26:27]
	.loc	1 192 13                        # parallel-rne.mlir:192:13
	stores.w r17, 12(r12)
	stores.w r18, 8(r12)
	stores.w r21, 4(r12)
	stores.w r9, 0(r12)
	.loc	1 177 11                        # parallel-rne.mlir:177:11
	beq r8, zero, .LBB0_55
.LBB0_58:                               # %vector.body352
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	add.ul r[8:9], r[10:11], r[6:7]
	slli r15, r8, 2
	loadli.w r8,  -52(r30)                  # 4-byte Folded Reload
	add.s r9, r8, r15
	loads.w r16, 12(r9)
	loads.w r8, 0(r9)
	loads.w r23, 4(r9)
	loads.w r19, 8(r9)
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	and r12, r16, r3
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	setlt.u r9, r22, r12
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r9, zero, .LBB0_60
# %bb.59:                               # %vector.body352
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_61
.LBB0_60:                               #   in Loop: Header=BB0_58 Depth=3
	or r17, r16, r5
.LBB0_61:                               # %vector.body352
                                        #   in Loop: Header=BB0_58 Depth=3
	and r14, r19, r3
	setlt.u r9, r22, r14
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r9, zero, .LBB0_63
# %bb.62:                               # %vector.body352
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_64
.LBB0_63:                               #   in Loop: Header=BB0_58 Depth=3
	or r18, r19, r5
.LBB0_64:                               # %vector.body352
                                        #   in Loop: Header=BB0_58 Depth=3
	and r25, r23, r3
	setlt.u r9, r22, r25
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r9, zero, .LBB0_66
# %bb.65:                               # %vector.body352
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r23, 0
	j .LBB0_67
.LBB0_66:                               #   in Loop: Header=BB0_58 Depth=3
	or r21, r23, r5
.LBB0_67:                               # %vector.body352
                                        #   in Loop: Header=BB0_58 Depth=3
	and r28, r8, r3
	setlt.u r9, r22, r28
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r9, zero, .LBB0_69
# %bb.68:                               # %vector.body352
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
	.loc	1 189 19 is_stmt 1              # parallel-rne.mlir:189:19
	setlt.u r28, r4, r28
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	beq r28, zero, .LBB0_70
	j .LBB0_71
.LBB0_69:                               #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r8, r5
	.loc	1 189 19 is_stmt 1              # parallel-rne.mlir:189:19
	setlt.u r28, r4, r28
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r28, zero, .LBB0_71
.LBB0_70:                               # %vector.body352
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r13
	and r9, r8, r20
.LBB0_71:                               # %vector.body352
                                        #   in Loop: Header=BB0_58 Depth=3
	setlt.u r8, r4, r25
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	beq r8, zero, .LBB0_74
# %bb.72:                               # %vector.body352
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r4, r14
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	beq r8, zero, .LBB0_75
.LBB0_73:                               # %vector.body352
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r4, r12
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r8, zero, .LBB0_57
	j .LBB0_76
.LBB0_74:                               # %vector.body352
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r23, 16
	andi r8, r8, 1
	add.s r8, r23, r8
	add.s r8, r8, r13
	and r21, r8, r20
	setlt.u r8, r4, r14
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r8, zero, .LBB0_73
.LBB0_75:                               # %vector.body352
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r13
	and r18, r8, r20
	setlt.u r8, r4, r12
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r8, zero, .LBB0_57
.LBB0_76:                               # %vector.body352
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r13
	and r17, r8, r20
	j .LBB0_57
.LBB0_77:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r10
	.loc	1 168 7                         # parallel-rne.mlir:168:7
	mfence { sm }
.LBB0_78:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 23
	zext_int2long r[1:2], r1
	.loc	1 197 7 is_stmt 1               # parallel-rne.mlir:197:7
	store.d r[1:2], -120(r30)               # 8-byte Folded Spill
	loadli.w r1,  -168(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_103
# %bb.79:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 197 7                         # parallel-rne.mlir:197:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[1:2], r1
	j .LBB0_81
.LBB0_80:                               # %middle.block347
                                        #   in Loop: Header=BB0_81 Depth=2
	.loc	1 205 9 is_stmt 1               # parallel-rne.mlir:205:9
	load.d r[6:7], -120(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r6, r[1:2], r[6:7]
	addli.d r[1:2], r[1:2], 1
	beq r6, zero, .LBB0_102
.LBB0_81:                               # %.preheader83
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[1:2], r11
	zext_int2long r[10:11], zero
	j .LBB0_83
.LBB0_82:                               # %vector.body343
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 206 11 is_stmt 1              # parallel-rne.mlir:206:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 221 13                        # parallel-rne.mlir:221:13
	add.s r12, r24, r15
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	setneq.d r8, r[10:11], r[26:27]
	.loc	1 221 13                        # parallel-rne.mlir:221:13
	stores.w r17, 12(r12)
	stores.w r18, 8(r12)
	stores.w r21, 4(r12)
	stores.w r9, 0(r12)
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	beq r8, zero, .LBB0_80
.LBB0_83:                               # %vector.body343
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_81 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	add.ul r[8:9], r[10:11], r[6:7]
	slli r15, r8, 2
	loadli.w r8,  -52(r30)                  # 4-byte Folded Reload
	add.s r9, r8, r15
	loads.w r16, 12(r9)
	loads.w r8, 0(r9)
	loads.w r23, 4(r9)
	loads.w r19, 8(r9)
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	and r12, r16, r3
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	setlt.u r9, r22, r12
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r9, zero, .LBB0_85
# %bb.84:                               # %vector.body343
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_83 Depth=3
	or r17, r16, r5
.LBB0_86:                               # %vector.body343
                                        #   in Loop: Header=BB0_83 Depth=3
	and r14, r19, r3
	setlt.u r9, r22, r14
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r9, zero, .LBB0_88
# %bb.87:                               # %vector.body343
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_83 Depth=3
	or r18, r19, r5
.LBB0_89:                               # %vector.body343
                                        #   in Loop: Header=BB0_83 Depth=3
	and r25, r23, r3
	setlt.u r9, r22, r25
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r9, zero, .LBB0_91
# %bb.90:                               # %vector.body343
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r23, 0
	j .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_83 Depth=3
	or r21, r23, r5
.LBB0_92:                               # %vector.body343
                                        #   in Loop: Header=BB0_83 Depth=3
	and r28, r8, r3
	setlt.u r9, r22, r28
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r9, zero, .LBB0_94
# %bb.93:                               # %vector.body343
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
	.loc	1 218 19 is_stmt 1              # parallel-rne.mlir:218:19
	setlt.u r28, r4, r28
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	beq r28, zero, .LBB0_95
	j .LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r8, r5
	.loc	1 218 19 is_stmt 1              # parallel-rne.mlir:218:19
	setlt.u r28, r4, r28
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r28, zero, .LBB0_96
.LBB0_95:                               # %vector.body343
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r13
	and r9, r8, r20
.LBB0_96:                               # %vector.body343
                                        #   in Loop: Header=BB0_83 Depth=3
	setlt.u r8, r4, r25
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	beq r8, zero, .LBB0_99
# %bb.97:                               # %vector.body343
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r4, r14
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	beq r8, zero, .LBB0_100
.LBB0_98:                               # %vector.body343
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r4, r12
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r8, zero, .LBB0_82
	j .LBB0_101
.LBB0_99:                               # %vector.body343
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r23, 16
	andi r8, r8, 1
	add.s r8, r23, r8
	add.s r8, r8, r13
	and r21, r8, r20
	setlt.u r8, r4, r14
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r8, zero, .LBB0_98
.LBB0_100:                              # %vector.body343
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r13
	and r18, r8, r20
	setlt.u r8, r4, r12
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r8, zero, .LBB0_82
.LBB0_101:                              # %vector.body343
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r13
	and r17, r8, r20
	j .LBB0_82
.LBB0_102:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r10
	.loc	1 197 7                         # parallel-rne.mlir:197:7
	mfence { sm }
.LBB0_103:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 31
	zext_int2long r[1:2], r1
	.loc	1 226 7 is_stmt 1               # parallel-rne.mlir:226:7
	store.d r[1:2], -112(r30)               # 8-byte Folded Spill
	addli r1, zero, 3
	bneq r10, r1, .LBB0_128
# %bb.104:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 226 7                         # parallel-rne.mlir:226:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[1:2], r1
	j .LBB0_106
.LBB0_105:                              # %middle.block338
                                        #   in Loop: Header=BB0_106 Depth=2
	.loc	1 234 9 is_stmt 1               # parallel-rne.mlir:234:9
	load.d r[6:7], -112(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r6, r[1:2], r[6:7]
	addli.d r[1:2], r[1:2], 1
	beq r6, zero, .LBB0_127
.LBB0_106:                              # %.preheader82
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_108 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[1:2], r11
	zext_int2long r[10:11], zero
	j .LBB0_108
.LBB0_107:                              # %vector.body334
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 235 11 is_stmt 1              # parallel-rne.mlir:235:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 250 13                        # parallel-rne.mlir:250:13
	add.s r12, r24, r15
	.loc	1 235 11                        # parallel-rne.mlir:235:11
	setneq.d r8, r[10:11], r[26:27]
	.loc	1 250 13                        # parallel-rne.mlir:250:13
	stores.w r17, 12(r12)
	stores.w r18, 8(r12)
	stores.w r21, 4(r12)
	stores.w r9, 0(r12)
	.loc	1 235 11                        # parallel-rne.mlir:235:11
	beq r8, zero, .LBB0_105
.LBB0_108:                              # %vector.body334
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_106 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	add.ul r[8:9], r[10:11], r[6:7]
	slli r15, r8, 2
	loadli.w r8,  -52(r30)                  # 4-byte Folded Reload
	add.s r9, r8, r15
	loads.w r16, 12(r9)
	loads.w r8, 0(r9)
	loads.w r23, 4(r9)
	loads.w r19, 8(r9)
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	and r12, r16, r3
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	setlt.u r9, r22, r12
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r9, zero, .LBB0_110
# %bb.109:                              # %vector.body334
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_108 Depth=3
	or r17, r16, r5
.LBB0_111:                              # %vector.body334
                                        #   in Loop: Header=BB0_108 Depth=3
	and r14, r19, r3
	setlt.u r9, r22, r14
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r9, zero, .LBB0_113
# %bb.112:                              # %vector.body334
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_108 Depth=3
	or r18, r19, r5
.LBB0_114:                              # %vector.body334
                                        #   in Loop: Header=BB0_108 Depth=3
	and r25, r23, r3
	setlt.u r9, r22, r25
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r9, zero, .LBB0_116
# %bb.115:                              # %vector.body334
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r23, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_108 Depth=3
	or r21, r23, r5
.LBB0_117:                              # %vector.body334
                                        #   in Loop: Header=BB0_108 Depth=3
	and r28, r8, r3
	setlt.u r9, r22, r28
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r9, zero, .LBB0_119
# %bb.118:                              # %vector.body334
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
	.loc	1 247 19 is_stmt 1              # parallel-rne.mlir:247:19
	setlt.u r28, r4, r28
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	beq r28, zero, .LBB0_120
	j .LBB0_121
.LBB0_119:                              #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r8, r5
	.loc	1 247 19 is_stmt 1              # parallel-rne.mlir:247:19
	setlt.u r28, r4, r28
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r28, zero, .LBB0_121
.LBB0_120:                              # %vector.body334
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r13
	and r9, r8, r20
.LBB0_121:                              # %vector.body334
                                        #   in Loop: Header=BB0_108 Depth=3
	setlt.u r8, r4, r25
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	beq r8, zero, .LBB0_124
# %bb.122:                              # %vector.body334
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r4, r14
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	beq r8, zero, .LBB0_125
.LBB0_123:                              # %vector.body334
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r4, r12
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r8, zero, .LBB0_107
	j .LBB0_126
.LBB0_124:                              # %vector.body334
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r23, 16
	andi r8, r8, 1
	add.s r8, r23, r8
	add.s r8, r8, r13
	and r21, r8, r20
	setlt.u r8, r4, r14
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r8, zero, .LBB0_123
.LBB0_125:                              # %vector.body334
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r13
	and r18, r8, r20
	setlt.u r8, r4, r12
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r8, zero, .LBB0_107
.LBB0_126:                              # %vector.body334
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r13
	and r17, r8, r20
	j .LBB0_107
.LBB0_127:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r10
	.loc	1 226 7                         # parallel-rne.mlir:226:7
	mfence { sm }
.LBB0_128:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 39
	zext_int2long r[1:2], r1
	.loc	1 255 7 is_stmt 1               # parallel-rne.mlir:255:7
	store.d r[1:2], -104(r30)               # 8-byte Folded Spill
	loadli.w r1,  -164(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_153
# %bb.129:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 255 7                         # parallel-rne.mlir:255:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[1:2], r1
	j .LBB0_131
.LBB0_130:                              # %middle.block329
                                        #   in Loop: Header=BB0_131 Depth=2
	.loc	1 263 9 is_stmt 1               # parallel-rne.mlir:263:9
	load.d r[6:7], -104(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r6, r[1:2], r[6:7]
	addli.d r[1:2], r[1:2], 1
	beq r6, zero, .LBB0_152
.LBB0_131:                              # %.preheader81
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_133 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[1:2], r11
	zext_int2long r[10:11], zero
	j .LBB0_133
.LBB0_132:                              # %vector.body325
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 264 11 is_stmt 1              # parallel-rne.mlir:264:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 279 13                        # parallel-rne.mlir:279:13
	add.s r12, r24, r15
	.loc	1 264 11                        # parallel-rne.mlir:264:11
	setneq.d r8, r[10:11], r[26:27]
	.loc	1 279 13                        # parallel-rne.mlir:279:13
	stores.w r17, 12(r12)
	stores.w r18, 8(r12)
	stores.w r21, 4(r12)
	stores.w r9, 0(r12)
	.loc	1 264 11                        # parallel-rne.mlir:264:11
	beq r8, zero, .LBB0_130
.LBB0_133:                              # %vector.body325
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	add.ul r[8:9], r[10:11], r[6:7]
	slli r15, r8, 2
	loadli.w r8,  -52(r30)                  # 4-byte Folded Reload
	add.s r9, r8, r15
	loads.w r16, 12(r9)
	loads.w r8, 0(r9)
	loads.w r23, 4(r9)
	loads.w r19, 8(r9)
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	and r12, r16, r3
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	setlt.u r9, r22, r12
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r9, zero, .LBB0_135
# %bb.134:                              # %vector.body325
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_136
.LBB0_135:                              #   in Loop: Header=BB0_133 Depth=3
	or r17, r16, r5
.LBB0_136:                              # %vector.body325
                                        #   in Loop: Header=BB0_133 Depth=3
	and r14, r19, r3
	setlt.u r9, r22, r14
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r9, zero, .LBB0_138
# %bb.137:                              # %vector.body325
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_139
.LBB0_138:                              #   in Loop: Header=BB0_133 Depth=3
	or r18, r19, r5
.LBB0_139:                              # %vector.body325
                                        #   in Loop: Header=BB0_133 Depth=3
	and r25, r23, r3
	setlt.u r9, r22, r25
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r9, zero, .LBB0_141
# %bb.140:                              # %vector.body325
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r23, 0
	j .LBB0_142
.LBB0_141:                              #   in Loop: Header=BB0_133 Depth=3
	or r21, r23, r5
.LBB0_142:                              # %vector.body325
                                        #   in Loop: Header=BB0_133 Depth=3
	and r28, r8, r3
	setlt.u r9, r22, r28
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r9, zero, .LBB0_144
# %bb.143:                              # %vector.body325
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
	.loc	1 276 19 is_stmt 1              # parallel-rne.mlir:276:19
	setlt.u r28, r4, r28
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	beq r28, zero, .LBB0_145
	j .LBB0_146
.LBB0_144:                              #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r8, r5
	.loc	1 276 19 is_stmt 1              # parallel-rne.mlir:276:19
	setlt.u r28, r4, r28
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r28, zero, .LBB0_146
.LBB0_145:                              # %vector.body325
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r13
	and r9, r8, r20
.LBB0_146:                              # %vector.body325
                                        #   in Loop: Header=BB0_133 Depth=3
	setlt.u r8, r4, r25
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	beq r8, zero, .LBB0_149
# %bb.147:                              # %vector.body325
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r4, r14
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	beq r8, zero, .LBB0_150
.LBB0_148:                              # %vector.body325
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r4, r12
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r8, zero, .LBB0_132
	j .LBB0_151
.LBB0_149:                              # %vector.body325
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r23, 16
	andi r8, r8, 1
	add.s r8, r23, r8
	add.s r8, r8, r13
	and r21, r8, r20
	setlt.u r8, r4, r14
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r8, zero, .LBB0_148
.LBB0_150:                              # %vector.body325
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r13
	and r18, r8, r20
	setlt.u r8, r4, r12
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r8, zero, .LBB0_132
.LBB0_151:                              # %vector.body325
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r13
	and r17, r8, r20
	j .LBB0_132
.LBB0_152:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r10
	.loc	1 255 7                         # parallel-rne.mlir:255:7
	mfence { sm }
.LBB0_153:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 47
	zext_int2long r[1:2], r1
	.loc	1 284 7 is_stmt 1               # parallel-rne.mlir:284:7
	store.d r[1:2], -96(r30)                # 8-byte Folded Spill
	addli r1, zero, 5
	bneq r10, r1, .LBB0_178
# %bb.154:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 284 7                         # parallel-rne.mlir:284:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[1:2], r1
	j .LBB0_156
.LBB0_155:                              # %middle.block320
                                        #   in Loop: Header=BB0_156 Depth=2
	.loc	1 292 9 is_stmt 1               # parallel-rne.mlir:292:9
	load.d r[6:7], -96(r30)                 # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r6, r[1:2], r[6:7]
	addli.d r[1:2], r[1:2], 1
	beq r6, zero, .LBB0_177
.LBB0_156:                              # %.preheader80
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_158 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[1:2], r11
	zext_int2long r[10:11], zero
	j .LBB0_158
.LBB0_157:                              # %vector.body316
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 293 11 is_stmt 1              # parallel-rne.mlir:293:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 308 13                        # parallel-rne.mlir:308:13
	add.s r12, r24, r15
	.loc	1 293 11                        # parallel-rne.mlir:293:11
	setneq.d r8, r[10:11], r[26:27]
	.loc	1 308 13                        # parallel-rne.mlir:308:13
	stores.w r17, 12(r12)
	stores.w r18, 8(r12)
	stores.w r21, 4(r12)
	stores.w r9, 0(r12)
	.loc	1 293 11                        # parallel-rne.mlir:293:11
	beq r8, zero, .LBB0_155
.LBB0_158:                              # %vector.body316
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	add.ul r[8:9], r[10:11], r[6:7]
	slli r15, r8, 2
	loadli.w r8,  -52(r30)                  # 4-byte Folded Reload
	add.s r9, r8, r15
	loads.w r16, 12(r9)
	loads.w r8, 0(r9)
	loads.w r23, 4(r9)
	loads.w r19, 8(r9)
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	and r12, r16, r3
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	setlt.u r9, r22, r12
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r9, zero, .LBB0_160
# %bb.159:                              # %vector.body316
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_161
.LBB0_160:                              #   in Loop: Header=BB0_158 Depth=3
	or r17, r16, r5
.LBB0_161:                              # %vector.body316
                                        #   in Loop: Header=BB0_158 Depth=3
	and r14, r19, r3
	setlt.u r9, r22, r14
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r9, zero, .LBB0_163
# %bb.162:                              # %vector.body316
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_164
.LBB0_163:                              #   in Loop: Header=BB0_158 Depth=3
	or r18, r19, r5
.LBB0_164:                              # %vector.body316
                                        #   in Loop: Header=BB0_158 Depth=3
	and r25, r23, r3
	setlt.u r9, r22, r25
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r9, zero, .LBB0_166
# %bb.165:                              # %vector.body316
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r23, 0
	j .LBB0_167
.LBB0_166:                              #   in Loop: Header=BB0_158 Depth=3
	or r21, r23, r5
.LBB0_167:                              # %vector.body316
                                        #   in Loop: Header=BB0_158 Depth=3
	and r28, r8, r3
	setlt.u r9, r22, r28
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r9, zero, .LBB0_169
# %bb.168:                              # %vector.body316
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
	.loc	1 305 19 is_stmt 1              # parallel-rne.mlir:305:19
	setlt.u r28, r4, r28
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	beq r28, zero, .LBB0_170
	j .LBB0_171
.LBB0_169:                              #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r8, r5
	.loc	1 305 19 is_stmt 1              # parallel-rne.mlir:305:19
	setlt.u r28, r4, r28
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r28, zero, .LBB0_171
.LBB0_170:                              # %vector.body316
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r13
	and r9, r8, r20
.LBB0_171:                              # %vector.body316
                                        #   in Loop: Header=BB0_158 Depth=3
	setlt.u r8, r4, r25
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	beq r8, zero, .LBB0_174
# %bb.172:                              # %vector.body316
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r4, r14
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	beq r8, zero, .LBB0_175
.LBB0_173:                              # %vector.body316
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r4, r12
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r8, zero, .LBB0_157
	j .LBB0_176
.LBB0_174:                              # %vector.body316
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r23, 16
	andi r8, r8, 1
	add.s r8, r23, r8
	add.s r8, r8, r13
	and r21, r8, r20
	setlt.u r8, r4, r14
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r8, zero, .LBB0_173
.LBB0_175:                              # %vector.body316
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r13
	and r18, r8, r20
	setlt.u r8, r4, r12
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r8, zero, .LBB0_157
.LBB0_176:                              # %vector.body316
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r13
	and r17, r8, r20
	j .LBB0_157
.LBB0_177:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r10
	.loc	1 284 7                         # parallel-rne.mlir:284:7
	mfence { sm }
.LBB0_178:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 55
	zext_int2long r[1:2], r1
	.loc	1 313 7 is_stmt 1               # parallel-rne.mlir:313:7
	store.d r[1:2], -88(r30)                # 8-byte Folded Spill
	addli r1, zero, 6
	bneq r10, r1, .LBB0_203
# %bb.179:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 48
	.loc	1 313 7                         # parallel-rne.mlir:313:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[1:2], r1
	j .LBB0_181
.LBB0_180:                              # %middle.block311
                                        #   in Loop: Header=BB0_181 Depth=2
	.loc	1 321 9 is_stmt 1               # parallel-rne.mlir:321:9
	load.d r[6:7], -88(r30)                 # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r6, r[1:2], r[6:7]
	addli.d r[1:2], r[1:2], 1
	beq r6, zero, .LBB0_202
.LBB0_181:                              # %.preheader79
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_183 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[1:2], r11
	zext_int2long r[10:11], zero
	j .LBB0_183
.LBB0_182:                              # %vector.body307
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 322 11 is_stmt 1              # parallel-rne.mlir:322:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 337 13                        # parallel-rne.mlir:337:13
	add.s r12, r24, r15
	.loc	1 322 11                        # parallel-rne.mlir:322:11
	setneq.d r8, r[10:11], r[26:27]
	.loc	1 337 13                        # parallel-rne.mlir:337:13
	stores.w r17, 12(r12)
	stores.w r18, 8(r12)
	stores.w r21, 4(r12)
	stores.w r9, 0(r12)
	.loc	1 322 11                        # parallel-rne.mlir:322:11
	beq r8, zero, .LBB0_180
.LBB0_183:                              # %vector.body307
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_181 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	add.ul r[8:9], r[10:11], r[6:7]
	slli r15, r8, 2
	loadli.w r8,  -52(r30)                  # 4-byte Folded Reload
	add.s r9, r8, r15
	loads.w r16, 12(r9)
	loads.w r8, 0(r9)
	loads.w r23, 4(r9)
	loads.w r19, 8(r9)
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	and r12, r16, r3
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	setlt.u r9, r22, r12
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r9, zero, .LBB0_185
# %bb.184:                              # %vector.body307
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_183 Depth=3
	or r17, r16, r5
.LBB0_186:                              # %vector.body307
                                        #   in Loop: Header=BB0_183 Depth=3
	and r14, r19, r3
	setlt.u r9, r22, r14
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r9, zero, .LBB0_188
# %bb.187:                              # %vector.body307
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_189
.LBB0_188:                              #   in Loop: Header=BB0_183 Depth=3
	or r18, r19, r5
.LBB0_189:                              # %vector.body307
                                        #   in Loop: Header=BB0_183 Depth=3
	and r25, r23, r3
	setlt.u r9, r22, r25
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r9, zero, .LBB0_191
# %bb.190:                              # %vector.body307
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r23, 0
	j .LBB0_192
.LBB0_191:                              #   in Loop: Header=BB0_183 Depth=3
	or r21, r23, r5
.LBB0_192:                              # %vector.body307
                                        #   in Loop: Header=BB0_183 Depth=3
	and r28, r8, r3
	setlt.u r9, r22, r28
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r9, zero, .LBB0_194
# %bb.193:                              # %vector.body307
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
	.loc	1 334 19 is_stmt 1              # parallel-rne.mlir:334:19
	setlt.u r28, r4, r28
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	beq r28, zero, .LBB0_195
	j .LBB0_196
.LBB0_194:                              #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r8, r5
	.loc	1 334 19 is_stmt 1              # parallel-rne.mlir:334:19
	setlt.u r28, r4, r28
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r28, zero, .LBB0_196
.LBB0_195:                              # %vector.body307
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r13
	and r9, r8, r20
.LBB0_196:                              # %vector.body307
                                        #   in Loop: Header=BB0_183 Depth=3
	setlt.u r8, r4, r25
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	beq r8, zero, .LBB0_199
# %bb.197:                              # %vector.body307
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r4, r14
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	beq r8, zero, .LBB0_200
.LBB0_198:                              # %vector.body307
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r4, r12
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r8, zero, .LBB0_182
	j .LBB0_201
.LBB0_199:                              # %vector.body307
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r23, 16
	andi r8, r8, 1
	add.s r8, r23, r8
	add.s r8, r8, r13
	and r21, r8, r20
	setlt.u r8, r4, r14
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r8, zero, .LBB0_198
.LBB0_200:                              # %vector.body307
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r13
	and r18, r8, r20
	setlt.u r8, r4, r12
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r8, zero, .LBB0_182
.LBB0_201:                              # %vector.body307
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r13
	and r17, r8, r20
	j .LBB0_182
.LBB0_202:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r10
	.loc	1 313 7                         # parallel-rne.mlir:313:7
	mfence { sm }
.LBB0_203:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 63
	zext_int2long r[1:2], r1
	.loc	1 342 7 is_stmt 1               # parallel-rne.mlir:342:7
	store.d r[1:2], -80(r30)                # 8-byte Folded Spill
	loadli.w r1,  -160(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_228
# %bb.204:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 342 7                         # parallel-rne.mlir:342:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[1:2], r1
	j .LBB0_206
.LBB0_205:                              # %middle.block302
                                        #   in Loop: Header=BB0_206 Depth=2
	.loc	1 350 9 is_stmt 1               # parallel-rne.mlir:350:9
	load.d r[6:7], -80(r30)                 # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r6, r[1:2], r[6:7]
	addli.d r[1:2], r[1:2], 1
	beq r6, zero, .LBB0_227
.LBB0_206:                              # %.preheader78
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_208 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[1:2], r11
	zext_int2long r[10:11], zero
	j .LBB0_208
.LBB0_207:                              # %vector.body298
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 351 11 is_stmt 1              # parallel-rne.mlir:351:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	add.s r12, r24, r15
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	setneq.d r8, r[10:11], r[26:27]
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	stores.w r17, 12(r12)
	stores.w r18, 8(r12)
	stores.w r21, 4(r12)
	stores.w r9, 0(r12)
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	beq r8, zero, .LBB0_205
.LBB0_208:                              # %vector.body298
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_206 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	add.ul r[8:9], r[10:11], r[6:7]
	slli r15, r8, 2
	loadli.w r8,  -52(r30)                  # 4-byte Folded Reload
	add.s r9, r8, r15
	loads.w r16, 12(r9)
	loads.w r8, 0(r9)
	loads.w r23, 4(r9)
	loads.w r19, 8(r9)
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	and r12, r16, r3
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	setlt.u r9, r22, r12
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r9, zero, .LBB0_210
# %bb.209:                              # %vector.body298
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_211
.LBB0_210:                              #   in Loop: Header=BB0_208 Depth=3
	or r17, r16, r5
.LBB0_211:                              # %vector.body298
                                        #   in Loop: Header=BB0_208 Depth=3
	and r14, r19, r3
	setlt.u r9, r22, r14
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r9, zero, .LBB0_213
# %bb.212:                              # %vector.body298
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_208 Depth=3
	or r18, r19, r5
.LBB0_214:                              # %vector.body298
                                        #   in Loop: Header=BB0_208 Depth=3
	and r25, r23, r3
	setlt.u r9, r22, r25
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r9, zero, .LBB0_216
# %bb.215:                              # %vector.body298
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r23, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_208 Depth=3
	or r21, r23, r5
.LBB0_217:                              # %vector.body298
                                        #   in Loop: Header=BB0_208 Depth=3
	and r28, r8, r3
	setlt.u r9, r22, r28
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r9, zero, .LBB0_219
# %bb.218:                              # %vector.body298
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
	.loc	1 363 19 is_stmt 1              # parallel-rne.mlir:363:19
	setlt.u r28, r4, r28
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	beq r28, zero, .LBB0_220
	j .LBB0_221
.LBB0_219:                              #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r8, r5
	.loc	1 363 19 is_stmt 1              # parallel-rne.mlir:363:19
	setlt.u r28, r4, r28
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r28, zero, .LBB0_221
.LBB0_220:                              # %vector.body298
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r13
	and r9, r8, r20
.LBB0_221:                              # %vector.body298
                                        #   in Loop: Header=BB0_208 Depth=3
	setlt.u r8, r4, r25
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	beq r8, zero, .LBB0_224
# %bb.222:                              # %vector.body298
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r4, r14
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	beq r8, zero, .LBB0_225
.LBB0_223:                              # %vector.body298
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r4, r12
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r8, zero, .LBB0_207
	j .LBB0_226
.LBB0_224:                              # %vector.body298
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r23, 16
	andi r8, r8, 1
	add.s r8, r23, r8
	add.s r8, r8, r13
	and r21, r8, r20
	setlt.u r8, r4, r14
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r8, zero, .LBB0_223
.LBB0_225:                              # %vector.body298
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r13
	and r18, r8, r20
	setlt.u r8, r4, r12
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r8, zero, .LBB0_207
.LBB0_226:                              # %vector.body298
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r13
	and r17, r8, r20
	j .LBB0_207
.LBB0_227:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r10
	.loc	1 342 7                         # parallel-rne.mlir:342:7
	mfence { sm }
.LBB0_228:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -144(r30)                 # 4-byte Folded Reload
	addli r2, zero, 896
	zext_int2long r[6:7], r2
	slli r1, r1, 7
	zext_int2long r[1:2], r1
	min.ul r[6:7], r[1:2], r[6:7]
	addli.d r[6:7], r[6:7], 128
	max.ul r[6:7], r[6:7], r[1:2]
	sub.sl r[1:2], r[6:7], r[1:2]
	min.ul r[1:2], r[1:2], r[26:27]
	.loc	1 371 7 is_stmt 1               # parallel-rne.mlir:371:7
	store.d r[1:2], -200(r30)               # 8-byte Folded Spill
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 372 7                         # parallel-rne.mlir:372:7
	addli r1, zero, 3
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	sync_core
	.loc	1 372 7                         # parallel-rne.mlir:372:7
	bneq r10, r1, .LBB0_230
# %bb.229:                              # %.thread51.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 373 7                         # parallel-rne.mlir:373:7
	addli r1, zero, 12
	xsignal r1, 0
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	addli r1, zero, 13
	xwait r1, 0
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	addli r1, zero, 22
	xwait r1, 0
	j .LBB0_238
.LBB0_230:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -72(r30)                  # 4-byte Folded Reload
	.loc	1 375 7 is_stmt 1               # parallel-rne.mlir:375:7
	addli r6, zero, 1
	slli r2, r1, 9
	lui r1, 140
	add.s r1, r2, r1
	bneq r10, r6, .LBB0_234
# %bb.231:                              #   in Loop: Header=BB0_7 Depth=1
	load.d r[6:7], 16(r30)
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	addli r14, zero, 18
	addli r12, zero, 4
	xwait r14, 0
	add.ul r[6:7], r[6:7], r[8:9]
	loadli.w r8,  -172(r30)                 # 4-byte Folded Reload
	blt.s r12, r8, .LBB0_233
# %bb.232:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 5
	addli r10, zero, 1
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	addli r9, zero, 2
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 3
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 6
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 8
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 9
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 11
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 12
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 13
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 14
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 15
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 16
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 17
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 19
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 20
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 21
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 22
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 23
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 24
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 25
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 26
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 27
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 28
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 29
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 30
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 31
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 64
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r9, 3
	addli r9, zero, 128
	dma_cfg r9, zero, r12, 4
	addli r9, zero, 512
	dma_cfg r9, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
.LBB0_233:                              # %.thread51.thread62
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r10, zero, 1
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	lock zero, r12
	lui r8, 140
	addli r9, zero, 64
	dma_cfg r10, r10, zero, 0
	ori r8, r8, 64
	dma_cfg zero, r7, zero, 2
	load.d r[15:16], -200(r30)              # 8-byte Folded Reload
	add.s r2, r2, r8
	dma_cfg r2, r6, r9, 3
	addli r7, zero, 256
	addli r8, r15, 31
	slli r6, r15, 1
	addli r15, zero, 128
	addli r16, zero, 512
	srli r2, r8, 5
	andi r6, r6, 62
	addli r8, zero, 2
	dma_cfg r15, r9, r2, 4
	dma_cfg r16, r7, r10, 5
	addli r7, zero, 5
	dma_cfg zero, zero, r6, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 3
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 6
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 8
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 19
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 9
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 11
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 12
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 13
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 14
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 15
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 16
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 17
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 20
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 21
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 22
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 23
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 24
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 25
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 26
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 27
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 28
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 29
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 30
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 31
	dma_cfg zero, zero, r11, 10
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r9, 3
	dma_cfg r15, zero, r2, 4
	dma_cfg r16, zero, r10, 5
	dma_cfg zero, zero, r6, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	xsignal r8, 0
	.loc	1 380 7 is_stmt 1               # parallel-rne.mlir:380:7
	j .LBB0_238
.LBB0_234:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	addli r2, zero, 5
	bneq r10, r2, .LBB0_238
# %bb.235:                              #   in Loop: Header=BB0_7 Depth=1
	addli r6, zero, 12
	addli r2, zero, 0
	lui r7, 8
	xwait r6, 0
	addli r6, zero, 17
	xwait r6, 0
	addli r6, zero, 2
	lock zero, r6
	lui r6, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r6, r6, zero, 0
	addli r6, zero, 127
	ew_cfg zero, r6, zero, 2
	addli r6, zero, 1
	ew_cfg r6, zero, zero, 3
.LBB0_236:                              #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r6, r24, r2
	addli r2, r2, 512
	dsmadd r6, r6, r1, 0
	bneq r2, r7, .LBB0_236
# %bb.237:                              # %.thread51
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 2
	unlock r1
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
.LBB0_238:                              # %.critedge6
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r1, 140
	.loc	1 383 7 is_stmt 1               # parallel-rne.mlir:383:7
	xfence
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	loadli.w r2,  -52(r30)                  # 4-byte Folded Reload
	.loc	1 384 7                         # parallel-rne.mlir:384:7
	mfence { lm, sm, gm }
	ori r1, r1, 2560
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	add.s r11, r2, r1
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r1
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	sync_core
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	beq r1, zero, .LBB0_241
# %bb.239:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 415 7                         # parallel-rne.mlir:415:7
	addli r2, zero, 1
	beq r1, r2, .LBB0_265
.LBB0_240:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 444 7                         # parallel-rne.mlir:444:7
	loadli.w r1,  -168(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_289
	j .LBB0_313
.LBB0_241:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 386 7 is_stmt 1               # parallel-rne.mlir:386:7
	xfence
	mfence { lm, sm, gm }
	addli.d r[6:7], r[1:2], 0
	store.d r[1:2], -72(r30)                # 8-byte Folded Spill
	j .LBB0_243
.LBB0_242:                              # %middle.block293
                                        #   in Loop: Header=BB0_243 Depth=2
	.loc	1 394 9                         # parallel-rne.mlir:394:9
	load.d r[1:2], -136(r30)                # 8-byte Folded Reload
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_264
.LBB0_243:                              # %.preheader77
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_245 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	load.d r[17:18], -72(r30)               # 8-byte Folded Reload
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	sll.d r[8:9], r[6:7], r1
	j .LBB0_245
.LBB0_244:                              # %vector.body289
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 395 11 is_stmt 1              # parallel-rne.mlir:395:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 410 13                        # parallel-rne.mlir:410:13
	add.s r6, r11, r10
	.loc	1 395 11                        # parallel-rne.mlir:395:11
	setneq.d r2, r[17:18], r[26:27]
	.loc	1 410 13                        # parallel-rne.mlir:410:13
	stores.w r16, 12(r6)
	stores.w r19, 8(r6)
	stores.w r23, 4(r6)
	stores.w r1, 0(r6)
	.loc	1 395 11                        # parallel-rne.mlir:395:11
	beq r2, zero, .LBB0_242
.LBB0_245:                              # %vector.body289
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_243 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 396 19                        # parallel-rne.mlir:396:19
	add.ul r[1:2], r[17:18], r[8:9]
	slli r10, r1, 2
	add.s r1, r24, r10
	loads.w r15, 12(r1)
	loads.w r28, 0(r1)
	loads.w r25, 4(r1)
	loads.w r21, 8(r1)
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	and r12, r15, r3
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	setlt.u r1, r22, r12
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	bneq r1, zero, .LBB0_247
# %bb.246:                              # %vector.body289
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_245 Depth=3
	or r16, r15, r5
.LBB0_248:                              # %vector.body289
                                        #   in Loop: Header=BB0_245 Depth=3
	and r14, r21, r3
	setlt.u r1, r22, r14
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	bneq r1, zero, .LBB0_250
# %bb.249:                              # %vector.body289
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	j .LBB0_251
.LBB0_250:                              #   in Loop: Header=BB0_245 Depth=3
	or r19, r21, r5
.LBB0_251:                              # %vector.body289
                                        #   in Loop: Header=BB0_245 Depth=3
	and r2, r25, r3
	setlt.u r1, r22, r2
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	bneq r1, zero, .LBB0_253
# %bb.252:                              # %vector.body289
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r25, 0
	j .LBB0_254
.LBB0_253:                              #   in Loop: Header=BB0_245 Depth=3
	or r23, r25, r5
.LBB0_254:                              # %vector.body289
                                        #   in Loop: Header=BB0_245 Depth=3
	and r6, r28, r3
	setlt.u r1, r22, r6
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	bneq r1, zero, .LBB0_256
# %bb.255:                              # %vector.body289
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r28, 0
	.loc	1 407 19 is_stmt 1              # parallel-rne.mlir:407:19
	setlt.u r6, r4, r6
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	beq r6, zero, .LBB0_257
	j .LBB0_258
.LBB0_256:                              #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r1, r28, r5
	.loc	1 407 19 is_stmt 1              # parallel-rne.mlir:407:19
	setlt.u r6, r4, r6
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	bneq r6, zero, .LBB0_258
.LBB0_257:                              # %vector.body289
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r13
	and r1, r1, r20
.LBB0_258:                              # %vector.body289
                                        #   in Loop: Header=BB0_245 Depth=3
	setlt.u r2, r4, r2
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	beq r2, zero, .LBB0_261
# %bb.259:                              # %vector.body289
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r14
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	beq r2, zero, .LBB0_262
.LBB0_260:                              # %vector.body289
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r12
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	bneq r2, zero, .LBB0_244
	j .LBB0_263
.LBB0_261:                              # %vector.body289
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r25, 16
	andi r2, r2, 1
	add.s r2, r25, r2
	add.s r2, r2, r13
	and r23, r2, r20
	setlt.u r2, r4, r14
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	bneq r2, zero, .LBB0_260
.LBB0_262:                              # %vector.body289
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r13
	and r19, r2, r20
	setlt.u r2, r4, r12
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	bneq r2, zero, .LBB0_244
.LBB0_263:                              # %vector.body289
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r13
	and r16, r2, r20
	j .LBB0_244
.LBB0_264:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r1
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	mfence { sm }
	.loc	1 415 7                         # parallel-rne.mlir:415:7
	addli r2, zero, 1
	bneq r1, r2, .LBB0_240
.LBB0_265:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 415 7                         # parallel-rne.mlir:415:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_267
.LBB0_266:                              # %middle.block284
                                        #   in Loop: Header=BB0_267 Depth=2
	.loc	1 423 9 is_stmt 1               # parallel-rne.mlir:423:9
	load.d r[1:2], -128(r30)                # 8-byte Folded Reload
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_288
.LBB0_267:                              # %.preheader76
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_269 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	zext_int2long r[8:9], zero
	sll.d r[6:7], r[6:7], r1
	j .LBB0_269
.LBB0_268:                              # %vector.body280
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 424 11 is_stmt 1              # parallel-rne.mlir:424:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 439 13                        # parallel-rne.mlir:439:13
	add.s r2, r11, r10
	.loc	1 424 11                        # parallel-rne.mlir:424:11
	setneq.d r1, r[8:9], r[26:27]
	.loc	1 439 13                        # parallel-rne.mlir:439:13
	stores.w r16, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r23, 0(r2)
	.loc	1 424 11                        # parallel-rne.mlir:424:11
	beq r1, zero, .LBB0_266
.LBB0_269:                              # %vector.body280
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r10, r1, 2
	add.s r1, r24, r10
	loads.w r15, 12(r1)
	loads.w r25, 0(r1)
	loads.w r21, 4(r1)
	loads.w r18, 8(r1)
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	and r12, r15, r3
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	setlt.u r1, r22, r12
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r1, zero, .LBB0_271
# %bb.270:                              # %vector.body280
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_272
.LBB0_271:                              #   in Loop: Header=BB0_269 Depth=3
	or r16, r15, r5
.LBB0_272:                              # %vector.body280
                                        #   in Loop: Header=BB0_269 Depth=3
	and r14, r18, r3
	setlt.u r1, r22, r14
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r1, zero, .LBB0_274
# %bb.273:                              # %vector.body280
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	j .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_269 Depth=3
	or r17, r18, r5
.LBB0_275:                              # %vector.body280
                                        #   in Loop: Header=BB0_269 Depth=3
	and r28, r21, r3
	setlt.u r1, r22, r28
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r1, zero, .LBB0_277
# %bb.276:                              # %vector.body280
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	j .LBB0_278
.LBB0_277:                              #   in Loop: Header=BB0_269 Depth=3
	or r19, r21, r5
.LBB0_278:                              # %vector.body280
                                        #   in Loop: Header=BB0_269 Depth=3
	and r1, r25, r3
	setlt.u r2, r22, r1
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r2, zero, .LBB0_280
# %bb.279:                              # %vector.body280
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r25, 0
	.loc	1 436 19 is_stmt 1              # parallel-rne.mlir:436:19
	setlt.u r1, r4, r1
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	beq r1, zero, .LBB0_281
	j .LBB0_282
.LBB0_280:                              #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r23, r25, r5
	.loc	1 436 19 is_stmt 1              # parallel-rne.mlir:436:19
	setlt.u r1, r4, r1
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	bneq r1, zero, .LBB0_282
.LBB0_281:                              # %vector.body280
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r13
	and r23, r1, r20
.LBB0_282:                              # %vector.body280
                                        #   in Loop: Header=BB0_269 Depth=3
	setlt.u r1, r4, r28
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	beq r1, zero, .LBB0_285
# %bb.283:                              # %vector.body280
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r4, r14
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	beq r1, zero, .LBB0_286
.LBB0_284:                              # %vector.body280
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r4, r12
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	bneq r1, zero, .LBB0_268
	j .LBB0_287
.LBB0_285:                              # %vector.body280
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r13
	and r19, r1, r20
	setlt.u r1, r4, r14
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	bneq r1, zero, .LBB0_284
.LBB0_286:                              # %vector.body280
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r13
	and r17, r1, r20
	setlt.u r1, r4, r12
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	bneq r1, zero, .LBB0_268
.LBB0_287:                              # %vector.body280
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r13
	and r16, r1, r20
	j .LBB0_268
.LBB0_288:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 415 7 is_stmt 1               # parallel-rne.mlir:415:7
	mfence { sm }
	.loc	1 444 7                         # parallel-rne.mlir:444:7
	loadli.w r1,  -168(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_313
.LBB0_289:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 444 7                         # parallel-rne.mlir:444:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_291
.LBB0_290:                              # %middle.block275
                                        #   in Loop: Header=BB0_291 Depth=2
	.loc	1 452 9 is_stmt 1               # parallel-rne.mlir:452:9
	load.d r[1:2], -120(r30)                # 8-byte Folded Reload
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_312
.LBB0_291:                              # %.preheader75
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_293 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	zext_int2long r[8:9], zero
	sll.d r[6:7], r[6:7], r1
	j .LBB0_293
.LBB0_292:                              # %vector.body271
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 453 11 is_stmt 1              # parallel-rne.mlir:453:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 468 13                        # parallel-rne.mlir:468:13
	add.s r2, r11, r10
	.loc	1 453 11                        # parallel-rne.mlir:453:11
	setneq.d r1, r[8:9], r[26:27]
	.loc	1 468 13                        # parallel-rne.mlir:468:13
	stores.w r16, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r23, 0(r2)
	.loc	1 453 11                        # parallel-rne.mlir:453:11
	beq r1, zero, .LBB0_290
.LBB0_293:                              # %vector.body271
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_291 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 454 19                        # parallel-rne.mlir:454:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r10, r1, 2
	add.s r1, r24, r10
	loads.w r15, 12(r1)
	loads.w r25, 0(r1)
	loads.w r21, 4(r1)
	loads.w r18, 8(r1)
	.loc	1 456 19                        # parallel-rne.mlir:456:19
	and r12, r15, r3
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	setlt.u r1, r22, r12
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	bneq r1, zero, .LBB0_295
# %bb.294:                              # %vector.body271
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_296
.LBB0_295:                              #   in Loop: Header=BB0_293 Depth=3
	or r16, r15, r5
.LBB0_296:                              # %vector.body271
                                        #   in Loop: Header=BB0_293 Depth=3
	and r14, r18, r3
	setlt.u r1, r22, r14
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	bneq r1, zero, .LBB0_298
# %bb.297:                              # %vector.body271
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	j .LBB0_299
.LBB0_298:                              #   in Loop: Header=BB0_293 Depth=3
	or r17, r18, r5
.LBB0_299:                              # %vector.body271
                                        #   in Loop: Header=BB0_293 Depth=3
	and r28, r21, r3
	setlt.u r1, r22, r28
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	bneq r1, zero, .LBB0_301
# %bb.300:                              # %vector.body271
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	j .LBB0_302
.LBB0_301:                              #   in Loop: Header=BB0_293 Depth=3
	or r19, r21, r5
.LBB0_302:                              # %vector.body271
                                        #   in Loop: Header=BB0_293 Depth=3
	and r1, r25, r3
	setlt.u r2, r22, r1
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	bneq r2, zero, .LBB0_304
# %bb.303:                              # %vector.body271
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r25, 0
	.loc	1 465 19 is_stmt 1              # parallel-rne.mlir:465:19
	setlt.u r1, r4, r1
	.loc	1 466 19                        # parallel-rne.mlir:466:19
	beq r1, zero, .LBB0_305
	j .LBB0_306
.LBB0_304:                              #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r23, r25, r5
	.loc	1 465 19 is_stmt 1              # parallel-rne.mlir:465:19
	setlt.u r1, r4, r1
	.loc	1 466 19                        # parallel-rne.mlir:466:19
	bneq r1, zero, .LBB0_306
.LBB0_305:                              # %vector.body271
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r13
	and r23, r1, r20
.LBB0_306:                              # %vector.body271
                                        #   in Loop: Header=BB0_293 Depth=3
	setlt.u r1, r4, r28
	.loc	1 466 19                        # parallel-rne.mlir:466:19
	beq r1, zero, .LBB0_309
# %bb.307:                              # %vector.body271
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r4, r14
	.loc	1 466 19                        # parallel-rne.mlir:466:19
	beq r1, zero, .LBB0_310
.LBB0_308:                              # %vector.body271
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r4, r12
	.loc	1 466 19                        # parallel-rne.mlir:466:19
	bneq r1, zero, .LBB0_292
	j .LBB0_311
.LBB0_309:                              # %vector.body271
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r13
	and r19, r1, r20
	setlt.u r1, r4, r14
	.loc	1 466 19                        # parallel-rne.mlir:466:19
	bneq r1, zero, .LBB0_308
.LBB0_310:                              # %vector.body271
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r13
	and r17, r1, r20
	setlt.u r1, r4, r12
	.loc	1 466 19                        # parallel-rne.mlir:466:19
	bneq r1, zero, .LBB0_292
.LBB0_311:                              # %vector.body271
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r13
	and r16, r1, r20
	j .LBB0_292
.LBB0_312:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 444 7 is_stmt 1               # parallel-rne.mlir:444:7
	mfence { sm }
.LBB0_313:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 473 7                         # parallel-rne.mlir:473:7
	core_id r1
	addli r2, zero, 3
	bneq r1, r2, .LBB0_338
# %bb.314:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 473 7                         # parallel-rne.mlir:473:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_316
.LBB0_315:                              # %middle.block266
                                        #   in Loop: Header=BB0_316 Depth=2
	.loc	1 481 9 is_stmt 1               # parallel-rne.mlir:481:9
	load.d r[1:2], -112(r30)                # 8-byte Folded Reload
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_337
.LBB0_316:                              # %.preheader74
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_318 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	zext_int2long r[8:9], zero
	sll.d r[6:7], r[6:7], r1
	j .LBB0_318
.LBB0_317:                              # %vector.body262
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 482 11 is_stmt 1              # parallel-rne.mlir:482:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 497 13                        # parallel-rne.mlir:497:13
	add.s r2, r11, r10
	.loc	1 482 11                        # parallel-rne.mlir:482:11
	setneq.d r1, r[8:9], r[26:27]
	.loc	1 497 13                        # parallel-rne.mlir:497:13
	stores.w r16, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r23, 0(r2)
	.loc	1 482 11                        # parallel-rne.mlir:482:11
	beq r1, zero, .LBB0_315
.LBB0_318:                              # %vector.body262
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_316 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r10, r1, 2
	add.s r1, r24, r10
	loads.w r15, 12(r1)
	loads.w r25, 0(r1)
	loads.w r21, 4(r1)
	loads.w r18, 8(r1)
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	and r12, r15, r3
	.loc	1 487 19                        # parallel-rne.mlir:487:19
	setlt.u r1, r22, r12
	.loc	1 488 19                        # parallel-rne.mlir:488:19
	bneq r1, zero, .LBB0_320
# %bb.319:                              # %vector.body262
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_321
.LBB0_320:                              #   in Loop: Header=BB0_318 Depth=3
	or r16, r15, r5
.LBB0_321:                              # %vector.body262
                                        #   in Loop: Header=BB0_318 Depth=3
	and r14, r18, r3
	setlt.u r1, r22, r14
	.loc	1 488 19                        # parallel-rne.mlir:488:19
	bneq r1, zero, .LBB0_323
# %bb.322:                              # %vector.body262
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	j .LBB0_324
.LBB0_323:                              #   in Loop: Header=BB0_318 Depth=3
	or r17, r18, r5
.LBB0_324:                              # %vector.body262
                                        #   in Loop: Header=BB0_318 Depth=3
	and r28, r21, r3
	setlt.u r1, r22, r28
	.loc	1 488 19                        # parallel-rne.mlir:488:19
	bneq r1, zero, .LBB0_326
# %bb.325:                              # %vector.body262
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	j .LBB0_327
.LBB0_326:                              #   in Loop: Header=BB0_318 Depth=3
	or r19, r21, r5
.LBB0_327:                              # %vector.body262
                                        #   in Loop: Header=BB0_318 Depth=3
	and r1, r25, r3
	setlt.u r2, r22, r1
	.loc	1 488 19                        # parallel-rne.mlir:488:19
	bneq r2, zero, .LBB0_329
# %bb.328:                              # %vector.body262
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r25, 0
	.loc	1 494 19 is_stmt 1              # parallel-rne.mlir:494:19
	setlt.u r1, r4, r1
	.loc	1 495 19                        # parallel-rne.mlir:495:19
	beq r1, zero, .LBB0_330
	j .LBB0_331
.LBB0_329:                              #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r23, r25, r5
	.loc	1 494 19 is_stmt 1              # parallel-rne.mlir:494:19
	setlt.u r1, r4, r1
	.loc	1 495 19                        # parallel-rne.mlir:495:19
	bneq r1, zero, .LBB0_331
.LBB0_330:                              # %vector.body262
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r13
	and r23, r1, r20
.LBB0_331:                              # %vector.body262
                                        #   in Loop: Header=BB0_318 Depth=3
	setlt.u r1, r4, r28
	.loc	1 495 19                        # parallel-rne.mlir:495:19
	beq r1, zero, .LBB0_334
# %bb.332:                              # %vector.body262
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r4, r14
	.loc	1 495 19                        # parallel-rne.mlir:495:19
	beq r1, zero, .LBB0_335
.LBB0_333:                              # %vector.body262
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r4, r12
	.loc	1 495 19                        # parallel-rne.mlir:495:19
	bneq r1, zero, .LBB0_317
	j .LBB0_336
.LBB0_334:                              # %vector.body262
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r13
	and r19, r1, r20
	setlt.u r1, r4, r14
	.loc	1 495 19                        # parallel-rne.mlir:495:19
	bneq r1, zero, .LBB0_333
.LBB0_335:                              # %vector.body262
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r13
	and r17, r1, r20
	setlt.u r1, r4, r12
	.loc	1 495 19                        # parallel-rne.mlir:495:19
	bneq r1, zero, .LBB0_317
.LBB0_336:                              # %vector.body262
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r13
	and r16, r1, r20
	j .LBB0_317
.LBB0_337:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 473 7 is_stmt 1               # parallel-rne.mlir:473:7
	mfence { sm }
.LBB0_338:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 502 7                         # parallel-rne.mlir:502:7
	loadli.w r1,  -164(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_363
# %bb.339:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 502 7                         # parallel-rne.mlir:502:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_341
.LBB0_340:                              # %middle.block257
                                        #   in Loop: Header=BB0_341 Depth=2
	.loc	1 510 9 is_stmt 1               # parallel-rne.mlir:510:9
	load.d r[1:2], -104(r30)                # 8-byte Folded Reload
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_362
.LBB0_341:                              # %.preheader73
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_343 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	zext_int2long r[8:9], zero
	sll.d r[6:7], r[6:7], r1
	j .LBB0_343
.LBB0_342:                              # %vector.body253
                                        #   in Loop: Header=BB0_343 Depth=3
	.loc	1 511 11 is_stmt 1              # parallel-rne.mlir:511:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 526 13                        # parallel-rne.mlir:526:13
	add.s r2, r11, r10
	.loc	1 511 11                        # parallel-rne.mlir:511:11
	setneq.d r1, r[8:9], r[26:27]
	.loc	1 526 13                        # parallel-rne.mlir:526:13
	stores.w r16, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r23, 0(r2)
	.loc	1 511 11                        # parallel-rne.mlir:511:11
	beq r1, zero, .LBB0_340
.LBB0_343:                              # %vector.body253
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_341 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 512 19                        # parallel-rne.mlir:512:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r10, r1, 2
	add.s r1, r24, r10
	loads.w r15, 12(r1)
	loads.w r25, 0(r1)
	loads.w r21, 4(r1)
	loads.w r18, 8(r1)
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	and r12, r15, r3
	.loc	1 516 19                        # parallel-rne.mlir:516:19
	setlt.u r1, r22, r12
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	bneq r1, zero, .LBB0_345
# %bb.344:                              # %vector.body253
                                        #   in Loop: Header=BB0_343 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_346
.LBB0_345:                              #   in Loop: Header=BB0_343 Depth=3
	or r16, r15, r5
.LBB0_346:                              # %vector.body253
                                        #   in Loop: Header=BB0_343 Depth=3
	and r14, r18, r3
	setlt.u r1, r22, r14
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	bneq r1, zero, .LBB0_348
# %bb.347:                              # %vector.body253
                                        #   in Loop: Header=BB0_343 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	j .LBB0_349
.LBB0_348:                              #   in Loop: Header=BB0_343 Depth=3
	or r17, r18, r5
.LBB0_349:                              # %vector.body253
                                        #   in Loop: Header=BB0_343 Depth=3
	and r28, r21, r3
	setlt.u r1, r22, r28
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	bneq r1, zero, .LBB0_351
# %bb.350:                              # %vector.body253
                                        #   in Loop: Header=BB0_343 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	j .LBB0_352
.LBB0_351:                              #   in Loop: Header=BB0_343 Depth=3
	or r19, r21, r5
.LBB0_352:                              # %vector.body253
                                        #   in Loop: Header=BB0_343 Depth=3
	and r1, r25, r3
	setlt.u r2, r22, r1
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	bneq r2, zero, .LBB0_354
# %bb.353:                              # %vector.body253
                                        #   in Loop: Header=BB0_343 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r25, 0
	.loc	1 523 19 is_stmt 1              # parallel-rne.mlir:523:19
	setlt.u r1, r4, r1
	.loc	1 524 19                        # parallel-rne.mlir:524:19
	beq r1, zero, .LBB0_355
	j .LBB0_356
.LBB0_354:                              #   in Loop: Header=BB0_343 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r23, r25, r5
	.loc	1 523 19 is_stmt 1              # parallel-rne.mlir:523:19
	setlt.u r1, r4, r1
	.loc	1 524 19                        # parallel-rne.mlir:524:19
	bneq r1, zero, .LBB0_356
.LBB0_355:                              # %vector.body253
                                        #   in Loop: Header=BB0_343 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r13
	and r23, r1, r20
.LBB0_356:                              # %vector.body253
                                        #   in Loop: Header=BB0_343 Depth=3
	setlt.u r1, r4, r28
	.loc	1 524 19                        # parallel-rne.mlir:524:19
	beq r1, zero, .LBB0_359
# %bb.357:                              # %vector.body253
                                        #   in Loop: Header=BB0_343 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r4, r14
	.loc	1 524 19                        # parallel-rne.mlir:524:19
	beq r1, zero, .LBB0_360
.LBB0_358:                              # %vector.body253
                                        #   in Loop: Header=BB0_343 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r4, r12
	.loc	1 524 19                        # parallel-rne.mlir:524:19
	bneq r1, zero, .LBB0_342
	j .LBB0_361
.LBB0_359:                              # %vector.body253
                                        #   in Loop: Header=BB0_343 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r13
	and r19, r1, r20
	setlt.u r1, r4, r14
	.loc	1 524 19                        # parallel-rne.mlir:524:19
	bneq r1, zero, .LBB0_358
.LBB0_360:                              # %vector.body253
                                        #   in Loop: Header=BB0_343 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r13
	and r17, r1, r20
	setlt.u r1, r4, r12
	.loc	1 524 19                        # parallel-rne.mlir:524:19
	bneq r1, zero, .LBB0_342
.LBB0_361:                              # %vector.body253
                                        #   in Loop: Header=BB0_343 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r13
	and r16, r1, r20
	j .LBB0_342
.LBB0_362:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 502 7 is_stmt 1               # parallel-rne.mlir:502:7
	mfence { sm }
.LBB0_363:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 531 7                         # parallel-rne.mlir:531:7
	core_id r1
	addli r2, zero, 5
	bneq r1, r2, .LBB0_388
# %bb.364:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 531 7                         # parallel-rne.mlir:531:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_366
.LBB0_365:                              # %middle.block248
                                        #   in Loop: Header=BB0_366 Depth=2
	.loc	1 539 9 is_stmt 1               # parallel-rne.mlir:539:9
	load.d r[1:2], -96(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_387
.LBB0_366:                              # %.preheader72
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_368 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	zext_int2long r[8:9], zero
	sll.d r[6:7], r[6:7], r1
	j .LBB0_368
.LBB0_367:                              # %vector.body244
                                        #   in Loop: Header=BB0_368 Depth=3
	.loc	1 540 11 is_stmt 1              # parallel-rne.mlir:540:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 555 13                        # parallel-rne.mlir:555:13
	add.s r2, r11, r10
	.loc	1 540 11                        # parallel-rne.mlir:540:11
	setneq.d r1, r[8:9], r[26:27]
	.loc	1 555 13                        # parallel-rne.mlir:555:13
	stores.w r16, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r23, 0(r2)
	.loc	1 540 11                        # parallel-rne.mlir:540:11
	beq r1, zero, .LBB0_365
.LBB0_368:                              # %vector.body244
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_366 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r10, r1, 2
	add.s r1, r24, r10
	loads.w r15, 12(r1)
	loads.w r25, 0(r1)
	loads.w r21, 4(r1)
	loads.w r18, 8(r1)
	.loc	1 543 19                        # parallel-rne.mlir:543:19
	and r12, r15, r3
	.loc	1 545 19                        # parallel-rne.mlir:545:19
	setlt.u r1, r22, r12
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	bneq r1, zero, .LBB0_370
# %bb.369:                              # %vector.body244
                                        #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_371
.LBB0_370:                              #   in Loop: Header=BB0_368 Depth=3
	or r16, r15, r5
.LBB0_371:                              # %vector.body244
                                        #   in Loop: Header=BB0_368 Depth=3
	and r14, r18, r3
	setlt.u r1, r22, r14
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	bneq r1, zero, .LBB0_373
# %bb.372:                              # %vector.body244
                                        #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	j .LBB0_374
.LBB0_373:                              #   in Loop: Header=BB0_368 Depth=3
	or r17, r18, r5
.LBB0_374:                              # %vector.body244
                                        #   in Loop: Header=BB0_368 Depth=3
	and r28, r21, r3
	setlt.u r1, r22, r28
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	bneq r1, zero, .LBB0_376
# %bb.375:                              # %vector.body244
                                        #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	j .LBB0_377
.LBB0_376:                              #   in Loop: Header=BB0_368 Depth=3
	or r19, r21, r5
.LBB0_377:                              # %vector.body244
                                        #   in Loop: Header=BB0_368 Depth=3
	and r1, r25, r3
	setlt.u r2, r22, r1
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	bneq r2, zero, .LBB0_379
# %bb.378:                              # %vector.body244
                                        #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r25, 0
	.loc	1 552 19 is_stmt 1              # parallel-rne.mlir:552:19
	setlt.u r1, r4, r1
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	beq r1, zero, .LBB0_380
	j .LBB0_381
.LBB0_379:                              #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r23, r25, r5
	.loc	1 552 19 is_stmt 1              # parallel-rne.mlir:552:19
	setlt.u r1, r4, r1
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	bneq r1, zero, .LBB0_381
.LBB0_380:                              # %vector.body244
                                        #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r13
	and r23, r1, r20
.LBB0_381:                              # %vector.body244
                                        #   in Loop: Header=BB0_368 Depth=3
	setlt.u r1, r4, r28
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	beq r1, zero, .LBB0_384
# %bb.382:                              # %vector.body244
                                        #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r4, r14
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	beq r1, zero, .LBB0_385
.LBB0_383:                              # %vector.body244
                                        #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r4, r12
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	bneq r1, zero, .LBB0_367
	j .LBB0_386
.LBB0_384:                              # %vector.body244
                                        #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r13
	and r19, r1, r20
	setlt.u r1, r4, r14
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	bneq r1, zero, .LBB0_383
.LBB0_385:                              # %vector.body244
                                        #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r13
	and r17, r1, r20
	setlt.u r1, r4, r12
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	bneq r1, zero, .LBB0_367
.LBB0_386:                              # %vector.body244
                                        #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r13
	and r16, r1, r20
	j .LBB0_367
.LBB0_387:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 531 7 is_stmt 1               # parallel-rne.mlir:531:7
	mfence { sm }
.LBB0_388:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 560 7                         # parallel-rne.mlir:560:7
	core_id r1
	addli r2, zero, 6
	bneq r1, r2, .LBB0_413
# %bb.389:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 48
	.loc	1 560 7                         # parallel-rne.mlir:560:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_391
.LBB0_390:                              # %middle.block239
                                        #   in Loop: Header=BB0_391 Depth=2
	.loc	1 568 9 is_stmt 1               # parallel-rne.mlir:568:9
	load.d r[1:2], -88(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_412
.LBB0_391:                              # %.preheader71
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_393 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	zext_int2long r[8:9], zero
	sll.d r[6:7], r[6:7], r1
	j .LBB0_393
.LBB0_392:                              # %vector.body235
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 569 11 is_stmt 1              # parallel-rne.mlir:569:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 584 13                        # parallel-rne.mlir:584:13
	add.s r2, r11, r10
	.loc	1 569 11                        # parallel-rne.mlir:569:11
	setneq.d r1, r[8:9], r[26:27]
	.loc	1 584 13                        # parallel-rne.mlir:584:13
	stores.w r16, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r23, 0(r2)
	.loc	1 569 11                        # parallel-rne.mlir:569:11
	beq r1, zero, .LBB0_390
.LBB0_393:                              # %vector.body235
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_391 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 570 19                        # parallel-rne.mlir:570:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r10, r1, 2
	add.s r1, r24, r10
	loads.w r15, 12(r1)
	loads.w r25, 0(r1)
	loads.w r21, 4(r1)
	loads.w r18, 8(r1)
	.loc	1 572 19                        # parallel-rne.mlir:572:19
	and r12, r15, r3
	.loc	1 574 19                        # parallel-rne.mlir:574:19
	setlt.u r1, r22, r12
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	bneq r1, zero, .LBB0_395
# %bb.394:                              # %vector.body235
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_396
.LBB0_395:                              #   in Loop: Header=BB0_393 Depth=3
	or r16, r15, r5
.LBB0_396:                              # %vector.body235
                                        #   in Loop: Header=BB0_393 Depth=3
	and r14, r18, r3
	setlt.u r1, r22, r14
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	bneq r1, zero, .LBB0_398
# %bb.397:                              # %vector.body235
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	j .LBB0_399
.LBB0_398:                              #   in Loop: Header=BB0_393 Depth=3
	or r17, r18, r5
.LBB0_399:                              # %vector.body235
                                        #   in Loop: Header=BB0_393 Depth=3
	and r28, r21, r3
	setlt.u r1, r22, r28
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	bneq r1, zero, .LBB0_401
# %bb.400:                              # %vector.body235
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	j .LBB0_402
.LBB0_401:                              #   in Loop: Header=BB0_393 Depth=3
	or r19, r21, r5
.LBB0_402:                              # %vector.body235
                                        #   in Loop: Header=BB0_393 Depth=3
	and r1, r25, r3
	setlt.u r2, r22, r1
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	bneq r2, zero, .LBB0_404
# %bb.403:                              # %vector.body235
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r25, 0
	.loc	1 581 19 is_stmt 1              # parallel-rne.mlir:581:19
	setlt.u r1, r4, r1
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	beq r1, zero, .LBB0_405
	j .LBB0_406
.LBB0_404:                              #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r23, r25, r5
	.loc	1 581 19 is_stmt 1              # parallel-rne.mlir:581:19
	setlt.u r1, r4, r1
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	bneq r1, zero, .LBB0_406
.LBB0_405:                              # %vector.body235
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r13
	and r23, r1, r20
.LBB0_406:                              # %vector.body235
                                        #   in Loop: Header=BB0_393 Depth=3
	setlt.u r1, r4, r28
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	beq r1, zero, .LBB0_409
# %bb.407:                              # %vector.body235
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r4, r14
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	beq r1, zero, .LBB0_410
.LBB0_408:                              # %vector.body235
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r4, r12
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	bneq r1, zero, .LBB0_392
	j .LBB0_411
.LBB0_409:                              # %vector.body235
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r13
	and r19, r1, r20
	setlt.u r1, r4, r14
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	bneq r1, zero, .LBB0_408
.LBB0_410:                              # %vector.body235
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r13
	and r17, r1, r20
	setlt.u r1, r4, r12
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	bneq r1, zero, .LBB0_392
.LBB0_411:                              # %vector.body235
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r13
	and r16, r1, r20
	j .LBB0_392
.LBB0_412:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 560 7 is_stmt 1               # parallel-rne.mlir:560:7
	mfence { sm }
.LBB0_413:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 589 7                         # parallel-rne.mlir:589:7
	loadli.w r1,  -160(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_438
# %bb.414:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 589 7                         # parallel-rne.mlir:589:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_416
.LBB0_415:                              # %middle.block230
                                        #   in Loop: Header=BB0_416 Depth=2
	.loc	1 597 9 is_stmt 1               # parallel-rne.mlir:597:9
	load.d r[1:2], -80(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_437
.LBB0_416:                              # %.preheader70
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_418 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	zext_int2long r[8:9], zero
	sll.d r[6:7], r[6:7], r1
	j .LBB0_418
.LBB0_417:                              # %vector.body226
                                        #   in Loop: Header=BB0_418 Depth=3
	.loc	1 598 11 is_stmt 1              # parallel-rne.mlir:598:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 613 13                        # parallel-rne.mlir:613:13
	add.s r2, r11, r10
	.loc	1 598 11                        # parallel-rne.mlir:598:11
	setneq.d r1, r[8:9], r[26:27]
	.loc	1 613 13                        # parallel-rne.mlir:613:13
	stores.w r16, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r23, 0(r2)
	.loc	1 598 11                        # parallel-rne.mlir:598:11
	beq r1, zero, .LBB0_415
.LBB0_418:                              # %vector.body226
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_416 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 599 19                        # parallel-rne.mlir:599:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r10, r1, 2
	add.s r1, r24, r10
	loads.w r15, 12(r1)
	loads.w r25, 0(r1)
	loads.w r21, 4(r1)
	loads.w r18, 8(r1)
	.loc	1 601 19                        # parallel-rne.mlir:601:19
	and r12, r15, r3
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	setlt.u r1, r22, r12
	.loc	1 604 19                        # parallel-rne.mlir:604:19
	bneq r1, zero, .LBB0_420
# %bb.419:                              # %vector.body226
                                        #   in Loop: Header=BB0_418 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_421
.LBB0_420:                              #   in Loop: Header=BB0_418 Depth=3
	or r16, r15, r5
.LBB0_421:                              # %vector.body226
                                        #   in Loop: Header=BB0_418 Depth=3
	and r14, r18, r3
	setlt.u r1, r22, r14
	.loc	1 604 19                        # parallel-rne.mlir:604:19
	bneq r1, zero, .LBB0_423
# %bb.422:                              # %vector.body226
                                        #   in Loop: Header=BB0_418 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	j .LBB0_424
.LBB0_423:                              #   in Loop: Header=BB0_418 Depth=3
	or r17, r18, r5
.LBB0_424:                              # %vector.body226
                                        #   in Loop: Header=BB0_418 Depth=3
	and r28, r21, r3
	setlt.u r1, r22, r28
	.loc	1 604 19                        # parallel-rne.mlir:604:19
	bneq r1, zero, .LBB0_426
# %bb.425:                              # %vector.body226
                                        #   in Loop: Header=BB0_418 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	j .LBB0_427
.LBB0_426:                              #   in Loop: Header=BB0_418 Depth=3
	or r19, r21, r5
.LBB0_427:                              # %vector.body226
                                        #   in Loop: Header=BB0_418 Depth=3
	and r1, r25, r3
	setlt.u r2, r22, r1
	.loc	1 604 19                        # parallel-rne.mlir:604:19
	bneq r2, zero, .LBB0_429
# %bb.428:                              # %vector.body226
                                        #   in Loop: Header=BB0_418 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r25, 0
	.loc	1 610 19 is_stmt 1              # parallel-rne.mlir:610:19
	setlt.u r1, r4, r1
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	beq r1, zero, .LBB0_430
	j .LBB0_431
.LBB0_429:                              #   in Loop: Header=BB0_418 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r23, r25, r5
	.loc	1 610 19 is_stmt 1              # parallel-rne.mlir:610:19
	setlt.u r1, r4, r1
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	bneq r1, zero, .LBB0_431
.LBB0_430:                              # %vector.body226
                                        #   in Loop: Header=BB0_418 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r13
	and r23, r1, r20
.LBB0_431:                              # %vector.body226
                                        #   in Loop: Header=BB0_418 Depth=3
	setlt.u r1, r4, r28
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	beq r1, zero, .LBB0_434
# %bb.432:                              # %vector.body226
                                        #   in Loop: Header=BB0_418 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r4, r14
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	beq r1, zero, .LBB0_435
.LBB0_433:                              # %vector.body226
                                        #   in Loop: Header=BB0_418 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r4, r12
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	bneq r1, zero, .LBB0_417
	j .LBB0_436
.LBB0_434:                              # %vector.body226
                                        #   in Loop: Header=BB0_418 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r13
	and r19, r1, r20
	setlt.u r1, r4, r14
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	bneq r1, zero, .LBB0_433
.LBB0_435:                              # %vector.body226
                                        #   in Loop: Header=BB0_418 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r13
	and r17, r1, r20
	setlt.u r1, r4, r12
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	bneq r1, zero, .LBB0_417
.LBB0_436:                              # %vector.body226
                                        #   in Loop: Header=BB0_418 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r13
	and r16, r1, r20
	j .LBB0_417
.LBB0_437:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 589 7 is_stmt 1               # parallel-rne.mlir:589:7
	mfence { sm }
.LBB0_438:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	addli r1, zero, 255
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r6
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	csr_set csr5, r1
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	addli r1, zero, 3
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	sync_core
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	bneq r6, r1, .LBB0_440
# %bb.439:                              # %.critedge11
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 14
	.loc	1 620 7 is_stmt 1               # parallel-rne.mlir:620:7
	addli r1, zero, 21
	addli r7, zero, 5
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	xsignal r8, 0
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	xsignal r1, 0
	.loc	1 621 7                         # parallel-rne.mlir:621:7
	addli r1, zero, 19
	xsignal r1, 0
	.loc	1 623 13                        # parallel-rne.mlir:623:13
	loadli.w r1,  -48(r30)
	.loc	1 626 13                        # parallel-rne.mlir:626:13
	loadli.w r2,  -24(r30)
	.loc	1 623 13                        # parallel-rne.mlir:623:13
	mod.s r6, r1, r7
	.loc	1 626 13                        # parallel-rne.mlir:626:13
	mod.s r7, r2, r7
	.loc	1 623 13                        # parallel-rne.mlir:623:13
	addli r1, r1, 1
	storeli.w r1, -48(r30)
	slli r1, r6, 15
	.loc	1 626 13                        # parallel-rne.mlir:626:13
	slli r6, r7, 15
	.loc	1 623 13                        # parallel-rne.mlir:623:13
	loadli.w r7,  -228(r30)                 # 4-byte Folded Reload
	add.s r25, r1, r7
	.loc	1 626 13                        # parallel-rne.mlir:626:13
	addli r1, r2, 1
	loadli.w r2,  -232(r30)                 # 4-byte Folded Reload
	storeli.w r1, -24(r30)
	.loc	1 630 7                         # parallel-rne.mlir:630:7
	addli r1, zero, 20
	.loc	1 629 7                         # parallel-rne.mlir:629:7
	xwait r8, 0
	.loc	1 626 13                        # parallel-rne.mlir:626:13
	add.s r28, r6, r2
	.loc	1 630 7                         # parallel-rne.mlir:630:7
	xwait r1, 0
	.loc	1 631 7                         # parallel-rne.mlir:631:7
	addli r1, zero, 23
	xwait r1, 0
	.loc	1 632 7                         # parallel-rne.mlir:632:7
	addli r1, zero, 25
	xwait r1, 0
	j .LBB0_443
.LBB0_440:                              # %.critedge9
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 623 13                        # parallel-rne.mlir:623:13
	loadli.w r1,  -48(r30)
	addli r7, zero, 5
	loadli.w r8,  -228(r30)                 # 4-byte Folded Reload
	mod.s r2, r1, r7
	addli r1, r1, 1
	storeli.w r1, -48(r30)
	slli r2, r2, 15
	add.s r25, r2, r8
	.loc	1 624 7                         # parallel-rne.mlir:624:7
	bneq r6, r7, .LBB0_442
# %bb.441:                              # %.thread58
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 19
	addli r8, zero, 2
	addli r9, zero, 2047
	addli r6, zero, 4
	addli r2, zero, 1
	xwait r1, 0
	addli r1, zero, 24
	xwait r1, 0
	lock zero, r8
	lui r1, 40
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r9, zero, 2
	ori r1, r1, 2114
	ew_cfg r6, zero, zero, 3
	ew_cfg r6, r6, zero, 19
	ew_cfg r8, zero, zero, 10
	ew_cfg r8, r2, r1, 11
	lui r1, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r6, r1, 14
	ew_cfg zero, zero, zero, 15
	sslut r25, r11, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r8
	.loc	1 626 13                        # parallel-rne.mlir:626:13
	loadli.w r1,  -24(r30)
	mod.s r2, r1, r7
	addli r1, r1, 1
	storeli.w r1, -24(r30)
	.loc	1 627 7                         # parallel-rne.mlir:627:7
	addli r1, zero, 21
	xwait r1, 0
	addli r1, zero, 26
	xwait r1, 0
	lock zero, r8
	.loc	1 626 13                        # parallel-rne.mlir:626:13
	slli r1, r2, 15
	loadli.w r2,  -232(r30)                 # 4-byte Folded Reload
	.loc	1 627 7                         # parallel-rne.mlir:627:7
	ew_cfg zero, zero, zero, 1
	.loc	1 626 13                        # parallel-rne.mlir:626:13
	add.s r28, r1, r2
	.loc	1 627 7                         # parallel-rne.mlir:627:7
	lui r1, 260096
	ewcoeff_cfg zero, zero, r1, 0
	addli r1, zero, 20
	ew_cfg zero, r9, zero, 2
	ew_cfg r6, zero, zero, 3
	ew_cfg r6, r6, r6, 19
	dsmul r28, r11, r25, 0
	ew_cfg zero, zero, zero, 19
	unlock r8
	xsignal r1, 0
	addli r1, zero, 23
	xsignal r1, 0
	addli r1, zero, 25
	xsignal r1, 0
	.loc	1 629 7                         # parallel-rne.mlir:629:7
	j .LBB0_443
.LBB0_442:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 626 13                        # parallel-rne.mlir:626:13
	loadli.w r1,  -24(r30)
	loadli.w r6,  -232(r30)                 # 4-byte Folded Reload
	mod.s r2, r1, r7
	addli r1, r1, 1
	storeli.w r1, -24(r30)
	slli r2, r2, 15
	add.s r28, r2, r6
.LBB0_443:                              # %.critedge13
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 636 7                         # parallel-rne.mlir:636:7
	addli r1, zero, 255
	.loc	1 634 7                         # parallel-rne.mlir:634:7
	xfence
	.loc	1 635 7                         # parallel-rne.mlir:635:7
	mfence { lm, sm, gm }
	.loc	1 636 7                         # parallel-rne.mlir:636:7
	csr_set csr5, r1
	sub.s r1, r24, r25
	storeli.w r1, -152(r30)                 # 4-byte Folded Spill
	sub.s r1, r24, r28
	storeli.w r1, -156(r30)                 # 4-byte Folded Spill
	addli r1, zero, 127
	zext_int2long r[1:2], r1
	store.d r[1:2], -64(r30)                # 8-byte Folded Spill
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r1
	.loc	1 636 7                         # parallel-rne.mlir:636:7
	sync_core
	.loc	1 637 7                         # parallel-rne.mlir:637:7
	bneq r1, zero, .LBB0_495
# %bb.444:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -152(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -156(r30)                 # 4-byte Folded Reload
	zext_int2long r[6:7], zero
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 637 7                         # parallel-rne.mlir:637:7
	storeli.w r1, -148(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_446
.LBB0_445:                              # %middle.block221
                                        #   in Loop: Header=BB0_446 Depth=2
	.loc	1 645 9 is_stmt 1               # parallel-rne.mlir:645:9
	load.d r[1:2], -136(r30)                # 8-byte Folded Reload
	load.d r[6:7], -144(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_494
.LBB0_446:                              # %.preheader69
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_467 Depth 3
                                        #       Child Loop BB0_449 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -144(r30)               # 8-byte Folded Spill
	sll.d r[1:2], r[6:7], r1
	.loc	1 646 11 is_stmt 1              # parallel-rne.mlir:646:11
	store.d r[1:2], -72(r30)                # 8-byte Folded Spill
	loadli.w r1,  -148(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_465
# %bb.447:                              # %scalar.ph213.preheader
                                        #   in Loop: Header=BB0_446 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[15:16], zero
	j .LBB0_449
.LBB0_448:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_449 Depth=3
	.loc	1 646 11                        # parallel-rne.mlir:646:11
	load.d r[1:2], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[15:16], r[1:2]
	.loc	1 679 13 is_stmt 1              # parallel-rne.mlir:679:13
	add.s r2, r24, r6
	.loc	1 646 11                        # parallel-rne.mlir:646:11
	addli.d r[15:16], r[15:16], 1
	.loc	1 679 13                        # parallel-rne.mlir:679:13
	stores.w r8, 0(r2)
	.loc	1 646 11                        # parallel-rne.mlir:646:11
	beq r1, zero, .LBB0_445
.LBB0_449:                              # %scalar.ph213
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_446 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	load.d r[1:2], -72(r30)                 # 8-byte Folded Reload
	lui r7, 523264
	lui r10, 523264
	add.ul r[1:2], r[15:16], r[1:2]
	slli r6, r1, 2
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	add.s r1, r25, r6
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	add.s r2, r28, r6
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	loads.w r1, 0(r1)
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	loads.w r12, 0(r2)
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	and r8, r1, r3
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	beq r8, r22, .LBB0_451
# %bb.450:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
.LBB0_451:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_449 Depth=3
	add.s r1, r11, r6
	loads.w r1, 0(r1)
	and r9, r1, r3
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	bneq r9, zero, .LBB0_461
# %bb.452:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r12, 523264
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	bneq r8, zero, .LBB0_462
.LBB0_453:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_449 Depth=3
	beq r9, r22, .LBB0_455
.LBB0_454:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r10, 0
.LBB0_455:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_449 Depth=3
	setlt.u r2, r22, r8
	lui r1, 523264
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	bneq r2, zero, .LBB0_457
# %bb.456:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r12, 0
.LBB0_457:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_449 Depth=3
	setlt.u r2, r22, r9
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	bneq r2, zero, .LBB0_459
# %bb.458:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r1, 0
.LBB0_459:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_449 Depth=3
	.loc	1 667 19 is_stmt 1              # parallel-rne.mlir:667:19
	and r1, r7, r3
	.loc	1 669 20                        # parallel-rne.mlir:669:20
	setlt.u r2, r22, r1
	.loc	1 670 20                        # parallel-rne.mlir:670:20
	bneq r2, zero, .LBB0_463
# %bb.460:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r8, r7, 0
	.loc	1 676 20 is_stmt 1              # parallel-rne.mlir:676:20
	setlt.u r1, r4, r1
	.loc	1 677 20                        # parallel-rne.mlir:677:20
	bneq r1, zero, .LBB0_448
	j .LBB0_464
.LBB0_461:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r10, r12, 0
	lui r12, 523264
	.loc	1 666 19 is_stmt 1              # parallel-rne.mlir:666:19
	beq r8, zero, .LBB0_453
.LBB0_462:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	bneq r9, r22, .LBB0_454
	j .LBB0_455
.LBB0_463:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r7, r5
	.loc	1 676 20 is_stmt 1              # parallel-rne.mlir:676:20
	setlt.u r1, r4, r1
	.loc	1 677 20                        # parallel-rne.mlir:677:20
	bneq r1, zero, .LBB0_448
.LBB0_464:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r13
	and r8, r1, r20
	j .LBB0_448
.LBB0_465:                              # %vector.body215.preheader
                                        #   in Loop: Header=BB0_446 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_467
.LBB0_466:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 646 11 is_stmt 1              # parallel-rne.mlir:646:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 679 13                        # parallel-rne.mlir:679:13
	add.s r2, r24, r21
	.loc	1 646 11                        # parallel-rne.mlir:646:11
	seteq.d r1, r[17:18], r[26:27]
	.loc	1 679 13                        # parallel-rne.mlir:679:13
	stores.w r12, 12(r2)
	stores.w r7, 8(r2)
	stores.w r10, 4(r2)
	stores.w r19, 0(r2)
	.loc	1 646 11                        # parallel-rne.mlir:646:11
	bneq r1, zero, .LBB0_445
.LBB0_467:                              # %vector.body215
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_446 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	load.d r[1:2], -72(r30)                 # 8-byte Folded Reload
	lui r23, 523264
	lui r14, 523264
	add.ul r[1:2], r[17:18], r[1:2]
	slli r21, r1, 2
	add.s r12, r11, r21
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	add.s r10, r25, r21
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	loads.w r1, 0(r12)
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	loads.w r2, 0(r10)
	.loc	1 654 19                        # parallel-rne.mlir:654:19
	and r1, r1, r3
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	and r2, r2, r3
	.loc	1 655 19                        # parallel-rne.mlir:655:19
	seteq r6, r1, r22
	.loc	1 659 19                        # parallel-rne.mlir:659:19
	seteq r9, r1, zero
	.loc	1 656 19                        # parallel-rne.mlir:656:19
	seteq r7, r2, zero
	.loc	1 658 19                        # parallel-rne.mlir:658:19
	seteq r8, r2, r22
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	max.u r1, r1, r2
	setlt.u r1, r22, r1
	.loc	1 657 19                        # parallel-rne.mlir:657:19
	and r2, r6, r7
	.loc	1 660 19                        # parallel-rne.mlir:660:19
	and r6, r9, r8
	.loc	1 661 19                        # parallel-rne.mlir:661:19
	or r2, r2, r6
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	add.s r6, r28, r21
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	or r1, r1, r2
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	bneq r1, zero, .LBB0_469
# %bb.468:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r14, 0(r6)
.LBB0_469:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	loads.w r1, 4(r12)
	loads.w r2, 4(r10)
	and r1, r1, r3
	and r2, r2, r3
	seteq r7, r1, r22
	seteq r15, r1, zero
	seteq r8, r2, zero
	seteq r9, r2, r22
	max.u r1, r1, r2
	setlt.u r1, r22, r1
	and r2, r7, r8
	and r7, r15, r9
	lui r15, 523264
	or r2, r2, r7
	or r1, r1, r2
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	bneq r1, zero, .LBB0_471
# %bb.470:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 4(r6)
.LBB0_471:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	loads.w r1, 8(r12)
	loads.w r2, 8(r10)
	and r1, r1, r3
	and r2, r2, r3
	seteq r7, r1, r22
	seteq r16, r1, zero
	seteq r8, r2, zero
	seteq r9, r2, r22
	max.u r1, r1, r2
	setlt.u r1, r22, r1
	and r2, r7, r8
	and r7, r16, r9
	lui r16, 523264
	or r2, r2, r7
	or r1, r1, r2
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	bneq r1, zero, .LBB0_473
# %bb.472:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 8(r6)
.LBB0_473:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	loads.w r1, 12(r12)
	loads.w r2, 12(r10)
	and r1, r1, r3
	and r2, r2, r3
	seteq r7, r1, r22
	seteq r10, r1, zero
	seteq r8, r2, zero
	seteq r9, r2, r22
	max.u r1, r1, r2
	setlt.u r1, r22, r1
	and r2, r7, r8
	and r7, r10, r9
	or r2, r2, r7
	or r1, r1, r2
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	bneq r1, zero, .LBB0_475
# %bb.474:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 12(r6)
.LBB0_475:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 667 19 is_stmt 1              # parallel-rne.mlir:667:19
	and r6, r23, r3
	.loc	1 669 20                        # parallel-rne.mlir:669:20
	setlt.u r1, r22, r6
	.loc	1 670 20                        # parallel-rne.mlir:670:20
	bneq r1, zero, .LBB0_477
# %bb.476:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r23, 0
	j .LBB0_478
.LBB0_477:                              #   in Loop: Header=BB0_467 Depth=3
	or r12, r23, r5
.LBB0_478:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	and r8, r16, r3
	setlt.u r1, r22, r8
	.loc	1 670 20                        # parallel-rne.mlir:670:20
	bneq r1, zero, .LBB0_480
# %bb.479:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r16, 0
	j .LBB0_481
.LBB0_480:                              #   in Loop: Header=BB0_467 Depth=3
	or r7, r16, r5
.LBB0_481:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	and r9, r15, r3
	setlt.u r1, r22, r9
	.loc	1 670 20                        # parallel-rne.mlir:670:20
	bneq r1, zero, .LBB0_483
# %bb.482:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r15, 0
	j .LBB0_484
.LBB0_483:                              #   in Loop: Header=BB0_467 Depth=3
	or r10, r15, r5
.LBB0_484:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	and r1, r14, r3
	setlt.u r2, r22, r1
	.loc	1 670 20                        # parallel-rne.mlir:670:20
	bneq r2, zero, .LBB0_486
# %bb.485:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r19, r14, 0
	.loc	1 676 20 is_stmt 1              # parallel-rne.mlir:676:20
	setlt.u r1, r4, r1
	.loc	1 677 20                        # parallel-rne.mlir:677:20
	beq r1, zero, .LBB0_487
	j .LBB0_488
.LBB0_486:                              #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r14, r5
	.loc	1 676 20 is_stmt 1              # parallel-rne.mlir:676:20
	setlt.u r1, r4, r1
	.loc	1 677 20                        # parallel-rne.mlir:677:20
	bneq r1, zero, .LBB0_488
.LBB0_487:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r13
	and r19, r1, r20
.LBB0_488:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	setlt.u r1, r4, r9
	.loc	1 677 20                        # parallel-rne.mlir:677:20
	beq r1, zero, .LBB0_491
# %bb.489:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r4, r8
	.loc	1 677 20                        # parallel-rne.mlir:677:20
	beq r1, zero, .LBB0_492
.LBB0_490:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r4, r6
	.loc	1 677 20                        # parallel-rne.mlir:677:20
	bneq r1, zero, .LBB0_466
	j .LBB0_493
.LBB0_491:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r13
	and r10, r1, r20
	setlt.u r1, r4, r8
	.loc	1 677 20                        # parallel-rne.mlir:677:20
	bneq r1, zero, .LBB0_490
.LBB0_492:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r16, 16
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r13
	and r7, r1, r20
	setlt.u r1, r4, r6
	.loc	1 677 20                        # parallel-rne.mlir:677:20
	bneq r1, zero, .LBB0_466
.LBB0_493:                              # %vector.body215
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r23, 16
	andi r1, r1, 1
	add.s r1, r23, r1
	add.s r1, r1, r13
	and r12, r1, r20
	j .LBB0_466
.LBB0_494:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r1
	.loc	1 637 7                         # parallel-rne.mlir:637:7
	mfence { sm }
.LBB0_495:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 684 7                         # parallel-rne.mlir:684:7
	addli r2, zero, 1
	storeli.w r25, -72(r30)                 # 4-byte Folded Spill
	bneq r1, r2, .LBB0_547
# %bb.496:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -152(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -156(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -144(r30)                 # 4-byte Folded Spill
	addli r1, zero, 8
	.loc	1 684 7                         # parallel-rne.mlir:684:7
	xfence
	zext_int2long r[6:7], r1
	mfence { lm, sm, gm }
	j .LBB0_498
.LBB0_497:                              # %middle.block206
                                        #   in Loop: Header=BB0_498 Depth=2
	.loc	1 692 9 is_stmt 1               # parallel-rne.mlir:692:9
	load.d r[1:2], -128(r30)                # 8-byte Folded Reload
	load.d r[6:7], -136(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_546
.LBB0_498:                              # %.preheader68
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_519 Depth 3
                                        #       Child Loop BB0_501 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -136(r30)               # 8-byte Folded Spill
	sll.d r[1:2], r[6:7], r1
	.loc	1 693 11 is_stmt 1              # parallel-rne.mlir:693:11
	loadli.w r6,  -144(r30)                 # 4-byte Folded Reload
	beq r6, zero, .LBB0_517
# %bb.499:                              # %scalar.ph198.preheader
                                        #   in Loop: Header=BB0_498 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[15:16], zero
	j .LBB0_501
.LBB0_500:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_501 Depth=3
	.loc	1 693 11                        # parallel-rne.mlir:693:11
	load.d r[9:10], -64(r30)                # 8-byte Folded Reload
	.loc	1 726 13 is_stmt 1              # parallel-rne.mlir:726:13
	add.s r6, r24, r6
	stores.w r8, 0(r6)
	.loc	1 693 11                        # parallel-rne.mlir:693:11
	setlt.ul r7, r[15:16], r[9:10]
	addli.d r[15:16], r[15:16], 1
	beq r7, zero, .LBB0_497
.LBB0_501:                              # %scalar.ph198
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_498 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 694 19                        # parallel-rne.mlir:694:19
	add.ul r[6:7], r[15:16], r[1:2]
	lui r10, 523264
	slli r6, r6, 2
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	add.s r7, r25, r6
	.loc	1 696 19                        # parallel-rne.mlir:696:19
	add.s r8, r28, r6
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	loads.w r7, 0(r7)
	.loc	1 696 19                        # parallel-rne.mlir:696:19
	loads.w r12, 0(r8)
	.loc	1 699 19                        # parallel-rne.mlir:699:19
	and r8, r7, r3
	lui r7, 523264
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	beq r8, r22, .LBB0_503
# %bb.502:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
.LBB0_503:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_501 Depth=3
	add.s r9, r11, r6
	loads.w r9, 0(r9)
	and r9, r9, r3
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	bneq r9, zero, .LBB0_513
# %bb.504:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r12, 523264
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	bneq r8, zero, .LBB0_514
.LBB0_505:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_501 Depth=3
	beq r9, r22, .LBB0_507
.LBB0_506:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r10, 0
.LBB0_507:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_501 Depth=3
	setlt.u r10, r22, r8
	lui r8, 523264
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	bneq r10, zero, .LBB0_509
# %bb.508:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r12, 0
.LBB0_509:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_501 Depth=3
	setlt.u r9, r22, r9
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	bneq r9, zero, .LBB0_511
# %bb.510:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
.LBB0_511:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_501 Depth=3
	.loc	1 714 19 is_stmt 1              # parallel-rne.mlir:714:19
	and r9, r7, r3
	.loc	1 716 20                        # parallel-rne.mlir:716:20
	setlt.u r8, r22, r9
	.loc	1 717 20                        # parallel-rne.mlir:717:20
	bneq r8, zero, .LBB0_515
# %bb.512:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r8, r7, 0
	.loc	1 723 20 is_stmt 1              # parallel-rne.mlir:723:20
	setlt.u r9, r4, r9
	.loc	1 724 20                        # parallel-rne.mlir:724:20
	bneq r9, zero, .LBB0_500
	j .LBB0_516
.LBB0_513:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r10, r12, 0
	lui r12, 523264
	.loc	1 713 19 is_stmt 1              # parallel-rne.mlir:713:19
	beq r8, zero, .LBB0_505
.LBB0_514:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	bneq r9, r22, .LBB0_506
	j .LBB0_507
.LBB0_515:                              #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r7, r5
	.loc	1 723 20 is_stmt 1              # parallel-rne.mlir:723:20
	setlt.u r9, r4, r9
	.loc	1 724 20                        # parallel-rne.mlir:724:20
	bneq r9, zero, .LBB0_500
.LBB0_516:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r8, r7, 16
	andi r8, r8, 1
	add.s r7, r7, r8
	add.s r7, r7, r13
	and r8, r7, r20
	j .LBB0_500
.LBB0_517:                              # %vector.body200.preheader
                                        #   in Loop: Header=BB0_498 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_519
.LBB0_518:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 693 11 is_stmt 1              # parallel-rne.mlir:693:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 726 13                        # parallel-rne.mlir:726:13
	add.s r8, r24, r21
	.loc	1 693 11                        # parallel-rne.mlir:693:11
	seteq.d r6, r[17:18], r[26:27]
	.loc	1 726 13                        # parallel-rne.mlir:726:13
	stores.w r12, 12(r8)
	stores.w r7, 8(r8)
	stores.w r10, 4(r8)
	stores.w r14, 0(r8)
	.loc	1 693 11                        # parallel-rne.mlir:693:11
	bneq r6, zero, .LBB0_497
.LBB0_519:                              # %vector.body200
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_498 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 694 19                        # parallel-rne.mlir:694:19
	add.ul r[6:7], r[17:18], r[1:2]
	lui r23, 523264
	lui r19, 523264
	slli r21, r6, 2
	add.s r12, r11, r21
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	add.s r10, r25, r21
	.loc	1 694 19                        # parallel-rne.mlir:694:19
	loads.w r6, 0(r12)
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	loads.w r7, 0(r10)
	.loc	1 701 19                        # parallel-rne.mlir:701:19
	and r6, r6, r3
	.loc	1 699 19                        # parallel-rne.mlir:699:19
	and r7, r7, r3
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	seteq r8, r6, r22
	.loc	1 706 19                        # parallel-rne.mlir:706:19
	seteq r15, r6, zero
	.loc	1 703 19                        # parallel-rne.mlir:703:19
	seteq r9, r7, zero
	.loc	1 705 19                        # parallel-rne.mlir:705:19
	seteq r14, r7, r22
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	max.u r6, r6, r7
	setlt.u r7, r22, r6
	.loc	1 704 19                        # parallel-rne.mlir:704:19
	and r6, r8, r9
	.loc	1 707 19                        # parallel-rne.mlir:707:19
	and r8, r15, r14
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	or r8, r6, r8
	.loc	1 696 19                        # parallel-rne.mlir:696:19
	add.s r6, r28, r21
	.loc	1 712 19                        # parallel-rne.mlir:712:19
	or r7, r7, r8
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	bneq r7, zero, .LBB0_521
# %bb.520:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r19, 0(r6)
.LBB0_521:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	loads.w r7, 4(r12)
	loads.w r8, 4(r10)
	and r7, r7, r3
	and r8, r8, r3
	seteq r9, r7, r22
	seteq r16, r7, zero
	seteq r14, r8, zero
	seteq r15, r8, r22
	max.u r7, r7, r8
	setlt.u r7, r22, r7
	and r8, r9, r14
	and r9, r16, r15
	lui r15, 523264
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	bneq r7, zero, .LBB0_523
# %bb.522:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 4(r6)
.LBB0_523:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	loads.w r7, 8(r12)
	loads.w r8, 8(r10)
	and r7, r7, r3
	and r8, r8, r3
	seteq r9, r7, r22
	seteq r25, r7, zero
	seteq r14, r8, zero
	seteq r16, r8, r22
	max.u r7, r7, r8
	setlt.u r7, r22, r7
	and r8, r9, r14
	and r9, r25, r16
	lui r16, 523264
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	bneq r7, zero, .LBB0_525
# %bb.524:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 8(r6)
.LBB0_525:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	loads.w r7, 12(r12)
	loads.w r8, 12(r10)
	and r7, r7, r3
	and r8, r8, r3
	seteq r9, r7, r22
	seteq r14, r7, zero
	seteq r10, r8, zero
	seteq r12, r8, r22
	max.u r7, r7, r8
	setlt.u r7, r22, r7
	and r8, r9, r10
	and r9, r14, r12
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	bneq r7, zero, .LBB0_527
# %bb.526:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 12(r6)
.LBB0_527:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 714 19 is_stmt 1              # parallel-rne.mlir:714:19
	and r6, r23, r3
	.loc	1 716 20                        # parallel-rne.mlir:716:20
	setlt.u r7, r22, r6
	.loc	1 717 20                        # parallel-rne.mlir:717:20
	bneq r7, zero, .LBB0_529
# %bb.528:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r23, 0
	j .LBB0_530
.LBB0_529:                              #   in Loop: Header=BB0_519 Depth=3
	or r12, r23, r5
.LBB0_530:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	and r8, r16, r3
	setlt.u r7, r22, r8
	.loc	1 717 20                        # parallel-rne.mlir:717:20
	bneq r7, zero, .LBB0_532
# %bb.531:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r16, 0
	j .LBB0_533
.LBB0_532:                              #   in Loop: Header=BB0_519 Depth=3
	or r7, r16, r5
.LBB0_533:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	and r9, r15, r3
	setlt.u r10, r22, r9
	.loc	1 717 20                        # parallel-rne.mlir:717:20
	bneq r10, zero, .LBB0_535
# %bb.534:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r15, 0
	j .LBB0_536
.LBB0_535:                              #   in Loop: Header=BB0_519 Depth=3
	or r10, r15, r5
.LBB0_536:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	and r25, r19, r3
	setlt.u r14, r22, r25
	.loc	1 717 20                        # parallel-rne.mlir:717:20
	bneq r14, zero, .LBB0_538
# %bb.537:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r14, r19, 0
	.loc	1 723 20 is_stmt 1              # parallel-rne.mlir:723:20
	setlt.u r25, r4, r25
	.loc	1 724 20                        # parallel-rne.mlir:724:20
	beq r25, zero, .LBB0_539
	j .LBB0_540
.LBB0_538:                              #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r19, r5
	.loc	1 723 20 is_stmt 1              # parallel-rne.mlir:723:20
	setlt.u r25, r4, r25
	.loc	1 724 20                        # parallel-rne.mlir:724:20
	bneq r25, zero, .LBB0_540
.LBB0_539:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r14, r19, 16
	andi r14, r14, 1
	add.s r14, r19, r14
	add.s r14, r14, r13
	and r14, r14, r20
.LBB0_540:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	setlt.u r9, r4, r9
	.loc	1 724 20                        # parallel-rne.mlir:724:20
	bneq r9, zero, .LBB0_542
# %bb.541:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r9, r15, 16
	andi r9, r9, 1
	add.s r9, r15, r9
	add.s r9, r9, r13
	and r10, r9, r20
.LBB0_542:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	setlt.u r8, r4, r8
	loadli.w r25,  -72(r30)                 # 4-byte Folded Reload
	.loc	1 724 20                        # parallel-rne.mlir:724:20
	bneq r8, zero, .LBB0_544
# %bb.543:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r7, r16, 16
	andi r7, r7, 1
	add.s r7, r16, r7
	add.s r7, r7, r13
	and r7, r7, r20
.LBB0_544:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	setlt.u r6, r4, r6
	.loc	1 724 20                        # parallel-rne.mlir:724:20
	bneq r6, zero, .LBB0_518
# %bb.545:                              # %vector.body200
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r6, r23, 16
	andi r6, r6, 1
	add.s r6, r23, r6
	add.s r6, r6, r13
	and r12, r6, r20
	j .LBB0_518
.LBB0_546:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 684 7 is_stmt 1               # parallel-rne.mlir:684:7
	mfence { sm }
.LBB0_547:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 731 7                         # parallel-rne.mlir:731:7
	loadli.w r1,  -168(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_599
# %bb.548:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -152(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -156(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	zext_int2long r[6:7], r2
	storeli.w r1, -136(r30)                 # 4-byte Folded Spill
	.loc	1 731 7                         # parallel-rne.mlir:731:7
	xfence
	mfence { lm, sm, gm }
	j .LBB0_550
.LBB0_549:                              # %middle.block191
                                        #   in Loop: Header=BB0_550 Depth=2
	.loc	1 739 9 is_stmt 1               # parallel-rne.mlir:739:9
	load.d r[1:2], -120(r30)                # 8-byte Folded Reload
	load.d r[6:7], -128(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_598
.LBB0_550:                              # %.preheader67
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_571 Depth 3
                                        #       Child Loop BB0_553 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -128(r30)               # 8-byte Folded Spill
	sll.d r[1:2], r[6:7], r1
	.loc	1 740 11 is_stmt 1              # parallel-rne.mlir:740:11
	loadli.w r6,  -136(r30)                 # 4-byte Folded Reload
	beq r6, zero, .LBB0_569
# %bb.551:                              # %scalar.ph183.preheader
                                        #   in Loop: Header=BB0_550 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[15:16], zero
	j .LBB0_553
.LBB0_552:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 740 11                        # parallel-rne.mlir:740:11
	load.d r[9:10], -64(r30)                # 8-byte Folded Reload
	.loc	1 773 13 is_stmt 1              # parallel-rne.mlir:773:13
	add.s r6, r24, r6
	stores.w r8, 0(r6)
	.loc	1 740 11                        # parallel-rne.mlir:740:11
	setlt.ul r7, r[15:16], r[9:10]
	addli.d r[15:16], r[15:16], 1
	beq r7, zero, .LBB0_549
.LBB0_553:                              # %scalar.ph183
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_550 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	add.ul r[6:7], r[15:16], r[1:2]
	lui r10, 523264
	slli r6, r6, 2
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	add.s r7, r25, r6
	.loc	1 743 19                        # parallel-rne.mlir:743:19
	add.s r8, r28, r6
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	loads.w r7, 0(r7)
	.loc	1 743 19                        # parallel-rne.mlir:743:19
	loads.w r12, 0(r8)
	.loc	1 746 19                        # parallel-rne.mlir:746:19
	and r8, r7, r3
	lui r7, 523264
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	beq r8, r22, .LBB0_555
# %bb.554:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
.LBB0_555:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_553 Depth=3
	add.s r9, r11, r6
	loads.w r9, 0(r9)
	and r9, r9, r3
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	bneq r9, zero, .LBB0_565
# %bb.556:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r12, 523264
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	bneq r8, zero, .LBB0_566
.LBB0_557:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_553 Depth=3
	beq r9, r22, .LBB0_559
.LBB0_558:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r10, 0
.LBB0_559:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_553 Depth=3
	setlt.u r10, r22, r8
	lui r8, 523264
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	bneq r10, zero, .LBB0_561
# %bb.560:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r12, 0
.LBB0_561:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_553 Depth=3
	setlt.u r9, r22, r9
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	bneq r9, zero, .LBB0_563
# %bb.562:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
.LBB0_563:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 761 19 is_stmt 1              # parallel-rne.mlir:761:19
	and r9, r7, r3
	.loc	1 763 20                        # parallel-rne.mlir:763:20
	setlt.u r8, r22, r9
	.loc	1 764 20                        # parallel-rne.mlir:764:20
	bneq r8, zero, .LBB0_567
# %bb.564:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r8, r7, 0
	.loc	1 770 20 is_stmt 1              # parallel-rne.mlir:770:20
	setlt.u r9, r4, r9
	.loc	1 771 20                        # parallel-rne.mlir:771:20
	bneq r9, zero, .LBB0_552
	j .LBB0_568
.LBB0_565:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r10, r12, 0
	lui r12, 523264
	.loc	1 760 19 is_stmt 1              # parallel-rne.mlir:760:19
	beq r8, zero, .LBB0_557
.LBB0_566:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	bneq r9, r22, .LBB0_558
	j .LBB0_559
.LBB0_567:                              #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r7, r5
	.loc	1 770 20 is_stmt 1              # parallel-rne.mlir:770:20
	setlt.u r9, r4, r9
	.loc	1 771 20                        # parallel-rne.mlir:771:20
	bneq r9, zero, .LBB0_552
.LBB0_568:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r8, r7, 16
	andi r8, r8, 1
	add.s r7, r7, r8
	add.s r7, r7, r13
	and r8, r7, r20
	j .LBB0_552
.LBB0_569:                              # %vector.body185.preheader
                                        #   in Loop: Header=BB0_550 Depth=2
	zext_int2long r[15:16], zero
	j .LBB0_571
.LBB0_570:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	.loc	1 740 11 is_stmt 1              # parallel-rne.mlir:740:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 773 13                        # parallel-rne.mlir:773:13
	add.s r8, r24, r17
	.loc	1 740 11                        # parallel-rne.mlir:740:11
	seteq.d r6, r[15:16], r[26:27]
	.loc	1 773 13                        # parallel-rne.mlir:773:13
	stores.w r12, 12(r8)
	stores.w r7, 8(r8)
	stores.w r10, 4(r8)
	stores.w r14, 0(r8)
	.loc	1 740 11                        # parallel-rne.mlir:740:11
	bneq r6, zero, .LBB0_549
.LBB0_571:                              # %vector.body185
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_550 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	add.ul r[6:7], r[15:16], r[1:2]
	lui r19, 523264
	slli r17, r6, 2
	add.s r12, r11, r17
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	add.s r10, r25, r17
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	loads.w r6, 0(r12)
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	loads.w r7, 0(r10)
	.loc	1 748 19                        # parallel-rne.mlir:748:19
	and r6, r6, r3
	.loc	1 746 19                        # parallel-rne.mlir:746:19
	and r7, r7, r3
	.loc	1 749 19                        # parallel-rne.mlir:749:19
	seteq r8, r6, r22
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	seteq r18, r6, zero
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	seteq r9, r7, zero
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	seteq r14, r7, r22
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	max.u r6, r6, r7
	setlt.u r7, r22, r6
	.loc	1 751 19                        # parallel-rne.mlir:751:19
	and r6, r8, r9
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	and r8, r18, r14
	lui r18, 523264
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	or r8, r6, r8
	.loc	1 743 19                        # parallel-rne.mlir:743:19
	add.s r6, r28, r17
	.loc	1 759 19                        # parallel-rne.mlir:759:19
	or r7, r7, r8
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	bneq r7, zero, .LBB0_573
# %bb.572:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r19, 0(r6)
.LBB0_573:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	loads.w r7, 4(r12)
	loads.w r8, 4(r10)
	and r7, r7, r3
	and r8, r8, r3
	seteq r9, r7, r22
	seteq r23, r7, zero
	seteq r14, r8, zero
	seteq r21, r8, r22
	max.u r7, r7, r8
	setlt.u r7, r22, r7
	and r8, r9, r14
	and r9, r23, r21
	lui r21, 523264
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	bneq r7, zero, .LBB0_575
# %bb.574:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r6)
.LBB0_575:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	loads.w r7, 8(r12)
	loads.w r8, 8(r10)
	and r7, r7, r3
	and r8, r8, r3
	seteq r9, r7, r22
	seteq r25, r7, zero
	seteq r14, r8, zero
	seteq r23, r8, r22
	max.u r7, r7, r8
	setlt.u r7, r22, r7
	and r8, r9, r14
	and r9, r25, r23
	lui r23, 523264
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	bneq r7, zero, .LBB0_577
# %bb.576:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 8(r6)
.LBB0_577:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	loads.w r7, 12(r12)
	loads.w r8, 12(r10)
	and r7, r7, r3
	and r8, r8, r3
	seteq r9, r7, r22
	seteq r14, r7, zero
	seteq r10, r8, zero
	seteq r12, r8, r22
	max.u r7, r7, r8
	setlt.u r7, r22, r7
	and r8, r9, r10
	and r9, r14, r12
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	bneq r7, zero, .LBB0_579
# %bb.578:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 12(r6)
.LBB0_579:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	.loc	1 761 19 is_stmt 1              # parallel-rne.mlir:761:19
	and r6, r18, r3
	.loc	1 763 20                        # parallel-rne.mlir:763:20
	setlt.u r7, r22, r6
	.loc	1 764 20                        # parallel-rne.mlir:764:20
	bneq r7, zero, .LBB0_581
# %bb.580:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r18, 0
	j .LBB0_582
.LBB0_581:                              #   in Loop: Header=BB0_571 Depth=3
	or r12, r18, r5
.LBB0_582:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	and r8, r23, r3
	setlt.u r7, r22, r8
	.loc	1 764 20                        # parallel-rne.mlir:764:20
	bneq r7, zero, .LBB0_584
# %bb.583:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r23, 0
	j .LBB0_585
.LBB0_584:                              #   in Loop: Header=BB0_571 Depth=3
	or r7, r23, r5
.LBB0_585:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	and r9, r21, r3
	setlt.u r10, r22, r9
	.loc	1 764 20                        # parallel-rne.mlir:764:20
	bneq r10, zero, .LBB0_587
# %bb.586:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r21, 0
	j .LBB0_588
.LBB0_587:                              #   in Loop: Header=BB0_571 Depth=3
	or r10, r21, r5
.LBB0_588:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	and r25, r19, r3
	setlt.u r14, r22, r25
	.loc	1 764 20                        # parallel-rne.mlir:764:20
	bneq r14, zero, .LBB0_590
# %bb.589:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r14, r19, 0
	.loc	1 770 20 is_stmt 1              # parallel-rne.mlir:770:20
	setlt.u r25, r4, r25
	.loc	1 771 20                        # parallel-rne.mlir:771:20
	beq r25, zero, .LBB0_591
	j .LBB0_592
.LBB0_590:                              #   in Loop: Header=BB0_571 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r19, r5
	.loc	1 770 20 is_stmt 1              # parallel-rne.mlir:770:20
	setlt.u r25, r4, r25
	.loc	1 771 20                        # parallel-rne.mlir:771:20
	bneq r25, zero, .LBB0_592
.LBB0_591:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r14, r19, 16
	andi r14, r14, 1
	add.s r14, r19, r14
	add.s r14, r14, r13
	and r14, r14, r20
.LBB0_592:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	setlt.u r9, r4, r9
	.loc	1 771 20                        # parallel-rne.mlir:771:20
	bneq r9, zero, .LBB0_594
# %bb.593:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r9, r21, 16
	andi r9, r9, 1
	add.s r9, r21, r9
	add.s r9, r9, r13
	and r10, r9, r20
.LBB0_594:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	setlt.u r8, r4, r8
	loadli.w r25,  -72(r30)                 # 4-byte Folded Reload
	.loc	1 771 20                        # parallel-rne.mlir:771:20
	bneq r8, zero, .LBB0_596
# %bb.595:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r7, r23, 16
	andi r7, r7, 1
	add.s r7, r23, r7
	add.s r7, r7, r13
	and r7, r7, r20
.LBB0_596:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	setlt.u r6, r4, r6
	.loc	1 771 20                        # parallel-rne.mlir:771:20
	bneq r6, zero, .LBB0_570
# %bb.597:                              # %vector.body185
                                        #   in Loop: Header=BB0_571 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r13
	and r12, r6, r20
	j .LBB0_570
.LBB0_598:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 731 7 is_stmt 1               # parallel-rne.mlir:731:7
	mfence { sm }
.LBB0_599:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 778 7                         # parallel-rne.mlir:778:7
	core_id r1
	addli r2, zero, 3
	bneq r1, r2, .LBB0_651
# %bb.600:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -152(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -156(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -128(r30)                 # 4-byte Folded Spill
	addli r1, zero, 24
	.loc	1 778 7                         # parallel-rne.mlir:778:7
	xfence
	zext_int2long r[6:7], r1
	mfence { lm, sm, gm }
	j .LBB0_602
.LBB0_601:                              # %middle.block176
                                        #   in Loop: Header=BB0_602 Depth=2
	.loc	1 786 9 is_stmt 1               # parallel-rne.mlir:786:9
	load.d r[1:2], -112(r30)                # 8-byte Folded Reload
	load.d r[6:7], -120(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_650
.LBB0_602:                              # %.preheader66
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_623 Depth 3
                                        #       Child Loop BB0_605 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -120(r30)               # 8-byte Folded Spill
	sll.d r[1:2], r[6:7], r1
	.loc	1 787 11 is_stmt 1              # parallel-rne.mlir:787:11
	loadli.w r6,  -128(r30)                 # 4-byte Folded Reload
	beq r6, zero, .LBB0_621
# %bb.603:                              # %scalar.ph168.preheader
                                        #   in Loop: Header=BB0_602 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[15:16], zero
	j .LBB0_605
.LBB0_604:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 787 11                        # parallel-rne.mlir:787:11
	load.d r[9:10], -64(r30)                # 8-byte Folded Reload
	.loc	1 820 13 is_stmt 1              # parallel-rne.mlir:820:13
	add.s r6, r24, r6
	stores.w r8, 0(r6)
	.loc	1 787 11                        # parallel-rne.mlir:787:11
	setlt.ul r7, r[15:16], r[9:10]
	addli.d r[15:16], r[15:16], 1
	beq r7, zero, .LBB0_601
.LBB0_605:                              # %scalar.ph168
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_602 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 788 19                        # parallel-rne.mlir:788:19
	add.ul r[6:7], r[15:16], r[1:2]
	lui r10, 523264
	slli r6, r6, 2
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	add.s r7, r25, r6
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	add.s r8, r28, r6
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	loads.w r7, 0(r7)
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	loads.w r12, 0(r8)
	.loc	1 793 19                        # parallel-rne.mlir:793:19
	and r8, r7, r3
	lui r7, 523264
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	beq r8, r22, .LBB0_607
# %bb.606:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
.LBB0_607:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_605 Depth=3
	add.s r9, r11, r6
	loads.w r9, 0(r9)
	and r9, r9, r3
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	bneq r9, zero, .LBB0_617
# %bb.608:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r12, 523264
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	bneq r8, zero, .LBB0_618
.LBB0_609:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_605 Depth=3
	beq r9, r22, .LBB0_611
.LBB0_610:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r10, 0
.LBB0_611:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_605 Depth=3
	setlt.u r10, r22, r8
	lui r8, 523264
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	bneq r10, zero, .LBB0_613
# %bb.612:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r12, 0
.LBB0_613:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_605 Depth=3
	setlt.u r9, r22, r9
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	bneq r9, zero, .LBB0_615
# %bb.614:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
.LBB0_615:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 808 19 is_stmt 1              # parallel-rne.mlir:808:19
	and r9, r7, r3
	.loc	1 810 20                        # parallel-rne.mlir:810:20
	setlt.u r8, r22, r9
	.loc	1 811 20                        # parallel-rne.mlir:811:20
	bneq r8, zero, .LBB0_619
# %bb.616:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r8, r7, 0
	.loc	1 817 20 is_stmt 1              # parallel-rne.mlir:817:20
	setlt.u r9, r4, r9
	.loc	1 818 20                        # parallel-rne.mlir:818:20
	bneq r9, zero, .LBB0_604
	j .LBB0_620
.LBB0_617:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r10, r12, 0
	lui r12, 523264
	.loc	1 807 19 is_stmt 1              # parallel-rne.mlir:807:19
	beq r8, zero, .LBB0_609
.LBB0_618:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	bneq r9, r22, .LBB0_610
	j .LBB0_611
.LBB0_619:                              #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r7, r5
	.loc	1 817 20 is_stmt 1              # parallel-rne.mlir:817:20
	setlt.u r9, r4, r9
	.loc	1 818 20                        # parallel-rne.mlir:818:20
	bneq r9, zero, .LBB0_604
.LBB0_620:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r8, r7, 16
	andi r8, r8, 1
	add.s r7, r7, r8
	add.s r7, r7, r13
	and r8, r7, r20
	j .LBB0_604
.LBB0_621:                              # %vector.body170.preheader
                                        #   in Loop: Header=BB0_602 Depth=2
	zext_int2long r[15:16], zero
	j .LBB0_623
.LBB0_622:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 787 11 is_stmt 1              # parallel-rne.mlir:787:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 820 13                        # parallel-rne.mlir:820:13
	add.s r8, r24, r17
	.loc	1 787 11                        # parallel-rne.mlir:787:11
	seteq.d r6, r[15:16], r[26:27]
	.loc	1 820 13                        # parallel-rne.mlir:820:13
	stores.w r12, 12(r8)
	stores.w r7, 8(r8)
	stores.w r10, 4(r8)
	stores.w r14, 0(r8)
	.loc	1 787 11                        # parallel-rne.mlir:787:11
	bneq r6, zero, .LBB0_601
.LBB0_623:                              # %vector.body170
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_602 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 788 19                        # parallel-rne.mlir:788:19
	add.ul r[6:7], r[15:16], r[1:2]
	lui r19, 523264
	slli r17, r6, 2
	add.s r12, r11, r17
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	add.s r10, r25, r17
	.loc	1 788 19                        # parallel-rne.mlir:788:19
	loads.w r6, 0(r12)
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	loads.w r7, 0(r10)
	.loc	1 795 19                        # parallel-rne.mlir:795:19
	and r6, r6, r3
	.loc	1 793 19                        # parallel-rne.mlir:793:19
	and r7, r7, r3
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	seteq r8, r6, r22
	.loc	1 800 19                        # parallel-rne.mlir:800:19
	seteq r18, r6, zero
	.loc	1 797 19                        # parallel-rne.mlir:797:19
	seteq r9, r7, zero
	.loc	1 799 19                        # parallel-rne.mlir:799:19
	seteq r14, r7, r22
	.loc	1 805 19                        # parallel-rne.mlir:805:19
	max.u r6, r6, r7
	setlt.u r7, r22, r6
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	and r6, r8, r9
	.loc	1 801 19                        # parallel-rne.mlir:801:19
	and r8, r18, r14
	lui r18, 523264
	.loc	1 802 19                        # parallel-rne.mlir:802:19
	or r8, r6, r8
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	add.s r6, r28, r17
	.loc	1 806 19                        # parallel-rne.mlir:806:19
	or r7, r7, r8
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	bneq r7, zero, .LBB0_625
# %bb.624:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r19, 0(r6)
.LBB0_625:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	loads.w r7, 4(r12)
	loads.w r8, 4(r10)
	and r7, r7, r3
	and r8, r8, r3
	seteq r9, r7, r22
	seteq r23, r7, zero
	seteq r14, r8, zero
	seteq r21, r8, r22
	max.u r7, r7, r8
	setlt.u r7, r22, r7
	and r8, r9, r14
	and r9, r23, r21
	lui r21, 523264
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	bneq r7, zero, .LBB0_627
# %bb.626:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r6)
.LBB0_627:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	loads.w r7, 8(r12)
	loads.w r8, 8(r10)
	and r7, r7, r3
	and r8, r8, r3
	seteq r9, r7, r22
	seteq r25, r7, zero
	seteq r14, r8, zero
	seteq r23, r8, r22
	max.u r7, r7, r8
	setlt.u r7, r22, r7
	and r8, r9, r14
	and r9, r25, r23
	lui r23, 523264
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	bneq r7, zero, .LBB0_629
# %bb.628:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 8(r6)
.LBB0_629:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	loads.w r7, 12(r12)
	loads.w r8, 12(r10)
	and r7, r7, r3
	and r8, r8, r3
	seteq r9, r7, r22
	seteq r14, r7, zero
	seteq r10, r8, zero
	seteq r12, r8, r22
	max.u r7, r7, r8
	setlt.u r7, r22, r7
	and r8, r9, r10
	and r9, r14, r12
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	bneq r7, zero, .LBB0_631
# %bb.630:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 12(r6)
.LBB0_631:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 808 19 is_stmt 1              # parallel-rne.mlir:808:19
	and r6, r18, r3
	.loc	1 810 20                        # parallel-rne.mlir:810:20
	setlt.u r7, r22, r6
	.loc	1 811 20                        # parallel-rne.mlir:811:20
	bneq r7, zero, .LBB0_633
# %bb.632:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r18, 0
	j .LBB0_634
.LBB0_633:                              #   in Loop: Header=BB0_623 Depth=3
	or r12, r18, r5
.LBB0_634:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	and r8, r23, r3
	setlt.u r7, r22, r8
	.loc	1 811 20                        # parallel-rne.mlir:811:20
	bneq r7, zero, .LBB0_636
# %bb.635:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r23, 0
	j .LBB0_637
.LBB0_636:                              #   in Loop: Header=BB0_623 Depth=3
	or r7, r23, r5
.LBB0_637:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	and r9, r21, r3
	setlt.u r10, r22, r9
	.loc	1 811 20                        # parallel-rne.mlir:811:20
	bneq r10, zero, .LBB0_639
# %bb.638:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r21, 0
	j .LBB0_640
.LBB0_639:                              #   in Loop: Header=BB0_623 Depth=3
	or r10, r21, r5
.LBB0_640:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	and r25, r19, r3
	setlt.u r14, r22, r25
	.loc	1 811 20                        # parallel-rne.mlir:811:20
	bneq r14, zero, .LBB0_642
# %bb.641:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r14, r19, 0
	.loc	1 817 20 is_stmt 1              # parallel-rne.mlir:817:20
	setlt.u r25, r4, r25
	.loc	1 818 20                        # parallel-rne.mlir:818:20
	beq r25, zero, .LBB0_643
	j .LBB0_644
.LBB0_642:                              #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r19, r5
	.loc	1 817 20 is_stmt 1              # parallel-rne.mlir:817:20
	setlt.u r25, r4, r25
	.loc	1 818 20                        # parallel-rne.mlir:818:20
	bneq r25, zero, .LBB0_644
.LBB0_643:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r14, r19, 16
	andi r14, r14, 1
	add.s r14, r19, r14
	add.s r14, r14, r13
	and r14, r14, r20
.LBB0_644:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	setlt.u r9, r4, r9
	.loc	1 818 20                        # parallel-rne.mlir:818:20
	bneq r9, zero, .LBB0_646
# %bb.645:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r9, r21, 16
	andi r9, r9, 1
	add.s r9, r21, r9
	add.s r9, r9, r13
	and r10, r9, r20
.LBB0_646:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	setlt.u r8, r4, r8
	loadli.w r25,  -72(r30)                 # 4-byte Folded Reload
	.loc	1 818 20                        # parallel-rne.mlir:818:20
	bneq r8, zero, .LBB0_648
# %bb.647:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r7, r23, 16
	andi r7, r7, 1
	add.s r7, r23, r7
	add.s r7, r7, r13
	and r7, r7, r20
.LBB0_648:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	setlt.u r6, r4, r6
	.loc	1 818 20                        # parallel-rne.mlir:818:20
	bneq r6, zero, .LBB0_622
# %bb.649:                              # %vector.body170
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r13
	and r12, r6, r20
	j .LBB0_622
.LBB0_650:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 778 7 is_stmt 1               # parallel-rne.mlir:778:7
	mfence { sm }
.LBB0_651:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 825 7                         # parallel-rne.mlir:825:7
	loadli.w r1,  -164(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_703
# %bb.652:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -152(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -156(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -120(r30)                 # 4-byte Folded Spill
	addli r1, zero, 32
	.loc	1 825 7                         # parallel-rne.mlir:825:7
	xfence
	zext_int2long r[6:7], r1
	mfence { lm, sm, gm }
	j .LBB0_654
.LBB0_653:                              # %middle.block161
                                        #   in Loop: Header=BB0_654 Depth=2
	.loc	1 833 9 is_stmt 1               # parallel-rne.mlir:833:9
	load.d r[1:2], -104(r30)                # 8-byte Folded Reload
	load.d r[6:7], -112(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_702
.LBB0_654:                              # %.preheader65
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_675 Depth 3
                                        #       Child Loop BB0_657 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -112(r30)               # 8-byte Folded Spill
	sll.d r[15:16], r[6:7], r1
	.loc	1 834 11 is_stmt 1              # parallel-rne.mlir:834:11
	loadli.w r1,  -120(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_673
# %bb.655:                              # %scalar.ph153.preheader
                                        #   in Loop: Header=BB0_654 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[17:18], zero
	j .LBB0_657
.LBB0_656:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_657 Depth=3
	.loc	1 834 11                        # parallel-rne.mlir:834:11
	load.d r[7:8], -64(r30)                 # 8-byte Folded Reload
	.loc	1 867 13 is_stmt 1              # parallel-rne.mlir:867:13
	add.s r1, r24, r1
	stores.w r6, 0(r1)
	.loc	1 834 11                        # parallel-rne.mlir:834:11
	setlt.ul r2, r[17:18], r[7:8]
	addli.d r[17:18], r[17:18], 1
	beq r2, zero, .LBB0_653
.LBB0_657:                              # %scalar.ph153
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_654 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 835 19                        # parallel-rne.mlir:835:19
	add.ul r[1:2], r[17:18], r[15:16]
	lui r8, 523264
	slli r1, r1, 2
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	add.s r2, r25, r1
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	add.s r6, r28, r1
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	loads.w r2, 0(r2)
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	loads.w r9, 0(r6)
	.loc	1 840 19                        # parallel-rne.mlir:840:19
	and r6, r2, r3
	lui r2, 523264
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	beq r6, r22, .LBB0_659
# %bb.658:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_657 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
.LBB0_659:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_657 Depth=3
	add.s r7, r11, r1
	loads.w r7, 0(r7)
	and r7, r7, r3
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	bneq r7, zero, .LBB0_669
# %bb.660:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_657 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r9, 523264
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	bneq r6, zero, .LBB0_670
.LBB0_661:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_657 Depth=3
	beq r7, r22, .LBB0_663
.LBB0_662:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_657 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
.LBB0_663:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_657 Depth=3
	setlt.u r8, r22, r6
	lui r6, 523264
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	bneq r8, zero, .LBB0_665
# %bb.664:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_657 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r9, 0
.LBB0_665:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_657 Depth=3
	setlt.u r7, r22, r7
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	bneq r7, zero, .LBB0_667
# %bb.666:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_657 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r6, 0
.LBB0_667:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_657 Depth=3
	.loc	1 855 19 is_stmt 1              # parallel-rne.mlir:855:19
	and r7, r2, r3
	.loc	1 857 20                        # parallel-rne.mlir:857:20
	setlt.u r6, r22, r7
	.loc	1 858 20                        # parallel-rne.mlir:858:20
	bneq r6, zero, .LBB0_671
# %bb.668:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_657 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r6, r2, 0
	.loc	1 864 20 is_stmt 1              # parallel-rne.mlir:864:20
	setlt.u r7, r4, r7
	.loc	1 865 20                        # parallel-rne.mlir:865:20
	bneq r7, zero, .LBB0_656
	j .LBB0_672
.LBB0_669:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_657 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r8, r9, 0
	lui r9, 523264
	.loc	1 854 19 is_stmt 1              # parallel-rne.mlir:854:19
	beq r6, zero, .LBB0_661
.LBB0_670:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_657 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r8, 0
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	bneq r7, r22, .LBB0_662
	j .LBB0_663
.LBB0_671:                              #   in Loop: Header=BB0_657 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r2, r5
	.loc	1 864 20 is_stmt 1              # parallel-rne.mlir:864:20
	setlt.u r7, r4, r7
	.loc	1 865 20                        # parallel-rne.mlir:865:20
	bneq r7, zero, .LBB0_656
.LBB0_672:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_657 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r13
	and r6, r2, r20
	j .LBB0_656
.LBB0_673:                              # %vector.body155.preheader
                                        #   in Loop: Header=BB0_654 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_675
.LBB0_674:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	.loc	1 834 11 is_stmt 1              # parallel-rne.mlir:834:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 867 13                        # parallel-rne.mlir:867:13
	add.s r2, r24, r2
	.loc	1 834 11                        # parallel-rne.mlir:834:11
	seteq.d r1, r[17:18], r[26:27]
	.loc	1 867 13                        # parallel-rne.mlir:867:13
	stores.w r12, 12(r2)
	stores.w r6, 8(r2)
	stores.w r7, 4(r2)
	stores.w r14, 0(r2)
	.loc	1 834 11                        # parallel-rne.mlir:834:11
	bneq r1, zero, .LBB0_653
.LBB0_675:                              # %vector.body155
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_654 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 835 19                        # parallel-rne.mlir:835:19
	add.ul r[1:2], r[17:18], r[15:16]
	lui r19, 523264
	slli r2, r1, 2
	add.s r12, r11, r2
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	add.s r1, r25, r2
	.loc	1 835 19                        # parallel-rne.mlir:835:19
	loads.w r6, 0(r12)
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	loads.w r7, 0(r1)
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	and r6, r6, r3
	.loc	1 840 19                        # parallel-rne.mlir:840:19
	and r7, r7, r3
	.loc	1 843 19                        # parallel-rne.mlir:843:19
	seteq r8, r6, r22
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	seteq r14, r6, zero
	.loc	1 844 19                        # parallel-rne.mlir:844:19
	seteq r9, r7, zero
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	seteq r10, r7, r22
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	max.u r6, r6, r7
	setlt.u r7, r22, r6
	.loc	1 845 19                        # parallel-rne.mlir:845:19
	and r6, r8, r9
	.loc	1 848 19                        # parallel-rne.mlir:848:19
	and r8, r14, r10
	lui r10, 523264
	.loc	1 849 19                        # parallel-rne.mlir:849:19
	or r8, r6, r8
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	add.s r6, r28, r2
	.loc	1 853 19                        # parallel-rne.mlir:853:19
	or r7, r7, r8
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	bneq r7, zero, .LBB0_677
# %bb.676:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r19, 0(r6)
.LBB0_677:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	loads.w r7, 4(r12)
	loads.w r8, 4(r1)
	and r7, r7, r3
	and r8, r8, r3
	seteq r9, r7, r22
	seteq r23, r7, zero
	seteq r14, r8, zero
	seteq r21, r8, r22
	max.u r7, r7, r8
	setlt.u r7, r22, r7
	and r8, r9, r14
	and r9, r23, r21
	lui r21, 523264
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	bneq r7, zero, .LBB0_679
# %bb.678:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r6)
.LBB0_679:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	loads.w r7, 8(r12)
	loads.w r8, 8(r1)
	and r7, r7, r3
	and r8, r8, r3
	seteq r9, r7, r22
	seteq r25, r7, zero
	seteq r14, r8, zero
	seteq r23, r8, r22
	max.u r7, r7, r8
	setlt.u r7, r22, r7
	and r8, r9, r14
	and r9, r25, r23
	lui r23, 523264
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	bneq r7, zero, .LBB0_681
# %bb.680:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 8(r6)
.LBB0_681:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	loads.w r7, 12(r12)
	loads.w r1, 12(r1)
	and r7, r7, r3
	and r1, r1, r3
	seteq r8, r7, r22
	seteq r9, r1, zero
	seteq r12, r1, r22
	seteq r14, r7, zero
	max.u r1, r7, r1
	setlt.u r1, r22, r1
	and r7, r8, r9
	and r8, r14, r12
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	bneq r1, zero, .LBB0_683
# %bb.682:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r6)
.LBB0_683:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	.loc	1 855 19 is_stmt 1              # parallel-rne.mlir:855:19
	and r1, r10, r3
	.loc	1 857 20                        # parallel-rne.mlir:857:20
	setlt.u r6, r22, r1
	.loc	1 858 20                        # parallel-rne.mlir:858:20
	bneq r6, zero, .LBB0_685
# %bb.684:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r10, 0
	j .LBB0_686
.LBB0_685:                              #   in Loop: Header=BB0_675 Depth=3
	or r12, r10, r5
.LBB0_686:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	and r8, r23, r3
	setlt.u r6, r22, r8
	.loc	1 858 20                        # parallel-rne.mlir:858:20
	bneq r6, zero, .LBB0_688
# %bb.687:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r23, 0
	j .LBB0_689
.LBB0_688:                              #   in Loop: Header=BB0_675 Depth=3
	or r6, r23, r5
.LBB0_689:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	and r9, r21, r3
	setlt.u r7, r22, r9
	.loc	1 858 20                        # parallel-rne.mlir:858:20
	bneq r7, zero, .LBB0_691
# %bb.690:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r21, 0
	j .LBB0_692
.LBB0_691:                              #   in Loop: Header=BB0_675 Depth=3
	or r7, r21, r5
.LBB0_692:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	and r25, r19, r3
	setlt.u r14, r22, r25
	.loc	1 858 20                        # parallel-rne.mlir:858:20
	bneq r14, zero, .LBB0_694
# %bb.693:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r14, r19, 0
	.loc	1 864 20 is_stmt 1              # parallel-rne.mlir:864:20
	setlt.u r25, r4, r25
	.loc	1 865 20                        # parallel-rne.mlir:865:20
	beq r25, zero, .LBB0_695
	j .LBB0_696
.LBB0_694:                              #   in Loop: Header=BB0_675 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r19, r5
	.loc	1 864 20 is_stmt 1              # parallel-rne.mlir:864:20
	setlt.u r25, r4, r25
	.loc	1 865 20                        # parallel-rne.mlir:865:20
	bneq r25, zero, .LBB0_696
.LBB0_695:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r14, r19, 16
	andi r14, r14, 1
	add.s r14, r19, r14
	add.s r14, r14, r13
	and r14, r14, r20
.LBB0_696:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	setlt.u r9, r4, r9
	.loc	1 865 20                        # parallel-rne.mlir:865:20
	bneq r9, zero, .LBB0_698
# %bb.697:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r7, r21, 16
	andi r7, r7, 1
	add.s r7, r21, r7
	add.s r7, r7, r13
	and r7, r7, r20
.LBB0_698:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	setlt.u r8, r4, r8
	loadli.w r25,  -72(r30)                 # 4-byte Folded Reload
	.loc	1 865 20                        # parallel-rne.mlir:865:20
	bneq r8, zero, .LBB0_700
# %bb.699:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r6, r23, 16
	andi r6, r6, 1
	add.s r6, r23, r6
	add.s r6, r6, r13
	and r6, r6, r20
.LBB0_700:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	setlt.u r1, r4, r1
	.loc	1 865 20                        # parallel-rne.mlir:865:20
	bneq r1, zero, .LBB0_674
# %bb.701:                              # %vector.body155
                                        #   in Loop: Header=BB0_675 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r13
	and r12, r1, r20
	j .LBB0_674
.LBB0_702:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 825 7 is_stmt 1               # parallel-rne.mlir:825:7
	mfence { sm }
.LBB0_703:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 872 7                         # parallel-rne.mlir:872:7
	core_id r1
	addli r2, zero, 5
	bneq r1, r2, .LBB0_755
# %bb.704:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -152(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -156(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -112(r30)                 # 4-byte Folded Spill
	addli r1, zero, 40
	.loc	1 872 7                         # parallel-rne.mlir:872:7
	xfence
	zext_int2long r[6:7], r1
	mfence { lm, sm, gm }
	j .LBB0_706
.LBB0_705:                              # %middle.block146
                                        #   in Loop: Header=BB0_706 Depth=2
	.loc	1 880 9 is_stmt 1               # parallel-rne.mlir:880:9
	load.d r[1:2], -96(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -104(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_754
.LBB0_706:                              # %.preheader64
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_727 Depth 3
                                        #       Child Loop BB0_709 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -104(r30)               # 8-byte Folded Spill
	sll.d r[15:16], r[6:7], r1
	.loc	1 881 11 is_stmt 1              # parallel-rne.mlir:881:11
	loadli.w r1,  -112(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_725
# %bb.707:                              # %scalar.ph138.preheader
                                        #   in Loop: Header=BB0_706 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[17:18], zero
	j .LBB0_709
.LBB0_708:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_709 Depth=3
	.loc	1 881 11                        # parallel-rne.mlir:881:11
	load.d r[7:8], -64(r30)                 # 8-byte Folded Reload
	.loc	1 914 13 is_stmt 1              # parallel-rne.mlir:914:13
	add.s r1, r24, r1
	stores.w r6, 0(r1)
	.loc	1 881 11                        # parallel-rne.mlir:881:11
	setlt.ul r2, r[17:18], r[7:8]
	addli.d r[17:18], r[17:18], 1
	beq r2, zero, .LBB0_705
.LBB0_709:                              # %scalar.ph138
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_706 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	add.ul r[1:2], r[17:18], r[15:16]
	lui r8, 523264
	slli r1, r1, 2
	.loc	1 883 19                        # parallel-rne.mlir:883:19
	add.s r2, r25, r1
	.loc	1 884 19                        # parallel-rne.mlir:884:19
	add.s r6, r28, r1
	.loc	1 883 19                        # parallel-rne.mlir:883:19
	loads.w r2, 0(r2)
	.loc	1 884 19                        # parallel-rne.mlir:884:19
	loads.w r9, 0(r6)
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	and r6, r2, r3
	lui r2, 523264
	.loc	1 901 19                        # parallel-rne.mlir:901:19
	beq r6, r22, .LBB0_711
# %bb.710:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_709 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
.LBB0_711:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_709 Depth=3
	add.s r7, r11, r1
	loads.w r7, 0(r7)
	and r7, r7, r3
	.loc	1 901 19                        # parallel-rne.mlir:901:19
	bneq r7, zero, .LBB0_721
# %bb.712:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_709 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r9, 523264
	.loc	1 901 19                        # parallel-rne.mlir:901:19
	bneq r6, zero, .LBB0_722
.LBB0_713:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_709 Depth=3
	beq r7, r22, .LBB0_715
.LBB0_714:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_709 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
.LBB0_715:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_709 Depth=3
	setlt.u r8, r22, r6
	lui r6, 523264
	.loc	1 901 19                        # parallel-rne.mlir:901:19
	bneq r8, zero, .LBB0_717
# %bb.716:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_709 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r9, 0
.LBB0_717:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_709 Depth=3
	setlt.u r7, r22, r7
	.loc	1 901 19                        # parallel-rne.mlir:901:19
	bneq r7, zero, .LBB0_719
# %bb.718:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_709 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r6, 0
.LBB0_719:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_709 Depth=3
	.loc	1 902 19 is_stmt 1              # parallel-rne.mlir:902:19
	and r7, r2, r3
	.loc	1 904 20                        # parallel-rne.mlir:904:20
	setlt.u r6, r22, r7
	.loc	1 905 20                        # parallel-rne.mlir:905:20
	bneq r6, zero, .LBB0_723
# %bb.720:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_709 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r6, r2, 0
	.loc	1 911 20 is_stmt 1              # parallel-rne.mlir:911:20
	setlt.u r7, r4, r7
	.loc	1 912 20                        # parallel-rne.mlir:912:20
	bneq r7, zero, .LBB0_708
	j .LBB0_724
.LBB0_721:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_709 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r8, r9, 0
	lui r9, 523264
	.loc	1 901 19 is_stmt 1              # parallel-rne.mlir:901:19
	beq r6, zero, .LBB0_713
.LBB0_722:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_709 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r8, 0
	.loc	1 901 19                        # parallel-rne.mlir:901:19
	bneq r7, r22, .LBB0_714
	j .LBB0_715
.LBB0_723:                              #   in Loop: Header=BB0_709 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r2, r5
	.loc	1 911 20 is_stmt 1              # parallel-rne.mlir:911:20
	setlt.u r7, r4, r7
	.loc	1 912 20                        # parallel-rne.mlir:912:20
	bneq r7, zero, .LBB0_708
.LBB0_724:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_709 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r13
	and r6, r2, r20
	j .LBB0_708
.LBB0_725:                              # %vector.body140.preheader
                                        #   in Loop: Header=BB0_706 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_727
.LBB0_726:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	.loc	1 881 11 is_stmt 1              # parallel-rne.mlir:881:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 914 13                        # parallel-rne.mlir:914:13
	add.s r2, r24, r2
	.loc	1 881 11                        # parallel-rne.mlir:881:11
	seteq.d r1, r[17:18], r[26:27]
	.loc	1 914 13                        # parallel-rne.mlir:914:13
	stores.w r12, 12(r2)
	stores.w r6, 8(r2)
	stores.w r7, 4(r2)
	stores.w r14, 0(r2)
	.loc	1 881 11                        # parallel-rne.mlir:881:11
	bneq r1, zero, .LBB0_705
.LBB0_727:                              # %vector.body140
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_706 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	add.ul r[1:2], r[17:18], r[15:16]
	lui r19, 523264
	slli r2, r1, 2
	add.s r12, r11, r2
	.loc	1 883 19                        # parallel-rne.mlir:883:19
	add.s r1, r25, r2
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	loads.w r6, 0(r12)
	.loc	1 883 19                        # parallel-rne.mlir:883:19
	loads.w r7, 0(r1)
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	and r6, r6, r3
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	and r7, r7, r3
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	seteq r8, r6, r22
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	seteq r14, r6, zero
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	seteq r9, r7, zero
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	seteq r10, r7, r22
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	max.u r6, r6, r7
	setlt.u r7, r22, r6
	.loc	1 892 19                        # parallel-rne.mlir:892:19
	and r6, r8, r9
	.loc	1 895 19                        # parallel-rne.mlir:895:19
	and r8, r14, r10
	lui r10, 523264
	.loc	1 896 19                        # parallel-rne.mlir:896:19
	or r8, r6, r8
	.loc	1 884 19                        # parallel-rne.mlir:884:19
	add.s r6, r28, r2
	.loc	1 900 19                        # parallel-rne.mlir:900:19
	or r7, r7, r8
	.loc	1 901 19                        # parallel-rne.mlir:901:19
	bneq r7, zero, .LBB0_729
# %bb.728:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r19, 0(r6)
.LBB0_729:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	loads.w r7, 4(r12)
	loads.w r8, 4(r1)
	and r7, r7, r3
	and r8, r8, r3
	seteq r9, r7, r22
	seteq r23, r7, zero
	seteq r14, r8, zero
	seteq r21, r8, r22
	max.u r7, r7, r8
	setlt.u r7, r22, r7
	and r8, r9, r14
	and r9, r23, r21
	lui r21, 523264
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 901 19                        # parallel-rne.mlir:901:19
	bneq r7, zero, .LBB0_731
# %bb.730:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r6)
.LBB0_731:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	loads.w r7, 8(r12)
	loads.w r8, 8(r1)
	and r7, r7, r3
	and r8, r8, r3
	seteq r9, r7, r22
	seteq r25, r7, zero
	seteq r14, r8, zero
	seteq r23, r8, r22
	max.u r7, r7, r8
	setlt.u r7, r22, r7
	and r8, r9, r14
	and r9, r25, r23
	lui r23, 523264
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 901 19                        # parallel-rne.mlir:901:19
	bneq r7, zero, .LBB0_733
# %bb.732:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 8(r6)
.LBB0_733:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	loads.w r7, 12(r12)
	loads.w r1, 12(r1)
	and r7, r7, r3
	and r1, r1, r3
	seteq r8, r7, r22
	seteq r9, r1, zero
	seteq r12, r1, r22
	seteq r14, r7, zero
	max.u r1, r7, r1
	setlt.u r1, r22, r1
	and r7, r8, r9
	and r8, r14, r12
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 901 19                        # parallel-rne.mlir:901:19
	bneq r1, zero, .LBB0_735
# %bb.734:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r6)
.LBB0_735:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	.loc	1 902 19 is_stmt 1              # parallel-rne.mlir:902:19
	and r1, r10, r3
	.loc	1 904 20                        # parallel-rne.mlir:904:20
	setlt.u r6, r22, r1
	.loc	1 905 20                        # parallel-rne.mlir:905:20
	bneq r6, zero, .LBB0_737
# %bb.736:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r10, 0
	j .LBB0_738
.LBB0_737:                              #   in Loop: Header=BB0_727 Depth=3
	or r12, r10, r5
.LBB0_738:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	and r8, r23, r3
	setlt.u r6, r22, r8
	.loc	1 905 20                        # parallel-rne.mlir:905:20
	bneq r6, zero, .LBB0_740
# %bb.739:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r23, 0
	j .LBB0_741
.LBB0_740:                              #   in Loop: Header=BB0_727 Depth=3
	or r6, r23, r5
.LBB0_741:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	and r9, r21, r3
	setlt.u r7, r22, r9
	.loc	1 905 20                        # parallel-rne.mlir:905:20
	bneq r7, zero, .LBB0_743
# %bb.742:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r21, 0
	j .LBB0_744
.LBB0_743:                              #   in Loop: Header=BB0_727 Depth=3
	or r7, r21, r5
.LBB0_744:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	and r25, r19, r3
	setlt.u r14, r22, r25
	.loc	1 905 20                        # parallel-rne.mlir:905:20
	bneq r14, zero, .LBB0_746
# %bb.745:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r14, r19, 0
	.loc	1 911 20 is_stmt 1              # parallel-rne.mlir:911:20
	setlt.u r25, r4, r25
	.loc	1 912 20                        # parallel-rne.mlir:912:20
	beq r25, zero, .LBB0_747
	j .LBB0_748
.LBB0_746:                              #   in Loop: Header=BB0_727 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r19, r5
	.loc	1 911 20 is_stmt 1              # parallel-rne.mlir:911:20
	setlt.u r25, r4, r25
	.loc	1 912 20                        # parallel-rne.mlir:912:20
	bneq r25, zero, .LBB0_748
.LBB0_747:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r14, r19, 16
	andi r14, r14, 1
	add.s r14, r19, r14
	add.s r14, r14, r13
	and r14, r14, r20
.LBB0_748:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	setlt.u r9, r4, r9
	.loc	1 912 20                        # parallel-rne.mlir:912:20
	bneq r9, zero, .LBB0_750
# %bb.749:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r7, r21, 16
	andi r7, r7, 1
	add.s r7, r21, r7
	add.s r7, r7, r13
	and r7, r7, r20
.LBB0_750:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	setlt.u r8, r4, r8
	loadli.w r25,  -72(r30)                 # 4-byte Folded Reload
	.loc	1 912 20                        # parallel-rne.mlir:912:20
	bneq r8, zero, .LBB0_752
# %bb.751:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r6, r23, 16
	andi r6, r6, 1
	add.s r6, r23, r6
	add.s r6, r6, r13
	and r6, r6, r20
.LBB0_752:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	setlt.u r1, r4, r1
	.loc	1 912 20                        # parallel-rne.mlir:912:20
	bneq r1, zero, .LBB0_726
# %bb.753:                              # %vector.body140
                                        #   in Loop: Header=BB0_727 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r13
	and r12, r1, r20
	j .LBB0_726
.LBB0_754:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 872 7 is_stmt 1               # parallel-rne.mlir:872:7
	mfence { sm }
.LBB0_755:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 919 7                         # parallel-rne.mlir:919:7
	core_id r1
	addli r2, zero, 6
	bneq r1, r2, .LBB0_807
# %bb.756:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -152(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -156(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -104(r30)                 # 4-byte Folded Spill
	addli r1, zero, 48
	.loc	1 919 7                         # parallel-rne.mlir:919:7
	xfence
	zext_int2long r[6:7], r1
	mfence { lm, sm, gm }
	j .LBB0_758
.LBB0_757:                              # %middle.block131
                                        #   in Loop: Header=BB0_758 Depth=2
	.loc	1 927 9 is_stmt 1               # parallel-rne.mlir:927:9
	load.d r[1:2], -88(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -96(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_806
.LBB0_758:                              # %.preheader63
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_779 Depth 3
                                        #       Child Loop BB0_761 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -96(r30)                # 8-byte Folded Spill
	sll.d r[15:16], r[6:7], r1
	.loc	1 928 11 is_stmt 1              # parallel-rne.mlir:928:11
	loadli.w r1,  -104(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_777
# %bb.759:                              # %scalar.ph123.preheader
                                        #   in Loop: Header=BB0_758 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[17:18], zero
	j .LBB0_761
.LBB0_760:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 928 11                        # parallel-rne.mlir:928:11
	load.d r[7:8], -64(r30)                 # 8-byte Folded Reload
	.loc	1 961 13 is_stmt 1              # parallel-rne.mlir:961:13
	add.s r1, r24, r1
	stores.w r6, 0(r1)
	.loc	1 928 11                        # parallel-rne.mlir:928:11
	setlt.ul r2, r[17:18], r[7:8]
	addli.d r[17:18], r[17:18], 1
	beq r2, zero, .LBB0_757
.LBB0_761:                              # %scalar.ph123
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_758 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	add.ul r[1:2], r[17:18], r[15:16]
	lui r8, 523264
	slli r1, r1, 2
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	add.s r2, r25, r1
	.loc	1 931 19                        # parallel-rne.mlir:931:19
	add.s r6, r28, r1
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	loads.w r2, 0(r2)
	.loc	1 931 19                        # parallel-rne.mlir:931:19
	loads.w r9, 0(r6)
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	and r6, r2, r3
	lui r2, 523264
	.loc	1 948 19                        # parallel-rne.mlir:948:19
	beq r6, r22, .LBB0_763
# %bb.762:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
.LBB0_763:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_761 Depth=3
	add.s r7, r11, r1
	loads.w r7, 0(r7)
	and r7, r7, r3
	.loc	1 948 19                        # parallel-rne.mlir:948:19
	bneq r7, zero, .LBB0_773
# %bb.764:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r9, 523264
	.loc	1 948 19                        # parallel-rne.mlir:948:19
	bneq r6, zero, .LBB0_774
.LBB0_765:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_761 Depth=3
	beq r7, r22, .LBB0_767
.LBB0_766:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
.LBB0_767:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_761 Depth=3
	setlt.u r8, r22, r6
	lui r6, 523264
	.loc	1 948 19                        # parallel-rne.mlir:948:19
	bneq r8, zero, .LBB0_769
# %bb.768:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r9, 0
.LBB0_769:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_761 Depth=3
	setlt.u r7, r22, r7
	.loc	1 948 19                        # parallel-rne.mlir:948:19
	bneq r7, zero, .LBB0_771
# %bb.770:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r6, 0
.LBB0_771:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 949 19 is_stmt 1              # parallel-rne.mlir:949:19
	and r7, r2, r3
	.loc	1 951 20                        # parallel-rne.mlir:951:20
	setlt.u r6, r22, r7
	.loc	1 952 20                        # parallel-rne.mlir:952:20
	bneq r6, zero, .LBB0_775
# %bb.772:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r6, r2, 0
	.loc	1 958 20 is_stmt 1              # parallel-rne.mlir:958:20
	setlt.u r7, r4, r7
	.loc	1 959 20                        # parallel-rne.mlir:959:20
	bneq r7, zero, .LBB0_760
	j .LBB0_776
.LBB0_773:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r8, r9, 0
	lui r9, 523264
	.loc	1 948 19 is_stmt 1              # parallel-rne.mlir:948:19
	beq r6, zero, .LBB0_765
.LBB0_774:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r8, 0
	.loc	1 948 19                        # parallel-rne.mlir:948:19
	bneq r7, r22, .LBB0_766
	j .LBB0_767
.LBB0_775:                              #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r2, r5
	.loc	1 958 20 is_stmt 1              # parallel-rne.mlir:958:20
	setlt.u r7, r4, r7
	.loc	1 959 20                        # parallel-rne.mlir:959:20
	bneq r7, zero, .LBB0_760
.LBB0_776:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r13
	and r6, r2, r20
	j .LBB0_760
.LBB0_777:                              # %vector.body125.preheader
                                        #   in Loop: Header=BB0_758 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_779
.LBB0_778:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	.loc	1 928 11 is_stmt 1              # parallel-rne.mlir:928:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 961 13                        # parallel-rne.mlir:961:13
	add.s r2, r24, r2
	.loc	1 928 11                        # parallel-rne.mlir:928:11
	seteq.d r1, r[17:18], r[26:27]
	.loc	1 961 13                        # parallel-rne.mlir:961:13
	stores.w r12, 12(r2)
	stores.w r6, 8(r2)
	stores.w r7, 4(r2)
	stores.w r14, 0(r2)
	.loc	1 928 11                        # parallel-rne.mlir:928:11
	bneq r1, zero, .LBB0_757
.LBB0_779:                              # %vector.body125
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_758 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	add.ul r[1:2], r[17:18], r[15:16]
	lui r19, 523264
	slli r2, r1, 2
	add.s r12, r11, r2
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	add.s r1, r25, r2
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	loads.w r6, 0(r12)
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	loads.w r7, 0(r1)
	.loc	1 936 19                        # parallel-rne.mlir:936:19
	and r6, r6, r3
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	and r7, r7, r3
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	seteq r8, r6, r22
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	seteq r14, r6, zero
	.loc	1 938 19                        # parallel-rne.mlir:938:19
	seteq r9, r7, zero
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	seteq r10, r7, r22
	.loc	1 946 19                        # parallel-rne.mlir:946:19
	max.u r6, r6, r7
	setlt.u r7, r22, r6
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	and r6, r8, r9
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	and r8, r14, r10
	lui r10, 523264
	.loc	1 943 19                        # parallel-rne.mlir:943:19
	or r8, r6, r8
	.loc	1 931 19                        # parallel-rne.mlir:931:19
	add.s r6, r28, r2
	.loc	1 947 19                        # parallel-rne.mlir:947:19
	or r7, r7, r8
	.loc	1 948 19                        # parallel-rne.mlir:948:19
	bneq r7, zero, .LBB0_781
# %bb.780:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r19, 0(r6)
.LBB0_781:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	loads.w r7, 4(r12)
	loads.w r8, 4(r1)
	and r7, r7, r3
	and r8, r8, r3
	seteq r9, r7, r22
	seteq r23, r7, zero
	seteq r14, r8, zero
	seteq r21, r8, r22
	max.u r7, r7, r8
	setlt.u r7, r22, r7
	and r8, r9, r14
	and r9, r23, r21
	lui r21, 523264
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 948 19                        # parallel-rne.mlir:948:19
	bneq r7, zero, .LBB0_783
# %bb.782:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r6)
.LBB0_783:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	loads.w r7, 8(r12)
	loads.w r8, 8(r1)
	and r7, r7, r3
	and r8, r8, r3
	seteq r9, r7, r22
	seteq r25, r7, zero
	seteq r14, r8, zero
	seteq r23, r8, r22
	max.u r7, r7, r8
	setlt.u r7, r22, r7
	and r8, r9, r14
	and r9, r25, r23
	lui r23, 523264
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 948 19                        # parallel-rne.mlir:948:19
	bneq r7, zero, .LBB0_785
# %bb.784:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 8(r6)
.LBB0_785:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	loads.w r7, 12(r12)
	loads.w r1, 12(r1)
	and r7, r7, r3
	and r1, r1, r3
	seteq r8, r7, r22
	seteq r9, r1, zero
	seteq r12, r1, r22
	seteq r14, r7, zero
	max.u r1, r7, r1
	setlt.u r1, r22, r1
	and r7, r8, r9
	and r8, r14, r12
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 948 19                        # parallel-rne.mlir:948:19
	bneq r1, zero, .LBB0_787
# %bb.786:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r6)
.LBB0_787:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	.loc	1 949 19 is_stmt 1              # parallel-rne.mlir:949:19
	and r1, r10, r3
	.loc	1 951 20                        # parallel-rne.mlir:951:20
	setlt.u r6, r22, r1
	.loc	1 952 20                        # parallel-rne.mlir:952:20
	bneq r6, zero, .LBB0_789
# %bb.788:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r10, 0
	j .LBB0_790
.LBB0_789:                              #   in Loop: Header=BB0_779 Depth=3
	or r12, r10, r5
.LBB0_790:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	and r8, r23, r3
	setlt.u r6, r22, r8
	.loc	1 952 20                        # parallel-rne.mlir:952:20
	bneq r6, zero, .LBB0_792
# %bb.791:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r23, 0
	j .LBB0_793
.LBB0_792:                              #   in Loop: Header=BB0_779 Depth=3
	or r6, r23, r5
.LBB0_793:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	and r9, r21, r3
	setlt.u r7, r22, r9
	.loc	1 952 20                        # parallel-rne.mlir:952:20
	bneq r7, zero, .LBB0_795
# %bb.794:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r21, 0
	j .LBB0_796
.LBB0_795:                              #   in Loop: Header=BB0_779 Depth=3
	or r7, r21, r5
.LBB0_796:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	and r25, r19, r3
	setlt.u r14, r22, r25
	.loc	1 952 20                        # parallel-rne.mlir:952:20
	bneq r14, zero, .LBB0_798
# %bb.797:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r14, r19, 0
	.loc	1 958 20 is_stmt 1              # parallel-rne.mlir:958:20
	setlt.u r25, r4, r25
	.loc	1 959 20                        # parallel-rne.mlir:959:20
	beq r25, zero, .LBB0_799
	j .LBB0_800
.LBB0_798:                              #   in Loop: Header=BB0_779 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r19, r5
	.loc	1 958 20 is_stmt 1              # parallel-rne.mlir:958:20
	setlt.u r25, r4, r25
	.loc	1 959 20                        # parallel-rne.mlir:959:20
	bneq r25, zero, .LBB0_800
.LBB0_799:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r14, r19, 16
	andi r14, r14, 1
	add.s r14, r19, r14
	add.s r14, r14, r13
	and r14, r14, r20
.LBB0_800:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	setlt.u r9, r4, r9
	.loc	1 959 20                        # parallel-rne.mlir:959:20
	bneq r9, zero, .LBB0_802
# %bb.801:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r7, r21, 16
	andi r7, r7, 1
	add.s r7, r21, r7
	add.s r7, r7, r13
	and r7, r7, r20
.LBB0_802:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	setlt.u r8, r4, r8
	loadli.w r25,  -72(r30)                 # 4-byte Folded Reload
	.loc	1 959 20                        # parallel-rne.mlir:959:20
	bneq r8, zero, .LBB0_804
# %bb.803:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r6, r23, 16
	andi r6, r6, 1
	add.s r6, r23, r6
	add.s r6, r6, r13
	and r6, r6, r20
.LBB0_804:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	setlt.u r1, r4, r1
	.loc	1 959 20                        # parallel-rne.mlir:959:20
	bneq r1, zero, .LBB0_778
# %bb.805:                              # %vector.body125
                                        #   in Loop: Header=BB0_779 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r13
	and r12, r1, r20
	j .LBB0_778
.LBB0_806:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 919 7 is_stmt 1               # parallel-rne.mlir:919:7
	mfence { sm }
.LBB0_807:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 966 7 is_stmt 1               # parallel-rne.mlir:966:7
	store.d r[1:2], -104(r30)               # 8-byte Folded Spill
	loadli.w r1,  -160(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_859
# %bb.808:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -152(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -156(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -96(r30)                  # 4-byte Folded Spill
	addli r1, zero, 56
	.loc	1 966 7                         # parallel-rne.mlir:966:7
	xfence
	zext_int2long r[6:7], r1
	mfence { lm, sm, gm }
	j .LBB0_810
.LBB0_809:                              # %middle.block
                                        #   in Loop: Header=BB0_810 Depth=2
	.loc	1 974 9 is_stmt 1               # parallel-rne.mlir:974:9
	load.d r[1:2], -80(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -88(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_858
.LBB0_810:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_831 Depth 3
                                        #       Child Loop BB0_813 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -88(r30)                # 8-byte Folded Spill
	sll.d r[17:18], r[6:7], r1
	.loc	1 975 11 is_stmt 1              # parallel-rne.mlir:975:11
	loadli.w r1,  -96(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_829
# %bb.811:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_810 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_813
.LBB0_812:                              # %scalar.ph
                                        #   in Loop: Header=BB0_813 Depth=3
	.loc	1 975 11                        # parallel-rne.mlir:975:11
	load.d r[9:10], -64(r30)                # 8-byte Folded Reload
	.loc	1 1008 13 is_stmt 1             # parallel-rne.mlir:1008:13
	add.s r6, r24, r6
	stores.w r8, 0(r6)
	.loc	1 975 11                        # parallel-rne.mlir:975:11
	setlt.ul r7, r[1:2], r[9:10]
	addli.d r[1:2], r[1:2], 1
	beq r7, zero, .LBB0_809
.LBB0_813:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_810 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 976 19                        # parallel-rne.mlir:976:19
	add.ul r[6:7], r[1:2], r[17:18]
	lui r10, 523264
	slli r6, r6, 2
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	add.s r7, r25, r6
	.loc	1 978 19                        # parallel-rne.mlir:978:19
	add.s r8, r28, r6
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	loads.w r7, 0(r7)
	.loc	1 978 19                        # parallel-rne.mlir:978:19
	loads.w r12, 0(r8)
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	and r8, r7, r3
	lui r7, 523264
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	beq r8, r22, .LBB0_815
# %bb.814:                              # %scalar.ph
                                        #   in Loop: Header=BB0_813 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
.LBB0_815:                              # %scalar.ph
                                        #   in Loop: Header=BB0_813 Depth=3
	add.s r9, r11, r6
	loads.w r9, 0(r9)
	and r9, r9, r3
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	bneq r9, zero, .LBB0_825
# %bb.816:                              # %scalar.ph
                                        #   in Loop: Header=BB0_813 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r12, 523264
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	bneq r8, zero, .LBB0_826
.LBB0_817:                              # %scalar.ph
                                        #   in Loop: Header=BB0_813 Depth=3
	beq r9, r22, .LBB0_819
.LBB0_818:                              # %scalar.ph
                                        #   in Loop: Header=BB0_813 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r10, 0
.LBB0_819:                              # %scalar.ph
                                        #   in Loop: Header=BB0_813 Depth=3
	setlt.u r10, r22, r8
	lui r8, 523264
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	bneq r10, zero, .LBB0_821
# %bb.820:                              # %scalar.ph
                                        #   in Loop: Header=BB0_813 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r12, 0
.LBB0_821:                              # %scalar.ph
                                        #   in Loop: Header=BB0_813 Depth=3
	setlt.u r9, r22, r9
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	bneq r9, zero, .LBB0_823
# %bb.822:                              # %scalar.ph
                                        #   in Loop: Header=BB0_813 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
.LBB0_823:                              # %scalar.ph
                                        #   in Loop: Header=BB0_813 Depth=3
	.loc	1 996 19 is_stmt 1              # parallel-rne.mlir:996:19
	and r9, r7, r3
	.loc	1 998 20                        # parallel-rne.mlir:998:20
	setlt.u r8, r22, r9
	.loc	1 999 20                        # parallel-rne.mlir:999:20
	bneq r8, zero, .LBB0_827
# %bb.824:                              # %scalar.ph
                                        #   in Loop: Header=BB0_813 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r8, r7, 0
	.loc	1 1005 20 is_stmt 1             # parallel-rne.mlir:1005:20
	setlt.u r9, r4, r9
	.loc	1 1006 20                       # parallel-rne.mlir:1006:20
	bneq r9, zero, .LBB0_812
	j .LBB0_828
.LBB0_825:                              # %scalar.ph
                                        #   in Loop: Header=BB0_813 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r10, r12, 0
	lui r12, 523264
	.loc	1 995 19 is_stmt 1              # parallel-rne.mlir:995:19
	beq r8, zero, .LBB0_817
.LBB0_826:                              # %scalar.ph
                                        #   in Loop: Header=BB0_813 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	bneq r9, r22, .LBB0_818
	j .LBB0_819
.LBB0_827:                              #   in Loop: Header=BB0_813 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r7, r5
	.loc	1 1005 20 is_stmt 1             # parallel-rne.mlir:1005:20
	setlt.u r9, r4, r9
	.loc	1 1006 20                       # parallel-rne.mlir:1006:20
	bneq r9, zero, .LBB0_812
.LBB0_828:                              # %scalar.ph
                                        #   in Loop: Header=BB0_813 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r8, r7, 16
	andi r8, r8, 1
	add.s r7, r7, r8
	add.s r7, r7, r13
	and r8, r7, r20
	j .LBB0_812
.LBB0_829:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_810 Depth=2
	load.d r[1:2], -104(r30)                # 8-byte Folded Reload
	j .LBB0_831
.LBB0_830:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	.loc	1 975 11 is_stmt 1              # parallel-rne.mlir:975:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 1008 13                       # parallel-rne.mlir:1008:13
	add.s r7, r24, r7
	.loc	1 975 11                        # parallel-rne.mlir:975:11
	seteq.d r6, r[1:2], r[26:27]
	.loc	1 1008 13                       # parallel-rne.mlir:1008:13
	stores.w r12, 12(r7)
	stores.w r15, 8(r7)
	stores.w r16, 4(r7)
	stores.w r14, 0(r7)
	.loc	1 975 11                        # parallel-rne.mlir:975:11
	bneq r6, zero, .LBB0_809
.LBB0_831:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_810 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 976 19                        # parallel-rne.mlir:976:19
	add.ul r[6:7], r[1:2], r[17:18]
	lui r19, 523264
	slli r7, r6, 2
	add.s r12, r11, r7
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	add.s r6, r25, r7
	.loc	1 976 19                        # parallel-rne.mlir:976:19
	loads.w r8, 0(r12)
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	loads.w r9, 0(r6)
	.loc	1 983 19                        # parallel-rne.mlir:983:19
	and r8, r8, r3
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	and r9, r9, r3
	.loc	1 984 19                        # parallel-rne.mlir:984:19
	seteq r10, r8, r22
	.loc	1 988 19                        # parallel-rne.mlir:988:19
	seteq r16, r8, zero
	.loc	1 985 19                        # parallel-rne.mlir:985:19
	seteq r14, r9, zero
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	seteq r15, r9, r22
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	max.u r8, r8, r9
	setlt.u r8, r22, r8
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	and r9, r10, r14
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	and r10, r16, r15
	.loc	1 978 19                        # parallel-rne.mlir:978:19
	add.s r15, r28, r7
	.loc	1 990 19                        # parallel-rne.mlir:990:19
	or r9, r9, r10
	lui r10, 523264
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	or r8, r8, r9
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	bneq r8, zero, .LBB0_833
# %bb.832:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r19, 0(r15)
.LBB0_833:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	loads.w r8, 4(r12)
	loads.w r9, 4(r6)
	and r8, r8, r3
	and r9, r9, r3
	seteq r14, r8, r22
	seteq r23, r8, zero
	seteq r16, r9, zero
	seteq r21, r9, r22
	max.u r8, r8, r9
	setlt.u r8, r22, r8
	and r9, r14, r16
	and r14, r23, r21
	lui r21, 523264
	or r9, r9, r14
	or r8, r8, r9
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	bneq r8, zero, .LBB0_835
# %bb.834:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r15)
.LBB0_835:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	loads.w r8, 8(r12)
	loads.w r9, 8(r6)
	and r8, r8, r3
	and r9, r9, r3
	seteq r14, r8, r22
	seteq r25, r8, zero
	seteq r16, r9, zero
	seteq r23, r9, r22
	max.u r8, r8, r9
	setlt.u r8, r22, r8
	and r9, r14, r16
	and r14, r25, r23
	lui r23, 523264
	or r9, r9, r14
	or r8, r8, r9
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	bneq r8, zero, .LBB0_837
# %bb.836:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 8(r15)
.LBB0_837:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	loads.w r8, 12(r12)
	loads.w r6, 12(r6)
	and r8, r8, r3
	and r6, r6, r3
	seteq r9, r8, r22
	seteq r12, r6, zero
	seteq r14, r6, r22
	seteq r16, r8, zero
	max.u r6, r8, r6
	setlt.u r6, r22, r6
	and r8, r9, r12
	and r9, r16, r14
	or r8, r8, r9
	or r6, r6, r8
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	bneq r6, zero, .LBB0_839
# %bb.838:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r15)
.LBB0_839:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	.loc	1 996 19 is_stmt 1              # parallel-rne.mlir:996:19
	and r6, r10, r3
	.loc	1 998 20                        # parallel-rne.mlir:998:20
	setlt.u r8, r22, r6
	.loc	1 999 20                        # parallel-rne.mlir:999:20
	bneq r8, zero, .LBB0_841
# %bb.840:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r10, 0
	j .LBB0_842
.LBB0_841:                              #   in Loop: Header=BB0_831 Depth=3
	or r12, r10, r5
.LBB0_842:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	and r8, r23, r3
	setlt.u r9, r22, r8
	.loc	1 999 20                        # parallel-rne.mlir:999:20
	bneq r9, zero, .LBB0_844
# %bb.843:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r15, r23, 0
	j .LBB0_845
.LBB0_844:                              #   in Loop: Header=BB0_831 Depth=3
	or r15, r23, r5
.LBB0_845:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	and r9, r21, r3
	setlt.u r14, r22, r9
	.loc	1 999 20                        # parallel-rne.mlir:999:20
	bneq r14, zero, .LBB0_847
# %bb.846:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r16, r21, 0
	j .LBB0_848
.LBB0_847:                              #   in Loop: Header=BB0_831 Depth=3
	or r16, r21, r5
.LBB0_848:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	and r25, r19, r3
	setlt.u r14, r22, r25
	.loc	1 999 20                        # parallel-rne.mlir:999:20
	bneq r14, zero, .LBB0_850
# %bb.849:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r14, r19, 0
	.loc	1 1005 20 is_stmt 1             # parallel-rne.mlir:1005:20
	setlt.u r25, r4, r25
	.loc	1 1006 20                       # parallel-rne.mlir:1006:20
	beq r25, zero, .LBB0_851
	j .LBB0_852
.LBB0_850:                              #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r19, r5
	.loc	1 1005 20 is_stmt 1             # parallel-rne.mlir:1005:20
	setlt.u r25, r4, r25
	.loc	1 1006 20                       # parallel-rne.mlir:1006:20
	bneq r25, zero, .LBB0_852
.LBB0_851:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r14, r19, 16
	andi r14, r14, 1
	add.s r14, r19, r14
	add.s r14, r14, r13
	and r14, r14, r20
.LBB0_852:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	setlt.u r9, r4, r9
	.loc	1 1006 20                       # parallel-rne.mlir:1006:20
	bneq r9, zero, .LBB0_854
# %bb.853:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r9, r21, 16
	andi r9, r9, 1
	add.s r9, r21, r9
	add.s r9, r9, r13
	and r16, r9, r20
.LBB0_854:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	setlt.u r8, r4, r8
	loadli.w r25,  -72(r30)                 # 4-byte Folded Reload
	.loc	1 1006 20                       # parallel-rne.mlir:1006:20
	bneq r8, zero, .LBB0_856
# %bb.855:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r8, r23, 16
	andi r8, r8, 1
	add.s r8, r23, r8
	add.s r8, r8, r13
	and r15, r8, r20
.LBB0_856:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	setlt.u r6, r4, r6
	.loc	1 1006 20                       # parallel-rne.mlir:1006:20
	bneq r6, zero, .LBB0_830
# %bb.857:                              # %vector.body
                                        #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r13
	and r12, r6, r20
	j .LBB0_830
.LBB0_858:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 966 7 is_stmt 1               # parallel-rne.mlir:966:7
	mfence { sm }
.LBB0_859:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1013 7                        # parallel-rne.mlir:1013:7
	addli r1, zero, 255
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r10
	addli r19, zero, 3
	.loc	1 1013 7                        # parallel-rne.mlir:1013:7
	csr_set csr5, r1
	sync_core
	.loc	1 1014 7                        # parallel-rne.mlir:1014:7
	beq r10, r19, .LBB0_5
# %bb.860:                              # %.critedge17
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[14:15], -184(r30)              # 8-byte Folded Reload
	loadli.w r27,  -172(r30)                # 4-byte Folded Reload
	addli r12, zero, 5
	addli r16, zero, 64
	addli r17, zero, 1
	addli r11, zero, 7
	addli r18, zero, 13
	addli r21, zero, 4
	addli r23, zero, 2
	addli r24, zero, 6
	addli r28, zero, 18
	.loc	1 1025 7 is_stmt 1              # parallel-rne.mlir:1025:7
	bneq r10, zero, .LBB0_6
# %bb.861:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -212(r30)                 # 4-byte Folded Reload
	load.d r[6:7], -104(r30)                # 8-byte Folded Reload
	.loc	1 1025 7                        # parallel-rne.mlir:1025:7
	load.d r[25:26], -208(r30)              # 8-byte Folded Reload
	addli r8, zero, 17
	load.d r[27:28], 24(r30)
	slli r1, r1, 6
	sll.d r[8:9], r[25:26], r8
	addli r25, zero, 15
	sext_int2long r[1:2], r1
	add.ul r[8:9], r[27:28], r[8:9]
	xwait r25, 0
	loadli.w r27,  -172(r30)                # 4-byte Folded Reload
	lock zero, r12
	addli r28, zero, 18
	load.d r[25:26], -192(r30)              # 8-byte Folded Reload
	dma_cfg r17, r17, zero, 0
	min.sl r[6:7], r[1:2], r[6:7]
	dma_cfg zero, r17, zero, 1
	addli.d r[6:7], r[6:7], 64
	add.ul r[8:9], r[8:9], r[25:26]
	max.sl r[6:7], r[6:7], r[1:2]
	dma_cfg r9, zero, zero, 2
	load.d r[25:26], -200(r30)              # 8-byte Folded Reload
	sub.sl r[1:2], r[6:7], r[1:2]
	zext_int2long r[6:7], r16
	.loc	1 1021 13 is_stmt 1             # parallel-rne.mlir:1021:13
	min.sl r[1:2], r[1:2], r[6:7]
	lui r6, 100
	.loc	1 1025 7                        # parallel-rne.mlir:1025:7
	loadli.w r7,  -52(r30)                  # 4-byte Folded Reload
	ori r6, r6, 64
	add.s r6, r7, r6
	addli r7, r25, 31
	dma_cfg r8, r6, r16, 3
	srli r6, r7, 5
	addli r8, zero, 128
	slli r7, r25, 1
	dma_cfg r16, r8, r6, 4
	andi r6, r7, 62
	addli r7, zero, 512
	addli r8, zero, 2048
	dma_cfg r8, r7, r1, 5
	addli r1, zero, 16
	dma_cfg zero, zero, r6, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r1, 0
	j .LBB0_6
.LBB0_862:                              # %._crit_edge
	.loc	1 1027 5                        # parallel-rne.mlir:1027:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_864
# %bb.863:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1027 5                        # parallel-rne.mlir:1027:5
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
.LBB0_864:
	.loc	1 1028 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1028:5
	addli sp, sp, 232
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
	.long	52                              # 0x34
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	296                             # 0x128
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
.asciz	"parallel-rne.mlir"             # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-15f5sqqj" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
