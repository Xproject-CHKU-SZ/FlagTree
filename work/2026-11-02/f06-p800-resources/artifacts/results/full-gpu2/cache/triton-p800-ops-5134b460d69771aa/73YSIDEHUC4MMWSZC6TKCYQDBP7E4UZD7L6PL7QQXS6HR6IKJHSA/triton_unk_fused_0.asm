	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/division-veprk2rz" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -184
	addli r1, zero, 1
.Ltmp0:
	.loc	1 28 5 prologue_end             # parallel-rne.mlir:28:5
	core_id r11
	addli r30, sp, 120
	xsignal_mode_cfg r1
	beq r11, zero, .LBB0_2
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 3
	addli r2, zero, 9
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 7
	addli r2, zero, 13
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 23
	addli r2, zero, 17
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 19
	addli r2, zero, 21
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	ble.s r2, r1, .LBB0_268
# %bb.4:                                # %.lr.ph
	.loc	1 39 11                         # parallel-rne.mlir:39:11
	sext_int2long r[12:13], r1
	lui r1, 66
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	addli r10, zero, 0
	addli r14, zero, 3
	addli r15, zero, 64
	addli r16, zero, 1
	addli r18, zero, 7
	addli r23, zero, 4
	addli r24, zero, 2
	addli r17, zero, 6
	lui r25, 42
	lui r19, 522240
	lui r22, 8
	addli r27, zero, 0
	ori r1, r1, 1536
	.loc	1 39 11                         # parallel-rne.mlir:39:11
	store.d r[2:3], -104(r30)               # 8-byte Folded Spill
	lui r2, 114
	storeli.w r1, -108(r30)                 # 4-byte Folded Spill
	lui r1, 90
	ori r1, r1, 1536
	storeli.w r1, -112(r30)                 # 4-byte Folded Spill
	ori r1, r2, 1536
	lui r2, 40
	storeli.w r1, -116(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r26, r1, 4095
	ori r1, r2, 2114
	storeli.w r1, -120(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 437 7 is_stmt 1               # parallel-rne.mlir:437:7
	addli r1, zero, 17
	addli r15, zero, 64
	addli r16, zero, 1
	addli r17, zero, 6
	lui r22, 8
	xsignal r1, 0
	.loc	1 438 7                         # parallel-rne.mlir:438:7
	addli r1, zero, 19
	xsignal r1, 0
	.loc	1 439 7                         # parallel-rne.mlir:439:7
	addli r1, zero, 21
	xsignal r1, 0
	.loc	1 440 7                         # parallel-rne.mlir:440:7
	addli r1, zero, 22
	xsignal r1, 0
	loadli.w r10,  -40(r30)                 # 4-byte Folded Reload
	load.d r[12:13], -48(r30)               # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	load.d r[1:2], -104(r30)                # 8-byte Folded Reload
	addli.d r[12:13], r[12:13], 1
	loadli.w r27,  -52(r30)                 # 4-byte Folded Reload
	addli r10, r10, 1
	addli r23, zero, 4
	addli r24, zero, 2
	lui r25, 42
	setlt.sl r1, r[12:13], r[1:2]
	beq r1, zero, .LBB0_268
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
                                        #     Child Loop BB0_26 Depth 2
                                        #     Child Loop BB0_42 Depth 2
                                        #       Child Loop BB0_59 Depth 3
                                        #       Child Loop BB0_45 Depth 3
                                        #     Child Loop BB0_70 Depth 2
                                        #       Child Loop BB0_87 Depth 3
                                        #       Child Loop BB0_73 Depth 3
                                        #     Child Loop BB0_98 Depth 2
                                        #       Child Loop BB0_115 Depth 3
                                        #       Child Loop BB0_101 Depth 3
                                        #     Child Loop BB0_126 Depth 2
                                        #       Child Loop BB0_143 Depth 3
                                        #       Child Loop BB0_129 Depth 3
                                        #     Child Loop BB0_154 Depth 2
                                        #       Child Loop BB0_171 Depth 3
                                        #       Child Loop BB0_157 Depth 3
                                        #     Child Loop BB0_182 Depth 2
                                        #       Child Loop BB0_199 Depth 3
                                        #       Child Loop BB0_185 Depth 3
                                        #     Child Loop BB0_210 Depth 2
                                        #       Child Loop BB0_227 Depth 3
                                        #       Child Loop BB0_213 Depth 3
                                        #     Child Loop BB0_239 Depth 2
                                        #       Child Loop BB0_256 Depth 3
                                        #       Child Loop BB0_242 Depth 3
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	loadli.w r1,  48(r30)
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	loadli.w r2,  44(r30)
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	addli r5, zero, 8
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	div.s r1, r12, r1
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	div.s r3, r1, r2
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	div.s r4, r3, r15
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	slli r1, r4, 3
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	sub.s r2, r16, r1
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	min.s r5, r2, r5
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	mod.s r2, r10, r14
	.loc	1 61 13                         # parallel-rne.mlir:61:13
	mod.s r6, r3, r5
	.loc	1 62 13                         # parallel-rne.mlir:62:13
	add.s r1, r6, r1
	.loc	1 87 13                         # parallel-rne.mlir:87:13
	slli r6, r2, 13
	.loc	1 70 13                         # parallel-rne.mlir:70:13
	zext_int2long r[8:9], r1
	storeli.w r1, -84(r30)                  # 4-byte Folded Spill
	.loc	1 89 13                         # parallel-rne.mlir:89:13
	lui r1, 24
	add.s r1, r6, r1
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	store.d r[8:9], -80(r30)                # 8-byte Folded Spill
	bneq r11, r16, .LBB0_9
# %bb.8:                                # %.thread20
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r7, zero, 13
	load.d r[20:21], 0(r30)
	storeli.w zero, -60(r30)                # 4-byte Folded Spill
	xwait r14, 0
	lock zero, r23
	dma_cfg r16, r16, zero, 0
	sll.d r[7:8], r[8:9], r7
	addli r9, zero, 128
	add.ul r[7:8], r[20:21], r[7:8]
	dma_cfg zero, r8, zero, 2
	dma_cfg r1, r7, r9, 3
	dma_cfg r9, r9, r15, 4
	dma_run zero
	unlock r23
	xsignal r24, 0
	.loc	1 94 7                          # parallel-rne.mlir:94:7
	j .LBB0_12
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	bneq r11, r24, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	addli r7, zero, 5
	xwait r24, 0
	xwait r7, 0
	lock zero, zero
	ds_cfg r14, zero, 0
	ds_cfg r15, zero, 1
	ds_cfg r15, zero, 14
	ds_cfg r15, zero, 13
	shuffle_batch r6, r1, r15, 1
	addli r1, zero, 1
	unlock zero
	xsignal r14, 0
	storeli.w r1, -60(r30)                  # 4-byte Folded Spill
	xsignal r23, 0
	j .LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -60(r30)                # 4-byte Folded Spill
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	slli r1, r4, 6
	.loc	1 102 13 is_stmt 1              # parallel-rne.mlir:102:13
	slli r4, r2, 14
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	slli r9, r2, 15
	.loc	1 108 7 is_stmt 1               # parallel-rne.mlir:108:7
	storeli.w r10, -40(r30)                 # 4-byte Folded Spill
	store.d r[12:13], -48(r30)              # 8-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r1, r3, r1
	div.s r3, r1, r5
	.loc	1 104 13 is_stmt 1              # parallel-rne.mlir:104:13
	lui r1, 30
	add.s r1, r4, r1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[7:8], r3
	sll.d r[7:8], r[7:8], r18
	.loc	1 108 7 is_stmt 1               # parallel-rne.mlir:108:7
	store.d r[7:8], -72(r30)                # 8-byte Folded Spill
	bneq r11, r17, .LBB0_14
# %bb.13:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	sll.d r[4:5], r[7:8], r16
	load.d r[6:7], 8(r30)
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	storeli.w zero, -56(r30)                # 4-byte Folded Spill
	xwait r18, 0
	lock zero, r23
	dma_cfg r16, r16, zero, 0
	add.ul r[4:5], r[6:7], r[4:5]
	addli r6, zero, 256
	dma_cfg zero, r5, zero, 2
	dma_cfg r1, r4, r6, 3
	addli r1, zero, 2048
	dma_cfg r6, r1, r15, 4
	dma_run zero
	unlock r23
	xsignal r17, 0
	.loc	1 109 7                         # parallel-rne.mlir:109:7
	j .LBB0_22
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	beq r11, r23, .LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r11, r18, .LBB0_21
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 9
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	xwait r17, 0
	xwait r5, 0
	lock zero, zero
	addli r5, zero, 128
	ds_cfg r14, zero, 0
	ds_cfg r5, zero, 1
	ds_cfg r15, zero, 14
	ds_cfg r5, zero, 13
	shuffle_coa r4, r1, r15, 2
	addli r1, zero, 1
	unlock zero
	xsignal r18, 0
	storeli.w r1, -56(r30)                  # 4-byte Folded Spill
	addli r1, zero, 8
	j .LBB0_20
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 110 7                         # parallel-rne.mlir:110:7
	addli r1, zero, 8
	xwait r23, 0
	addli r7, zero, 0
	addli r5, zero, 1
	addli r8, zero, 11
	xwait r1, 0
	addli r1, zero, 1
	xwait r8, 0
.LBB0_18:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r8, r7, 13
	slli r7, r7, 8
	lock zero, r1
	mm_cfg r15, r15, r15, 0
	or r8, r8, r4
	or r7, r7, r9
	mm_cfg r24, r23, r1, 2
	mm r7, r6, r8, 5
	andi r8, r5, 1
	addli r7, zero, 1
	addli r5, zero, 0
	unlock r1
	bneq r8, zero, .LBB0_18
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 5
	storeli.w zero, -56(r30)                # 4-byte Folded Spill
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	addli r1, zero, 1
	storeli.w r1, -24(r30)                  # 4-byte Folded Spill
	addli r1, zero, 10
.LBB0_20:                               # %.thread22
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
	j .LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_7 Depth=1
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	storeli.w zero, -56(r30)                # 4-byte Folded Spill
.LBB0_22:                               # %.thread22
                                        #   in Loop: Header=BB0_7 Depth=1
	slli r1, r3, 7
	addli r3, zero, 896
	.loc	1 124 13 is_stmt 1              # parallel-rne.mlir:124:13
	slli r2, r2, 9
	.loc	1 117 13                        # parallel-rne.mlir:117:13
	zext_int2long r[5:6], r1
	zext_int2long r[3:4], r3
	addli r1, zero, 128
	.loc	1 124 13                        # parallel-rne.mlir:124:13
	add.s r2, r2, r25
	.loc	1 119 13                        # parallel-rne.mlir:119:13
	min.ul r[3:4], r[5:6], r[3:4]
	zext_int2long r[20:21], r1
	mod.s r1, r27, r14
	addli.d r[3:4], r[3:4], 128
	.loc	1 121 13                        # parallel-rne.mlir:121:13
	max.ul r[3:4], r[3:4], r[5:6]
	sub.sl r[3:4], r[3:4], r[5:6]
	.loc	1 122 13                        # parallel-rne.mlir:122:13
	min.ul r[7:8], r[3:4], r[20:21]
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	bneq r11, r16, .LBB0_24
# %bb.23:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	load.d r[3:4], -72(r30)                 # 8-byte Folded Reload
	addli r5, zero, 13
	.loc	1 131 13                        # parallel-rne.mlir:131:13
	slli r1, r1, 15
	addli r27, r27, 1
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	xwait r5, 0
	load.d r[5:6], 16(r30)
	lock zero, r23
	sll.d r[3:4], r[3:4], r16
	dma_cfg zero, r16, zero, 0
	add.ul r[3:4], r[5:6], r[3:4]
	slli r5, r7, 1
	dma_cfg zero, r4, zero, 2
	dma_cfg r2, r3, r5, 3
	addli r2, zero, 256
	addli r3, zero, 512
	dma_cfg r3, r2, r16, 4
	dma_run zero
	unlock r23
	.loc	1 131 13                        # parallel-rne.mlir:131:13
	loadli.w r2,  -108(r30)                 # 4-byte Folded Reload
	add.s r3, r1, r2
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	addli r1, zero, 12
	j .LBB0_28
.LBB0_24:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 131 13                        # parallel-rne.mlir:131:13
	loadli.w r3,  -108(r30)                 # 4-byte Folded Reload
	slli r1, r1, 15
	addli r27, r27, 1
	add.s r3, r1, r3
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	bneq r11, r14, .LBB0_30
# %bb.25:                               #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 10
	addli r1, zero, 0
	xwait r4, 0
	addli r4, zero, 12
	xwait r4, 0
	addli r4, zero, 17
	xwait r4, 0
	lock zero, r24
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 127
	ew_cfg zero, r4, zero, 2
	ew_cfg r16, zero, zero, 3
.LBB0_26:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r3, r1
	add.s r5, r9, r1
	addli r1, r1, 512
	dsmadd r4, r5, r2, 0
	bneq r1, r22, .LBB0_26
# %bb.27:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	unlock r24
	xsignal r1, 0
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
	addli r1, zero, 14
.LBB0_28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
	.loc	1 134 13 is_stmt 1              # parallel-rne.mlir:134:13
	loadli.w r1,  -112(r30)                 # 4-byte Folded Reload
	.loc	1 140 7                         # parallel-rne.mlir:140:7
	storeli.w r27, -52(r30)                 # 4-byte Folded Spill
	.loc	1 134 13                        # parallel-rne.mlir:134:13
	add.s r17, r9, r1
	.loc	1 137 13                        # parallel-rne.mlir:137:13
	loadli.w r1,  -116(r30)                 # 4-byte Folded Reload
	add.s r22, r9, r1
	.loc	1 140 7                         # parallel-rne.mlir:140:7
	addli r1, zero, 3
	bneq r11, r1, .LBB0_33
# %bb.29:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 15
	xwait r1, 0
	.loc	1 141 7                         # parallel-rne.mlir:141:7
	addli r1, zero, 18
	xwait r1, 0
	.loc	1 142 7                         # parallel-rne.mlir:142:7
	addli r1, zero, 20
	xwait r1, 0
	.loc	1 143 7                         # parallel-rne.mlir:143:7
	addli r1, zero, 23
	xwait r1, 0
	j .LBB0_33
.LBB0_30:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 134 13                        # parallel-rne.mlir:134:13
	loadli.w r1,  -112(r30)                 # 4-byte Folded Reload
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	storeli.w r27, -52(r30)                 # 4-byte Folded Spill
	.loc	1 134 13                        # parallel-rne.mlir:134:13
	add.s r17, r9, r1
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	addli r1, zero, 5
	bneq r11, r1, .LBB0_32
# %bb.31:                               # %.thread24
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 14
	addli r2, zero, 2047
	xwait r1, 0
	addli r1, zero, 19
	xwait r1, 0
	lock zero, r24
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r2, zero, 2
	ew_cfg r23, zero, zero, 3
	ew_cfg r23, r23, zero, 19
	ew_cfg r24, zero, zero, 10
	loadli.w r1,  -120(r30)                 # 4-byte Folded Reload
	ew_cfg r24, r16, r1, 11
	lui r1, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r23, r1, 14
	ew_cfg zero, zero, zero, 15
	sslut r17, r3, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r24
	.loc	1 137 13                        # parallel-rne.mlir:137:13
	loadli.w r1,  -116(r30)                 # 4-byte Folded Reload
	add.s r22, r9, r1
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	addli r1, zero, 16
	xwait r1, 0
	addli r1, zero, 21
	xwait r1, 0
	lock zero, r24
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r1, 0
	addli r1, zero, 15
	ew_cfg zero, r2, zero, 2
	ew_cfg r23, zero, zero, 3
	ew_cfg r23, r23, r23, 19
	dsmul r22, r3, r17, 0
	ew_cfg zero, zero, zero, 19
	unlock r24
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	addli r1, zero, 20
	xsignal r1, 0
	j .LBB0_33
.LBB0_32:                               # %.thread82
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 137 13                        # parallel-rne.mlir:137:13
	loadli.w r1,  -116(r30)                 # 4-byte Folded Reload
	add.s r22, r9, r1
.LBB0_33:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 13 is_stmt 0                # parallel-rne.mlir:0:13
	ori r1, r25, 1536
	.loc	1 145 7 is_stmt 1               # parallel-rne.mlir:145:7
	xfence
	.loc	1 146 7                         # parallel-rne.mlir:146:7
	mfence { lm, sm, gm }
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r28, r9, r1
	.loc	1 147 7 is_stmt 1               # parallel-rne.mlir:147:7
	addli r1, zero, 255
	csr_set csr5, r1
	sub.s r1, r28, r3
	storeli.w r1, -28(r30)                  # 4-byte Folded Spill
	sub.s r1, r28, r17
	storeli.w r1, -32(r30)                  # 4-byte Folded Spill
	sub.s r1, r28, r22
	storeli.w r1, -36(r30)                  # 4-byte Folded Spill
	addli r1, zero, 127
	sync_core
	store.d r[7:8], -96(r30)                # 8-byte Folded Spill
	zext_int2long r[9:10], r1
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	beq r11, zero, .LBB0_40
# %bb.34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 184 7                         # parallel-rne.mlir:184:7
	addli r1, zero, 1
	beq r11, r1, .LBB0_68
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 220 7                         # parallel-rne.mlir:220:7
	loadli.w r1,  -60(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_96
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 256 7                         # parallel-rne.mlir:256:7
	addli r1, zero, 3
	beq r11, r1, .LBB0_124
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 292 7                         # parallel-rne.mlir:292:7
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_152
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 328 7                         # parallel-rne.mlir:328:7
	addli r1, zero, 5
	beq r11, r1, .LBB0_180
.LBB0_39:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	addli r1, zero, 6
	beq r11, r1, .LBB0_208
	j .LBB0_236
.LBB0_40:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	zext_int2long r[4:5], zero
	min.u r1, r1, r2
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 148 7 is_stmt 1               # parallel-rne.mlir:148:7
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_42
.LBB0_41:                               # %middle.block192
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r18, zero, 7
	load.d r[4:5], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r18
	.loc	1 156 9 is_stmt 1               # parallel-rne.mlir:156:9
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_67
.LBB0_42:                               # %.preheader31
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_59 Depth 3
                                        #       Child Loop BB0_45 Depth 3
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	sll.d r[11:12], r[4:5], r18
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	beq r1, zero, .LBB0_57
# %bb.43:                               # %scalar.ph184.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_45
.LBB0_44:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	setlt.ul r1, r[4:5], r[9:10]
	.loc	1 179 13 is_stmt 1              # parallel-rne.mlir:179:13
	add.s r2, r28, r2
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 179 13                        # parallel-rne.mlir:179:13
	stores.w r6, 0(r2)
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	beq r1, zero, .LBB0_41
.LBB0_45:                               # %scalar.ph184
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	add.ul r[1:2], r[4:5], r[11:12]
	lui r16, 523264
	slli r2, r1, 2
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	add.s r1, r17, r2
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	add.s r6, r22, r2
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	loads.w r1, 0(r1)
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	loads.w r18, 0(r6)
	lui r6, 523264
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	and r1, r1, r26
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	beq r1, r19, .LBB0_47
# %bb.46:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r18, 0
.LBB0_47:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_45 Depth=3
	add.s r7, r3, r2
	loads.w r7, 0(r7)
	and r8, r7, r26
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r8, zero, .LBB0_55
# %bb.48:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r1, zero, .LBB0_56
.LBB0_49:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_45 Depth=3
	beq r8, r19, .LBB0_51
.LBB0_50:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r16, 0
.LBB0_51:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_45 Depth=3
	setlt.u r7, r19, r1
	lui r1, 523264
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r7, zero, .LBB0_53
# %bb.52:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r18, 0
.LBB0_53:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_45 Depth=3
	setlt.u r7, r19, r8
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r7, zero, .LBB0_44
# %bb.54:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r1, 0
	j .LBB0_44
.LBB0_55:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_45 Depth=3
	addli r16, r18, 0
	lui r18, 523264
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	beq r1, zero, .LBB0_49
.LBB0_56:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r16, 0
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r8, r19, .LBB0_50
	j .LBB0_51
.LBB0_57:                               # %vector.body186.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[23:24], zero
	j .LBB0_59
.LBB0_58:                               # %vector.body186
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 157 11 is_stmt 1              # parallel-rne.mlir:157:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 179 13                        # parallel-rne.mlir:179:13
	add.s r4, r28, r6
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	seteq.d r1, r[23:24], r[20:21]
	.loc	1 179 13                        # parallel-rne.mlir:179:13
	stores.w r27, 12(r4)
	stores.w r18, 8(r4)
	stores.w r5, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	bneq r1, zero, .LBB0_41
.LBB0_59:                               # %vector.body186
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	add.ul r[1:2], r[23:24], r[11:12]
	lui r27, 523264
	slli r6, r1, 2
	add.s r4, r3, r6
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	add.s r16, r17, r6
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	loads.w r1, 0(r4)
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	loads.w r2, 0(r16)
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	and r1, r1, r26
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	and r2, r2, r26
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	seteq r5, r1, r19
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	seteq r25, r1, zero
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	seteq r8, r2, zero
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	seteq r18, r2, r19
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	max.u r1, r1, r2
	setlt.u r1, r19, r1
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	and r2, r5, r8
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	and r5, r25, r18
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	add.s r8, r22, r6
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	or r2, r2, r5
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	or r1, r1, r2
	lui r2, 523264
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r1, zero, .LBB0_61
# %bb.60:                               # %vector.body186
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r8)
.LBB0_61:                               # %vector.body186
                                        #   in Loop: Header=BB0_59 Depth=3
	loads.w r1, 4(r4)
	loads.w r5, 4(r16)
	and r1, r1, r26
	and r5, r5, r26
	seteq r18, r1, r19
	seteq r7, r1, zero
	seteq r13, r5, r19
	seteq r25, r5, zero
	max.u r1, r1, r5
	setlt.u r1, r19, r1
	and r5, r18, r25
	and r7, r7, r13
	or r5, r5, r7
	or r1, r1, r5
	lui r5, 523264
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r1, zero, .LBB0_63
# %bb.62:                               # %vector.body186
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 4(r8)
.LBB0_63:                               # %vector.body186
                                        #   in Loop: Header=BB0_59 Depth=3
	loads.w r1, 8(r4)
	loads.w r7, 8(r16)
	and r1, r1, r26
	and r7, r7, r26
	seteq r13, r1, r19
	seteq r14, r1, zero
	seteq r18, r7, zero
	seteq r25, r7, r19
	max.u r1, r1, r7
	setlt.u r1, r19, r1
	and r7, r13, r18
	and r13, r14, r25
	lui r18, 523264
	or r7, r7, r13
	or r1, r1, r7
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r1, zero, .LBB0_65
# %bb.64:                               # %vector.body186
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 8(r8)
.LBB0_65:                               # %vector.body186
                                        #   in Loop: Header=BB0_59 Depth=3
	loads.w r1, 12(r4)
	loads.w r4, 12(r16)
	and r1, r1, r26
	and r4, r4, r26
	seteq r7, r1, r19
	seteq r15, r1, zero
	seteq r13, r4, zero
	seteq r14, r4, r19
	max.u r1, r1, r4
	setlt.u r1, r19, r1
	and r4, r7, r13
	and r7, r15, r14
	or r4, r4, r7
	or r1, r1, r4
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r1, zero, .LBB0_58
# %bb.66:                               # %vector.body186
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 12(r8)
	j .LBB0_58
.LBB0_67:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r11
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	mfence { sm }
	.loc	1 184 7                         # parallel-rne.mlir:184:7
	addli r1, zero, 1
	bneq r11, r1, .LBB0_35
.LBB0_68:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	.loc	1 184 7                         # parallel-rne.mlir:184:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r15, r1, r2
	addli r1, zero, 8
	zext_int2long r[4:5], r1
	j .LBB0_70
.LBB0_69:                               # %middle.block177
                                        #   in Loop: Header=BB0_70 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[4:5], -8(r30)                  # 8-byte Folded Reload
	addli r18, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 192 9 is_stmt 1               # parallel-rne.mlir:192:9
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_95
.LBB0_70:                               # %.preheader30
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_87 Depth 3
                                        #       Child Loop BB0_73 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[11:12], r[4:5], r18
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	.loc	1 193 11 is_stmt 1              # parallel-rne.mlir:193:11
	beq r15, zero, .LBB0_85
# %bb.71:                               # %scalar.ph169.preheader
                                        #   in Loop: Header=BB0_70 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_73
.LBB0_72:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 193 11                        # parallel-rne.mlir:193:11
	setlt.ul r1, r[4:5], r[9:10]
	.loc	1 215 13 is_stmt 1              # parallel-rne.mlir:215:13
	add.s r2, r28, r2
	.loc	1 193 11                        # parallel-rne.mlir:193:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	stores.w r6, 0(r2)
	.loc	1 193 11                        # parallel-rne.mlir:193:11
	beq r1, zero, .LBB0_69
.LBB0_73:                               # %scalar.ph169
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	add.ul r[1:2], r[4:5], r[11:12]
	lui r16, 523264
	slli r2, r1, 2
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	add.s r1, r17, r2
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	add.s r6, r22, r2
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	loads.w r1, 0(r1)
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	loads.w r18, 0(r6)
	lui r6, 523264
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	and r1, r1, r26
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r1, r19, .LBB0_75
# %bb.74:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r18, 0
.LBB0_75:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_73 Depth=3
	add.s r7, r3, r2
	loads.w r7, 0(r7)
	and r8, r7, r26
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r8, zero, .LBB0_83
# %bb.76:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r1, zero, .LBB0_84
.LBB0_77:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_73 Depth=3
	beq r8, r19, .LBB0_79
.LBB0_78:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r16, 0
.LBB0_79:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_73 Depth=3
	setlt.u r7, r19, r1
	lui r1, 523264
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r7, zero, .LBB0_81
# %bb.80:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r18, 0
.LBB0_81:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_73 Depth=3
	setlt.u r7, r19, r8
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r7, zero, .LBB0_72
# %bb.82:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r1, 0
	j .LBB0_72
.LBB0_83:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_73 Depth=3
	addli r16, r18, 0
	lui r18, 523264
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r1, zero, .LBB0_77
.LBB0_84:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r16, 0
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r8, r19, .LBB0_78
	j .LBB0_79
.LBB0_85:                               # %vector.body171.preheader
                                        #   in Loop: Header=BB0_70 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[23:24], zero
	j .LBB0_87
.LBB0_86:                               # %vector.body171
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 193 11 is_stmt 1              # parallel-rne.mlir:193:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	add.s r4, r28, r6
	.loc	1 193 11                        # parallel-rne.mlir:193:11
	seteq.d r1, r[23:24], r[20:21]
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	stores.w r27, 12(r4)
	stores.w r18, 8(r4)
	stores.w r5, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 193 11                        # parallel-rne.mlir:193:11
	bneq r1, zero, .LBB0_69
.LBB0_87:                               # %vector.body171
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	add.ul r[1:2], r[23:24], r[11:12]
	lui r27, 523264
	slli r6, r1, 2
	add.s r4, r3, r6
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	add.s r8, r17, r6
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	loads.w r1, 0(r4)
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	loads.w r2, 0(r8)
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	and r1, r1, r26
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	and r2, r2, r26
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	seteq r5, r1, r19
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	seteq r18, r1, zero
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	seteq r13, r2, zero
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	seteq r16, r2, r19
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	max.u r1, r1, r2
	setlt.u r1, r19, r1
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	and r2, r5, r13
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	and r5, r18, r16
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	add.s r16, r22, r6
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	or r2, r2, r5
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	or r1, r1, r2
	lui r2, 523264
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r1, zero, .LBB0_89
# %bb.88:                               # %vector.body171
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r16)
.LBB0_89:                               # %vector.body171
                                        #   in Loop: Header=BB0_87 Depth=3
	loads.w r1, 4(r4)
	loads.w r5, 4(r8)
	and r1, r1, r26
	and r5, r5, r26
	seteq r13, r1, r19
	seteq r7, r1, zero
	seteq r25, r5, r19
	seteq r18, r5, zero
	max.u r1, r1, r5
	setlt.u r1, r19, r1
	and r5, r13, r18
	and r7, r7, r25
	or r5, r5, r7
	or r1, r1, r5
	lui r5, 523264
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r1, zero, .LBB0_91
# %bb.90:                               # %vector.body171
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 4(r16)
.LBB0_91:                               # %vector.body171
                                        #   in Loop: Header=BB0_87 Depth=3
	loads.w r1, 8(r4)
	loads.w r7, 8(r8)
	and r1, r1, r26
	and r7, r7, r26
	seteq r13, r1, r19
	seteq r14, r1, zero
	seteq r18, r7, zero
	seteq r25, r7, r19
	max.u r1, r1, r7
	setlt.u r1, r19, r1
	and r7, r13, r18
	and r13, r14, r25
	lui r18, 523264
	or r7, r7, r13
	or r1, r1, r7
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r1, zero, .LBB0_93
# %bb.92:                               # %vector.body171
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 8(r16)
.LBB0_93:                               # %vector.body171
                                        #   in Loop: Header=BB0_87 Depth=3
	loads.w r1, 12(r4)
	loads.w r4, 12(r8)
	and r1, r1, r26
	and r4, r4, r26
	seteq r7, r1, r19
	seteq r14, r1, zero
	seteq r8, r4, zero
	seteq r13, r4, r19
	max.u r1, r1, r4
	setlt.u r1, r19, r1
	and r4, r7, r8
	and r7, r14, r13
	or r4, r4, r7
	or r1, r1, r4
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r1, zero, .LBB0_86
# %bb.94:                               # %vector.body171
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 12(r16)
	j .LBB0_86
.LBB0_95:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r11
	.loc	1 184 7                         # parallel-rne.mlir:184:7
	mfence { sm }
	.loc	1 220 7                         # parallel-rne.mlir:220:7
	loadli.w r1,  -60(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_36
.LBB0_96:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	.loc	1 220 7                         # parallel-rne.mlir:220:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r15, r1, r2
	zext_int2long r[4:5], r2
	j .LBB0_98
.LBB0_97:                               # %middle.block162
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[4:5], -8(r30)                  # 8-byte Folded Reload
	addli r18, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 228 9 is_stmt 1               # parallel-rne.mlir:228:9
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_123
.LBB0_98:                               # %.preheader29
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_115 Depth 3
                                        #       Child Loop BB0_101 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[11:12], r[4:5], r18
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	.loc	1 229 11 is_stmt 1              # parallel-rne.mlir:229:11
	beq r15, zero, .LBB0_113
# %bb.99:                               # %scalar.ph154.preheader
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_101
.LBB0_100:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	setlt.ul r1, r[4:5], r[9:10]
	.loc	1 251 13 is_stmt 1              # parallel-rne.mlir:251:13
	add.s r2, r28, r2
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 251 13                        # parallel-rne.mlir:251:13
	stores.w r7, 0(r2)
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	beq r1, zero, .LBB0_97
.LBB0_101:                              # %scalar.ph154
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_98 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	add.ul r[1:2], r[4:5], r[11:12]
	lui r7, 523264
	lui r16, 523264
	slli r2, r1, 2
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	add.s r1, r17, r2
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.s r6, r22, r2
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	loads.w r1, 0(r1)
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	loads.w r18, 0(r6)
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r1, r1, r26
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	beq r1, r19, .LBB0_103
# %bb.102:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r18, 0
.LBB0_103:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_101 Depth=3
	add.s r6, r3, r2
	loads.w r6, 0(r6)
	and r8, r6, r26
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r8, zero, .LBB0_111
# %bb.104:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r1, zero, .LBB0_112
.LBB0_105:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_101 Depth=3
	beq r8, r19, .LBB0_107
.LBB0_106:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r16, 0
.LBB0_107:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_101 Depth=3
	setlt.u r6, r19, r1
	lui r1, 523264
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r6, zero, .LBB0_109
# %bb.108:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r18, 0
.LBB0_109:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_101 Depth=3
	setlt.u r6, r19, r8
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r6, zero, .LBB0_100
# %bb.110:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r1, 0
	j .LBB0_100
.LBB0_111:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_101 Depth=3
	addli r16, r18, 0
	lui r18, 523264
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	beq r1, zero, .LBB0_105
.LBB0_112:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r16, 0
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r8, r19, .LBB0_106
	j .LBB0_107
.LBB0_113:                              # %vector.body156.preheader
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[23:24], zero
	j .LBB0_115
.LBB0_114:                              # %vector.body156
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 229 11 is_stmt 1              # parallel-rne.mlir:229:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 251 13                        # parallel-rne.mlir:251:13
	add.s r4, r28, r7
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	seteq.d r1, r[23:24], r[20:21]
	.loc	1 251 13                        # parallel-rne.mlir:251:13
	stores.w r27, 12(r4)
	stores.w r18, 8(r4)
	stores.w r5, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	bneq r1, zero, .LBB0_97
.LBB0_115:                              # %vector.body156
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_98 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	add.ul r[1:2], r[23:24], r[11:12]
	lui r27, 523264
	slli r7, r1, 2
	add.s r4, r3, r7
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	add.s r8, r17, r7
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	loads.w r1, 0(r4)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	loads.w r2, 0(r8)
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	and r1, r1, r26
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r2, r2, r26
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	seteq r5, r1, r19
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	seteq r18, r1, zero
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	seteq r13, r2, zero
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	seteq r16, r2, r19
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	max.u r1, r1, r2
	setlt.u r1, r19, r1
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	and r2, r5, r13
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	and r5, r18, r16
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.s r16, r22, r7
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	or r2, r2, r5
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	or r1, r1, r2
	lui r2, 523264
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r1, zero, .LBB0_117
# %bb.116:                              # %vector.body156
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r16)
.LBB0_117:                              # %vector.body156
                                        #   in Loop: Header=BB0_115 Depth=3
	loads.w r1, 4(r4)
	loads.w r5, 4(r8)
	and r1, r1, r26
	and r5, r5, r26
	seteq r13, r1, r19
	seteq r6, r1, zero
	seteq r25, r5, r19
	seteq r18, r5, zero
	max.u r1, r1, r5
	setlt.u r1, r19, r1
	and r5, r13, r18
	and r6, r6, r25
	or r5, r5, r6
	or r1, r1, r5
	lui r5, 523264
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r1, zero, .LBB0_119
# %bb.118:                              # %vector.body156
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 4(r16)
.LBB0_119:                              # %vector.body156
                                        #   in Loop: Header=BB0_115 Depth=3
	loads.w r1, 8(r4)
	loads.w r6, 8(r8)
	and r1, r1, r26
	and r6, r6, r26
	seteq r13, r1, r19
	seteq r14, r1, zero
	seteq r18, r6, zero
	seteq r25, r6, r19
	max.u r1, r1, r6
	setlt.u r1, r19, r1
	and r6, r13, r18
	and r13, r14, r25
	lui r18, 523264
	or r6, r6, r13
	or r1, r1, r6
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r1, zero, .LBB0_121
# %bb.120:                              # %vector.body156
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 8(r16)
.LBB0_121:                              # %vector.body156
                                        #   in Loop: Header=BB0_115 Depth=3
	loads.w r1, 12(r4)
	loads.w r4, 12(r8)
	and r1, r1, r26
	and r4, r4, r26
	seteq r6, r1, r19
	seteq r14, r1, zero
	seteq r8, r4, zero
	seteq r13, r4, r19
	max.u r1, r1, r4
	setlt.u r1, r19, r1
	and r4, r6, r8
	and r6, r14, r13
	or r4, r4, r6
	or r1, r1, r4
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r1, zero, .LBB0_114
# %bb.122:                              # %vector.body156
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 12(r16)
	j .LBB0_114
.LBB0_123:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r11
	.loc	1 220 7                         # parallel-rne.mlir:220:7
	mfence { sm }
	.loc	1 256 7                         # parallel-rne.mlir:256:7
	addli r1, zero, 3
	bneq r11, r1, .LBB0_37
.LBB0_124:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	.loc	1 256 7                         # parallel-rne.mlir:256:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r15, r1, r2
	addli r1, zero, 24
	zext_int2long r[4:5], r1
	j .LBB0_126
.LBB0_125:                              # %middle.block147
                                        #   in Loop: Header=BB0_126 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 31
	load.d r[4:5], -8(r30)                  # 8-byte Folded Reload
	addli r18, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 264 9 is_stmt 1               # parallel-rne.mlir:264:9
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_151
.LBB0_126:                              # %.preheader28
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_143 Depth 3
                                        #       Child Loop BB0_129 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[11:12], r[4:5], r18
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	.loc	1 265 11 is_stmt 1              # parallel-rne.mlir:265:11
	beq r15, zero, .LBB0_141
# %bb.127:                              # %scalar.ph139.preheader
                                        #   in Loop: Header=BB0_126 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_129
.LBB0_128:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 265 11                        # parallel-rne.mlir:265:11
	setlt.ul r1, r[4:5], r[9:10]
	.loc	1 287 13 is_stmt 1              # parallel-rne.mlir:287:13
	add.s r2, r28, r2
	.loc	1 265 11                        # parallel-rne.mlir:265:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 287 13                        # parallel-rne.mlir:287:13
	stores.w r7, 0(r2)
	.loc	1 265 11                        # parallel-rne.mlir:265:11
	beq r1, zero, .LBB0_125
.LBB0_129:                              # %scalar.ph139
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_126 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	add.ul r[1:2], r[4:5], r[11:12]
	lui r7, 523264
	lui r16, 523264
	slli r2, r1, 2
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	add.s r1, r17, r2
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	add.s r6, r22, r2
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	loads.w r1, 0(r1)
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	loads.w r18, 0(r6)
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	and r1, r1, r26
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	beq r1, r19, .LBB0_131
# %bb.130:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r18, 0
.LBB0_131:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_129 Depth=3
	add.s r6, r3, r2
	loads.w r6, 0(r6)
	and r8, r6, r26
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r8, zero, .LBB0_139
# %bb.132:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r1, zero, .LBB0_140
.LBB0_133:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_129 Depth=3
	beq r8, r19, .LBB0_135
.LBB0_134:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r16, 0
.LBB0_135:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_129 Depth=3
	setlt.u r6, r19, r1
	lui r1, 523264
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r6, zero, .LBB0_137
# %bb.136:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r18, 0
.LBB0_137:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_129 Depth=3
	setlt.u r6, r19, r8
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r6, zero, .LBB0_128
# %bb.138:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r1, 0
	j .LBB0_128
.LBB0_139:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_129 Depth=3
	addli r16, r18, 0
	lui r18, 523264
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	beq r1, zero, .LBB0_133
.LBB0_140:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r16, 0
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r8, r19, .LBB0_134
	j .LBB0_135
.LBB0_141:                              # %vector.body141.preheader
                                        #   in Loop: Header=BB0_126 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[23:24], zero
	j .LBB0_143
.LBB0_142:                              # %vector.body141
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 265 11 is_stmt 1              # parallel-rne.mlir:265:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 287 13                        # parallel-rne.mlir:287:13
	add.s r4, r28, r7
	.loc	1 265 11                        # parallel-rne.mlir:265:11
	seteq.d r1, r[23:24], r[20:21]
	.loc	1 287 13                        # parallel-rne.mlir:287:13
	stores.w r27, 12(r4)
	stores.w r18, 8(r4)
	stores.w r5, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 265 11                        # parallel-rne.mlir:265:11
	bneq r1, zero, .LBB0_125
.LBB0_143:                              # %vector.body141
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_126 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	add.ul r[1:2], r[23:24], r[11:12]
	lui r27, 523264
	slli r7, r1, 2
	add.s r4, r3, r7
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	add.s r8, r17, r7
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	loads.w r1, 0(r4)
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	loads.w r2, 0(r8)
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	and r1, r1, r26
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	and r2, r2, r26
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	seteq r5, r1, r19
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	seteq r18, r1, zero
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	seteq r13, r2, zero
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	seteq r16, r2, r19
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	max.u r1, r1, r2
	setlt.u r1, r19, r1
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	and r2, r5, r13
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	and r5, r18, r16
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	add.s r16, r22, r7
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	or r2, r2, r5
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	or r1, r1, r2
	lui r2, 523264
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r1, zero, .LBB0_145
# %bb.144:                              # %vector.body141
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r16)
.LBB0_145:                              # %vector.body141
                                        #   in Loop: Header=BB0_143 Depth=3
	loads.w r1, 4(r4)
	loads.w r5, 4(r8)
	and r1, r1, r26
	and r5, r5, r26
	seteq r13, r1, r19
	seteq r6, r1, zero
	seteq r25, r5, r19
	seteq r18, r5, zero
	max.u r1, r1, r5
	setlt.u r1, r19, r1
	and r5, r13, r18
	and r6, r6, r25
	or r5, r5, r6
	or r1, r1, r5
	lui r5, 523264
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r1, zero, .LBB0_147
# %bb.146:                              # %vector.body141
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 4(r16)
.LBB0_147:                              # %vector.body141
                                        #   in Loop: Header=BB0_143 Depth=3
	loads.w r1, 8(r4)
	loads.w r6, 8(r8)
	and r1, r1, r26
	and r6, r6, r26
	seteq r13, r1, r19
	seteq r14, r1, zero
	seteq r18, r6, zero
	seteq r25, r6, r19
	max.u r1, r1, r6
	setlt.u r1, r19, r1
	and r6, r13, r18
	and r13, r14, r25
	lui r18, 523264
	or r6, r6, r13
	or r1, r1, r6
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r1, zero, .LBB0_149
# %bb.148:                              # %vector.body141
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 8(r16)
.LBB0_149:                              # %vector.body141
                                        #   in Loop: Header=BB0_143 Depth=3
	loads.w r1, 12(r4)
	loads.w r4, 12(r8)
	and r1, r1, r26
	and r4, r4, r26
	seteq r6, r1, r19
	seteq r14, r1, zero
	seteq r8, r4, zero
	seteq r13, r4, r19
	max.u r1, r1, r4
	setlt.u r1, r19, r1
	and r4, r6, r8
	and r6, r14, r13
	or r4, r4, r6
	or r1, r1, r4
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r1, zero, .LBB0_142
# %bb.150:                              # %vector.body141
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 12(r16)
	j .LBB0_142
.LBB0_151:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r11
	.loc	1 256 7                         # parallel-rne.mlir:256:7
	mfence { sm }
	.loc	1 292 7                         # parallel-rne.mlir:292:7
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_38
.LBB0_152:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	.loc	1 292 7                         # parallel-rne.mlir:292:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r15, r1, r2
	addli r1, zero, 32
	zext_int2long r[4:5], r1
	j .LBB0_154
.LBB0_153:                              # %middle.block132
                                        #   in Loop: Header=BB0_154 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 39
	load.d r[4:5], -8(r30)                  # 8-byte Folded Reload
	addli r18, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 300 9 is_stmt 1               # parallel-rne.mlir:300:9
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_179
.LBB0_154:                              # %.preheader27
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_171 Depth 3
                                        #       Child Loop BB0_157 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[11:12], r[4:5], r18
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	.loc	1 301 11 is_stmt 1              # parallel-rne.mlir:301:11
	beq r15, zero, .LBB0_169
# %bb.155:                              # %scalar.ph124.preheader
                                        #   in Loop: Header=BB0_154 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_157
.LBB0_156:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 301 11                        # parallel-rne.mlir:301:11
	setlt.ul r1, r[4:5], r[9:10]
	.loc	1 323 13 is_stmt 1              # parallel-rne.mlir:323:13
	add.s r2, r28, r2
	.loc	1 301 11                        # parallel-rne.mlir:301:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 323 13                        # parallel-rne.mlir:323:13
	stores.w r7, 0(r2)
	.loc	1 301 11                        # parallel-rne.mlir:301:11
	beq r1, zero, .LBB0_153
.LBB0_157:                              # %scalar.ph124
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_154 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	add.ul r[1:2], r[4:5], r[11:12]
	lui r7, 523264
	lui r16, 523264
	slli r2, r1, 2
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	add.s r1, r17, r2
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	add.s r6, r22, r2
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	loads.w r1, 0(r1)
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	loads.w r18, 0(r6)
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	and r1, r1, r26
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	beq r1, r19, .LBB0_159
# %bb.158:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r18, 0
.LBB0_159:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_157 Depth=3
	add.s r6, r3, r2
	loads.w r6, 0(r6)
	and r8, r6, r26
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r8, zero, .LBB0_167
# %bb.160:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r1, zero, .LBB0_168
.LBB0_161:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_157 Depth=3
	beq r8, r19, .LBB0_163
.LBB0_162:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r16, 0
.LBB0_163:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_157 Depth=3
	setlt.u r6, r19, r1
	lui r1, 523264
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r6, zero, .LBB0_165
# %bb.164:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r18, 0
.LBB0_165:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_157 Depth=3
	setlt.u r6, r19, r8
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r6, zero, .LBB0_156
# %bb.166:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r1, 0
	j .LBB0_156
.LBB0_167:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_157 Depth=3
	addli r16, r18, 0
	lui r18, 523264
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	beq r1, zero, .LBB0_161
.LBB0_168:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r16, 0
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r8, r19, .LBB0_162
	j .LBB0_163
.LBB0_169:                              # %vector.body126.preheader
                                        #   in Loop: Header=BB0_154 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[23:24], zero
	j .LBB0_171
.LBB0_170:                              # %vector.body126
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 301 11 is_stmt 1              # parallel-rne.mlir:301:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 323 13                        # parallel-rne.mlir:323:13
	add.s r4, r28, r7
	.loc	1 301 11                        # parallel-rne.mlir:301:11
	seteq.d r1, r[23:24], r[20:21]
	.loc	1 323 13                        # parallel-rne.mlir:323:13
	stores.w r27, 12(r4)
	stores.w r18, 8(r4)
	stores.w r5, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 301 11                        # parallel-rne.mlir:301:11
	bneq r1, zero, .LBB0_153
.LBB0_171:                              # %vector.body126
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_154 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	add.ul r[1:2], r[23:24], r[11:12]
	lui r27, 523264
	slli r7, r1, 2
	add.s r4, r3, r7
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	add.s r8, r17, r7
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	loads.w r1, 0(r4)
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	loads.w r2, 0(r8)
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	and r1, r1, r26
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	and r2, r2, r26
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	seteq r5, r1, r19
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	seteq r18, r1, zero
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	seteq r13, r2, zero
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	seteq r16, r2, r19
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	max.u r1, r1, r2
	setlt.u r1, r19, r1
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	and r2, r5, r13
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r5, r18, r16
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	add.s r16, r22, r7
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	or r2, r2, r5
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	or r1, r1, r2
	lui r2, 523264
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r1, zero, .LBB0_173
# %bb.172:                              # %vector.body126
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r16)
.LBB0_173:                              # %vector.body126
                                        #   in Loop: Header=BB0_171 Depth=3
	loads.w r1, 4(r4)
	loads.w r5, 4(r8)
	and r1, r1, r26
	and r5, r5, r26
	seteq r13, r1, r19
	seteq r6, r1, zero
	seteq r25, r5, r19
	seteq r18, r5, zero
	max.u r1, r1, r5
	setlt.u r1, r19, r1
	and r5, r13, r18
	and r6, r6, r25
	or r5, r5, r6
	or r1, r1, r5
	lui r5, 523264
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r1, zero, .LBB0_175
# %bb.174:                              # %vector.body126
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 4(r16)
.LBB0_175:                              # %vector.body126
                                        #   in Loop: Header=BB0_171 Depth=3
	loads.w r1, 8(r4)
	loads.w r6, 8(r8)
	and r1, r1, r26
	and r6, r6, r26
	seteq r13, r1, r19
	seteq r14, r1, zero
	seteq r18, r6, zero
	seteq r25, r6, r19
	max.u r1, r1, r6
	setlt.u r1, r19, r1
	and r6, r13, r18
	and r13, r14, r25
	lui r18, 523264
	or r6, r6, r13
	or r1, r1, r6
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r1, zero, .LBB0_177
# %bb.176:                              # %vector.body126
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 8(r16)
.LBB0_177:                              # %vector.body126
                                        #   in Loop: Header=BB0_171 Depth=3
	loads.w r1, 12(r4)
	loads.w r4, 12(r8)
	and r1, r1, r26
	and r4, r4, r26
	seteq r6, r1, r19
	seteq r14, r1, zero
	seteq r8, r4, zero
	seteq r13, r4, r19
	max.u r1, r1, r4
	setlt.u r1, r19, r1
	and r4, r6, r8
	and r6, r14, r13
	or r4, r4, r6
	or r1, r1, r4
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r1, zero, .LBB0_170
# %bb.178:                              # %vector.body126
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 12(r16)
	j .LBB0_170
.LBB0_179:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r11
	.loc	1 292 7                         # parallel-rne.mlir:292:7
	mfence { sm }
	.loc	1 328 7                         # parallel-rne.mlir:328:7
	addli r1, zero, 5
	bneq r11, r1, .LBB0_39
.LBB0_180:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	.loc	1 328 7                         # parallel-rne.mlir:328:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r15, r1, r2
	addli r1, zero, 40
	zext_int2long r[4:5], r1
	j .LBB0_182
.LBB0_181:                              # %middle.block117
                                        #   in Loop: Header=BB0_182 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[4:5], -8(r30)                  # 8-byte Folded Reload
	addli r18, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 336 9 is_stmt 1               # parallel-rne.mlir:336:9
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_207
.LBB0_182:                              # %.preheader26
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_199 Depth 3
                                        #       Child Loop BB0_185 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[11:12], r[4:5], r18
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	.loc	1 337 11 is_stmt 1              # parallel-rne.mlir:337:11
	beq r15, zero, .LBB0_197
# %bb.183:                              # %scalar.ph109.preheader
                                        #   in Loop: Header=BB0_182 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_185
.LBB0_184:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	setlt.ul r1, r[4:5], r[9:10]
	.loc	1 359 13 is_stmt 1              # parallel-rne.mlir:359:13
	add.s r2, r28, r2
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 359 13                        # parallel-rne.mlir:359:13
	stores.w r7, 0(r2)
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	beq r1, zero, .LBB0_181
.LBB0_185:                              # %scalar.ph109
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_182 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	add.ul r[1:2], r[4:5], r[11:12]
	lui r7, 523264
	lui r16, 523264
	slli r2, r1, 2
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	add.s r1, r17, r2
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	add.s r6, r22, r2
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	loads.w r1, 0(r1)
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	loads.w r18, 0(r6)
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r1, r1, r26
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	beq r1, r19, .LBB0_187
# %bb.186:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r18, 0
.LBB0_187:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_185 Depth=3
	add.s r6, r3, r2
	loads.w r6, 0(r6)
	and r8, r6, r26
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r8, zero, .LBB0_195
# %bb.188:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r1, zero, .LBB0_196
.LBB0_189:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_185 Depth=3
	beq r8, r19, .LBB0_191
.LBB0_190:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r16, 0
.LBB0_191:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_185 Depth=3
	setlt.u r6, r19, r1
	lui r1, 523264
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r6, zero, .LBB0_193
# %bb.192:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r18, 0
.LBB0_193:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_185 Depth=3
	setlt.u r6, r19, r8
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r6, zero, .LBB0_184
# %bb.194:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r1, 0
	j .LBB0_184
.LBB0_195:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_185 Depth=3
	addli r16, r18, 0
	lui r18, 523264
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	beq r1, zero, .LBB0_189
.LBB0_196:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r16, 0
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r8, r19, .LBB0_190
	j .LBB0_191
.LBB0_197:                              # %vector.body111.preheader
                                        #   in Loop: Header=BB0_182 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[23:24], zero
	j .LBB0_199
.LBB0_198:                              # %vector.body111
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 337 11 is_stmt 1              # parallel-rne.mlir:337:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 359 13                        # parallel-rne.mlir:359:13
	add.s r4, r28, r7
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	seteq.d r1, r[23:24], r[20:21]
	.loc	1 359 13                        # parallel-rne.mlir:359:13
	stores.w r27, 12(r4)
	stores.w r18, 8(r4)
	stores.w r5, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	bneq r1, zero, .LBB0_181
.LBB0_199:                              # %vector.body111
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_182 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	add.ul r[1:2], r[23:24], r[11:12]
	lui r27, 523264
	slli r7, r1, 2
	add.s r4, r3, r7
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	add.s r8, r17, r7
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	loads.w r1, 0(r4)
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	loads.w r2, 0(r8)
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	and r1, r1, r26
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r2, r2, r26
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	seteq r5, r1, r19
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	seteq r18, r1, zero
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	seteq r13, r2, zero
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	seteq r16, r2, r19
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	max.u r1, r1, r2
	setlt.u r1, r19, r1
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	and r2, r5, r13
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	and r5, r18, r16
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	add.s r16, r22, r7
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	or r2, r2, r5
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	or r1, r1, r2
	lui r2, 523264
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r1, zero, .LBB0_201
# %bb.200:                              # %vector.body111
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r16)
.LBB0_201:                              # %vector.body111
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r1, 4(r4)
	loads.w r5, 4(r8)
	and r1, r1, r26
	and r5, r5, r26
	seteq r13, r1, r19
	seteq r6, r1, zero
	seteq r25, r5, r19
	seteq r18, r5, zero
	max.u r1, r1, r5
	setlt.u r1, r19, r1
	and r5, r13, r18
	and r6, r6, r25
	or r5, r5, r6
	or r1, r1, r5
	lui r5, 523264
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r1, zero, .LBB0_203
# %bb.202:                              # %vector.body111
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 4(r16)
.LBB0_203:                              # %vector.body111
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r1, 8(r4)
	loads.w r6, 8(r8)
	and r1, r1, r26
	and r6, r6, r26
	seteq r13, r1, r19
	seteq r14, r1, zero
	seteq r18, r6, zero
	seteq r25, r6, r19
	max.u r1, r1, r6
	setlt.u r1, r19, r1
	and r6, r13, r18
	and r13, r14, r25
	lui r18, 523264
	or r6, r6, r13
	or r1, r1, r6
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r1, zero, .LBB0_205
# %bb.204:                              # %vector.body111
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 8(r16)
.LBB0_205:                              # %vector.body111
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r1, 12(r4)
	loads.w r4, 12(r8)
	and r1, r1, r26
	and r4, r4, r26
	seteq r6, r1, r19
	seteq r14, r1, zero
	seteq r8, r4, zero
	seteq r13, r4, r19
	max.u r1, r1, r4
	setlt.u r1, r19, r1
	and r4, r6, r8
	and r6, r14, r13
	or r4, r4, r6
	or r1, r1, r4
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r1, zero, .LBB0_198
# %bb.206:                              # %vector.body111
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 12(r16)
	j .LBB0_198
.LBB0_207:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r11
	.loc	1 328 7                         # parallel-rne.mlir:328:7
	mfence { sm }
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	addli r1, zero, 6
	bneq r11, r1, .LBB0_236
.LBB0_208:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r15, r1, r2
	addli r1, zero, 48
	zext_int2long r[4:5], r1
	j .LBB0_210
.LBB0_209:                              # %middle.block102
                                        #   in Loop: Header=BB0_210 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 55
	load.d r[4:5], -8(r30)                  # 8-byte Folded Reload
	addli r18, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 372 9 is_stmt 1               # parallel-rne.mlir:372:9
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_235
.LBB0_210:                              # %.preheader25
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_227 Depth 3
                                        #       Child Loop BB0_213 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[11:12], r[4:5], r18
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	.loc	1 373 11 is_stmt 1              # parallel-rne.mlir:373:11
	beq r15, zero, .LBB0_225
# %bb.211:                              # %scalar.ph94.preheader
                                        #   in Loop: Header=BB0_210 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_213
.LBB0_212:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 373 11                        # parallel-rne.mlir:373:11
	setlt.ul r1, r[4:5], r[9:10]
	.loc	1 395 13 is_stmt 1              # parallel-rne.mlir:395:13
	add.s r2, r28, r2
	.loc	1 373 11                        # parallel-rne.mlir:373:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 395 13                        # parallel-rne.mlir:395:13
	stores.w r7, 0(r2)
	.loc	1 373 11                        # parallel-rne.mlir:373:11
	beq r1, zero, .LBB0_209
.LBB0_213:                              # %scalar.ph94
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_210 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	add.ul r[1:2], r[4:5], r[11:12]
	lui r7, 523264
	lui r16, 523264
	slli r2, r1, 2
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	add.s r1, r17, r2
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	add.s r6, r22, r2
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	loads.w r1, 0(r1)
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	loads.w r18, 0(r6)
	.loc	1 379 19                        # parallel-rne.mlir:379:19
	and r1, r1, r26
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	beq r1, r19, .LBB0_215
# %bb.214:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r18, 0
.LBB0_215:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	add.s r6, r3, r2
	loads.w r6, 0(r6)
	and r8, r6, r26
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r8, zero, .LBB0_223
# %bb.216:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r1, zero, .LBB0_224
.LBB0_217:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	beq r8, r19, .LBB0_219
.LBB0_218:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r16, 0
.LBB0_219:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	setlt.u r6, r19, r1
	lui r1, 523264
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r6, zero, .LBB0_221
# %bb.220:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r18, 0
.LBB0_221:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	setlt.u r6, r19, r8
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r6, zero, .LBB0_212
# %bb.222:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r1, 0
	j .LBB0_212
.LBB0_223:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	addli r16, r18, 0
	lui r18, 523264
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	beq r1, zero, .LBB0_217
.LBB0_224:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r16, 0
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r8, r19, .LBB0_218
	j .LBB0_219
.LBB0_225:                              # %vector.body96.preheader
                                        #   in Loop: Header=BB0_210 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[23:24], zero
	j .LBB0_227
.LBB0_226:                              # %vector.body96
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 373 11 is_stmt 1              # parallel-rne.mlir:373:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 395 13                        # parallel-rne.mlir:395:13
	add.s r4, r28, r7
	.loc	1 373 11                        # parallel-rne.mlir:373:11
	seteq.d r1, r[23:24], r[20:21]
	.loc	1 395 13                        # parallel-rne.mlir:395:13
	stores.w r27, 12(r4)
	stores.w r18, 8(r4)
	stores.w r5, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 373 11                        # parallel-rne.mlir:373:11
	bneq r1, zero, .LBB0_209
.LBB0_227:                              # %vector.body96
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_210 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	add.ul r[1:2], r[23:24], r[11:12]
	lui r27, 523264
	slli r7, r1, 2
	add.s r4, r3, r7
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	add.s r8, r17, r7
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	loads.w r1, 0(r4)
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	loads.w r2, 0(r8)
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	and r1, r1, r26
	.loc	1 379 19                        # parallel-rne.mlir:379:19
	and r2, r2, r26
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	seteq r5, r1, r19
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	seteq r18, r1, zero
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	seteq r13, r2, zero
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	seteq r16, r2, r19
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	max.u r1, r1, r2
	setlt.u r1, r19, r1
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	and r2, r5, r13
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	and r5, r18, r16
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	add.s r16, r22, r7
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	or r2, r2, r5
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	or r1, r1, r2
	lui r2, 523264
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r1, zero, .LBB0_229
# %bb.228:                              # %vector.body96
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r16)
.LBB0_229:                              # %vector.body96
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r1, 4(r4)
	loads.w r5, 4(r8)
	and r1, r1, r26
	and r5, r5, r26
	seteq r13, r1, r19
	seteq r6, r1, zero
	seteq r25, r5, r19
	seteq r18, r5, zero
	max.u r1, r1, r5
	setlt.u r1, r19, r1
	and r5, r13, r18
	and r6, r6, r25
	or r5, r5, r6
	or r1, r1, r5
	lui r5, 523264
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r1, zero, .LBB0_231
# %bb.230:                              # %vector.body96
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 4(r16)
.LBB0_231:                              # %vector.body96
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r1, 8(r4)
	loads.w r6, 8(r8)
	and r1, r1, r26
	and r6, r6, r26
	seteq r13, r1, r19
	seteq r14, r1, zero
	seteq r18, r6, zero
	seteq r25, r6, r19
	max.u r1, r1, r6
	setlt.u r1, r19, r1
	and r6, r13, r18
	and r13, r14, r25
	lui r18, 523264
	or r6, r6, r13
	or r1, r1, r6
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r1, zero, .LBB0_233
# %bb.232:                              # %vector.body96
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 8(r16)
.LBB0_233:                              # %vector.body96
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r1, 12(r4)
	loads.w r4, 12(r8)
	and r1, r1, r26
	and r4, r4, r26
	seteq r6, r1, r19
	seteq r14, r1, zero
	seteq r8, r4, zero
	seteq r13, r4, r19
	max.u r1, r1, r4
	setlt.u r1, r19, r1
	and r4, r6, r8
	and r6, r14, r13
	or r4, r4, r6
	or r1, r1, r4
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r1, zero, .LBB0_226
# %bb.234:                              # %vector.body96
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 12(r16)
	j .LBB0_226
.LBB0_235:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r11
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	mfence { sm }
.LBB0_236:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 400 7 is_stmt 1               # parallel-rne.mlir:400:7
	store.d r[1:2], -24(r30)                # 8-byte Folded Spill
	loadli.w r1,  -56(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_265
# %bb.237:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 400 7                         # parallel-rne.mlir:400:7
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	addli r1, zero, 56
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_239
.LBB0_238:                              # %middle.block
                                        #   in Loop: Header=BB0_239 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 63
	load.d r[4:5], -8(r30)                  # 8-byte Folded Reload
	addli r18, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 408 9 is_stmt 1               # parallel-rne.mlir:408:9
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_264
.LBB0_239:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_256 Depth 3
                                        #       Child Loop BB0_242 Depth 3
	.loc	1 409 11                        # parallel-rne.mlir:409:11
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	sll.d r[11:12], r[4:5], r18
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	beq r1, zero, .LBB0_254
# %bb.240:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_239 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_242
.LBB0_241:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 409 11                        # parallel-rne.mlir:409:11
	setlt.ul r1, r[4:5], r[9:10]
	.loc	1 431 13 is_stmt 1              # parallel-rne.mlir:431:13
	add.s r2, r28, r2
	.loc	1 409 11                        # parallel-rne.mlir:409:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 431 13                        # parallel-rne.mlir:431:13
	stores.w r16, 0(r2)
	.loc	1 409 11                        # parallel-rne.mlir:409:11
	beq r1, zero, .LBB0_238
.LBB0_242:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	add.ul r[1:2], r[4:5], r[11:12]
	lui r16, 523264
	lui r23, 523264
	slli r2, r1, 2
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	add.s r1, r17, r2
	.loc	1 412 19                        # parallel-rne.mlir:412:19
	add.s r6, r22, r2
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	loads.w r1, 0(r1)
	.loc	1 412 19                        # parallel-rne.mlir:412:19
	loads.w r24, 0(r6)
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	and r1, r1, r26
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	beq r1, r19, .LBB0_244
# %bb.243:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r24, 0
.LBB0_244:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	add.s r6, r3, r2
	loads.w r6, 0(r6)
	and r18, r6, r26
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r18, zero, .LBB0_252
# %bb.245:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r24, 523264
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r1, zero, .LBB0_253
.LBB0_246:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	beq r18, r19, .LBB0_248
.LBB0_247:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r23, 0
.LBB0_248:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r6, r19, r1
	lui r1, 523264
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r6, zero, .LBB0_250
# %bb.249:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r24, 0
.LBB0_250:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r6, r19, r18
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r6, zero, .LBB0_241
# %bb.251:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r1, 0
	j .LBB0_241
.LBB0_252:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	addli r23, r24, 0
	lui r24, 523264
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	beq r1, zero, .LBB0_246
.LBB0_253:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r23, 0
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r18, r19, .LBB0_247
	j .LBB0_248
.LBB0_254:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_239 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	load.d r[23:24], -24(r30)               # 8-byte Folded Reload
	j .LBB0_256
.LBB0_255:                              # %vector.body
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 409 11 is_stmt 1              # parallel-rne.mlir:409:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 431 13                        # parallel-rne.mlir:431:13
	add.s r2, r28, r2
	.loc	1 409 11                        # parallel-rne.mlir:409:11
	seteq.d r5, r[23:24], r[20:21]
	.loc	1 431 13                        # parallel-rne.mlir:431:13
	stores.w r4, 12(r2)
	stores.w r1, 8(r2)
	stores.w r25, 4(r2)
	stores.w r27, 0(r2)
	.loc	1 409 11                        # parallel-rne.mlir:409:11
	bneq r5, zero, .LBB0_238
.LBB0_256:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	add.ul r[1:2], r[23:24], r[11:12]
	slli r2, r1, 2
	add.s r16, r3, r2
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	add.s r18, r17, r2
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	loads.w r1, 0(r16)
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	loads.w r4, 0(r18)
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	and r1, r1, r26
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	and r4, r4, r26
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	seteq r5, r1, r19
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	seteq r27, r1, zero
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	seteq r13, r4, zero
	.loc	1 421 19                        # parallel-rne.mlir:421:19
	seteq r25, r4, r19
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	max.u r1, r1, r4
	setlt.u r1, r19, r1
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	and r4, r5, r13
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	and r5, r27, r25
	lui r27, 523264
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	or r4, r4, r5
	.loc	1 412 19                        # parallel-rne.mlir:412:19
	add.s r5, r22, r2
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	or r1, r1, r4
	lui r4, 523264
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r1, zero, .LBB0_258
# %bb.257:                              # %vector.body
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r27, 0(r5)
.LBB0_258:                              # %vector.body
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r1, 4(r16)
	loads.w r13, 4(r18)
	and r1, r1, r26
	and r13, r13, r26
	seteq r25, r1, r19
	seteq r6, r13, zero
	seteq r8, r1, zero
	seteq r7, r13, r19
	max.u r1, r1, r13
	setlt.u r1, r19, r1
	and r6, r25, r6
	and r7, r8, r7
	lui r25, 523264
	or r6, r6, r7
	or r1, r1, r6
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r1, zero, .LBB0_260
# %bb.259:                              # %vector.body
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r5)
.LBB0_260:                              # %vector.body
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r1, 8(r16)
	loads.w r6, 8(r18)
	and r1, r1, r26
	and r6, r6, r26
	seteq r7, r1, r19
	seteq r14, r1, zero
	seteq r8, r6, zero
	seteq r13, r6, r19
	max.u r1, r1, r6
	setlt.u r1, r19, r1
	and r6, r7, r8
	and r7, r14, r13
	or r6, r6, r7
	or r6, r1, r6
	lui r1, 523264
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r6, zero, .LBB0_262
# %bb.261:                              # %vector.body
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 8(r5)
.LBB0_262:                              # %vector.body
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r6, 12(r16)
	loads.w r7, 12(r18)
	and r6, r6, r26
	and r7, r7, r26
	seteq r8, r6, r19
	seteq r15, r6, zero
	seteq r13, r7, zero
	seteq r14, r7, r19
	max.u r6, r6, r7
	setlt.u r6, r19, r6
	and r7, r8, r13
	and r8, r15, r14
	or r7, r7, r8
	or r6, r6, r7
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r6, zero, .LBB0_255
# %bb.263:                              # %vector.body
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 12(r5)
	j .LBB0_255
.LBB0_264:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r11
	.loc	1 400 7                         # parallel-rne.mlir:400:7
	mfence { sm }
.LBB0_265:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 436 7                         # parallel-rne.mlir:436:7
	addli r1, zero, 255
	addli r14, zero, 3
	csr_set csr5, r1
	sync_core
	.loc	1 437 7                         # parallel-rne.mlir:437:7
	beq r11, r14, .LBB0_5
# %bb.266:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r10,  -40(r30)                 # 4-byte Folded Reload
	load.d r[12:13], -48(r30)               # 8-byte Folded Reload
	addli r15, zero, 64
	addli r16, zero, 1
	addli r17, zero, 6
	lui r22, 8
	.loc	1 448 7 is_stmt 1               # parallel-rne.mlir:448:7
	bneq r11, zero, .LBB0_6
# %bb.267:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -84(r30)                  # 4-byte Folded Reload
	.loc	1 448 7                         # parallel-rne.mlir:448:7
	load.d r[6:7], -80(r30)                 # 8-byte Folded Reload
	addli r5, zero, 17
	load.d r[3:4], -24(r30)                 # 8-byte Folded Reload
	load.d r[20:21], 24(r30)
	addli r9, zero, 22
	slli r1, r1, 6
	sll.d r[5:6], r[6:7], r5
	load.d r[7:8], -72(r30)                 # 8-byte Folded Reload
	xwait r9, 0
	sext_int2long r[1:2], r1
	add.ul r[5:6], r[20:21], r[5:6]
	sll.d r[7:8], r[7:8], r16
	min.sl r[3:4], r[1:2], r[3:4]
	add.ul r[5:6], r[5:6], r[7:8]
	addli r7, zero, 5
	addli.d r[3:4], r[3:4], 64
	lock zero, r7
	max.sl r[3:4], r[3:4], r[1:2]
	dma_cfg r16, zero, zero, 0
	dma_cfg zero, r16, zero, 1
	sub.sl r[1:2], r[3:4], r[1:2]
	zext_int2long r[3:4], r15
	.loc	1 444 13 is_stmt 1              # parallel-rne.mlir:444:13
	min.sl r[1:2], r[1:2], r[3:4]
	.loc	1 448 7                         # parallel-rne.mlir:448:7
	load.d r[3:4], -96(r30)                 # 8-byte Folded Reload
	dma_cfg r6, zero, zero, 2
	slli r3, r3, 2
	addli r4, zero, 512
	dma_cfg r5, r28, r3, 3
	addli r3, zero, 2048
	dma_cfg r3, r4, r1, 4
	addli r1, zero, 23
	dma_run zero
	unlock r7
	xsignal r1, 0
	j .LBB0_6
.LBB0_268:                              # %._crit_edge
	.loc	1 450 5                         # parallel-rne.mlir:450:5
	xsignal zero, 0
	bneq r11, zero, .LBB0_270
# %bb.269:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 450 5                         # parallel-rne.mlir:450:5
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
.LBB0_270:
	.loc	1 451 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:451:5
	addli sp, sp, 120
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
	.long	184                             # 0xb8
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/division-veprk2rz" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
