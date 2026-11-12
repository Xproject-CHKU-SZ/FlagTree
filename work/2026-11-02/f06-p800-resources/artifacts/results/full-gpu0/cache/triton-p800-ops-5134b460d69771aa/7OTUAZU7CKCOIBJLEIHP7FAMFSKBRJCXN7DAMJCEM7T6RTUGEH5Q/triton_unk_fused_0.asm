	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-2da04cer" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -216
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r10
	addli r30, sp, 152
	xsignal_mode_cfg r1
	beq r10, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	uni_sram_cfg r1, r1
	lui r3, 1048575
	lock zero, r2
	ew_cfg r1, zero, zero, 16
	ori r1, r3, 4095
	unlock r2
	addli r2, zero, 5
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
	addli r1, zero, 19
	addli r2, zero, 14
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
	loadli.w r1,  32(r30)
	loadli.w r2,  36(r30)
	.loc	1 32 10 is_stmt 1               # parallel-rne.mlir:32:10
	load_param_i r4, 1
	loadli.w r3,  40(r30)
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	mul.s r1, r2, r1
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r3, r1, r3
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r2, -1
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	div.s r2, r2, r4
	.loc	1 31 10                         # parallel-rne.mlir:31:10
	load_param_i r4, 0
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r1, r2, r4
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	fmac.s r2, r2, r4
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	min.s r2, r2, r3
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	ble.s r2, r1, .LBB0_490
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 41 11 is_stmt 1               # parallel-rne.mlir:41:11
	sext_int2long r[12:13], r1
	lui r1, 30
	addli r11, zero, 5
	addli r14, zero, 64
	addli r15, zero, 1
	addli r17, zero, 12
	addli r18, zero, 3
	addli r20, zero, 4
	addli r21, zero, 2
	addli r23, zero, 6
	addli r24, zero, 7
	lui r19, 1024
	lui r27, 522240
	lui r22, 1048560
	addli r16, zero, 0
	store.d r[2:3], -144(r30)               # 8-byte Folded Spill
	lui r2, 524287
	ori r1, r1, 640
	storeli.w r1, -148(r30)                 # 4-byte Folded Spill
	ori r3, r2, 4095
	lui r1, 7
	lui r2, 522239
	ori r4, r1, 4095
	ori r5, r2, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 599 7                         # parallel-rne.mlir:599:7
	addli r1, zero, 14
	addli r14, zero, 64
	addli r15, zero, 1
	addli r17, zero, 12
	addli r20, zero, 4
	addli r21, zero, 2
	xsignal r1, 0
	.loc	1 600 7                         # parallel-rne.mlir:600:7
	addli r1, zero, 17
.LBB0_6:                                # %.thread36
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                # %.thread36
                                        #   in Loop: Header=BB0_8 Depth=1
	load.d r[12:13], -112(r30)              # 8-byte Folded Reload
	.loc	1 51 5 is_stmt 1                # parallel-rne.mlir:51:5
	load.d r[1:2], -144(r30)                # 8-byte Folded Reload
	loadli.w r16,  -96(r30)                 # 4-byte Folded Reload
	addli r23, zero, 6
	addli r24, zero, 7
	addli.d r[12:13], r[12:13], 1
	addli r16, r16, 1
	setlt.sl r1, r[12:13], r[1:2]
	beq r1, zero, .LBB0_490
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #     Child Loop BB0_51 Depth 2
                                        #       Child Loop BB0_53 Depth 3
                                        #     Child Loop BB0_76 Depth 2
                                        #       Child Loop BB0_78 Depth 3
                                        #     Child Loop BB0_101 Depth 2
                                        #       Child Loop BB0_103 Depth 3
                                        #     Child Loop BB0_126 Depth 2
                                        #       Child Loop BB0_128 Depth 3
                                        #     Child Loop BB0_151 Depth 2
                                        #       Child Loop BB0_153 Depth 3
                                        #     Child Loop BB0_176 Depth 2
                                        #       Child Loop BB0_178 Depth 3
                                        #     Child Loop BB0_201 Depth 2
                                        #       Child Loop BB0_203 Depth 3
                                        #     Child Loop BB0_231 Depth 2
                                        #     Child Loop BB0_332 Depth 2
                                        #       Child Loop BB0_334 Depth 3
                                        #       Child Loop BB0_355 Depth 3
                                        #     Child Loop BB0_241 Depth 2
                                        #       Child Loop BB0_243 Depth 3
                                        #       Child Loop BB0_264 Depth 3
                                        #     Child Loop BB0_362 Depth 2
                                        #       Child Loop BB0_364 Depth 3
                                        #       Child Loop BB0_385 Depth 3
                                        #     Child Loop BB0_271 Depth 2
                                        #       Child Loop BB0_273 Depth 3
                                        #       Child Loop BB0_294 Depth 3
                                        #     Child Loop BB0_392 Depth 2
                                        #       Child Loop BB0_401 Depth 3
                                        #       Child Loop BB0_396 Depth 3
                                        #     Child Loop BB0_301 Depth 2
                                        #       Child Loop BB0_310 Depth 3
                                        #       Child Loop BB0_305 Depth 3
                                        #     Child Loop BB0_424 Depth 2
                                        #       Child Loop BB0_433 Depth 3
                                        #       Child Loop BB0_428 Depth 3
                                        #     Child Loop BB0_456 Depth 2
                                        #       Child Loop BB0_465 Depth 3
                                        #       Child Loop BB0_460 Depth 3
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	loadli.w r1,  40(r30)
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	loadli.w r2,  36(r30)
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	addli r8, zero, 8
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	mod.s r9, r16, r11
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	storeli.w r16, -96(r30)                 # 4-byte Folded Spill
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	div.s r1, r12, r1
	storeli.w r9, -100(r30)                 # 4-byte Folded Spill
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	div.s r2, r1, r2
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	div.s r6, r2, r14
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	slli r1, r6, 3
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	sub.s r7, r15, r1
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	min.s r7, r7, r8
	.loc	1 61 13                         # parallel-rne.mlir:61:13
	mod.s r8, r2, r7
	.loc	1 62 13                         # parallel-rne.mlir:62:13
	add.s r8, r8, r1
	.loc	1 87 13                         # parallel-rne.mlir:87:13
	slli r1, r9, 13
	.loc	1 70 13                         # parallel-rne.mlir:70:13
	zext_int2long r[25:26], r8
	storeli.w r8, -132(r30)                 # 4-byte Folded Spill
	.loc	1 89 13                         # parallel-rne.mlir:89:13
	lui r8, 5
	add.s r9, r1, r8
	store.d r[25:26], -80(r30)              # 8-byte Folded Spill
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	bneq r10, r15, .LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	sll.d r[10:11], r[25:26], r17
	load.d r[25:26], 0(r30)
	xwait r18, 0
	add.ul r[10:11], r[25:26], r[10:11]
	blt.s r20, r16, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 5
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	addli r16, zero, 8
	addli r25, zero, 256
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 9
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 11
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 13
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 14
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 15
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 16
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 17
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 18
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 19
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 20
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 21
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 22
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 23
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 24
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 25
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 26
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 27
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 28
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 29
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 30
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 31
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 128
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r14, 3
	dma_cfg r16, zero, r21, 4
	addli r16, zero, 32
	dma_cfg r25, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r8, 5
	storeli.w zero, -92(r30)                # 4-byte Folded Spill
	addli r16, zero, 32
	addli r25, zero, 256
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	lock zero, r20
	ori r8, r8, 64
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r11, zero, 2
	add.s r8, r1, r8
	dma_cfg r8, r10, r14, 3
	addli r10, zero, 128
	addli r11, zero, 5
	addli r8, zero, 8
	dma_cfg r10, r14, r21, 4
	dma_cfg r25, r10, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r20
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 9
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 11
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 13
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 14
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 15
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 16
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 17
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 18
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 19
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
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r14, 3
	dma_cfg r10, zero, r21, 4
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	dma_cfg r25, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r21, 0
	j .LBB0_15
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 94 7                          # parallel-rne.mlir:94:7
	bneq r10, r21, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	xwait r21, 0
	xwait r11, 0
	lock zero, zero
	addli r8, zero, 32
	ds_cfg r21, zero, 0
	ds_cfg r14, zero, 1
	ds_cfg r14, zero, 14
	ds_cfg r8, zero, 13
	addli r8, zero, 1
	shuffle_batch r1, r9, r14, 1
	unlock zero
	xsignal r18, 0
	storeli.w r8, -92(r30)                  # 4-byte Folded Spill
	xsignal r20, 0
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -92(r30)                # 4-byte Folded Spill
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	slli r6, r6, 6
	addli r8, zero, 6
	sub.s r2, r2, r6
	div.s r2, r2, r7
	zext_int2long r[6:7], r2
	storeli.w r2, -120(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -100(r30)                 # 4-byte Folded Reload
	sll.d r[6:7], r[6:7], r11
	slli r24, r2, 12
	.loc	1 104 13 is_stmt 1              # parallel-rne.mlir:104:13
	lui r2, 15
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	sll.d r[6:7], r[6:7], r15
	.loc	1 104 13                        # parallel-rne.mlir:104:13
	add.s r2, r1, r2
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	store.d r[6:7], -128(r30)               # 8-byte Folded Spill
	bneq r10, r8, .LBB0_44
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli.d r[8:9], r[6:7], 0
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	load.d r[6:7], 8(r30)
	add.ul r[6:7], r[6:7], r[8:9]
	addli r9, zero, 7
	xwait r9, 0
	loadli.w r8,  -96(r30)                  # 4-byte Folded Reload
	blt.s r20, r8, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	lock zero, r11
	addli r8, zero, 6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 8
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 9
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 11
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 13
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 14
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 15
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 16
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 17
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 18
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 19
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
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r14, 3
	dma_cfg r8, zero, r15, 4
	dma_cfg r8, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
.LBB0_18:                               # %.thread29
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r8, 15
	storeli.w zero, -88(r30)                # 4-byte Folded Spill
	storeli.w zero, -84(r30)                # 4-byte Folded Spill
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	lock zero, r20
	ori r8, r8, 64
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r7, zero, 2
	add.s r1, r1, r8
	addli r8, zero, 4096
	dma_cfg r1, r6, r14, 3
	addli r7, zero, 128
	addli r1, zero, 512
	addli r6, zero, 6
	dma_cfg r7, r14, r15, 4
	dma_cfg r7, r1, r14, 5
	addli r1, zero, 8
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r20
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 18
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
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
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r14, 3
	dma_cfg r7, zero, r15, 4
	dma_cfg r7, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r6, 0
	store.d r[12:13], -112(r30)             # 8-byte Folded Spill
	.loc	1 131 7 is_stmt 1               # parallel-rne.mlir:131:7
	bneq r10, r18, .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	addli r1, zero, 14
	xwait r1, 0
.LBB0_20:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	zext_int2long r[12:13], r1
	loadli.w r1,  -148(r30)                 # 4-byte Folded Reload
	.loc	1 134 7 is_stmt 1               # parallel-rne.mlir:134:7
	xfence
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	mfence { lm, sm, gm }
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r21, r24, r1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	addli r1, zero, 255
	csr_set csr5, r1
	addli r1, zero, 3
	zext_int2long r[1:2], r1
	store.d r[1:2], -72(r30)                # 8-byte Folded Spill
	sync_core
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	bneq r10, zero, .LBB0_48
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	xfence
	mfence { lm, sm, gm }
	addli.d r[6:7], r[1:2], 0
	store.d r[1:2], -16(r30)                # 8-byte Folded Spill
	j .LBB0_23
.LBB0_22:                               # %middle.block205
                                        #   in Loop: Header=BB0_23 Depth=2
	.loc	1 144 9 is_stmt 1               # parallel-rne.mlir:144:9
	load.d r[1:2], -72(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	addli r11, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_47
.LBB0_23:                               # %.preheader52
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	load.d r[14:15], -16(r30)               # 8-byte Folded Reload
	sll.d r[9:10], r[6:7], r11
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_25
.LBB0_24:                               # %vector.body201
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	addli.d r[14:15], r[14:15], 4
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	add.s r6, r21, r16
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	setneq.d r2, r[14:15], r[12:13]
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	stores.w r11, 12(r6)
	stores.w r20, 8(r6)
	stores.w r25, 4(r6)
	stores.w r1, 0(r6)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	beq r2, zero, .LBB0_22
.LBB0_25:                               # %vector.body201
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[1:2], r[14:15], r[9:10]
	slli r16, r1, 2
	add.s r1, r24, r16
	loads.w r17, 12(r1)
	loads.w r26, 0(r1)
	loads.w r8, 4(r1)
	loads.w r23, 8(r1)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r18, r17, r3
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r1, r27, r18
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r1, zero, .LBB0_27
# %bb.26:                               # %vector.body201
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r17, 0
	j .LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_25 Depth=3
	or r11, r17, r19
.LBB0_28:                               # %vector.body201
                                        #   in Loop: Header=BB0_25 Depth=3
	and r28, r23, r3
	setlt.u r1, r27, r28
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r1, zero, .LBB0_30
# %bb.29:                               # %vector.body201
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r23, 0
	j .LBB0_31
.LBB0_30:                               #   in Loop: Header=BB0_25 Depth=3
	or r20, r23, r19
.LBB0_31:                               # %vector.body201
                                        #   in Loop: Header=BB0_25 Depth=3
	and r2, r8, r3
	setlt.u r1, r27, r2
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r1, zero, .LBB0_33
# %bb.32:                               # %vector.body201
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r8, 0
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_25 Depth=3
	or r25, r8, r19
.LBB0_34:                               # %vector.body201
                                        #   in Loop: Header=BB0_25 Depth=3
	and r6, r26, r3
	setlt.u r1, r27, r6
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r1, zero, .LBB0_36
# %bb.35:                               # %vector.body201
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r26, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r6, r5, r6
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r6, zero, .LBB0_37
	j .LBB0_38
.LBB0_36:                               #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r1, r26, r19
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r6, r5, r6
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r6, zero, .LBB0_38
.LBB0_37:                               # %vector.body201
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r4
	and r1, r1, r22
.LBB0_38:                               # %vector.body201
                                        #   in Loop: Header=BB0_25 Depth=3
	setlt.u r2, r5, r2
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r2, zero, .LBB0_41
# %bb.39:                               # %vector.body201
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r4
	and r25, r2, r22
	setlt.u r2, r5, r28
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r2, zero, .LBB0_42
.LBB0_40:                               # %vector.body201
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r18
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r2, zero, .LBB0_24
	j .LBB0_43
.LBB0_41:                               # %vector.body201
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r28
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r2, zero, .LBB0_40
.LBB0_42:                               # %vector.body201
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r23, 16
	andi r2, r2, 1
	add.s r2, r23, r2
	add.s r2, r2, r4
	and r20, r2, r22
	setlt.u r2, r5, r18
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r2, zero, .LBB0_24
.LBB0_43:                               # %vector.body201
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r17, 16
	andi r2, r2, 1
	add.s r2, r17, r2
	add.s r2, r2, r4
	and r11, r2, r22
	j .LBB0_24
.LBB0_44:                               #   in Loop: Header=BB0_8 Depth=1
	addli r8, zero, 4096
	.loc	1 109 7 is_stmt 1               # parallel-rne.mlir:109:7
	beq r10, r20, .LBB0_233
# %bb.45:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r7, zero, 7
	.loc	1 109 7                         # parallel-rne.mlir:109:7
	bneq r10, r7, .LBB0_235
# %bb.46:                               #   in Loop: Header=BB0_8 Depth=1
	addli r6, zero, 6
	storeli.w zero, -88(r30)                # 4-byte Folded Spill
	xwait r6, 0
	addli r6, zero, 9
	xwait r6, 0
	lock zero, zero
	addli r6, zero, 32
	ds_cfg r21, zero, 0
	ds_cfg r6, zero, 1
	ds_cfg r14, zero, 14
	ds_cfg r6, zero, 13
	shuffle_coa r1, r2, r14, 2
	addli r1, zero, 1
	unlock zero
	xsignal r7, 0
	storeli.w r1, -84(r30)                  # 4-byte Folded Spill
	addli r1, zero, 8
	j .LBB0_234
.LBB0_47:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	addli r8, zero, 4096
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	mfence { sm }
.LBB0_48:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 165 7 is_stmt 1               # parallel-rne.mlir:165:7
	store.d r[1:2], -56(r30)                # 8-byte Folded Spill
	addli r1, zero, 1
	bneq r10, r1, .LBB0_73
# %bb.49:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 4
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_51
.LBB0_50:                               # %middle.block196
                                        #   in Loop: Header=BB0_51 Depth=2
	.loc	1 172 9 is_stmt 1               # parallel-rne.mlir:172:9
	load.d r[1:2], -56(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	addli r11, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_72
.LBB0_51:                               # %.preheader51
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_53 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r11
	zext_int2long r[9:10], zero
	j .LBB0_53
.LBB0_52:                               # %vector.body192
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	add.s r2, r21, r16
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	setneq.d r1, r[9:10], r[12:13]
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r11, 12(r2)
	stores.w r20, 8(r2)
	stores.w r25, 4(r2)
	stores.w r14, 0(r2)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	beq r1, zero, .LBB0_50
.LBB0_53:                               # %vector.body192
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_51 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[1:2], r[9:10], r[6:7]
	slli r16, r1, 2
	add.s r1, r24, r16
	loads.w r17, 12(r1)
	loads.w r26, 0(r1)
	loads.w r8, 4(r1)
	loads.w r23, 8(r1)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r18, r17, r3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r1, r27, r18
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r1, zero, .LBB0_55
# %bb.54:                               # %vector.body192
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r17, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_53 Depth=3
	or r11, r17, r19
.LBB0_56:                               # %vector.body192
                                        #   in Loop: Header=BB0_53 Depth=3
	and r15, r23, r3
	setlt.u r1, r27, r15
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r1, zero, .LBB0_58
# %bb.57:                               # %vector.body192
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r23, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_53 Depth=3
	or r20, r23, r19
.LBB0_59:                               # %vector.body192
                                        #   in Loop: Header=BB0_53 Depth=3
	and r28, r8, r3
	setlt.u r1, r27, r28
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r1, zero, .LBB0_61
# %bb.60:                               # %vector.body192
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r8, 0
	j .LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_53 Depth=3
	or r25, r8, r19
.LBB0_62:                               # %vector.body192
                                        #   in Loop: Header=BB0_53 Depth=3
	and r1, r26, r3
	setlt.u r2, r27, r1
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r2, zero, .LBB0_64
# %bb.63:                               # %vector.body192
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r26, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r1, r5, r1
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r1, zero, .LBB0_65
	j .LBB0_66
.LBB0_64:                               #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r26, r19
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r1, r5, r1
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_66
.LBB0_65:                               # %vector.body192
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r4
	and r14, r1, r22
.LBB0_66:                               # %vector.body192
                                        #   in Loop: Header=BB0_53 Depth=3
	setlt.u r1, r5, r28
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_69
# %bb.67:                               # %vector.body192
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r4
	and r25, r1, r22
	setlt.u r1, r5, r15
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r1, zero, .LBB0_70
.LBB0_68:                               # %vector.body192
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r18
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_52
	j .LBB0_71
.LBB0_69:                               # %vector.body192
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r15
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_68
.LBB0_70:                               # %vector.body192
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r23, 16
	andi r1, r1, 1
	add.s r1, r23, r1
	add.s r1, r1, r4
	and r20, r1, r22
	setlt.u r1, r5, r18
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_52
.LBB0_71:                               # %vector.body192
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r17, 16
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r4
	and r11, r1, r22
	j .LBB0_52
.LBB0_72:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	addli r8, zero, 4096
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	mfence { sm }
.LBB0_73:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 11
	zext_int2long r[1:2], r1
	.loc	1 193 7 is_stmt 1               # parallel-rne.mlir:193:7
	store.d r[1:2], -48(r30)                # 8-byte Folded Spill
	loadli.w r1,  -92(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_98
# %bb.74:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 193 7                         # parallel-rne.mlir:193:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_76
.LBB0_75:                               # %middle.block187
                                        #   in Loop: Header=BB0_76 Depth=2
	.loc	1 200 9 is_stmt 1               # parallel-rne.mlir:200:9
	load.d r[1:2], -48(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	addli r11, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_97
.LBB0_76:                               # %.preheader50
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_78 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r11
	zext_int2long r[16:17], zero
	j .LBB0_78
.LBB0_77:                               # %vector.body183
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 201 11 is_stmt 1              # parallel-rne.mlir:201:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 216 13                        # parallel-rne.mlir:216:13
	add.s r2, r21, r25
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	setneq.d r1, r[16:17], r[12:13]
	.loc	1 216 13                        # parallel-rne.mlir:216:13
	stores.w r11, 12(r2)
	stores.w r10, 8(r2)
	stores.w r23, 4(r2)
	stores.w r14, 0(r2)
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	beq r1, zero, .LBB0_75
.LBB0_78:                               # %vector.body183
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	add.ul r[1:2], r[16:17], r[6:7]
	slli r25, r1, 2
	add.s r1, r24, r25
	loads.w r18, 12(r1)
	loads.w r26, 0(r1)
	loads.w r8, 4(r1)
	loads.w r20, 8(r1)
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	and r9, r18, r3
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	setlt.u r1, r27, r9
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r1, zero, .LBB0_80
# %bb.79:                               # %vector.body183
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r18, 0
	j .LBB0_81
.LBB0_80:                               #   in Loop: Header=BB0_78 Depth=3
	or r11, r18, r19
.LBB0_81:                               # %vector.body183
                                        #   in Loop: Header=BB0_78 Depth=3
	and r15, r20, r3
	setlt.u r1, r27, r15
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r1, zero, .LBB0_83
# %bb.82:                               # %vector.body183
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r20, 0
	j .LBB0_84
.LBB0_83:                               #   in Loop: Header=BB0_78 Depth=3
	or r10, r20, r19
.LBB0_84:                               # %vector.body183
                                        #   in Loop: Header=BB0_78 Depth=3
	and r28, r8, r3
	setlt.u r1, r27, r28
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r1, zero, .LBB0_86
# %bb.85:                               # %vector.body183
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r8, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_78 Depth=3
	or r23, r8, r19
.LBB0_87:                               # %vector.body183
                                        #   in Loop: Header=BB0_78 Depth=3
	and r1, r26, r3
	setlt.u r2, r27, r1
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r2, zero, .LBB0_89
# %bb.88:                               # %vector.body183
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r26, 0
	.loc	1 213 19 is_stmt 1              # parallel-rne.mlir:213:19
	setlt.u r1, r5, r1
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	beq r1, zero, .LBB0_90
	j .LBB0_91
.LBB0_89:                               #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r26, r19
	.loc	1 213 19 is_stmt 1              # parallel-rne.mlir:213:19
	setlt.u r1, r5, r1
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_91
.LBB0_90:                               # %vector.body183
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r4
	and r14, r1, r22
.LBB0_91:                               # %vector.body183
                                        #   in Loop: Header=BB0_78 Depth=3
	setlt.u r1, r5, r28
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_94
# %bb.92:                               # %vector.body183
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r4
	and r23, r1, r22
	setlt.u r1, r5, r15
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	beq r1, zero, .LBB0_95
.LBB0_93:                               # %vector.body183
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r9
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_77
	j .LBB0_96
.LBB0_94:                               # %vector.body183
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r15
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_93
.LBB0_95:                               # %vector.body183
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r20, 16
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r4
	and r10, r1, r22
	setlt.u r1, r5, r9
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_77
.LBB0_96:                               # %vector.body183
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r4
	and r11, r1, r22
	j .LBB0_77
.LBB0_97:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	addli r8, zero, 4096
	.loc	1 193 7                         # parallel-rne.mlir:193:7
	mfence { sm }
.LBB0_98:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 15
	zext_int2long r[1:2], r1
	.loc	1 221 7 is_stmt 1               # parallel-rne.mlir:221:7
	store.d r[1:2], -40(r30)                # 8-byte Folded Spill
	addli r1, zero, 3
	bneq r10, r1, .LBB0_123
# %bb.99:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 12
	.loc	1 221 7                         # parallel-rne.mlir:221:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_101
.LBB0_100:                              # %middle.block178
                                        #   in Loop: Header=BB0_101 Depth=2
	.loc	1 228 9 is_stmt 1               # parallel-rne.mlir:228:9
	load.d r[1:2], -40(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	addli r11, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_122
.LBB0_101:                              # %.preheader49
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_103 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[16:17], r[6:7], r11
	zext_int2long r[25:26], zero
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_103
.LBB0_102:                              # %vector.body174
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 229 11 is_stmt 1              # parallel-rne.mlir:229:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 244 13                        # parallel-rne.mlir:244:13
	add.s r1, r21, r1
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	setneq.d r2, r[25:26], r[12:13]
	.loc	1 244 13                        # parallel-rne.mlir:244:13
	stores.w r11, 12(r1)
	stores.w r10, 8(r1)
	stores.w r20, 4(r1)
	stores.w r14, 0(r1)
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	beq r2, zero, .LBB0_100
.LBB0_103:                              # %vector.body174
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_101 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	add.ul r[1:2], r[25:26], r[16:17]
	slli r1, r1, 2
	add.s r6, r24, r1
	loads.w r2, 12(r6)
	loads.w r23, 0(r6)
	loads.w r8, 4(r6)
	loads.w r18, 8(r6)
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	and r9, r2, r3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	setlt.u r6, r27, r9
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r6, zero, .LBB0_105
# %bb.104:                              # %vector.body174
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r2, 0
	j .LBB0_106
.LBB0_105:                              #   in Loop: Header=BB0_103 Depth=3
	or r11, r2, r19
.LBB0_106:                              # %vector.body174
                                        #   in Loop: Header=BB0_103 Depth=3
	and r15, r18, r3
	setlt.u r6, r27, r15
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r6, zero, .LBB0_108
# %bb.107:                              # %vector.body174
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r18, 0
	j .LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_103 Depth=3
	or r10, r18, r19
.LBB0_109:                              # %vector.body174
                                        #   in Loop: Header=BB0_103 Depth=3
	and r28, r8, r3
	setlt.u r6, r27, r28
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r6, zero, .LBB0_111
# %bb.110:                              # %vector.body174
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r8, 0
	j .LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_103 Depth=3
	or r20, r8, r19
.LBB0_112:                              # %vector.body174
                                        #   in Loop: Header=BB0_103 Depth=3
	and r6, r23, r3
	setlt.u r7, r27, r6
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r7, zero, .LBB0_114
# %bb.113:                              # %vector.body174
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r23, 0
	.loc	1 241 19 is_stmt 1              # parallel-rne.mlir:241:19
	setlt.u r6, r5, r6
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	beq r6, zero, .LBB0_115
	j .LBB0_116
.LBB0_114:                              #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r23, r19
	.loc	1 241 19 is_stmt 1              # parallel-rne.mlir:241:19
	setlt.u r6, r5, r6
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r6, zero, .LBB0_116
.LBB0_115:                              # %vector.body174
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r23, 16
	andi r6, r6, 1
	add.s r6, r23, r6
	add.s r6, r6, r4
	and r14, r6, r22
.LBB0_116:                              # %vector.body174
                                        #   in Loop: Header=BB0_103 Depth=3
	setlt.u r6, r5, r28
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r6, zero, .LBB0_119
# %bb.117:                              # %vector.body174
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r4
	and r20, r6, r22
	setlt.u r6, r5, r15
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	beq r6, zero, .LBB0_120
.LBB0_118:                              # %vector.body174
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r9
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r6, zero, .LBB0_102
	j .LBB0_121
.LBB0_119:                              # %vector.body174
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r15
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r6, zero, .LBB0_118
.LBB0_120:                              # %vector.body174
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r4
	and r10, r6, r22
	setlt.u r6, r5, r9
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r6, zero, .LBB0_102
.LBB0_121:                              # %vector.body174
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r4
	and r11, r2, r22
	j .LBB0_102
.LBB0_122:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	addli r8, zero, 4096
	.loc	1 221 7                         # parallel-rne.mlir:221:7
	mfence { sm }
.LBB0_123:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 19
	zext_int2long r[1:2], r1
	.loc	1 249 7 is_stmt 1               # parallel-rne.mlir:249:7
	store.d r[1:2], -32(r30)                # 8-byte Folded Spill
	loadli.w r1,  -88(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_148
# %bb.124:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 249 7                         # parallel-rne.mlir:249:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_126
.LBB0_125:                              # %middle.block169
                                        #   in Loop: Header=BB0_126 Depth=2
	.loc	1 256 9 is_stmt 1               # parallel-rne.mlir:256:9
	load.d r[1:2], -32(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	addli r11, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_147
.LBB0_126:                              # %.preheader48
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_128 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[16:17], r[6:7], r11
	zext_int2long r[25:26], zero
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_128
.LBB0_127:                              # %vector.body165
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 257 11 is_stmt 1              # parallel-rne.mlir:257:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 272 13                        # parallel-rne.mlir:272:13
	add.s r1, r21, r1
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	setneq.d r2, r[25:26], r[12:13]
	.loc	1 272 13                        # parallel-rne.mlir:272:13
	stores.w r11, 12(r1)
	stores.w r10, 8(r1)
	stores.w r20, 4(r1)
	stores.w r14, 0(r1)
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	beq r2, zero, .LBB0_125
.LBB0_128:                              # %vector.body165
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_126 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	add.ul r[1:2], r[25:26], r[16:17]
	slli r1, r1, 2
	add.s r6, r24, r1
	loads.w r2, 12(r6)
	loads.w r23, 0(r6)
	loads.w r8, 4(r6)
	loads.w r18, 8(r6)
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	and r9, r2, r3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	setlt.u r6, r27, r9
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r6, zero, .LBB0_130
# %bb.129:                              # %vector.body165
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r2, 0
	j .LBB0_131
.LBB0_130:                              #   in Loop: Header=BB0_128 Depth=3
	or r11, r2, r19
.LBB0_131:                              # %vector.body165
                                        #   in Loop: Header=BB0_128 Depth=3
	and r15, r18, r3
	setlt.u r6, r27, r15
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r6, zero, .LBB0_133
# %bb.132:                              # %vector.body165
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r18, 0
	j .LBB0_134
.LBB0_133:                              #   in Loop: Header=BB0_128 Depth=3
	or r10, r18, r19
.LBB0_134:                              # %vector.body165
                                        #   in Loop: Header=BB0_128 Depth=3
	and r28, r8, r3
	setlt.u r6, r27, r28
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r6, zero, .LBB0_136
# %bb.135:                              # %vector.body165
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r8, 0
	j .LBB0_137
.LBB0_136:                              #   in Loop: Header=BB0_128 Depth=3
	or r20, r8, r19
.LBB0_137:                              # %vector.body165
                                        #   in Loop: Header=BB0_128 Depth=3
	and r6, r23, r3
	setlt.u r7, r27, r6
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r7, zero, .LBB0_139
# %bb.138:                              # %vector.body165
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r23, 0
	.loc	1 269 19 is_stmt 1              # parallel-rne.mlir:269:19
	setlt.u r6, r5, r6
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	beq r6, zero, .LBB0_140
	j .LBB0_141
.LBB0_139:                              #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r23, r19
	.loc	1 269 19 is_stmt 1              # parallel-rne.mlir:269:19
	setlt.u r6, r5, r6
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r6, zero, .LBB0_141
.LBB0_140:                              # %vector.body165
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r23, 16
	andi r6, r6, 1
	add.s r6, r23, r6
	add.s r6, r6, r4
	and r14, r6, r22
.LBB0_141:                              # %vector.body165
                                        #   in Loop: Header=BB0_128 Depth=3
	setlt.u r6, r5, r28
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r6, zero, .LBB0_144
# %bb.142:                              # %vector.body165
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r4
	and r20, r6, r22
	setlt.u r6, r5, r15
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	beq r6, zero, .LBB0_145
.LBB0_143:                              # %vector.body165
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r9
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r6, zero, .LBB0_127
	j .LBB0_146
.LBB0_144:                              # %vector.body165
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r15
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r6, zero, .LBB0_143
.LBB0_145:                              # %vector.body165
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r4
	and r10, r6, r22
	setlt.u r6, r5, r9
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r6, zero, .LBB0_127
.LBB0_146:                              # %vector.body165
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r4
	and r11, r2, r22
	j .LBB0_127
.LBB0_147:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	addli r8, zero, 4096
	.loc	1 249 7                         # parallel-rne.mlir:249:7
	mfence { sm }
.LBB0_148:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 23
	zext_int2long r[1:2], r1
	.loc	1 277 7 is_stmt 1               # parallel-rne.mlir:277:7
	store.d r[1:2], -24(r30)                # 8-byte Folded Spill
	bneq r10, r11, .LBB0_173
# %bb.149:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 277 7                         # parallel-rne.mlir:277:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_151
.LBB0_150:                              # %middle.block160
                                        #   in Loop: Header=BB0_151 Depth=2
	.loc	1 284 9 is_stmt 1               # parallel-rne.mlir:284:9
	load.d r[1:2], -24(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	addli r11, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_172
.LBB0_151:                              # %.preheader47
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_153 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[16:17], r[6:7], r11
	zext_int2long r[25:26], zero
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_153
.LBB0_152:                              # %vector.body156
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 285 11 is_stmt 1              # parallel-rne.mlir:285:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 300 13                        # parallel-rne.mlir:300:13
	add.s r1, r21, r1
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	setneq.d r2, r[25:26], r[12:13]
	.loc	1 300 13                        # parallel-rne.mlir:300:13
	stores.w r11, 12(r1)
	stores.w r10, 8(r1)
	stores.w r20, 4(r1)
	stores.w r14, 0(r1)
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	beq r2, zero, .LBB0_150
.LBB0_153:                              # %vector.body156
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_151 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	add.ul r[1:2], r[25:26], r[16:17]
	slli r1, r1, 2
	add.s r6, r24, r1
	loads.w r2, 12(r6)
	loads.w r23, 0(r6)
	loads.w r8, 4(r6)
	loads.w r18, 8(r6)
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	and r9, r2, r3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	setlt.u r6, r27, r9
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r6, zero, .LBB0_155
# %bb.154:                              # %vector.body156
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r2, 0
	j .LBB0_156
.LBB0_155:                              #   in Loop: Header=BB0_153 Depth=3
	or r11, r2, r19
.LBB0_156:                              # %vector.body156
                                        #   in Loop: Header=BB0_153 Depth=3
	and r15, r18, r3
	setlt.u r6, r27, r15
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r6, zero, .LBB0_158
# %bb.157:                              # %vector.body156
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r18, 0
	j .LBB0_159
.LBB0_158:                              #   in Loop: Header=BB0_153 Depth=3
	or r10, r18, r19
.LBB0_159:                              # %vector.body156
                                        #   in Loop: Header=BB0_153 Depth=3
	and r28, r8, r3
	setlt.u r6, r27, r28
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r6, zero, .LBB0_161
# %bb.160:                              # %vector.body156
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r8, 0
	j .LBB0_162
.LBB0_161:                              #   in Loop: Header=BB0_153 Depth=3
	or r20, r8, r19
.LBB0_162:                              # %vector.body156
                                        #   in Loop: Header=BB0_153 Depth=3
	and r6, r23, r3
	setlt.u r7, r27, r6
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r7, zero, .LBB0_164
# %bb.163:                              # %vector.body156
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r23, 0
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r6, r5, r6
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r6, zero, .LBB0_165
	j .LBB0_166
.LBB0_164:                              #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r23, r19
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r6, r5, r6
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r6, zero, .LBB0_166
.LBB0_165:                              # %vector.body156
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r23, 16
	andi r6, r6, 1
	add.s r6, r23, r6
	add.s r6, r6, r4
	and r14, r6, r22
.LBB0_166:                              # %vector.body156
                                        #   in Loop: Header=BB0_153 Depth=3
	setlt.u r6, r5, r28
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r6, zero, .LBB0_169
# %bb.167:                              # %vector.body156
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r4
	and r20, r6, r22
	setlt.u r6, r5, r15
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r6, zero, .LBB0_170
.LBB0_168:                              # %vector.body156
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r9
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r6, zero, .LBB0_152
	j .LBB0_171
.LBB0_169:                              # %vector.body156
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r15
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r6, zero, .LBB0_168
.LBB0_170:                              # %vector.body156
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r4
	and r10, r6, r22
	setlt.u r6, r5, r9
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r6, zero, .LBB0_152
.LBB0_171:                              # %vector.body156
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r4
	and r11, r2, r22
	j .LBB0_152
.LBB0_172:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	addli r8, zero, 4096
	.loc	1 277 7                         # parallel-rne.mlir:277:7
	mfence { sm }
.LBB0_173:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 27
	zext_int2long r[1:2], r1
	.loc	1 305 7 is_stmt 1               # parallel-rne.mlir:305:7
	store.d r[1:2], -16(r30)                # 8-byte Folded Spill
	addli r1, zero, 6
	bneq r10, r1, .LBB0_198
# %bb.174:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 305 7                         # parallel-rne.mlir:305:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_176
.LBB0_175:                              # %middle.block151
                                        #   in Loop: Header=BB0_176 Depth=2
	.loc	1 312 9 is_stmt 1               # parallel-rne.mlir:312:9
	load.d r[1:2], -16(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	addli r11, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_197
.LBB0_176:                              # %.preheader46
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_178 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[16:17], r[6:7], r11
	zext_int2long r[25:26], zero
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_178
.LBB0_177:                              # %vector.body147
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 313 11 is_stmt 1              # parallel-rne.mlir:313:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 328 13                        # parallel-rne.mlir:328:13
	add.s r1, r21, r1
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	setneq.d r2, r[25:26], r[12:13]
	.loc	1 328 13                        # parallel-rne.mlir:328:13
	stores.w r11, 12(r1)
	stores.w r10, 8(r1)
	stores.w r20, 4(r1)
	stores.w r14, 0(r1)
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	beq r2, zero, .LBB0_175
.LBB0_178:                              # %vector.body147
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_176 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	add.ul r[1:2], r[25:26], r[16:17]
	slli r1, r1, 2
	add.s r6, r24, r1
	loads.w r2, 12(r6)
	loads.w r23, 0(r6)
	loads.w r8, 4(r6)
	loads.w r18, 8(r6)
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	and r9, r2, r3
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	setlt.u r6, r27, r9
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r6, zero, .LBB0_180
# %bb.179:                              # %vector.body147
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r2, 0
	j .LBB0_181
.LBB0_180:                              #   in Loop: Header=BB0_178 Depth=3
	or r11, r2, r19
.LBB0_181:                              # %vector.body147
                                        #   in Loop: Header=BB0_178 Depth=3
	and r15, r18, r3
	setlt.u r6, r27, r15
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r6, zero, .LBB0_183
# %bb.182:                              # %vector.body147
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r18, 0
	j .LBB0_184
.LBB0_183:                              #   in Loop: Header=BB0_178 Depth=3
	or r10, r18, r19
.LBB0_184:                              # %vector.body147
                                        #   in Loop: Header=BB0_178 Depth=3
	and r28, r8, r3
	setlt.u r6, r27, r28
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r6, zero, .LBB0_186
# %bb.185:                              # %vector.body147
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r8, 0
	j .LBB0_187
.LBB0_186:                              #   in Loop: Header=BB0_178 Depth=3
	or r20, r8, r19
.LBB0_187:                              # %vector.body147
                                        #   in Loop: Header=BB0_178 Depth=3
	and r6, r23, r3
	setlt.u r7, r27, r6
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r7, zero, .LBB0_189
# %bb.188:                              # %vector.body147
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r23, 0
	.loc	1 325 19 is_stmt 1              # parallel-rne.mlir:325:19
	setlt.u r6, r5, r6
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	beq r6, zero, .LBB0_190
	j .LBB0_191
.LBB0_189:                              #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r23, r19
	.loc	1 325 19 is_stmt 1              # parallel-rne.mlir:325:19
	setlt.u r6, r5, r6
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r6, zero, .LBB0_191
.LBB0_190:                              # %vector.body147
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r23, 16
	andi r6, r6, 1
	add.s r6, r23, r6
	add.s r6, r6, r4
	and r14, r6, r22
.LBB0_191:                              # %vector.body147
                                        #   in Loop: Header=BB0_178 Depth=3
	setlt.u r6, r5, r28
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r6, zero, .LBB0_194
# %bb.192:                              # %vector.body147
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r4
	and r20, r6, r22
	setlt.u r6, r5, r15
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	beq r6, zero, .LBB0_195
.LBB0_193:                              # %vector.body147
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r9
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r6, zero, .LBB0_177
	j .LBB0_196
.LBB0_194:                              # %vector.body147
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r15
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r6, zero, .LBB0_193
.LBB0_195:                              # %vector.body147
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r4
	and r10, r6, r22
	setlt.u r6, r5, r9
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r6, zero, .LBB0_177
.LBB0_196:                              # %vector.body147
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r4
	and r11, r2, r22
	j .LBB0_177
.LBB0_197:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	addli r8, zero, 4096
	.loc	1 305 7                         # parallel-rne.mlir:305:7
	mfence { sm }
.LBB0_198:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 31
	zext_int2long r[1:2], r1
	.loc	1 333 7 is_stmt 1               # parallel-rne.mlir:333:7
	store.d r[1:2], -8(r30)                 # 8-byte Folded Spill
	loadli.w r1,  -84(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_223
# %bb.199:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 333 7                         # parallel-rne.mlir:333:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_201
.LBB0_200:                              # %middle.block142
                                        #   in Loop: Header=BB0_201 Depth=2
	.loc	1 340 9 is_stmt 1               # parallel-rne.mlir:340:9
	load.d r[1:2], -8(r30)                  # 8-byte Folded Reload
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	addli r11, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_222
.LBB0_201:                              # %.preheader45
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_203 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[25:26], r[6:7], r11
	zext_int2long r[1:2], zero
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	j .LBB0_203
.LBB0_202:                              # %vector.body138
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 341 11 is_stmt 1              # parallel-rne.mlir:341:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	add.s r8, r21, r18
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	setneq.d r7, r[1:2], r[12:13]
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	stores.w r11, 12(r8)
	stores.w r10, 8(r8)
	stores.w r28, 4(r8)
	stores.w r6, 0(r8)
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	beq r7, zero, .LBB0_200
.LBB0_203:                              # %vector.body138
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	add.ul r[6:7], r[1:2], r[25:26]
	slli r18, r6, 2
	add.s r6, r24, r18
	loads.w r20, 12(r6)
	loads.w r14, 0(r6)
	loads.w r8, 4(r6)
	loads.w r23, 8(r6)
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	and r9, r20, r3
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	setlt.u r6, r27, r9
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r6, zero, .LBB0_205
# %bb.204:                              # %vector.body138
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r20, 0
	j .LBB0_206
.LBB0_205:                              #   in Loop: Header=BB0_203 Depth=3
	or r11, r20, r19
.LBB0_206:                              # %vector.body138
                                        #   in Loop: Header=BB0_203 Depth=3
	and r15, r23, r3
	setlt.u r6, r27, r15
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r6, zero, .LBB0_208
# %bb.207:                              # %vector.body138
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r23, 0
	j .LBB0_209
.LBB0_208:                              #   in Loop: Header=BB0_203 Depth=3
	or r10, r23, r19
.LBB0_209:                              # %vector.body138
                                        #   in Loop: Header=BB0_203 Depth=3
	and r7, r8, r3
	setlt.u r6, r27, r7
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r6, zero, .LBB0_211
# %bb.210:                              # %vector.body138
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r8, 0
	j .LBB0_212
.LBB0_211:                              #   in Loop: Header=BB0_203 Depth=3
	or r28, r8, r19
.LBB0_212:                              # %vector.body138
                                        #   in Loop: Header=BB0_203 Depth=3
	and r16, r14, r3
	setlt.u r6, r27, r16
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r6, zero, .LBB0_214
# %bb.213:                              # %vector.body138
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r14, 0
	.loc	1 353 19 is_stmt 1              # parallel-rne.mlir:353:19
	setlt.u r16, r5, r16
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	beq r16, zero, .LBB0_215
	j .LBB0_216
.LBB0_214:                              #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r14, r19
	.loc	1 353 19 is_stmt 1              # parallel-rne.mlir:353:19
	setlt.u r16, r5, r16
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r16, zero, .LBB0_216
.LBB0_215:                              # %vector.body138
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r14, 16
	andi r6, r6, 1
	add.s r6, r14, r6
	add.s r6, r6, r4
	and r6, r6, r22
.LBB0_216:                              # %vector.body138
                                        #   in Loop: Header=BB0_203 Depth=3
	setlt.u r7, r5, r7
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r7, zero, .LBB0_219
# %bb.217:                              # %vector.body138
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r4
	and r28, r7, r22
	setlt.u r7, r5, r15
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	beq r7, zero, .LBB0_220
.LBB0_218:                              # %vector.body138
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r5, r9
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r7, zero, .LBB0_202
	j .LBB0_221
.LBB0_219:                              # %vector.body138
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r5, r15
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r7, zero, .LBB0_218
.LBB0_220:                              # %vector.body138
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r23, 16
	andi r7, r7, 1
	add.s r7, r23, r7
	add.s r7, r7, r4
	and r10, r7, r22
	setlt.u r7, r5, r9
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r7, zero, .LBB0_202
.LBB0_221:                              # %vector.body138
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r20, 16
	andi r7, r7, 1
	add.s r7, r20, r7
	add.s r7, r7, r4
	and r11, r7, r22
	j .LBB0_202
.LBB0_222:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	addli r8, zero, 4096
	.loc	1 333 7                         # parallel-rne.mlir:333:7
	mfence { sm }
.LBB0_223:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -120(r30)                 # 4-byte Folded Reload
	addli r2, zero, 224
	zext_int2long r[6:7], r2
	slli r1, r1, 5
	zext_int2long r[1:2], r1
	min.ul r[6:7], r[1:2], r[6:7]
	addli.d r[6:7], r[6:7], 32
	max.ul r[6:7], r[6:7], r[1:2]
	sub.sl r[1:2], r[6:7], r[1:2]
	min.ul r[1:2], r[1:2], r[12:13]
	.loc	1 361 7 is_stmt 1               # parallel-rne.mlir:361:7
	store.d r[1:2], -120(r30)               # 8-byte Folded Spill
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	addli r1, zero, 3
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	sync_core
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	bneq r10, r1, .LBB0_225
# %bb.224:                              # %.thread33.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	addli r2, zero, 16
	xsignal r1, 0
	.loc	1 363 7                         # parallel-rne.mlir:363:7
	addli r1, zero, 12
	xsignal r1, 0
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	addli r1, zero, 13
	xwait r1, 0
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	addli r1, zero, 19
	xwait r1, 0
	.loc	1 366 7                         # parallel-rne.mlir:366:7
	j .LBB0_237
.LBB0_225:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -100(r30)                 # 4-byte Folded Reload
	lui r2, 25
	slli r1, r1, 7
	add.s r6, r1, r2
	.loc	1 365 7 is_stmt 1               # parallel-rne.mlir:365:7
	addli r2, zero, 1
	bneq r10, r2, .LBB0_229
# %bb.226:                              #   in Loop: Header=BB0_8 Depth=1
	load.d r[7:8], 16(r30)
	load.d r[14:15], -128(r30)              # 8-byte Folded Reload
	addli r16, zero, 16
	xwait r16, 0
	loadli.w r2,  -96(r30)                  # 4-byte Folded Reload
	add.ul r[7:8], r[7:8], r[14:15]
	addli r15, zero, 4
	blt.s r15, r2, .LBB0_228
# %bb.227:                              #   in Loop: Header=BB0_8 Depth=1
	lock zero, r11
	addli r9, zero, 1
	addli r2, zero, 2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 3
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 6
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 7
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 18
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 19
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
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r2, 3
	addli r2, zero, 128
	dma_cfg r2, zero, r9, 4
	dma_cfg r2, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
.LBB0_228:                              # %.thread33.thread37
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r14, zero, 1
	.loc	1 365 7                         # parallel-rne.mlir:365:7
	lock zero, r15
	lui r2, 25
	addli r9, zero, 64
	dma_cfg r14, r14, zero, 0
	ori r2, r2, 64
	dma_cfg zero, r8, zero, 2
	load.d r[17:18], -120(r30)              # 8-byte Folded Reload
	add.s r1, r1, r2
	dma_cfg r1, r7, r9, 3
	addli r7, zero, 2
	addli r8, zero, 17
	addli r2, r17, 31
	srli r1, r2, 5
	slli r2, r17, 1
	addli r17, zero, 128
	dma_cfg r17, r9, r1, 4
	andi r2, r2, 62
	dma_cfg r17, r9, r14, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 3
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 6
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 7
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 8
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 9
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 11
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 12
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 13
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 14
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 15
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 18
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 19
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
	dma_cfg r14, r14, zero, 0
	dma_cfg r14, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r9, 3
	dma_cfg r17, zero, r1, 4
	dma_cfg r17, zero, r14, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	addli r2, zero, 16
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r7, 0
	.loc	1 366 7 is_stmt 1               # parallel-rne.mlir:366:7
	j .LBB0_237
.LBB0_229:                              #   in Loop: Header=BB0_8 Depth=1
	bneq r10, r11, .LBB0_236
# %bb.230:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 12
	addli r1, zero, 0
	xwait r2, 0
	addli r2, zero, 15
	xwait r2, 0
	addli r2, zero, 2
	lock zero, r2
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, r2, zero, 0
	addli r2, zero, 31
	ew_cfg zero, r2, zero, 2
	addli r2, zero, 1
	ew_cfg r2, zero, zero, 3
.LBB0_231:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r2, r21, r1
	addli r1, r1, 128
	dsmadd r2, r2, r6, 0
	bneq r1, r8, .LBB0_231
# %bb.232:                              # %.thread33
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 2
	addli r2, zero, 16
	unlock r1
	addli r1, zero, 13
	xsignal r1, 0
	xsignal r2, 0
	j .LBB0_237
.LBB0_233:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 110 7                         # parallel-rne.mlir:110:7
	addli r2, zero, 8
	storeli.w zero, -84(r30)                # 4-byte Folded Spill
	xwait r20, 0
	addli r6, zero, 1
	xwait r2, 0
	addli r2, zero, 11
	xwait r2, 0
	addli r2, zero, 32
	lock zero, r6
	mm_cfg r2, r14, r2, 0
	mm_cfg r20, r6, r6, 2
	mm r24, r1, r1, 8
	addli r1, zero, 1
	storeli.w r1, -88(r30)                  # 4-byte Folded Spill
	addli r1, zero, 9
	unlock r6
	xsignal r11, 0
	xsignal r1, 0
	addli r1, zero, 10
.LBB0_234:                              # %.thread30
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
	store.d r[12:13], -112(r30)             # 8-byte Folded Spill
	.loc	1 131 7 is_stmt 1               # parallel-rne.mlir:131:7
	bneq r10, r18, .LBB0_20
	j .LBB0_19
.LBB0_235:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -88(r30)                # 4-byte Folded Spill
	storeli.w zero, -84(r30)                # 4-byte Folded Spill
	store.d r[12:13], -112(r30)             # 8-byte Folded Spill
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	beq r10, r18, .LBB0_19
	j .LBB0_20
.LBB0_236:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 16
.LBB0_237:                              # %.critedge6
                                        #   in Loop: Header=BB0_8 Depth=1
	lui r1, 25
	.loc	1 371 7 is_stmt 1               # parallel-rne.mlir:371:7
	xfence
	.loc	1 372 7                         # parallel-rne.mlir:372:7
	mfence { lm, sm, gm }
	ori r1, r1, 640
	add.s r28, r24, r1
	.loc	1 373 7                         # parallel-rne.mlir:373:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	load.d r[6:7], -80(r30)                 # 8-byte Folded Reload
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	beq r10, zero, .LBB0_330
# %bb.238:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 402 7                         # parallel-rne.mlir:402:7
	addli r1, zero, 1
	bneq r10, r1, .LBB0_359
.LBB0_239:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 4
	.loc	1 402 7                         # parallel-rne.mlir:402:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_241
.LBB0_240:                              # %middle.block124
                                        #   in Loop: Header=BB0_241 Depth=2
	.loc	1 409 9 is_stmt 1               # parallel-rne.mlir:409:9
	load.d r[1:2], -56(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	addli r11, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_267
.LBB0_241:                              # %.preheader43
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_243 Depth 3
                                        #       Child Loop BB0_264 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r11
	zext_int2long r[1:2], zero
	.loc	1 410 11 is_stmt 1              # parallel-rne.mlir:410:11
	beq r28, r21, .LBB0_264
	j .LBB0_243
.LBB0_242:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	addli.d r[1:2], r[1:2], 4
	.loc	1 425 13                        # parallel-rne.mlir:425:13
	add.s r11, r28, r18
	.loc	1 410 11                        # parallel-rne.mlir:410:11
	seteq.d r10, r[1:2], r[12:13]
	.loc	1 425 13                        # parallel-rne.mlir:425:13
	stores.w r20, 12(r11)
	stores.w r9, 8(r11)
	stores.w r25, 4(r11)
	stores.w r8, 0(r11)
	.loc	1 410 11                        # parallel-rne.mlir:410:11
	bneq r10, zero, .LBB0_240
.LBB0_243:                              # %vector.body120
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_241 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r18, r8, 2
	add.s r8, r21, r18
	loads.w r11, 12(r8)
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	and r23, r11, r3
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	setlt.u r9, r27, r23
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r9, zero, .LBB0_245
# %bb.244:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r11, 0
	j .LBB0_246
.LBB0_245:                              #   in Loop: Header=BB0_243 Depth=3
	or r20, r11, r19
.LBB0_246:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	loads.w r14, 8(r8)
	and r15, r14, r3
	setlt.u r9, r27, r15
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r9, zero, .LBB0_248
# %bb.247:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r14, 0
	j .LBB0_249
.LBB0_248:                              #   in Loop: Header=BB0_243 Depth=3
	or r9, r14, r19
.LBB0_249:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	loads.w r10, 4(r8)
	and r26, r10, r3
	setlt.u r16, r27, r26
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r16, zero, .LBB0_251
# %bb.250:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r10, 0
	j .LBB0_252
.LBB0_251:                              #   in Loop: Header=BB0_243 Depth=3
	or r25, r10, r19
.LBB0_252:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	loads.w r16, 0(r8)
	and r17, r16, r3
	setlt.u r8, r27, r17
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r8, zero, .LBB0_254
# %bb.253:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
	.loc	1 422 19 is_stmt 1              # parallel-rne.mlir:422:19
	setlt.u r17, r5, r17
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	beq r17, zero, .LBB0_255
	j .LBB0_256
.LBB0_254:                              #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r16, r19
	.loc	1 422 19 is_stmt 1              # parallel-rne.mlir:422:19
	setlt.u r17, r5, r17
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r17, zero, .LBB0_256
.LBB0_255:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r4
	and r8, r8, r22
.LBB0_256:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	setlt.u r16, r5, r26
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r16, zero, .LBB0_259
# %bb.257:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r10, 16
	andi r16, r16, 1
	add.s r10, r10, r16
	add.s r10, r10, r4
	and r25, r10, r22
	setlt.u r10, r5, r15
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	beq r10, zero, .LBB0_260
.LBB0_258:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r5, r23
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r10, zero, .LBB0_242
	j .LBB0_261
.LBB0_259:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r5, r15
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r10, zero, .LBB0_258
.LBB0_260:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r4
	and r9, r9, r22
	setlt.u r10, r5, r23
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r10, zero, .LBB0_242
.LBB0_261:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r4
	and r20, r10, r22
	j .LBB0_242
.LBB0_262:                              # %scalar.ph118
                                        #   in Loop: Header=BB0_264 Depth=3
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r4
	and r9, r9, r22
.LBB0_263:                              # %scalar.ph118
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 410 11 is_stmt 1              # parallel-rne.mlir:410:11
	load.d r[10:11], -8(r30)                # 8-byte Folded Reload
	.loc	1 425 13                        # parallel-rne.mlir:425:13
	add.s r8, r28, r8
	stores.w r9, 0(r8)
	.loc	1 410 11                        # parallel-rne.mlir:410:11
	setlt.ul r10, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r10, zero, .LBB0_240
.LBB0_264:                              # %scalar.ph118
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_241 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r8, r8, 2
	add.s r9, r21, r8
	loads.w r10, 0(r9)
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	and r11, r10, r3
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	setlt.u r9, r27, r11
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r9, zero, .LBB0_266
# %bb.265:                              # %scalar.ph118
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 422 19 is_stmt 1              # parallel-rne.mlir:422:19
	setlt.u r11, r5, r11
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r11, zero, .LBB0_263
	j .LBB0_262
.LBB0_266:                              #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r10, r19
	.loc	1 422 19 is_stmt 1              # parallel-rne.mlir:422:19
	setlt.u r11, r5, r11
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r11, zero, .LBB0_263
	j .LBB0_262
.LBB0_267:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 402 7                         # parallel-rne.mlir:402:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r10
	addli r2, zero, 16
	load.d r[6:7], -80(r30)                 # 8-byte Folded Reload
	.loc	1 430 7                         # parallel-rne.mlir:430:7
	loadli.w r1,  -92(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_360
.LBB0_268:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 458 7                         # parallel-rne.mlir:458:7
	addli r1, zero, 3
	bneq r10, r1, .LBB0_389
.LBB0_269:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 12
	.loc	1 458 7                         # parallel-rne.mlir:458:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_271
.LBB0_270:                              # %middle.block106
                                        #   in Loop: Header=BB0_271 Depth=2
	.loc	1 465 9 is_stmt 1               # parallel-rne.mlir:465:9
	load.d r[1:2], -40(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -48(r30)                 # 8-byte Folded Reload
	addli r11, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_297
.LBB0_271:                              # %.preheader41
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_273 Depth 3
                                        #       Child Loop BB0_294 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -48(r30)                # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r11
	zext_int2long r[1:2], zero
	.loc	1 466 11 is_stmt 1              # parallel-rne.mlir:466:11
	beq r28, r21, .LBB0_294
	j .LBB0_273
.LBB0_272:                              # %vector.body102
                                        #   in Loop: Header=BB0_273 Depth=3
	addli.d r[1:2], r[1:2], 4
	.loc	1 481 13                        # parallel-rne.mlir:481:13
	add.s r11, r28, r14
	.loc	1 466 11                        # parallel-rne.mlir:466:11
	seteq.d r10, r[1:2], r[12:13]
	.loc	1 481 13                        # parallel-rne.mlir:481:13
	stores.w r15, 12(r11)
	stores.w r20, 8(r11)
	stores.w r9, 4(r11)
	stores.w r8, 0(r11)
	.loc	1 466 11                        # parallel-rne.mlir:466:11
	bneq r10, zero, .LBB0_270
.LBB0_273:                              # %vector.body102
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_271 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 467 19                        # parallel-rne.mlir:467:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r14, r8, 2
	add.s r8, r21, r14
	loads.w r11, 12(r8)
	.loc	1 469 19                        # parallel-rne.mlir:469:19
	and r18, r11, r3
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	setlt.u r9, r27, r18
	.loc	1 472 19                        # parallel-rne.mlir:472:19
	bneq r9, zero, .LBB0_275
# %bb.274:                              # %vector.body102
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r11, 0
	j .LBB0_276
.LBB0_275:                              #   in Loop: Header=BB0_273 Depth=3
	or r15, r11, r19
.LBB0_276:                              # %vector.body102
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r25, 8(r8)
	and r26, r25, r3
	setlt.u r9, r27, r26
	.loc	1 472 19                        # parallel-rne.mlir:472:19
	bneq r9, zero, .LBB0_278
# %bb.277:                              # %vector.body102
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r25, 0
	j .LBB0_279
.LBB0_278:                              #   in Loop: Header=BB0_273 Depth=3
	or r20, r25, r19
.LBB0_279:                              # %vector.body102
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r23, 4(r8)
	and r10, r23, r3
	setlt.u r9, r27, r10
	.loc	1 472 19                        # parallel-rne.mlir:472:19
	bneq r9, zero, .LBB0_281
# %bb.280:                              # %vector.body102
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r23, 0
	j .LBB0_282
.LBB0_281:                              #   in Loop: Header=BB0_273 Depth=3
	or r9, r23, r19
.LBB0_282:                              # %vector.body102
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r16, 0(r8)
	and r17, r16, r3
	setlt.u r8, r27, r17
	.loc	1 472 19                        # parallel-rne.mlir:472:19
	bneq r8, zero, .LBB0_284
# %bb.283:                              # %vector.body102
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
	.loc	1 478 19 is_stmt 1              # parallel-rne.mlir:478:19
	setlt.u r17, r5, r17
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	beq r17, zero, .LBB0_285
	j .LBB0_286
.LBB0_284:                              #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r16, r19
	.loc	1 478 19 is_stmt 1              # parallel-rne.mlir:478:19
	setlt.u r17, r5, r17
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	bneq r17, zero, .LBB0_286
.LBB0_285:                              # %vector.body102
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r4
	and r8, r8, r22
.LBB0_286:                              # %vector.body102
                                        #   in Loop: Header=BB0_273 Depth=3
	setlt.u r10, r5, r10
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	bneq r10, zero, .LBB0_289
# %bb.287:                              # %vector.body102
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r23, 16
	andi r9, r9, 1
	add.s r9, r23, r9
	add.s r9, r9, r4
	and r9, r9, r22
	setlt.u r10, r5, r26
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	beq r10, zero, .LBB0_290
.LBB0_288:                              # %vector.body102
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r5, r18
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	bneq r10, zero, .LBB0_272
	j .LBB0_291
.LBB0_289:                              # %vector.body102
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r5, r26
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	bneq r10, zero, .LBB0_288
.LBB0_290:                              # %vector.body102
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r25, 16
	andi r10, r10, 1
	add.s r10, r25, r10
	add.s r10, r10, r4
	and r20, r10, r22
	setlt.u r10, r5, r18
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	bneq r10, zero, .LBB0_272
.LBB0_291:                              # %vector.body102
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r4
	and r15, r10, r22
	j .LBB0_272
.LBB0_292:                              # %scalar.ph100
                                        #   in Loop: Header=BB0_294 Depth=3
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r4
	and r9, r9, r22
.LBB0_293:                              # %scalar.ph100
                                        #   in Loop: Header=BB0_294 Depth=3
	.loc	1 466 11 is_stmt 1              # parallel-rne.mlir:466:11
	load.d r[10:11], -8(r30)                # 8-byte Folded Reload
	.loc	1 481 13                        # parallel-rne.mlir:481:13
	add.s r8, r28, r8
	stores.w r9, 0(r8)
	.loc	1 466 11                        # parallel-rne.mlir:466:11
	setlt.ul r10, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r10, zero, .LBB0_270
.LBB0_294:                              # %scalar.ph100
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_271 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 467 19                        # parallel-rne.mlir:467:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r8, r8, 2
	add.s r9, r21, r8
	loads.w r10, 0(r9)
	.loc	1 469 19                        # parallel-rne.mlir:469:19
	and r11, r10, r3
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	setlt.u r9, r27, r11
	.loc	1 472 19                        # parallel-rne.mlir:472:19
	bneq r9, zero, .LBB0_296
# %bb.295:                              # %scalar.ph100
                                        #   in Loop: Header=BB0_294 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 478 19 is_stmt 1              # parallel-rne.mlir:478:19
	setlt.u r11, r5, r11
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	bneq r11, zero, .LBB0_293
	j .LBB0_292
.LBB0_296:                              #   in Loop: Header=BB0_294 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r10, r19
	.loc	1 478 19 is_stmt 1              # parallel-rne.mlir:478:19
	setlt.u r11, r5, r11
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	bneq r11, zero, .LBB0_293
	j .LBB0_292
.LBB0_297:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 458 7                         # parallel-rne.mlir:458:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r10
	addli r2, zero, 16
	load.d r[6:7], -80(r30)                 # 8-byte Folded Reload
	.loc	1 486 7                         # parallel-rne.mlir:486:7
	loadli.w r1,  -88(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_390
.LBB0_298:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 514 7                         # parallel-rne.mlir:514:7
	bneq r10, r11, .LBB0_421
.LBB0_299:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 514 7                         # parallel-rne.mlir:514:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_301
.LBB0_300:                              # %middle.block88
                                        #   in Loop: Header=BB0_301 Depth=2
	.loc	1 521 9 is_stmt 1               # parallel-rne.mlir:521:9
	load.d r[1:2], -24(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	addli r11, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_329
.LBB0_301:                              # %.preheader39
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_310 Depth 3
                                        #       Child Loop BB0_305 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -32(r30)                # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r11
	.loc	1 522 11 is_stmt 1              # parallel-rne.mlir:522:11
	bneq r28, r21, .LBB0_308
# %bb.302:                              # %scalar.ph82.preheader
                                        #   in Loop: Header=BB0_301 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_305
.LBB0_303:                              # %scalar.ph82
                                        #   in Loop: Header=BB0_305 Depth=3
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r4
	and r9, r9, r22
.LBB0_304:                              # %scalar.ph82
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 522 11                        # parallel-rne.mlir:522:11
	load.d r[10:11], -8(r30)                # 8-byte Folded Reload
	.loc	1 537 13 is_stmt 1              # parallel-rne.mlir:537:13
	add.s r8, r28, r8
	stores.w r9, 0(r8)
	.loc	1 522 11                        # parallel-rne.mlir:522:11
	setlt.ul r10, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r10, zero, .LBB0_300
.LBB0_305:                              # %scalar.ph82
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_301 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 523 19                        # parallel-rne.mlir:523:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r8, r8, 2
	add.s r9, r21, r8
	loads.w r10, 0(r9)
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	and r11, r10, r3
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	setlt.u r9, r27, r11
	.loc	1 528 19                        # parallel-rne.mlir:528:19
	bneq r9, zero, .LBB0_307
# %bb.306:                              # %scalar.ph82
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 534 19 is_stmt 1              # parallel-rne.mlir:534:19
	setlt.u r11, r5, r11
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	bneq r11, zero, .LBB0_304
	j .LBB0_303
.LBB0_307:                              #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r10, r19
	.loc	1 534 19 is_stmt 1              # parallel-rne.mlir:534:19
	setlt.u r11, r5, r11
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	bneq r11, zero, .LBB0_304
	j .LBB0_303
.LBB0_308:                              # %vector.body84.preheader
                                        #   in Loop: Header=BB0_301 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[9:10], zero
	j .LBB0_310
.LBB0_309:                              # %vector.body84
                                        #   in Loop: Header=BB0_310 Depth=3
	.loc	1 522 11 is_stmt 1              # parallel-rne.mlir:522:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 537 13                        # parallel-rne.mlir:537:13
	add.s r11, r28, r14
	.loc	1 522 11                        # parallel-rne.mlir:522:11
	seteq.d r2, r[9:10], r[12:13]
	.loc	1 537 13                        # parallel-rne.mlir:537:13
	stores.w r15, 12(r11)
	stores.w r20, 8(r11)
	stores.w r1, 4(r11)
	stores.w r8, 0(r11)
	.loc	1 522 11                        # parallel-rne.mlir:522:11
	bneq r2, zero, .LBB0_300
.LBB0_310:                              # %vector.body84
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_301 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 523 19                        # parallel-rne.mlir:523:19
	add.ul r[1:2], r[9:10], r[6:7]
	slli r14, r1, 2
	add.s r2, r21, r14
	loads.w r11, 12(r2)
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	and r18, r11, r3
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	setlt.u r1, r27, r18
	.loc	1 528 19                        # parallel-rne.mlir:528:19
	bneq r1, zero, .LBB0_312
# %bb.311:                              # %vector.body84
                                        #   in Loop: Header=BB0_310 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r11, 0
	j .LBB0_313
.LBB0_312:                              #   in Loop: Header=BB0_310 Depth=3
	or r15, r11, r19
.LBB0_313:                              # %vector.body84
                                        #   in Loop: Header=BB0_310 Depth=3
	loads.w r25, 8(r2)
	and r26, r25, r3
	setlt.u r1, r27, r26
	.loc	1 528 19                        # parallel-rne.mlir:528:19
	bneq r1, zero, .LBB0_315
# %bb.314:                              # %vector.body84
                                        #   in Loop: Header=BB0_310 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r25, 0
	j .LBB0_316
.LBB0_315:                              #   in Loop: Header=BB0_310 Depth=3
	or r20, r25, r19
.LBB0_316:                              # %vector.body84
                                        #   in Loop: Header=BB0_310 Depth=3
	loads.w r23, 4(r2)
	and r16, r23, r3
	setlt.u r1, r27, r16
	.loc	1 528 19                        # parallel-rne.mlir:528:19
	bneq r1, zero, .LBB0_318
# %bb.317:                              # %vector.body84
                                        #   in Loop: Header=BB0_310 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r23, 0
	j .LBB0_319
.LBB0_318:                              #   in Loop: Header=BB0_310 Depth=3
	or r1, r23, r19
.LBB0_319:                              # %vector.body84
                                        #   in Loop: Header=BB0_310 Depth=3
	loads.w r2, 0(r2)
	and r17, r2, r3
	setlt.u r8, r27, r17
	.loc	1 528 19                        # parallel-rne.mlir:528:19
	bneq r8, zero, .LBB0_321
# %bb.320:                              # %vector.body84
                                        #   in Loop: Header=BB0_310 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r2, 0
	.loc	1 534 19 is_stmt 1              # parallel-rne.mlir:534:19
	setlt.u r17, r5, r17
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	beq r17, zero, .LBB0_322
	j .LBB0_323
.LBB0_321:                              #   in Loop: Header=BB0_310 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r2, r19
	.loc	1 534 19 is_stmt 1              # parallel-rne.mlir:534:19
	setlt.u r17, r5, r17
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	bneq r17, zero, .LBB0_323
.LBB0_322:                              # %vector.body84
                                        #   in Loop: Header=BB0_310 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r4
	and r8, r2, r22
.LBB0_323:                              # %vector.body84
                                        #   in Loop: Header=BB0_310 Depth=3
	setlt.u r2, r5, r16
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	bneq r2, zero, .LBB0_326
# %bb.324:                              # %vector.body84
                                        #   in Loop: Header=BB0_310 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r23, 16
	andi r1, r1, 1
	add.s r1, r23, r1
	add.s r1, r1, r4
	and r1, r1, r22
	setlt.u r2, r5, r26
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	beq r2, zero, .LBB0_327
.LBB0_325:                              # %vector.body84
                                        #   in Loop: Header=BB0_310 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r18
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	bneq r2, zero, .LBB0_309
	j .LBB0_328
.LBB0_326:                              # %vector.body84
                                        #   in Loop: Header=BB0_310 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r26
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	bneq r2, zero, .LBB0_325
.LBB0_327:                              # %vector.body84
                                        #   in Loop: Header=BB0_310 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r25, 16
	andi r2, r2, 1
	add.s r2, r25, r2
	add.s r2, r2, r4
	and r20, r2, r22
	setlt.u r2, r5, r18
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	bneq r2, zero, .LBB0_309
.LBB0_328:                              # %vector.body84
                                        #   in Loop: Header=BB0_310 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r11, 16
	andi r2, r2, 1
	add.s r2, r11, r2
	add.s r2, r2, r4
	and r15, r2, r22
	j .LBB0_309
.LBB0_329:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 514 7 is_stmt 1               # parallel-rne.mlir:514:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r10
	load.d r[6:7], -80(r30)                 # 8-byte Folded Reload
	.loc	1 542 7                         # parallel-rne.mlir:542:7
	addli r1, zero, 6
	bneq r10, r1, .LBB0_453
	j .LBB0_422
.LBB0_330:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	xfence
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	j .LBB0_332
.LBB0_331:                              # %middle.block133
                                        #   in Loop: Header=BB0_332 Depth=2
	.loc	1 381 9                         # parallel-rne.mlir:381:9
	load.d r[1:2], -72(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	addli r11, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_358
.LBB0_332:                              # %.preheader44
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_334 Depth 3
                                        #       Child Loop BB0_355 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r11
	zext_int2long r[1:2], zero
	.loc	1 382 11 is_stmt 1              # parallel-rne.mlir:382:11
	beq r28, r21, .LBB0_355
	j .LBB0_334
.LBB0_333:                              # %vector.body129
                                        #   in Loop: Header=BB0_334 Depth=3
	addli.d r[1:2], r[1:2], 4
	.loc	1 397 13                        # parallel-rne.mlir:397:13
	add.s r10, r28, r18
	.loc	1 382 11                        # parallel-rne.mlir:382:11
	seteq.d r9, r[1:2], r[12:13]
	.loc	1 397 13                        # parallel-rne.mlir:397:13
	stores.w r11, 12(r10)
	stores.w r14, 8(r10)
	stores.w r25, 4(r10)
	stores.w r8, 0(r10)
	.loc	1 382 11                        # parallel-rne.mlir:382:11
	bneq r9, zero, .LBB0_331
.LBB0_334:                              # %vector.body129
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_332 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r18, r8, 2
	add.s r8, r21, r18
	loads.w r20, 12(r8)
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	and r23, r20, r3
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	setlt.u r9, r27, r23
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r9, zero, .LBB0_336
# %bb.335:                              # %vector.body129
                                        #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r20, 0
	j .LBB0_337
.LBB0_336:                              #   in Loop: Header=BB0_334 Depth=3
	or r11, r20, r19
.LBB0_337:                              # %vector.body129
                                        #   in Loop: Header=BB0_334 Depth=3
	loads.w r9, 8(r8)
	and r15, r9, r3
	setlt.u r10, r27, r15
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r10, zero, .LBB0_339
# %bb.338:                              # %vector.body129
                                        #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_340
.LBB0_339:                              #   in Loop: Header=BB0_334 Depth=3
	or r14, r9, r19
.LBB0_340:                              # %vector.body129
                                        #   in Loop: Header=BB0_334 Depth=3
	loads.w r10, 4(r8)
	and r26, r10, r3
	setlt.u r16, r27, r26
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r16, zero, .LBB0_342
# %bb.341:                              # %vector.body129
                                        #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r10, 0
	j .LBB0_343
.LBB0_342:                              #   in Loop: Header=BB0_334 Depth=3
	or r25, r10, r19
.LBB0_343:                              # %vector.body129
                                        #   in Loop: Header=BB0_334 Depth=3
	loads.w r16, 0(r8)
	and r17, r16, r3
	setlt.u r8, r27, r17
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r8, zero, .LBB0_345
# %bb.344:                              # %vector.body129
                                        #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
	.loc	1 394 19 is_stmt 1              # parallel-rne.mlir:394:19
	setlt.u r17, r5, r17
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	beq r17, zero, .LBB0_346
	j .LBB0_347
.LBB0_345:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r16, r19
	.loc	1 394 19 is_stmt 1              # parallel-rne.mlir:394:19
	setlt.u r17, r5, r17
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r17, zero, .LBB0_347
.LBB0_346:                              # %vector.body129
                                        #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r4
	and r8, r8, r22
.LBB0_347:                              # %vector.body129
                                        #   in Loop: Header=BB0_334 Depth=3
	setlt.u r16, r5, r26
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r16, zero, .LBB0_350
# %bb.348:                              # %vector.body129
                                        #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r10, 16
	andi r16, r16, 1
	add.s r10, r10, r16
	add.s r10, r10, r4
	and r25, r10, r22
	setlt.u r10, r5, r15
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	beq r10, zero, .LBB0_351
.LBB0_349:                              # %vector.body129
                                        #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r5, r23
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r9, zero, .LBB0_333
	j .LBB0_352
.LBB0_350:                              # %vector.body129
                                        #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r5, r15
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r10, zero, .LBB0_349
.LBB0_351:                              # %vector.body129
                                        #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r9, 16
	andi r10, r10, 1
	add.s r9, r9, r10
	add.s r9, r9, r4
	and r14, r9, r22
	setlt.u r9, r5, r23
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r9, zero, .LBB0_333
.LBB0_352:                              # %vector.body129
                                        #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r20, 16
	andi r9, r9, 1
	add.s r9, r20, r9
	add.s r9, r9, r4
	and r11, r9, r22
	j .LBB0_333
.LBB0_353:                              # %scalar.ph127
                                        #   in Loop: Header=BB0_355 Depth=3
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r4
	and r9, r9, r22
.LBB0_354:                              # %scalar.ph127
                                        #   in Loop: Header=BB0_355 Depth=3
	.loc	1 382 11 is_stmt 1              # parallel-rne.mlir:382:11
	load.d r[10:11], -8(r30)                # 8-byte Folded Reload
	.loc	1 397 13                        # parallel-rne.mlir:397:13
	add.s r8, r28, r8
	stores.w r9, 0(r8)
	.loc	1 382 11                        # parallel-rne.mlir:382:11
	setlt.ul r10, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r10, zero, .LBB0_331
.LBB0_355:                              # %scalar.ph127
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_332 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r8, r8, 2
	add.s r9, r21, r8
	loads.w r10, 0(r9)
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	and r11, r10, r3
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	setlt.u r9, r27, r11
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r9, zero, .LBB0_357
# %bb.356:                              # %scalar.ph127
                                        #   in Loop: Header=BB0_355 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 394 19 is_stmt 1              # parallel-rne.mlir:394:19
	setlt.u r11, r5, r11
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r11, zero, .LBB0_354
	j .LBB0_353
.LBB0_357:                              #   in Loop: Header=BB0_355 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r10, r19
	.loc	1 394 19 is_stmt 1              # parallel-rne.mlir:394:19
	setlt.u r11, r5, r11
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r11, zero, .LBB0_354
	j .LBB0_353
.LBB0_358:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r10
	addli r2, zero, 16
	load.d r[6:7], -80(r30)                 # 8-byte Folded Reload
	.loc	1 402 7                         # parallel-rne.mlir:402:7
	addli r1, zero, 1
	beq r10, r1, .LBB0_239
.LBB0_359:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 430 7                         # parallel-rne.mlir:430:7
	loadli.w r1,  -92(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_268
.LBB0_360:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 430 7                         # parallel-rne.mlir:430:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_362
.LBB0_361:                              # %middle.block115
                                        #   in Loop: Header=BB0_362 Depth=2
	.loc	1 437 9 is_stmt 1               # parallel-rne.mlir:437:9
	load.d r[1:2], -48(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -56(r30)                 # 8-byte Folded Reload
	addli r11, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_388
.LBB0_362:                              # %.preheader42
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_364 Depth 3
                                        #       Child Loop BB0_385 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -56(r30)                # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r11
	zext_int2long r[1:2], zero
	.loc	1 438 11 is_stmt 1              # parallel-rne.mlir:438:11
	beq r28, r21, .LBB0_385
	j .LBB0_364
.LBB0_363:                              # %vector.body111
                                        #   in Loop: Header=BB0_364 Depth=3
	addli.d r[1:2], r[1:2], 4
	.loc	1 453 13                        # parallel-rne.mlir:453:13
	add.s r11, r28, r18
	.loc	1 438 11                        # parallel-rne.mlir:438:11
	seteq.d r10, r[1:2], r[12:13]
	.loc	1 453 13                        # parallel-rne.mlir:453:13
	stores.w r20, 12(r11)
	stores.w r9, 8(r11)
	stores.w r14, 4(r11)
	stores.w r8, 0(r11)
	.loc	1 438 11                        # parallel-rne.mlir:438:11
	bneq r10, zero, .LBB0_361
.LBB0_364:                              # %vector.body111
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_362 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r18, r8, 2
	add.s r8, r21, r18
	loads.w r11, 12(r8)
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	and r23, r11, r3
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	setlt.u r9, r27, r23
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	bneq r9, zero, .LBB0_366
# %bb.365:                              # %vector.body111
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r11, 0
	j .LBB0_367
.LBB0_366:                              #   in Loop: Header=BB0_364 Depth=3
	or r20, r11, r19
.LBB0_367:                              # %vector.body111
                                        #   in Loop: Header=BB0_364 Depth=3
	loads.w r25, 8(r8)
	and r26, r25, r3
	setlt.u r9, r27, r26
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	bneq r9, zero, .LBB0_369
# %bb.368:                              # %vector.body111
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r25, 0
	j .LBB0_370
.LBB0_369:                              #   in Loop: Header=BB0_364 Depth=3
	or r9, r25, r19
.LBB0_370:                              # %vector.body111
                                        #   in Loop: Header=BB0_364 Depth=3
	loads.w r10, 4(r8)
	and r15, r10, r3
	setlt.u r14, r27, r15
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	bneq r14, zero, .LBB0_372
# %bb.371:                              # %vector.body111
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r10, 0
	j .LBB0_373
.LBB0_372:                              #   in Loop: Header=BB0_364 Depth=3
	or r14, r10, r19
.LBB0_373:                              # %vector.body111
                                        #   in Loop: Header=BB0_364 Depth=3
	loads.w r16, 0(r8)
	and r17, r16, r3
	setlt.u r8, r27, r17
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	bneq r8, zero, .LBB0_375
# %bb.374:                              # %vector.body111
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
	.loc	1 450 19 is_stmt 1              # parallel-rne.mlir:450:19
	setlt.u r17, r5, r17
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	beq r17, zero, .LBB0_376
	j .LBB0_377
.LBB0_375:                              #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r16, r19
	.loc	1 450 19 is_stmt 1              # parallel-rne.mlir:450:19
	setlt.u r17, r5, r17
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r17, zero, .LBB0_377
.LBB0_376:                              # %vector.body111
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r4
	and r8, r8, r22
.LBB0_377:                              # %vector.body111
                                        #   in Loop: Header=BB0_364 Depth=3
	setlt.u r15, r5, r15
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r15, zero, .LBB0_380
# %bb.378:                              # %vector.body111
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r10, 16
	andi r14, r14, 1
	add.s r10, r10, r14
	add.s r10, r10, r4
	and r14, r10, r22
	setlt.u r10, r5, r26
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	beq r10, zero, .LBB0_381
.LBB0_379:                              # %vector.body111
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r5, r23
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r10, zero, .LBB0_363
	j .LBB0_382
.LBB0_380:                              # %vector.body111
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r5, r26
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r10, zero, .LBB0_379
.LBB0_381:                              # %vector.body111
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r4
	and r9, r9, r22
	setlt.u r10, r5, r23
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r10, zero, .LBB0_363
.LBB0_382:                              # %vector.body111
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r4
	and r20, r10, r22
	j .LBB0_363
.LBB0_383:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_385 Depth=3
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r4
	and r9, r9, r22
.LBB0_384:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_385 Depth=3
	.loc	1 438 11 is_stmt 1              # parallel-rne.mlir:438:11
	load.d r[10:11], -8(r30)                # 8-byte Folded Reload
	.loc	1 453 13                        # parallel-rne.mlir:453:13
	add.s r8, r28, r8
	stores.w r9, 0(r8)
	.loc	1 438 11                        # parallel-rne.mlir:438:11
	setlt.ul r10, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r10, zero, .LBB0_361
.LBB0_385:                              # %scalar.ph109
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_362 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r8, r8, 2
	add.s r9, r21, r8
	loads.w r10, 0(r9)
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	and r11, r10, r3
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	setlt.u r9, r27, r11
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	bneq r9, zero, .LBB0_387
# %bb.386:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_385 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 450 19 is_stmt 1              # parallel-rne.mlir:450:19
	setlt.u r11, r5, r11
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r11, zero, .LBB0_384
	j .LBB0_383
.LBB0_387:                              #   in Loop: Header=BB0_385 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r10, r19
	.loc	1 450 19 is_stmt 1              # parallel-rne.mlir:450:19
	setlt.u r11, r5, r11
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r11, zero, .LBB0_384
	j .LBB0_383
.LBB0_388:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 430 7                         # parallel-rne.mlir:430:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r10
	addli r2, zero, 16
	load.d r[6:7], -80(r30)                 # 8-byte Folded Reload
	.loc	1 458 7                         # parallel-rne.mlir:458:7
	addli r1, zero, 3
	beq r10, r1, .LBB0_269
.LBB0_389:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 486 7                         # parallel-rne.mlir:486:7
	loadli.w r1,  -88(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_298
.LBB0_390:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[6:7], r2
	mfence { lm, sm, gm }
	j .LBB0_392
.LBB0_391:                              # %middle.block97
                                        #   in Loop: Header=BB0_392 Depth=2
	.loc	1 493 9                         # parallel-rne.mlir:493:9
	load.d r[1:2], -32(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -40(r30)                 # 8-byte Folded Reload
	addli r11, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_420
.LBB0_392:                              # %.preheader40
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_401 Depth 3
                                        #       Child Loop BB0_396 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -40(r30)                # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r11
	.loc	1 494 11 is_stmt 1              # parallel-rne.mlir:494:11
	bneq r28, r21, .LBB0_399
# %bb.393:                              # %scalar.ph91.preheader
                                        #   in Loop: Header=BB0_392 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_396
.LBB0_394:                              # %scalar.ph91
                                        #   in Loop: Header=BB0_396 Depth=3
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r4
	and r9, r9, r22
.LBB0_395:                              # %scalar.ph91
                                        #   in Loop: Header=BB0_396 Depth=3
	.loc	1 494 11                        # parallel-rne.mlir:494:11
	load.d r[10:11], -8(r30)                # 8-byte Folded Reload
	.loc	1 509 13 is_stmt 1              # parallel-rne.mlir:509:13
	add.s r8, r28, r8
	stores.w r9, 0(r8)
	.loc	1 494 11                        # parallel-rne.mlir:494:11
	setlt.ul r10, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r10, zero, .LBB0_391
.LBB0_396:                              # %scalar.ph91
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_392 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 495 19                        # parallel-rne.mlir:495:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r8, r8, 2
	add.s r9, r21, r8
	loads.w r10, 0(r9)
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	and r11, r10, r3
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	setlt.u r9, r27, r11
	.loc	1 500 19                        # parallel-rne.mlir:500:19
	bneq r9, zero, .LBB0_398
# %bb.397:                              # %scalar.ph91
                                        #   in Loop: Header=BB0_396 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 506 19 is_stmt 1              # parallel-rne.mlir:506:19
	setlt.u r11, r5, r11
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	bneq r11, zero, .LBB0_395
	j .LBB0_394
.LBB0_398:                              #   in Loop: Header=BB0_396 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r10, r19
	.loc	1 506 19 is_stmt 1              # parallel-rne.mlir:506:19
	setlt.u r11, r5, r11
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	bneq r11, zero, .LBB0_395
	j .LBB0_394
.LBB0_399:                              # %vector.body93.preheader
                                        #   in Loop: Header=BB0_392 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[9:10], zero
	j .LBB0_401
.LBB0_400:                              # %vector.body93
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 494 11 is_stmt 1              # parallel-rne.mlir:494:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 509 13                        # parallel-rne.mlir:509:13
	add.s r11, r28, r14
	.loc	1 494 11                        # parallel-rne.mlir:494:11
	seteq.d r2, r[9:10], r[12:13]
	.loc	1 509 13                        # parallel-rne.mlir:509:13
	stores.w r15, 12(r11)
	stores.w r20, 8(r11)
	stores.w r1, 4(r11)
	stores.w r8, 0(r11)
	.loc	1 494 11                        # parallel-rne.mlir:494:11
	bneq r2, zero, .LBB0_391
.LBB0_401:                              # %vector.body93
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_392 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 495 19                        # parallel-rne.mlir:495:19
	add.ul r[1:2], r[9:10], r[6:7]
	slli r14, r1, 2
	add.s r2, r21, r14
	loads.w r11, 12(r2)
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	and r18, r11, r3
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	setlt.u r1, r27, r18
	.loc	1 500 19                        # parallel-rne.mlir:500:19
	bneq r1, zero, .LBB0_403
# %bb.402:                              # %vector.body93
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r11, 0
	j .LBB0_404
.LBB0_403:                              #   in Loop: Header=BB0_401 Depth=3
	or r15, r11, r19
.LBB0_404:                              # %vector.body93
                                        #   in Loop: Header=BB0_401 Depth=3
	loads.w r25, 8(r2)
	and r26, r25, r3
	setlt.u r1, r27, r26
	.loc	1 500 19                        # parallel-rne.mlir:500:19
	bneq r1, zero, .LBB0_406
# %bb.405:                              # %vector.body93
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r25, 0
	j .LBB0_407
.LBB0_406:                              #   in Loop: Header=BB0_401 Depth=3
	or r20, r25, r19
.LBB0_407:                              # %vector.body93
                                        #   in Loop: Header=BB0_401 Depth=3
	loads.w r23, 4(r2)
	and r16, r23, r3
	setlt.u r1, r27, r16
	.loc	1 500 19                        # parallel-rne.mlir:500:19
	bneq r1, zero, .LBB0_409
# %bb.408:                              # %vector.body93
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r23, 0
	j .LBB0_410
.LBB0_409:                              #   in Loop: Header=BB0_401 Depth=3
	or r1, r23, r19
.LBB0_410:                              # %vector.body93
                                        #   in Loop: Header=BB0_401 Depth=3
	loads.w r2, 0(r2)
	and r17, r2, r3
	setlt.u r8, r27, r17
	.loc	1 500 19                        # parallel-rne.mlir:500:19
	bneq r8, zero, .LBB0_412
# %bb.411:                              # %vector.body93
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r2, 0
	.loc	1 506 19 is_stmt 1              # parallel-rne.mlir:506:19
	setlt.u r17, r5, r17
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	beq r17, zero, .LBB0_413
	j .LBB0_414
.LBB0_412:                              #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r2, r19
	.loc	1 506 19 is_stmt 1              # parallel-rne.mlir:506:19
	setlt.u r17, r5, r17
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	bneq r17, zero, .LBB0_414
.LBB0_413:                              # %vector.body93
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r4
	and r8, r2, r22
.LBB0_414:                              # %vector.body93
                                        #   in Loop: Header=BB0_401 Depth=3
	setlt.u r2, r5, r16
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	bneq r2, zero, .LBB0_417
# %bb.415:                              # %vector.body93
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r23, 16
	andi r1, r1, 1
	add.s r1, r23, r1
	add.s r1, r1, r4
	and r1, r1, r22
	setlt.u r2, r5, r26
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	beq r2, zero, .LBB0_418
.LBB0_416:                              # %vector.body93
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r18
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	bneq r2, zero, .LBB0_400
	j .LBB0_419
.LBB0_417:                              # %vector.body93
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r26
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	bneq r2, zero, .LBB0_416
.LBB0_418:                              # %vector.body93
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r25, 16
	andi r2, r2, 1
	add.s r2, r25, r2
	add.s r2, r2, r4
	and r20, r2, r22
	setlt.u r2, r5, r18
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	bneq r2, zero, .LBB0_400
.LBB0_419:                              # %vector.body93
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r11, 16
	andi r2, r2, 1
	add.s r2, r11, r2
	add.s r2, r2, r4
	and r15, r2, r22
	j .LBB0_400
.LBB0_420:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 486 7 is_stmt 1               # parallel-rne.mlir:486:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r10
	load.d r[6:7], -80(r30)                 # 8-byte Folded Reload
	.loc	1 514 7                         # parallel-rne.mlir:514:7
	beq r10, r11, .LBB0_299
.LBB0_421:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 542 7                         # parallel-rne.mlir:542:7
	addli r1, zero, 6
	bneq r10, r1, .LBB0_453
.LBB0_422:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 542 7                         # parallel-rne.mlir:542:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_424
.LBB0_423:                              # %middle.block79
                                        #   in Loop: Header=BB0_424 Depth=2
	.loc	1 549 9 is_stmt 1               # parallel-rne.mlir:549:9
	load.d r[1:2], -16(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -24(r30)                 # 8-byte Folded Reload
	addli r11, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_452
.LBB0_424:                              # %.preheader38
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_433 Depth 3
                                        #       Child Loop BB0_428 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -24(r30)                # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r11
	.loc	1 550 11 is_stmt 1              # parallel-rne.mlir:550:11
	bneq r28, r21, .LBB0_431
# %bb.425:                              # %scalar.ph73.preheader
                                        #   in Loop: Header=BB0_424 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_428
.LBB0_426:                              # %scalar.ph73
                                        #   in Loop: Header=BB0_428 Depth=3
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r4
	and r9, r9, r22
.LBB0_427:                              # %scalar.ph73
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 550 11                        # parallel-rne.mlir:550:11
	load.d r[10:11], -8(r30)                # 8-byte Folded Reload
	.loc	1 565 13 is_stmt 1              # parallel-rne.mlir:565:13
	add.s r8, r28, r8
	stores.w r9, 0(r8)
	.loc	1 550 11                        # parallel-rne.mlir:550:11
	setlt.ul r10, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r10, zero, .LBB0_423
.LBB0_428:                              # %scalar.ph73
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_424 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 551 19                        # parallel-rne.mlir:551:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r8, r8, 2
	add.s r9, r21, r8
	loads.w r10, 0(r9)
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	and r11, r10, r3
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	setlt.u r9, r27, r11
	.loc	1 556 19                        # parallel-rne.mlir:556:19
	bneq r9, zero, .LBB0_430
# %bb.429:                              # %scalar.ph73
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 562 19 is_stmt 1              # parallel-rne.mlir:562:19
	setlt.u r11, r5, r11
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	bneq r11, zero, .LBB0_427
	j .LBB0_426
.LBB0_430:                              #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r10, r19
	.loc	1 562 19 is_stmt 1              # parallel-rne.mlir:562:19
	setlt.u r11, r5, r11
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	bneq r11, zero, .LBB0_427
	j .LBB0_426
.LBB0_431:                              # %vector.body75.preheader
                                        #   in Loop: Header=BB0_424 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[9:10], zero
	j .LBB0_433
.LBB0_432:                              # %vector.body75
                                        #   in Loop: Header=BB0_433 Depth=3
	.loc	1 550 11 is_stmt 1              # parallel-rne.mlir:550:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 565 13                        # parallel-rne.mlir:565:13
	add.s r11, r28, r14
	.loc	1 550 11                        # parallel-rne.mlir:550:11
	seteq.d r2, r[9:10], r[12:13]
	.loc	1 565 13                        # parallel-rne.mlir:565:13
	stores.w r15, 12(r11)
	stores.w r20, 8(r11)
	stores.w r1, 4(r11)
	stores.w r8, 0(r11)
	.loc	1 550 11                        # parallel-rne.mlir:550:11
	bneq r2, zero, .LBB0_423
.LBB0_433:                              # %vector.body75
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_424 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 551 19                        # parallel-rne.mlir:551:19
	add.ul r[1:2], r[9:10], r[6:7]
	slli r14, r1, 2
	add.s r2, r21, r14
	loads.w r11, 12(r2)
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	and r18, r11, r3
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	setlt.u r1, r27, r18
	.loc	1 556 19                        # parallel-rne.mlir:556:19
	bneq r1, zero, .LBB0_435
# %bb.434:                              # %vector.body75
                                        #   in Loop: Header=BB0_433 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r11, 0
	j .LBB0_436
.LBB0_435:                              #   in Loop: Header=BB0_433 Depth=3
	or r15, r11, r19
.LBB0_436:                              # %vector.body75
                                        #   in Loop: Header=BB0_433 Depth=3
	loads.w r25, 8(r2)
	and r26, r25, r3
	setlt.u r1, r27, r26
	.loc	1 556 19                        # parallel-rne.mlir:556:19
	bneq r1, zero, .LBB0_438
# %bb.437:                              # %vector.body75
                                        #   in Loop: Header=BB0_433 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r25, 0
	j .LBB0_439
.LBB0_438:                              #   in Loop: Header=BB0_433 Depth=3
	or r20, r25, r19
.LBB0_439:                              # %vector.body75
                                        #   in Loop: Header=BB0_433 Depth=3
	loads.w r23, 4(r2)
	and r16, r23, r3
	setlt.u r1, r27, r16
	.loc	1 556 19                        # parallel-rne.mlir:556:19
	bneq r1, zero, .LBB0_441
# %bb.440:                              # %vector.body75
                                        #   in Loop: Header=BB0_433 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r23, 0
	j .LBB0_442
.LBB0_441:                              #   in Loop: Header=BB0_433 Depth=3
	or r1, r23, r19
.LBB0_442:                              # %vector.body75
                                        #   in Loop: Header=BB0_433 Depth=3
	loads.w r2, 0(r2)
	and r17, r2, r3
	setlt.u r8, r27, r17
	.loc	1 556 19                        # parallel-rne.mlir:556:19
	bneq r8, zero, .LBB0_444
# %bb.443:                              # %vector.body75
                                        #   in Loop: Header=BB0_433 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r2, 0
	.loc	1 562 19 is_stmt 1              # parallel-rne.mlir:562:19
	setlt.u r17, r5, r17
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	beq r17, zero, .LBB0_445
	j .LBB0_446
.LBB0_444:                              #   in Loop: Header=BB0_433 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r2, r19
	.loc	1 562 19 is_stmt 1              # parallel-rne.mlir:562:19
	setlt.u r17, r5, r17
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	bneq r17, zero, .LBB0_446
.LBB0_445:                              # %vector.body75
                                        #   in Loop: Header=BB0_433 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r4
	and r8, r2, r22
.LBB0_446:                              # %vector.body75
                                        #   in Loop: Header=BB0_433 Depth=3
	setlt.u r2, r5, r16
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	bneq r2, zero, .LBB0_449
# %bb.447:                              # %vector.body75
                                        #   in Loop: Header=BB0_433 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r23, 16
	andi r1, r1, 1
	add.s r1, r23, r1
	add.s r1, r1, r4
	and r1, r1, r22
	setlt.u r2, r5, r26
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	beq r2, zero, .LBB0_450
.LBB0_448:                              # %vector.body75
                                        #   in Loop: Header=BB0_433 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r18
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	bneq r2, zero, .LBB0_432
	j .LBB0_451
.LBB0_449:                              # %vector.body75
                                        #   in Loop: Header=BB0_433 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r26
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	bneq r2, zero, .LBB0_448
.LBB0_450:                              # %vector.body75
                                        #   in Loop: Header=BB0_433 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r25, 16
	andi r2, r2, 1
	add.s r2, r25, r2
	add.s r2, r2, r4
	and r20, r2, r22
	setlt.u r2, r5, r18
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	bneq r2, zero, .LBB0_432
.LBB0_451:                              # %vector.body75
                                        #   in Loop: Header=BB0_433 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r11, 16
	andi r2, r2, 1
	add.s r2, r11, r2
	add.s r2, r2, r4
	and r15, r2, r22
	j .LBB0_432
.LBB0_452:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 542 7 is_stmt 1               # parallel-rne.mlir:542:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r10
	load.d r[6:7], -80(r30)                 # 8-byte Folded Reload
.LBB0_453:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	zext_int2long r[1:2], zero
	.loc	1 570 7 is_stmt 1               # parallel-rne.mlir:570:7
	store.d r[1:2], -24(r30)                # 8-byte Folded Spill
	loadli.w r1,  -84(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_485
# %bb.454:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 570 7                         # parallel-rne.mlir:570:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_456
.LBB0_455:                              # %middle.block
                                        #   in Loop: Header=BB0_456 Depth=2
	.loc	1 577 9 is_stmt 1               # parallel-rne.mlir:577:9
	load.d r[1:2], -8(r30)                  # 8-byte Folded Reload
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r11, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_484
.LBB0_456:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_465 Depth 3
                                        #       Child Loop BB0_460 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[9:10], r[6:7], r11
	store.d r[6:7], -16(r30)                # 8-byte Folded Spill
	.loc	1 578 11 is_stmt 1              # parallel-rne.mlir:578:11
	bneq r28, r21, .LBB0_463
# %bb.457:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_456 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_460
.LBB0_458:                              # %scalar.ph
                                        #   in Loop: Header=BB0_460 Depth=3
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r4
	and r7, r7, r22
.LBB0_459:                              # %scalar.ph
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	load.d r[14:15], -8(r30)                # 8-byte Folded Reload
	.loc	1 593 13 is_stmt 1              # parallel-rne.mlir:593:13
	add.s r6, r28, r6
	stores.w r7, 0(r6)
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	setlt.ul r8, r[1:2], r[14:15]
	addli.d r[1:2], r[1:2], 1
	beq r8, zero, .LBB0_455
.LBB0_460:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_456 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	add.ul r[6:7], r[1:2], r[9:10]
	slli r6, r6, 2
	add.s r7, r21, r6
	loads.w r8, 0(r7)
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	and r11, r8, r3
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	setlt.u r7, r27, r11
	.loc	1 584 19                        # parallel-rne.mlir:584:19
	bneq r7, zero, .LBB0_462
# %bb.461:                              # %scalar.ph
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	.loc	1 590 19 is_stmt 1              # parallel-rne.mlir:590:19
	setlt.u r11, r5, r11
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	bneq r11, zero, .LBB0_459
	j .LBB0_458
.LBB0_462:                              #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r7, r8, r19
	.loc	1 590 19 is_stmt 1              # parallel-rne.mlir:590:19
	setlt.u r11, r5, r11
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	bneq r11, zero, .LBB0_459
	j .LBB0_458
.LBB0_463:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_456 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	load.d r[14:15], -24(r30)               # 8-byte Folded Reload
	j .LBB0_465
.LBB0_464:                              # %vector.body
                                        #   in Loop: Header=BB0_465 Depth=3
	.loc	1 578 11 is_stmt 1              # parallel-rne.mlir:578:11
	addli.d r[14:15], r[14:15], 4
	.loc	1 593 13                        # parallel-rne.mlir:593:13
	add.s r7, r28, r18
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	seteq.d r2, r[14:15], r[12:13]
	.loc	1 593 13                        # parallel-rne.mlir:593:13
	stores.w r20, 12(r7)
	stores.w r8, 8(r7)
	stores.w r6, 4(r7)
	stores.w r1, 0(r7)
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	bneq r2, zero, .LBB0_455
.LBB0_465:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_456 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	add.ul r[1:2], r[14:15], r[9:10]
	slli r18, r1, 2
	add.s r1, r21, r18
	loads.w r11, 12(r1)
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	and r23, r11, r3
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	setlt.u r2, r27, r23
	.loc	1 584 19                        # parallel-rne.mlir:584:19
	bneq r2, zero, .LBB0_467
# %bb.466:                              # %vector.body
                                        #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r11, 0
	j .LBB0_468
.LBB0_467:                              #   in Loop: Header=BB0_465 Depth=3
	or r20, r11, r19
.LBB0_468:                              # %vector.body
                                        #   in Loop: Header=BB0_465 Depth=3
	loads.w r25, 8(r1)
	and r2, r25, r3
	setlt.u r6, r27, r2
	.loc	1 584 19                        # parallel-rne.mlir:584:19
	bneq r6, zero, .LBB0_470
# %bb.469:                              # %vector.body
                                        #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r25, 0
	j .LBB0_471
.LBB0_470:                              #   in Loop: Header=BB0_465 Depth=3
	or r8, r25, r19
.LBB0_471:                              # %vector.body
                                        #   in Loop: Header=BB0_465 Depth=3
	loads.w r26, 4(r1)
	and r7, r26, r3
	setlt.u r6, r27, r7
	.loc	1 584 19                        # parallel-rne.mlir:584:19
	bneq r6, zero, .LBB0_473
# %bb.472:                              # %vector.body
                                        #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r26, 0
	j .LBB0_474
.LBB0_473:                              #   in Loop: Header=BB0_465 Depth=3
	or r6, r26, r19
.LBB0_474:                              # %vector.body
                                        #   in Loop: Header=BB0_465 Depth=3
	loads.w r16, 0(r1)
	and r17, r16, r3
	setlt.u r1, r27, r17
	.loc	1 584 19                        # parallel-rne.mlir:584:19
	bneq r1, zero, .LBB0_476
# %bb.475:                              # %vector.body
                                        #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r16, 0
	.loc	1 590 19 is_stmt 1              # parallel-rne.mlir:590:19
	setlt.u r17, r5, r17
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	beq r17, zero, .LBB0_477
	j .LBB0_478
.LBB0_476:                              #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r1, r16, r19
	.loc	1 590 19 is_stmt 1              # parallel-rne.mlir:590:19
	setlt.u r17, r5, r17
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	bneq r17, zero, .LBB0_478
.LBB0_477:                              # %vector.body
                                        #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r16, 16
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r4
	and r1, r1, r22
.LBB0_478:                              # %vector.body
                                        #   in Loop: Header=BB0_465 Depth=3
	setlt.u r7, r5, r7
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	bneq r7, zero, .LBB0_481
# %bb.479:                              # %vector.body
                                        #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r26, 16
	andi r6, r6, 1
	add.s r6, r26, r6
	add.s r6, r6, r4
	and r6, r6, r22
	setlt.u r2, r5, r2
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	beq r2, zero, .LBB0_482
.LBB0_480:                              # %vector.body
                                        #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r23
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	bneq r2, zero, .LBB0_464
	j .LBB0_483
.LBB0_481:                              # %vector.body
                                        #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r2
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	bneq r2, zero, .LBB0_480
.LBB0_482:                              # %vector.body
                                        #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r25, 16
	andi r2, r2, 1
	add.s r2, r25, r2
	add.s r2, r2, r4
	and r8, r2, r22
	setlt.u r2, r5, r23
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	bneq r2, zero, .LBB0_464
.LBB0_483:                              # %vector.body
                                        #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r11, 16
	andi r2, r2, 1
	add.s r2, r11, r2
	add.s r2, r2, r4
	and r20, r2, r22
	j .LBB0_464
.LBB0_484:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 570 7 is_stmt 1               # parallel-rne.mlir:570:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r10
	load.d r[6:7], -80(r30)                 # 8-byte Folded Reload
.LBB0_485:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 598 7                         # parallel-rne.mlir:598:7
	addli r1, zero, 255
	addli r18, zero, 3
	csr_set csr5, r1
	sync_core
	.loc	1 599 7                         # parallel-rne.mlir:599:7
	beq r10, r18, .LBB0_5
# %bb.486:                              # %.critedge8
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r14, zero, 64
	addli r15, zero, 1
	addli r17, zero, 12
	addli r20, zero, 4
	addli r21, zero, 2
	.loc	1 601 7 is_stmt 1               # parallel-rne.mlir:601:7
	bneq r10, r11, .LBB0_488
# %bb.487:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 17
	xwait r1, 0
	lock zero, r21
	lui r1, 260096
	ew_cfg r15, zero, zero, 10
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 1023
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 18
	ew_cfg r15, zero, zero, 3
	ew_cfg r15, r15, zero, 19
	dsmadd r28, r28, r28, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r21
	j .LBB0_6
.LBB0_488:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 609 7                         # parallel-rne.mlir:609:7
	bneq r10, zero, .LBB0_7
# %bb.489:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
	.loc	1 609 7                         # parallel-rne.mlir:609:7
	addli r8, zero, 18
	addli r2, zero, 14
	load.d r[25:26], 24(r30)
	xwait r8, 0
	load.d r[8:9], -24(r30)                 # 8-byte Folded Reload
	sll.d r[6:7], r[6:7], r2
	lock zero, r11
	slli r1, r1, 5
	dma_cfg r15, r15, zero, 0
	add.ul r[6:7], r[25:26], r[6:7]
	sext_int2long r[1:2], r1
	min.sl r[8:9], r[1:2], r[8:9]
	addli.d r[8:9], r[8:9], 32
	max.sl r[8:9], r[8:9], r[1:2]
	sub.sl r[1:2], r[8:9], r[1:2]
	load.d r[8:9], -128(r30)                # 8-byte Folded Reload
	dma_cfg zero, r15, zero, 1
	.loc	1 605 13 is_stmt 1              # parallel-rne.mlir:605:13
	min.sl r[1:2], r[1:2], r[12:13]
	.loc	1 609 7                         # parallel-rne.mlir:609:7
	add.ul r[6:7], r[6:7], r[8:9]
	lui r8, 25
	dma_cfg r7, zero, zero, 2
	ori r8, r8, 704
	load.d r[12:13], -120(r30)              # 8-byte Folded Reload
	add.s r8, r24, r8
	addli r9, r12, 31
	dma_cfg r6, r8, r14, 3
	slli r7, r12, 1
	addli r8, zero, 128
	srli r6, r9, 5
	dma_cfg r14, r8, r6, 4
	andi r6, r7, 62
	addli r7, zero, 512
	dma_cfg r7, r8, r1, 5
	addli r1, zero, 19
	dma_cfg zero, zero, r6, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_6
.LBB0_490:                              # %._crit_edge
	.loc	1 611 5                         # parallel-rne.mlir:611:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_492
# %bb.491:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 611 5                         # parallel-rne.mlir:611:5
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
.LBB0_492:
	.loc	1 612 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:612:5
	addli sp, sp, 152
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
	.long	216                             # 0xd8
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-2da04cer" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
