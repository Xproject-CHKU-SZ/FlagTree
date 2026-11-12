	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-u7zpgwph" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -168
	addli r1, zero, 1
.Ltmp0:
	.loc	1 28 5 prologue_end             # parallel-rne.mlir:28:5
	core_id r14
	addli r30, sp, 104
	xsignal_mode_cfg r1
	beq r14, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r2, 1048575
	.loc	1 28 5                          # parallel-rne.mlir:28:5
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
	.loc	1 28 5                          # parallel-rne.mlir:28:5
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
	addli r2, zero, 3
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
	addli r1, zero, 5
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 7
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 11
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 20
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 14
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 16
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 30 10 is_stmt 1               # parallel-rne.mlir:30:10
	load_param_i r4, 1
	loadli.w r3,  48(r30)
	.loc	1 31 10                         # parallel-rne.mlir:31:10
	mul.s r1, r2, r1
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	mul.s r3, r1, r3
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	addli r2, r2, -1
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	div.s r2, r2, r4
	.loc	1 29 10                         # parallel-rne.mlir:29:10
	load_param_i r4, 0
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	mul.s r1, r2, r4
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	fmac.s r2, r2, r4
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	min.s r2, r2, r3
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	ble.s r2, r1, .LBB0_265
# %bb.4:                                # %.lr.ph
	.loc	1 39 11                         # parallel-rne.mlir:39:11
	sext_int2long r[15:16], r1
	lui r1, 44
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	addli r17, zero, 1
	addli r18, zero, 7
	addli r19, zero, 4
	addli r20, zero, 16
	addli r21, zero, 2
	addli r22, zero, 6
	addli r25, zero, 64
	addli r26, zero, 0
	ori r1, r1, 2048
	.loc	1 39 11                         # parallel-rne.mlir:39:11
	store.d r[2:3], -88(r30)                # 8-byte Folded Spill
	lui r2, 60
	lui r3, 522240
	storeli.w r1, -92(r30)                  # 4-byte Folded Spill
	lui r1, 52
	ori r1, r1, 2048
	storeli.w r1, -96(r30)                  # 4-byte Folded Spill
	ori r1, r2, 2048
	lui r2, 40
	storeli.w r1, -100(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r2, r2, 2114
	ori r1, r1, 4095
	storeli.w r2, -104(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 434 7 is_stmt 1               # parallel-rne.mlir:434:7
	addli r2, zero, 14
	addli r17, zero, 1
	addli r18, zero, 7
	addli r19, zero, 4
	addli r21, zero, 2
	addli r22, zero, 6
	addli r25, zero, 64
	xsignal r2, 0
	.loc	1 436 7                         # parallel-rne.mlir:436:7
	addli r2, zero, 18
	.loc	1 435 7                         # parallel-rne.mlir:435:7
	xsignal r20, 0
	.loc	1 436 7                         # parallel-rne.mlir:436:7
	xsignal r2, 0
	.loc	1 437 7                         # parallel-rne.mlir:437:7
	addli r2, zero, 19
	xsignal r2, 0
	load.d r[15:16], -40(r30)               # 8-byte Folded Reload
	loadli.w r26,  -44(r30)                 # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	load.d r[4:5], -88(r30)                 # 8-byte Folded Reload
	addli.d r[15:16], r[15:16], 1
	addli r26, r26, 1
	setlt.sl r2, r[15:16], r[4:5]
	beq r2, zero, .LBB0_265
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
                                        #     Child Loop BB0_21 Depth 2
                                        #     Child Loop BB0_39 Depth 2
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_42 Depth 3
                                        #     Child Loop BB0_67 Depth 2
                                        #       Child Loop BB0_84 Depth 3
                                        #       Child Loop BB0_70 Depth 3
                                        #     Child Loop BB0_95 Depth 2
                                        #       Child Loop BB0_112 Depth 3
                                        #       Child Loop BB0_98 Depth 3
                                        #     Child Loop BB0_123 Depth 2
                                        #       Child Loop BB0_140 Depth 3
                                        #       Child Loop BB0_126 Depth 3
                                        #     Child Loop BB0_151 Depth 2
                                        #       Child Loop BB0_168 Depth 3
                                        #       Child Loop BB0_154 Depth 3
                                        #     Child Loop BB0_179 Depth 2
                                        #       Child Loop BB0_196 Depth 3
                                        #       Child Loop BB0_182 Depth 3
                                        #     Child Loop BB0_207 Depth 2
                                        #       Child Loop BB0_224 Depth 3
                                        #       Child Loop BB0_210 Depth 3
                                        #     Child Loop BB0_236 Depth 2
                                        #       Child Loop BB0_253 Depth 3
                                        #       Child Loop BB0_239 Depth 3
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	loadli.w r2,  48(r30)
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	loadli.w r4,  44(r30)
	addli r5, zero, 8
	addli r11, zero, 8
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	div.s r2, r15, r2
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	div.s r4, r2, r4
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	div.s r2, r4, r5
	slli r6, r2, 3
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	sub.s r2, r17, r6
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	min.s r7, r2, r5
	.loc	1 84 13                         # parallel-rne.mlir:84:13
	mod.s r5, r26, r19
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	mod.s r2, r4, r7
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	add.s r2, r6, r2
	.loc	1 67 13                         # parallel-rne.mlir:67:13
	zext_int2long r[9:10], r2
	storeli.w r2, -68(r30)                  # 4-byte Folded Spill
	.loc	1 84 13                         # parallel-rne.mlir:84:13
	slli r2, r5, 12
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	store.d r[9:10], -64(r30)               # 8-byte Folded Spill
	bneq r14, r17, .LBB0_9
# %bb.8:                                # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r8, zero, 12
	load.d r[12:13], 0(r30)
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	sll.d r[8:9], r[9:10], r8
	addli r10, zero, 3
	xwait r10, 0
	lock zero, r19
	add.ul r[8:9], r[12:13], r[8:9]
	addli r10, zero, 256
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r9, zero, 2
	dma_cfg r2, r8, r10, 3
	dma_cfg r10, r10, r20, 4
	dma_run zero
	unlock r19
	xsignal r21, 0
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	j .LBB0_12
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	bneq r14, r21, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	addli r8, zero, 5
	xwait r21, 0
	xwait r8, 0
	lock zero, zero
	addli r8, zero, 3
	ds_cfg r21, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r20, zero, 13
	shuffle_batch r2, r2, r25, 1
	unlock zero
	xsignal r8, 0
	addli r8, zero, 1
	storeli.w r8, -16(r30)                  # 4-byte Folded Spill
	xsignal r19, 0
	j .LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	sub.s r4, r4, r6
	div.s r6, r4, r7
	.loc	1 99 13 is_stmt 1               # parallel-rne.mlir:99:13
	slli r4, r5, 15
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[7:8], r6
	sll.d r[27:28], r[7:8], r18
	.loc	1 101 13 is_stmt 1              # parallel-rne.mlir:101:13
	lui r7, 4
	or r7, r4, r7
	.loc	1 105 7                         # parallel-rne.mlir:105:7
	bneq r14, r22, .LBB0_14
# %bb.13:                               # %.thread22
                                        #   in Loop: Header=BB0_7 Depth=1
	load.d r[12:13], 8(r30)
	sll.d r[8:9], r[27:28], r21
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
	xwait r18, 0
	lock zero, r19
	addli r10, zero, 512
	dma_cfg zero, zero, zero, 0
	add.ul r[8:9], r[12:13], r[8:9]
	dma_cfg zero, r9, zero, 2
	dma_cfg r7, r8, r10, 3
	dma_cfg r10, r10, r25, 4
	dma_run zero
	unlock r19
	xsignal r22, 0
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	j .LBB0_17
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r14, r18, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=1
	addli r8, zero, 9
	xwait r22, 0
	xwait r8, 0
	lock zero, zero
	addli r8, zero, 128
	ds_cfg r21, zero, 0
	ds_cfg r8, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r8, zero, 13
	shuffle_coa r4, r7, r25, 2
	addli r7, zero, 1
	unlock zero
	xsignal r18, 0
	storeli.w r7, -48(r30)                  # 4-byte Folded Spill
	xsignal r11, 0
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	addli r7, zero, 128
	slli r6, r6, 7
	.loc	1 120 13 is_stmt 1              # parallel-rne.mlir:120:13
	slli r10, r5, 9
	zext_int2long r[23:24], r7
	.loc	1 113 13                        # parallel-rne.mlir:113:13
	zext_int2long r[6:7], r6
	.loc	1 117 13                        # parallel-rne.mlir:117:13
	max.ul r[8:9], r[6:7], r[23:24]
	sub.sl r[6:7], r[8:9], r[6:7]
	.loc	1 120 13                        # parallel-rne.mlir:120:13
	store.d r[6:7], -56(r30)                # 8-byte Folded Spill
	lui r6, 36
	add.s r6, r10, r6
	.loc	1 123 7                         # parallel-rne.mlir:123:7
	bneq r14, r17, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_7 Depth=1
	addli r9, zero, 11
	sll.d r[7:8], r[27:28], r21
	xwait r9, 0
	load.d r[9:10], 16(r30)
	lock zero, r19
	dma_cfg zero, zero, zero, 0
	add.ul r[7:8], r[9:10], r[7:8]
	load.d r[9:10], -56(r30)                # 8-byte Folded Reload
	dma_cfg zero, r8, zero, 2
	slli r9, r9, 2
	dma_cfg r6, r7, r9, 3
	addli r7, zero, 512
	dma_cfg r7, r7, r17, 4
	addli r7, zero, 10
	dma_run zero
	unlock r19
	xsignal r7, 0
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 127 13                        # parallel-rne.mlir:127:13
	loadli.w r7,  -92(r30)                  # 4-byte Folded Reload
	.loc	1 125 13                        # parallel-rne.mlir:125:13
	slli r5, r5, 13
	.loc	1 128 7                         # parallel-rne.mlir:128:7
	store.d r[15:16], -40(r30)              # 8-byte Folded Spill
	storeli.w r26, -44(r30)                 # 4-byte Folded Spill
	store.d r[27:28], -80(r30)              # 8-byte Folded Spill
	.loc	1 127 13                        # parallel-rne.mlir:127:13
	add.s r10, r5, r7
	.loc	1 128 7                         # parallel-rne.mlir:128:7
	bneq r14, r19, .LBB0_23
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 0
	addli r6, zero, 1
	addli r7, zero, 1
	.loc	1 128 7                         # parallel-rne.mlir:128:7
	addli r9, zero, 14
	xwait r19, 0
	xwait r11, 0
	xwait r9, 0
.LBB0_21:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r9, r8, 14
	slli r8, r8, 8
	lock zero, r6
	mm_cfg r25, r25, r20, 0
	or r9, r9, r4
	or r8, r8, r10
	mm_cfg r19, r19, r6, 2
	mm r8, r2, r9, 8
	andi r9, r7, 1
	addli r8, zero, 1
	addli r7, zero, 0
	unlock r6
	bneq r9, zero, .LBB0_21
# %bb.22:                               # %.thread23.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 5
	storeli.w zero, -32(r30)                # 4-byte Folded Spill
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 131 13 is_stmt 1              # parallel-rne.mlir:131:13
	loadli.w r2,  -96(r30)                  # 4-byte Folded Reload
	add.s r27, r5, r2
	.loc	1 134 13                        # parallel-rne.mlir:134:13
	loadli.w r2,  -100(r30)                 # 4-byte Folded Reload
	add.s r25, r5, r2
	.loc	1 128 7                         # parallel-rne.mlir:128:7
	addli r2, zero, 12
	xsignal r2, 0
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	j .LBB0_30
.LBB0_23:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	addli r2, zero, 5
	bneq r14, r2, .LBB0_27
# %bb.24:                               #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 10
	addli r2, zero, 0
	addli r7, zero, 8192
	xwait r4, 0
	addli r4, zero, 12
	xwait r4, 0
	lock zero, r21
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 127
	ew_cfg zero, r4, zero, 2
	ew_cfg r17, zero, zero, 3
.LBB0_25:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r10, r2
	addli r2, r2, 512
	dsmadd r4, r4, r6, 0
	bneq r2, r7, .LBB0_25
# %bb.26:                               # %.thread26
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	storeli.w zero, -32(r30)                # 4-byte Folded Spill
	addli r6, zero, 511
	unlock r21
	xsignal r2, 0
	.loc	1 131 13                        # parallel-rne.mlir:131:13
	loadli.w r2,  -96(r30)                  # 4-byte Folded Reload
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	xwait r20, 0
	lock zero, r21
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r6, zero, 2
	ew_cfg r19, zero, zero, 3
	.loc	1 131 13                        # parallel-rne.mlir:131:13
	add.s r27, r5, r2
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	ew_cfg r19, r19, zero, 19
	ew_cfg r21, zero, zero, 10
	loadli.w r2,  -104(r30)                 # 4-byte Folded Reload
	ew_cfg r21, r17, r2, 11
	lui r2, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r19, r2, 14
	addli r2, zero, 2
	ew_cfg zero, zero, zero, 15
	sslut r27, r10, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r21
	.loc	1 134 13                        # parallel-rne.mlir:134:13
	loadli.w r4,  -100(r30)                 # 4-byte Folded Reload
	add.s r25, r5, r4
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	addli r4, zero, 18
	xwait r4, 0
	lock zero, r2
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r4, 0
	ew_cfg zero, r6, zero, 2
	ew_cfg r19, zero, zero, 3
	ew_cfg r19, r19, r19, 19
	dsmul r25, r10, r27, 0
	ew_cfg zero, zero, zero, 19
	unlock r2
	addli r2, zero, 13
	xsignal r2, 0
	addli r2, zero, 15
	xsignal r2, 0
	addli r2, zero, 17
	xsignal r2, 0
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	j .LBB0_30
.LBB0_27:                               # %.thread23
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 131 13                        # parallel-rne.mlir:131:13
	loadli.w r2,  -96(r30)                  # 4-byte Folded Reload
	add.s r27, r5, r2
	.loc	1 134 13                        # parallel-rne.mlir:134:13
	loadli.w r2,  -100(r30)                 # 4-byte Folded Reload
	add.s r25, r5, r2
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	addli r2, zero, 3
	bneq r14, r2, .LBB0_29
# %bb.28:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 13
	xwait r2, 0
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	addli r2, zero, 15
	xwait r2, 0
	.loc	1 139 7                         # parallel-rne.mlir:139:7
	addli r2, zero, 17
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 140 7                         # parallel-rne.mlir:140:7
	storeli.w r2, -32(r30)                  # 4-byte Folded Spill
	addli r2, zero, 20
	xwait r2, 0
	j .LBB0_30
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -32(r30)                # 4-byte Folded Spill
.LBB0_30:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	lui r2, 36
	.loc	1 142 7 is_stmt 1               # parallel-rne.mlir:142:7
	xfence
	ori r2, r2, 2048
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r5, r5, r2
	seteq r2, r5, r10
	.loc	1 143 7 is_stmt 1               # parallel-rne.mlir:143:7
	storeli.w r2, -20(r30)                  # 4-byte Folded Spill
	.loc	1 144 7                         # parallel-rne.mlir:144:7
	addli r2, zero, 255
	.loc	1 143 7                         # parallel-rne.mlir:143:7
	mfence { lm, sm, gm }
	.loc	1 144 7                         # parallel-rne.mlir:144:7
	csr_set csr5, r2
	sub.s r2, r5, r27
	storeli.w r2, -24(r30)                  # 4-byte Folded Spill
	sub.s r2, r5, r25
	storeli.w r2, -28(r30)                  # 4-byte Folded Spill
	addli r2, zero, 127
	sync_core
	zext_int2long r[18:19], r2
	.loc	1 145 7                         # parallel-rne.mlir:145:7
	beq r14, zero, .LBB0_37
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 181 7                         # parallel-rne.mlir:181:7
	addli r2, zero, 1
	beq r14, r2, .LBB0_65
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 217 7                         # parallel-rne.mlir:217:7
	loadli.w r2,  -16(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_93
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_121
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 289 7                         # parallel-rne.mlir:289:7
	addli r2, zero, 4
	beq r14, r2, .LBB0_149
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 325 7                         # parallel-rne.mlir:325:7
	addli r2, zero, 5
	beq r14, r2, .LBB0_177
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	addli r2, zero, 6
	beq r14, r2, .LBB0_205
	j .LBB0_233
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -24(r30)                  # 4-byte Folded Reload
	loadli.w r4,  -28(r30)                  # 4-byte Folded Reload
	.loc	1 145 7 is_stmt 1               # parallel-rne.mlir:145:7
	xfence
	addli r9, zero, 1
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	min.u r2, r2, r4
	loadli.w r4,  -20(r30)                  # 4-byte Folded Reload
	setlt.u r2, r2, r20
	or r2, r2, r4
	storeli.w r2, -4(r30)                   # 4-byte Folded Spill
	j .LBB0_39
.LBB0_38:                               # %middle.block185
                                        #   in Loop: Header=BB0_39 Depth=2
	.loc	1 153 9                         # parallel-rne.mlir:153:9
	andi r2, r9, 1
	addli.d r[6:7], r[23:24], 0
	addli r9, zero, 0
	beq r2, zero, .LBB0_64
.LBB0_39:                               # %vector.memcheck171
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_42 Depth 3
	.loc	1 154 11                        # parallel-rne.mlir:154:11
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	beq r2, zero, .LBB0_54
# %bb.40:                               # %scalar.ph177.preheader
                                        #   in Loop: Header=BB0_39 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_42
.LBB0_41:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 154 11                        # parallel-rne.mlir:154:11
	setlt.ul r8, r[12:13], r[18:19]
	.loc	1 176 13 is_stmt 1              # parallel-rne.mlir:176:13
	add.s r2, r5, r2
	.loc	1 154 11                        # parallel-rne.mlir:154:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 176 13                        # parallel-rne.mlir:176:13
	stores.w r4, 0(r2)
	.loc	1 154 11                        # parallel-rne.mlir:154:11
	beq r8, zero, .LBB0_38
.LBB0_42:                               # %scalar.ph177
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 155 19                        # parallel-rne.mlir:155:19
	add.ul r[14:15], r[12:13], r[6:7]
	lui r17, 523264
	slli r2, r14, 2
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	add.s r4, r27, r2
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	add.s r8, r25, r2
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	loads.w r4, 0(r4)
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	loads.w r20, 0(r8)
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	and r14, r4, r1
	lui r4, 523264
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	beq r14, r3, .LBB0_44
# %bb.43:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r20, 0
.LBB0_44:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_42 Depth=3
	add.s r8, r10, r2
	loads.w r8, 0(r8)
	and r16, r8, r1
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	bneq r16, zero, .LBB0_52
# %bb.45:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	bneq r14, zero, .LBB0_53
.LBB0_46:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_42 Depth=3
	beq r16, r3, .LBB0_48
.LBB0_47:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
.LBB0_48:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_42 Depth=3
	setlt.u r8, r3, r14
	lui r14, 523264
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	bneq r8, zero, .LBB0_50
# %bb.49:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
.LBB0_50:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_42 Depth=3
	setlt.u r8, r3, r16
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	bneq r8, zero, .LBB0_41
# %bb.51:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r14, 0
	j .LBB0_41
.LBB0_52:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_42 Depth=3
	addli r17, r20, 0
	lui r20, 523264
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	beq r14, zero, .LBB0_46
.LBB0_53:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	bneq r16, r3, .LBB0_47
	j .LBB0_48
.LBB0_54:                               # %vector.body179.preheader
                                        #   in Loop: Header=BB0_39 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_56
.LBB0_55:                               # %vector.body179
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 154 11 is_stmt 1              # parallel-rne.mlir:154:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 176 13                        # parallel-rne.mlir:176:13
	add.s r2, r5, r2
	.loc	1 154 11                        # parallel-rne.mlir:154:11
	seteq.d r8, r[16:17], r[23:24]
	.loc	1 176 13                        # parallel-rne.mlir:176:13
	stores.w r26, 12(r2)
	stores.w r21, 8(r2)
	stores.w r14, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 154 11                        # parallel-rne.mlir:154:11
	bneq r8, zero, .LBB0_38
.LBB0_56:                               # %vector.body179
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 155 19                        # parallel-rne.mlir:155:19
	add.ul r[12:13], r[16:17], r[6:7]
	slli r2, r12, 2
	add.s r12, r10, r2
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	add.s r13, r27, r2
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	add.s r28, r25, r2
	.loc	1 155 19                        # parallel-rne.mlir:155:19
	loads.w r4, 0(r12)
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	loads.w r14, 0(r13)
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	and r4, r4, r1
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	and r14, r14, r1
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	seteq r20, r4, r3
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	seteq r26, r4, zero
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	seteq r21, r14, zero
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	seteq r22, r14, r3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	max.u r4, r4, r14
	setlt.u r4, r3, r4
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	and r14, r20, r21
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	and r20, r26, r22
	lui r26, 523264
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	or r14, r14, r20
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	or r14, r4, r14
	lui r4, 523264
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	bneq r14, zero, .LBB0_58
# %bb.57:                               # %vector.body179
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r28)
.LBB0_58:                               # %vector.body179
                                        #   in Loop: Header=BB0_56 Depth=3
	loads.w r14, 4(r12)
	loads.w r20, 4(r13)
	and r14, r14, r1
	and r20, r20, r1
	seteq r21, r14, r3
	seteq r11, r14, zero
	seteq r15, r20, r3
	seteq r22, r20, zero
	max.u r14, r14, r20
	setlt.u r14, r3, r14
	and r20, r21, r22
	and r11, r11, r15
	or r11, r20, r11
	or r11, r14, r11
	lui r14, 523264
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	bneq r11, zero, .LBB0_60
# %bb.59:                               # %vector.body179
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r28)
.LBB0_60:                               # %vector.body179
                                        #   in Loop: Header=BB0_56 Depth=3
	loads.w r11, 8(r12)
	loads.w r15, 8(r13)
	and r11, r11, r1
	and r15, r15, r1
	seteq r20, r11, r3
	seteq r8, r11, zero
	seteq r22, r15, r3
	seteq r21, r15, zero
	max.u r11, r11, r15
	setlt.u r11, r3, r11
	and r15, r20, r21
	and r8, r8, r22
	lui r21, 523264
	or r8, r15, r8
	or r8, r11, r8
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	bneq r8, zero, .LBB0_62
# %bb.61:                               # %vector.body179
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 8(r28)
.LBB0_62:                               # %vector.body179
                                        #   in Loop: Header=BB0_56 Depth=3
	loads.w r8, 12(r12)
	loads.w r11, 12(r13)
	and r8, r8, r1
	and r11, r11, r1
	seteq r12, r8, r3
	seteq r20, r8, zero
	seteq r13, r11, zero
	seteq r15, r11, r3
	max.u r8, r8, r11
	setlt.u r8, r3, r8
	and r11, r12, r13
	and r12, r20, r15
	or r11, r11, r12
	or r8, r8, r11
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	bneq r8, zero, .LBB0_55
# %bb.63:                               # %vector.body179
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 12(r28)
	j .LBB0_55
.LBB0_64:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r14
	addli r20, zero, 16
	.loc	1 145 7                         # parallel-rne.mlir:145:7
	mfence { sm }
	.loc	1 181 7                         # parallel-rne.mlir:181:7
	addli r2, zero, 1
	bneq r14, r2, .LBB0_32
.LBB0_65:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -24(r30)                  # 4-byte Folded Reload
	loadli.w r4,  -28(r30)                  # 4-byte Folded Reload
	.loc	1 181 7                         # parallel-rne.mlir:181:7
	xfence
	addli r8, zero, 1
	mfence { lm, sm, gm }
	min.u r2, r2, r4
	loadli.w r4,  -20(r30)                  # 4-byte Folded Reload
	setlt.u r2, r2, r20
	or r2, r2, r4
	storeli.w r2, -4(r30)                   # 4-byte Folded Spill
	addli r2, zero, 256
	zext_int2long r[6:7], r2
	j .LBB0_67
.LBB0_66:                               # %middle.block170
                                        #   in Loop: Header=BB0_67 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 384
	.loc	1 189 9 is_stmt 1               # parallel-rne.mlir:189:9
	andi r2, r8, 1
	addli r8, zero, 0
	zext_int2long r[6:7], r4
	beq r2, zero, .LBB0_92
.LBB0_67:                               # %vector.memcheck156
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_84 Depth 3
                                        #       Child Loop BB0_70 Depth 3
	.loc	1 190 11                        # parallel-rne.mlir:190:11
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	beq r2, zero, .LBB0_82
# %bb.68:                               # %scalar.ph162.preheader
                                        #   in Loop: Header=BB0_67 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_70
.LBB0_69:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 190 11                        # parallel-rne.mlir:190:11
	setlt.ul r9, r[12:13], r[18:19]
	.loc	1 212 13 is_stmt 1              # parallel-rne.mlir:212:13
	add.s r2, r5, r2
	.loc	1 190 11                        # parallel-rne.mlir:190:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 212 13                        # parallel-rne.mlir:212:13
	stores.w r4, 0(r2)
	.loc	1 190 11                        # parallel-rne.mlir:190:11
	beq r9, zero, .LBB0_66
.LBB0_70:                               # %scalar.ph162
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	add.ul r[14:15], r[12:13], r[6:7]
	lui r17, 523264
	slli r2, r14, 2
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	add.s r4, r27, r2
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	add.s r9, r25, r2
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	loads.w r4, 0(r4)
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	loads.w r20, 0(r9)
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	and r14, r4, r1
	lui r4, 523264
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	beq r14, r3, .LBB0_72
# %bb.71:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r20, 0
.LBB0_72:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_70 Depth=3
	add.s r9, r10, r2
	loads.w r9, 0(r9)
	and r16, r9, r1
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r16, zero, .LBB0_80
# %bb.73:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r14, zero, .LBB0_81
.LBB0_74:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_70 Depth=3
	beq r16, r3, .LBB0_76
.LBB0_75:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
.LBB0_76:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_70 Depth=3
	setlt.u r9, r3, r14
	lui r14, 523264
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r9, zero, .LBB0_78
# %bb.77:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
.LBB0_78:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_70 Depth=3
	setlt.u r9, r3, r16
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r9, zero, .LBB0_69
# %bb.79:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r14, 0
	j .LBB0_69
.LBB0_80:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_70 Depth=3
	addli r17, r20, 0
	lui r20, 523264
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	beq r14, zero, .LBB0_74
.LBB0_81:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r16, r3, .LBB0_75
	j .LBB0_76
.LBB0_82:                               # %vector.body164.preheader
                                        #   in Loop: Header=BB0_67 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_84
.LBB0_83:                               # %vector.body164
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 190 11 is_stmt 1              # parallel-rne.mlir:190:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 212 13                        # parallel-rne.mlir:212:13
	add.s r2, r5, r2
	.loc	1 190 11                        # parallel-rne.mlir:190:11
	seteq.d r9, r[16:17], r[23:24]
	.loc	1 212 13                        # parallel-rne.mlir:212:13
	stores.w r26, 12(r2)
	stores.w r21, 8(r2)
	stores.w r14, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 190 11                        # parallel-rne.mlir:190:11
	bneq r9, zero, .LBB0_66
.LBB0_84:                               # %vector.body164
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	add.ul r[11:12], r[16:17], r[6:7]
	lui r26, 523264
	slli r2, r11, 2
	add.s r12, r10, r2
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	add.s r13, r27, r2
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	add.s r28, r25, r2
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	loads.w r4, 0(r12)
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	loads.w r11, 0(r13)
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	and r4, r4, r1
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	and r11, r11, r1
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	seteq r14, r4, r3
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	seteq r21, r4, zero
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	seteq r15, r11, zero
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	seteq r20, r11, r3
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	max.u r4, r4, r11
	setlt.u r4, r3, r4
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	and r11, r14, r15
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	and r14, r21, r20
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	or r11, r11, r14
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	or r11, r4, r11
	lui r4, 523264
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r11, zero, .LBB0_86
# %bb.85:                               # %vector.body164
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r28)
.LBB0_86:                               # %vector.body164
                                        #   in Loop: Header=BB0_84 Depth=3
	loads.w r11, 4(r12)
	loads.w r14, 4(r13)
	and r11, r11, r1
	and r14, r14, r1
	seteq r15, r11, r3
	seteq r22, r11, zero
	seteq r20, r14, zero
	seteq r21, r14, r3
	max.u r11, r11, r14
	setlt.u r11, r3, r11
	and r14, r15, r20
	and r15, r22, r21
	or r14, r14, r15
	or r11, r11, r14
	lui r14, 523264
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r11, zero, .LBB0_88
# %bb.87:                               # %vector.body164
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r28)
.LBB0_88:                               # %vector.body164
                                        #   in Loop: Header=BB0_84 Depth=3
	loads.w r11, 8(r12)
	loads.w r15, 8(r13)
	and r11, r11, r1
	and r15, r15, r1
	seteq r20, r11, r3
	seteq r9, r11, zero
	seteq r22, r15, r3
	seteq r21, r15, zero
	max.u r11, r11, r15
	setlt.u r11, r3, r11
	and r15, r20, r21
	and r9, r9, r22
	lui r21, 523264
	or r9, r15, r9
	or r9, r11, r9
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r9, zero, .LBB0_90
# %bb.89:                               # %vector.body164
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 8(r28)
.LBB0_90:                               # %vector.body164
                                        #   in Loop: Header=BB0_84 Depth=3
	loads.w r9, 12(r12)
	loads.w r11, 12(r13)
	and r9, r9, r1
	and r11, r11, r1
	seteq r12, r9, r3
	seteq r20, r9, zero
	seteq r13, r11, zero
	seteq r15, r11, r3
	max.u r9, r9, r11
	setlt.u r9, r3, r9
	and r11, r12, r13
	and r12, r20, r15
	or r11, r11, r12
	or r9, r9, r11
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r9, zero, .LBB0_83
# %bb.91:                               # %vector.body164
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 12(r28)
	j .LBB0_83
.LBB0_92:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r14
	addli r20, zero, 16
	.loc	1 181 7                         # parallel-rne.mlir:181:7
	mfence { sm }
	.loc	1 217 7                         # parallel-rne.mlir:217:7
	loadli.w r2,  -16(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_33
.LBB0_93:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -24(r30)                  # 4-byte Folded Reload
	loadli.w r4,  -28(r30)                  # 4-byte Folded Reload
	.loc	1 217 7                         # parallel-rne.mlir:217:7
	xfence
	addli r9, zero, 1
	mfence { lm, sm, gm }
	min.u r2, r2, r4
	loadli.w r4,  -20(r30)                  # 4-byte Folded Reload
	setlt.u r2, r2, r20
	or r2, r2, r4
	storeli.w r2, -4(r30)                   # 4-byte Folded Spill
	addli r2, zero, 512
	zext_int2long r[6:7], r2
	j .LBB0_95
.LBB0_94:                               # %middle.block155
                                        #   in Loop: Header=BB0_95 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 640
	.loc	1 225 9 is_stmt 1               # parallel-rne.mlir:225:9
	andi r2, r9, 1
	addli r9, zero, 0
	zext_int2long r[6:7], r4
	beq r2, zero, .LBB0_120
.LBB0_95:                               # %vector.memcheck141
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_112 Depth 3
                                        #       Child Loop BB0_98 Depth 3
	.loc	1 226 11                        # parallel-rne.mlir:226:11
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	beq r2, zero, .LBB0_110
# %bb.96:                               # %scalar.ph147.preheader
                                        #   in Loop: Header=BB0_95 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_98
.LBB0_97:                               # %scalar.ph147
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 226 11                        # parallel-rne.mlir:226:11
	setlt.ul r8, r[12:13], r[18:19]
	.loc	1 248 13 is_stmt 1              # parallel-rne.mlir:248:13
	add.s r2, r5, r2
	.loc	1 226 11                        # parallel-rne.mlir:226:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	stores.w r4, 0(r2)
	.loc	1 226 11                        # parallel-rne.mlir:226:11
	beq r8, zero, .LBB0_94
.LBB0_98:                               # %scalar.ph147
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	add.ul r[14:15], r[12:13], r[6:7]
	lui r17, 523264
	slli r2, r14, 2
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	add.s r4, r27, r2
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.s r8, r25, r2
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	loads.w r4, 0(r4)
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	loads.w r20, 0(r8)
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	and r14, r4, r1
	lui r4, 523264
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	beq r14, r3, .LBB0_100
# %bb.99:                               # %scalar.ph147
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r20, 0
.LBB0_100:                              # %scalar.ph147
                                        #   in Loop: Header=BB0_98 Depth=3
	add.s r8, r10, r2
	loads.w r8, 0(r8)
	and r16, r8, r1
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r16, zero, .LBB0_108
# %bb.101:                              # %scalar.ph147
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r14, zero, .LBB0_109
.LBB0_102:                              # %scalar.ph147
                                        #   in Loop: Header=BB0_98 Depth=3
	beq r16, r3, .LBB0_104
.LBB0_103:                              # %scalar.ph147
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
.LBB0_104:                              # %scalar.ph147
                                        #   in Loop: Header=BB0_98 Depth=3
	setlt.u r8, r3, r14
	lui r14, 523264
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r8, zero, .LBB0_106
# %bb.105:                              # %scalar.ph147
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
.LBB0_106:                              # %scalar.ph147
                                        #   in Loop: Header=BB0_98 Depth=3
	setlt.u r8, r3, r16
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r8, zero, .LBB0_97
# %bb.107:                              # %scalar.ph147
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r14, 0
	j .LBB0_97
.LBB0_108:                              # %scalar.ph147
                                        #   in Loop: Header=BB0_98 Depth=3
	addli r17, r20, 0
	lui r20, 523264
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	beq r14, zero, .LBB0_102
.LBB0_109:                              # %scalar.ph147
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r16, r3, .LBB0_103
	j .LBB0_104
.LBB0_110:                              # %vector.body149.preheader
                                        #   in Loop: Header=BB0_95 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_112
.LBB0_111:                              # %vector.body149
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 226 11 is_stmt 1              # parallel-rne.mlir:226:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	add.s r2, r5, r2
	.loc	1 226 11                        # parallel-rne.mlir:226:11
	seteq.d r8, r[16:17], r[23:24]
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	stores.w r26, 12(r2)
	stores.w r21, 8(r2)
	stores.w r14, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 226 11                        # parallel-rne.mlir:226:11
	bneq r8, zero, .LBB0_94
.LBB0_112:                              # %vector.body149
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	add.ul r[11:12], r[16:17], r[6:7]
	lui r26, 523264
	slli r2, r11, 2
	add.s r12, r10, r2
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	add.s r13, r27, r2
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.s r28, r25, r2
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	loads.w r4, 0(r12)
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	loads.w r11, 0(r13)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r4, r4, r1
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	and r11, r11, r1
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	seteq r14, r4, r3
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	seteq r21, r4, zero
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	seteq r15, r11, zero
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	seteq r20, r11, r3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	max.u r4, r4, r11
	setlt.u r4, r3, r4
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	and r11, r14, r15
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	and r14, r21, r20
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	or r11, r11, r14
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	or r11, r4, r11
	lui r4, 523264
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r11, zero, .LBB0_114
# %bb.113:                              # %vector.body149
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r28)
.LBB0_114:                              # %vector.body149
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r11, 4(r12)
	loads.w r14, 4(r13)
	and r11, r11, r1
	and r14, r14, r1
	seteq r15, r11, r3
	seteq r22, r11, zero
	seteq r20, r14, zero
	seteq r21, r14, r3
	max.u r11, r11, r14
	setlt.u r11, r3, r11
	and r14, r15, r20
	and r15, r22, r21
	or r14, r14, r15
	or r11, r11, r14
	lui r14, 523264
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r11, zero, .LBB0_116
# %bb.115:                              # %vector.body149
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r28)
.LBB0_116:                              # %vector.body149
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r11, 8(r12)
	loads.w r15, 8(r13)
	and r11, r11, r1
	and r15, r15, r1
	seteq r20, r11, r3
	seteq r8, r11, zero
	seteq r22, r15, r3
	seteq r21, r15, zero
	max.u r11, r11, r15
	setlt.u r11, r3, r11
	and r15, r20, r21
	and r8, r8, r22
	lui r21, 523264
	or r8, r15, r8
	or r8, r11, r8
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r8, zero, .LBB0_118
# %bb.117:                              # %vector.body149
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 8(r28)
.LBB0_118:                              # %vector.body149
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r8, 12(r12)
	loads.w r11, 12(r13)
	and r8, r8, r1
	and r11, r11, r1
	seteq r12, r8, r3
	seteq r20, r8, zero
	seteq r13, r11, zero
	seteq r15, r11, r3
	max.u r8, r8, r11
	setlt.u r8, r3, r8
	and r11, r12, r13
	and r12, r20, r15
	or r11, r11, r12
	or r8, r8, r11
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r8, zero, .LBB0_111
# %bb.119:                              # %vector.body149
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 12(r28)
	j .LBB0_111
.LBB0_120:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r14
	addli r20, zero, 16
	.loc	1 217 7                         # parallel-rne.mlir:217:7
	mfence { sm }
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_34
.LBB0_121:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -24(r30)                  # 4-byte Folded Reload
	loadli.w r4,  -28(r30)                  # 4-byte Folded Reload
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	xfence
	addli r9, zero, 1
	mfence { lm, sm, gm }
	min.u r2, r2, r4
	loadli.w r4,  -20(r30)                  # 4-byte Folded Reload
	setlt.u r2, r2, r20
	or r2, r2, r4
	storeli.w r2, -4(r30)                   # 4-byte Folded Spill
	addli r2, zero, 768
	zext_int2long r[6:7], r2
	j .LBB0_123
.LBB0_122:                              # %middle.block140
                                        #   in Loop: Header=BB0_123 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 896
	.loc	1 261 9 is_stmt 1               # parallel-rne.mlir:261:9
	andi r2, r9, 1
	addli r9, zero, 0
	zext_int2long r[6:7], r4
	beq r2, zero, .LBB0_148
.LBB0_123:                              # %vector.memcheck126
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_140 Depth 3
                                        #       Child Loop BB0_126 Depth 3
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	beq r2, zero, .LBB0_138
# %bb.124:                              # %scalar.ph132.preheader
                                        #   in Loop: Header=BB0_123 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_126
.LBB0_125:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	setlt.ul r8, r[12:13], r[18:19]
	.loc	1 284 13 is_stmt 1              # parallel-rne.mlir:284:13
	add.s r2, r5, r2
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 284 13                        # parallel-rne.mlir:284:13
	stores.w r4, 0(r2)
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	beq r8, zero, .LBB0_122
.LBB0_126:                              # %scalar.ph132
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_123 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	add.ul r[14:15], r[12:13], r[6:7]
	lui r17, 523264
	slli r2, r14, 2
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	add.s r4, r27, r2
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	add.s r8, r25, r2
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	loads.w r4, 0(r4)
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	loads.w r20, 0(r8)
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	and r14, r4, r1
	lui r4, 523264
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	beq r14, r3, .LBB0_128
# %bb.127:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r20, 0
.LBB0_128:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_126 Depth=3
	add.s r8, r10, r2
	loads.w r8, 0(r8)
	and r16, r8, r1
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	bneq r16, zero, .LBB0_136
# %bb.129:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	bneq r14, zero, .LBB0_137
.LBB0_130:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_126 Depth=3
	beq r16, r3, .LBB0_132
.LBB0_131:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
.LBB0_132:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_126 Depth=3
	setlt.u r8, r3, r14
	lui r14, 523264
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	bneq r8, zero, .LBB0_134
# %bb.133:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
.LBB0_134:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_126 Depth=3
	setlt.u r8, r3, r16
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	bneq r8, zero, .LBB0_125
# %bb.135:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r14, 0
	j .LBB0_125
.LBB0_136:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_126 Depth=3
	addli r17, r20, 0
	lui r20, 523264
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	beq r14, zero, .LBB0_130
.LBB0_137:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	bneq r16, r3, .LBB0_131
	j .LBB0_132
.LBB0_138:                              # %vector.body134.preheader
                                        #   in Loop: Header=BB0_123 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_140
.LBB0_139:                              # %vector.body134
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 262 11 is_stmt 1              # parallel-rne.mlir:262:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 284 13                        # parallel-rne.mlir:284:13
	add.s r2, r5, r2
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	seteq.d r8, r[16:17], r[23:24]
	.loc	1 284 13                        # parallel-rne.mlir:284:13
	stores.w r26, 12(r2)
	stores.w r21, 8(r2)
	stores.w r14, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	bneq r8, zero, .LBB0_122
.LBB0_140:                              # %vector.body134
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_123 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	add.ul r[11:12], r[16:17], r[6:7]
	lui r26, 523264
	slli r2, r11, 2
	add.s r12, r10, r2
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	add.s r13, r27, r2
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	add.s r28, r25, r2
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	loads.w r4, 0(r12)
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	loads.w r11, 0(r13)
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	and r4, r4, r1
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	and r11, r11, r1
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	seteq r14, r4, r3
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	seteq r21, r4, zero
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	seteq r15, r11, zero
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	seteq r20, r11, r3
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	max.u r4, r4, r11
	setlt.u r4, r3, r4
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	and r11, r14, r15
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	and r14, r21, r20
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	or r11, r11, r14
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	or r11, r4, r11
	lui r4, 523264
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	bneq r11, zero, .LBB0_142
# %bb.141:                              # %vector.body134
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r28)
.LBB0_142:                              # %vector.body134
                                        #   in Loop: Header=BB0_140 Depth=3
	loads.w r11, 4(r12)
	loads.w r14, 4(r13)
	and r11, r11, r1
	and r14, r14, r1
	seteq r15, r11, r3
	seteq r22, r11, zero
	seteq r20, r14, zero
	seteq r21, r14, r3
	max.u r11, r11, r14
	setlt.u r11, r3, r11
	and r14, r15, r20
	and r15, r22, r21
	or r14, r14, r15
	or r11, r11, r14
	lui r14, 523264
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	bneq r11, zero, .LBB0_144
# %bb.143:                              # %vector.body134
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r28)
.LBB0_144:                              # %vector.body134
                                        #   in Loop: Header=BB0_140 Depth=3
	loads.w r11, 8(r12)
	loads.w r15, 8(r13)
	and r11, r11, r1
	and r15, r15, r1
	seteq r20, r11, r3
	seteq r8, r11, zero
	seteq r22, r15, r3
	seteq r21, r15, zero
	max.u r11, r11, r15
	setlt.u r11, r3, r11
	and r15, r20, r21
	and r8, r8, r22
	lui r21, 523264
	or r8, r15, r8
	or r8, r11, r8
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	bneq r8, zero, .LBB0_146
# %bb.145:                              # %vector.body134
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 8(r28)
.LBB0_146:                              # %vector.body134
                                        #   in Loop: Header=BB0_140 Depth=3
	loads.w r8, 12(r12)
	loads.w r11, 12(r13)
	and r8, r8, r1
	and r11, r11, r1
	seteq r12, r8, r3
	seteq r20, r8, zero
	seteq r13, r11, zero
	seteq r15, r11, r3
	max.u r8, r8, r11
	setlt.u r8, r3, r8
	and r11, r12, r13
	and r12, r20, r15
	or r11, r11, r12
	or r8, r8, r11
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	bneq r8, zero, .LBB0_139
# %bb.147:                              # %vector.body134
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 12(r28)
	j .LBB0_139
.LBB0_148:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r14
	addli r20, zero, 16
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	mfence { sm }
	.loc	1 289 7                         # parallel-rne.mlir:289:7
	addli r2, zero, 4
	bneq r14, r2, .LBB0_35
.LBB0_149:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -24(r30)                  # 4-byte Folded Reload
	loadli.w r4,  -28(r30)                  # 4-byte Folded Reload
	.loc	1 289 7                         # parallel-rne.mlir:289:7
	xfence
	addli r9, zero, 1
	mfence { lm, sm, gm }
	min.u r2, r2, r4
	loadli.w r4,  -20(r30)                  # 4-byte Folded Reload
	setlt.u r2, r2, r20
	or r2, r2, r4
	storeli.w r2, -4(r30)                   # 4-byte Folded Spill
	addli r2, zero, 1024
	zext_int2long r[6:7], r2
	j .LBB0_151
.LBB0_150:                              # %middle.block125
                                        #   in Loop: Header=BB0_151 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 1152
	.loc	1 297 9 is_stmt 1               # parallel-rne.mlir:297:9
	andi r2, r9, 1
	addli r9, zero, 0
	zext_int2long r[6:7], r4
	beq r2, zero, .LBB0_176
.LBB0_151:                              # %vector.memcheck111
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_168 Depth 3
                                        #       Child Loop BB0_154 Depth 3
	.loc	1 298 11                        # parallel-rne.mlir:298:11
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	beq r2, zero, .LBB0_166
# %bb.152:                              # %scalar.ph117.preheader
                                        #   in Loop: Header=BB0_151 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_154
.LBB0_153:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 298 11                        # parallel-rne.mlir:298:11
	setlt.ul r8, r[12:13], r[18:19]
	.loc	1 320 13 is_stmt 1              # parallel-rne.mlir:320:13
	add.s r2, r5, r2
	.loc	1 298 11                        # parallel-rne.mlir:298:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 320 13                        # parallel-rne.mlir:320:13
	stores.w r4, 0(r2)
	.loc	1 298 11                        # parallel-rne.mlir:298:11
	beq r8, zero, .LBB0_150
.LBB0_154:                              # %scalar.ph117
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_151 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	add.ul r[14:15], r[12:13], r[6:7]
	lui r17, 523264
	slli r2, r14, 2
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	add.s r4, r27, r2
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	add.s r8, r25, r2
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	loads.w r4, 0(r4)
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	loads.w r20, 0(r8)
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	and r14, r4, r1
	lui r4, 523264
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	beq r14, r3, .LBB0_156
# %bb.155:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r20, 0
.LBB0_156:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_154 Depth=3
	add.s r8, r10, r2
	loads.w r8, 0(r8)
	and r16, r8, r1
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r16, zero, .LBB0_164
# %bb.157:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r14, zero, .LBB0_165
.LBB0_158:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_154 Depth=3
	beq r16, r3, .LBB0_160
.LBB0_159:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
.LBB0_160:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_154 Depth=3
	setlt.u r8, r3, r14
	lui r14, 523264
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r8, zero, .LBB0_162
# %bb.161:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
.LBB0_162:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_154 Depth=3
	setlt.u r8, r3, r16
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r8, zero, .LBB0_153
# %bb.163:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r14, 0
	j .LBB0_153
.LBB0_164:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_154 Depth=3
	addli r17, r20, 0
	lui r20, 523264
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	beq r14, zero, .LBB0_158
.LBB0_165:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r16, r3, .LBB0_159
	j .LBB0_160
.LBB0_166:                              # %vector.body119.preheader
                                        #   in Loop: Header=BB0_151 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_168
.LBB0_167:                              # %vector.body119
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 298 11 is_stmt 1              # parallel-rne.mlir:298:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 320 13                        # parallel-rne.mlir:320:13
	add.s r2, r5, r2
	.loc	1 298 11                        # parallel-rne.mlir:298:11
	seteq.d r8, r[16:17], r[23:24]
	.loc	1 320 13                        # parallel-rne.mlir:320:13
	stores.w r26, 12(r2)
	stores.w r21, 8(r2)
	stores.w r14, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 298 11                        # parallel-rne.mlir:298:11
	bneq r8, zero, .LBB0_150
.LBB0_168:                              # %vector.body119
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_151 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	add.ul r[11:12], r[16:17], r[6:7]
	lui r26, 523264
	slli r2, r11, 2
	add.s r12, r10, r2
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	add.s r13, r27, r2
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	add.s r28, r25, r2
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	loads.w r4, 0(r12)
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	loads.w r11, 0(r13)
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	and r4, r4, r1
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	and r11, r11, r1
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	seteq r14, r4, r3
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	seteq r21, r4, zero
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	seteq r15, r11, zero
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	seteq r20, r11, r3
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	max.u r4, r4, r11
	setlt.u r4, r3, r4
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	and r11, r14, r15
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	and r14, r21, r20
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	or r11, r11, r14
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	or r11, r4, r11
	lui r4, 523264
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r11, zero, .LBB0_170
# %bb.169:                              # %vector.body119
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r28)
.LBB0_170:                              # %vector.body119
                                        #   in Loop: Header=BB0_168 Depth=3
	loads.w r11, 4(r12)
	loads.w r14, 4(r13)
	and r11, r11, r1
	and r14, r14, r1
	seteq r15, r11, r3
	seteq r22, r11, zero
	seteq r20, r14, zero
	seteq r21, r14, r3
	max.u r11, r11, r14
	setlt.u r11, r3, r11
	and r14, r15, r20
	and r15, r22, r21
	or r14, r14, r15
	or r11, r11, r14
	lui r14, 523264
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r11, zero, .LBB0_172
# %bb.171:                              # %vector.body119
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r28)
.LBB0_172:                              # %vector.body119
                                        #   in Loop: Header=BB0_168 Depth=3
	loads.w r11, 8(r12)
	loads.w r15, 8(r13)
	and r11, r11, r1
	and r15, r15, r1
	seteq r20, r11, r3
	seteq r8, r11, zero
	seteq r22, r15, r3
	seteq r21, r15, zero
	max.u r11, r11, r15
	setlt.u r11, r3, r11
	and r15, r20, r21
	and r8, r8, r22
	lui r21, 523264
	or r8, r15, r8
	or r8, r11, r8
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r8, zero, .LBB0_174
# %bb.173:                              # %vector.body119
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 8(r28)
.LBB0_174:                              # %vector.body119
                                        #   in Loop: Header=BB0_168 Depth=3
	loads.w r8, 12(r12)
	loads.w r11, 12(r13)
	and r8, r8, r1
	and r11, r11, r1
	seteq r12, r8, r3
	seteq r20, r8, zero
	seteq r13, r11, zero
	seteq r15, r11, r3
	max.u r8, r8, r11
	setlt.u r8, r3, r8
	and r11, r12, r13
	and r12, r20, r15
	or r11, r11, r12
	or r8, r8, r11
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r8, zero, .LBB0_167
# %bb.175:                              # %vector.body119
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 12(r28)
	j .LBB0_167
.LBB0_176:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r14
	addli r20, zero, 16
	.loc	1 289 7                         # parallel-rne.mlir:289:7
	mfence { sm }
	.loc	1 325 7                         # parallel-rne.mlir:325:7
	addli r2, zero, 5
	bneq r14, r2, .LBB0_36
.LBB0_177:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -24(r30)                  # 4-byte Folded Reload
	loadli.w r4,  -28(r30)                  # 4-byte Folded Reload
	.loc	1 325 7                         # parallel-rne.mlir:325:7
	xfence
	addli r9, zero, 1
	mfence { lm, sm, gm }
	min.u r2, r2, r4
	loadli.w r4,  -20(r30)                  # 4-byte Folded Reload
	setlt.u r2, r2, r20
	or r2, r2, r4
	storeli.w r2, -4(r30)                   # 4-byte Folded Spill
	addli r2, zero, 1280
	zext_int2long r[6:7], r2
	j .LBB0_179
.LBB0_178:                              # %middle.block110
                                        #   in Loop: Header=BB0_179 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 1408
	.loc	1 333 9 is_stmt 1               # parallel-rne.mlir:333:9
	andi r2, r9, 1
	addli r9, zero, 0
	zext_int2long r[6:7], r4
	beq r2, zero, .LBB0_204
.LBB0_179:                              # %vector.memcheck96
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_196 Depth 3
                                        #       Child Loop BB0_182 Depth 3
	.loc	1 334 11                        # parallel-rne.mlir:334:11
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	beq r2, zero, .LBB0_194
# %bb.180:                              # %scalar.ph102.preheader
                                        #   in Loop: Header=BB0_179 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_182
.LBB0_181:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 334 11                        # parallel-rne.mlir:334:11
	setlt.ul r8, r[12:13], r[18:19]
	.loc	1 356 13 is_stmt 1              # parallel-rne.mlir:356:13
	add.s r2, r5, r2
	.loc	1 334 11                        # parallel-rne.mlir:334:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	stores.w r4, 0(r2)
	.loc	1 334 11                        # parallel-rne.mlir:334:11
	beq r8, zero, .LBB0_178
.LBB0_182:                              # %scalar.ph102
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_179 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	add.ul r[14:15], r[12:13], r[6:7]
	lui r17, 523264
	slli r2, r14, 2
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	add.s r4, r27, r2
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	add.s r8, r25, r2
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	loads.w r4, 0(r4)
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	loads.w r20, 0(r8)
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	and r14, r4, r1
	lui r4, 523264
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	beq r14, r3, .LBB0_184
# %bb.183:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r20, 0
.LBB0_184:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_182 Depth=3
	add.s r8, r10, r2
	loads.w r8, 0(r8)
	and r16, r8, r1
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r16, zero, .LBB0_192
# %bb.185:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r14, zero, .LBB0_193
.LBB0_186:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_182 Depth=3
	beq r16, r3, .LBB0_188
.LBB0_187:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
.LBB0_188:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_182 Depth=3
	setlt.u r8, r3, r14
	lui r14, 523264
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r8, zero, .LBB0_190
# %bb.189:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
.LBB0_190:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_182 Depth=3
	setlt.u r8, r3, r16
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r8, zero, .LBB0_181
# %bb.191:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r14, 0
	j .LBB0_181
.LBB0_192:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_182 Depth=3
	addli r17, r20, 0
	lui r20, 523264
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	beq r14, zero, .LBB0_186
.LBB0_193:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r16, r3, .LBB0_187
	j .LBB0_188
.LBB0_194:                              # %vector.body104.preheader
                                        #   in Loop: Header=BB0_179 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_196
.LBB0_195:                              # %vector.body104
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 334 11 is_stmt 1              # parallel-rne.mlir:334:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	add.s r2, r5, r2
	.loc	1 334 11                        # parallel-rne.mlir:334:11
	seteq.d r8, r[16:17], r[23:24]
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	stores.w r26, 12(r2)
	stores.w r21, 8(r2)
	stores.w r14, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 334 11                        # parallel-rne.mlir:334:11
	bneq r8, zero, .LBB0_178
.LBB0_196:                              # %vector.body104
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_179 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	add.ul r[11:12], r[16:17], r[6:7]
	lui r26, 523264
	slli r2, r11, 2
	add.s r12, r10, r2
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	add.s r13, r27, r2
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	add.s r28, r25, r2
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	loads.w r4, 0(r12)
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	loads.w r11, 0(r13)
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	and r4, r4, r1
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	and r11, r11, r1
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	seteq r14, r4, r3
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	seteq r21, r4, zero
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	seteq r15, r11, zero
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	seteq r20, r11, r3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	max.u r4, r4, r11
	setlt.u r4, r3, r4
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	and r11, r14, r15
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	and r14, r21, r20
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	or r11, r11, r14
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	or r11, r4, r11
	lui r4, 523264
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r11, zero, .LBB0_198
# %bb.197:                              # %vector.body104
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r28)
.LBB0_198:                              # %vector.body104
                                        #   in Loop: Header=BB0_196 Depth=3
	loads.w r11, 4(r12)
	loads.w r14, 4(r13)
	and r11, r11, r1
	and r14, r14, r1
	seteq r15, r11, r3
	seteq r22, r11, zero
	seteq r20, r14, zero
	seteq r21, r14, r3
	max.u r11, r11, r14
	setlt.u r11, r3, r11
	and r14, r15, r20
	and r15, r22, r21
	or r14, r14, r15
	or r11, r11, r14
	lui r14, 523264
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r11, zero, .LBB0_200
# %bb.199:                              # %vector.body104
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r28)
.LBB0_200:                              # %vector.body104
                                        #   in Loop: Header=BB0_196 Depth=3
	loads.w r11, 8(r12)
	loads.w r15, 8(r13)
	and r11, r11, r1
	and r15, r15, r1
	seteq r20, r11, r3
	seteq r8, r11, zero
	seteq r22, r15, r3
	seteq r21, r15, zero
	max.u r11, r11, r15
	setlt.u r11, r3, r11
	and r15, r20, r21
	and r8, r8, r22
	lui r21, 523264
	or r8, r15, r8
	or r8, r11, r8
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r8, zero, .LBB0_202
# %bb.201:                              # %vector.body104
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 8(r28)
.LBB0_202:                              # %vector.body104
                                        #   in Loop: Header=BB0_196 Depth=3
	loads.w r8, 12(r12)
	loads.w r11, 12(r13)
	and r8, r8, r1
	and r11, r11, r1
	seteq r12, r8, r3
	seteq r20, r8, zero
	seteq r13, r11, zero
	seteq r15, r11, r3
	max.u r8, r8, r11
	setlt.u r8, r3, r8
	and r11, r12, r13
	and r12, r20, r15
	or r11, r11, r12
	or r8, r8, r11
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r8, zero, .LBB0_195
# %bb.203:                              # %vector.body104
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 12(r28)
	j .LBB0_195
.LBB0_204:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r14
	addli r20, zero, 16
	.loc	1 325 7                         # parallel-rne.mlir:325:7
	mfence { sm }
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	addli r2, zero, 6
	bneq r14, r2, .LBB0_233
.LBB0_205:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -24(r30)                  # 4-byte Folded Reload
	loadli.w r4,  -28(r30)                  # 4-byte Folded Reload
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	xfence
	addli r9, zero, 1
	mfence { lm, sm, gm }
	min.u r2, r2, r4
	loadli.w r4,  -20(r30)                  # 4-byte Folded Reload
	setlt.u r2, r2, r20
	or r2, r2, r4
	storeli.w r2, -4(r30)                   # 4-byte Folded Spill
	addli r2, zero, 1536
	zext_int2long r[6:7], r2
	j .LBB0_207
.LBB0_206:                              # %middle.block95
                                        #   in Loop: Header=BB0_207 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 1664
	.loc	1 369 9 is_stmt 1               # parallel-rne.mlir:369:9
	andi r2, r9, 1
	addli r9, zero, 0
	zext_int2long r[6:7], r4
	beq r2, zero, .LBB0_232
.LBB0_207:                              # %vector.memcheck81
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_224 Depth 3
                                        #       Child Loop BB0_210 Depth 3
	.loc	1 370 11                        # parallel-rne.mlir:370:11
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	beq r2, zero, .LBB0_222
# %bb.208:                              # %scalar.ph87.preheader
                                        #   in Loop: Header=BB0_207 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_210
.LBB0_209:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 370 11                        # parallel-rne.mlir:370:11
	setlt.ul r8, r[12:13], r[18:19]
	.loc	1 392 13 is_stmt 1              # parallel-rne.mlir:392:13
	add.s r2, r5, r2
	.loc	1 370 11                        # parallel-rne.mlir:370:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 392 13                        # parallel-rne.mlir:392:13
	stores.w r4, 0(r2)
	.loc	1 370 11                        # parallel-rne.mlir:370:11
	beq r8, zero, .LBB0_206
.LBB0_210:                              # %scalar.ph87
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	add.ul r[14:15], r[12:13], r[6:7]
	lui r17, 523264
	slli r2, r14, 2
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	add.s r4, r27, r2
	.loc	1 373 19                        # parallel-rne.mlir:373:19
	add.s r8, r25, r2
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	loads.w r4, 0(r4)
	.loc	1 373 19                        # parallel-rne.mlir:373:19
	loads.w r20, 0(r8)
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	and r14, r4, r1
	lui r4, 523264
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	beq r14, r3, .LBB0_212
# %bb.211:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r20, 0
.LBB0_212:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_210 Depth=3
	add.s r8, r10, r2
	loads.w r8, 0(r8)
	and r16, r8, r1
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	bneq r16, zero, .LBB0_220
# %bb.213:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	bneq r14, zero, .LBB0_221
.LBB0_214:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_210 Depth=3
	beq r16, r3, .LBB0_216
.LBB0_215:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
.LBB0_216:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_210 Depth=3
	setlt.u r8, r3, r14
	lui r14, 523264
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	bneq r8, zero, .LBB0_218
# %bb.217:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
.LBB0_218:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_210 Depth=3
	setlt.u r8, r3, r16
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	bneq r8, zero, .LBB0_209
# %bb.219:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r14, 0
	j .LBB0_209
.LBB0_220:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_210 Depth=3
	addli r17, r20, 0
	lui r20, 523264
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	beq r14, zero, .LBB0_214
.LBB0_221:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	bneq r16, r3, .LBB0_215
	j .LBB0_216
.LBB0_222:                              # %vector.body89.preheader
                                        #   in Loop: Header=BB0_207 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_224
.LBB0_223:                              # %vector.body89
                                        #   in Loop: Header=BB0_224 Depth=3
	.loc	1 370 11 is_stmt 1              # parallel-rne.mlir:370:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 392 13                        # parallel-rne.mlir:392:13
	add.s r2, r5, r2
	.loc	1 370 11                        # parallel-rne.mlir:370:11
	seteq.d r8, r[16:17], r[23:24]
	.loc	1 392 13                        # parallel-rne.mlir:392:13
	stores.w r26, 12(r2)
	stores.w r21, 8(r2)
	stores.w r14, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 370 11                        # parallel-rne.mlir:370:11
	bneq r8, zero, .LBB0_206
.LBB0_224:                              # %vector.body89
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	add.ul r[11:12], r[16:17], r[6:7]
	lui r26, 523264
	slli r2, r11, 2
	add.s r12, r10, r2
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	add.s r13, r27, r2
	.loc	1 373 19                        # parallel-rne.mlir:373:19
	add.s r28, r25, r2
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	loads.w r4, 0(r12)
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	loads.w r11, 0(r13)
	.loc	1 378 19                        # parallel-rne.mlir:378:19
	and r4, r4, r1
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	and r11, r11, r1
	.loc	1 379 19                        # parallel-rne.mlir:379:19
	seteq r14, r4, r3
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	seteq r21, r4, zero
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	seteq r15, r11, zero
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	seteq r20, r11, r3
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	max.u r4, r4, r11
	setlt.u r4, r3, r4
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	and r11, r14, r15
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	and r14, r21, r20
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	or r11, r11, r14
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	or r11, r4, r11
	lui r4, 523264
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	bneq r11, zero, .LBB0_226
# %bb.225:                              # %vector.body89
                                        #   in Loop: Header=BB0_224 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r28)
.LBB0_226:                              # %vector.body89
                                        #   in Loop: Header=BB0_224 Depth=3
	loads.w r11, 4(r12)
	loads.w r14, 4(r13)
	and r11, r11, r1
	and r14, r14, r1
	seteq r15, r11, r3
	seteq r22, r11, zero
	seteq r20, r14, zero
	seteq r21, r14, r3
	max.u r11, r11, r14
	setlt.u r11, r3, r11
	and r14, r15, r20
	and r15, r22, r21
	or r14, r14, r15
	or r11, r11, r14
	lui r14, 523264
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	bneq r11, zero, .LBB0_228
# %bb.227:                              # %vector.body89
                                        #   in Loop: Header=BB0_224 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r28)
.LBB0_228:                              # %vector.body89
                                        #   in Loop: Header=BB0_224 Depth=3
	loads.w r11, 8(r12)
	loads.w r15, 8(r13)
	and r11, r11, r1
	and r15, r15, r1
	seteq r20, r11, r3
	seteq r8, r11, zero
	seteq r22, r15, r3
	seteq r21, r15, zero
	max.u r11, r11, r15
	setlt.u r11, r3, r11
	and r15, r20, r21
	and r8, r8, r22
	lui r21, 523264
	or r8, r15, r8
	or r8, r11, r8
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	bneq r8, zero, .LBB0_230
# %bb.229:                              # %vector.body89
                                        #   in Loop: Header=BB0_224 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 8(r28)
.LBB0_230:                              # %vector.body89
                                        #   in Loop: Header=BB0_224 Depth=3
	loads.w r8, 12(r12)
	loads.w r11, 12(r13)
	and r8, r8, r1
	and r11, r11, r1
	seteq r12, r8, r3
	seteq r20, r8, zero
	seteq r13, r11, zero
	seteq r15, r11, r3
	max.u r8, r8, r11
	setlt.u r8, r3, r8
	and r11, r12, r13
	and r12, r20, r15
	or r11, r11, r12
	or r8, r8, r11
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	bneq r8, zero, .LBB0_223
# %bb.231:                              # %vector.body89
                                        #   in Loop: Header=BB0_224 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 12(r28)
	j .LBB0_223
.LBB0_232:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r14
	addli r20, zero, 16
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	mfence { sm }
.LBB0_233:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 397 7                         # parallel-rne.mlir:397:7
	loadli.w r2,  -48(r30)                  # 4-byte Folded Reload
	zext_int2long r[6:7], zero
	store.d r[6:7], -16(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_262
# %bb.234:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -24(r30)                  # 4-byte Folded Reload
	loadli.w r4,  -28(r30)                  # 4-byte Folded Reload
	.loc	1 397 7                         # parallel-rne.mlir:397:7
	xfence
	addli r28, zero, 1
	mfence { lm, sm, gm }
	min.u r2, r2, r4
	loadli.w r4,  -20(r30)                  # 4-byte Folded Reload
	setlt.u r2, r2, r20
	or r2, r2, r4
	storeli.w r2, -4(r30)                   # 4-byte Folded Spill
	addli r2, zero, 1792
	zext_int2long r[6:7], r2
	j .LBB0_236
.LBB0_235:                              # %middle.block
                                        #   in Loop: Header=BB0_236 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 1920
	.loc	1 405 9 is_stmt 1               # parallel-rne.mlir:405:9
	andi r2, r28, 1
	addli r28, zero, 0
	zext_int2long r[6:7], r4
	beq r2, zero, .LBB0_261
.LBB0_236:                              # %vector.memcheck
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_253 Depth 3
                                        #       Child Loop BB0_239 Depth 3
	.loc	1 406 11                        # parallel-rne.mlir:406:11
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	beq r2, zero, .LBB0_251
# %bb.237:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_236 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_239
.LBB0_238:                              # %scalar.ph
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 406 11                        # parallel-rne.mlir:406:11
	setlt.ul r2, r[12:13], r[18:19]
	.loc	1 428 13 is_stmt 1              # parallel-rne.mlir:428:13
	add.s r4, r5, r4
	.loc	1 406 11                        # parallel-rne.mlir:406:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 428 13                        # parallel-rne.mlir:428:13
	stores.w r14, 0(r4)
	.loc	1 406 11                        # parallel-rne.mlir:406:11
	beq r2, zero, .LBB0_235
.LBB0_239:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_236 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	add.ul r[8:9], r[12:13], r[6:7]
	lui r14, 523264
	lui r20, 523264
	slli r4, r8, 2
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	add.s r2, r27, r4
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	add.s r8, r25, r4
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	loads.w r2, 0(r2)
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	loads.w r21, 0(r8)
	.loc	1 412 19                        # parallel-rne.mlir:412:19
	and r16, r2, r1
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	beq r16, r3, .LBB0_241
# %bb.240:                              # %scalar.ph
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_241:                              # %scalar.ph
                                        #   in Loop: Header=BB0_239 Depth=3
	add.s r2, r10, r4
	loads.w r2, 0(r2)
	and r17, r2, r1
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	bneq r17, zero, .LBB0_249
# %bb.242:                              # %scalar.ph
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	bneq r16, zero, .LBB0_250
.LBB0_243:                              # %scalar.ph
                                        #   in Loop: Header=BB0_239 Depth=3
	beq r17, r3, .LBB0_245
.LBB0_244:                              # %scalar.ph
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_245:                              # %scalar.ph
                                        #   in Loop: Header=BB0_239 Depth=3
	setlt.u r2, r3, r16
	lui r16, 523264
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	bneq r2, zero, .LBB0_247
# %bb.246:                              # %scalar.ph
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r21, 0
.LBB0_247:                              # %scalar.ph
                                        #   in Loop: Header=BB0_239 Depth=3
	setlt.u r2, r3, r17
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	bneq r2, zero, .LBB0_238
# %bb.248:                              # %scalar.ph
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r16, 0
	j .LBB0_238
.LBB0_249:                              # %scalar.ph
                                        #   in Loop: Header=BB0_239 Depth=3
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	beq r16, zero, .LBB0_243
.LBB0_250:                              # %scalar.ph
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	bneq r17, r3, .LBB0_244
	j .LBB0_245
.LBB0_251:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_236 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	load.d r[16:17], -16(r30)               # 8-byte Folded Reload
	j .LBB0_253
.LBB0_252:                              # %vector.body
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 406 11 is_stmt 1              # parallel-rne.mlir:406:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 428 13                        # parallel-rne.mlir:428:13
	add.s r4, r5, r4
	.loc	1 406 11                        # parallel-rne.mlir:406:11
	seteq.d r2, r[16:17], r[23:24]
	.loc	1 428 13                        # parallel-rne.mlir:428:13
	stores.w r12, 12(r4)
	stores.w r20, 8(r4)
	stores.w r22, 4(r4)
	stores.w r26, 0(r4)
	.loc	1 406 11                        # parallel-rne.mlir:406:11
	bneq r2, zero, .LBB0_235
.LBB0_253:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_236 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	add.ul r[11:12], r[16:17], r[6:7]
	lui r26, 523264
	slli r4, r11, 2
	add.s r13, r10, r4
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	add.s r14, r27, r4
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	loads.w r11, 0(r13)
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	loads.w r12, 0(r14)
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	and r11, r11, r1
	.loc	1 412 19                        # parallel-rne.mlir:412:19
	and r12, r12, r1
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	seteq r15, r11, r3
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	seteq r22, r11, zero
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	seteq r20, r12, zero
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	seteq r21, r12, r3
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	max.u r11, r11, r12
	setlt.u r11, r3, r11
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	and r12, r15, r20
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	and r15, r22, r21
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	add.s r21, r25, r4
	.loc	1 421 19                        # parallel-rne.mlir:421:19
	or r12, r12, r15
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	or r11, r11, r12
	lui r12, 523264
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	bneq r11, zero, .LBB0_255
# %bb.254:                              # %vector.body
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r26, 0(r21)
.LBB0_255:                              # %vector.body
                                        #   in Loop: Header=BB0_253 Depth=3
	loads.w r11, 4(r13)
	loads.w r15, 4(r14)
	and r11, r11, r1
	and r15, r15, r1
	seteq r20, r11, r3
	seteq r9, r11, zero
	seteq r8, r15, r3
	seteq r22, r15, zero
	max.u r11, r11, r15
	setlt.u r11, r3, r11
	and r15, r20, r22
	and r8, r9, r8
	lui r22, 523264
	or r8, r15, r8
	or r8, r11, r8
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	bneq r8, zero, .LBB0_257
# %bb.256:                              # %vector.body
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 4(r21)
.LBB0_257:                              # %vector.body
                                        #   in Loop: Header=BB0_253 Depth=3
	loads.w r8, 8(r13)
	loads.w r9, 8(r14)
	and r8, r8, r1
	and r9, r9, r1
	seteq r11, r8, r3
	seteq r2, r8, zero
	seteq r20, r9, r3
	seteq r15, r9, zero
	max.u r8, r8, r9
	setlt.u r8, r3, r8
	and r2, r2, r20
	and r9, r11, r15
	lui r20, 523264
	or r2, r9, r2
	or r2, r8, r2
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	bneq r2, zero, .LBB0_259
# %bb.258:                              # %vector.body
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 8(r21)
.LBB0_259:                              # %vector.body
                                        #   in Loop: Header=BB0_253 Depth=3
	loads.w r2, 12(r13)
	loads.w r8, 12(r14)
	and r2, r2, r1
	and r8, r8, r1
	seteq r9, r2, r3
	seteq r14, r2, zero
	seteq r11, r8, zero
	seteq r13, r8, r3
	max.u r2, r2, r8
	setlt.u r2, r3, r2
	and r8, r9, r11
	and r9, r14, r13
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	bneq r2, zero, .LBB0_252
# %bb.260:                              # %vector.body
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 12(r21)
	j .LBB0_252
.LBB0_261:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r14
	addli r20, zero, 16
	.loc	1 397 7                         # parallel-rne.mlir:397:7
	mfence { sm }
.LBB0_262:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 433 7                         # parallel-rne.mlir:433:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 434 7                         # parallel-rne.mlir:434:7
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_5
# %bb.263:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[15:16], -40(r30)               # 8-byte Folded Reload
	loadli.w r26,  -44(r30)                 # 4-byte Folded Reload
	addli r17, zero, 1
	addli r18, zero, 7
	addli r19, zero, 4
	addli r21, zero, 2
	addli r22, zero, 6
	addli r25, zero, 64
	.loc	1 445 7 is_stmt 1               # parallel-rne.mlir:445:7
	bneq r14, zero, .LBB0_6
# %bb.264:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -68(r30)                  # 4-byte Folded Reload
	load.d r[8:9], -16(r30)                 # 8-byte Folded Reload
	.loc	1 445 7                         # parallel-rne.mlir:445:7
	load.d r[10:11], -64(r30)               # 8-byte Folded Reload
	addli r4, zero, 5
	load.d r[12:13], -80(r30)               # 8-byte Folded Reload
	load.d r[23:24], 24(r30)
	slli r2, r2, 4
	sll.d r[12:13], r[12:13], r21
	sext_int2long r[6:7], r2
	addli r2, zero, 13
	min.sl r[8:9], r[6:7], r[8:9]
	sll.d r[10:11], r[10:11], r2
	addli r2, zero, 19
	addli.d r[8:9], r[8:9], 16
	xwait r2, 0
	lock zero, r4
	add.ul r[10:11], r[23:24], r[10:11]
	dma_cfg zero, zero, zero, 0
	max.sl r[8:9], r[8:9], r[6:7]
	dma_cfg zero, r17, zero, 1
	add.ul r[10:11], r[10:11], r[12:13]
	sub.sl r[6:7], r[8:9], r[6:7]
	zext_int2long r[8:9], r20
	.loc	1 441 13 is_stmt 1              # parallel-rne.mlir:441:13
	min.sl r[6:7], r[6:7], r[8:9]
	.loc	1 445 7                         # parallel-rne.mlir:445:7
	load.d r[8:9], -56(r30)                 # 8-byte Folded Reload
	dma_cfg r11, zero, zero, 2
	slli r2, r8, 2
	dma_cfg r10, r5, r2, 3
	addli r2, zero, 512
	dma_cfg r2, r2, r6, 4
	addli r2, zero, 20
	dma_run zero
	unlock r4
	xsignal r2, 0
	j .LBB0_6
.LBB0_265:                              # %._crit_edge
	.loc	1 447 5                         # parallel-rne.mlir:447:5
	xsignal zero, 0
	bneq r14, zero, .LBB0_267
# %bb.266:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 447 5                         # parallel-rne.mlir:447:5
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
.LBB0_267:
	.loc	1 448 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:448:5
	addli sp, sp, 104
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
	.long	168                             # 0xa8
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-u7zpgwph" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
