	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/division-m_8czbva" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -184
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r10
	addli r30, sp, 120
	xsignal_mode_cfg r1
	beq r10, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r2, 1048575
	.loc	1 30 5                          # parallel-rne.mlir:30:5
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
	.loc	1 30 5                          # parallel-rne.mlir:30:5
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 7
	addli r2, zero, 13
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 23
	addli r2, zero, 17
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 19
	addli r2, zero, 21
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 32 10 is_stmt 1               # parallel-rne.mlir:32:10
	load_param_i r4, 1
	loadli.w r3,  48(r30)
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
	.loc	1 53 5                          # parallel-rne.mlir:53:5
	ble.s r2, r1, .LBB0_268
# %bb.4:                                # %.lr.ph
	.loc	1 41 11                         # parallel-rne.mlir:41:11
	sext_int2long r[12:13], r1
	lui r1, 52
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	addli r11, zero, 0
	addli r15, zero, 4
	addli r16, zero, 1
	addli r8, zero, 7
	addli r17, zero, 32
	addli r18, zero, 2
	addli r19, zero, 6
	addli r20, zero, 64
	lui r24, 522240
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	ori r1, r1, 2048
	.loc	1 41 11                         # parallel-rne.mlir:41:11
	store.d r[2:3], -104(r30)               # 8-byte Folded Spill
	lui r2, 84
	storeli.w r1, -108(r30)                 # 4-byte Folded Spill
	lui r1, 68
	ori r1, r1, 2048
	storeli.w r1, -112(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2048
	lui r2, 40
	storeli.w r1, -116(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r14, r1, 4095
	ori r1, r2, 2114
	storeli.w r1, -120(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 439 7 is_stmt 1               # parallel-rne.mlir:439:7
	addli r1, zero, 17
	addli r15, zero, 4
	addli r16, zero, 1
	addli r17, zero, 32
	addli r18, zero, 2
	addli r19, zero, 6
	addli r20, zero, 64
	xsignal r1, 0
	.loc	1 440 7                         # parallel-rne.mlir:440:7
	addli r1, zero, 19
	xsignal r1, 0
	.loc	1 441 7                         # parallel-rne.mlir:441:7
	addli r1, zero, 21
	xsignal r1, 0
	.loc	1 442 7                         # parallel-rne.mlir:442:7
	addli r1, zero, 22
	xsignal r1, 0
	loadli.w r11,  -44(r30)                 # 4-byte Folded Reload
	load.d r[12:13], -56(r30)               # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 53 5                          # parallel-rne.mlir:53:5
	load.d r[1:2], -104(r30)                # 8-byte Folded Reload
	addli.d r[12:13], r[12:13], 1
	addli r11, r11, 1
	setlt.sl r1, r[12:13], r[1:2]
	beq r1, zero, .LBB0_268
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
                                        #     Child Loop BB0_26 Depth 2
                                        #     Child Loop BB0_123 Depth 2
                                        #       Child Loop BB0_140 Depth 3
                                        #       Child Loop BB0_126 Depth 3
                                        #     Child Loop BB0_37 Depth 2
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_40 Depth 3
                                        #     Child Loop BB0_152 Depth 2
                                        #       Child Loop BB0_169 Depth 3
                                        #       Child Loop BB0_155 Depth 3
                                        #     Child Loop BB0_66 Depth 2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_69 Depth 3
                                        #     Child Loop BB0_181 Depth 2
                                        #       Child Loop BB0_198 Depth 3
                                        #       Child Loop BB0_184 Depth 3
                                        #     Child Loop BB0_95 Depth 2
                                        #       Child Loop BB0_112 Depth 3
                                        #       Child Loop BB0_98 Depth 3
                                        #     Child Loop BB0_210 Depth 2
                                        #       Child Loop BB0_227 Depth 3
                                        #       Child Loop BB0_213 Depth 3
                                        #     Child Loop BB0_239 Depth 2
                                        #       Child Loop BB0_256 Depth 3
                                        #       Child Loop BB0_242 Depth 3
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	loadli.w r1,  48(r30)
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	loadli.w r2,  44(r30)
	.loc	1 62 13                         # parallel-rne.mlir:62:13
	addli r4, zero, 8
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	div.s r1, r12, r1
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	div.s r1, r1, r2
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	addli r2, zero, 16
	div.s r3, r1, r2
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	slli r5, r3, 3
	.loc	1 61 13                         # parallel-rne.mlir:61:13
	sub.s r2, r16, r5
	.loc	1 62 13                         # parallel-rne.mlir:62:13
	min.s r4, r2, r4
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	mod.s r2, r11, r15
	.loc	1 63 13                         # parallel-rne.mlir:63:13
	mod.s r6, r1, r4
	.loc	1 64 13                         # parallel-rne.mlir:64:13
	add.s r23, r6, r5
	.loc	1 89 13                         # parallel-rne.mlir:89:13
	slli r5, r2, 12
	.loc	1 91 13                         # parallel-rne.mlir:91:13
	lui r6, 16
	.loc	1 72 13                         # parallel-rne.mlir:72:13
	zext_int2long r[25:26], r23
	.loc	1 91 13                         # parallel-rne.mlir:91:13
	add.s r6, r5, r6
	.loc	1 95 7                          # parallel-rne.mlir:95:7
	bneq r10, r16, .LBB0_9
# %bb.8:                                # %.thread20
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r7, zero, 12
	load.d r[21:22], 0(r30)
	addli r9, zero, 3
	addli r27, zero, 0
	sll.d r[7:8], r[25:26], r7
	xwait r9, 0
	lock zero, r15
	addli r9, zero, 128
	dma_cfg r16, r16, zero, 0
	add.ul r[7:8], r[21:22], r[7:8]
	dma_cfg zero, r8, zero, 2
	dma_cfg r6, r7, r9, 3
	addli r8, zero, 7
	dma_cfg r9, r9, r17, 4
	dma_run zero
	unlock r15
	xsignal r18, 0
	.loc	1 96 7                          # parallel-rne.mlir:96:7
	j .LBB0_12
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	bneq r10, r18, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	addli r7, zero, 5
	xwait r18, 0
	addli r27, zero, 1
	xwait r7, 0
	addli r7, zero, 3
	lock zero, zero
	ds_cfg r7, zero, 0
	ds_cfg r20, zero, 1
	ds_cfg r20, zero, 14
	ds_cfg r17, zero, 13
	shuffle_batch r5, r6, r20, 1
	unlock zero
	xsignal r7, 0
	xsignal r15, 0
	j .LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r27, zero, 0
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	slli r3, r3, 4
	.loc	1 110 7 is_stmt 1               # parallel-rne.mlir:110:7
	storeli.w r11, -44(r30)                 # 4-byte Folded Spill
	store.d r[12:13], -56(r30)              # 8-byte Folded Spill
	store.d r[25:26], -72(r30)              # 8-byte Folded Spill
	storeli.w r23, -76(r30)                 # 4-byte Folded Spill
	storeli.w r27, -64(r30)                 # 4-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r1, r1, r3
	slli r3, r2, 14
	div.s r4, r1, r4
	.loc	1 106 13 is_stmt 1              # parallel-rne.mlir:106:13
	lui r1, 20
	add.s r1, r3, r1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[6:7], r4
	sll.d r[21:22], r[6:7], r8
	.loc	1 110 7 is_stmt 1               # parallel-rne.mlir:110:7
	bneq r10, r19, .LBB0_14
# %bb.13:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	storeli.w zero, -60(r30)                # 4-byte Folded Spill
	.loc	1 110 7                         # parallel-rne.mlir:110:7
	xwait r8, 0
	load.d r[7:8], 8(r30)
	sll.d r[5:6], r[21:22], r16
	lock zero, r15
	dma_cfg r16, r16, zero, 0
	add.ul r[5:6], r[7:8], r[5:6]
	addli r7, zero, 256
	dma_cfg zero, r6, zero, 2
	dma_cfg r1, r5, r7, 3
	addli r1, zero, 512
	dma_cfg r7, r1, r20, 4
	dma_run zero
	unlock r15
	xsignal r19, 0
	j .LBB0_22
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 111 7 is_stmt 1               # parallel-rne.mlir:111:7
	beq r10, r15, .LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r10, r8, .LBB0_21
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 9
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	xwait r19, 0
	xwait r5, 0
	addli r5, zero, 3
	lock zero, zero
	ds_cfg r5, zero, 0
	addli r5, zero, 128
	ds_cfg r5, zero, 1
	ds_cfg r20, zero, 14
	ds_cfg r5, zero, 13
	shuffle_coa r3, r1, r20, 2
	addli r1, zero, 1
	unlock zero
	xsignal r8, 0
	storeli.w r1, -60(r30)                  # 4-byte Folded Spill
	addli r1, zero, 8
	j .LBB0_20
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 112 7                         # parallel-rne.mlir:112:7
	addli r1, zero, 8
	xwait r15, 0
	addli r7, zero, 0
	addli r6, zero, 1
	addli r8, zero, 11
	xwait r1, 0
	addli r1, zero, 1
	xwait r8, 0
.LBB0_18:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r8, r7, 13
	slli r7, r7, 8
	lock zero, r1
	mm_cfg r20, r20, r17, 0
	or r8, r8, r3
	or r7, r7, r3
	mm_cfg r18, r15, r1, 2
	mm r7, r5, r8, 5
	andi r8, r6, 1
	addli r7, zero, 1
	addli r6, zero, 0
	unlock r1
	bneq r8, zero, .LBB0_18
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 5
	storeli.w zero, -60(r30)                # 4-byte Folded Spill
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
	storeli.w zero, -60(r30)                # 4-byte Folded Spill
.LBB0_22:                               # %.thread22
                                        #   in Loop: Header=BB0_7 Depth=1
	slli r1, r4, 7
	addli r4, zero, 128
	loadli.w r12,  -40(r30)                 # 4-byte Folded Reload
	lui r9, 36
	lui r11, 4
	.loc	1 131 7 is_stmt 1               # parallel-rne.mlir:131:7
	store.d r[21:22], -88(r30)              # 8-byte Folded Spill
	zext_int2long r[26:27], r4
	.loc	1 119 13                        # parallel-rne.mlir:119:13
	zext_int2long r[5:6], r1
	.loc	1 126 13                        # parallel-rne.mlir:126:13
	slli r1, r2, 9
	mod.s r4, r12, r15
	.loc	1 121 13                        # parallel-rne.mlir:121:13
	min.ul r[7:8], r[5:6], r[26:27]
	.loc	1 126 13                        # parallel-rne.mlir:126:13
	add.s r1, r1, r9
	.loc	1 121 13                        # parallel-rne.mlir:121:13
	addli.d r[7:8], r[7:8], 128
	.loc	1 123 13                        # parallel-rne.mlir:123:13
	max.ul r[7:8], r[7:8], r[5:6]
	sub.sl r[5:6], r[7:8], r[5:6]
	.loc	1 124 13                        # parallel-rne.mlir:124:13
	min.ul r[19:20], r[5:6], r[26:27]
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	store.d r[19:20], -96(r30)              # 8-byte Folded Spill
	bneq r10, r16, .LBB0_24
# %bb.23:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	load.d r[7:8], 16(r30)
	sll.d r[5:6], r[21:22], r16
	addli r2, zero, 13
	.loc	1 133 13                        # parallel-rne.mlir:133:13
	addli r12, r12, 1
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	xwait r2, 0
	lock zero, r15
	slli r2, r19, 1
	add.ul r[5:6], r[7:8], r[5:6]
	dma_cfg zero, r16, zero, 0
	addli r8, zero, 7
	dma_cfg zero, r6, zero, 2
	dma_cfg r1, r5, r2, 3
	addli r1, zero, 256
	addli r2, zero, 512
	dma_cfg r2, r1, r16, 4
	dma_run zero
	unlock r15
	.loc	1 133 13                        # parallel-rne.mlir:133:13
	slli r1, r4, 14
	loadli.w r2,  -108(r30)                 # 4-byte Folded Reload
	add.s r28, r1, r2
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	addli r1, zero, 12
	j .LBB0_28
.LBB0_24:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 133 13                        # parallel-rne.mlir:133:13
	slli r2, r4, 14
	loadli.w r4,  -108(r30)                 # 4-byte Folded Reload
	addli r12, r12, 1
	add.s r28, r2, r4
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	addli r2, zero, 3
	bneq r10, r2, .LBB0_30
# %bb.25:                               #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 10
	addli r2, zero, 0
	addli r8, zero, 7
	xwait r4, 0
	addli r4, zero, 12
	xwait r4, 0
	addli r4, zero, 17
	xwait r4, 0
	lock zero, r18
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 127
	ew_cfg zero, r4, zero, 2
	ew_cfg r16, zero, zero, 3
.LBB0_26:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r28, r2
	add.s r5, r3, r2
	addli r2, r2, 512
	dsmadd r4, r5, r1, 0
	bneq r2, r11, .LBB0_26
# %bb.27:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	unlock r18
	xsignal r1, 0
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
	addli r1, zero, 14
.LBB0_28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
	.loc	1 136 13 is_stmt 1              # parallel-rne.mlir:136:13
	loadli.w r1,  -112(r30)                 # 4-byte Folded Reload
	.loc	1 142 7                         # parallel-rne.mlir:142:7
	storeli.w r12, -40(r30)                 # 4-byte Folded Spill
	.loc	1 136 13                        # parallel-rne.mlir:136:13
	add.s r17, r3, r1
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	loadli.w r1,  -116(r30)                 # 4-byte Folded Reload
	add.s r21, r3, r1
	.loc	1 142 7                         # parallel-rne.mlir:142:7
	addli r1, zero, 3
	bneq r10, r1, .LBB0_33
# %bb.29:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 15
	xwait r1, 0
	.loc	1 143 7                         # parallel-rne.mlir:143:7
	addli r1, zero, 18
	xwait r1, 0
	.loc	1 144 7                         # parallel-rne.mlir:144:7
	addli r1, zero, 20
	xwait r1, 0
	.loc	1 145 7                         # parallel-rne.mlir:145:7
	addli r1, zero, 23
	xwait r1, 0
	j .LBB0_33
.LBB0_30:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 136 13                        # parallel-rne.mlir:136:13
	loadli.w r1,  -112(r30)                 # 4-byte Folded Reload
	addli r8, zero, 7
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	storeli.w r12, -40(r30)                 # 4-byte Folded Spill
	.loc	1 136 13                        # parallel-rne.mlir:136:13
	add.s r17, r3, r1
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	addli r1, zero, 5
	bneq r10, r1, .LBB0_32
# %bb.31:                               # %.thread24
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 14
	addli r2, zero, 1023
	xwait r1, 0
	addli r1, zero, 19
	xwait r1, 0
	lock zero, r18
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r2, zero, 2
	ew_cfg r15, zero, zero, 3
	ew_cfg r15, r15, zero, 19
	ew_cfg r18, zero, zero, 10
	loadli.w r1,  -120(r30)                 # 4-byte Folded Reload
	ew_cfg r18, r16, r1, 11
	lui r1, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r15, r1, 14
	ew_cfg zero, zero, zero, 15
	sslut r17, r28, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r18
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	loadli.w r1,  -116(r30)                 # 4-byte Folded Reload
	add.s r21, r3, r1
	.loc	1 140 7                         # parallel-rne.mlir:140:7
	addli r1, zero, 16
	xwait r1, 0
	addli r1, zero, 21
	xwait r1, 0
	lock zero, r18
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r1, 0
	addli r1, zero, 15
	ew_cfg zero, r2, zero, 2
	ew_cfg r15, zero, zero, 3
	ew_cfg r15, r15, r15, 19
	dsmul r21, r28, r17, 0
	ew_cfg zero, zero, zero, 19
	unlock r18
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	addli r1, zero, 20
	xsignal r1, 0
	j .LBB0_33
.LBB0_32:                               # %.thread82
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	loadli.w r1,  -116(r30)                 # 4-byte Folded Reload
	add.s r21, r3, r1
.LBB0_33:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 13 is_stmt 0                # parallel-rne.mlir:0:13
	ori r1, r9, 2048
	.loc	1 147 7 is_stmt 1               # parallel-rne.mlir:147:7
	xfence
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	mfence { lm, sm, gm }
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r3, r3, r1
	.loc	1 149 7 is_stmt 1               # parallel-rne.mlir:149:7
	addli r1, zero, 255
	csr_set csr5, r1
	sub.s r1, r3, r28
	storeli.w r1, -28(r30)                  # 4-byte Folded Spill
	sub.s r1, r3, r17
	storeli.w r1, -32(r30)                  # 4-byte Folded Spill
	sub.s r1, r3, r21
	storeli.w r1, -36(r30)                  # 4-byte Folded Spill
	addli r1, zero, 127
	sync_core
	zext_int2long r[18:19], r1
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	beq r10, zero, .LBB0_121
# %bb.34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 186 7                         # parallel-rne.mlir:186:7
	addli r1, zero, 1
	bneq r10, r1, .LBB0_149
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 186 7                         # parallel-rne.mlir:186:7
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	addli r1, zero, 4
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_37
.LBB0_36:                               # %middle.block177
                                        #   in Loop: Header=BB0_37 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r8, zero, 7
	load.d r[4:5], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r8
	.loc	1 194 9 is_stmt 1               # parallel-rne.mlir:194:9
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_62
.LBB0_37:                               # %.preheader30
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_40 Depth 3
	.loc	1 195 11                        # parallel-rne.mlir:195:11
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	sll.d r[6:7], r[4:5], r8
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	beq r1, zero, .LBB0_52
# %bb.38:                               # %scalar.ph169.preheader
                                        #   in Loop: Header=BB0_37 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_40
.LBB0_39:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 195 11                        # parallel-rne.mlir:195:11
	setlt.ul r8, r[1:2], r[18:19]
	.loc	1 217 13 is_stmt 1              # parallel-rne.mlir:217:13
	add.s r4, r3, r4
	.loc	1 195 11                        # parallel-rne.mlir:195:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	stores.w r5, 0(r4)
	.loc	1 195 11                        # parallel-rne.mlir:195:11
	beq r8, zero, .LBB0_36
.LBB0_40:                               # %scalar.ph169
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	add.ul r[4:5], r[1:2], r[6:7]
	lui r15, 523264
	slli r4, r4, 2
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	add.s r5, r17, r4
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	add.s r8, r21, r4
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	loads.w r5, 0(r5)
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	loads.w r16, 0(r8)
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	and r8, r5, r14
	lui r5, 523264
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r8, r24, .LBB0_42
# %bb.41:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
.LBB0_42:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_40 Depth=3
	add.s r9, r28, r4
	loads.w r9, 0(r9)
	and r12, r9, r14
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r12, zero, .LBB0_50
# %bb.43:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r16, 0
	lui r16, 523264
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r8, zero, .LBB0_51
.LBB0_44:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_40 Depth=3
	beq r12, r24, .LBB0_46
.LBB0_45:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
.LBB0_46:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_40 Depth=3
	setlt.u r9, r24, r8
	lui r8, 523264
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r9, zero, .LBB0_48
# %bb.47:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
.LBB0_48:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_40 Depth=3
	setlt.u r9, r24, r12
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r9, zero, .LBB0_39
# %bb.49:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r8, 0
	j .LBB0_39
.LBB0_50:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_40 Depth=3
	lui r16, 523264
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r8, zero, .LBB0_44
.LBB0_51:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r12, r24, .LBB0_45
	j .LBB0_46
.LBB0_52:                               # %vector.body171.preheader
                                        #   in Loop: Header=BB0_37 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[4:5], zero
	j .LBB0_54
.LBB0_53:                               # %vector.body171
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 195 11 is_stmt 1              # parallel-rne.mlir:195:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	add.s r2, r3, r2
	.loc	1 195 11                        # parallel-rne.mlir:195:11
	seteq.d r9, r[4:5], r[26:27]
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	stores.w r25, 12(r2)
	stores.w r20, 8(r2)
	stores.w r1, 4(r2)
	stores.w r8, 0(r2)
	.loc	1 195 11                        # parallel-rne.mlir:195:11
	bneq r9, zero, .LBB0_36
.LBB0_54:                               # %vector.body171
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	add.ul r[1:2], r[4:5], r[6:7]
	lui r25, 523264
	slli r2, r1, 2
	add.s r16, r28, r2
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	add.s r12, r17, r2
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	add.s r23, r21, r2
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	loads.w r1, 0(r16)
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	loads.w r8, 0(r12)
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	and r1, r1, r14
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	and r8, r8, r14
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	seteq r13, r1, r24
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	seteq r22, r1, zero
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	seteq r15, r8, zero
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	seteq r20, r8, r24
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	max.u r1, r1, r8
	setlt.u r1, r24, r1
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	and r8, r13, r15
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	and r13, r22, r20
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	or r8, r8, r13
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	or r1, r1, r8
	lui r8, 523264
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r1, zero, .LBB0_56
# %bb.55:                               # %vector.body171
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r23)
.LBB0_56:                               # %vector.body171
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r1, 4(r16)
	loads.w r13, 4(r12)
	and r1, r1, r14
	and r13, r13, r14
	seteq r15, r1, r24
	seteq r9, r1, zero
	seteq r22, r13, r24
	seteq r20, r13, zero
	max.u r1, r1, r13
	setlt.u r1, r24, r1
	and r13, r15, r20
	and r9, r9, r22
	or r9, r13, r9
	or r9, r1, r9
	lui r1, 523264
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r9, zero, .LBB0_58
# %bb.57:                               # %vector.body171
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r23)
.LBB0_58:                               # %vector.body171
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r9, 8(r16)
	loads.w r13, 8(r12)
	and r9, r9, r14
	and r13, r13, r14
	seteq r15, r9, r24
	seteq r20, r13, zero
	seteq r10, r9, zero
	seteq r22, r13, r24
	max.u r9, r9, r13
	setlt.u r9, r24, r9
	and r11, r15, r20
	and r10, r10, r22
	lui r20, 523264
	or r10, r11, r10
	or r9, r9, r10
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r9, zero, .LBB0_60
# %bb.59:                               # %vector.body171
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 8(r23)
.LBB0_60:                               # %vector.body171
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r9, 12(r16)
	loads.w r10, 12(r12)
	and r9, r9, r14
	and r10, r10, r14
	seteq r11, r9, r24
	seteq r15, r9, zero
	seteq r12, r10, zero
	seteq r13, r10, r24
	max.u r9, r9, r10
	setlt.u r9, r24, r9
	and r10, r11, r12
	and r11, r15, r13
	or r10, r10, r11
	or r9, r9, r10
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r9, zero, .LBB0_53
# %bb.61:                               # %vector.body171
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 12(r23)
	j .LBB0_53
.LBB0_62:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	.loc	1 186 7                         # parallel-rne.mlir:186:7
	mfence { sm }
	.loc	1 222 7                         # parallel-rne.mlir:222:7
	loadli.w r1,  -64(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_150
.LBB0_63:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 258 7                         # parallel-rne.mlir:258:7
	addli r1, zero, 3
	bneq r10, r1, .LBB0_178
.LBB0_64:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 258 7                         # parallel-rne.mlir:258:7
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	addli r1, zero, 12
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_66
.LBB0_65:                               # %middle.block147
                                        #   in Loop: Header=BB0_66 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[4:5], -8(r30)                  # 8-byte Folded Reload
	addli r8, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 266 9 is_stmt 1               # parallel-rne.mlir:266:9
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_91
.LBB0_66:                               # %.preheader28
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_69 Depth 3
	.loc	1 267 11                        # parallel-rne.mlir:267:11
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	sll.d r[6:7], r[4:5], r8
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	beq r1, zero, .LBB0_81
# %bb.67:                               # %scalar.ph139.preheader
                                        #   in Loop: Header=BB0_66 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_69
.LBB0_68:                               # %scalar.ph139
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 267 11                        # parallel-rne.mlir:267:11
	setlt.ul r8, r[1:2], r[18:19]
	.loc	1 289 13 is_stmt 1              # parallel-rne.mlir:289:13
	add.s r4, r3, r4
	.loc	1 267 11                        # parallel-rne.mlir:267:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 289 13                        # parallel-rne.mlir:289:13
	stores.w r5, 0(r4)
	.loc	1 267 11                        # parallel-rne.mlir:267:11
	beq r8, zero, .LBB0_65
.LBB0_69:                               # %scalar.ph139
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	add.ul r[4:5], r[1:2], r[6:7]
	lui r15, 523264
	slli r4, r4, 2
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	add.s r5, r17, r4
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	add.s r8, r21, r4
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	loads.w r5, 0(r5)
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	loads.w r16, 0(r8)
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	and r8, r5, r14
	lui r5, 523264
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	beq r8, r24, .LBB0_71
# %bb.70:                               # %scalar.ph139
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
.LBB0_71:                               # %scalar.ph139
                                        #   in Loop: Header=BB0_69 Depth=3
	add.s r9, r28, r4
	loads.w r9, 0(r9)
	and r12, r9, r14
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	beq r12, zero, .LBB0_79
# %bb.72:                               # %scalar.ph139
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r16, 0
	lui r16, 523264
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r8, zero, .LBB0_80
.LBB0_73:                               # %scalar.ph139
                                        #   in Loop: Header=BB0_69 Depth=3
	beq r12, r24, .LBB0_75
.LBB0_74:                               # %scalar.ph139
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
.LBB0_75:                               # %scalar.ph139
                                        #   in Loop: Header=BB0_69 Depth=3
	setlt.u r9, r24, r8
	lui r8, 523264
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r9, zero, .LBB0_77
# %bb.76:                               # %scalar.ph139
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
.LBB0_77:                               # %scalar.ph139
                                        #   in Loop: Header=BB0_69 Depth=3
	setlt.u r9, r24, r12
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r9, zero, .LBB0_68
# %bb.78:                               # %scalar.ph139
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r8, 0
	j .LBB0_68
.LBB0_79:                               # %scalar.ph139
                                        #   in Loop: Header=BB0_69 Depth=3
	lui r16, 523264
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	beq r8, zero, .LBB0_73
.LBB0_80:                               # %scalar.ph139
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r12, r24, .LBB0_74
	j .LBB0_75
.LBB0_81:                               # %vector.body141.preheader
                                        #   in Loop: Header=BB0_66 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[4:5], zero
	j .LBB0_83
.LBB0_82:                               # %vector.body141
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 267 11 is_stmt 1              # parallel-rne.mlir:267:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 289 13                        # parallel-rne.mlir:289:13
	add.s r2, r3, r2
	.loc	1 267 11                        # parallel-rne.mlir:267:11
	seteq.d r9, r[4:5], r[26:27]
	.loc	1 289 13                        # parallel-rne.mlir:289:13
	stores.w r25, 12(r2)
	stores.w r20, 8(r2)
	stores.w r1, 4(r2)
	stores.w r8, 0(r2)
	.loc	1 267 11                        # parallel-rne.mlir:267:11
	bneq r9, zero, .LBB0_65
.LBB0_83:                               # %vector.body141
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	add.ul r[1:2], r[4:5], r[6:7]
	lui r25, 523264
	slli r2, r1, 2
	add.s r16, r28, r2
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	add.s r12, r17, r2
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	add.s r23, r21, r2
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	loads.w r1, 0(r16)
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	loads.w r8, 0(r12)
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	and r1, r1, r14
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	and r8, r8, r14
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	seteq r13, r1, r24
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	seteq r22, r1, zero
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	seteq r15, r8, zero
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	seteq r20, r8, r24
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	max.u r1, r1, r8
	setlt.u r1, r24, r1
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	and r8, r13, r15
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	and r13, r22, r20
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	or r8, r8, r13
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	or r1, r1, r8
	lui r8, 523264
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r1, zero, .LBB0_85
# %bb.84:                               # %vector.body141
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r23)
.LBB0_85:                               # %vector.body141
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r1, 4(r16)
	loads.w r13, 4(r12)
	and r1, r1, r14
	and r13, r13, r14
	seteq r15, r1, r24
	seteq r9, r1, zero
	seteq r22, r13, r24
	seteq r20, r13, zero
	max.u r1, r1, r13
	setlt.u r1, r24, r1
	and r13, r15, r20
	and r9, r9, r22
	or r9, r13, r9
	or r9, r1, r9
	lui r1, 523264
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r9, zero, .LBB0_87
# %bb.86:                               # %vector.body141
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r23)
.LBB0_87:                               # %vector.body141
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r9, 8(r16)
	loads.w r13, 8(r12)
	and r9, r9, r14
	and r13, r13, r14
	seteq r15, r9, r24
	seteq r20, r13, zero
	seteq r10, r9, zero
	seteq r22, r13, r24
	max.u r9, r9, r13
	setlt.u r9, r24, r9
	and r11, r15, r20
	and r10, r10, r22
	lui r20, 523264
	or r10, r11, r10
	or r9, r9, r10
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r9, zero, .LBB0_89
# %bb.88:                               # %vector.body141
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 8(r23)
.LBB0_89:                               # %vector.body141
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r9, 12(r16)
	loads.w r10, 12(r12)
	and r9, r9, r14
	and r10, r10, r14
	seteq r11, r9, r24
	seteq r15, r9, zero
	seteq r12, r10, zero
	seteq r13, r10, r24
	max.u r9, r9, r10
	setlt.u r9, r24, r9
	and r10, r11, r12
	and r11, r15, r13
	or r10, r10, r11
	or r9, r9, r10
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r9, zero, .LBB0_82
# %bb.90:                               # %vector.body141
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 12(r23)
	j .LBB0_82
.LBB0_91:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	.loc	1 258 7                         # parallel-rne.mlir:258:7
	mfence { sm }
	.loc	1 294 7                         # parallel-rne.mlir:294:7
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_179
.LBB0_92:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 330 7                         # parallel-rne.mlir:330:7
	addli r1, zero, 5
	bneq r10, r1, .LBB0_207
.LBB0_93:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 330 7                         # parallel-rne.mlir:330:7
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	addli r1, zero, 20
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_95
.LBB0_94:                               # %middle.block117
                                        #   in Loop: Header=BB0_95 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[4:5], -8(r30)                  # 8-byte Folded Reload
	addli r8, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 338 9 is_stmt 1               # parallel-rne.mlir:338:9
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_120
.LBB0_95:                               # %.preheader26
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_112 Depth 3
                                        #       Child Loop BB0_98 Depth 3
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	sll.d r[6:7], r[4:5], r8
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	beq r1, zero, .LBB0_110
# %bb.96:                               # %scalar.ph109.preheader
                                        #   in Loop: Header=BB0_95 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_98
.LBB0_97:                               # %scalar.ph109
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	setlt.ul r8, r[1:2], r[18:19]
	.loc	1 361 13 is_stmt 1              # parallel-rne.mlir:361:13
	add.s r4, r3, r4
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 361 13                        # parallel-rne.mlir:361:13
	stores.w r5, 0(r4)
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	beq r8, zero, .LBB0_94
.LBB0_98:                               # %scalar.ph109
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	add.ul r[4:5], r[1:2], r[6:7]
	lui r15, 523264
	slli r4, r4, 2
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	add.s r5, r17, r4
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	add.s r8, r21, r4
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	loads.w r5, 0(r5)
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	loads.w r16, 0(r8)
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	and r8, r5, r14
	lui r5, 523264
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	beq r8, r24, .LBB0_100
# %bb.99:                               # %scalar.ph109
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
.LBB0_100:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_98 Depth=3
	add.s r9, r28, r4
	loads.w r9, 0(r9)
	and r12, r9, r14
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	beq r12, zero, .LBB0_108
# %bb.101:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r16, 0
	lui r16, 523264
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	bneq r8, zero, .LBB0_109
.LBB0_102:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_98 Depth=3
	beq r12, r24, .LBB0_104
.LBB0_103:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
.LBB0_104:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_98 Depth=3
	setlt.u r9, r24, r8
	lui r8, 523264
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	bneq r9, zero, .LBB0_106
# %bb.105:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
.LBB0_106:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_98 Depth=3
	setlt.u r9, r24, r12
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	bneq r9, zero, .LBB0_97
# %bb.107:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r8, 0
	j .LBB0_97
.LBB0_108:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_98 Depth=3
	lui r16, 523264
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	beq r8, zero, .LBB0_102
.LBB0_109:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	bneq r12, r24, .LBB0_103
	j .LBB0_104
.LBB0_110:                              # %vector.body111.preheader
                                        #   in Loop: Header=BB0_95 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[4:5], zero
	j .LBB0_112
.LBB0_111:                              # %vector.body111
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 339 11 is_stmt 1              # parallel-rne.mlir:339:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 361 13                        # parallel-rne.mlir:361:13
	add.s r2, r3, r2
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	seteq.d r9, r[4:5], r[26:27]
	.loc	1 361 13                        # parallel-rne.mlir:361:13
	stores.w r25, 12(r2)
	stores.w r20, 8(r2)
	stores.w r1, 4(r2)
	stores.w r8, 0(r2)
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	bneq r9, zero, .LBB0_94
.LBB0_112:                              # %vector.body111
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	add.ul r[1:2], r[4:5], r[6:7]
	lui r25, 523264
	slli r2, r1, 2
	add.s r16, r28, r2
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	add.s r12, r17, r2
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	add.s r23, r21, r2
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	loads.w r1, 0(r16)
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	loads.w r8, 0(r12)
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	and r1, r1, r14
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	and r8, r8, r14
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	seteq r13, r1, r24
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	seteq r22, r1, zero
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	seteq r15, r8, zero
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	seteq r20, r8, r24
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	max.u r1, r1, r8
	setlt.u r1, r24, r1
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r8, r13, r15
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	and r13, r22, r20
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	or r8, r8, r13
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	or r1, r1, r8
	lui r8, 523264
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	bneq r1, zero, .LBB0_114
# %bb.113:                              # %vector.body111
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r23)
.LBB0_114:                              # %vector.body111
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r1, 4(r16)
	loads.w r13, 4(r12)
	and r1, r1, r14
	and r13, r13, r14
	seteq r15, r1, r24
	seteq r9, r1, zero
	seteq r22, r13, r24
	seteq r20, r13, zero
	max.u r1, r1, r13
	setlt.u r1, r24, r1
	and r13, r15, r20
	and r9, r9, r22
	or r9, r13, r9
	or r9, r1, r9
	lui r1, 523264
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	bneq r9, zero, .LBB0_116
# %bb.115:                              # %vector.body111
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r23)
.LBB0_116:                              # %vector.body111
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r9, 8(r16)
	loads.w r13, 8(r12)
	and r9, r9, r14
	and r13, r13, r14
	seteq r15, r9, r24
	seteq r20, r13, zero
	seteq r10, r9, zero
	seteq r22, r13, r24
	max.u r9, r9, r13
	setlt.u r9, r24, r9
	and r11, r15, r20
	and r10, r10, r22
	lui r20, 523264
	or r10, r11, r10
	or r9, r9, r10
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	bneq r9, zero, .LBB0_118
# %bb.117:                              # %vector.body111
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 8(r23)
.LBB0_118:                              # %vector.body111
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r9, 12(r16)
	loads.w r10, 12(r12)
	and r9, r9, r14
	and r10, r10, r14
	seteq r11, r9, r24
	seteq r15, r9, zero
	seteq r12, r10, zero
	seteq r13, r10, r24
	max.u r9, r9, r10
	setlt.u r9, r24, r9
	and r10, r11, r12
	and r11, r15, r13
	or r10, r10, r11
	or r9, r9, r10
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	bneq r9, zero, .LBB0_111
# %bb.119:                              # %vector.body111
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 12(r23)
	j .LBB0_111
.LBB0_120:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	.loc	1 330 7                         # parallel-rne.mlir:330:7
	mfence { sm }
	.loc	1 366 7                         # parallel-rne.mlir:366:7
	addli r1, zero, 6
	bneq r10, r1, .LBB0_236
	j .LBB0_208
.LBB0_121:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	zext_int2long r[4:5], zero
	min.u r1, r1, r2
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 150 7 is_stmt 1               # parallel-rne.mlir:150:7
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_123
.LBB0_122:                              # %middle.block192
                                        #   in Loop: Header=BB0_123 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 3
	load.d r[4:5], -8(r30)                  # 8-byte Folded Reload
	addli r8, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 158 9 is_stmt 1               # parallel-rne.mlir:158:9
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_148
.LBB0_123:                              # %.preheader31
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_140 Depth 3
                                        #       Child Loop BB0_126 Depth 3
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	sll.d r[6:7], r[4:5], r8
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	beq r1, zero, .LBB0_138
# %bb.124:                              # %scalar.ph184.preheader
                                        #   in Loop: Header=BB0_123 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_126
.LBB0_125:                              # %scalar.ph184
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	setlt.ul r8, r[1:2], r[18:19]
	.loc	1 181 13 is_stmt 1              # parallel-rne.mlir:181:13
	add.s r4, r3, r4
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 181 13                        # parallel-rne.mlir:181:13
	stores.w r5, 0(r4)
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	beq r8, zero, .LBB0_122
.LBB0_126:                              # %scalar.ph184
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_123 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	add.ul r[4:5], r[1:2], r[6:7]
	lui r15, 523264
	slli r4, r4, 2
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	add.s r5, r17, r4
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	add.s r8, r21, r4
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	loads.w r5, 0(r5)
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	loads.w r16, 0(r8)
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	and r8, r5, r14
	lui r5, 523264
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	beq r8, r24, .LBB0_128
# %bb.127:                              # %scalar.ph184
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
.LBB0_128:                              # %scalar.ph184
                                        #   in Loop: Header=BB0_126 Depth=3
	add.s r9, r28, r4
	loads.w r9, 0(r9)
	and r12, r9, r14
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	beq r12, zero, .LBB0_136
# %bb.129:                              # %scalar.ph184
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r16, 0
	lui r16, 523264
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r8, zero, .LBB0_137
.LBB0_130:                              # %scalar.ph184
                                        #   in Loop: Header=BB0_126 Depth=3
	beq r12, r24, .LBB0_132
.LBB0_131:                              # %scalar.ph184
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
.LBB0_132:                              # %scalar.ph184
                                        #   in Loop: Header=BB0_126 Depth=3
	setlt.u r9, r24, r8
	lui r8, 523264
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r9, zero, .LBB0_134
# %bb.133:                              # %scalar.ph184
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
.LBB0_134:                              # %scalar.ph184
                                        #   in Loop: Header=BB0_126 Depth=3
	setlt.u r9, r24, r12
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r9, zero, .LBB0_125
# %bb.135:                              # %scalar.ph184
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r8, 0
	j .LBB0_125
.LBB0_136:                              # %scalar.ph184
                                        #   in Loop: Header=BB0_126 Depth=3
	lui r16, 523264
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	beq r8, zero, .LBB0_130
.LBB0_137:                              # %scalar.ph184
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r12, r24, .LBB0_131
	j .LBB0_132
.LBB0_138:                              # %vector.body186.preheader
                                        #   in Loop: Header=BB0_123 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[4:5], zero
	j .LBB0_140
.LBB0_139:                              # %vector.body186
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 159 11 is_stmt 1              # parallel-rne.mlir:159:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 181 13                        # parallel-rne.mlir:181:13
	add.s r2, r3, r2
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	seteq.d r9, r[4:5], r[26:27]
	.loc	1 181 13                        # parallel-rne.mlir:181:13
	stores.w r25, 12(r2)
	stores.w r20, 8(r2)
	stores.w r1, 4(r2)
	stores.w r8, 0(r2)
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	bneq r9, zero, .LBB0_122
.LBB0_140:                              # %vector.body186
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_123 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	add.ul r[1:2], r[4:5], r[6:7]
	lui r25, 523264
	slli r2, r1, 2
	add.s r16, r28, r2
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	add.s r23, r17, r2
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	loads.w r1, 0(r16)
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	loads.w r8, 0(r23)
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	and r1, r1, r14
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	and r8, r8, r14
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	seteq r12, r1, r24
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	seteq r22, r1, zero
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	seteq r15, r8, zero
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	seteq r20, r8, r24
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	max.u r1, r1, r8
	setlt.u r1, r24, r1
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	and r8, r12, r15
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	and r12, r22, r20
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	or r8, r8, r12
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	add.s r12, r21, r2
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	or r1, r1, r8
	lui r8, 523264
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r1, zero, .LBB0_142
# %bb.141:                              # %vector.body186
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r12)
.LBB0_142:                              # %vector.body186
                                        #   in Loop: Header=BB0_140 Depth=3
	loads.w r1, 4(r16)
	loads.w r15, 4(r23)
	and r1, r1, r14
	and r15, r15, r14
	seteq r20, r1, r24
	seteq r9, r1, zero
	seteq r13, r15, r24
	seteq r22, r15, zero
	max.u r1, r1, r15
	setlt.u r1, r24, r1
	and r15, r20, r22
	and r9, r9, r13
	or r9, r15, r9
	or r9, r1, r9
	lui r1, 523264
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r9, zero, .LBB0_144
# %bb.143:                              # %vector.body186
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r12)
.LBB0_144:                              # %vector.body186
                                        #   in Loop: Header=BB0_140 Depth=3
	loads.w r9, 8(r16)
	loads.w r13, 8(r23)
	and r9, r9, r14
	and r13, r13, r14
	seteq r15, r9, r24
	seteq r20, r13, zero
	seteq r10, r9, zero
	seteq r22, r13, r24
	max.u r9, r9, r13
	setlt.u r9, r24, r9
	and r11, r15, r20
	and r10, r10, r22
	lui r20, 523264
	or r10, r11, r10
	or r9, r9, r10
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r9, zero, .LBB0_146
# %bb.145:                              # %vector.body186
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 8(r12)
.LBB0_146:                              # %vector.body186
                                        #   in Loop: Header=BB0_140 Depth=3
	loads.w r9, 12(r16)
	loads.w r10, 12(r23)
	and r9, r9, r14
	and r10, r10, r14
	seteq r11, r9, r24
	seteq r16, r9, zero
	seteq r13, r10, zero
	seteq r15, r10, r24
	max.u r9, r9, r10
	setlt.u r9, r24, r9
	and r10, r11, r13
	and r11, r16, r15
	or r10, r10, r11
	or r9, r9, r10
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r9, zero, .LBB0_139
# %bb.147:                              # %vector.body186
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 12(r12)
	j .LBB0_139
.LBB0_148:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	mfence { sm }
	.loc	1 186 7                         # parallel-rne.mlir:186:7
	addli r1, zero, 1
	beq r10, r1, .LBB0_35
.LBB0_149:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 222 7                         # parallel-rne.mlir:222:7
	loadli.w r1,  -64(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_63
.LBB0_150:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 222 7                         # parallel-rne.mlir:222:7
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	addli r1, zero, 8
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_152
.LBB0_151:                              # %middle.block162
                                        #   in Loop: Header=BB0_152 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 11
	load.d r[4:5], -8(r30)                  # 8-byte Folded Reload
	addli r8, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 230 9 is_stmt 1               # parallel-rne.mlir:230:9
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_177
.LBB0_152:                              # %.preheader29
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_169 Depth 3
                                        #       Child Loop BB0_155 Depth 3
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	sll.d r[6:7], r[4:5], r8
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	beq r1, zero, .LBB0_167
# %bb.153:                              # %scalar.ph154.preheader
                                        #   in Loop: Header=BB0_152 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_155
.LBB0_154:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	setlt.ul r8, r[1:2], r[18:19]
	.loc	1 253 13 is_stmt 1              # parallel-rne.mlir:253:13
	add.s r4, r3, r4
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 253 13                        # parallel-rne.mlir:253:13
	stores.w r5, 0(r4)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	beq r8, zero, .LBB0_151
.LBB0_155:                              # %scalar.ph154
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_152 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[4:5], r[1:2], r[6:7]
	lui r15, 523264
	slli r4, r4, 2
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	add.s r5, r17, r4
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	add.s r8, r21, r4
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	loads.w r5, 0(r5)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	loads.w r16, 0(r8)
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	and r8, r5, r14
	lui r5, 523264
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	beq r8, r24, .LBB0_157
# %bb.156:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
.LBB0_157:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_155 Depth=3
	add.s r9, r28, r4
	loads.w r9, 0(r9)
	and r12, r9, r14
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	beq r12, zero, .LBB0_165
# %bb.158:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r16, 0
	lui r16, 523264
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r8, zero, .LBB0_166
.LBB0_159:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_155 Depth=3
	beq r12, r24, .LBB0_161
.LBB0_160:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
.LBB0_161:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_155 Depth=3
	setlt.u r9, r24, r8
	lui r8, 523264
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r9, zero, .LBB0_163
# %bb.162:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
.LBB0_163:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_155 Depth=3
	setlt.u r9, r24, r12
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r9, zero, .LBB0_154
# %bb.164:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r8, 0
	j .LBB0_154
.LBB0_165:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_155 Depth=3
	lui r16, 523264
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	beq r8, zero, .LBB0_159
.LBB0_166:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r12, r24, .LBB0_160
	j .LBB0_161
.LBB0_167:                              # %vector.body156.preheader
                                        #   in Loop: Header=BB0_152 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[4:5], zero
	j .LBB0_169
.LBB0_168:                              # %vector.body156
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 231 11 is_stmt 1              # parallel-rne.mlir:231:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 253 13                        # parallel-rne.mlir:253:13
	add.s r2, r3, r2
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	seteq.d r9, r[4:5], r[26:27]
	.loc	1 253 13                        # parallel-rne.mlir:253:13
	stores.w r25, 12(r2)
	stores.w r20, 8(r2)
	stores.w r1, 4(r2)
	stores.w r8, 0(r2)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	bneq r9, zero, .LBB0_151
.LBB0_169:                              # %vector.body156
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_152 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[1:2], r[4:5], r[6:7]
	lui r25, 523264
	slli r2, r1, 2
	add.s r16, r28, r2
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	add.s r12, r17, r2
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	add.s r23, r21, r2
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	loads.w r1, 0(r16)
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	loads.w r8, 0(r12)
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	and r1, r1, r14
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	and r8, r8, r14
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	seteq r13, r1, r24
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	seteq r22, r1, zero
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	seteq r15, r8, zero
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	seteq r20, r8, r24
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	max.u r1, r1, r8
	setlt.u r1, r24, r1
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	and r8, r13, r15
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	and r13, r22, r20
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	or r8, r8, r13
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	or r1, r1, r8
	lui r8, 523264
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r1, zero, .LBB0_171
# %bb.170:                              # %vector.body156
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r23)
.LBB0_171:                              # %vector.body156
                                        #   in Loop: Header=BB0_169 Depth=3
	loads.w r1, 4(r16)
	loads.w r13, 4(r12)
	and r1, r1, r14
	and r13, r13, r14
	seteq r15, r1, r24
	seteq r9, r1, zero
	seteq r22, r13, r24
	seteq r20, r13, zero
	max.u r1, r1, r13
	setlt.u r1, r24, r1
	and r13, r15, r20
	and r9, r9, r22
	or r9, r13, r9
	or r9, r1, r9
	lui r1, 523264
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r9, zero, .LBB0_173
# %bb.172:                              # %vector.body156
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r23)
.LBB0_173:                              # %vector.body156
                                        #   in Loop: Header=BB0_169 Depth=3
	loads.w r9, 8(r16)
	loads.w r13, 8(r12)
	and r9, r9, r14
	and r13, r13, r14
	seteq r15, r9, r24
	seteq r20, r13, zero
	seteq r10, r9, zero
	seteq r22, r13, r24
	max.u r9, r9, r13
	setlt.u r9, r24, r9
	and r11, r15, r20
	and r10, r10, r22
	lui r20, 523264
	or r10, r11, r10
	or r9, r9, r10
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r9, zero, .LBB0_175
# %bb.174:                              # %vector.body156
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 8(r23)
.LBB0_175:                              # %vector.body156
                                        #   in Loop: Header=BB0_169 Depth=3
	loads.w r9, 12(r16)
	loads.w r10, 12(r12)
	and r9, r9, r14
	and r10, r10, r14
	seteq r11, r9, r24
	seteq r15, r9, zero
	seteq r12, r10, zero
	seteq r13, r10, r24
	max.u r9, r9, r10
	setlt.u r9, r24, r9
	and r10, r11, r12
	and r11, r15, r13
	or r10, r10, r11
	or r9, r9, r10
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r9, zero, .LBB0_168
# %bb.176:                              # %vector.body156
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 12(r23)
	j .LBB0_168
.LBB0_177:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	.loc	1 222 7                         # parallel-rne.mlir:222:7
	mfence { sm }
	.loc	1 258 7                         # parallel-rne.mlir:258:7
	addli r1, zero, 3
	beq r10, r1, .LBB0_64
.LBB0_178:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 294 7                         # parallel-rne.mlir:294:7
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_92
.LBB0_179:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	zext_int2long r[4:5], r2
	.loc	1 294 7                         # parallel-rne.mlir:294:7
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_181
.LBB0_180:                              # %middle.block132
                                        #   in Loop: Header=BB0_181 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 19
	load.d r[4:5], -8(r30)                  # 8-byte Folded Reload
	addli r8, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 302 9 is_stmt 1               # parallel-rne.mlir:302:9
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_206
.LBB0_181:                              # %.preheader27
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_198 Depth 3
                                        #       Child Loop BB0_184 Depth 3
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	sll.d r[6:7], r[4:5], r8
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	beq r1, zero, .LBB0_196
# %bb.182:                              # %scalar.ph124.preheader
                                        #   in Loop: Header=BB0_181 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_184
.LBB0_183:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	setlt.ul r8, r[1:2], r[18:19]
	.loc	1 325 13 is_stmt 1              # parallel-rne.mlir:325:13
	add.s r4, r3, r4
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 325 13                        # parallel-rne.mlir:325:13
	stores.w r5, 0(r4)
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	beq r8, zero, .LBB0_180
.LBB0_184:                              # %scalar.ph124
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_181 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	add.ul r[4:5], r[1:2], r[6:7]
	lui r15, 523264
	slli r4, r4, 2
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	add.s r5, r17, r4
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	add.s r8, r21, r4
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	loads.w r5, 0(r5)
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	loads.w r16, 0(r8)
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	and r8, r5, r14
	lui r5, 523264
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	beq r8, r24, .LBB0_186
# %bb.185:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
.LBB0_186:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_184 Depth=3
	add.s r9, r28, r4
	loads.w r9, 0(r9)
	and r12, r9, r14
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	beq r12, zero, .LBB0_194
# %bb.187:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r16, 0
	lui r16, 523264
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r8, zero, .LBB0_195
.LBB0_188:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_184 Depth=3
	beq r12, r24, .LBB0_190
.LBB0_189:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
.LBB0_190:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_184 Depth=3
	setlt.u r9, r24, r8
	lui r8, 523264
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r9, zero, .LBB0_192
# %bb.191:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
.LBB0_192:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_184 Depth=3
	setlt.u r9, r24, r12
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r9, zero, .LBB0_183
# %bb.193:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r8, 0
	j .LBB0_183
.LBB0_194:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_184 Depth=3
	lui r16, 523264
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	beq r8, zero, .LBB0_188
.LBB0_195:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r12, r24, .LBB0_189
	j .LBB0_190
.LBB0_196:                              # %vector.body126.preheader
                                        #   in Loop: Header=BB0_181 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[4:5], zero
	j .LBB0_198
.LBB0_197:                              # %vector.body126
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 303 11 is_stmt 1              # parallel-rne.mlir:303:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 325 13                        # parallel-rne.mlir:325:13
	add.s r2, r3, r2
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	seteq.d r9, r[4:5], r[26:27]
	.loc	1 325 13                        # parallel-rne.mlir:325:13
	stores.w r25, 12(r2)
	stores.w r20, 8(r2)
	stores.w r1, 4(r2)
	stores.w r8, 0(r2)
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	bneq r9, zero, .LBB0_180
.LBB0_198:                              # %vector.body126
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_181 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	add.ul r[1:2], r[4:5], r[6:7]
	lui r25, 523264
	slli r2, r1, 2
	add.s r16, r28, r2
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	add.s r12, r17, r2
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	add.s r23, r21, r2
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	loads.w r1, 0(r16)
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	loads.w r8, 0(r12)
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	and r1, r1, r14
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	and r8, r8, r14
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	seteq r13, r1, r24
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	seteq r22, r1, zero
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	seteq r15, r8, zero
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	seteq r20, r8, r24
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	max.u r1, r1, r8
	setlt.u r1, r24, r1
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	and r8, r13, r15
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	and r13, r22, r20
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	or r8, r8, r13
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	or r1, r1, r8
	lui r8, 523264
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r1, zero, .LBB0_200
# %bb.199:                              # %vector.body126
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r23)
.LBB0_200:                              # %vector.body126
                                        #   in Loop: Header=BB0_198 Depth=3
	loads.w r1, 4(r16)
	loads.w r13, 4(r12)
	and r1, r1, r14
	and r13, r13, r14
	seteq r15, r1, r24
	seteq r9, r1, zero
	seteq r22, r13, r24
	seteq r20, r13, zero
	max.u r1, r1, r13
	setlt.u r1, r24, r1
	and r13, r15, r20
	and r9, r9, r22
	or r9, r13, r9
	or r9, r1, r9
	lui r1, 523264
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r9, zero, .LBB0_202
# %bb.201:                              # %vector.body126
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r23)
.LBB0_202:                              # %vector.body126
                                        #   in Loop: Header=BB0_198 Depth=3
	loads.w r9, 8(r16)
	loads.w r13, 8(r12)
	and r9, r9, r14
	and r13, r13, r14
	seteq r15, r9, r24
	seteq r20, r13, zero
	seteq r10, r9, zero
	seteq r22, r13, r24
	max.u r9, r9, r13
	setlt.u r9, r24, r9
	and r11, r15, r20
	and r10, r10, r22
	lui r20, 523264
	or r10, r11, r10
	or r9, r9, r10
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r9, zero, .LBB0_204
# %bb.203:                              # %vector.body126
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 8(r23)
.LBB0_204:                              # %vector.body126
                                        #   in Loop: Header=BB0_198 Depth=3
	loads.w r9, 12(r16)
	loads.w r10, 12(r12)
	and r9, r9, r14
	and r10, r10, r14
	seteq r11, r9, r24
	seteq r15, r9, zero
	seteq r12, r10, zero
	seteq r13, r10, r24
	max.u r9, r9, r10
	setlt.u r9, r24, r9
	and r10, r11, r12
	and r11, r15, r13
	or r10, r10, r11
	or r9, r9, r10
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r9, zero, .LBB0_197
# %bb.205:                              # %vector.body126
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 12(r23)
	j .LBB0_197
.LBB0_206:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	.loc	1 294 7                         # parallel-rne.mlir:294:7
	mfence { sm }
	.loc	1 330 7                         # parallel-rne.mlir:330:7
	addli r1, zero, 5
	beq r10, r1, .LBB0_93
.LBB0_207:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 366 7                         # parallel-rne.mlir:366:7
	addli r1, zero, 6
	bneq r10, r1, .LBB0_236
.LBB0_208:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 366 7                         # parallel-rne.mlir:366:7
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	addli r1, zero, 24
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_210
.LBB0_209:                              # %middle.block102
                                        #   in Loop: Header=BB0_210 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 27
	load.d r[4:5], -8(r30)                  # 8-byte Folded Reload
	addli r8, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 374 9 is_stmt 1               # parallel-rne.mlir:374:9
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_235
.LBB0_210:                              # %.preheader25
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_227 Depth 3
                                        #       Child Loop BB0_213 Depth 3
	.loc	1 375 11                        # parallel-rne.mlir:375:11
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	sll.d r[6:7], r[4:5], r8
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	beq r1, zero, .LBB0_225
# %bb.211:                              # %scalar.ph94.preheader
                                        #   in Loop: Header=BB0_210 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_213
.LBB0_212:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 375 11                        # parallel-rne.mlir:375:11
	setlt.ul r8, r[1:2], r[18:19]
	.loc	1 397 13 is_stmt 1              # parallel-rne.mlir:397:13
	add.s r4, r3, r4
	.loc	1 375 11                        # parallel-rne.mlir:375:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 397 13                        # parallel-rne.mlir:397:13
	stores.w r5, 0(r4)
	.loc	1 375 11                        # parallel-rne.mlir:375:11
	beq r8, zero, .LBB0_209
.LBB0_213:                              # %scalar.ph94
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_210 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	add.ul r[4:5], r[1:2], r[6:7]
	lui r15, 523264
	slli r4, r4, 2
	.loc	1 377 19                        # parallel-rne.mlir:377:19
	add.s r5, r17, r4
	.loc	1 378 19                        # parallel-rne.mlir:378:19
	add.s r8, r21, r4
	.loc	1 377 19                        # parallel-rne.mlir:377:19
	loads.w r5, 0(r5)
	.loc	1 378 19                        # parallel-rne.mlir:378:19
	loads.w r16, 0(r8)
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	and r8, r5, r14
	lui r5, 523264
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	beq r8, r24, .LBB0_215
# %bb.214:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
.LBB0_215:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	add.s r9, r28, r4
	loads.w r9, 0(r9)
	and r12, r9, r14
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	beq r12, zero, .LBB0_223
# %bb.216:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r16, 0
	lui r16, 523264
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r8, zero, .LBB0_224
.LBB0_217:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	beq r12, r24, .LBB0_219
.LBB0_218:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
.LBB0_219:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	setlt.u r9, r24, r8
	lui r8, 523264
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r9, zero, .LBB0_221
# %bb.220:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
.LBB0_221:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	setlt.u r9, r24, r12
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r9, zero, .LBB0_212
# %bb.222:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r8, 0
	j .LBB0_212
.LBB0_223:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	lui r16, 523264
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	beq r8, zero, .LBB0_217
.LBB0_224:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r12, r24, .LBB0_218
	j .LBB0_219
.LBB0_225:                              # %vector.body96.preheader
                                        #   in Loop: Header=BB0_210 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[4:5], zero
	j .LBB0_227
.LBB0_226:                              # %vector.body96
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 375 11 is_stmt 1              # parallel-rne.mlir:375:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 397 13                        # parallel-rne.mlir:397:13
	add.s r2, r3, r2
	.loc	1 375 11                        # parallel-rne.mlir:375:11
	seteq.d r9, r[4:5], r[26:27]
	.loc	1 397 13                        # parallel-rne.mlir:397:13
	stores.w r25, 12(r2)
	stores.w r20, 8(r2)
	stores.w r1, 4(r2)
	stores.w r8, 0(r2)
	.loc	1 375 11                        # parallel-rne.mlir:375:11
	bneq r9, zero, .LBB0_209
.LBB0_227:                              # %vector.body96
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_210 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	add.ul r[1:2], r[4:5], r[6:7]
	lui r25, 523264
	slli r2, r1, 2
	add.s r16, r28, r2
	.loc	1 377 19                        # parallel-rne.mlir:377:19
	add.s r12, r17, r2
	.loc	1 378 19                        # parallel-rne.mlir:378:19
	add.s r23, r21, r2
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	loads.w r1, 0(r16)
	.loc	1 377 19                        # parallel-rne.mlir:377:19
	loads.w r8, 0(r12)
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	and r1, r1, r14
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	and r8, r8, r14
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	seteq r13, r1, r24
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	seteq r22, r1, zero
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	seteq r15, r8, zero
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	seteq r20, r8, r24
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	max.u r1, r1, r8
	setlt.u r1, r24, r1
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	and r8, r13, r15
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	and r13, r22, r20
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	or r8, r8, r13
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	or r1, r1, r8
	lui r8, 523264
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r1, zero, .LBB0_229
# %bb.228:                              # %vector.body96
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r23)
.LBB0_229:                              # %vector.body96
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r1, 4(r16)
	loads.w r13, 4(r12)
	and r1, r1, r14
	and r13, r13, r14
	seteq r15, r1, r24
	seteq r9, r1, zero
	seteq r22, r13, r24
	seteq r20, r13, zero
	max.u r1, r1, r13
	setlt.u r1, r24, r1
	and r13, r15, r20
	and r9, r9, r22
	or r9, r13, r9
	or r9, r1, r9
	lui r1, 523264
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r9, zero, .LBB0_231
# %bb.230:                              # %vector.body96
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r23)
.LBB0_231:                              # %vector.body96
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r9, 8(r16)
	loads.w r13, 8(r12)
	and r9, r9, r14
	and r13, r13, r14
	seteq r15, r9, r24
	seteq r20, r13, zero
	seteq r10, r9, zero
	seteq r22, r13, r24
	max.u r9, r9, r13
	setlt.u r9, r24, r9
	and r11, r15, r20
	and r10, r10, r22
	lui r20, 523264
	or r10, r11, r10
	or r9, r9, r10
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r9, zero, .LBB0_233
# %bb.232:                              # %vector.body96
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 8(r23)
.LBB0_233:                              # %vector.body96
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r9, 12(r16)
	loads.w r10, 12(r12)
	and r9, r9, r14
	and r10, r10, r14
	seteq r11, r9, r24
	seteq r15, r9, zero
	seteq r12, r10, zero
	seteq r13, r10, r24
	max.u r9, r9, r10
	setlt.u r9, r24, r9
	and r10, r11, r12
	and r11, r15, r13
	or r10, r10, r11
	or r9, r9, r10
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r9, zero, .LBB0_226
# %bb.234:                              # %vector.body96
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 12(r23)
	j .LBB0_226
.LBB0_235:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	.loc	1 366 7                         # parallel-rne.mlir:366:7
	mfence { sm }
.LBB0_236:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 402 7 is_stmt 1               # parallel-rne.mlir:402:7
	store.d r[1:2], -24(r30)                # 8-byte Folded Spill
	loadli.w r1,  -60(r30)                  # 4-byte Folded Reload
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
	.loc	1 402 7                         # parallel-rne.mlir:402:7
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	addli r1, zero, 28
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_239
.LBB0_238:                              # %middle.block
                                        #   in Loop: Header=BB0_239 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 31
	load.d r[4:5], -8(r30)                  # 8-byte Folded Reload
	addli r8, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 410 9 is_stmt 1               # parallel-rne.mlir:410:9
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_264
.LBB0_239:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_256 Depth 3
                                        #       Child Loop BB0_242 Depth 3
	.loc	1 411 11                        # parallel-rne.mlir:411:11
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	sll.d r[6:7], r[4:5], r8
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	beq r1, zero, .LBB0_254
# %bb.240:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_239 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_242
.LBB0_241:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 411 11                        # parallel-rne.mlir:411:11
	setlt.ul r2, r[4:5], r[18:19]
	.loc	1 433 13 is_stmt 1              # parallel-rne.mlir:433:13
	add.s r1, r3, r1
	.loc	1 411 11                        # parallel-rne.mlir:411:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 433 13                        # parallel-rne.mlir:433:13
	stores.w r8, 0(r1)
	.loc	1 411 11                        # parallel-rne.mlir:411:11
	beq r2, zero, .LBB0_238
.LBB0_242:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 412 19                        # parallel-rne.mlir:412:19
	add.ul r[1:2], r[4:5], r[6:7]
	lui r20, 523264
	slli r1, r1, 2
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	add.s r2, r17, r1
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	add.s r8, r21, r1
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	loads.w r2, 0(r2)
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	loads.w r22, 0(r8)
	lui r8, 523264
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	and r15, r2, r14
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	beq r15, r24, .LBB0_244
# %bb.243:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r22, 0
.LBB0_244:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	add.s r2, r28, r1
	loads.w r2, 0(r2)
	and r16, r2, r14
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	beq r16, zero, .LBB0_252
# %bb.245:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r22, 0
	lui r22, 523264
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r15, zero, .LBB0_253
.LBB0_246:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	beq r16, r24, .LBB0_248
.LBB0_247:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r20, 0
.LBB0_248:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r2, r24, r15
	lui r15, 523264
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r2, zero, .LBB0_250
# %bb.249:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r22, 0
.LBB0_250:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r2, r24, r16
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r2, zero, .LBB0_241
# %bb.251:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r15, 0
	j .LBB0_241
.LBB0_252:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	lui r22, 523264
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	beq r15, zero, .LBB0_246
.LBB0_253:                              # %scalar.ph
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r20, 0
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r16, r24, .LBB0_247
	j .LBB0_248
.LBB0_254:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_239 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	load.d r[4:5], -24(r30)                 # 8-byte Folded Reload
	j .LBB0_256
.LBB0_255:                              # %vector.body
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 411 11 is_stmt 1              # parallel-rne.mlir:411:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 433 13                        # parallel-rne.mlir:433:13
	add.s r2, r3, r8
	.loc	1 411 11                        # parallel-rne.mlir:411:11
	seteq.d r1, r[4:5], r[26:27]
	.loc	1 433 13                        # parallel-rne.mlir:433:13
	stores.w r16, 12(r2)
	stores.w r15, 8(r2)
	stores.w r20, 4(r2)
	stores.w r25, 0(r2)
	.loc	1 411 11                        # parallel-rne.mlir:411:11
	bneq r1, zero, .LBB0_238
.LBB0_256:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 412 19                        # parallel-rne.mlir:412:19
	add.ul r[15:16], r[4:5], r[6:7]
	slli r8, r15, 2
	add.s r23, r28, r8
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	add.s r1, r17, r8
	.loc	1 412 19                        # parallel-rne.mlir:412:19
	loads.w r13, 0(r23)
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	loads.w r15, 0(r1)
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	and r13, r13, r14
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	and r15, r15, r14
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	seteq r16, r13, r24
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	seteq r25, r13, zero
	.loc	1 421 19                        # parallel-rne.mlir:421:19
	seteq r20, r15, zero
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	seteq r22, r15, r24
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	max.u r13, r13, r15
	setlt.u r13, r24, r13
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	and r15, r16, r20
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	and r16, r25, r22
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	add.s r22, r21, r8
	lui r25, 523264
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	or r15, r15, r16
	lui r16, 523264
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	or r13, r13, r15
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r13, zero, .LBB0_258
# %bb.257:                              # %vector.body
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r25, 0(r22)
.LBB0_258:                              # %vector.body
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r13, 4(r23)
	loads.w r15, 4(r1)
	and r13, r13, r14
	and r15, r15, r14
	seteq r20, r13, r24
	seteq r9, r15, zero
	seteq r2, r13, zero
	seteq r10, r15, r24
	max.u r13, r13, r15
	setlt.u r13, r24, r13
	and r9, r20, r9
	and r2, r2, r10
	lui r20, 523264
	or r2, r9, r2
	or r2, r13, r2
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r2, zero, .LBB0_260
# %bb.259:                              # %vector.body
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r22)
.LBB0_260:                              # %vector.body
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r2, 8(r23)
	loads.w r9, 8(r1)
	and r2, r2, r14
	and r9, r9, r14
	seteq r10, r2, r24
	seteq r11, r2, zero
	seteq r13, r9, zero
	seteq r15, r9, r24
	max.u r2, r2, r9
	setlt.u r2, r24, r2
	and r9, r10, r13
	and r10, r11, r15
	lui r15, 523264
	or r9, r9, r10
	or r2, r2, r9
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r2, zero, .LBB0_262
# %bb.261:                              # %vector.body
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 8(r22)
.LBB0_262:                              # %vector.body
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r2, 12(r23)
	loads.w r1, 12(r1)
	and r2, r2, r14
	and r1, r1, r14
	seteq r9, r2, r24
	seteq r10, r1, zero
	seteq r11, r1, r24
	seteq r12, r2, zero
	max.u r1, r2, r1
	setlt.u r1, r24, r1
	and r2, r9, r10
	and r9, r12, r11
	or r2, r2, r9
	or r1, r1, r2
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r1, zero, .LBB0_255
# %bb.263:                              # %vector.body
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 12(r22)
	j .LBB0_255
.LBB0_264:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	.loc	1 402 7                         # parallel-rne.mlir:402:7
	mfence { sm }
.LBB0_265:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 438 7                         # parallel-rne.mlir:438:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 439 7                         # parallel-rne.mlir:439:7
	addli r1, zero, 3
	.loc	1 438 7                         # parallel-rne.mlir:438:7
	sync_core
	.loc	1 439 7                         # parallel-rne.mlir:439:7
	beq r10, r1, .LBB0_5
# %bb.266:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r11,  -44(r30)                 # 4-byte Folded Reload
	load.d r[12:13], -56(r30)               # 8-byte Folded Reload
	addli r15, zero, 4
	addli r16, zero, 1
	addli r17, zero, 32
	addli r18, zero, 2
	addli r19, zero, 6
	addli r20, zero, 64
	.loc	1 450 7 is_stmt 1               # parallel-rne.mlir:450:7
	bneq r10, zero, .LBB0_6
# %bb.267:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -76(r30)                  # 4-byte Folded Reload
	load.d r[4:5], -24(r30)                 # 8-byte Folded Reload
	.loc	1 450 7                         # parallel-rne.mlir:450:7
	load.d r[7:8], -72(r30)                 # 8-byte Folded Reload
	addli r6, zero, 14
	load.d r[21:22], 24(r30)
	slli r1, r1, 5
	sll.d r[6:7], r[7:8], r6
	load.d r[8:9], -88(r30)                 # 8-byte Folded Reload
	sext_int2long r[1:2], r1
	add.ul r[6:7], r[21:22], r[6:7]
	addli r21, zero, 22
	sll.d r[8:9], r[8:9], r16
	min.sl r[4:5], r[1:2], r[4:5]
	xwait r21, 0
	add.ul r[6:7], r[6:7], r[8:9]
	addli r8, zero, 7
	addli.d r[4:5], r[4:5], 32
	max.sl r[4:5], r[4:5], r[1:2]
	sub.sl r[1:2], r[4:5], r[1:2]
	zext_int2long r[4:5], r17
	.loc	1 446 13 is_stmt 1              # parallel-rne.mlir:446:13
	min.sl r[1:2], r[1:2], r[4:5]
	addli r5, zero, 5
	.loc	1 450 7                         # parallel-rne.mlir:450:7
	lock zero, r5
	dma_cfg r16, zero, zero, 0
	dma_cfg zero, r16, zero, 1
	load.d r[21:22], -96(r30)               # 8-byte Folded Reload
	dma_cfg r7, zero, zero, 2
	slli r4, r21, 2
	dma_cfg r6, r3, r4, 3
	addli r3, zero, 512
	dma_cfg r3, r3, r1, 4
	addli r1, zero, 23
	dma_run zero
	unlock r5
	xsignal r1, 0
	j .LBB0_6
.LBB0_268:                              # %._crit_edge
	.loc	1 452 5                         # parallel-rne.mlir:452:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_270
# %bb.269:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 452 5                         # parallel-rne.mlir:452:5
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
	.loc	1 453 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:453:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/division-m_8czbva" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
