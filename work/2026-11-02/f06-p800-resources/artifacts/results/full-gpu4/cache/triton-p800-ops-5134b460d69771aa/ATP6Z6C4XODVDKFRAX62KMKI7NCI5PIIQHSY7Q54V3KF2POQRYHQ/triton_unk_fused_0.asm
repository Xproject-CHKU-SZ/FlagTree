	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-bl7m14ze" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -296
	addli r1, zero, 1
.Ltmp0:
	.loc	1 32 5 prologue_end             # parallel-rne.mlir:32:5
	core_id r15
	addli r30, sp, 232
	xsignal_mode_cfg r1
	beq r15, zero, .LBB0_2
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
	addli r2, zero, 18
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
	addli r1, zero, 16
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
	ble.s r2, r1, .LBB0_893
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 43 11 is_stmt 1               # parallel-rne.mlir:43:11
	sext_int2long r[10:11], r1
	lui r1, 524287
	addli r14, zero, 5
	lui r5, 1024
	lui r23, 522240
	lui r22, 1048560
	addli r25, zero, 0
	store.d r[2:3], -216(r30)               # 8-byte Folded Spill
	ori r3, r1, 4095
	lui r1, 7
	lui r2, 522239
	ori r12, r1, 4095
	lui r1, 30
	ori r4, r2, 4095
	lui r2, 35
	ori r1, r1, 640
	storeli.w r1, -220(r30)                 # 4-byte Folded Spill
	ori r1, r2, 640
	storeli.w r1, -224(r30)                 # 4-byte Folded Spill
	lui r1, 40
	ori r1, r1, 640
	storeli.w r1, -228(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge17.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 990 7                         # parallel-rne.mlir:990:7
	addli r1, zero, 15
	xsignal r1, 0
	.loc	1 991 7                         # parallel-rne.mlir:991:7
	addli r1, zero, 22
	xsignal r1, 0
	.loc	1 992 7                         # parallel-rne.mlir:992:7
	addli r1, zero, 24
	xsignal r1, 0
	.loc	1 993 7                         # parallel-rne.mlir:993:7
	addli r1, zero, 26
	xsignal r1, 0
	load.d r[10:11], -176(r30)              # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 55 5                          # parallel-rne.mlir:55:5
	load.d r[1:2], -216(r30)                # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 1
	loadli.w r25,  -164(r30)                # 4-byte Folded Reload
	setlt.sl r1, r[10:11], r[1:2]
	addli r25, r25, 1
	beq r1, zero, .LBB0_893
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_30 Depth 2
                                        #       Child Loop BB0_32 Depth 3
                                        #     Child Loop BB0_55 Depth 2
                                        #       Child Loop BB0_57 Depth 3
                                        #     Child Loop BB0_80 Depth 2
                                        #       Child Loop BB0_82 Depth 3
                                        #     Child Loop BB0_105 Depth 2
                                        #       Child Loop BB0_107 Depth 3
                                        #     Child Loop BB0_130 Depth 2
                                        #       Child Loop BB0_132 Depth 3
                                        #     Child Loop BB0_155 Depth 2
                                        #       Child Loop BB0_157 Depth 3
                                        #     Child Loop BB0_180 Depth 2
                                        #       Child Loop BB0_182 Depth 3
                                        #     Child Loop BB0_205 Depth 2
                                        #       Child Loop BB0_207 Depth 3
                                        #     Child Loop BB0_235 Depth 2
                                        #     Child Loop BB0_247 Depth 2
                                        #       Child Loop BB0_254 Depth 3
                                        #       Child Loop BB0_249 Depth 3
                                        #     Child Loop BB0_276 Depth 2
                                        #       Child Loop BB0_283 Depth 3
                                        #       Child Loop BB0_278 Depth 3
                                        #     Child Loop BB0_305 Depth 2
                                        #       Child Loop BB0_312 Depth 3
                                        #       Child Loop BB0_307 Depth 3
                                        #     Child Loop BB0_334 Depth 2
                                        #       Child Loop BB0_341 Depth 3
                                        #       Child Loop BB0_336 Depth 3
                                        #     Child Loop BB0_363 Depth 2
                                        #       Child Loop BB0_370 Depth 3
                                        #       Child Loop BB0_365 Depth 3
                                        #     Child Loop BB0_392 Depth 2
                                        #       Child Loop BB0_399 Depth 3
                                        #       Child Loop BB0_394 Depth 3
                                        #     Child Loop BB0_421 Depth 2
                                        #       Child Loop BB0_428 Depth 3
                                        #       Child Loop BB0_423 Depth 3
                                        #     Child Loop BB0_450 Depth 2
                                        #       Child Loop BB0_457 Depth 3
                                        #       Child Loop BB0_452 Depth 3
                                        #     Child Loop BB0_491 Depth 2
                                        #       Child Loop BB0_512 Depth 3
                                        #       Child Loop BB0_494 Depth 3
                                        #     Child Loop BB0_542 Depth 2
                                        #       Child Loop BB0_563 Depth 3
                                        #       Child Loop BB0_545 Depth 3
                                        #     Child Loop BB0_593 Depth 2
                                        #       Child Loop BB0_614 Depth 3
                                        #       Child Loop BB0_596 Depth 3
                                        #     Child Loop BB0_644 Depth 2
                                        #       Child Loop BB0_663 Depth 3
                                        #       Child Loop BB0_646 Depth 3
                                        #     Child Loop BB0_693 Depth 2
                                        #       Child Loop BB0_712 Depth 3
                                        #       Child Loop BB0_695 Depth 3
                                        #     Child Loop BB0_742 Depth 2
                                        #       Child Loop BB0_761 Depth 3
                                        #       Child Loop BB0_744 Depth 3
                                        #     Child Loop BB0_791 Depth 2
                                        #       Child Loop BB0_810 Depth 3
                                        #       Child Loop BB0_793 Depth 3
                                        #     Child Loop BB0_841 Depth 2
                                        #       Child Loop BB0_862 Depth 3
                                        #       Child Loop BB0_844 Depth 3
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	loadli.w r1,  48(r30)
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	loadli.w r2,  44(r30)
	store.d r[10:11], -176(r30)             # 8-byte Folded Spill
	.loc	1 64 13                         # parallel-rne.mlir:64:13
	addli r8, zero, 8
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	mod.s r27, r25, r14
	.loc	1 97 7                          # parallel-rne.mlir:97:7
	storeli.w r25, -164(r30)                # 4-byte Folded Spill
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	div.s r1, r10, r1
	addli r11, zero, 1
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	div.s r6, r1, r2
	.loc	1 61 13                         # parallel-rne.mlir:61:13
	addli r1, zero, 64
	div.s r7, r6, r1
	.loc	1 62 13                         # parallel-rne.mlir:62:13
	slli r1, r7, 3
	.loc	1 63 13                         # parallel-rne.mlir:63:13
	sub.s r2, r11, r1
	.loc	1 64 13                         # parallel-rne.mlir:64:13
	min.s r9, r2, r8
	.loc	1 65 13                         # parallel-rne.mlir:65:13
	mod.s r2, r6, r9
	.loc	1 66 13                         # parallel-rne.mlir:66:13
	add.s r2, r2, r1
	.loc	1 91 13                         # parallel-rne.mlir:91:13
	slli r1, r27, 13
	.loc	1 74 13                         # parallel-rne.mlir:74:13
	zext_int2long r[17:18], r2
	storeli.w r2, -204(r30)                 # 4-byte Folded Spill
	.loc	1 93 13                         # parallel-rne.mlir:93:13
	lui r2, 5
	add.s r10, r1, r2
	.loc	1 97 7                          # parallel-rne.mlir:97:7
	store.d r[17:18], -200(r30)             # 8-byte Folded Spill
	bneq r15, r11, .LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r16, zero, 12
	addli r19, zero, 2
	addli r20, zero, 6
	addli r21, zero, 7
	addli r24, zero, 18
	.loc	1 97 7                          # parallel-rne.mlir:97:7
	sll.d r[13:14], r[17:18], r16
	load.d r[17:18], 0(r30)
	add.ul r[13:14], r[17:18], r[13:14]
	addli r17, zero, 3
	addli r18, zero, 4
	xwait r17, 0
	blt.s r18, r25, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 5
	.loc	1 97 7                          # parallel-rne.mlir:97:7
	addli r8, zero, 8
	addli r25, zero, 256
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 9
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 11
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 13
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 14
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 15
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 16
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 17
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 19
	dma_cfg zero, zero, r24, 10
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
	addli r8, zero, 64
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r10, zero, r8, 3
	addli r8, zero, 128
	dma_cfg r8, zero, r19, 4
	addli r8, zero, 32
	dma_cfg r25, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
.LBB0_10:                               # %.thread46
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r2, 5
	storeli.w zero, -160(r30)               # 4-byte Folded Spill
	addli r8, zero, 64
	addli r25, zero, 32
	addli r26, zero, 256
	.loc	1 97 7                          # parallel-rne.mlir:97:7
	lock zero, r18
	ori r2, r2, 64
	dma_cfg r11, r11, zero, 0
	dma_cfg zero, r14, zero, 2
	add.s r2, r1, r2
	dma_cfg r2, r13, r8, 3
	addli r13, zero, 128
	addli r14, zero, 5
	addli r2, zero, 8
	dma_cfg r13, r8, r19, 4
	dma_cfg r26, r13, r25, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	lock zero, r14
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 19
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 20
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 21
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 22
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 23
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 24
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 25
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 26
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 27
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 28
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 29
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 30
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 31
	dma_cfg zero, zero, r2, 10
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r10, zero, r8, 3
	dma_cfg r13, zero, r19, 4
	dma_cfg r26, zero, r25, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	xsignal r19, 0
	.loc	1 98 7 is_stmt 1                # parallel-rne.mlir:98:7
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 2
	.loc	1 98 7                          # parallel-rne.mlir:98:7
	bneq r15, r2, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	xwait r2, 0
	xwait r14, 0
	lock zero, zero
	addli r8, zero, 32
	addli r18, zero, 4
	ds_cfg r2, zero, 0
	addli r2, zero, 64
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r8, zero, 13
	shuffle_batch r1, r10, r2, 1
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	addli r2, zero, 1
	storeli.w r2, -160(r30)                 # 4-byte Folded Spill
	xsignal r18, 0
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -160(r30)               # 4-byte Folded Spill
	addli r18, zero, 4
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	addli r19, zero, 2
	addli r20, zero, 6
	addli r21, zero, 7
	addli r24, zero, 18
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	slli r2, r7, 6
	.loc	1 112 7 is_stmt 1               # parallel-rne.mlir:112:7
	storeli.w r27, -140(r30)                # 4-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r2, r6, r2
	div.s r28, r2, r9
	slli r2, r27, 12
	storeli.w r2, -68(r30)                  # 4-byte Folded Spill
	.loc	1 108 13 is_stmt 1              # parallel-rne.mlir:108:13
	lui r2, 15
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[6:7], r28
	.loc	1 112 7 is_stmt 1               # parallel-rne.mlir:112:7
	storeli.w r28, -136(r30)                # 4-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sll.d r[7:8], r[6:7], r14
	.loc	1 108 13 is_stmt 1              # parallel-rne.mlir:108:13
	add.s r6, r1, r2
	.loc	1 112 7                         # parallel-rne.mlir:112:7
	sll.d r[9:10], r[7:8], r11
	store.d r[9:10], -184(r30)              # 8-byte Folded Spill
	bneq r15, r20, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[7:8], 8(r30)
	xwait r21, 0
	loadli.w r2,  -164(r30)                 # 4-byte Folded Reload
	add.ul r[7:8], r[7:8], r[9:10]
	addli r9, zero, 12
	addli r10, zero, 3
	blt.s r18, r2, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_7 Depth=1
	lock zero, r14
	addli r2, zero, 8
	addli r13, zero, 128
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 19
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 20
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 21
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 22
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 23
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 24
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 25
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 26
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 27
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 28
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 29
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 30
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 31
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 64
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r2, 3
	dma_cfg r13, zero, r11, 4
	dma_cfg r13, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
.LBB0_18:                               # %.thread47
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r2, 15
	storeli.w zero, -156(r30)               # 4-byte Folded Spill
	storeli.w zero, -152(r30)               # 4-byte Folded Spill
	.loc	1 112 7                         # parallel-rne.mlir:112:7
	lock zero, r18
	ori r2, r2, 64
	dma_cfg r11, r11, zero, 0
	dma_cfg zero, r8, zero, 2
	add.s r1, r1, r2
	addli r2, zero, 64
	dma_cfg r1, r7, r2, 3
	addli r8, zero, 128
	addli r1, zero, 512
	addli r7, zero, 13
	dma_cfg r8, r2, r11, 4
	dma_cfg r8, r1, r2, 5
	addli r1, zero, 8
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	lock zero, r14
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 3
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 14
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 15
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 16
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 17
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 19
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 20
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 21
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 22
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 23
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 24
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 25
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 26
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 27
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 28
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 29
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 30
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 31
	dma_cfg zero, zero, r7, 10
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r2, 3
	dma_cfg r8, zero, r11, 4
	dma_cfg r8, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	xsignal r20, 0
	.loc	1 133 7 is_stmt 1               # parallel-rne.mlir:133:7
	beq r15, r1, .LBB0_26
	j .LBB0_27
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 113 7                         # parallel-rne.mlir:113:7
	beq r15, r18, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r15, r21, .LBB0_24
# %bb.21:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 9
	storeli.w zero, -156(r30)               # 4-byte Folded Spill
	xwait r20, 0
	addli r7, zero, 32
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 64
	ds_cfg r19, zero, 0
	ds_cfg r7, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r7, zero, 13
	shuffle_coa r1, r6, r2, 2
	addli r1, zero, 1
	unlock zero
	xsignal r21, 0
	storeli.w r1, -152(r30)                 # 4-byte Folded Spill
	addli r1, zero, 8
	j .LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 114 7                         # parallel-rne.mlir:114:7
	addli r2, zero, 8
	storeli.w zero, -152(r30)               # 4-byte Folded Spill
	xwait r18, 0
	addli r7, zero, 1
	addli r6, zero, 32
	xwait r2, 0
	addli r2, zero, 11
	xwait r2, 0
	addli r2, zero, 64
	lock zero, r7
	mm_cfg r6, r2, r6, 0
	mm_cfg r18, r7, r7, 2
	loadli.w r2,  -68(r30)                  # 4-byte Folded Reload
	mm r2, r1, r1, 8
	addli r1, zero, 1
	storeli.w r1, -156(r30)                 # 4-byte Folded Spill
	addli r1, zero, 9
	unlock r7
	xsignal r14, 0
	xsignal r1, 0
	addli r1, zero, 10
.LBB0_23:                               # %.thread48
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
	j .LBB0_25
.LBB0_24:                               #   in Loop: Header=BB0_7 Depth=1
	storeli.w zero, -156(r30)               # 4-byte Folded Spill
	storeli.w zero, -152(r30)               # 4-byte Folded Spill
.LBB0_25:                               # %.thread48
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 3
	.loc	1 133 7 is_stmt 1               # parallel-rne.mlir:133:7
	bneq r15, r1, .LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	addli r1, zero, 16
	xwait r1, 0
.LBB0_27:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	lui r1, 25
	zext_int2long r[6:7], r2
	loadli.w r2,  -68(r30)                  # 4-byte Folded Reload
	ori r1, r1, 640
	store.d r[6:7], -56(r30)                # 8-byte Folded Spill
	add.s r1, r2, r1
	.loc	1 138 7 is_stmt 1               # parallel-rne.mlir:138:7
	addli r2, zero, 255
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	xfence
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	mfence { lm, sm, gm }
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	csr_set csr5, r2
	addli r2, zero, 3
	zext_int2long r[6:7], r2
	store.d r[6:7], -128(r30)               # 8-byte Folded Spill
	sync_core
	.loc	1 139 7                         # parallel-rne.mlir:139:7
	bneq r15, zero, .LBB0_52
# %bb.28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[9:10], zero
	.loc	1 139 7                         # parallel-rne.mlir:139:7
	xfence
	mfence { lm, sm, gm }
	addli.d r[27:28], r[9:10], 0
	j .LBB0_30
.LBB0_29:                               # %middle.block365
                                        #   in Loop: Header=BB0_30 Depth=2
	.loc	1 146 9 is_stmt 1               # parallel-rne.mlir:146:9
	load.d r[6:7], -128(r30)                # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[9:10], r[6:7]
	addli.d r[9:10], r[9:10], 1
	beq r2, zero, .LBB0_51
.LBB0_30:                               # %.preheader85
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_32 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli.d r[15:16], r[27:28], 0
	sll.d r[13:14], r[9:10], r2
	j .LBB0_32
.LBB0_31:                               # %vector.body361
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 147 11 is_stmt 1              # parallel-rne.mlir:147:11
	load.d r[6:7], -56(r30)                 # 8-byte Folded Reload
	addli.d r[15:16], r[15:16], 4
	setneq.d r6, r[15:16], r[6:7]
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	add.s r7, r1, r17
	stores.w r19, 12(r7)
	stores.w r20, 8(r7)
	stores.w r24, 4(r7)
	stores.w r2, 0(r7)
	.loc	1 147 11                        # parallel-rne.mlir:147:11
	beq r6, zero, .LBB0_29
.LBB0_32:                               # %vector.body361
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	add.ul r[6:7], r[15:16], r[13:14]
	loadli.w r2,  -68(r30)                  # 4-byte Folded Reload
	slli r17, r6, 2
	add.s r2, r2, r17
	loads.w r18, 12(r2)
	loads.w r11, 0(r2)
	loads.w r25, 4(r2)
	loads.w r21, 8(r2)
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	and r8, r18, r3
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	setlt.u r2, r23, r8
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r2, zero, .LBB0_34
# %bb.33:                               # %vector.body361
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r18, 0
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_32 Depth=3
	or r19, r18, r5
.LBB0_35:                               # %vector.body361
                                        #   in Loop: Header=BB0_32 Depth=3
	and r26, r21, r3
	setlt.u r2, r23, r26
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r2, zero, .LBB0_37
# %bb.36:                               # %vector.body361
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_32 Depth=3
	or r20, r21, r5
.LBB0_38:                               # %vector.body361
                                        #   in Loop: Header=BB0_32 Depth=3
	and r6, r25, r3
	setlt.u r2, r23, r6
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r2, zero, .LBB0_40
# %bb.39:                               # %vector.body361
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r25, 0
	j .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_32 Depth=3
	or r24, r25, r5
.LBB0_41:                               # %vector.body361
                                        #   in Loop: Header=BB0_32 Depth=3
	and r7, r11, r3
	setlt.u r2, r23, r7
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r2, zero, .LBB0_43
# %bb.42:                               # %vector.body361
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r11, 0
	.loc	1 159 19 is_stmt 1              # parallel-rne.mlir:159:19
	setlt.u r7, r4, r7
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	beq r7, zero, .LBB0_44
	j .LBB0_45
.LBB0_43:                               #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r11, r5
	.loc	1 159 19 is_stmt 1              # parallel-rne.mlir:159:19
	setlt.u r7, r4, r7
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r7, zero, .LBB0_45
.LBB0_44:                               # %vector.body361
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r11, 16
	andi r2, r2, 1
	add.s r2, r11, r2
	add.s r2, r2, r12
	and r2, r2, r22
.LBB0_45:                               # %vector.body361
                                        #   in Loop: Header=BB0_32 Depth=3
	setlt.u r6, r4, r6
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	beq r6, zero, .LBB0_48
# %bb.46:                               # %vector.body361
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r4, r26
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	beq r6, zero, .LBB0_49
.LBB0_47:                               # %vector.body361
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r4, r8
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r6, zero, .LBB0_31
	j .LBB0_50
.LBB0_48:                               # %vector.body361
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r12
	and r24, r6, r22
	setlt.u r6, r4, r26
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r6, zero, .LBB0_47
.LBB0_49:                               # %vector.body361
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r12
	and r20, r6, r22
	setlt.u r6, r4, r8
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r6, zero, .LBB0_31
.LBB0_50:                               # %vector.body361
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r12
	and r19, r6, r22
	j .LBB0_31
.LBB0_51:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	addli r11, zero, 1
	.loc	1 139 7                         # parallel-rne.mlir:139:7
	mfence { sm }
.LBB0_52:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 167 7 is_stmt 1               # parallel-rne.mlir:167:7
	store.d r[6:7], -120(r30)               # 8-byte Folded Spill
	bneq r15, r11, .LBB0_77
# %bb.53:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 4
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_55
.LBB0_54:                               # %middle.block356
                                        #   in Loop: Header=BB0_55 Depth=2
	.loc	1 174 9 is_stmt 1               # parallel-rne.mlir:174:9
	load.d r[8:9], -120(r30)                # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r2, zero, .LBB0_76
.LBB0_55:                               # %.preheader84
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_57 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[9:10], r[6:7], r14
	zext_int2long r[13:14], zero
	j .LBB0_57
.LBB0_56:                               # %vector.body352
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 175 11 is_stmt 1              # parallel-rne.mlir:175:11
	load.d r[24:25], -56(r30)               # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 4
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	add.s r8, r1, r15
	stores.w r17, 12(r8)
	stores.w r18, 8(r8)
	stores.w r20, 4(r8)
	stores.w r11, 0(r8)
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	setneq.d r2, r[13:14], r[24:25]
	beq r2, zero, .LBB0_54
.LBB0_57:                               # %vector.body352
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	add.ul r[15:16], r[13:14], r[9:10]
	loadli.w r2,  -68(r30)                  # 4-byte Folded Reload
	slli r15, r15, 2
	add.s r8, r2, r15
	loads.w r16, 12(r8)
	loads.w r2, 0(r8)
	loads.w r21, 4(r8)
	loads.w r19, 8(r8)
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	and r8, r16, r3
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	setlt.u r11, r23, r8
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r11, zero, .LBB0_59
# %bb.58:                               # %vector.body352
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_57 Depth=3
	or r17, r16, r5
.LBB0_60:                               # %vector.body352
                                        #   in Loop: Header=BB0_57 Depth=3
	and r24, r19, r3
	setlt.u r11, r23, r24
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r11, zero, .LBB0_62
# %bb.61:                               # %vector.body352
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_63
.LBB0_62:                               #   in Loop: Header=BB0_57 Depth=3
	or r18, r19, r5
.LBB0_63:                               # %vector.body352
                                        #   in Loop: Header=BB0_57 Depth=3
	and r25, r21, r3
	setlt.u r11, r23, r25
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r11, zero, .LBB0_65
# %bb.64:                               # %vector.body352
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_66
.LBB0_65:                               #   in Loop: Header=BB0_57 Depth=3
	or r20, r21, r5
.LBB0_66:                               # %vector.body352
                                        #   in Loop: Header=BB0_57 Depth=3
	and r26, r2, r3
	setlt.u r11, r23, r26
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r11, zero, .LBB0_68
# %bb.67:                               # %vector.body352
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r26, r4, r26
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r26, zero, .LBB0_69
	j .LBB0_70
.LBB0_68:                               #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r2, r5
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r26, r4, r26
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r26, zero, .LBB0_70
.LBB0_69:                               # %vector.body352
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r2, 16
	andi r11, r11, 1
	add.s r2, r2, r11
	add.s r2, r2, r12
	and r11, r2, r22
.LBB0_70:                               # %vector.body352
                                        #   in Loop: Header=BB0_57 Depth=3
	setlt.u r2, r4, r25
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r2, zero, .LBB0_73
# %bb.71:                               # %vector.body352
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r24
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r2, zero, .LBB0_74
.LBB0_72:                               # %vector.body352
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r8
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r2, zero, .LBB0_56
	j .LBB0_75
.LBB0_73:                               # %vector.body352
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r12
	and r20, r2, r22
	setlt.u r2, r4, r24
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r2, zero, .LBB0_72
.LBB0_74:                               # %vector.body352
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r12
	and r18, r2, r22
	setlt.u r2, r4, r8
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r2, zero, .LBB0_56
.LBB0_75:                               # %vector.body352
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r16, 16
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r12
	and r17, r2, r22
	j .LBB0_56
.LBB0_76:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	addli r11, zero, 1
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	mfence { sm }
.LBB0_77:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 11
	zext_int2long r[6:7], r2
	.loc	1 195 7 is_stmt 1               # parallel-rne.mlir:195:7
	loadli.w r2,  -160(r30)                 # 4-byte Folded Reload
	store.d r[6:7], -112(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_102
# %bb.78:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 195 7                         # parallel-rne.mlir:195:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_80
.LBB0_79:                               # %middle.block347
                                        #   in Loop: Header=BB0_80 Depth=2
	.loc	1 202 9 is_stmt 1               # parallel-rne.mlir:202:9
	load.d r[8:9], -112(r30)                # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r2, zero, .LBB0_101
.LBB0_80:                               # %.preheader83
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_82 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[9:10], r[6:7], r14
	zext_int2long r[13:14], zero
	j .LBB0_82
.LBB0_81:                               # %vector.body343
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 203 11 is_stmt 1              # parallel-rne.mlir:203:11
	load.d r[24:25], -56(r30)               # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 4
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	add.s r8, r1, r15
	stores.w r17, 12(r8)
	stores.w r18, 8(r8)
	stores.w r20, 4(r8)
	stores.w r11, 0(r8)
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	setneq.d r2, r[13:14], r[24:25]
	beq r2, zero, .LBB0_79
.LBB0_82:                               # %vector.body343
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	add.ul r[15:16], r[13:14], r[9:10]
	loadli.w r2,  -68(r30)                  # 4-byte Folded Reload
	slli r15, r15, 2
	add.s r8, r2, r15
	loads.w r16, 12(r8)
	loads.w r2, 0(r8)
	loads.w r21, 4(r8)
	loads.w r19, 8(r8)
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	and r8, r16, r3
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	setlt.u r11, r23, r8
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r11, zero, .LBB0_84
# %bb.83:                               # %vector.body343
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_82 Depth=3
	or r17, r16, r5
.LBB0_85:                               # %vector.body343
                                        #   in Loop: Header=BB0_82 Depth=3
	and r24, r19, r3
	setlt.u r11, r23, r24
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r11, zero, .LBB0_87
# %bb.86:                               # %vector.body343
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_82 Depth=3
	or r18, r19, r5
.LBB0_88:                               # %vector.body343
                                        #   in Loop: Header=BB0_82 Depth=3
	and r25, r21, r3
	setlt.u r11, r23, r25
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r11, zero, .LBB0_90
# %bb.89:                               # %vector.body343
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_82 Depth=3
	or r20, r21, r5
.LBB0_91:                               # %vector.body343
                                        #   in Loop: Header=BB0_82 Depth=3
	and r26, r2, r3
	setlt.u r11, r23, r26
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r11, zero, .LBB0_93
# %bb.92:                               # %vector.body343
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r26, r4, r26
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r26, zero, .LBB0_94
	j .LBB0_95
.LBB0_93:                               #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r2, r5
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r26, r4, r26
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r26, zero, .LBB0_95
.LBB0_94:                               # %vector.body343
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r2, 16
	andi r11, r11, 1
	add.s r2, r2, r11
	add.s r2, r2, r12
	and r11, r2, r22
.LBB0_95:                               # %vector.body343
                                        #   in Loop: Header=BB0_82 Depth=3
	setlt.u r2, r4, r25
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r2, zero, .LBB0_98
# %bb.96:                               # %vector.body343
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r24
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r2, zero, .LBB0_99
.LBB0_97:                               # %vector.body343
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r8
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r2, zero, .LBB0_81
	j .LBB0_100
.LBB0_98:                               # %vector.body343
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r12
	and r20, r2, r22
	setlt.u r2, r4, r24
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r2, zero, .LBB0_97
.LBB0_99:                               # %vector.body343
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r12
	and r18, r2, r22
	setlt.u r2, r4, r8
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r2, zero, .LBB0_81
.LBB0_100:                              # %vector.body343
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r16, 16
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r12
	and r17, r2, r22
	j .LBB0_81
.LBB0_101:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	addli r11, zero, 1
	.loc	1 195 7                         # parallel-rne.mlir:195:7
	mfence { sm }
.LBB0_102:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 15
	zext_int2long r[6:7], r2
	.loc	1 223 7 is_stmt 1               # parallel-rne.mlir:223:7
	addli r2, zero, 3
	store.d r[6:7], -104(r30)               # 8-byte Folded Spill
	bneq r15, r2, .LBB0_127
# %bb.103:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 12
	.loc	1 223 7                         # parallel-rne.mlir:223:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_105
.LBB0_104:                              # %middle.block338
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 230 9 is_stmt 1               # parallel-rne.mlir:230:9
	load.d r[8:9], -104(r30)                # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r2, zero, .LBB0_126
.LBB0_105:                              # %.preheader82
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_107 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[9:10], r[6:7], r14
	zext_int2long r[13:14], zero
	j .LBB0_107
.LBB0_106:                              # %vector.body334
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 231 11 is_stmt 1              # parallel-rne.mlir:231:11
	load.d r[24:25], -56(r30)               # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 4
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	add.s r8, r1, r15
	stores.w r17, 12(r8)
	stores.w r18, 8(r8)
	stores.w r20, 4(r8)
	stores.w r11, 0(r8)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	setneq.d r2, r[13:14], r[24:25]
	beq r2, zero, .LBB0_104
.LBB0_107:                              # %vector.body334
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[15:16], r[13:14], r[9:10]
	loadli.w r2,  -68(r30)                  # 4-byte Folded Reload
	slli r15, r15, 2
	add.s r8, r2, r15
	loads.w r16, 12(r8)
	loads.w r2, 0(r8)
	loads.w r21, 4(r8)
	loads.w r19, 8(r8)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r8, r16, r3
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	setlt.u r11, r23, r8
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r11, zero, .LBB0_109
# %bb.108:                              # %vector.body334
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_107 Depth=3
	or r17, r16, r5
.LBB0_110:                              # %vector.body334
                                        #   in Loop: Header=BB0_107 Depth=3
	and r24, r19, r3
	setlt.u r11, r23, r24
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r11, zero, .LBB0_112
# %bb.111:                              # %vector.body334
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_107 Depth=3
	or r18, r19, r5
.LBB0_113:                              # %vector.body334
                                        #   in Loop: Header=BB0_107 Depth=3
	and r25, r21, r3
	setlt.u r11, r23, r25
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r11, zero, .LBB0_115
# %bb.114:                              # %vector.body334
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_107 Depth=3
	or r20, r21, r5
.LBB0_116:                              # %vector.body334
                                        #   in Loop: Header=BB0_107 Depth=3
	and r26, r2, r3
	setlt.u r11, r23, r26
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r11, zero, .LBB0_118
# %bb.117:                              # %vector.body334
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r26, r4, r26
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r26, zero, .LBB0_119
	j .LBB0_120
.LBB0_118:                              #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r2, r5
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r26, r4, r26
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r26, zero, .LBB0_120
.LBB0_119:                              # %vector.body334
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r2, 16
	andi r11, r11, 1
	add.s r2, r2, r11
	add.s r2, r2, r12
	and r11, r2, r22
.LBB0_120:                              # %vector.body334
                                        #   in Loop: Header=BB0_107 Depth=3
	setlt.u r2, r4, r25
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r2, zero, .LBB0_123
# %bb.121:                              # %vector.body334
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r24
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r2, zero, .LBB0_124
.LBB0_122:                              # %vector.body334
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r8
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r2, zero, .LBB0_106
	j .LBB0_125
.LBB0_123:                              # %vector.body334
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r12
	and r20, r2, r22
	setlt.u r2, r4, r24
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r2, zero, .LBB0_122
.LBB0_124:                              # %vector.body334
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r12
	and r18, r2, r22
	setlt.u r2, r4, r8
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r2, zero, .LBB0_106
.LBB0_125:                              # %vector.body334
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r16, 16
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r12
	and r17, r2, r22
	j .LBB0_106
.LBB0_126:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	addli r11, zero, 1
	.loc	1 223 7                         # parallel-rne.mlir:223:7
	mfence { sm }
.LBB0_127:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 19
	zext_int2long r[6:7], r2
	.loc	1 251 7 is_stmt 1               # parallel-rne.mlir:251:7
	loadli.w r2,  -156(r30)                 # 4-byte Folded Reload
	store.d r[6:7], -96(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_152
# %bb.128:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_130
.LBB0_129:                              # %middle.block329
                                        #   in Loop: Header=BB0_130 Depth=2
	.loc	1 258 9 is_stmt 1               # parallel-rne.mlir:258:9
	load.d r[8:9], -96(r30)                 # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r2, zero, .LBB0_151
.LBB0_130:                              # %.preheader81
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_132 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[9:10], r[6:7], r14
	zext_int2long r[13:14], zero
	j .LBB0_132
.LBB0_131:                              # %vector.body325
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 259 11 is_stmt 1              # parallel-rne.mlir:259:11
	load.d r[24:25], -56(r30)               # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 4
	.loc	1 274 13                        # parallel-rne.mlir:274:13
	add.s r8, r1, r15
	stores.w r17, 12(r8)
	stores.w r18, 8(r8)
	stores.w r20, 4(r8)
	stores.w r11, 0(r8)
	.loc	1 259 11                        # parallel-rne.mlir:259:11
	setneq.d r2, r[13:14], r[24:25]
	beq r2, zero, .LBB0_129
.LBB0_132:                              # %vector.body325
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	add.ul r[15:16], r[13:14], r[9:10]
	loadli.w r2,  -68(r30)                  # 4-byte Folded Reload
	slli r15, r15, 2
	add.s r8, r2, r15
	loads.w r16, 12(r8)
	loads.w r2, 0(r8)
	loads.w r21, 4(r8)
	loads.w r19, 8(r8)
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	and r8, r16, r3
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	setlt.u r11, r23, r8
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	bneq r11, zero, .LBB0_134
# %bb.133:                              # %vector.body325
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_135
.LBB0_134:                              #   in Loop: Header=BB0_132 Depth=3
	or r17, r16, r5
.LBB0_135:                              # %vector.body325
                                        #   in Loop: Header=BB0_132 Depth=3
	and r24, r19, r3
	setlt.u r11, r23, r24
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	bneq r11, zero, .LBB0_137
# %bb.136:                              # %vector.body325
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_138
.LBB0_137:                              #   in Loop: Header=BB0_132 Depth=3
	or r18, r19, r5
.LBB0_138:                              # %vector.body325
                                        #   in Loop: Header=BB0_132 Depth=3
	and r25, r21, r3
	setlt.u r11, r23, r25
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	bneq r11, zero, .LBB0_140
# %bb.139:                              # %vector.body325
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_132 Depth=3
	or r20, r21, r5
.LBB0_141:                              # %vector.body325
                                        #   in Loop: Header=BB0_132 Depth=3
	and r26, r2, r3
	setlt.u r11, r23, r26
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	bneq r11, zero, .LBB0_143
# %bb.142:                              # %vector.body325
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	.loc	1 271 19 is_stmt 1              # parallel-rne.mlir:271:19
	setlt.u r26, r4, r26
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	beq r26, zero, .LBB0_144
	j .LBB0_145
.LBB0_143:                              #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r2, r5
	.loc	1 271 19 is_stmt 1              # parallel-rne.mlir:271:19
	setlt.u r26, r4, r26
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r26, zero, .LBB0_145
.LBB0_144:                              # %vector.body325
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r2, 16
	andi r11, r11, 1
	add.s r2, r2, r11
	add.s r2, r2, r12
	and r11, r2, r22
.LBB0_145:                              # %vector.body325
                                        #   in Loop: Header=BB0_132 Depth=3
	setlt.u r2, r4, r25
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	beq r2, zero, .LBB0_148
# %bb.146:                              # %vector.body325
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r24
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	beq r2, zero, .LBB0_149
.LBB0_147:                              # %vector.body325
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r8
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r2, zero, .LBB0_131
	j .LBB0_150
.LBB0_148:                              # %vector.body325
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r12
	and r20, r2, r22
	setlt.u r2, r4, r24
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r2, zero, .LBB0_147
.LBB0_149:                              # %vector.body325
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r12
	and r18, r2, r22
	setlt.u r2, r4, r8
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r2, zero, .LBB0_131
.LBB0_150:                              # %vector.body325
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r16, 16
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r12
	and r17, r2, r22
	j .LBB0_131
.LBB0_151:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	addli r11, zero, 1
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	mfence { sm }
.LBB0_152:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 23
	zext_int2long r[6:7], r2
	.loc	1 279 7 is_stmt 1               # parallel-rne.mlir:279:7
	store.d r[6:7], -88(r30)                # 8-byte Folded Spill
	bneq r15, r14, .LBB0_177
# %bb.153:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 279 7                         # parallel-rne.mlir:279:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_155
.LBB0_154:                              # %middle.block320
                                        #   in Loop: Header=BB0_155 Depth=2
	.loc	1 286 9 is_stmt 1               # parallel-rne.mlir:286:9
	load.d r[8:9], -88(r30)                 # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r2, zero, .LBB0_176
.LBB0_155:                              # %.preheader80
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_157 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[9:10], r[6:7], r14
	zext_int2long r[13:14], zero
	j .LBB0_157
.LBB0_156:                              # %vector.body316
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 287 11 is_stmt 1              # parallel-rne.mlir:287:11
	load.d r[24:25], -56(r30)               # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 4
	.loc	1 302 13                        # parallel-rne.mlir:302:13
	add.s r8, r1, r15
	stores.w r17, 12(r8)
	stores.w r18, 8(r8)
	stores.w r20, 4(r8)
	stores.w r11, 0(r8)
	.loc	1 287 11                        # parallel-rne.mlir:287:11
	setneq.d r2, r[13:14], r[24:25]
	beq r2, zero, .LBB0_154
.LBB0_157:                              # %vector.body316
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_155 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	add.ul r[15:16], r[13:14], r[9:10]
	loadli.w r2,  -68(r30)                  # 4-byte Folded Reload
	slli r15, r15, 2
	add.s r8, r2, r15
	loads.w r16, 12(r8)
	loads.w r2, 0(r8)
	loads.w r21, 4(r8)
	loads.w r19, 8(r8)
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	and r8, r16, r3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	setlt.u r11, r23, r8
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	bneq r11, zero, .LBB0_159
# %bb.158:                              # %vector.body316
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_160
.LBB0_159:                              #   in Loop: Header=BB0_157 Depth=3
	or r17, r16, r5
.LBB0_160:                              # %vector.body316
                                        #   in Loop: Header=BB0_157 Depth=3
	and r24, r19, r3
	setlt.u r11, r23, r24
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	bneq r11, zero, .LBB0_162
# %bb.161:                              # %vector.body316
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_163
.LBB0_162:                              #   in Loop: Header=BB0_157 Depth=3
	or r18, r19, r5
.LBB0_163:                              # %vector.body316
                                        #   in Loop: Header=BB0_157 Depth=3
	and r25, r21, r3
	setlt.u r11, r23, r25
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	bneq r11, zero, .LBB0_165
# %bb.164:                              # %vector.body316
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_166
.LBB0_165:                              #   in Loop: Header=BB0_157 Depth=3
	or r20, r21, r5
.LBB0_166:                              # %vector.body316
                                        #   in Loop: Header=BB0_157 Depth=3
	and r26, r2, r3
	setlt.u r11, r23, r26
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	bneq r11, zero, .LBB0_168
# %bb.167:                              # %vector.body316
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	.loc	1 299 19 is_stmt 1              # parallel-rne.mlir:299:19
	setlt.u r26, r4, r26
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	beq r26, zero, .LBB0_169
	j .LBB0_170
.LBB0_168:                              #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r2, r5
	.loc	1 299 19 is_stmt 1              # parallel-rne.mlir:299:19
	setlt.u r26, r4, r26
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r26, zero, .LBB0_170
.LBB0_169:                              # %vector.body316
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r2, 16
	andi r11, r11, 1
	add.s r2, r2, r11
	add.s r2, r2, r12
	and r11, r2, r22
.LBB0_170:                              # %vector.body316
                                        #   in Loop: Header=BB0_157 Depth=3
	setlt.u r2, r4, r25
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	beq r2, zero, .LBB0_173
# %bb.171:                              # %vector.body316
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r24
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	beq r2, zero, .LBB0_174
.LBB0_172:                              # %vector.body316
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r8
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r2, zero, .LBB0_156
	j .LBB0_175
.LBB0_173:                              # %vector.body316
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r12
	and r20, r2, r22
	setlt.u r2, r4, r24
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r2, zero, .LBB0_172
.LBB0_174:                              # %vector.body316
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r12
	and r18, r2, r22
	setlt.u r2, r4, r8
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r2, zero, .LBB0_156
.LBB0_175:                              # %vector.body316
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r16, 16
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r12
	and r17, r2, r22
	j .LBB0_156
.LBB0_176:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	addli r11, zero, 1
	.loc	1 279 7                         # parallel-rne.mlir:279:7
	mfence { sm }
.LBB0_177:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 27
	zext_int2long r[6:7], r2
	.loc	1 307 7 is_stmt 1               # parallel-rne.mlir:307:7
	addli r2, zero, 6
	store.d r[6:7], -80(r30)                # 8-byte Folded Spill
	bneq r15, r2, .LBB0_202
# %bb.178:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 307 7                         # parallel-rne.mlir:307:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_180
.LBB0_179:                              # %middle.block311
                                        #   in Loop: Header=BB0_180 Depth=2
	.loc	1 314 9 is_stmt 1               # parallel-rne.mlir:314:9
	load.d r[8:9], -80(r30)                 # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r2, zero, .LBB0_201
.LBB0_180:                              # %.preheader79
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_182 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[9:10], r[6:7], r14
	zext_int2long r[13:14], zero
	j .LBB0_182
.LBB0_181:                              # %vector.body307
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 315 11 is_stmt 1              # parallel-rne.mlir:315:11
	load.d r[24:25], -56(r30)               # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 4
	.loc	1 330 13                        # parallel-rne.mlir:330:13
	add.s r8, r1, r15
	stores.w r17, 12(r8)
	stores.w r18, 8(r8)
	stores.w r20, 4(r8)
	stores.w r11, 0(r8)
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	setneq.d r2, r[13:14], r[24:25]
	beq r2, zero, .LBB0_179
.LBB0_182:                              # %vector.body307
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_180 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	add.ul r[15:16], r[13:14], r[9:10]
	loadli.w r2,  -68(r30)                  # 4-byte Folded Reload
	slli r15, r15, 2
	add.s r8, r2, r15
	loads.w r16, 12(r8)
	loads.w r2, 0(r8)
	loads.w r21, 4(r8)
	loads.w r19, 8(r8)
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	and r8, r16, r3
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	setlt.u r11, r23, r8
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r11, zero, .LBB0_184
# %bb.183:                              # %vector.body307
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_185
.LBB0_184:                              #   in Loop: Header=BB0_182 Depth=3
	or r17, r16, r5
.LBB0_185:                              # %vector.body307
                                        #   in Loop: Header=BB0_182 Depth=3
	and r24, r19, r3
	setlt.u r11, r23, r24
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r11, zero, .LBB0_187
# %bb.186:                              # %vector.body307
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_188
.LBB0_187:                              #   in Loop: Header=BB0_182 Depth=3
	or r18, r19, r5
.LBB0_188:                              # %vector.body307
                                        #   in Loop: Header=BB0_182 Depth=3
	and r25, r21, r3
	setlt.u r11, r23, r25
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r11, zero, .LBB0_190
# %bb.189:                              # %vector.body307
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_191
.LBB0_190:                              #   in Loop: Header=BB0_182 Depth=3
	or r20, r21, r5
.LBB0_191:                              # %vector.body307
                                        #   in Loop: Header=BB0_182 Depth=3
	and r26, r2, r3
	setlt.u r11, r23, r26
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r11, zero, .LBB0_193
# %bb.192:                              # %vector.body307
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	.loc	1 327 19 is_stmt 1              # parallel-rne.mlir:327:19
	setlt.u r26, r4, r26
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	beq r26, zero, .LBB0_194
	j .LBB0_195
.LBB0_193:                              #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r2, r5
	.loc	1 327 19 is_stmt 1              # parallel-rne.mlir:327:19
	setlt.u r26, r4, r26
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r26, zero, .LBB0_195
.LBB0_194:                              # %vector.body307
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r2, 16
	andi r11, r11, 1
	add.s r2, r2, r11
	add.s r2, r2, r12
	and r11, r2, r22
.LBB0_195:                              # %vector.body307
                                        #   in Loop: Header=BB0_182 Depth=3
	setlt.u r2, r4, r25
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	beq r2, zero, .LBB0_198
# %bb.196:                              # %vector.body307
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r24
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	beq r2, zero, .LBB0_199
.LBB0_197:                              # %vector.body307
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r8
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r2, zero, .LBB0_181
	j .LBB0_200
.LBB0_198:                              # %vector.body307
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r12
	and r20, r2, r22
	setlt.u r2, r4, r24
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r2, zero, .LBB0_197
.LBB0_199:                              # %vector.body307
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r12
	and r18, r2, r22
	setlt.u r2, r4, r8
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r2, zero, .LBB0_181
.LBB0_200:                              # %vector.body307
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r16, 16
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r12
	and r17, r2, r22
	j .LBB0_181
.LBB0_201:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	addli r11, zero, 1
	.loc	1 307 7                         # parallel-rne.mlir:307:7
	mfence { sm }
.LBB0_202:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 31
	zext_int2long r[6:7], r2
	.loc	1 335 7 is_stmt 1               # parallel-rne.mlir:335:7
	loadli.w r2,  -152(r30)                 # 4-byte Folded Reload
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_227
# %bb.203:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 335 7                         # parallel-rne.mlir:335:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_205
.LBB0_204:                              # %middle.block302
                                        #   in Loop: Header=BB0_205 Depth=2
	.loc	1 342 9 is_stmt 1               # parallel-rne.mlir:342:9
	load.d r[8:9], -64(r30)                 # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r2, zero, .LBB0_226
.LBB0_205:                              # %.preheader78
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_207 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[9:10], r[6:7], r14
	zext_int2long r[13:14], zero
	j .LBB0_207
.LBB0_206:                              # %vector.body298
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 343 11 is_stmt 1              # parallel-rne.mlir:343:11
	load.d r[19:20], -56(r30)               # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 4
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	add.s r8, r1, r15
	stores.w r17, 12(r8)
	stores.w r18, 8(r8)
	stores.w r24, 4(r8)
	stores.w r11, 0(r8)
	.loc	1 343 11                        # parallel-rne.mlir:343:11
	setneq.d r2, r[13:14], r[19:20]
	beq r2, zero, .LBB0_204
.LBB0_207:                              # %vector.body298
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_205 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	add.ul r[15:16], r[13:14], r[9:10]
	loadli.w r2,  -68(r30)                  # 4-byte Folded Reload
	slli r15, r15, 2
	add.s r8, r2, r15
	loads.w r16, 12(r8)
	loads.w r2, 0(r8)
	loads.w r25, 4(r8)
	loads.w r21, 8(r8)
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	and r8, r16, r3
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	setlt.u r11, r23, r8
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r11, zero, .LBB0_209
# %bb.208:                              # %vector.body298
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_210
.LBB0_209:                              #   in Loop: Header=BB0_207 Depth=3
	or r17, r16, r5
.LBB0_210:                              # %vector.body298
                                        #   in Loop: Header=BB0_207 Depth=3
	and r26, r21, r3
	setlt.u r11, r23, r26
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r11, zero, .LBB0_212
# %bb.211:                              # %vector.body298
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r21, 0
	j .LBB0_213
.LBB0_212:                              #   in Loop: Header=BB0_207 Depth=3
	or r18, r21, r5
.LBB0_213:                              # %vector.body298
                                        #   in Loop: Header=BB0_207 Depth=3
	and r19, r25, r3
	setlt.u r11, r23, r19
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r11, zero, .LBB0_215
# %bb.214:                              # %vector.body298
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r25, 0
	j .LBB0_216
.LBB0_215:                              #   in Loop: Header=BB0_207 Depth=3
	or r24, r25, r5
.LBB0_216:                              # %vector.body298
                                        #   in Loop: Header=BB0_207 Depth=3
	and r20, r2, r3
	setlt.u r11, r23, r20
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r11, zero, .LBB0_218
# %bb.217:                              # %vector.body298
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	.loc	1 355 19 is_stmt 1              # parallel-rne.mlir:355:19
	setlt.u r20, r4, r20
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	beq r20, zero, .LBB0_219
	j .LBB0_220
.LBB0_218:                              #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r2, r5
	.loc	1 355 19 is_stmt 1              # parallel-rne.mlir:355:19
	setlt.u r20, r4, r20
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r20, zero, .LBB0_220
.LBB0_219:                              # %vector.body298
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r2, 16
	andi r11, r11, 1
	add.s r2, r2, r11
	add.s r2, r2, r12
	and r11, r2, r22
.LBB0_220:                              # %vector.body298
                                        #   in Loop: Header=BB0_207 Depth=3
	setlt.u r2, r4, r19
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	beq r2, zero, .LBB0_223
# %bb.221:                              # %vector.body298
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r26
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	beq r2, zero, .LBB0_224
.LBB0_222:                              # %vector.body298
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r8
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r2, zero, .LBB0_206
	j .LBB0_225
.LBB0_223:                              # %vector.body298
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r25, 16
	andi r2, r2, 1
	add.s r2, r25, r2
	add.s r2, r2, r12
	and r24, r2, r22
	setlt.u r2, r4, r26
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r2, zero, .LBB0_222
.LBB0_224:                              # %vector.body298
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r12
	and r18, r2, r22
	setlt.u r2, r4, r8
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r2, zero, .LBB0_206
.LBB0_225:                              # %vector.body298
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r16, 16
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r12
	and r17, r2, r22
	j .LBB0_206
.LBB0_226:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	addli r11, zero, 1
	.loc	1 335 7                         # parallel-rne.mlir:335:7
	mfence { sm }
.LBB0_227:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -136(r30)                 # 4-byte Folded Reload
	addli r6, zero, 224
	zext_int2long r[6:7], r6
	slli r2, r2, 5
	zext_int2long r[8:9], r2
	.loc	1 363 7 is_stmt 1               # parallel-rne.mlir:363:7
	addli r2, zero, 255
	min.ul r[6:7], r[8:9], r[6:7]
	addli.d r[6:7], r[6:7], 32
	max.ul r[6:7], r[6:7], r[8:9]
	sub.sl r[6:7], r[6:7], r[8:9]
	load.d r[8:9], -56(r30)                 # 8-byte Folded Reload
	min.ul r[6:7], r[6:7], r[8:9]
	store.d r[6:7], -192(r30)               # 8-byte Folded Spill
	csr_set csr5, r2
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	addli r2, zero, 3
	.loc	1 363 7                         # parallel-rne.mlir:363:7
	sync_core
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	bneq r15, r2, .LBB0_229
# %bb.228:                              # %.thread51.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 365 7                         # parallel-rne.mlir:365:7
	addli r2, zero, 12
	xsignal r2, 0
	.loc	1 372 7                         # parallel-rne.mlir:372:7
	addli r2, zero, 13
	xwait r2, 0
	.loc	1 373 7                         # parallel-rne.mlir:373:7
	addli r2, zero, 22
	xwait r2, 0
	j .LBB0_237
.LBB0_229:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -140(r30)                 # 4-byte Folded Reload
	slli r6, r2, 7
	lui r2, 25
	add.s r2, r6, r2
	.loc	1 367 7 is_stmt 1               # parallel-rne.mlir:367:7
	bneq r15, r11, .LBB0_233
# %bb.230:                              #   in Loop: Header=BB0_7 Depth=1
	load.d r[7:8], 16(r30)
	load.d r[9:10], -184(r30)               # 8-byte Folded Reload
	addli r16, zero, 18
	addli r13, zero, 4
	xwait r16, 0
	add.ul r[7:8], r[7:8], r[9:10]
	loadli.w r9,  -164(r30)                 # 4-byte Folded Reload
	blt.s r13, r9, .LBB0_232
# %bb.231:                              #   in Loop: Header=BB0_7 Depth=1
	lock zero, r14
	addli r9, zero, 2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 3
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 6
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 7
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 8
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
	dma_cfg zero, zero, r16, 10
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
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r9, 3
	addli r9, zero, 128
	dma_cfg r9, zero, r11, 4
	dma_cfg r9, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
.LBB0_232:                              # %.thread51.thread62
                                        #   in Loop: Header=BB0_7 Depth=1
	lock zero, r13
	lui r9, 25
	addli r10, zero, 64
	dma_cfg r11, r11, zero, 0
	dma_cfg zero, r8, zero, 2
	ori r9, r9, 64
	load.d r[17:18], -192(r30)              # 8-byte Folded Reload
	add.s r6, r6, r9
	addli r9, r17, 31
	dma_cfg r6, r7, r10, 3
	slli r7, r17, 1
	addli r17, zero, 128
	addli r8, zero, 2
	srli r6, r9, 5
	andi r7, r7, 62
	addli r9, zero, 19
	dma_cfg r17, r10, r6, 4
	dma_cfg r17, r10, r11, 5
	dma_cfg zero, zero, r7, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	lock zero, r14
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 3
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 6
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 7
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
	dma_cfg zero, zero, r16, 10
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
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r10, 3
	dma_cfg r17, zero, r6, 4
	dma_cfg r17, zero, r11, 5
	dma_cfg zero, zero, r7, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	xsignal r8, 0
	.loc	1 372 7                         # parallel-rne.mlir:372:7
	j .LBB0_237
.LBB0_233:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	bneq r15, r14, .LBB0_237
# %bb.234:                              #   in Loop: Header=BB0_7 Depth=1
	addli r7, zero, 12
	addli r6, zero, 0
	addli r8, zero, 4096
	xwait r7, 0
	addli r7, zero, 17
	xwait r7, 0
	addli r7, zero, 2
	lock zero, r7
	lui r7, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r7, r7, zero, 0
	addli r7, zero, 31
	ew_cfg zero, r7, zero, 2
	ew_cfg r11, zero, zero, 3
.LBB0_235:                              #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r7, r1, r6
	addli r6, r6, 128
	dsmadd r7, r7, r2, 0
	bneq r6, r8, .LBB0_235
# %bb.236:                              # %.thread51
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 2
	unlock r2
	addli r2, zero, 13
	xsignal r2, 0
	addli r2, zero, 18
	xsignal r2, 0
.LBB0_237:                              # %.critedge6
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	loadli.w r2,  -220(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -68(r30)                  # 4-byte Folded Reload
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	xfence
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	mfence { lm, sm, gm }
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	add.s r11, r6, r2
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	beq r15, zero, .LBB0_245
# %bb.238:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 406 7                         # parallel-rne.mlir:406:7
	addli r2, zero, 1
	beq r15, r2, .LBB0_274
.LBB0_239:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 434 7                         # parallel-rne.mlir:434:7
	loadli.w r2,  -160(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_303
.LBB0_240:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 462 7                         # parallel-rne.mlir:462:7
	addli r2, zero, 3
	beq r15, r2, .LBB0_332
.LBB0_241:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 490 7                         # parallel-rne.mlir:490:7
	loadli.w r2,  -156(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_361
.LBB0_242:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 518 7                         # parallel-rne.mlir:518:7
	beq r15, r14, .LBB0_390
.LBB0_243:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 546 7                         # parallel-rne.mlir:546:7
	addli r2, zero, 6
	beq r15, r2, .LBB0_419
.LBB0_244:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 574 7                         # parallel-rne.mlir:574:7
	loadli.w r2,  -152(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_448
	j .LBB0_477
.LBB0_245:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	xfence
	zext_int2long r[27:28], zero
	mfence { lm, sm, gm }
	j .LBB0_247
.LBB0_246:                              # %middle.block293
                                        #   in Loop: Header=BB0_247 Depth=2
	.loc	1 385 9                         # parallel-rne.mlir:385:9
	load.d r[6:7], -128(r30)                # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[27:28], r[6:7]
	addli.d r[6:7], r[27:28], 1
	addli.d r[27:28], r[6:7], 0
	beq r2, zero, .LBB0_273
.LBB0_247:                              # %.preheader77
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_254 Depth 3
                                        #       Child Loop BB0_249 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[9:10], r[27:28], r14
	zext_int2long r[13:14], zero
	.loc	1 386 11 is_stmt 1              # parallel-rne.mlir:386:11
	beq r11, r1, .LBB0_249
	j .LBB0_254
.LBB0_248:                              # %scalar.ph287
                                        #   in Loop: Header=BB0_249 Depth=3
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	.loc	1 401 13                        # parallel-rne.mlir:401:13
	add.s r2, r11, r2
	stores.w r8, 0(r2)
	.loc	1 386 11                        # parallel-rne.mlir:386:11
	setlt.ul r6, r[13:14], r[6:7]
	addli.d r[13:14], r[13:14], 1
	beq r6, zero, .LBB0_246
.LBB0_249:                              # %scalar.ph287
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_247 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	add.ul r[6:7], r[13:14], r[9:10]
	slli r2, r6, 2
	add.s r6, r1, r2
	loads.w r15, 0(r6)
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	and r6, r15, r3
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	setlt.u r7, r23, r6
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	bneq r7, zero, .LBB0_251
# %bb.250:                              # %scalar.ph287
                                        #   in Loop: Header=BB0_249 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r15, 0
	.loc	1 398 19 is_stmt 1              # parallel-rne.mlir:398:19
	setlt.u r6, r4, r6
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r6, zero, .LBB0_248
	j .LBB0_252
.LBB0_251:                              #   in Loop: Header=BB0_249 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r15, r5
	.loc	1 398 19 is_stmt 1              # parallel-rne.mlir:398:19
	setlt.u r6, r4, r6
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r6, zero, .LBB0_248
.LBB0_252:                              # %scalar.ph287
                                        #   in Loop: Header=BB0_249 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r15, 16
	andi r6, r6, 1
	add.s r6, r15, r6
	add.s r6, r6, r12
	and r8, r6, r22
	j .LBB0_248
.LBB0_253:                              # %vector.body289
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 386 11 is_stmt 1              # parallel-rne.mlir:386:11
	load.d r[6:7], -56(r30)                 # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 4
	.loc	1 401 13                        # parallel-rne.mlir:401:13
	add.s r2, r11, r2
	stores.w r15, 12(r2)
	stores.w r17, 8(r2)
	stores.w r18, 4(r2)
	stores.w r24, 0(r2)
	.loc	1 386 11                        # parallel-rne.mlir:386:11
	seteq.d r6, r[13:14], r[6:7]
	bneq r6, zero, .LBB0_246
.LBB0_254:                              # %vector.body289
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_247 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	add.ul r[6:7], r[13:14], r[9:10]
	slli r2, r6, 2
	add.s r20, r1, r2
	loads.w r16, 12(r20)
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	and r8, r16, r3
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	setlt.u r6, r23, r8
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	bneq r6, zero, .LBB0_256
# %bb.255:                              # %vector.body289
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
	j .LBB0_257
.LBB0_256:                              #   in Loop: Header=BB0_254 Depth=3
	or r15, r16, r5
.LBB0_257:                              # %vector.body289
                                        #   in Loop: Header=BB0_254 Depth=3
	loads.w r21, 8(r20)
	and r25, r21, r3
	setlt.u r6, r23, r25
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	bneq r6, zero, .LBB0_259
# %bb.258:                              # %vector.body289
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r21, 0
	j .LBB0_260
.LBB0_259:                              #   in Loop: Header=BB0_254 Depth=3
	or r17, r21, r5
.LBB0_260:                              # %vector.body289
                                        #   in Loop: Header=BB0_254 Depth=3
	loads.w r19, 4(r20)
	and r26, r19, r3
	setlt.u r6, r23, r26
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	bneq r6, zero, .LBB0_262
# %bb.261:                              # %vector.body289
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_263
.LBB0_262:                              #   in Loop: Header=BB0_254 Depth=3
	or r18, r19, r5
.LBB0_263:                              # %vector.body289
                                        #   in Loop: Header=BB0_254 Depth=3
	loads.w r20, 0(r20)
	and r6, r20, r3
	setlt.u r7, r23, r6
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	bneq r7, zero, .LBB0_265
# %bb.264:                              # %vector.body289
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r20, 0
	.loc	1 398 19 is_stmt 1              # parallel-rne.mlir:398:19
	setlt.u r6, r4, r6
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	beq r6, zero, .LBB0_266
	j .LBB0_267
.LBB0_265:                              #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r20, r5
	.loc	1 398 19 is_stmt 1              # parallel-rne.mlir:398:19
	setlt.u r6, r4, r6
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r6, zero, .LBB0_267
.LBB0_266:                              # %vector.body289
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r20, 16
	andi r6, r6, 1
	add.s r6, r20, r6
	add.s r6, r6, r12
	and r24, r6, r22
.LBB0_267:                              # %vector.body289
                                        #   in Loop: Header=BB0_254 Depth=3
	setlt.u r6, r4, r26
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	beq r6, zero, .LBB0_270
# %bb.268:                              # %vector.body289
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r4, r25
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	beq r6, zero, .LBB0_271
.LBB0_269:                              # %vector.body289
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r4, r8
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r6, zero, .LBB0_253
	j .LBB0_272
.LBB0_270:                              # %vector.body289
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r12
	and r18, r6, r22
	setlt.u r6, r4, r25
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r6, zero, .LBB0_269
.LBB0_271:                              # %vector.body289
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r12
	and r17, r6, r22
	setlt.u r6, r4, r8
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r6, zero, .LBB0_253
.LBB0_272:                              # %vector.body289
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r16, 16
	andi r6, r6, 1
	add.s r6, r16, r6
	add.s r6, r6, r12
	and r15, r6, r22
	j .LBB0_253
.LBB0_273:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	mfence { sm }
	.loc	1 406 7                         # parallel-rne.mlir:406:7
	addli r2, zero, 1
	bneq r15, r2, .LBB0_239
.LBB0_274:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 4
	.loc	1 406 7                         # parallel-rne.mlir:406:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[27:28], r2
	j .LBB0_276
.LBB0_275:                              # %middle.block284
                                        #   in Loop: Header=BB0_276 Depth=2
	.loc	1 413 9 is_stmt 1               # parallel-rne.mlir:413:9
	load.d r[6:7], -120(r30)                # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[27:28], r[6:7]
	addli.d r[6:7], r[27:28], 1
	addli.d r[27:28], r[6:7], 0
	beq r2, zero, .LBB0_302
.LBB0_276:                              # %.preheader76
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_283 Depth 3
                                        #       Child Loop BB0_278 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[9:10], r[27:28], r14
	zext_int2long r[13:14], zero
	.loc	1 414 11 is_stmt 1              # parallel-rne.mlir:414:11
	beq r11, r1, .LBB0_278
	j .LBB0_283
.LBB0_277:                              # %scalar.ph278
                                        #   in Loop: Header=BB0_278 Depth=3
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	.loc	1 429 13                        # parallel-rne.mlir:429:13
	add.s r2, r11, r2
	stores.w r8, 0(r2)
	.loc	1 414 11                        # parallel-rne.mlir:414:11
	setlt.ul r6, r[13:14], r[6:7]
	addli.d r[13:14], r[13:14], 1
	beq r6, zero, .LBB0_275
.LBB0_278:                              # %scalar.ph278
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_276 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	add.ul r[6:7], r[13:14], r[9:10]
	slli r2, r6, 2
	add.s r6, r1, r2
	loads.w r15, 0(r6)
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	and r6, r15, r3
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	setlt.u r7, r23, r6
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	bneq r7, zero, .LBB0_280
# %bb.279:                              # %scalar.ph278
                                        #   in Loop: Header=BB0_278 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r15, 0
	.loc	1 426 19 is_stmt 1              # parallel-rne.mlir:426:19
	setlt.u r6, r4, r6
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r6, zero, .LBB0_277
	j .LBB0_281
.LBB0_280:                              #   in Loop: Header=BB0_278 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r15, r5
	.loc	1 426 19 is_stmt 1              # parallel-rne.mlir:426:19
	setlt.u r6, r4, r6
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r6, zero, .LBB0_277
.LBB0_281:                              # %scalar.ph278
                                        #   in Loop: Header=BB0_278 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r15, 16
	andi r6, r6, 1
	add.s r6, r15, r6
	add.s r6, r6, r12
	and r8, r6, r22
	j .LBB0_277
.LBB0_282:                              # %vector.body280
                                        #   in Loop: Header=BB0_283 Depth=3
	.loc	1 414 11 is_stmt 1              # parallel-rne.mlir:414:11
	load.d r[6:7], -56(r30)                 # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 4
	.loc	1 429 13                        # parallel-rne.mlir:429:13
	add.s r2, r11, r2
	stores.w r15, 12(r2)
	stores.w r17, 8(r2)
	stores.w r18, 4(r2)
	stores.w r24, 0(r2)
	.loc	1 414 11                        # parallel-rne.mlir:414:11
	seteq.d r6, r[13:14], r[6:7]
	bneq r6, zero, .LBB0_275
.LBB0_283:                              # %vector.body280
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_276 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	add.ul r[6:7], r[13:14], r[9:10]
	slli r2, r6, 2
	add.s r20, r1, r2
	loads.w r16, 12(r20)
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	and r8, r16, r3
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	setlt.u r6, r23, r8
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	bneq r6, zero, .LBB0_285
# %bb.284:                              # %vector.body280
                                        #   in Loop: Header=BB0_283 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
	j .LBB0_286
.LBB0_285:                              #   in Loop: Header=BB0_283 Depth=3
	or r15, r16, r5
.LBB0_286:                              # %vector.body280
                                        #   in Loop: Header=BB0_283 Depth=3
	loads.w r21, 8(r20)
	and r25, r21, r3
	setlt.u r6, r23, r25
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	bneq r6, zero, .LBB0_288
# %bb.287:                              # %vector.body280
                                        #   in Loop: Header=BB0_283 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r21, 0
	j .LBB0_289
.LBB0_288:                              #   in Loop: Header=BB0_283 Depth=3
	or r17, r21, r5
.LBB0_289:                              # %vector.body280
                                        #   in Loop: Header=BB0_283 Depth=3
	loads.w r19, 4(r20)
	and r26, r19, r3
	setlt.u r6, r23, r26
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	bneq r6, zero, .LBB0_291
# %bb.290:                              # %vector.body280
                                        #   in Loop: Header=BB0_283 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_292
.LBB0_291:                              #   in Loop: Header=BB0_283 Depth=3
	or r18, r19, r5
.LBB0_292:                              # %vector.body280
                                        #   in Loop: Header=BB0_283 Depth=3
	loads.w r20, 0(r20)
	and r6, r20, r3
	setlt.u r7, r23, r6
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	bneq r7, zero, .LBB0_294
# %bb.293:                              # %vector.body280
                                        #   in Loop: Header=BB0_283 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r20, 0
	.loc	1 426 19 is_stmt 1              # parallel-rne.mlir:426:19
	setlt.u r6, r4, r6
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	beq r6, zero, .LBB0_295
	j .LBB0_296
.LBB0_294:                              #   in Loop: Header=BB0_283 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r20, r5
	.loc	1 426 19 is_stmt 1              # parallel-rne.mlir:426:19
	setlt.u r6, r4, r6
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r6, zero, .LBB0_296
.LBB0_295:                              # %vector.body280
                                        #   in Loop: Header=BB0_283 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r20, 16
	andi r6, r6, 1
	add.s r6, r20, r6
	add.s r6, r6, r12
	and r24, r6, r22
.LBB0_296:                              # %vector.body280
                                        #   in Loop: Header=BB0_283 Depth=3
	setlt.u r6, r4, r26
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	beq r6, zero, .LBB0_299
# %bb.297:                              # %vector.body280
                                        #   in Loop: Header=BB0_283 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r4, r25
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	beq r6, zero, .LBB0_300
.LBB0_298:                              # %vector.body280
                                        #   in Loop: Header=BB0_283 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r4, r8
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r6, zero, .LBB0_282
	j .LBB0_301
.LBB0_299:                              # %vector.body280
                                        #   in Loop: Header=BB0_283 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r12
	and r18, r6, r22
	setlt.u r6, r4, r25
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r6, zero, .LBB0_298
.LBB0_300:                              # %vector.body280
                                        #   in Loop: Header=BB0_283 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r12
	and r17, r6, r22
	setlt.u r6, r4, r8
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r6, zero, .LBB0_282
.LBB0_301:                              # %vector.body280
                                        #   in Loop: Header=BB0_283 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r16, 16
	andi r6, r6, 1
	add.s r6, r16, r6
	add.s r6, r6, r12
	and r15, r6, r22
	j .LBB0_282
.LBB0_302:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	.loc	1 406 7                         # parallel-rne.mlir:406:7
	mfence { sm }
	.loc	1 434 7                         # parallel-rne.mlir:434:7
	loadli.w r2,  -160(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_240
.LBB0_303:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 434 7                         # parallel-rne.mlir:434:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[27:28], r2
	j .LBB0_305
.LBB0_304:                              # %middle.block275
                                        #   in Loop: Header=BB0_305 Depth=2
	.loc	1 441 9 is_stmt 1               # parallel-rne.mlir:441:9
	load.d r[6:7], -112(r30)                # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[27:28], r[6:7]
	addli.d r[6:7], r[27:28], 1
	addli.d r[27:28], r[6:7], 0
	beq r2, zero, .LBB0_331
.LBB0_305:                              # %.preheader75
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_312 Depth 3
                                        #       Child Loop BB0_307 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[9:10], r[27:28], r14
	zext_int2long r[13:14], zero
	.loc	1 442 11 is_stmt 1              # parallel-rne.mlir:442:11
	beq r11, r1, .LBB0_307
	j .LBB0_312
.LBB0_306:                              # %scalar.ph269
                                        #   in Loop: Header=BB0_307 Depth=3
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	.loc	1 457 13                        # parallel-rne.mlir:457:13
	add.s r2, r11, r2
	stores.w r8, 0(r2)
	.loc	1 442 11                        # parallel-rne.mlir:442:11
	setlt.ul r6, r[13:14], r[6:7]
	addli.d r[13:14], r[13:14], 1
	beq r6, zero, .LBB0_304
.LBB0_307:                              # %scalar.ph269
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_305 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	add.ul r[6:7], r[13:14], r[9:10]
	slli r2, r6, 2
	add.s r6, r1, r2
	loads.w r15, 0(r6)
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	and r6, r15, r3
	.loc	1 447 19                        # parallel-rne.mlir:447:19
	setlt.u r7, r23, r6
	.loc	1 448 19                        # parallel-rne.mlir:448:19
	bneq r7, zero, .LBB0_309
# %bb.308:                              # %scalar.ph269
                                        #   in Loop: Header=BB0_307 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r15, 0
	.loc	1 454 19 is_stmt 1              # parallel-rne.mlir:454:19
	setlt.u r6, r4, r6
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	bneq r6, zero, .LBB0_306
	j .LBB0_310
.LBB0_309:                              #   in Loop: Header=BB0_307 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r15, r5
	.loc	1 454 19 is_stmt 1              # parallel-rne.mlir:454:19
	setlt.u r6, r4, r6
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	bneq r6, zero, .LBB0_306
.LBB0_310:                              # %scalar.ph269
                                        #   in Loop: Header=BB0_307 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r15, 16
	andi r6, r6, 1
	add.s r6, r15, r6
	add.s r6, r6, r12
	and r8, r6, r22
	j .LBB0_306
.LBB0_311:                              # %vector.body271
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 442 11 is_stmt 1              # parallel-rne.mlir:442:11
	load.d r[6:7], -56(r30)                 # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 4
	.loc	1 457 13                        # parallel-rne.mlir:457:13
	add.s r2, r11, r2
	stores.w r15, 12(r2)
	stores.w r17, 8(r2)
	stores.w r18, 4(r2)
	stores.w r24, 0(r2)
	.loc	1 442 11                        # parallel-rne.mlir:442:11
	seteq.d r6, r[13:14], r[6:7]
	bneq r6, zero, .LBB0_304
.LBB0_312:                              # %vector.body271
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_305 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	add.ul r[6:7], r[13:14], r[9:10]
	slli r2, r6, 2
	add.s r20, r1, r2
	loads.w r16, 12(r20)
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	and r8, r16, r3
	.loc	1 447 19                        # parallel-rne.mlir:447:19
	setlt.u r6, r23, r8
	.loc	1 448 19                        # parallel-rne.mlir:448:19
	bneq r6, zero, .LBB0_314
# %bb.313:                              # %vector.body271
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
	j .LBB0_315
.LBB0_314:                              #   in Loop: Header=BB0_312 Depth=3
	or r15, r16, r5
.LBB0_315:                              # %vector.body271
                                        #   in Loop: Header=BB0_312 Depth=3
	loads.w r21, 8(r20)
	and r25, r21, r3
	setlt.u r6, r23, r25
	.loc	1 448 19                        # parallel-rne.mlir:448:19
	bneq r6, zero, .LBB0_317
# %bb.316:                              # %vector.body271
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r21, 0
	j .LBB0_318
.LBB0_317:                              #   in Loop: Header=BB0_312 Depth=3
	or r17, r21, r5
.LBB0_318:                              # %vector.body271
                                        #   in Loop: Header=BB0_312 Depth=3
	loads.w r19, 4(r20)
	and r26, r19, r3
	setlt.u r6, r23, r26
	.loc	1 448 19                        # parallel-rne.mlir:448:19
	bneq r6, zero, .LBB0_320
# %bb.319:                              # %vector.body271
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_321
.LBB0_320:                              #   in Loop: Header=BB0_312 Depth=3
	or r18, r19, r5
.LBB0_321:                              # %vector.body271
                                        #   in Loop: Header=BB0_312 Depth=3
	loads.w r20, 0(r20)
	and r6, r20, r3
	setlt.u r7, r23, r6
	.loc	1 448 19                        # parallel-rne.mlir:448:19
	bneq r7, zero, .LBB0_323
# %bb.322:                              # %vector.body271
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r20, 0
	.loc	1 454 19 is_stmt 1              # parallel-rne.mlir:454:19
	setlt.u r6, r4, r6
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	beq r6, zero, .LBB0_324
	j .LBB0_325
.LBB0_323:                              #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r20, r5
	.loc	1 454 19 is_stmt 1              # parallel-rne.mlir:454:19
	setlt.u r6, r4, r6
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	bneq r6, zero, .LBB0_325
.LBB0_324:                              # %vector.body271
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r20, 16
	andi r6, r6, 1
	add.s r6, r20, r6
	add.s r6, r6, r12
	and r24, r6, r22
.LBB0_325:                              # %vector.body271
                                        #   in Loop: Header=BB0_312 Depth=3
	setlt.u r6, r4, r26
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	beq r6, zero, .LBB0_328
# %bb.326:                              # %vector.body271
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r4, r25
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	beq r6, zero, .LBB0_329
.LBB0_327:                              # %vector.body271
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r4, r8
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	bneq r6, zero, .LBB0_311
	j .LBB0_330
.LBB0_328:                              # %vector.body271
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r12
	and r18, r6, r22
	setlt.u r6, r4, r25
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	bneq r6, zero, .LBB0_327
.LBB0_329:                              # %vector.body271
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r12
	and r17, r6, r22
	setlt.u r6, r4, r8
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	bneq r6, zero, .LBB0_311
.LBB0_330:                              # %vector.body271
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r16, 16
	andi r6, r6, 1
	add.s r6, r16, r6
	add.s r6, r6, r12
	and r15, r6, r22
	j .LBB0_311
.LBB0_331:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	.loc	1 434 7                         # parallel-rne.mlir:434:7
	mfence { sm }
	.loc	1 462 7                         # parallel-rne.mlir:462:7
	addli r2, zero, 3
	bneq r15, r2, .LBB0_241
.LBB0_332:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 12
	.loc	1 462 7                         # parallel-rne.mlir:462:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[27:28], r2
	j .LBB0_334
.LBB0_333:                              # %middle.block266
                                        #   in Loop: Header=BB0_334 Depth=2
	.loc	1 469 9 is_stmt 1               # parallel-rne.mlir:469:9
	load.d r[6:7], -104(r30)                # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[27:28], r[6:7]
	addli.d r[6:7], r[27:28], 1
	addli.d r[27:28], r[6:7], 0
	beq r2, zero, .LBB0_360
.LBB0_334:                              # %.preheader74
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_341 Depth 3
                                        #       Child Loop BB0_336 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[9:10], r[27:28], r14
	zext_int2long r[13:14], zero
	.loc	1 470 11 is_stmt 1              # parallel-rne.mlir:470:11
	beq r11, r1, .LBB0_336
	j .LBB0_341
.LBB0_335:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_336 Depth=3
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	.loc	1 485 13                        # parallel-rne.mlir:485:13
	add.s r2, r11, r2
	stores.w r8, 0(r2)
	.loc	1 470 11                        # parallel-rne.mlir:470:11
	setlt.ul r6, r[13:14], r[6:7]
	addli.d r[13:14], r[13:14], 1
	beq r6, zero, .LBB0_333
.LBB0_336:                              # %scalar.ph260
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_334 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	add.ul r[6:7], r[13:14], r[9:10]
	slli r2, r6, 2
	add.s r6, r1, r2
	loads.w r15, 0(r6)
	.loc	1 473 19                        # parallel-rne.mlir:473:19
	and r6, r15, r3
	.loc	1 475 19                        # parallel-rne.mlir:475:19
	setlt.u r7, r23, r6
	.loc	1 476 19                        # parallel-rne.mlir:476:19
	bneq r7, zero, .LBB0_338
# %bb.337:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_336 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r15, 0
	.loc	1 482 19 is_stmt 1              # parallel-rne.mlir:482:19
	setlt.u r6, r4, r6
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	bneq r6, zero, .LBB0_335
	j .LBB0_339
.LBB0_338:                              #   in Loop: Header=BB0_336 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r15, r5
	.loc	1 482 19 is_stmt 1              # parallel-rne.mlir:482:19
	setlt.u r6, r4, r6
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	bneq r6, zero, .LBB0_335
.LBB0_339:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_336 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r15, 16
	andi r6, r6, 1
	add.s r6, r15, r6
	add.s r6, r6, r12
	and r8, r6, r22
	j .LBB0_335
.LBB0_340:                              # %vector.body262
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 470 11 is_stmt 1              # parallel-rne.mlir:470:11
	load.d r[6:7], -56(r30)                 # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 4
	.loc	1 485 13                        # parallel-rne.mlir:485:13
	add.s r2, r11, r2
	stores.w r15, 12(r2)
	stores.w r17, 8(r2)
	stores.w r18, 4(r2)
	stores.w r24, 0(r2)
	.loc	1 470 11                        # parallel-rne.mlir:470:11
	seteq.d r6, r[13:14], r[6:7]
	bneq r6, zero, .LBB0_333
.LBB0_341:                              # %vector.body262
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_334 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	add.ul r[6:7], r[13:14], r[9:10]
	slli r2, r6, 2
	add.s r20, r1, r2
	loads.w r16, 12(r20)
	.loc	1 473 19                        # parallel-rne.mlir:473:19
	and r8, r16, r3
	.loc	1 475 19                        # parallel-rne.mlir:475:19
	setlt.u r6, r23, r8
	.loc	1 476 19                        # parallel-rne.mlir:476:19
	bneq r6, zero, .LBB0_343
# %bb.342:                              # %vector.body262
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
	j .LBB0_344
.LBB0_343:                              #   in Loop: Header=BB0_341 Depth=3
	or r15, r16, r5
.LBB0_344:                              # %vector.body262
                                        #   in Loop: Header=BB0_341 Depth=3
	loads.w r21, 8(r20)
	and r25, r21, r3
	setlt.u r6, r23, r25
	.loc	1 476 19                        # parallel-rne.mlir:476:19
	bneq r6, zero, .LBB0_346
# %bb.345:                              # %vector.body262
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r21, 0
	j .LBB0_347
.LBB0_346:                              #   in Loop: Header=BB0_341 Depth=3
	or r17, r21, r5
.LBB0_347:                              # %vector.body262
                                        #   in Loop: Header=BB0_341 Depth=3
	loads.w r19, 4(r20)
	and r26, r19, r3
	setlt.u r6, r23, r26
	.loc	1 476 19                        # parallel-rne.mlir:476:19
	bneq r6, zero, .LBB0_349
# %bb.348:                              # %vector.body262
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_350
.LBB0_349:                              #   in Loop: Header=BB0_341 Depth=3
	or r18, r19, r5
.LBB0_350:                              # %vector.body262
                                        #   in Loop: Header=BB0_341 Depth=3
	loads.w r20, 0(r20)
	and r6, r20, r3
	setlt.u r7, r23, r6
	.loc	1 476 19                        # parallel-rne.mlir:476:19
	bneq r7, zero, .LBB0_352
# %bb.351:                              # %vector.body262
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r20, 0
	.loc	1 482 19 is_stmt 1              # parallel-rne.mlir:482:19
	setlt.u r6, r4, r6
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	beq r6, zero, .LBB0_353
	j .LBB0_354
.LBB0_352:                              #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r20, r5
	.loc	1 482 19 is_stmt 1              # parallel-rne.mlir:482:19
	setlt.u r6, r4, r6
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	bneq r6, zero, .LBB0_354
.LBB0_353:                              # %vector.body262
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r20, 16
	andi r6, r6, 1
	add.s r6, r20, r6
	add.s r6, r6, r12
	and r24, r6, r22
.LBB0_354:                              # %vector.body262
                                        #   in Loop: Header=BB0_341 Depth=3
	setlt.u r6, r4, r26
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	beq r6, zero, .LBB0_357
# %bb.355:                              # %vector.body262
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r4, r25
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	beq r6, zero, .LBB0_358
.LBB0_356:                              # %vector.body262
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r4, r8
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	bneq r6, zero, .LBB0_340
	j .LBB0_359
.LBB0_357:                              # %vector.body262
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r12
	and r18, r6, r22
	setlt.u r6, r4, r25
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	bneq r6, zero, .LBB0_356
.LBB0_358:                              # %vector.body262
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r12
	and r17, r6, r22
	setlt.u r6, r4, r8
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	bneq r6, zero, .LBB0_340
.LBB0_359:                              # %vector.body262
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r16, 16
	andi r6, r6, 1
	add.s r6, r16, r6
	add.s r6, r6, r12
	and r15, r6, r22
	j .LBB0_340
.LBB0_360:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	.loc	1 462 7                         # parallel-rne.mlir:462:7
	mfence { sm }
	.loc	1 490 7                         # parallel-rne.mlir:490:7
	loadli.w r2,  -156(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_242
.LBB0_361:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 490 7                         # parallel-rne.mlir:490:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[27:28], r2
	j .LBB0_363
.LBB0_362:                              # %middle.block257
                                        #   in Loop: Header=BB0_363 Depth=2
	.loc	1 497 9 is_stmt 1               # parallel-rne.mlir:497:9
	load.d r[6:7], -96(r30)                 # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[27:28], r[6:7]
	addli.d r[6:7], r[27:28], 1
	addli.d r[27:28], r[6:7], 0
	beq r2, zero, .LBB0_389
.LBB0_363:                              # %.preheader73
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_370 Depth 3
                                        #       Child Loop BB0_365 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[9:10], r[27:28], r14
	zext_int2long r[13:14], zero
	.loc	1 498 11 is_stmt 1              # parallel-rne.mlir:498:11
	beq r11, r1, .LBB0_365
	j .LBB0_370
.LBB0_364:                              # %scalar.ph251
                                        #   in Loop: Header=BB0_365 Depth=3
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	.loc	1 513 13                        # parallel-rne.mlir:513:13
	add.s r2, r11, r2
	stores.w r8, 0(r2)
	.loc	1 498 11                        # parallel-rne.mlir:498:11
	setlt.ul r6, r[13:14], r[6:7]
	addli.d r[13:14], r[13:14], 1
	beq r6, zero, .LBB0_362
.LBB0_365:                              # %scalar.ph251
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_363 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	add.ul r[6:7], r[13:14], r[9:10]
	slli r2, r6, 2
	add.s r6, r1, r2
	loads.w r15, 0(r6)
	.loc	1 501 19                        # parallel-rne.mlir:501:19
	and r6, r15, r3
	.loc	1 503 19                        # parallel-rne.mlir:503:19
	setlt.u r7, r23, r6
	.loc	1 504 19                        # parallel-rne.mlir:504:19
	bneq r7, zero, .LBB0_367
# %bb.366:                              # %scalar.ph251
                                        #   in Loop: Header=BB0_365 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r15, 0
	.loc	1 510 19 is_stmt 1              # parallel-rne.mlir:510:19
	setlt.u r6, r4, r6
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r6, zero, .LBB0_364
	j .LBB0_368
.LBB0_367:                              #   in Loop: Header=BB0_365 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r15, r5
	.loc	1 510 19 is_stmt 1              # parallel-rne.mlir:510:19
	setlt.u r6, r4, r6
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r6, zero, .LBB0_364
.LBB0_368:                              # %scalar.ph251
                                        #   in Loop: Header=BB0_365 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r15, 16
	andi r6, r6, 1
	add.s r6, r15, r6
	add.s r6, r6, r12
	and r8, r6, r22
	j .LBB0_364
.LBB0_369:                              # %vector.body253
                                        #   in Loop: Header=BB0_370 Depth=3
	.loc	1 498 11 is_stmt 1              # parallel-rne.mlir:498:11
	load.d r[6:7], -56(r30)                 # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 4
	.loc	1 513 13                        # parallel-rne.mlir:513:13
	add.s r2, r11, r2
	stores.w r15, 12(r2)
	stores.w r17, 8(r2)
	stores.w r18, 4(r2)
	stores.w r24, 0(r2)
	.loc	1 498 11                        # parallel-rne.mlir:498:11
	seteq.d r6, r[13:14], r[6:7]
	bneq r6, zero, .LBB0_362
.LBB0_370:                              # %vector.body253
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_363 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	add.ul r[6:7], r[13:14], r[9:10]
	slli r2, r6, 2
	add.s r20, r1, r2
	loads.w r16, 12(r20)
	.loc	1 501 19                        # parallel-rne.mlir:501:19
	and r8, r16, r3
	.loc	1 503 19                        # parallel-rne.mlir:503:19
	setlt.u r6, r23, r8
	.loc	1 504 19                        # parallel-rne.mlir:504:19
	bneq r6, zero, .LBB0_372
# %bb.371:                              # %vector.body253
                                        #   in Loop: Header=BB0_370 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
	j .LBB0_373
.LBB0_372:                              #   in Loop: Header=BB0_370 Depth=3
	or r15, r16, r5
.LBB0_373:                              # %vector.body253
                                        #   in Loop: Header=BB0_370 Depth=3
	loads.w r21, 8(r20)
	and r25, r21, r3
	setlt.u r6, r23, r25
	.loc	1 504 19                        # parallel-rne.mlir:504:19
	bneq r6, zero, .LBB0_375
# %bb.374:                              # %vector.body253
                                        #   in Loop: Header=BB0_370 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r21, 0
	j .LBB0_376
.LBB0_375:                              #   in Loop: Header=BB0_370 Depth=3
	or r17, r21, r5
.LBB0_376:                              # %vector.body253
                                        #   in Loop: Header=BB0_370 Depth=3
	loads.w r19, 4(r20)
	and r26, r19, r3
	setlt.u r6, r23, r26
	.loc	1 504 19                        # parallel-rne.mlir:504:19
	bneq r6, zero, .LBB0_378
# %bb.377:                              # %vector.body253
                                        #   in Loop: Header=BB0_370 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_379
.LBB0_378:                              #   in Loop: Header=BB0_370 Depth=3
	or r18, r19, r5
.LBB0_379:                              # %vector.body253
                                        #   in Loop: Header=BB0_370 Depth=3
	loads.w r20, 0(r20)
	and r6, r20, r3
	setlt.u r7, r23, r6
	.loc	1 504 19                        # parallel-rne.mlir:504:19
	bneq r7, zero, .LBB0_381
# %bb.380:                              # %vector.body253
                                        #   in Loop: Header=BB0_370 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r20, 0
	.loc	1 510 19 is_stmt 1              # parallel-rne.mlir:510:19
	setlt.u r6, r4, r6
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	beq r6, zero, .LBB0_382
	j .LBB0_383
.LBB0_381:                              #   in Loop: Header=BB0_370 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r20, r5
	.loc	1 510 19 is_stmt 1              # parallel-rne.mlir:510:19
	setlt.u r6, r4, r6
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r6, zero, .LBB0_383
.LBB0_382:                              # %vector.body253
                                        #   in Loop: Header=BB0_370 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r20, 16
	andi r6, r6, 1
	add.s r6, r20, r6
	add.s r6, r6, r12
	and r24, r6, r22
.LBB0_383:                              # %vector.body253
                                        #   in Loop: Header=BB0_370 Depth=3
	setlt.u r6, r4, r26
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	beq r6, zero, .LBB0_386
# %bb.384:                              # %vector.body253
                                        #   in Loop: Header=BB0_370 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r4, r25
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	beq r6, zero, .LBB0_387
.LBB0_385:                              # %vector.body253
                                        #   in Loop: Header=BB0_370 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r4, r8
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r6, zero, .LBB0_369
	j .LBB0_388
.LBB0_386:                              # %vector.body253
                                        #   in Loop: Header=BB0_370 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r12
	and r18, r6, r22
	setlt.u r6, r4, r25
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r6, zero, .LBB0_385
.LBB0_387:                              # %vector.body253
                                        #   in Loop: Header=BB0_370 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r12
	and r17, r6, r22
	setlt.u r6, r4, r8
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r6, zero, .LBB0_369
.LBB0_388:                              # %vector.body253
                                        #   in Loop: Header=BB0_370 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r16, 16
	andi r6, r6, 1
	add.s r6, r16, r6
	add.s r6, r6, r12
	and r15, r6, r22
	j .LBB0_369
.LBB0_389:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	.loc	1 490 7                         # parallel-rne.mlir:490:7
	mfence { sm }
	.loc	1 518 7                         # parallel-rne.mlir:518:7
	bneq r15, r14, .LBB0_243
.LBB0_390:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 518 7                         # parallel-rne.mlir:518:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[27:28], r2
	j .LBB0_392
.LBB0_391:                              # %middle.block248
                                        #   in Loop: Header=BB0_392 Depth=2
	.loc	1 525 9 is_stmt 1               # parallel-rne.mlir:525:9
	load.d r[6:7], -88(r30)                 # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[27:28], r[6:7]
	addli.d r[6:7], r[27:28], 1
	addli.d r[27:28], r[6:7], 0
	beq r2, zero, .LBB0_418
.LBB0_392:                              # %.preheader72
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_399 Depth 3
                                        #       Child Loop BB0_394 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[9:10], r[27:28], r14
	zext_int2long r[13:14], zero
	.loc	1 526 11 is_stmt 1              # parallel-rne.mlir:526:11
	beq r11, r1, .LBB0_394
	j .LBB0_399
.LBB0_393:                              # %scalar.ph242
                                        #   in Loop: Header=BB0_394 Depth=3
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	.loc	1 541 13                        # parallel-rne.mlir:541:13
	add.s r2, r11, r2
	stores.w r8, 0(r2)
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	setlt.ul r6, r[13:14], r[6:7]
	addli.d r[13:14], r[13:14], 1
	beq r6, zero, .LBB0_391
.LBB0_394:                              # %scalar.ph242
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_392 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	add.ul r[6:7], r[13:14], r[9:10]
	slli r2, r6, 2
	add.s r6, r1, r2
	loads.w r15, 0(r6)
	.loc	1 529 19                        # parallel-rne.mlir:529:19
	and r6, r15, r3
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	setlt.u r7, r23, r6
	.loc	1 532 19                        # parallel-rne.mlir:532:19
	bneq r7, zero, .LBB0_396
# %bb.395:                              # %scalar.ph242
                                        #   in Loop: Header=BB0_394 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r15, 0
	.loc	1 538 19 is_stmt 1              # parallel-rne.mlir:538:19
	setlt.u r6, r4, r6
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	bneq r6, zero, .LBB0_393
	j .LBB0_397
.LBB0_396:                              #   in Loop: Header=BB0_394 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r15, r5
	.loc	1 538 19 is_stmt 1              # parallel-rne.mlir:538:19
	setlt.u r6, r4, r6
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	bneq r6, zero, .LBB0_393
.LBB0_397:                              # %scalar.ph242
                                        #   in Loop: Header=BB0_394 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r15, 16
	andi r6, r6, 1
	add.s r6, r15, r6
	add.s r6, r6, r12
	and r8, r6, r22
	j .LBB0_393
.LBB0_398:                              # %vector.body244
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 526 11 is_stmt 1              # parallel-rne.mlir:526:11
	load.d r[6:7], -56(r30)                 # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 4
	.loc	1 541 13                        # parallel-rne.mlir:541:13
	add.s r2, r11, r2
	stores.w r15, 12(r2)
	stores.w r17, 8(r2)
	stores.w r18, 4(r2)
	stores.w r24, 0(r2)
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	seteq.d r6, r[13:14], r[6:7]
	bneq r6, zero, .LBB0_391
.LBB0_399:                              # %vector.body244
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_392 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	add.ul r[6:7], r[13:14], r[9:10]
	slli r2, r6, 2
	add.s r20, r1, r2
	loads.w r16, 12(r20)
	.loc	1 529 19                        # parallel-rne.mlir:529:19
	and r8, r16, r3
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	setlt.u r6, r23, r8
	.loc	1 532 19                        # parallel-rne.mlir:532:19
	bneq r6, zero, .LBB0_401
# %bb.400:                              # %vector.body244
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
	j .LBB0_402
.LBB0_401:                              #   in Loop: Header=BB0_399 Depth=3
	or r15, r16, r5
.LBB0_402:                              # %vector.body244
                                        #   in Loop: Header=BB0_399 Depth=3
	loads.w r21, 8(r20)
	and r25, r21, r3
	setlt.u r6, r23, r25
	.loc	1 532 19                        # parallel-rne.mlir:532:19
	bneq r6, zero, .LBB0_404
# %bb.403:                              # %vector.body244
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r21, 0
	j .LBB0_405
.LBB0_404:                              #   in Loop: Header=BB0_399 Depth=3
	or r17, r21, r5
.LBB0_405:                              # %vector.body244
                                        #   in Loop: Header=BB0_399 Depth=3
	loads.w r19, 4(r20)
	and r26, r19, r3
	setlt.u r6, r23, r26
	.loc	1 532 19                        # parallel-rne.mlir:532:19
	bneq r6, zero, .LBB0_407
# %bb.406:                              # %vector.body244
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_408
.LBB0_407:                              #   in Loop: Header=BB0_399 Depth=3
	or r18, r19, r5
.LBB0_408:                              # %vector.body244
                                        #   in Loop: Header=BB0_399 Depth=3
	loads.w r20, 0(r20)
	and r6, r20, r3
	setlt.u r7, r23, r6
	.loc	1 532 19                        # parallel-rne.mlir:532:19
	bneq r7, zero, .LBB0_410
# %bb.409:                              # %vector.body244
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r20, 0
	.loc	1 538 19 is_stmt 1              # parallel-rne.mlir:538:19
	setlt.u r6, r4, r6
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	beq r6, zero, .LBB0_411
	j .LBB0_412
.LBB0_410:                              #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r20, r5
	.loc	1 538 19 is_stmt 1              # parallel-rne.mlir:538:19
	setlt.u r6, r4, r6
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	bneq r6, zero, .LBB0_412
.LBB0_411:                              # %vector.body244
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r20, 16
	andi r6, r6, 1
	add.s r6, r20, r6
	add.s r6, r6, r12
	and r24, r6, r22
.LBB0_412:                              # %vector.body244
                                        #   in Loop: Header=BB0_399 Depth=3
	setlt.u r6, r4, r26
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	beq r6, zero, .LBB0_415
# %bb.413:                              # %vector.body244
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r4, r25
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	beq r6, zero, .LBB0_416
.LBB0_414:                              # %vector.body244
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r4, r8
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	bneq r6, zero, .LBB0_398
	j .LBB0_417
.LBB0_415:                              # %vector.body244
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r12
	and r18, r6, r22
	setlt.u r6, r4, r25
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	bneq r6, zero, .LBB0_414
.LBB0_416:                              # %vector.body244
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r12
	and r17, r6, r22
	setlt.u r6, r4, r8
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	bneq r6, zero, .LBB0_398
.LBB0_417:                              # %vector.body244
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r16, 16
	andi r6, r6, 1
	add.s r6, r16, r6
	add.s r6, r6, r12
	and r15, r6, r22
	j .LBB0_398
.LBB0_418:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	.loc	1 518 7                         # parallel-rne.mlir:518:7
	mfence { sm }
	.loc	1 546 7                         # parallel-rne.mlir:546:7
	addli r2, zero, 6
	bneq r15, r2, .LBB0_244
.LBB0_419:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 546 7                         # parallel-rne.mlir:546:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[27:28], r2
	j .LBB0_421
.LBB0_420:                              # %middle.block239
                                        #   in Loop: Header=BB0_421 Depth=2
	.loc	1 553 9 is_stmt 1               # parallel-rne.mlir:553:9
	load.d r[6:7], -80(r30)                 # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[27:28], r[6:7]
	addli.d r[6:7], r[27:28], 1
	addli.d r[27:28], r[6:7], 0
	beq r2, zero, .LBB0_447
.LBB0_421:                              # %.preheader71
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_428 Depth 3
                                        #       Child Loop BB0_423 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[9:10], r[27:28], r14
	zext_int2long r[13:14], zero
	.loc	1 554 11 is_stmt 1              # parallel-rne.mlir:554:11
	beq r11, r1, .LBB0_423
	j .LBB0_428
.LBB0_422:                              # %scalar.ph233
                                        #   in Loop: Header=BB0_423 Depth=3
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	.loc	1 569 13                        # parallel-rne.mlir:569:13
	add.s r2, r11, r2
	stores.w r8, 0(r2)
	.loc	1 554 11                        # parallel-rne.mlir:554:11
	setlt.ul r6, r[13:14], r[6:7]
	addli.d r[13:14], r[13:14], 1
	beq r6, zero, .LBB0_420
.LBB0_423:                              # %scalar.ph233
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_421 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	add.ul r[6:7], r[13:14], r[9:10]
	slli r2, r6, 2
	add.s r6, r1, r2
	loads.w r15, 0(r6)
	.loc	1 557 19                        # parallel-rne.mlir:557:19
	and r6, r15, r3
	.loc	1 559 19                        # parallel-rne.mlir:559:19
	setlt.u r7, r23, r6
	.loc	1 560 19                        # parallel-rne.mlir:560:19
	bneq r7, zero, .LBB0_425
# %bb.424:                              # %scalar.ph233
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r15, 0
	.loc	1 566 19 is_stmt 1              # parallel-rne.mlir:566:19
	setlt.u r6, r4, r6
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	bneq r6, zero, .LBB0_422
	j .LBB0_426
.LBB0_425:                              #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r15, r5
	.loc	1 566 19 is_stmt 1              # parallel-rne.mlir:566:19
	setlt.u r6, r4, r6
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	bneq r6, zero, .LBB0_422
.LBB0_426:                              # %scalar.ph233
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r15, 16
	andi r6, r6, 1
	add.s r6, r15, r6
	add.s r6, r6, r12
	and r8, r6, r22
	j .LBB0_422
.LBB0_427:                              # %vector.body235
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 554 11 is_stmt 1              # parallel-rne.mlir:554:11
	load.d r[6:7], -56(r30)                 # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 4
	.loc	1 569 13                        # parallel-rne.mlir:569:13
	add.s r2, r11, r2
	stores.w r15, 12(r2)
	stores.w r17, 8(r2)
	stores.w r18, 4(r2)
	stores.w r24, 0(r2)
	.loc	1 554 11                        # parallel-rne.mlir:554:11
	seteq.d r6, r[13:14], r[6:7]
	bneq r6, zero, .LBB0_420
.LBB0_428:                              # %vector.body235
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_421 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	add.ul r[6:7], r[13:14], r[9:10]
	slli r2, r6, 2
	add.s r20, r1, r2
	loads.w r16, 12(r20)
	.loc	1 557 19                        # parallel-rne.mlir:557:19
	and r8, r16, r3
	.loc	1 559 19                        # parallel-rne.mlir:559:19
	setlt.u r6, r23, r8
	.loc	1 560 19                        # parallel-rne.mlir:560:19
	bneq r6, zero, .LBB0_430
# %bb.429:                              # %vector.body235
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
	j .LBB0_431
.LBB0_430:                              #   in Loop: Header=BB0_428 Depth=3
	or r15, r16, r5
.LBB0_431:                              # %vector.body235
                                        #   in Loop: Header=BB0_428 Depth=3
	loads.w r21, 8(r20)
	and r25, r21, r3
	setlt.u r6, r23, r25
	.loc	1 560 19                        # parallel-rne.mlir:560:19
	bneq r6, zero, .LBB0_433
# %bb.432:                              # %vector.body235
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r21, 0
	j .LBB0_434
.LBB0_433:                              #   in Loop: Header=BB0_428 Depth=3
	or r17, r21, r5
.LBB0_434:                              # %vector.body235
                                        #   in Loop: Header=BB0_428 Depth=3
	loads.w r19, 4(r20)
	and r26, r19, r3
	setlt.u r6, r23, r26
	.loc	1 560 19                        # parallel-rne.mlir:560:19
	bneq r6, zero, .LBB0_436
# %bb.435:                              # %vector.body235
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_437
.LBB0_436:                              #   in Loop: Header=BB0_428 Depth=3
	or r18, r19, r5
.LBB0_437:                              # %vector.body235
                                        #   in Loop: Header=BB0_428 Depth=3
	loads.w r20, 0(r20)
	and r6, r20, r3
	setlt.u r7, r23, r6
	.loc	1 560 19                        # parallel-rne.mlir:560:19
	bneq r7, zero, .LBB0_439
# %bb.438:                              # %vector.body235
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r20, 0
	.loc	1 566 19 is_stmt 1              # parallel-rne.mlir:566:19
	setlt.u r6, r4, r6
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	beq r6, zero, .LBB0_440
	j .LBB0_441
.LBB0_439:                              #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r20, r5
	.loc	1 566 19 is_stmt 1              # parallel-rne.mlir:566:19
	setlt.u r6, r4, r6
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	bneq r6, zero, .LBB0_441
.LBB0_440:                              # %vector.body235
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r20, 16
	andi r6, r6, 1
	add.s r6, r20, r6
	add.s r6, r6, r12
	and r24, r6, r22
.LBB0_441:                              # %vector.body235
                                        #   in Loop: Header=BB0_428 Depth=3
	setlt.u r6, r4, r26
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	beq r6, zero, .LBB0_444
# %bb.442:                              # %vector.body235
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r4, r25
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	beq r6, zero, .LBB0_445
.LBB0_443:                              # %vector.body235
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r4, r8
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	bneq r6, zero, .LBB0_427
	j .LBB0_446
.LBB0_444:                              # %vector.body235
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r12
	and r18, r6, r22
	setlt.u r6, r4, r25
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	bneq r6, zero, .LBB0_443
.LBB0_445:                              # %vector.body235
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r12
	and r17, r6, r22
	setlt.u r6, r4, r8
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	bneq r6, zero, .LBB0_427
.LBB0_446:                              # %vector.body235
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r16, 16
	andi r6, r6, 1
	add.s r6, r16, r6
	add.s r6, r6, r12
	and r15, r6, r22
	j .LBB0_427
.LBB0_447:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	.loc	1 546 7                         # parallel-rne.mlir:546:7
	mfence { sm }
	.loc	1 574 7                         # parallel-rne.mlir:574:7
	loadli.w r2,  -152(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_477
.LBB0_448:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 574 7                         # parallel-rne.mlir:574:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[27:28], r2
	j .LBB0_450
.LBB0_449:                              # %middle.block230
                                        #   in Loop: Header=BB0_450 Depth=2
	.loc	1 581 9 is_stmt 1               # parallel-rne.mlir:581:9
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[27:28], r[6:7]
	addli.d r[6:7], r[27:28], 1
	addli.d r[27:28], r[6:7], 0
	beq r2, zero, .LBB0_476
.LBB0_450:                              # %.preheader70
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_457 Depth 3
                                        #       Child Loop BB0_452 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[9:10], r[27:28], r14
	zext_int2long r[13:14], zero
	.loc	1 582 11 is_stmt 1              # parallel-rne.mlir:582:11
	beq r11, r1, .LBB0_452
	j .LBB0_457
.LBB0_451:                              # %scalar.ph224
                                        #   in Loop: Header=BB0_452 Depth=3
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	add.s r2, r11, r2
	stores.w r8, 0(r2)
	.loc	1 582 11                        # parallel-rne.mlir:582:11
	setlt.ul r6, r[13:14], r[6:7]
	addli.d r[13:14], r[13:14], 1
	beq r6, zero, .LBB0_449
.LBB0_452:                              # %scalar.ph224
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_450 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	add.ul r[6:7], r[13:14], r[9:10]
	slli r2, r6, 2
	add.s r6, r1, r2
	loads.w r15, 0(r6)
	.loc	1 585 19                        # parallel-rne.mlir:585:19
	and r6, r15, r3
	.loc	1 587 19                        # parallel-rne.mlir:587:19
	setlt.u r7, r23, r6
	.loc	1 588 19                        # parallel-rne.mlir:588:19
	bneq r7, zero, .LBB0_454
# %bb.453:                              # %scalar.ph224
                                        #   in Loop: Header=BB0_452 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r15, 0
	.loc	1 594 19 is_stmt 1              # parallel-rne.mlir:594:19
	setlt.u r6, r4, r6
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	bneq r6, zero, .LBB0_451
	j .LBB0_455
.LBB0_454:                              #   in Loop: Header=BB0_452 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r15, r5
	.loc	1 594 19 is_stmt 1              # parallel-rne.mlir:594:19
	setlt.u r6, r4, r6
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	bneq r6, zero, .LBB0_451
.LBB0_455:                              # %scalar.ph224
                                        #   in Loop: Header=BB0_452 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r15, 16
	andi r6, r6, 1
	add.s r6, r15, r6
	add.s r6, r6, r12
	and r8, r6, r22
	j .LBB0_451
.LBB0_456:                              # %vector.body226
                                        #   in Loop: Header=BB0_457 Depth=3
	.loc	1 582 11 is_stmt 1              # parallel-rne.mlir:582:11
	load.d r[6:7], -56(r30)                 # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 4
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	add.s r2, r11, r2
	stores.w r15, 12(r2)
	stores.w r17, 8(r2)
	stores.w r18, 4(r2)
	stores.w r24, 0(r2)
	.loc	1 582 11                        # parallel-rne.mlir:582:11
	seteq.d r6, r[13:14], r[6:7]
	bneq r6, zero, .LBB0_449
.LBB0_457:                              # %vector.body226
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_450 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	add.ul r[6:7], r[13:14], r[9:10]
	slli r2, r6, 2
	add.s r20, r1, r2
	loads.w r16, 12(r20)
	.loc	1 585 19                        # parallel-rne.mlir:585:19
	and r8, r16, r3
	.loc	1 587 19                        # parallel-rne.mlir:587:19
	setlt.u r6, r23, r8
	.loc	1 588 19                        # parallel-rne.mlir:588:19
	bneq r6, zero, .LBB0_459
# %bb.458:                              # %vector.body226
                                        #   in Loop: Header=BB0_457 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
	j .LBB0_460
.LBB0_459:                              #   in Loop: Header=BB0_457 Depth=3
	or r15, r16, r5
.LBB0_460:                              # %vector.body226
                                        #   in Loop: Header=BB0_457 Depth=3
	loads.w r21, 8(r20)
	and r25, r21, r3
	setlt.u r6, r23, r25
	.loc	1 588 19                        # parallel-rne.mlir:588:19
	bneq r6, zero, .LBB0_462
# %bb.461:                              # %vector.body226
                                        #   in Loop: Header=BB0_457 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r21, 0
	j .LBB0_463
.LBB0_462:                              #   in Loop: Header=BB0_457 Depth=3
	or r17, r21, r5
.LBB0_463:                              # %vector.body226
                                        #   in Loop: Header=BB0_457 Depth=3
	loads.w r19, 4(r20)
	and r26, r19, r3
	setlt.u r6, r23, r26
	.loc	1 588 19                        # parallel-rne.mlir:588:19
	bneq r6, zero, .LBB0_465
# %bb.464:                              # %vector.body226
                                        #   in Loop: Header=BB0_457 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_466
.LBB0_465:                              #   in Loop: Header=BB0_457 Depth=3
	or r18, r19, r5
.LBB0_466:                              # %vector.body226
                                        #   in Loop: Header=BB0_457 Depth=3
	loads.w r20, 0(r20)
	and r6, r20, r3
	setlt.u r7, r23, r6
	.loc	1 588 19                        # parallel-rne.mlir:588:19
	bneq r7, zero, .LBB0_468
# %bb.467:                              # %vector.body226
                                        #   in Loop: Header=BB0_457 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r20, 0
	.loc	1 594 19 is_stmt 1              # parallel-rne.mlir:594:19
	setlt.u r6, r4, r6
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	beq r6, zero, .LBB0_469
	j .LBB0_470
.LBB0_468:                              #   in Loop: Header=BB0_457 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r20, r5
	.loc	1 594 19 is_stmt 1              # parallel-rne.mlir:594:19
	setlt.u r6, r4, r6
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	bneq r6, zero, .LBB0_470
.LBB0_469:                              # %vector.body226
                                        #   in Loop: Header=BB0_457 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r20, 16
	andi r6, r6, 1
	add.s r6, r20, r6
	add.s r6, r6, r12
	and r24, r6, r22
.LBB0_470:                              # %vector.body226
                                        #   in Loop: Header=BB0_457 Depth=3
	setlt.u r6, r4, r26
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	beq r6, zero, .LBB0_473
# %bb.471:                              # %vector.body226
                                        #   in Loop: Header=BB0_457 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r4, r25
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	beq r6, zero, .LBB0_474
.LBB0_472:                              # %vector.body226
                                        #   in Loop: Header=BB0_457 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r4, r8
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	bneq r6, zero, .LBB0_456
	j .LBB0_475
.LBB0_473:                              # %vector.body226
                                        #   in Loop: Header=BB0_457 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r12
	and r18, r6, r22
	setlt.u r6, r4, r25
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	bneq r6, zero, .LBB0_472
.LBB0_474:                              # %vector.body226
                                        #   in Loop: Header=BB0_457 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r12
	and r17, r6, r22
	setlt.u r6, r4, r8
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	bneq r6, zero, .LBB0_456
.LBB0_475:                              # %vector.body226
                                        #   in Loop: Header=BB0_457 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r16, 16
	andi r6, r6, 1
	add.s r6, r16, r6
	add.s r6, r6, r12
	and r15, r6, r22
	j .LBB0_456
.LBB0_476:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	.loc	1 574 7                         # parallel-rne.mlir:574:7
	mfence { sm }
.LBB0_477:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 603 7                         # parallel-rne.mlir:603:7
	addli r2, zero, 3
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	sync_core
	.loc	1 603 7                         # parallel-rne.mlir:603:7
	bneq r15, r2, .LBB0_479
# %bb.478:                              # %.critedge11
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, zero, 14
	.loc	1 604 7 is_stmt 1               # parallel-rne.mlir:604:7
	addli r2, zero, 21
	.loc	1 603 7                         # parallel-rne.mlir:603:7
	xsignal r9, 0
	.loc	1 604 7                         # parallel-rne.mlir:604:7
	xsignal r2, 0
	.loc	1 605 7                         # parallel-rne.mlir:605:7
	addli r2, zero, 19
	xsignal r2, 0
	.loc	1 607 13                        # parallel-rne.mlir:607:13
	loadli.w r2,  -48(r30)
	.loc	1 610 13                        # parallel-rne.mlir:610:13
	loadli.w r6,  -24(r30)
	.loc	1 607 13                        # parallel-rne.mlir:607:13
	mod.s r7, r2, r14
	.loc	1 610 13                        # parallel-rne.mlir:610:13
	mod.s r8, r6, r14
	.loc	1 607 13                        # parallel-rne.mlir:607:13
	addli r2, r2, 1
	storeli.w r2, -48(r30)
	slli r2, r7, 12
	.loc	1 610 13                        # parallel-rne.mlir:610:13
	slli r7, r8, 12
	.loc	1 607 13                        # parallel-rne.mlir:607:13
	loadli.w r8,  -224(r30)                 # 4-byte Folded Reload
	add.s r18, r2, r8
	.loc	1 610 13                        # parallel-rne.mlir:610:13
	addli r2, r6, 1
	loadli.w r6,  -228(r30)                 # 4-byte Folded Reload
	storeli.w r2, -24(r30)
	.loc	1 614 7                         # parallel-rne.mlir:614:7
	addli r2, zero, 20
	.loc	1 613 7                         # parallel-rne.mlir:613:7
	xwait r9, 0
	.loc	1 610 13                        # parallel-rne.mlir:610:13
	add.s r13, r7, r6
	.loc	1 614 7                         # parallel-rne.mlir:614:7
	xwait r2, 0
	.loc	1 615 7                         # parallel-rne.mlir:615:7
	addli r2, zero, 23
	xwait r2, 0
	.loc	1 616 7                         # parallel-rne.mlir:616:7
	addli r2, zero, 25
	xwait r2, 0
	j .LBB0_482
.LBB0_479:                              # %.critedge9
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 607 13                        # parallel-rne.mlir:607:13
	loadli.w r2,  -48(r30)
	loadli.w r7,  -224(r30)                 # 4-byte Folded Reload
	mod.s r6, r2, r14
	addli r2, r2, 1
	storeli.w r2, -48(r30)
	slli r6, r6, 12
	add.s r18, r6, r7
	.loc	1 608 7                         # parallel-rne.mlir:608:7
	bneq r15, r14, .LBB0_481
# %bb.480:                              # %.thread58
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 19
	addli r8, zero, 2
	addli r9, zero, 1023
	addli r7, zero, 1
	lui r6, 268284
	xwait r2, 0
	addli r2, zero, 24
	xwait r2, 0
	lock zero, r8
	lui r2, 40
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r9, zero, 2
	ori r2, r2, 2114
	ew_cfg r7, zero, zero, 3
	ew_cfg r7, r7, zero, 19
	ew_cfg r8, zero, zero, 10
	ew_cfg r8, r7, r2, 11
	addli r2, zero, 4
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r2, r6, 14
	ew_cfg zero, zero, zero, 15
	sslut r18, r11, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r8
	.loc	1 610 13                        # parallel-rne.mlir:610:13
	loadli.w r2,  -24(r30)
	mod.s r6, r2, r14
	addli r2, r2, 1
	storeli.w r2, -24(r30)
	.loc	1 611 7                         # parallel-rne.mlir:611:7
	addli r2, zero, 21
	xwait r2, 0
	addli r2, zero, 26
	xwait r2, 0
	lock zero, r8
	.loc	1 610 13                        # parallel-rne.mlir:610:13
	slli r2, r6, 12
	loadli.w r6,  -228(r30)                 # 4-byte Folded Reload
	.loc	1 611 7                         # parallel-rne.mlir:611:7
	ew_cfg zero, zero, zero, 1
	.loc	1 610 13                        # parallel-rne.mlir:610:13
	add.s r13, r2, r6
	.loc	1 611 7                         # parallel-rne.mlir:611:7
	lui r2, 260096
	ewcoeff_cfg zero, zero, r2, 0
	addli r2, zero, 20
	ew_cfg zero, r9, zero, 2
	ew_cfg r7, zero, zero, 3
	ew_cfg r7, r7, r7, 19
	dsmul r13, r11, r18, 0
	ew_cfg zero, zero, zero, 19
	unlock r8
	xsignal r2, 0
	addli r2, zero, 23
	xsignal r2, 0
	addli r2, zero, 25
	xsignal r2, 0
	.loc	1 613 7                         # parallel-rne.mlir:613:7
	j .LBB0_482
.LBB0_481:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 610 13                        # parallel-rne.mlir:610:13
	loadli.w r2,  -24(r30)
	loadli.w r7,  -228(r30)                 # 4-byte Folded Reload
	mod.s r6, r2, r14
	addli r2, r2, 1
	storeli.w r2, -24(r30)
	slli r6, r6, 12
	add.s r13, r6, r7
.LBB0_482:                              # %.critedge13
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 13 is_stmt 0                # parallel-rne.mlir:0:13
	seteq r2, r1, r11
	.loc	1 618 7 is_stmt 1               # parallel-rne.mlir:618:7
	storeli.w r2, -140(r30)                 # 4-byte Folded Spill
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	addli r2, zero, 255
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	xfence
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	mfence { lm, sm, gm }
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	csr_set csr5, r2
	sub.s r2, r1, r18
	storeli.w r2, -144(r30)                 # 4-byte Folded Spill
	sub.s r2, r1, r13
	storeli.w r2, -148(r30)                 # 4-byte Folded Spill
	sync_core
	.loc	1 621 7                         # parallel-rne.mlir:621:7
	beq r15, zero, .LBB0_489
# %bb.483:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 667 7                         # parallel-rne.mlir:667:7
	addli r2, zero, 1
	beq r15, r2, .LBB0_540
.LBB0_484:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 713 7                         # parallel-rne.mlir:713:7
	loadli.w r2,  -160(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_591
.LBB0_485:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 759 7                         # parallel-rne.mlir:759:7
	addli r2, zero, 3
	beq r15, r2, .LBB0_642
.LBB0_486:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 805 7                         # parallel-rne.mlir:805:7
	loadli.w r2,  -156(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_691
.LBB0_487:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 851 7                         # parallel-rne.mlir:851:7
	beq r15, r14, .LBB0_740
.LBB0_488:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 897 7                         # parallel-rne.mlir:897:7
	addli r2, zero, 6
	beq r15, r2, .LBB0_789
	j .LBB0_838
.LBB0_489:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -144(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -148(r30)                 # 4-byte Folded Reload
	.loc	1 621 7 is_stmt 1               # parallel-rne.mlir:621:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	loadli.w r6,  -140(r30)                 # 4-byte Folded Reload
	or r25, r2, r6
	zext_int2long r[6:7], zero
	j .LBB0_491
.LBB0_490:                              # %middle.block221
                                        #   in Loop: Header=BB0_491 Depth=2
	.loc	1 628 9                         # parallel-rne.mlir:628:9
	load.d r[6:7], -128(r30)                # 8-byte Folded Reload
	load.d r[27:28], -136(r30)              # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[27:28], r[6:7]
	addli.d r[6:7], r[27:28], 1
	beq r2, zero, .LBB0_539
.LBB0_491:                              # %.preheader69
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_512 Depth 3
                                        #       Child Loop BB0_494 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[16:17], r[6:7], r14
	.loc	1 629 11 is_stmt 1              # parallel-rne.mlir:629:11
	store.d r[6:7], -136(r30)               # 8-byte Folded Spill
	beq r25, zero, .LBB0_510
# %bb.492:                              # %scalar.ph213.preheader
                                        #   in Loop: Header=BB0_491 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_494
.LBB0_493:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 629 11                        # parallel-rne.mlir:629:11
	load.d r[14:15], -64(r30)               # 8-byte Folded Reload
	.loc	1 662 13 is_stmt 1              # parallel-rne.mlir:662:13
	add.s r2, r1, r2
	stores.w r7, 0(r2)
	.loc	1 629 11                        # parallel-rne.mlir:629:11
	setlt.ul r6, r[8:9], r[14:15]
	addli.d r[8:9], r[8:9], 1
	beq r6, zero, .LBB0_490
.LBB0_494:                              # %scalar.ph213
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_491 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 630 19                        # parallel-rne.mlir:630:19
	add.ul r[6:7], r[8:9], r[16:17]
	lui r14, 523264
	slli r2, r6, 2
	.loc	1 631 19                        # parallel-rne.mlir:631:19
	add.s r6, r18, r2
	.loc	1 632 19                        # parallel-rne.mlir:632:19
	add.s r7, r13, r2
	.loc	1 631 19                        # parallel-rne.mlir:631:19
	loads.w r6, 0(r6)
	.loc	1 632 19                        # parallel-rne.mlir:632:19
	loads.w r15, 0(r7)
	.loc	1 635 19                        # parallel-rne.mlir:635:19
	and r7, r6, r3
	lui r6, 523264
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	beq r7, r23, .LBB0_496
# %bb.495:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r15, 0
.LBB0_496:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_494 Depth=3
	add.s r10, r11, r2
	loads.w r10, 0(r10)
	and r10, r10, r3
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	bneq r10, zero, .LBB0_506
# %bb.497:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r15, 523264
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	bneq r7, zero, .LBB0_507
.LBB0_498:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_494 Depth=3
	beq r10, r23, .LBB0_500
.LBB0_499:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r14, 0
.LBB0_500:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_494 Depth=3
	setlt.u r14, r23, r7
	lui r7, 523264
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	bneq r14, zero, .LBB0_502
# %bb.501:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r15, 0
.LBB0_502:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_494 Depth=3
	setlt.u r10, r23, r10
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	bneq r10, zero, .LBB0_504
# %bb.503:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r7, 0
.LBB0_504:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 650 19 is_stmt 1              # parallel-rne.mlir:650:19
	and r10, r6, r3
	.loc	1 652 20                        # parallel-rne.mlir:652:20
	setlt.u r7, r23, r10
	.loc	1 653 20                        # parallel-rne.mlir:653:20
	bneq r7, zero, .LBB0_508
# %bb.505:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r7, r6, 0
	.loc	1 659 20 is_stmt 1              # parallel-rne.mlir:659:20
	setlt.u r10, r4, r10
	.loc	1 660 20                        # parallel-rne.mlir:660:20
	bneq r10, zero, .LBB0_493
	j .LBB0_509
.LBB0_506:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r14, r15, 0
	lui r15, 523264
	.loc	1 649 19 is_stmt 1              # parallel-rne.mlir:649:19
	beq r7, zero, .LBB0_498
.LBB0_507:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r14, 0
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	bneq r10, r23, .LBB0_499
	j .LBB0_500
.LBB0_508:                              #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r7, r6, r5
	.loc	1 659 20 is_stmt 1              # parallel-rne.mlir:659:20
	setlt.u r10, r4, r10
	.loc	1 660 20                        # parallel-rne.mlir:660:20
	bneq r10, zero, .LBB0_493
.LBB0_509:                              # %scalar.ph213
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r12
	and r7, r6, r22
	j .LBB0_493
.LBB0_510:                              # %vector.body215.preheader
                                        #   in Loop: Header=BB0_491 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_512
.LBB0_511:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	.loc	1 629 11 is_stmt 1              # parallel-rne.mlir:629:11
	load.d r[15:16], -56(r30)               # 8-byte Folded Reload
	addli.d r[9:10], r[9:10], 4
	.loc	1 662 13                        # parallel-rne.mlir:662:13
	add.s r2, r1, r2
	stores.w r8, 12(r2)
	stores.w r7, 8(r2)
	stores.w r14, 4(r2)
	stores.w r21, 0(r2)
	.loc	1 629 11                        # parallel-rne.mlir:629:11
	seteq.d r6, r[9:10], r[15:16]
	addli.d r[16:17], r[27:28], 0
	bneq r6, zero, .LBB0_490
.LBB0_512:                              # %vector.body215
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_491 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 630 19                        # parallel-rne.mlir:630:19
	add.ul r[6:7], r[9:10], r[16:17]
	addli.d r[27:28], r[16:17], 0
	lui r26, 523264
	slli r2, r6, 2
	add.s r8, r11, r2
	.loc	1 631 19                        # parallel-rne.mlir:631:19
	add.s r14, r18, r2
	.loc	1 630 19                        # parallel-rne.mlir:630:19
	loads.w r6, 0(r8)
	.loc	1 631 19                        # parallel-rne.mlir:631:19
	loads.w r7, 0(r14)
	.loc	1 637 19                        # parallel-rne.mlir:637:19
	and r6, r6, r3
	.loc	1 635 19                        # parallel-rne.mlir:635:19
	and r7, r7, r3
	.loc	1 638 19                        # parallel-rne.mlir:638:19
	seteq r15, r6, r23
	.loc	1 642 19                        # parallel-rne.mlir:642:19
	seteq r19, r6, zero
	.loc	1 639 19                        # parallel-rne.mlir:639:19
	seteq r16, r7, zero
	.loc	1 641 19                        # parallel-rne.mlir:641:19
	seteq r17, r7, r23
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	max.u r6, r6, r7
	setlt.u r7, r23, r6
	.loc	1 640 19                        # parallel-rne.mlir:640:19
	and r6, r15, r16
	.loc	1 643 19                        # parallel-rne.mlir:643:19
	and r15, r19, r17
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	or r15, r6, r15
	.loc	1 632 19                        # parallel-rne.mlir:632:19
	add.s r6, r13, r2
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	or r7, r7, r15
	lui r15, 523264
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	bneq r7, zero, .LBB0_514
# %bb.513:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r26, 0(r6)
.LBB0_514:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	loads.w r7, 4(r8)
	loads.w r16, 4(r14)
	and r7, r7, r3
	and r16, r16, r3
	seteq r17, r7, r23
	seteq r21, r7, zero
	seteq r19, r16, zero
	seteq r20, r16, r23
	max.u r7, r7, r16
	setlt.u r7, r23, r7
	and r16, r17, r19
	and r17, r21, r20
	or r16, r16, r17
	or r7, r7, r16
	lui r16, 523264
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	bneq r7, zero, .LBB0_516
# %bb.515:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 4(r6)
.LBB0_516:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	loads.w r7, 8(r8)
	loads.w r17, 8(r14)
	and r7, r7, r3
	and r17, r17, r3
	seteq r19, r7, r23
	seteq r24, r7, zero
	seteq r20, r17, zero
	seteq r21, r17, r23
	max.u r7, r7, r17
	setlt.u r7, r23, r7
	and r17, r19, r20
	and r19, r24, r21
	or r17, r17, r19
	or r7, r7, r17
	lui r17, 523264
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	bneq r7, zero, .LBB0_518
# %bb.517:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 8(r6)
.LBB0_518:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	loads.w r7, 12(r8)
	loads.w r8, 12(r14)
	and r7, r7, r3
	and r8, r8, r3
	seteq r14, r7, r23
	seteq r21, r7, zero
	seteq r19, r8, zero
	seteq r20, r8, r23
	max.u r7, r7, r8
	setlt.u r7, r23, r7
	and r8, r14, r19
	and r14, r21, r20
	or r8, r8, r14
	or r7, r7, r8
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	bneq r7, zero, .LBB0_520
# %bb.519:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r6)
.LBB0_520:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	.loc	1 650 19 is_stmt 1              # parallel-rne.mlir:650:19
	and r6, r15, r3
	.loc	1 652 20                        # parallel-rne.mlir:652:20
	setlt.u r7, r23, r6
	.loc	1 653 20                        # parallel-rne.mlir:653:20
	bneq r7, zero, .LBB0_522
# %bb.521:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r8, r15, 0
	j .LBB0_523
.LBB0_522:                              #   in Loop: Header=BB0_512 Depth=3
	or r8, r15, r5
.LBB0_523:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	and r19, r17, r3
	setlt.u r7, r23, r19
	.loc	1 653 20                        # parallel-rne.mlir:653:20
	bneq r7, zero, .LBB0_525
# %bb.524:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r17, 0
	j .LBB0_526
.LBB0_525:                              #   in Loop: Header=BB0_512 Depth=3
	or r7, r17, r5
.LBB0_526:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	and r20, r16, r3
	setlt.u r14, r23, r20
	.loc	1 653 20                        # parallel-rne.mlir:653:20
	bneq r14, zero, .LBB0_528
# %bb.527:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r14, r16, 0
	j .LBB0_529
.LBB0_528:                              #   in Loop: Header=BB0_512 Depth=3
	or r14, r16, r5
.LBB0_529:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	and r24, r26, r3
	setlt.u r21, r23, r24
	.loc	1 653 20                        # parallel-rne.mlir:653:20
	bneq r21, zero, .LBB0_531
# %bb.530:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r21, r26, 0
	.loc	1 659 20 is_stmt 1              # parallel-rne.mlir:659:20
	setlt.u r24, r4, r24
	.loc	1 660 20                        # parallel-rne.mlir:660:20
	beq r24, zero, .LBB0_532
	j .LBB0_533
.LBB0_531:                              #   in Loop: Header=BB0_512 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r26, r5
	.loc	1 659 20 is_stmt 1              # parallel-rne.mlir:659:20
	setlt.u r24, r4, r24
	.loc	1 660 20                        # parallel-rne.mlir:660:20
	bneq r24, zero, .LBB0_533
.LBB0_532:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r21, r26, 16
	andi r21, r21, 1
	add.s r21, r26, r21
	add.s r21, r21, r12
	and r21, r21, r22
.LBB0_533:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	setlt.u r20, r4, r20
	.loc	1 660 20                        # parallel-rne.mlir:660:20
	beq r20, zero, .LBB0_536
# %bb.534:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r16, r4, r19
	.loc	1 660 20                        # parallel-rne.mlir:660:20
	beq r16, zero, .LBB0_537
.LBB0_535:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r4, r6
	.loc	1 660 20                        # parallel-rne.mlir:660:20
	bneq r6, zero, .LBB0_511
	j .LBB0_538
.LBB0_536:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r14, r16, 16
	andi r14, r14, 1
	add.s r14, r16, r14
	add.s r14, r14, r12
	and r14, r14, r22
	setlt.u r16, r4, r19
	.loc	1 660 20                        # parallel-rne.mlir:660:20
	bneq r16, zero, .LBB0_535
.LBB0_537:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r7, r17, 16
	andi r7, r7, 1
	add.s r7, r17, r7
	add.s r7, r7, r12
	and r7, r7, r22
	setlt.u r6, r4, r6
	.loc	1 660 20                        # parallel-rne.mlir:660:20
	bneq r6, zero, .LBB0_511
.LBB0_538:                              # %vector.body215
                                        #   in Loop: Header=BB0_512 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r6, r15, 16
	andi r6, r6, 1
	add.s r6, r15, r6
	add.s r6, r6, r12
	and r8, r6, r22
	j .LBB0_511
.LBB0_539:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	.loc	1 621 7                         # parallel-rne.mlir:621:7
	mfence { sm }
	.loc	1 667 7                         # parallel-rne.mlir:667:7
	addli r2, zero, 1
	bneq r15, r2, .LBB0_484
.LBB0_540:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -144(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -148(r30)                 # 4-byte Folded Reload
	.loc	1 667 7                         # parallel-rne.mlir:667:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	addli r6, zero, 4
	zext_int2long r[7:8], r6
	loadli.w r6,  -140(r30)                 # 4-byte Folded Reload
	or r28, r2, r6
	j .LBB0_542
.LBB0_541:                              # %middle.block206
                                        #   in Loop: Header=BB0_542 Depth=2
	.loc	1 674 9 is_stmt 1               # parallel-rne.mlir:674:9
	load.d r[6:7], -120(r30)                # 8-byte Folded Reload
	load.d r[8:9], -128(r30)                # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	addli.d r[7:8], r[6:7], 0
	beq r2, zero, .LBB0_590
.LBB0_542:                              # %.preheader68
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_563 Depth 3
                                        #       Child Loop BB0_545 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[7:8], -128(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[7:8], r14
	.loc	1 675 11 is_stmt 1              # parallel-rne.mlir:675:11
	beq r28, zero, .LBB0_561
# %bb.543:                              # %scalar.ph198.preheader
                                        #   in Loop: Header=BB0_542 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_545
.LBB0_544:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_545 Depth=3
	.loc	1 675 11                        # parallel-rne.mlir:675:11
	load.d r[15:16], -64(r30)               # 8-byte Folded Reload
	.loc	1 708 13 is_stmt 1              # parallel-rne.mlir:708:13
	add.s r2, r1, r2
	stores.w r14, 0(r2)
	.loc	1 675 11                        # parallel-rne.mlir:675:11
	setlt.ul r10, r[8:9], r[15:16]
	addli.d r[8:9], r[8:9], 1
	beq r10, zero, .LBB0_541
.LBB0_545:                              # %scalar.ph198
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_542 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	add.ul r[14:15], r[8:9], r[6:7]
	lui r16, 523264
	slli r2, r14, 2
	.loc	1 677 19                        # parallel-rne.mlir:677:19
	add.s r10, r18, r2
	.loc	1 678 19                        # parallel-rne.mlir:678:19
	add.s r14, r13, r2
	.loc	1 677 19                        # parallel-rne.mlir:677:19
	loads.w r10, 0(r10)
	.loc	1 678 19                        # parallel-rne.mlir:678:19
	loads.w r17, 0(r14)
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	and r14, r10, r3
	lui r10, 523264
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	beq r14, r23, .LBB0_547
# %bb.546:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_545 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r17, 0
.LBB0_547:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_545 Depth=3
	add.s r15, r11, r2
	loads.w r15, 0(r15)
	and r15, r15, r3
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	bneq r15, zero, .LBB0_557
# %bb.548:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_545 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r17, 523264
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	bneq r14, zero, .LBB0_558
.LBB0_549:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_545 Depth=3
	beq r15, r23, .LBB0_551
.LBB0_550:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_545 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r16, 0
.LBB0_551:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_545 Depth=3
	setlt.u r16, r23, r14
	lui r14, 523264
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	bneq r16, zero, .LBB0_553
# %bb.552:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_545 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r17, 0
.LBB0_553:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_545 Depth=3
	setlt.u r15, r23, r15
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	bneq r15, zero, .LBB0_555
# %bb.554:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_545 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r14, 0
.LBB0_555:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_545 Depth=3
	.loc	1 696 19 is_stmt 1              # parallel-rne.mlir:696:19
	and r15, r10, r3
	.loc	1 698 20                        # parallel-rne.mlir:698:20
	setlt.u r14, r23, r15
	.loc	1 699 20                        # parallel-rne.mlir:699:20
	bneq r14, zero, .LBB0_559
# %bb.556:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_545 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r14, r10, 0
	.loc	1 705 20 is_stmt 1              # parallel-rne.mlir:705:20
	setlt.u r15, r4, r15
	.loc	1 706 20                        # parallel-rne.mlir:706:20
	bneq r15, zero, .LBB0_544
	j .LBB0_560
.LBB0_557:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_545 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r17, 0
	lui r17, 523264
	.loc	1 695 19 is_stmt 1              # parallel-rne.mlir:695:19
	beq r14, zero, .LBB0_549
.LBB0_558:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_545 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	bneq r15, r23, .LBB0_550
	j .LBB0_551
.LBB0_559:                              #   in Loop: Header=BB0_545 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r14, r10, r5
	.loc	1 705 20 is_stmt 1              # parallel-rne.mlir:705:20
	setlt.u r15, r4, r15
	.loc	1 706 20                        # parallel-rne.mlir:706:20
	bneq r15, zero, .LBB0_544
.LBB0_560:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_545 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r14, r10, 16
	andi r14, r14, 1
	add.s r10, r10, r14
	add.s r10, r10, r12
	and r14, r10, r22
	j .LBB0_544
.LBB0_561:                              # %vector.body200.preheader
                                        #   in Loop: Header=BB0_542 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_563
.LBB0_562:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 675 11 is_stmt 1              # parallel-rne.mlir:675:11
	load.d r[16:17], -56(r30)               # 8-byte Folded Reload
	addli.d r[9:10], r[9:10], 4
	seteq.d r2, r[9:10], r[16:17]
	.loc	1 708 13                        # parallel-rne.mlir:708:13
	add.s r16, r1, r24
	stores.w r8, 12(r16)
	stores.w r14, 8(r16)
	stores.w r15, 4(r16)
	stores.w r26, 0(r16)
	.loc	1 675 11                        # parallel-rne.mlir:675:11
	bneq r2, zero, .LBB0_541
.LBB0_563:                              # %vector.body200
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_542 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	add.ul r[14:15], r[9:10], r[6:7]
	lui r25, 523264
	lui r21, 523264
	slli r24, r14, 2
	add.s r8, r11, r24
	.loc	1 677 19                        # parallel-rne.mlir:677:19
	add.s r2, r18, r24
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	loads.w r14, 0(r8)
	.loc	1 677 19                        # parallel-rne.mlir:677:19
	loads.w r15, 0(r2)
	.loc	1 683 19                        # parallel-rne.mlir:683:19
	and r14, r14, r3
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	and r15, r15, r3
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	seteq r16, r14, r23
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	seteq r20, r14, zero
	.loc	1 685 19                        # parallel-rne.mlir:685:19
	seteq r17, r15, zero
	.loc	1 687 19                        # parallel-rne.mlir:687:19
	seteq r19, r15, r23
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	max.u r14, r14, r15
	setlt.u r15, r23, r14
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	and r14, r16, r17
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	and r16, r20, r19
	.loc	1 690 19                        # parallel-rne.mlir:690:19
	or r16, r14, r16
	.loc	1 678 19                        # parallel-rne.mlir:678:19
	add.s r14, r13, r24
	.loc	1 694 19                        # parallel-rne.mlir:694:19
	or r15, r15, r16
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	bneq r15, zero, .LBB0_565
# %bb.564:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r21, 0(r14)
.LBB0_565:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	loads.w r15, 4(r8)
	loads.w r16, 4(r2)
	and r15, r15, r3
	and r16, r16, r3
	seteq r17, r15, r23
	seteq r26, r15, zero
	seteq r19, r16, zero
	seteq r20, r16, r23
	max.u r15, r15, r16
	setlt.u r15, r23, r15
	and r16, r17, r19
	and r17, r26, r20
	or r16, r16, r17
	or r15, r15, r16
	lui r16, 523264
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	bneq r15, zero, .LBB0_567
# %bb.566:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 4(r14)
.LBB0_567:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	loads.w r15, 8(r8)
	loads.w r17, 8(r2)
	and r15, r15, r3
	and r17, r17, r3
	seteq r19, r15, r23
	seteq r27, r15, zero
	seteq r20, r17, zero
	seteq r26, r17, r23
	max.u r15, r15, r17
	setlt.u r15, r23, r15
	and r17, r19, r20
	and r19, r27, r26
	or r17, r17, r19
	or r15, r15, r17
	lui r17, 523264
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	bneq r15, zero, .LBB0_569
# %bb.568:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 8(r14)
.LBB0_569:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	loads.w r8, 12(r8)
	loads.w r2, 12(r2)
	and r8, r8, r3
	and r2, r2, r3
	seteq r15, r8, r23
	seteq r19, r2, zero
	seteq r20, r2, r23
	seteq r26, r8, zero
	max.u r2, r8, r2
	setlt.u r2, r23, r2
	and r8, r15, r19
	and r15, r26, r20
	or r8, r8, r15
	or r2, r2, r8
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	bneq r2, zero, .LBB0_571
# %bb.570:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 12(r14)
.LBB0_571:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 696 19 is_stmt 1              # parallel-rne.mlir:696:19
	and r2, r25, r3
	.loc	1 698 20                        # parallel-rne.mlir:698:20
	setlt.u r8, r23, r2
	.loc	1 699 20                        # parallel-rne.mlir:699:20
	bneq r8, zero, .LBB0_573
# %bb.572:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r8, r25, 0
	j .LBB0_574
.LBB0_573:                              #   in Loop: Header=BB0_563 Depth=3
	or r8, r25, r5
.LBB0_574:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	and r19, r17, r3
	setlt.u r14, r23, r19
	.loc	1 699 20                        # parallel-rne.mlir:699:20
	bneq r14, zero, .LBB0_576
# %bb.575:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r14, r17, 0
	j .LBB0_577
.LBB0_576:                              #   in Loop: Header=BB0_563 Depth=3
	or r14, r17, r5
.LBB0_577:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	and r20, r16, r3
	setlt.u r15, r23, r20
	.loc	1 699 20                        # parallel-rne.mlir:699:20
	bneq r15, zero, .LBB0_579
# %bb.578:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r15, r16, 0
	j .LBB0_580
.LBB0_579:                              #   in Loop: Header=BB0_563 Depth=3
	or r15, r16, r5
.LBB0_580:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	and r27, r21, r3
	setlt.u r26, r23, r27
	.loc	1 699 20                        # parallel-rne.mlir:699:20
	bneq r26, zero, .LBB0_582
# %bb.581:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r26, r21, 0
	.loc	1 705 20 is_stmt 1              # parallel-rne.mlir:705:20
	setlt.u r27, r4, r27
	.loc	1 706 20                        # parallel-rne.mlir:706:20
	beq r27, zero, .LBB0_583
	j .LBB0_584
.LBB0_582:                              #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r21, r5
	.loc	1 705 20 is_stmt 1              # parallel-rne.mlir:705:20
	setlt.u r27, r4, r27
	.loc	1 706 20                        # parallel-rne.mlir:706:20
	bneq r27, zero, .LBB0_584
.LBB0_583:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r26, r21, 16
	andi r26, r26, 1
	add.s r21, r21, r26
	add.s r21, r21, r12
	and r26, r21, r22
.LBB0_584:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	setlt.u r20, r4, r20
	.loc	1 706 20                        # parallel-rne.mlir:706:20
	beq r20, zero, .LBB0_587
# %bb.585:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r16, r4, r19
	.loc	1 706 20                        # parallel-rne.mlir:706:20
	beq r16, zero, .LBB0_588
.LBB0_586:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r2
	.loc	1 706 20                        # parallel-rne.mlir:706:20
	bneq r2, zero, .LBB0_562
	j .LBB0_589
.LBB0_587:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r15, r16, 16
	andi r15, r15, 1
	add.s r15, r16, r15
	add.s r15, r15, r12
	and r15, r15, r22
	setlt.u r16, r4, r19
	.loc	1 706 20                        # parallel-rne.mlir:706:20
	bneq r16, zero, .LBB0_586
.LBB0_588:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r14, r17, 16
	andi r14, r14, 1
	add.s r14, r17, r14
	add.s r14, r14, r12
	and r14, r14, r22
	setlt.u r2, r4, r2
	.loc	1 706 20                        # parallel-rne.mlir:706:20
	bneq r2, zero, .LBB0_562
.LBB0_589:                              # %vector.body200
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r25, 16
	andi r2, r2, 1
	add.s r2, r25, r2
	add.s r2, r2, r12
	and r8, r2, r22
	j .LBB0_562
.LBB0_590:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	.loc	1 667 7                         # parallel-rne.mlir:667:7
	mfence { sm }
	.loc	1 713 7                         # parallel-rne.mlir:713:7
	loadli.w r2,  -160(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_485
.LBB0_591:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -144(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -148(r30)                 # 4-byte Folded Reload
	.loc	1 713 7                         # parallel-rne.mlir:713:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	addli r6, zero, 8
	zext_int2long r[7:8], r6
	loadli.w r6,  -140(r30)                 # 4-byte Folded Reload
	or r28, r2, r6
	j .LBB0_593
.LBB0_592:                              # %middle.block191
                                        #   in Loop: Header=BB0_593 Depth=2
	.loc	1 720 9 is_stmt 1               # parallel-rne.mlir:720:9
	load.d r[6:7], -112(r30)                # 8-byte Folded Reload
	load.d r[8:9], -120(r30)                # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	addli.d r[7:8], r[6:7], 0
	beq r2, zero, .LBB0_641
.LBB0_593:                              # %.preheader67
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_614 Depth 3
                                        #       Child Loop BB0_596 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[7:8], -120(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[7:8], r14
	.loc	1 721 11 is_stmt 1              # parallel-rne.mlir:721:11
	beq r28, zero, .LBB0_612
# %bb.594:                              # %scalar.ph183.preheader
                                        #   in Loop: Header=BB0_593 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_596
.LBB0_595:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 721 11                        # parallel-rne.mlir:721:11
	load.d r[15:16], -64(r30)               # 8-byte Folded Reload
	.loc	1 754 13 is_stmt 1              # parallel-rne.mlir:754:13
	add.s r2, r1, r2
	stores.w r14, 0(r2)
	.loc	1 721 11                        # parallel-rne.mlir:721:11
	setlt.ul r10, r[8:9], r[15:16]
	addli.d r[8:9], r[8:9], 1
	beq r10, zero, .LBB0_592
.LBB0_596:                              # %scalar.ph183
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_593 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 722 19                        # parallel-rne.mlir:722:19
	add.ul r[14:15], r[8:9], r[6:7]
	lui r16, 523264
	slli r2, r14, 2
	.loc	1 723 19                        # parallel-rne.mlir:723:19
	add.s r10, r18, r2
	.loc	1 724 19                        # parallel-rne.mlir:724:19
	add.s r14, r13, r2
	.loc	1 723 19                        # parallel-rne.mlir:723:19
	loads.w r10, 0(r10)
	.loc	1 724 19                        # parallel-rne.mlir:724:19
	loads.w r17, 0(r14)
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	and r14, r10, r3
	lui r10, 523264
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	beq r14, r23, .LBB0_598
# %bb.597:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r17, 0
.LBB0_598:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_596 Depth=3
	add.s r15, r11, r2
	loads.w r15, 0(r15)
	and r15, r15, r3
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	bneq r15, zero, .LBB0_608
# %bb.599:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r17, 523264
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	bneq r14, zero, .LBB0_609
.LBB0_600:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_596 Depth=3
	beq r15, r23, .LBB0_602
.LBB0_601:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r16, 0
.LBB0_602:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_596 Depth=3
	setlt.u r16, r23, r14
	lui r14, 523264
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	bneq r16, zero, .LBB0_604
# %bb.603:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r17, 0
.LBB0_604:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_596 Depth=3
	setlt.u r15, r23, r15
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	bneq r15, zero, .LBB0_606
# %bb.605:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r14, 0
.LBB0_606:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 742 19 is_stmt 1              # parallel-rne.mlir:742:19
	and r15, r10, r3
	.loc	1 744 20                        # parallel-rne.mlir:744:20
	setlt.u r14, r23, r15
	.loc	1 745 20                        # parallel-rne.mlir:745:20
	bneq r14, zero, .LBB0_610
# %bb.607:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r14, r10, 0
	.loc	1 751 20 is_stmt 1              # parallel-rne.mlir:751:20
	setlt.u r15, r4, r15
	.loc	1 752 20                        # parallel-rne.mlir:752:20
	bneq r15, zero, .LBB0_595
	j .LBB0_611
.LBB0_608:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r17, 0
	lui r17, 523264
	.loc	1 741 19 is_stmt 1              # parallel-rne.mlir:741:19
	beq r14, zero, .LBB0_600
.LBB0_609:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	bneq r15, r23, .LBB0_601
	j .LBB0_602
.LBB0_610:                              #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r14, r10, r5
	.loc	1 751 20 is_stmt 1              # parallel-rne.mlir:751:20
	setlt.u r15, r4, r15
	.loc	1 752 20                        # parallel-rne.mlir:752:20
	bneq r15, zero, .LBB0_595
.LBB0_611:                              # %scalar.ph183
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r14, r10, 16
	andi r14, r14, 1
	add.s r10, r10, r14
	add.s r10, r10, r12
	and r14, r10, r22
	j .LBB0_595
.LBB0_612:                              # %vector.body185.preheader
                                        #   in Loop: Header=BB0_593 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_614
.LBB0_613:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	.loc	1 721 11 is_stmt 1              # parallel-rne.mlir:721:11
	load.d r[19:20], -56(r30)               # 8-byte Folded Reload
	addli.d r[9:10], r[9:10], 4
	.loc	1 754 13                        # parallel-rne.mlir:754:13
	add.s r16, r1, r16
	stores.w r8, 12(r16)
	stores.w r14, 8(r16)
	stores.w r15, 4(r16)
	stores.w r26, 0(r16)
	.loc	1 721 11                        # parallel-rne.mlir:721:11
	seteq.d r2, r[9:10], r[19:20]
	bneq r2, zero, .LBB0_592
.LBB0_614:                              # %vector.body185
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_593 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 722 19                        # parallel-rne.mlir:722:19
	add.ul r[14:15], r[9:10], r[6:7]
	slli r16, r14, 2
	add.s r8, r11, r16
	.loc	1 723 19                        # parallel-rne.mlir:723:19
	add.s r2, r18, r16
	.loc	1 722 19                        # parallel-rne.mlir:722:19
	loads.w r14, 0(r8)
	.loc	1 723 19                        # parallel-rne.mlir:723:19
	loads.w r15, 0(r2)
	.loc	1 729 19                        # parallel-rne.mlir:729:19
	and r14, r14, r3
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	and r15, r15, r3
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	seteq r17, r14, r23
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	seteq r21, r14, zero
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	seteq r19, r15, zero
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	seteq r20, r15, r23
	.loc	1 739 19                        # parallel-rne.mlir:739:19
	max.u r14, r14, r15
	setlt.u r15, r23, r14
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	and r14, r17, r19
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	and r17, r21, r20
	lui r21, 523264
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	or r17, r14, r17
	.loc	1 724 19                        # parallel-rne.mlir:724:19
	add.s r14, r13, r16
	.loc	1 740 19                        # parallel-rne.mlir:740:19
	or r15, r15, r17
	lui r17, 523264
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	bneq r15, zero, .LBB0_616
# %bb.615:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r21, 0(r14)
.LBB0_616:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	loads.w r15, 4(r8)
	loads.w r19, 4(r2)
	and r15, r15, r3
	and r19, r19, r3
	seteq r20, r15, r23
	seteq r26, r15, zero
	seteq r24, r19, zero
	seteq r25, r19, r23
	max.u r15, r15, r19
	setlt.u r15, r23, r15
	and r19, r20, r24
	and r20, r26, r25
	lui r24, 523264
	or r19, r19, r20
	or r15, r15, r19
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	bneq r15, zero, .LBB0_618
# %bb.617:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 4(r14)
.LBB0_618:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	loads.w r15, 8(r8)
	loads.w r19, 8(r2)
	and r15, r15, r3
	and r19, r19, r3
	seteq r20, r15, r23
	seteq r27, r15, zero
	seteq r25, r19, zero
	seteq r26, r19, r23
	max.u r15, r15, r19
	setlt.u r15, r23, r15
	and r19, r20, r25
	and r20, r27, r26
	lui r25, 523264
	or r19, r19, r20
	or r15, r15, r19
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	bneq r15, zero, .LBB0_620
# %bb.619:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 8(r14)
.LBB0_620:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	loads.w r8, 12(r8)
	loads.w r2, 12(r2)
	and r8, r8, r3
	and r2, r2, r3
	seteq r15, r8, r23
	seteq r19, r2, zero
	seteq r20, r2, r23
	seteq r26, r8, zero
	max.u r2, r8, r2
	setlt.u r2, r23, r2
	and r8, r15, r19
	and r15, r26, r20
	or r8, r8, r15
	or r2, r2, r8
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	bneq r2, zero, .LBB0_622
# %bb.621:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r14)
.LBB0_622:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	.loc	1 742 19 is_stmt 1              # parallel-rne.mlir:742:19
	and r2, r17, r3
	.loc	1 744 20                        # parallel-rne.mlir:744:20
	setlt.u r8, r23, r2
	.loc	1 745 20                        # parallel-rne.mlir:745:20
	bneq r8, zero, .LBB0_624
# %bb.623:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r8, r17, 0
	j .LBB0_625
.LBB0_624:                              #   in Loop: Header=BB0_614 Depth=3
	or r8, r17, r5
.LBB0_625:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	and r19, r25, r3
	setlt.u r14, r23, r19
	.loc	1 745 20                        # parallel-rne.mlir:745:20
	bneq r14, zero, .LBB0_627
# %bb.626:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r14, r25, 0
	j .LBB0_628
.LBB0_627:                              #   in Loop: Header=BB0_614 Depth=3
	or r14, r25, r5
.LBB0_628:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	and r20, r24, r3
	setlt.u r15, r23, r20
	.loc	1 745 20                        # parallel-rne.mlir:745:20
	bneq r15, zero, .LBB0_630
# %bb.629:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r15, r24, 0
	j .LBB0_631
.LBB0_630:                              #   in Loop: Header=BB0_614 Depth=3
	or r15, r24, r5
.LBB0_631:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	and r27, r21, r3
	setlt.u r26, r23, r27
	.loc	1 745 20                        # parallel-rne.mlir:745:20
	bneq r26, zero, .LBB0_633
# %bb.632:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r26, r21, 0
	.loc	1 751 20 is_stmt 1              # parallel-rne.mlir:751:20
	setlt.u r27, r4, r27
	.loc	1 752 20                        # parallel-rne.mlir:752:20
	beq r27, zero, .LBB0_634
	j .LBB0_635
.LBB0_633:                              #   in Loop: Header=BB0_614 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r21, r5
	.loc	1 751 20 is_stmt 1              # parallel-rne.mlir:751:20
	setlt.u r27, r4, r27
	.loc	1 752 20                        # parallel-rne.mlir:752:20
	bneq r27, zero, .LBB0_635
.LBB0_634:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r26, r21, 16
	andi r26, r26, 1
	add.s r21, r21, r26
	add.s r21, r21, r12
	and r26, r21, r22
.LBB0_635:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	setlt.u r20, r4, r20
	.loc	1 752 20                        # parallel-rne.mlir:752:20
	beq r20, zero, .LBB0_638
# %bb.636:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r19, r4, r19
	.loc	1 752 20                        # parallel-rne.mlir:752:20
	beq r19, zero, .LBB0_639
.LBB0_637:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r2
	.loc	1 752 20                        # parallel-rne.mlir:752:20
	bneq r2, zero, .LBB0_613
	j .LBB0_640
.LBB0_638:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r15, r24, 16
	andi r15, r15, 1
	add.s r15, r24, r15
	add.s r15, r15, r12
	and r15, r15, r22
	setlt.u r19, r4, r19
	.loc	1 752 20                        # parallel-rne.mlir:752:20
	bneq r19, zero, .LBB0_637
.LBB0_639:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r14, r25, 16
	andi r14, r14, 1
	add.s r14, r25, r14
	add.s r14, r14, r12
	and r14, r14, r22
	setlt.u r2, r4, r2
	.loc	1 752 20                        # parallel-rne.mlir:752:20
	bneq r2, zero, .LBB0_613
.LBB0_640:                              # %vector.body185
                                        #   in Loop: Header=BB0_614 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r17, 16
	andi r2, r2, 1
	add.s r2, r17, r2
	add.s r2, r2, r12
	and r8, r2, r22
	j .LBB0_613
.LBB0_641:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	.loc	1 713 7                         # parallel-rne.mlir:713:7
	mfence { sm }
	.loc	1 759 7                         # parallel-rne.mlir:759:7
	addli r2, zero, 3
	bneq r15, r2, .LBB0_486
.LBB0_642:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -144(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -148(r30)                 # 4-byte Folded Reload
	.loc	1 759 7                         # parallel-rne.mlir:759:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	addli r6, zero, 12
	zext_int2long r[7:8], r6
	loadli.w r6,  -140(r30)                 # 4-byte Folded Reload
	or r28, r2, r6
	j .LBB0_644
.LBB0_643:                              # %middle.block176
                                        #   in Loop: Header=BB0_644 Depth=2
	.loc	1 766 9 is_stmt 1               # parallel-rne.mlir:766:9
	load.d r[6:7], -104(r30)                # 8-byte Folded Reload
	load.d r[8:9], -112(r30)                # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	addli.d r[7:8], r[6:7], 0
	beq r2, zero, .LBB0_690
.LBB0_644:                              # %.preheader66
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_663 Depth 3
                                        #       Child Loop BB0_646 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[7:8], -112(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[7:8], r14
	zext_int2long r[14:15], zero
	.loc	1 767 11 is_stmt 1              # parallel-rne.mlir:767:11
	bneq r28, zero, .LBB0_646
	j .LBB0_663
.LBB0_645:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_646 Depth=3
	load.d r[16:17], -64(r30)               # 8-byte Folded Reload
	.loc	1 800 13                        # parallel-rne.mlir:800:13
	add.s r2, r1, r2
	stores.w r9, 0(r2)
	.loc	1 767 11                        # parallel-rne.mlir:767:11
	setlt.ul r8, r[14:15], r[16:17]
	addli.d r[14:15], r[14:15], 1
	beq r8, zero, .LBB0_643
.LBB0_646:                              # %scalar.ph168
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_644 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 768 19                        # parallel-rne.mlir:768:19
	add.ul r[8:9], r[14:15], r[6:7]
	lui r16, 523264
	slli r2, r8, 2
	.loc	1 769 19                        # parallel-rne.mlir:769:19
	add.s r8, r18, r2
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	add.s r9, r13, r2
	.loc	1 769 19                        # parallel-rne.mlir:769:19
	loads.w r8, 0(r8)
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	loads.w r17, 0(r9)
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	and r9, r8, r3
	lui r8, 523264
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	beq r9, r23, .LBB0_648
# %bb.647:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r17, 0
.LBB0_648:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_646 Depth=3
	add.s r10, r11, r2
	loads.w r10, 0(r10)
	and r10, r10, r3
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	bneq r10, zero, .LBB0_658
# %bb.649:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r17, 523264
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	bneq r9, zero, .LBB0_659
.LBB0_650:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_646 Depth=3
	beq r10, r23, .LBB0_652
.LBB0_651:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r16, 0
.LBB0_652:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_646 Depth=3
	setlt.u r16, r23, r9
	lui r9, 523264
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	bneq r16, zero, .LBB0_654
# %bb.653:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r17, 0
.LBB0_654:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_646 Depth=3
	setlt.u r10, r23, r10
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	bneq r10, zero, .LBB0_656
# %bb.655:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
.LBB0_656:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_646 Depth=3
	.loc	1 788 19 is_stmt 1              # parallel-rne.mlir:788:19
	and r10, r8, r3
	.loc	1 790 20                        # parallel-rne.mlir:790:20
	setlt.u r9, r23, r10
	.loc	1 791 20                        # parallel-rne.mlir:791:20
	bneq r9, zero, .LBB0_660
# %bb.657:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r9, r8, 0
	.loc	1 797 20 is_stmt 1              # parallel-rne.mlir:797:20
	setlt.u r10, r4, r10
	.loc	1 798 20                        # parallel-rne.mlir:798:20
	bneq r10, zero, .LBB0_645
	j .LBB0_661
.LBB0_658:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r17, 0
	lui r17, 523264
	.loc	1 787 19 is_stmt 1              # parallel-rne.mlir:787:19
	beq r9, zero, .LBB0_650
.LBB0_659:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	bneq r10, r23, .LBB0_651
	j .LBB0_652
.LBB0_660:                              #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r9, r8, r5
	.loc	1 797 20 is_stmt 1              # parallel-rne.mlir:797:20
	setlt.u r10, r4, r10
	.loc	1 798 20                        # parallel-rne.mlir:798:20
	bneq r10, zero, .LBB0_645
.LBB0_661:                              # %scalar.ph168
                                        #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r12
	and r9, r8, r22
	j .LBB0_645
.LBB0_662:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 767 11 is_stmt 1              # parallel-rne.mlir:767:11
	load.d r[19:20], -56(r30)               # 8-byte Folded Reload
	addli.d r[14:15], r[14:15], 4
	.loc	1 800 13                        # parallel-rne.mlir:800:13
	add.s r16, r1, r16
	stores.w r8, 12(r16)
	stores.w r9, 8(r16)
	stores.w r10, 4(r16)
	stores.w r26, 0(r16)
	.loc	1 767 11                        # parallel-rne.mlir:767:11
	seteq.d r2, r[14:15], r[19:20]
	bneq r2, zero, .LBB0_643
.LBB0_663:                              # %vector.body170
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_644 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 768 19                        # parallel-rne.mlir:768:19
	add.ul r[8:9], r[14:15], r[6:7]
	slli r16, r8, 2
	add.s r8, r11, r16
	.loc	1 769 19                        # parallel-rne.mlir:769:19
	add.s r2, r18, r16
	.loc	1 768 19                        # parallel-rne.mlir:768:19
	loads.w r9, 0(r8)
	.loc	1 769 19                        # parallel-rne.mlir:769:19
	loads.w r10, 0(r2)
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	and r9, r9, r3
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	and r10, r10, r3
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	seteq r17, r9, r23
	.loc	1 780 19                        # parallel-rne.mlir:780:19
	seteq r21, r9, zero
	.loc	1 777 19                        # parallel-rne.mlir:777:19
	seteq r19, r10, zero
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	seteq r20, r10, r23
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	max.u r9, r9, r10
	setlt.u r10, r23, r9
	.loc	1 778 19                        # parallel-rne.mlir:778:19
	and r9, r17, r19
	.loc	1 781 19                        # parallel-rne.mlir:781:19
	and r17, r21, r20
	lui r21, 523264
	.loc	1 782 19                        # parallel-rne.mlir:782:19
	or r17, r9, r17
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	add.s r9, r13, r16
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	or r10, r10, r17
	lui r17, 523264
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	bneq r10, zero, .LBB0_665
# %bb.664:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r21, 0(r9)
.LBB0_665:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	loads.w r10, 4(r8)
	loads.w r19, 4(r2)
	and r10, r10, r3
	and r19, r19, r3
	seteq r20, r10, r23
	seteq r26, r10, zero
	seteq r24, r19, zero
	seteq r25, r19, r23
	max.u r10, r10, r19
	setlt.u r10, r23, r10
	and r19, r20, r24
	and r20, r26, r25
	lui r24, 523264
	or r19, r19, r20
	or r10, r10, r19
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	bneq r10, zero, .LBB0_667
# %bb.666:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 4(r9)
.LBB0_667:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	loads.w r10, 8(r8)
	loads.w r19, 8(r2)
	and r10, r10, r3
	and r19, r19, r3
	seteq r20, r10, r23
	seteq r27, r10, zero
	seteq r25, r19, zero
	seteq r26, r19, r23
	max.u r10, r10, r19
	setlt.u r10, r23, r10
	and r19, r20, r25
	and r20, r27, r26
	lui r25, 523264
	or r19, r19, r20
	or r10, r10, r19
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	bneq r10, zero, .LBB0_669
# %bb.668:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 8(r9)
.LBB0_669:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	loads.w r8, 12(r8)
	loads.w r2, 12(r2)
	and r8, r8, r3
	and r2, r2, r3
	seteq r10, r8, r23
	seteq r19, r2, zero
	seteq r20, r2, r23
	seteq r26, r8, zero
	max.u r2, r8, r2
	setlt.u r2, r23, r2
	and r8, r10, r19
	and r10, r26, r20
	or r8, r8, r10
	or r2, r2, r8
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	bneq r2, zero, .LBB0_671
# %bb.670:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r9)
.LBB0_671:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 788 19 is_stmt 1              # parallel-rne.mlir:788:19
	and r2, r17, r3
	.loc	1 790 20                        # parallel-rne.mlir:790:20
	setlt.u r8, r23, r2
	.loc	1 791 20                        # parallel-rne.mlir:791:20
	bneq r8, zero, .LBB0_673
# %bb.672:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r8, r17, 0
	j .LBB0_674
.LBB0_673:                              #   in Loop: Header=BB0_663 Depth=3
	or r8, r17, r5
.LBB0_674:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	and r19, r25, r3
	setlt.u r9, r23, r19
	.loc	1 791 20                        # parallel-rne.mlir:791:20
	bneq r9, zero, .LBB0_676
# %bb.675:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r9, r25, 0
	j .LBB0_677
.LBB0_676:                              #   in Loop: Header=BB0_663 Depth=3
	or r9, r25, r5
.LBB0_677:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	and r20, r24, r3
	setlt.u r10, r23, r20
	.loc	1 791 20                        # parallel-rne.mlir:791:20
	bneq r10, zero, .LBB0_679
# %bb.678:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r24, 0
	j .LBB0_680
.LBB0_679:                              #   in Loop: Header=BB0_663 Depth=3
	or r10, r24, r5
.LBB0_680:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	and r27, r21, r3
	setlt.u r26, r23, r27
	.loc	1 791 20                        # parallel-rne.mlir:791:20
	bneq r26, zero, .LBB0_682
# %bb.681:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r26, r21, 0
	.loc	1 797 20 is_stmt 1              # parallel-rne.mlir:797:20
	setlt.u r27, r4, r27
	.loc	1 798 20                        # parallel-rne.mlir:798:20
	beq r27, zero, .LBB0_683
	j .LBB0_684
.LBB0_682:                              #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r21, r5
	.loc	1 797 20 is_stmt 1              # parallel-rne.mlir:797:20
	setlt.u r27, r4, r27
	.loc	1 798 20                        # parallel-rne.mlir:798:20
	bneq r27, zero, .LBB0_684
.LBB0_683:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r26, r21, 16
	andi r26, r26, 1
	add.s r21, r21, r26
	add.s r21, r21, r12
	and r26, r21, r22
.LBB0_684:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	setlt.u r20, r4, r20
	.loc	1 798 20                        # parallel-rne.mlir:798:20
	beq r20, zero, .LBB0_687
# %bb.685:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r19, r4, r19
	.loc	1 798 20                        # parallel-rne.mlir:798:20
	beq r19, zero, .LBB0_688
.LBB0_686:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r2
	.loc	1 798 20                        # parallel-rne.mlir:798:20
	bneq r2, zero, .LBB0_662
	j .LBB0_689
.LBB0_687:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r10, r24, 16
	andi r10, r10, 1
	add.s r10, r24, r10
	add.s r10, r10, r12
	and r10, r10, r22
	setlt.u r19, r4, r19
	.loc	1 798 20                        # parallel-rne.mlir:798:20
	bneq r19, zero, .LBB0_686
.LBB0_688:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r12
	and r9, r9, r22
	setlt.u r2, r4, r2
	.loc	1 798 20                        # parallel-rne.mlir:798:20
	bneq r2, zero, .LBB0_662
.LBB0_689:                              # %vector.body170
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r17, 16
	andi r2, r2, 1
	add.s r2, r17, r2
	add.s r2, r2, r12
	and r8, r2, r22
	j .LBB0_662
.LBB0_690:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	.loc	1 759 7                         # parallel-rne.mlir:759:7
	mfence { sm }
	.loc	1 805 7                         # parallel-rne.mlir:805:7
	loadli.w r2,  -156(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_487
.LBB0_691:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -144(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -148(r30)                 # 4-byte Folded Reload
	.loc	1 805 7                         # parallel-rne.mlir:805:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	zext_int2long r[7:8], r6
	loadli.w r6,  -140(r30)                 # 4-byte Folded Reload
	or r28, r2, r6
	j .LBB0_693
.LBB0_692:                              # %middle.block161
                                        #   in Loop: Header=BB0_693 Depth=2
	.loc	1 812 9 is_stmt 1               # parallel-rne.mlir:812:9
	load.d r[6:7], -96(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -104(r30)                # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	addli.d r[7:8], r[6:7], 0
	beq r2, zero, .LBB0_739
.LBB0_693:                              # %.preheader65
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_712 Depth 3
                                        #       Child Loop BB0_695 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[7:8], -104(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[7:8], r14
	zext_int2long r[14:15], zero
	.loc	1 813 11 is_stmt 1              # parallel-rne.mlir:813:11
	bneq r28, zero, .LBB0_695
	j .LBB0_712
.LBB0_694:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_695 Depth=3
	load.d r[16:17], -64(r30)               # 8-byte Folded Reload
	.loc	1 846 13                        # parallel-rne.mlir:846:13
	add.s r2, r1, r2
	stores.w r9, 0(r2)
	.loc	1 813 11                        # parallel-rne.mlir:813:11
	setlt.ul r8, r[14:15], r[16:17]
	addli.d r[14:15], r[14:15], 1
	beq r8, zero, .LBB0_692
.LBB0_695:                              # %scalar.ph153
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_693 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	add.ul r[8:9], r[14:15], r[6:7]
	lui r16, 523264
	slli r2, r8, 2
	.loc	1 815 19                        # parallel-rne.mlir:815:19
	add.s r8, r18, r2
	.loc	1 816 19                        # parallel-rne.mlir:816:19
	add.s r9, r13, r2
	.loc	1 815 19                        # parallel-rne.mlir:815:19
	loads.w r8, 0(r8)
	.loc	1 816 19                        # parallel-rne.mlir:816:19
	loads.w r17, 0(r9)
	.loc	1 819 19                        # parallel-rne.mlir:819:19
	and r9, r8, r3
	lui r8, 523264
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	beq r9, r23, .LBB0_697
# %bb.696:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_695 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r17, 0
.LBB0_697:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_695 Depth=3
	add.s r10, r11, r2
	loads.w r10, 0(r10)
	and r10, r10, r3
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	bneq r10, zero, .LBB0_707
# %bb.698:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_695 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r17, 523264
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	bneq r9, zero, .LBB0_708
.LBB0_699:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_695 Depth=3
	beq r10, r23, .LBB0_701
.LBB0_700:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_695 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r16, 0
.LBB0_701:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_695 Depth=3
	setlt.u r16, r23, r9
	lui r9, 523264
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	bneq r16, zero, .LBB0_703
# %bb.702:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_695 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r17, 0
.LBB0_703:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_695 Depth=3
	setlt.u r10, r23, r10
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	bneq r10, zero, .LBB0_705
# %bb.704:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_695 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
.LBB0_705:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_695 Depth=3
	.loc	1 834 19 is_stmt 1              # parallel-rne.mlir:834:19
	and r10, r8, r3
	.loc	1 836 20                        # parallel-rne.mlir:836:20
	setlt.u r9, r23, r10
	.loc	1 837 20                        # parallel-rne.mlir:837:20
	bneq r9, zero, .LBB0_709
# %bb.706:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_695 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r9, r8, 0
	.loc	1 843 20 is_stmt 1              # parallel-rne.mlir:843:20
	setlt.u r10, r4, r10
	.loc	1 844 20                        # parallel-rne.mlir:844:20
	bneq r10, zero, .LBB0_694
	j .LBB0_710
.LBB0_707:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_695 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r17, 0
	lui r17, 523264
	.loc	1 833 19 is_stmt 1              # parallel-rne.mlir:833:19
	beq r9, zero, .LBB0_699
.LBB0_708:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_695 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	bneq r10, r23, .LBB0_700
	j .LBB0_701
.LBB0_709:                              #   in Loop: Header=BB0_695 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r9, r8, r5
	.loc	1 843 20 is_stmt 1              # parallel-rne.mlir:843:20
	setlt.u r10, r4, r10
	.loc	1 844 20                        # parallel-rne.mlir:844:20
	bneq r10, zero, .LBB0_694
.LBB0_710:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_695 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r12
	and r9, r8, r22
	j .LBB0_694
.LBB0_711:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	.loc	1 813 11 is_stmt 1              # parallel-rne.mlir:813:11
	load.d r[19:20], -56(r30)               # 8-byte Folded Reload
	addli.d r[14:15], r[14:15], 4
	.loc	1 846 13                        # parallel-rne.mlir:846:13
	add.s r16, r1, r16
	stores.w r8, 12(r16)
	stores.w r9, 8(r16)
	stores.w r10, 4(r16)
	stores.w r26, 0(r16)
	.loc	1 813 11                        # parallel-rne.mlir:813:11
	seteq.d r2, r[14:15], r[19:20]
	bneq r2, zero, .LBB0_692
.LBB0_712:                              # %vector.body155
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_693 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	add.ul r[8:9], r[14:15], r[6:7]
	slli r16, r8, 2
	add.s r8, r11, r16
	.loc	1 815 19                        # parallel-rne.mlir:815:19
	add.s r2, r18, r16
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	loads.w r9, 0(r8)
	.loc	1 815 19                        # parallel-rne.mlir:815:19
	loads.w r10, 0(r2)
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	and r9, r9, r3
	.loc	1 819 19                        # parallel-rne.mlir:819:19
	and r10, r10, r3
	.loc	1 822 19                        # parallel-rne.mlir:822:19
	seteq r17, r9, r23
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	seteq r21, r9, zero
	.loc	1 823 19                        # parallel-rne.mlir:823:19
	seteq r19, r10, zero
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	seteq r20, r10, r23
	.loc	1 831 19                        # parallel-rne.mlir:831:19
	max.u r9, r9, r10
	setlt.u r10, r23, r9
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	and r9, r17, r19
	.loc	1 827 19                        # parallel-rne.mlir:827:19
	and r17, r21, r20
	lui r21, 523264
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	or r17, r9, r17
	.loc	1 816 19                        # parallel-rne.mlir:816:19
	add.s r9, r13, r16
	.loc	1 832 19                        # parallel-rne.mlir:832:19
	or r10, r10, r17
	lui r17, 523264
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	bneq r10, zero, .LBB0_714
# %bb.713:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r21, 0(r9)
.LBB0_714:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	loads.w r10, 4(r8)
	loads.w r19, 4(r2)
	and r10, r10, r3
	and r19, r19, r3
	seteq r20, r10, r23
	seteq r26, r10, zero
	seteq r24, r19, zero
	seteq r25, r19, r23
	max.u r10, r10, r19
	setlt.u r10, r23, r10
	and r19, r20, r24
	and r20, r26, r25
	lui r24, 523264
	or r19, r19, r20
	or r10, r10, r19
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	bneq r10, zero, .LBB0_716
# %bb.715:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 4(r9)
.LBB0_716:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	loads.w r10, 8(r8)
	loads.w r19, 8(r2)
	and r10, r10, r3
	and r19, r19, r3
	seteq r20, r10, r23
	seteq r27, r10, zero
	seteq r25, r19, zero
	seteq r26, r19, r23
	max.u r10, r10, r19
	setlt.u r10, r23, r10
	and r19, r20, r25
	and r20, r27, r26
	lui r25, 523264
	or r19, r19, r20
	or r10, r10, r19
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	bneq r10, zero, .LBB0_718
# %bb.717:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 8(r9)
.LBB0_718:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	loads.w r8, 12(r8)
	loads.w r2, 12(r2)
	and r8, r8, r3
	and r2, r2, r3
	seteq r10, r8, r23
	seteq r19, r2, zero
	seteq r20, r2, r23
	seteq r26, r8, zero
	max.u r2, r8, r2
	setlt.u r2, r23, r2
	and r8, r10, r19
	and r10, r26, r20
	or r8, r8, r10
	or r2, r2, r8
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	bneq r2, zero, .LBB0_720
# %bb.719:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r9)
.LBB0_720:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	.loc	1 834 19 is_stmt 1              # parallel-rne.mlir:834:19
	and r2, r17, r3
	.loc	1 836 20                        # parallel-rne.mlir:836:20
	setlt.u r8, r23, r2
	.loc	1 837 20                        # parallel-rne.mlir:837:20
	bneq r8, zero, .LBB0_722
# %bb.721:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r8, r17, 0
	j .LBB0_723
.LBB0_722:                              #   in Loop: Header=BB0_712 Depth=3
	or r8, r17, r5
.LBB0_723:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	and r19, r25, r3
	setlt.u r9, r23, r19
	.loc	1 837 20                        # parallel-rne.mlir:837:20
	bneq r9, zero, .LBB0_725
# %bb.724:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r9, r25, 0
	j .LBB0_726
.LBB0_725:                              #   in Loop: Header=BB0_712 Depth=3
	or r9, r25, r5
.LBB0_726:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	and r20, r24, r3
	setlt.u r10, r23, r20
	.loc	1 837 20                        # parallel-rne.mlir:837:20
	bneq r10, zero, .LBB0_728
# %bb.727:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r24, 0
	j .LBB0_729
.LBB0_728:                              #   in Loop: Header=BB0_712 Depth=3
	or r10, r24, r5
.LBB0_729:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	and r27, r21, r3
	setlt.u r26, r23, r27
	.loc	1 837 20                        # parallel-rne.mlir:837:20
	bneq r26, zero, .LBB0_731
# %bb.730:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r26, r21, 0
	.loc	1 843 20 is_stmt 1              # parallel-rne.mlir:843:20
	setlt.u r27, r4, r27
	.loc	1 844 20                        # parallel-rne.mlir:844:20
	beq r27, zero, .LBB0_732
	j .LBB0_733
.LBB0_731:                              #   in Loop: Header=BB0_712 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r21, r5
	.loc	1 843 20 is_stmt 1              # parallel-rne.mlir:843:20
	setlt.u r27, r4, r27
	.loc	1 844 20                        # parallel-rne.mlir:844:20
	bneq r27, zero, .LBB0_733
.LBB0_732:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r26, r21, 16
	andi r26, r26, 1
	add.s r21, r21, r26
	add.s r21, r21, r12
	and r26, r21, r22
.LBB0_733:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	setlt.u r20, r4, r20
	.loc	1 844 20                        # parallel-rne.mlir:844:20
	beq r20, zero, .LBB0_736
# %bb.734:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r19, r4, r19
	.loc	1 844 20                        # parallel-rne.mlir:844:20
	beq r19, zero, .LBB0_737
.LBB0_735:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r2
	.loc	1 844 20                        # parallel-rne.mlir:844:20
	bneq r2, zero, .LBB0_711
	j .LBB0_738
.LBB0_736:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r10, r24, 16
	andi r10, r10, 1
	add.s r10, r24, r10
	add.s r10, r10, r12
	and r10, r10, r22
	setlt.u r19, r4, r19
	.loc	1 844 20                        # parallel-rne.mlir:844:20
	bneq r19, zero, .LBB0_735
.LBB0_737:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r12
	and r9, r9, r22
	setlt.u r2, r4, r2
	.loc	1 844 20                        # parallel-rne.mlir:844:20
	bneq r2, zero, .LBB0_711
.LBB0_738:                              # %vector.body155
                                        #   in Loop: Header=BB0_712 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r17, 16
	andi r2, r2, 1
	add.s r2, r17, r2
	add.s r2, r2, r12
	and r8, r2, r22
	j .LBB0_711
.LBB0_739:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	.loc	1 805 7                         # parallel-rne.mlir:805:7
	mfence { sm }
	.loc	1 851 7                         # parallel-rne.mlir:851:7
	bneq r15, r14, .LBB0_488
.LBB0_740:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -144(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -148(r30)                 # 4-byte Folded Reload
	.loc	1 851 7                         # parallel-rne.mlir:851:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	addli r6, zero, 20
	zext_int2long r[7:8], r6
	loadli.w r6,  -140(r30)                 # 4-byte Folded Reload
	or r28, r2, r6
	j .LBB0_742
.LBB0_741:                              # %middle.block146
                                        #   in Loop: Header=BB0_742 Depth=2
	.loc	1 858 9 is_stmt 1               # parallel-rne.mlir:858:9
	load.d r[6:7], -88(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -96(r30)                 # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	addli.d r[7:8], r[6:7], 0
	beq r2, zero, .LBB0_788
.LBB0_742:                              # %.preheader64
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_761 Depth 3
                                        #       Child Loop BB0_744 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[9:10], r[7:8], r14
	zext_int2long r[14:15], zero
	.loc	1 859 11 is_stmt 1              # parallel-rne.mlir:859:11
	store.d r[7:8], -96(r30)                # 8-byte Folded Spill
	bneq r28, zero, .LBB0_744
	j .LBB0_761
.LBB0_743:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_744 Depth=3
	load.d r[16:17], -64(r30)               # 8-byte Folded Reload
	.loc	1 892 13                        # parallel-rne.mlir:892:13
	add.s r2, r1, r2
	stores.w r7, 0(r2)
	.loc	1 859 11                        # parallel-rne.mlir:859:11
	setlt.ul r6, r[14:15], r[16:17]
	addli.d r[14:15], r[14:15], 1
	beq r6, zero, .LBB0_741
.LBB0_744:                              # %scalar.ph138
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_742 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 860 19                        # parallel-rne.mlir:860:19
	add.ul r[6:7], r[14:15], r[9:10]
	lui r16, 523264
	slli r2, r6, 2
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	add.s r6, r18, r2
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	add.s r7, r13, r2
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	loads.w r6, 0(r6)
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	loads.w r17, 0(r7)
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	and r7, r6, r3
	lui r6, 523264
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	beq r7, r23, .LBB0_746
# %bb.745:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r17, 0
.LBB0_746:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_744 Depth=3
	add.s r8, r11, r2
	loads.w r8, 0(r8)
	and r8, r8, r3
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	bneq r8, zero, .LBB0_756
# %bb.747:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r17, 523264
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	bneq r7, zero, .LBB0_757
.LBB0_748:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_744 Depth=3
	beq r8, r23, .LBB0_750
.LBB0_749:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r16, 0
.LBB0_750:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_744 Depth=3
	setlt.u r16, r23, r7
	lui r7, 523264
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	bneq r16, zero, .LBB0_752
# %bb.751:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r17, 0
.LBB0_752:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_744 Depth=3
	setlt.u r8, r23, r8
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	bneq r8, zero, .LBB0_754
# %bb.753:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r7, 0
.LBB0_754:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 880 19 is_stmt 1              # parallel-rne.mlir:880:19
	and r8, r6, r3
	.loc	1 882 20                        # parallel-rne.mlir:882:20
	setlt.u r7, r23, r8
	.loc	1 883 20                        # parallel-rne.mlir:883:20
	bneq r7, zero, .LBB0_758
# %bb.755:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r7, r6, 0
	.loc	1 889 20 is_stmt 1              # parallel-rne.mlir:889:20
	setlt.u r8, r4, r8
	.loc	1 890 20                        # parallel-rne.mlir:890:20
	bneq r8, zero, .LBB0_743
	j .LBB0_759
.LBB0_756:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r17, 0
	lui r17, 523264
	.loc	1 879 19 is_stmt 1              # parallel-rne.mlir:879:19
	beq r7, zero, .LBB0_748
.LBB0_757:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	bneq r8, r23, .LBB0_749
	j .LBB0_750
.LBB0_758:                              #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r7, r6, r5
	.loc	1 889 20 is_stmt 1              # parallel-rne.mlir:889:20
	setlt.u r8, r4, r8
	.loc	1 890 20                        # parallel-rne.mlir:890:20
	bneq r8, zero, .LBB0_743
.LBB0_759:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r12
	and r7, r6, r22
	j .LBB0_743
.LBB0_760:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 859 11 is_stmt 1              # parallel-rne.mlir:859:11
	load.d r[19:20], -56(r30)               # 8-byte Folded Reload
	addli.d r[14:15], r[14:15], 4
	.loc	1 892 13                        # parallel-rne.mlir:892:13
	add.s r16, r1, r16
	stores.w r8, 12(r16)
	stores.w r6, 8(r16)
	stores.w r7, 4(r16)
	stores.w r26, 0(r16)
	.loc	1 859 11                        # parallel-rne.mlir:859:11
	seteq.d r2, r[14:15], r[19:20]
	bneq r2, zero, .LBB0_741
.LBB0_761:                              # %vector.body140
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_742 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 860 19                        # parallel-rne.mlir:860:19
	add.ul r[6:7], r[14:15], r[9:10]
	slli r16, r6, 2
	add.s r8, r11, r16
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	add.s r2, r18, r16
	.loc	1 860 19                        # parallel-rne.mlir:860:19
	loads.w r6, 0(r8)
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	loads.w r7, 0(r2)
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	and r6, r6, r3
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	and r7, r7, r3
	.loc	1 868 19                        # parallel-rne.mlir:868:19
	seteq r17, r6, r23
	.loc	1 872 19                        # parallel-rne.mlir:872:19
	seteq r21, r6, zero
	.loc	1 869 19                        # parallel-rne.mlir:869:19
	seteq r19, r7, zero
	.loc	1 871 19                        # parallel-rne.mlir:871:19
	seteq r20, r7, r23
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	max.u r6, r6, r7
	setlt.u r7, r23, r6
	.loc	1 870 19                        # parallel-rne.mlir:870:19
	and r6, r17, r19
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	and r17, r21, r20
	lui r21, 523264
	.loc	1 874 19                        # parallel-rne.mlir:874:19
	or r17, r6, r17
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	add.s r6, r13, r16
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	or r7, r7, r17
	lui r17, 523264
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	bneq r7, zero, .LBB0_763
# %bb.762:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r21, 0(r6)
.LBB0_763:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	loads.w r7, 4(r8)
	loads.w r19, 4(r2)
	and r7, r7, r3
	and r19, r19, r3
	seteq r20, r7, r23
	seteq r26, r7, zero
	seteq r24, r19, zero
	seteq r25, r19, r23
	max.u r7, r7, r19
	setlt.u r7, r23, r7
	and r19, r20, r24
	and r20, r26, r25
	lui r24, 523264
	or r19, r19, r20
	or r7, r7, r19
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	bneq r7, zero, .LBB0_765
# %bb.764:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 4(r6)
.LBB0_765:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	loads.w r7, 8(r8)
	loads.w r19, 8(r2)
	and r7, r7, r3
	and r19, r19, r3
	seteq r20, r7, r23
	seteq r27, r7, zero
	seteq r25, r19, zero
	seteq r26, r19, r23
	max.u r7, r7, r19
	setlt.u r7, r23, r7
	and r19, r20, r25
	and r20, r27, r26
	lui r25, 523264
	or r19, r19, r20
	or r7, r7, r19
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	bneq r7, zero, .LBB0_767
# %bb.766:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 8(r6)
.LBB0_767:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	loads.w r7, 12(r8)
	loads.w r2, 12(r2)
	and r7, r7, r3
	and r2, r2, r3
	seteq r8, r7, r23
	seteq r19, r2, zero
	seteq r20, r2, r23
	seteq r26, r7, zero
	max.u r2, r7, r2
	setlt.u r2, r23, r2
	and r7, r8, r19
	and r8, r26, r20
	or r7, r7, r8
	or r2, r2, r7
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	bneq r2, zero, .LBB0_769
# %bb.768:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r6)
.LBB0_769:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 880 19 is_stmt 1              # parallel-rne.mlir:880:19
	and r2, r17, r3
	.loc	1 882 20                        # parallel-rne.mlir:882:20
	setlt.u r6, r23, r2
	.loc	1 883 20                        # parallel-rne.mlir:883:20
	bneq r6, zero, .LBB0_771
# %bb.770:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r8, r17, 0
	j .LBB0_772
.LBB0_771:                              #   in Loop: Header=BB0_761 Depth=3
	or r8, r17, r5
.LBB0_772:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	and r19, r25, r3
	setlt.u r6, r23, r19
	.loc	1 883 20                        # parallel-rne.mlir:883:20
	bneq r6, zero, .LBB0_774
# %bb.773:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r25, 0
	j .LBB0_775
.LBB0_774:                              #   in Loop: Header=BB0_761 Depth=3
	or r6, r25, r5
.LBB0_775:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	and r20, r24, r3
	setlt.u r7, r23, r20
	.loc	1 883 20                        # parallel-rne.mlir:883:20
	bneq r7, zero, .LBB0_777
# %bb.776:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r24, 0
	j .LBB0_778
.LBB0_777:                              #   in Loop: Header=BB0_761 Depth=3
	or r7, r24, r5
.LBB0_778:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	and r27, r21, r3
	setlt.u r26, r23, r27
	.loc	1 883 20                        # parallel-rne.mlir:883:20
	bneq r26, zero, .LBB0_780
# %bb.779:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r26, r21, 0
	.loc	1 889 20 is_stmt 1              # parallel-rne.mlir:889:20
	setlt.u r27, r4, r27
	.loc	1 890 20                        # parallel-rne.mlir:890:20
	beq r27, zero, .LBB0_781
	j .LBB0_782
.LBB0_780:                              #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r21, r5
	.loc	1 889 20 is_stmt 1              # parallel-rne.mlir:889:20
	setlt.u r27, r4, r27
	.loc	1 890 20                        # parallel-rne.mlir:890:20
	bneq r27, zero, .LBB0_782
.LBB0_781:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r26, r21, 16
	andi r26, r26, 1
	add.s r21, r21, r26
	add.s r21, r21, r12
	and r26, r21, r22
.LBB0_782:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	setlt.u r20, r4, r20
	.loc	1 890 20                        # parallel-rne.mlir:890:20
	beq r20, zero, .LBB0_785
# %bb.783:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r19, r4, r19
	.loc	1 890 20                        # parallel-rne.mlir:890:20
	beq r19, zero, .LBB0_786
.LBB0_784:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r2
	.loc	1 890 20                        # parallel-rne.mlir:890:20
	bneq r2, zero, .LBB0_760
	j .LBB0_787
.LBB0_785:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r7, r24, 16
	andi r7, r7, 1
	add.s r7, r24, r7
	add.s r7, r7, r12
	and r7, r7, r22
	setlt.u r19, r4, r19
	.loc	1 890 20                        # parallel-rne.mlir:890:20
	bneq r19, zero, .LBB0_784
.LBB0_786:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r12
	and r6, r6, r22
	setlt.u r2, r4, r2
	.loc	1 890 20                        # parallel-rne.mlir:890:20
	bneq r2, zero, .LBB0_760
.LBB0_787:                              # %vector.body140
                                        #   in Loop: Header=BB0_761 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r17, 16
	andi r2, r2, 1
	add.s r2, r17, r2
	add.s r2, r2, r12
	and r8, r2, r22
	j .LBB0_760
.LBB0_788:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	.loc	1 851 7                         # parallel-rne.mlir:851:7
	mfence { sm }
	.loc	1 897 7                         # parallel-rne.mlir:897:7
	addli r2, zero, 6
	bneq r15, r2, .LBB0_838
.LBB0_789:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -144(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -148(r30)                 # 4-byte Folded Reload
	.loc	1 897 7                         # parallel-rne.mlir:897:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	addli r6, zero, 24
	zext_int2long r[7:8], r6
	loadli.w r6,  -140(r30)                 # 4-byte Folded Reload
	or r28, r2, r6
	j .LBB0_791
.LBB0_790:                              # %middle.block131
                                        #   in Loop: Header=BB0_791 Depth=2
	.loc	1 904 9 is_stmt 1               # parallel-rne.mlir:904:9
	load.d r[6:7], -80(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -88(r30)                 # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	addli.d r[7:8], r[6:7], 0
	beq r2, zero, .LBB0_837
.LBB0_791:                              # %.preheader63
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_810 Depth 3
                                        #       Child Loop BB0_793 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[9:10], r[7:8], r14
	zext_int2long r[14:15], zero
	.loc	1 905 11 is_stmt 1              # parallel-rne.mlir:905:11
	store.d r[7:8], -88(r30)                # 8-byte Folded Spill
	bneq r28, zero, .LBB0_793
	j .LBB0_810
.LBB0_792:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_793 Depth=3
	load.d r[16:17], -64(r30)               # 8-byte Folded Reload
	.loc	1 938 13                        # parallel-rne.mlir:938:13
	add.s r2, r1, r2
	stores.w r7, 0(r2)
	.loc	1 905 11                        # parallel-rne.mlir:905:11
	setlt.ul r6, r[14:15], r[16:17]
	addli.d r[14:15], r[14:15], 1
	beq r6, zero, .LBB0_790
.LBB0_793:                              # %scalar.ph123
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_791 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 906 19                        # parallel-rne.mlir:906:19
	add.ul r[6:7], r[14:15], r[9:10]
	lui r16, 523264
	slli r2, r6, 2
	.loc	1 907 19                        # parallel-rne.mlir:907:19
	add.s r6, r18, r2
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	add.s r7, r13, r2
	.loc	1 907 19                        # parallel-rne.mlir:907:19
	loads.w r6, 0(r6)
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	loads.w r17, 0(r7)
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	and r7, r6, r3
	lui r6, 523264
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	beq r7, r23, .LBB0_795
# %bb.794:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_793 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r17, 0
.LBB0_795:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_793 Depth=3
	add.s r8, r11, r2
	loads.w r8, 0(r8)
	and r8, r8, r3
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	bneq r8, zero, .LBB0_805
# %bb.796:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_793 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r17, 523264
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	bneq r7, zero, .LBB0_806
.LBB0_797:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_793 Depth=3
	beq r8, r23, .LBB0_799
.LBB0_798:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_793 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r16, 0
.LBB0_799:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_793 Depth=3
	setlt.u r16, r23, r7
	lui r7, 523264
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	bneq r16, zero, .LBB0_801
# %bb.800:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_793 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r17, 0
.LBB0_801:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_793 Depth=3
	setlt.u r8, r23, r8
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	bneq r8, zero, .LBB0_803
# %bb.802:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_793 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r7, 0
.LBB0_803:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_793 Depth=3
	.loc	1 926 19 is_stmt 1              # parallel-rne.mlir:926:19
	and r8, r6, r3
	.loc	1 928 20                        # parallel-rne.mlir:928:20
	setlt.u r7, r23, r8
	.loc	1 929 20                        # parallel-rne.mlir:929:20
	bneq r7, zero, .LBB0_807
# %bb.804:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_793 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r7, r6, 0
	.loc	1 935 20 is_stmt 1              # parallel-rne.mlir:935:20
	setlt.u r8, r4, r8
	.loc	1 936 20                        # parallel-rne.mlir:936:20
	bneq r8, zero, .LBB0_792
	j .LBB0_808
.LBB0_805:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_793 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r17, 0
	lui r17, 523264
	.loc	1 925 19 is_stmt 1              # parallel-rne.mlir:925:19
	beq r7, zero, .LBB0_797
.LBB0_806:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_793 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	bneq r8, r23, .LBB0_798
	j .LBB0_799
.LBB0_807:                              #   in Loop: Header=BB0_793 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r7, r6, r5
	.loc	1 935 20 is_stmt 1              # parallel-rne.mlir:935:20
	setlt.u r8, r4, r8
	.loc	1 936 20                        # parallel-rne.mlir:936:20
	bneq r8, zero, .LBB0_792
.LBB0_808:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_793 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r12
	and r7, r6, r22
	j .LBB0_792
.LBB0_809:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 905 11 is_stmt 1              # parallel-rne.mlir:905:11
	load.d r[19:20], -56(r30)               # 8-byte Folded Reload
	addli.d r[14:15], r[14:15], 4
	.loc	1 938 13                        # parallel-rne.mlir:938:13
	add.s r16, r1, r16
	stores.w r8, 12(r16)
	stores.w r6, 8(r16)
	stores.w r7, 4(r16)
	stores.w r26, 0(r16)
	.loc	1 905 11                        # parallel-rne.mlir:905:11
	seteq.d r2, r[14:15], r[19:20]
	bneq r2, zero, .LBB0_790
.LBB0_810:                              # %vector.body125
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_791 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 906 19                        # parallel-rne.mlir:906:19
	add.ul r[6:7], r[14:15], r[9:10]
	slli r16, r6, 2
	add.s r8, r11, r16
	.loc	1 907 19                        # parallel-rne.mlir:907:19
	add.s r2, r18, r16
	.loc	1 906 19                        # parallel-rne.mlir:906:19
	loads.w r6, 0(r8)
	.loc	1 907 19                        # parallel-rne.mlir:907:19
	loads.w r7, 0(r2)
	.loc	1 913 19                        # parallel-rne.mlir:913:19
	and r6, r6, r3
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	and r7, r7, r3
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	seteq r17, r6, r23
	.loc	1 918 19                        # parallel-rne.mlir:918:19
	seteq r21, r6, zero
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	seteq r19, r7, zero
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	seteq r20, r7, r23
	.loc	1 923 19                        # parallel-rne.mlir:923:19
	max.u r6, r6, r7
	setlt.u r7, r23, r6
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	and r6, r17, r19
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	and r17, r21, r20
	lui r21, 523264
	.loc	1 920 19                        # parallel-rne.mlir:920:19
	or r17, r6, r17
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	add.s r6, r13, r16
	.loc	1 924 19                        # parallel-rne.mlir:924:19
	or r7, r7, r17
	lui r17, 523264
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	bneq r7, zero, .LBB0_812
# %bb.811:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r21, 0(r6)
.LBB0_812:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	loads.w r7, 4(r8)
	loads.w r19, 4(r2)
	and r7, r7, r3
	and r19, r19, r3
	seteq r20, r7, r23
	seteq r26, r7, zero
	seteq r24, r19, zero
	seteq r25, r19, r23
	max.u r7, r7, r19
	setlt.u r7, r23, r7
	and r19, r20, r24
	and r20, r26, r25
	lui r24, 523264
	or r19, r19, r20
	or r7, r7, r19
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	bneq r7, zero, .LBB0_814
# %bb.813:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 4(r6)
.LBB0_814:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	loads.w r7, 8(r8)
	loads.w r19, 8(r2)
	and r7, r7, r3
	and r19, r19, r3
	seteq r20, r7, r23
	seteq r27, r7, zero
	seteq r25, r19, zero
	seteq r26, r19, r23
	max.u r7, r7, r19
	setlt.u r7, r23, r7
	and r19, r20, r25
	and r20, r27, r26
	lui r25, 523264
	or r19, r19, r20
	or r7, r7, r19
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	bneq r7, zero, .LBB0_816
# %bb.815:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 8(r6)
.LBB0_816:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	loads.w r7, 12(r8)
	loads.w r2, 12(r2)
	and r7, r7, r3
	and r2, r2, r3
	seteq r8, r7, r23
	seteq r19, r2, zero
	seteq r20, r2, r23
	seteq r26, r7, zero
	max.u r2, r7, r2
	setlt.u r2, r23, r2
	and r7, r8, r19
	and r8, r26, r20
	or r7, r7, r8
	or r2, r2, r7
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	bneq r2, zero, .LBB0_818
# %bb.817:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r6)
.LBB0_818:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 926 19 is_stmt 1              # parallel-rne.mlir:926:19
	and r2, r17, r3
	.loc	1 928 20                        # parallel-rne.mlir:928:20
	setlt.u r6, r23, r2
	.loc	1 929 20                        # parallel-rne.mlir:929:20
	bneq r6, zero, .LBB0_820
# %bb.819:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r8, r17, 0
	j .LBB0_821
.LBB0_820:                              #   in Loop: Header=BB0_810 Depth=3
	or r8, r17, r5
.LBB0_821:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	and r19, r25, r3
	setlt.u r6, r23, r19
	.loc	1 929 20                        # parallel-rne.mlir:929:20
	bneq r6, zero, .LBB0_823
# %bb.822:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r25, 0
	j .LBB0_824
.LBB0_823:                              #   in Loop: Header=BB0_810 Depth=3
	or r6, r25, r5
.LBB0_824:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	and r20, r24, r3
	setlt.u r7, r23, r20
	.loc	1 929 20                        # parallel-rne.mlir:929:20
	bneq r7, zero, .LBB0_826
# %bb.825:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r24, 0
	j .LBB0_827
.LBB0_826:                              #   in Loop: Header=BB0_810 Depth=3
	or r7, r24, r5
.LBB0_827:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	and r27, r21, r3
	setlt.u r26, r23, r27
	.loc	1 929 20                        # parallel-rne.mlir:929:20
	bneq r26, zero, .LBB0_829
# %bb.828:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r26, r21, 0
	.loc	1 935 20 is_stmt 1              # parallel-rne.mlir:935:20
	setlt.u r27, r4, r27
	.loc	1 936 20                        # parallel-rne.mlir:936:20
	beq r27, zero, .LBB0_830
	j .LBB0_831
.LBB0_829:                              #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r21, r5
	.loc	1 935 20 is_stmt 1              # parallel-rne.mlir:935:20
	setlt.u r27, r4, r27
	.loc	1 936 20                        # parallel-rne.mlir:936:20
	bneq r27, zero, .LBB0_831
.LBB0_830:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r26, r21, 16
	andi r26, r26, 1
	add.s r21, r21, r26
	add.s r21, r21, r12
	and r26, r21, r22
.LBB0_831:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	setlt.u r20, r4, r20
	.loc	1 936 20                        # parallel-rne.mlir:936:20
	beq r20, zero, .LBB0_834
# %bb.832:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r19, r4, r19
	.loc	1 936 20                        # parallel-rne.mlir:936:20
	beq r19, zero, .LBB0_835
.LBB0_833:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r2
	.loc	1 936 20                        # parallel-rne.mlir:936:20
	bneq r2, zero, .LBB0_809
	j .LBB0_836
.LBB0_834:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r7, r24, 16
	andi r7, r7, 1
	add.s r7, r24, r7
	add.s r7, r7, r12
	and r7, r7, r22
	setlt.u r19, r4, r19
	.loc	1 936 20                        # parallel-rne.mlir:936:20
	bneq r19, zero, .LBB0_833
.LBB0_835:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r12
	and r6, r6, r22
	setlt.u r2, r4, r2
	.loc	1 936 20                        # parallel-rne.mlir:936:20
	bneq r2, zero, .LBB0_809
.LBB0_836:                              # %vector.body125
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r17, 16
	andi r2, r2, 1
	add.s r2, r17, r2
	add.s r2, r2, r12
	and r8, r2, r22
	j .LBB0_809
.LBB0_837:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	.loc	1 897 7                         # parallel-rne.mlir:897:7
	mfence { sm }
.LBB0_838:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 943 7                         # parallel-rne.mlir:943:7
	loadli.w r2,  -152(r30)                 # 4-byte Folded Reload
	zext_int2long r[6:7], zero
	store.d r[6:7], -88(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_890
# %bb.839:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -144(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -148(r30)                 # 4-byte Folded Reload
	.loc	1 943 7                         # parallel-rne.mlir:943:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	addli r6, zero, 28
	zext_int2long r[7:8], r6
	loadli.w r6,  -140(r30)                 # 4-byte Folded Reload
	or r28, r2, r6
	j .LBB0_841
.LBB0_840:                              # %middle.block
                                        #   in Loop: Header=BB0_841 Depth=2
	.loc	1 950 9 is_stmt 1               # parallel-rne.mlir:950:9
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -80(r30)                 # 8-byte Folded Reload
	addli r14, zero, 5
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	addli.d r[7:8], r[6:7], 0
	beq r2, zero, .LBB0_889
.LBB0_841:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_862 Depth 3
                                        #       Child Loop BB0_844 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	store.d r[7:8], -80(r30)                # 8-byte Folded Spill
	sll.d r[14:15], r[7:8], r2
	.loc	1 951 11 is_stmt 1              # parallel-rne.mlir:951:11
	beq r28, zero, .LBB0_860
# %bb.842:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_841 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_844
.LBB0_843:                              # %scalar.ph
                                        #   in Loop: Header=BB0_844 Depth=3
	.loc	1 951 11                        # parallel-rne.mlir:951:11
	load.d r[16:17], -64(r30)               # 8-byte Folded Reload
	.loc	1 984 13 is_stmt 1              # parallel-rne.mlir:984:13
	add.s r2, r1, r2
	stores.w r9, 0(r2)
	.loc	1 951 11                        # parallel-rne.mlir:951:11
	setlt.ul r8, r[6:7], r[16:17]
	addli.d r[6:7], r[6:7], 1
	beq r8, zero, .LBB0_840
.LBB0_844:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_841 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 952 19                        # parallel-rne.mlir:952:19
	add.ul r[8:9], r[6:7], r[14:15]
	lui r16, 523264
	slli r2, r8, 2
	.loc	1 953 19                        # parallel-rne.mlir:953:19
	add.s r8, r18, r2
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	add.s r9, r13, r2
	.loc	1 953 19                        # parallel-rne.mlir:953:19
	loads.w r8, 0(r8)
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	loads.w r17, 0(r9)
	.loc	1 957 19                        # parallel-rne.mlir:957:19
	and r9, r8, r3
	lui r8, 523264
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	beq r9, r23, .LBB0_846
# %bb.845:                              # %scalar.ph
                                        #   in Loop: Header=BB0_844 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r17, 0
.LBB0_846:                              # %scalar.ph
                                        #   in Loop: Header=BB0_844 Depth=3
	add.s r10, r11, r2
	loads.w r10, 0(r10)
	and r10, r10, r3
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	bneq r10, zero, .LBB0_856
# %bb.847:                              # %scalar.ph
                                        #   in Loop: Header=BB0_844 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r17, 523264
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	bneq r9, zero, .LBB0_857
.LBB0_848:                              # %scalar.ph
                                        #   in Loop: Header=BB0_844 Depth=3
	beq r10, r23, .LBB0_850
.LBB0_849:                              # %scalar.ph
                                        #   in Loop: Header=BB0_844 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r16, 0
.LBB0_850:                              # %scalar.ph
                                        #   in Loop: Header=BB0_844 Depth=3
	setlt.u r16, r23, r9
	lui r9, 523264
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	bneq r16, zero, .LBB0_852
# %bb.851:                              # %scalar.ph
                                        #   in Loop: Header=BB0_844 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r17, 0
.LBB0_852:                              # %scalar.ph
                                        #   in Loop: Header=BB0_844 Depth=3
	setlt.u r10, r23, r10
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	bneq r10, zero, .LBB0_854
# %bb.853:                              # %scalar.ph
                                        #   in Loop: Header=BB0_844 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
.LBB0_854:                              # %scalar.ph
                                        #   in Loop: Header=BB0_844 Depth=3
	.loc	1 972 19 is_stmt 1              # parallel-rne.mlir:972:19
	and r10, r8, r3
	.loc	1 974 20                        # parallel-rne.mlir:974:20
	setlt.u r9, r23, r10
	.loc	1 975 20                        # parallel-rne.mlir:975:20
	bneq r9, zero, .LBB0_858
# %bb.855:                              # %scalar.ph
                                        #   in Loop: Header=BB0_844 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r9, r8, 0
	.loc	1 981 20 is_stmt 1              # parallel-rne.mlir:981:20
	setlt.u r10, r4, r10
	.loc	1 982 20                        # parallel-rne.mlir:982:20
	bneq r10, zero, .LBB0_843
	j .LBB0_859
.LBB0_856:                              # %scalar.ph
                                        #   in Loop: Header=BB0_844 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r17, 0
	lui r17, 523264
	.loc	1 971 19 is_stmt 1              # parallel-rne.mlir:971:19
	beq r9, zero, .LBB0_848
.LBB0_857:                              # %scalar.ph
                                        #   in Loop: Header=BB0_844 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r16, 0
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	bneq r10, r23, .LBB0_849
	j .LBB0_850
.LBB0_858:                              #   in Loop: Header=BB0_844 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r9, r8, r5
	.loc	1 981 20 is_stmt 1              # parallel-rne.mlir:981:20
	setlt.u r10, r4, r10
	.loc	1 982 20                        # parallel-rne.mlir:982:20
	bneq r10, zero, .LBB0_843
.LBB0_859:                              # %scalar.ph
                                        #   in Loop: Header=BB0_844 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r12
	and r9, r8, r22
	j .LBB0_843
.LBB0_860:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_841 Depth=2
	load.d r[16:17], -88(r30)               # 8-byte Folded Reload
	j .LBB0_862
.LBB0_861:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 951 11 is_stmt 1              # parallel-rne.mlir:951:11
	load.d r[6:7], -56(r30)                 # 8-byte Folded Reload
	addli.d r[16:17], r[16:17], 4
	seteq.d r2, r[16:17], r[6:7]
	.loc	1 984 13                        # parallel-rne.mlir:984:13
	add.s r6, r1, r21
	stores.w r8, 12(r6)
	stores.w r9, 8(r6)
	stores.w r10, 4(r6)
	stores.w r26, 0(r6)
	.loc	1 951 11                        # parallel-rne.mlir:951:11
	bneq r2, zero, .LBB0_840
.LBB0_862:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_841 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 952 19                        # parallel-rne.mlir:952:19
	add.ul r[6:7], r[16:17], r[14:15]
	lui r24, 523264
	lui r25, 523264
	slli r21, r6, 2
	add.s r8, r11, r21
	.loc	1 953 19                        # parallel-rne.mlir:953:19
	add.s r2, r18, r21
	.loc	1 952 19                        # parallel-rne.mlir:952:19
	loads.w r6, 0(r8)
	.loc	1 953 19                        # parallel-rne.mlir:953:19
	loads.w r7, 0(r2)
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	and r6, r6, r3
	.loc	1 957 19                        # parallel-rne.mlir:957:19
	and r7, r7, r3
	.loc	1 960 19                        # parallel-rne.mlir:960:19
	seteq r9, r6, r23
	.loc	1 964 19                        # parallel-rne.mlir:964:19
	seteq r20, r6, zero
	.loc	1 961 19                        # parallel-rne.mlir:961:19
	seteq r10, r7, zero
	.loc	1 963 19                        # parallel-rne.mlir:963:19
	seteq r19, r7, r23
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	max.u r6, r6, r7
	setlt.u r6, r23, r6
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	and r7, r9, r10
	.loc	1 965 19                        # parallel-rne.mlir:965:19
	and r9, r20, r19
	.loc	1 966 19                        # parallel-rne.mlir:966:19
	or r7, r7, r9
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	add.s r9, r13, r21
	.loc	1 970 19                        # parallel-rne.mlir:970:19
	or r6, r6, r7
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	bneq r6, zero, .LBB0_864
# %bb.863:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r25, 0(r9)
.LBB0_864:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	loads.w r6, 4(r8)
	loads.w r7, 4(r2)
	and r6, r6, r3
	and r7, r7, r3
	seteq r10, r6, r23
	seteq r26, r6, zero
	seteq r19, r7, zero
	seteq r20, r7, r23
	max.u r6, r6, r7
	setlt.u r6, r23, r6
	and r7, r10, r19
	and r10, r26, r20
	or r7, r7, r10
	or r7, r6, r7
	lui r6, 523264
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	bneq r7, zero, .LBB0_866
# %bb.865:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 4(r9)
.LBB0_866:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	loads.w r7, 8(r8)
	loads.w r10, 8(r2)
	and r7, r7, r3
	and r10, r10, r3
	seteq r19, r7, r23
	seteq r27, r7, zero
	seteq r20, r10, zero
	seteq r26, r10, r23
	max.u r7, r7, r10
	setlt.u r7, r23, r7
	and r10, r19, r20
	and r19, r27, r26
	or r10, r10, r19
	or r10, r7, r10
	lui r7, 523264
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	bneq r10, zero, .LBB0_868
# %bb.867:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 8(r9)
.LBB0_868:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	loads.w r8, 12(r8)
	loads.w r2, 12(r2)
	and r8, r8, r3
	and r2, r2, r3
	seteq r10, r8, r23
	seteq r19, r2, zero
	seteq r20, r2, r23
	seteq r26, r8, zero
	max.u r2, r8, r2
	setlt.u r2, r23, r2
	and r8, r10, r19
	and r10, r26, r20
	or r8, r8, r10
	or r2, r2, r8
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	bneq r2, zero, .LBB0_870
# %bb.869:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r9)
.LBB0_870:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 972 19 is_stmt 1              # parallel-rne.mlir:972:19
	and r2, r24, r3
	.loc	1 974 20                        # parallel-rne.mlir:974:20
	setlt.u r8, r23, r2
	.loc	1 975 20                        # parallel-rne.mlir:975:20
	bneq r8, zero, .LBB0_872
# %bb.871:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r8, r24, 0
	j .LBB0_873
.LBB0_872:                              #   in Loop: Header=BB0_862 Depth=3
	or r8, r24, r5
.LBB0_873:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	and r19, r7, r3
	setlt.u r9, r23, r19
	.loc	1 975 20                        # parallel-rne.mlir:975:20
	bneq r9, zero, .LBB0_875
# %bb.874:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r9, r7, 0
	j .LBB0_876
.LBB0_875:                              #   in Loop: Header=BB0_862 Depth=3
	or r9, r7, r5
.LBB0_876:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	and r20, r6, r3
	setlt.u r10, r23, r20
	.loc	1 975 20                        # parallel-rne.mlir:975:20
	bneq r10, zero, .LBB0_878
# %bb.877:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r6, 0
	j .LBB0_879
.LBB0_878:                              #   in Loop: Header=BB0_862 Depth=3
	or r10, r6, r5
.LBB0_879:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	and r27, r25, r3
	setlt.u r26, r23, r27
	.loc	1 975 20                        # parallel-rne.mlir:975:20
	bneq r26, zero, .LBB0_881
# %bb.880:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r26, r25, 0
	.loc	1 981 20 is_stmt 1              # parallel-rne.mlir:981:20
	setlt.u r27, r4, r27
	.loc	1 982 20                        # parallel-rne.mlir:982:20
	beq r27, zero, .LBB0_882
	j .LBB0_883
.LBB0_881:                              #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r25, r5
	.loc	1 981 20 is_stmt 1              # parallel-rne.mlir:981:20
	setlt.u r27, r4, r27
	.loc	1 982 20                        # parallel-rne.mlir:982:20
	bneq r27, zero, .LBB0_883
.LBB0_882:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r26, r25, 16
	andi r26, r26, 1
	add.s r25, r25, r26
	add.s r25, r25, r12
	and r26, r25, r22
.LBB0_883:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	setlt.u r20, r4, r20
	.loc	1 982 20                        # parallel-rne.mlir:982:20
	beq r20, zero, .LBB0_886
# %bb.884:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r4, r19
	.loc	1 982 20                        # parallel-rne.mlir:982:20
	beq r6, zero, .LBB0_887
.LBB0_885:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r4, r2
	.loc	1 982 20                        # parallel-rne.mlir:982:20
	bneq r2, zero, .LBB0_861
	j .LBB0_888
.LBB0_886:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r10, r6, 16
	andi r10, r10, 1
	add.s r6, r6, r10
	add.s r6, r6, r12
	and r10, r6, r22
	setlt.u r6, r4, r19
	.loc	1 982 20                        # parallel-rne.mlir:982:20
	bneq r6, zero, .LBB0_885
.LBB0_887:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r12
	and r9, r6, r22
	setlt.u r2, r4, r2
	.loc	1 982 20                        # parallel-rne.mlir:982:20
	bneq r2, zero, .LBB0_861
.LBB0_888:                              # %vector.body
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r24, 16
	andi r2, r2, 1
	add.s r2, r24, r2
	add.s r2, r2, r12
	and r8, r2, r22
	j .LBB0_861
.LBB0_889:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	.loc	1 943 7                         # parallel-rne.mlir:943:7
	mfence { sm }
.LBB0_890:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 989 7                         # parallel-rne.mlir:989:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 990 7                         # parallel-rne.mlir:990:7
	addli r1, zero, 3
	.loc	1 989 7                         # parallel-rne.mlir:989:7
	sync_core
	.loc	1 990 7                         # parallel-rne.mlir:990:7
	beq r15, r1, .LBB0_5
# %bb.891:                              # %.critedge17
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[10:11], -176(r30)              # 8-byte Folded Reload
	.loc	1 1001 7 is_stmt 1              # parallel-rne.mlir:1001:7
	bneq r15, zero, .LBB0_6
# %bb.892:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -204(r30)                 # 4-byte Folded Reload
	.loc	1 1001 7                        # parallel-rne.mlir:1001:7
	load.d r[6:7], -200(r30)                # 8-byte Folded Reload
	addli r8, zero, 15
	addli r2, zero, 14
	addli r16, zero, 1
	load.d r[17:18], 24(r30)
	addli r13, zero, 64
	xwait r8, 0
	load.d r[8:9], -88(r30)                 # 8-byte Folded Reload
	lock zero, r14
	slli r1, r1, 5
	sll.d r[6:7], r[6:7], r2
	dma_cfg r16, r16, zero, 0
	sext_int2long r[1:2], r1
	add.ul r[6:7], r[17:18], r[6:7]
	min.sl r[8:9], r[1:2], r[8:9]
	addli.d r[8:9], r[8:9], 32
	max.sl r[8:9], r[8:9], r[1:2]
	sub.sl r[1:2], r[8:9], r[1:2]
	load.d r[8:9], -184(r30)                # 8-byte Folded Reload
	add.ul r[6:7], r[6:7], r[8:9]
	.loc	1 997 13 is_stmt 1              # parallel-rne.mlir:997:13
	load.d r[8:9], -56(r30)                 # 8-byte Folded Reload
	.loc	1 1001 7                        # parallel-rne.mlir:1001:7
	dma_cfg zero, r16, zero, 1
	dma_cfg r7, zero, zero, 2
	.loc	1 997 13                        # parallel-rne.mlir:997:13
	min.sl r[1:2], r[1:2], r[8:9]
	lui r8, 25
	.loc	1 1001 7                        # parallel-rne.mlir:1001:7
	loadli.w r9,  -68(r30)                  # 4-byte Folded Reload
	load.d r[17:18], -192(r30)              # 8-byte Folded Reload
	ori r8, r8, 704
	add.s r8, r9, r8
	addli r9, r17, 31
	dma_cfg r6, r8, r13, 3
	srli r6, r9, 5
	addli r8, zero, 128
	slli r7, r17, 1
	dma_cfg r13, r8, r6, 4
	andi r6, r7, 62
	addli r7, zero, 512
	dma_cfg r7, r8, r1, 5
	addli r1, zero, 16
	dma_cfg zero, zero, r6, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	xsignal r1, 0
	j .LBB0_6
.LBB0_893:                              # %._crit_edge
	.loc	1 1003 5                        # parallel-rne.mlir:1003:5
	xsignal zero, 0
	bneq r15, zero, .LBB0_895
# %bb.894:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1003 5                        # parallel-rne.mlir:1003:5
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
.LBB0_895:
	.loc	1 1004 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1004:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-bl7m14ze" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
