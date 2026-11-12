	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-18660cx6" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -184
	addli r1, zero, 1
.Ltmp0:
	.loc	1 28 5 prologue_end             # parallel-rne.mlir:28:5
	core_id r12
	addli r30, sp, 120
	xsignal_mode_cfg r1
	beq r12, zero, .LBB0_2
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
	ble.s r2, r1, .LBB0_267
# %bb.4:                                # %.lr.ph
	.loc	1 39 11                         # parallel-rne.mlir:39:11
	sext_int2long r[15:16], r1
	lui r1, 7
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	addli r13, zero, 0
	addli r17, zero, 3
	addli r18, zero, 1
	addli r19, zero, 7
	addli r20, zero, 4
	addli r25, zero, 16
	addli r21, zero, 2
	addli r22, zero, 6
	addli r23, zero, 64
	storeli.w zero, -32(r30)                # 4-byte Folded Spill
	ori r1, r1, 2048
	.loc	1 39 11                         # parallel-rne.mlir:39:11
	store.d r[2:3], -96(r30)                # 8-byte Folded Spill
	lui r2, 37
	storeli.w r1, -100(r30)                 # 4-byte Folded Spill
	lui r1, 25
	ori r1, r1, 3584
	storeli.w r1, -104(r30)                 # 4-byte Folded Spill
	lui r1, 31
	ori r1, r1, 3584
	storeli.w r1, -108(r30)                 # 4-byte Folded Spill
	ori r1, r2, 3584
	lui r2, 40
	storeli.w r1, -112(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r14, r1, 4095
	ori r1, r2, 2114
	storeli.w r1, -116(r30)                 # 4-byte Folded Spill
	lui r1, 522240
	j .LBB0_7
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 437 7 is_stmt 1               # parallel-rne.mlir:437:7
	addli r2, zero, 17
	addli r18, zero, 1
	addli r19, zero, 7
	addli r21, zero, 2
	addli r22, zero, 6
	addli r23, zero, 64
	xsignal r2, 0
	.loc	1 438 7                         # parallel-rne.mlir:438:7
	addli r2, zero, 19
	xsignal r2, 0
	.loc	1 439 7                         # parallel-rne.mlir:439:7
	addli r2, zero, 21
	xsignal r2, 0
	.loc	1 440 7                         # parallel-rne.mlir:440:7
	addli r2, zero, 22
	xsignal r2, 0
	loadli.w r13,  -36(r30)                 # 4-byte Folded Reload
	load.d r[15:16], -48(r30)               # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	load.d r[2:3], -96(r30)                 # 8-byte Folded Reload
	addli.d r[15:16], r[15:16], 1
	addli r13, r13, 1
	addli r20, zero, 4
	setlt.sl r2, r[15:16], r[2:3]
	beq r2, zero, .LBB0_267
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
                                        #     Child Loop BB0_25 Depth 2
                                        #     Child Loop BB0_41 Depth 2
                                        #       Child Loop BB0_58 Depth 3
                                        #       Child Loop BB0_44 Depth 3
                                        #     Child Loop BB0_69 Depth 2
                                        #       Child Loop BB0_86 Depth 3
                                        #       Child Loop BB0_72 Depth 3
                                        #     Child Loop BB0_97 Depth 2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_100 Depth 3
                                        #     Child Loop BB0_125 Depth 2
                                        #       Child Loop BB0_142 Depth 3
                                        #       Child Loop BB0_128 Depth 3
                                        #     Child Loop BB0_153 Depth 2
                                        #       Child Loop BB0_170 Depth 3
                                        #       Child Loop BB0_156 Depth 3
                                        #     Child Loop BB0_181 Depth 2
                                        #       Child Loop BB0_198 Depth 3
                                        #       Child Loop BB0_184 Depth 3
                                        #     Child Loop BB0_209 Depth 2
                                        #       Child Loop BB0_226 Depth 3
                                        #       Child Loop BB0_212 Depth 3
                                        #     Child Loop BB0_238 Depth 2
                                        #       Child Loop BB0_255 Depth 3
                                        #       Child Loop BB0_241 Depth 3
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	loadli.w r2,  48(r30)
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	loadli.w r3,  44(r30)
	addli r5, zero, 8
	addli r6, zero, 8
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	div.s r2, r15, r2
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	div.s r3, r2, r3
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	div.s r2, r3, r5
	slli r4, r2, 3
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	sub.s r2, r18, r4
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	min.s r7, r2, r5
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	mod.s r2, r13, r17
	.loc	1 61 13                         # parallel-rne.mlir:61:13
	mod.s r5, r3, r7
	.loc	1 87 13                         # parallel-rne.mlir:87:13
	slli r8, r2, 11
	.loc	1 62 13                         # parallel-rne.mlir:62:13
	add.s r24, r5, r4
	.loc	1 89 13                         # parallel-rne.mlir:89:13
	lui r5, 6
	.loc	1 70 13                         # parallel-rne.mlir:70:13
	zext_int2long r[10:11], r24
	.loc	1 89 13                         # parallel-rne.mlir:89:13
	add.s r5, r8, r5
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	store.d r[10:11], -64(r30)              # 8-byte Folded Spill
	bneq r12, r18, .LBB0_9
# %bb.8:                                # %.thread20
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r9, zero, 11
	load.d r[26:27], 0(r30)
	xwait r17, 0
	lock zero, r20
	addli r28, zero, 0
	dma_cfg r18, r18, zero, 0
	sll.d r[9:10], r[10:11], r9
	addli r11, zero, 128
	add.ul r[9:10], r[26:27], r[9:10]
	dma_cfg zero, r10, zero, 2
	dma_cfg r5, r9, r11, 3
	dma_cfg r11, r11, r25, 4
	dma_run zero
	unlock r20
	xsignal r21, 0
	.loc	1 94 7                          # parallel-rne.mlir:94:7
	j .LBB0_12
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	bneq r12, r21, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	addli r9, zero, 5
	xwait r21, 0
	addli r28, zero, 1
	xwait r9, 0
	lock zero, zero
	ds_cfg r17, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r25, zero, 13
	shuffle_batch r8, r5, r23, 1
	unlock zero
	xsignal r17, 0
	xsignal r20, 0
	j .LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r28, zero, 0
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	sub.s r3, r3, r4
	slli r9, r2, 13
	.loc	1 108 7 is_stmt 1               # parallel-rne.mlir:108:7
	storeli.w r13, -36(r30)                 # 4-byte Folded Spill
	store.d r[15:16], -48(r30)              # 8-byte Folded Spill
	storeli.w r24, -68(r30)                 # 4-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.s r7, r3, r7
	.loc	1 102 13 is_stmt 1              # parallel-rne.mlir:102:13
	slli r3, r2, 14
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[4:5], r7
	sll.d r[26:27], r[4:5], r19
	.loc	1 104 13 is_stmt 1              # parallel-rne.mlir:104:13
	loadli.w r4,  -100(r30)                 # 4-byte Folded Reload
	add.s r4, r3, r4
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	bneq r12, r22, .LBB0_14
# %bb.13:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	load.d r[5:6], 8(r30)
	sll.d r[10:11], r[26:27], r18
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
	xwait r19, 0
	lock zero, r20
	addli r3, zero, 256
	dma_cfg r18, r18, zero, 0
	add.ul r[10:11], r[5:6], r[10:11]
	dma_cfg zero, r11, zero, 2
	dma_cfg r4, r10, r3, 3
	dma_cfg r3, r3, r23, 4
	dma_run zero
	unlock r20
	xsignal r22, 0
	j .LBB0_21
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 109 7                         # parallel-rne.mlir:109:7
	beq r12, r20, .LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r12, r19, .LBB0_20
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 9
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	xwait r22, 0
	xwait r5, 0
	lock zero, zero
	addli r5, zero, 128
	ds_cfg r17, zero, 0
	ds_cfg r5, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r5, zero, 13
	shuffle_coa r3, r4, r23, 2
	addli r3, zero, 1
	unlock zero
	xsignal r19, 0
	storeli.w r3, -52(r30)                  # 4-byte Folded Spill
	xsignal r6, 0
	j .LBB0_21
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 110 7                         # parallel-rne.mlir:110:7
	xwait r20, 0
	xwait r6, 0
	addli r6, zero, 11
	addli r10, zero, 0
	addli r4, zero, 1
	addli r5, zero, 1
	xwait r6, 0
.LBB0_18:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r11, r10, 13
	slli r10, r10, 8
	lock zero, r4
	mm_cfg r23, r23, r25, 0
	or r11, r11, r3
	or r10, r10, r9
	mm_cfg r21, r20, r4, 2
	mm r10, r8, r11, 5
	andi r11, r5, 1
	addli r10, zero, 1
	addli r5, zero, 0
	unlock r4
	bneq r11, zero, .LBB0_18
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 5
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	addli r3, zero, 1
	storeli.w r3, -16(r30)                  # 4-byte Folded Spill
	addli r3, zero, 10
	xsignal r3, 0
	j .LBB0_21
.LBB0_20:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
.LBB0_21:                               # %.thread22
                                        #   in Loop: Header=BB0_7 Depth=1
	loadli.w r11,  -32(r30)                 # 4-byte Folded Reload
	addli r4, zero, 128
	slli r3, r7, 7
	lui r6, 19
	.loc	1 124 13 is_stmt 1              # parallel-rne.mlir:124:13
	slli r2, r2, 9
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	store.d r[26:27], -80(r30)              # 8-byte Folded Spill
	zext_int2long r[23:24], r4
	.loc	1 117 13                        # parallel-rne.mlir:117:13
	zext_int2long r[4:5], r3
	ori r10, r6, 2048
	mod.s r3, r11, r17
	.loc	1 121 13                        # parallel-rne.mlir:121:13
	max.ul r[7:8], r[4:5], r[23:24]
	.loc	1 124 13                        # parallel-rne.mlir:124:13
	add.s r2, r2, r10
	.loc	1 121 13                        # parallel-rne.mlir:121:13
	sub.sl r[15:16], r[7:8], r[4:5]
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	store.d r[15:16], -88(r30)              # 8-byte Folded Spill
	bneq r12, r18, .LBB0_23
# %bb.22:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r7, zero, 13
	sll.d r[4:5], r[26:27], r18
	.loc	1 131 13                        # parallel-rne.mlir:131:13
	addli r11, r11, 1
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	xwait r7, 0
	load.d r[7:8], 16(r30)
	lock zero, r20
	dma_cfg zero, r18, zero, 0
	add.ul r[4:5], r[7:8], r[4:5]
	slli r7, r15, 1
	dma_cfg zero, r5, zero, 2
	dma_cfg r2, r4, r7, 3
	addli r2, zero, 256
	addli r4, zero, 512
	dma_cfg r4, r2, r18, 4
	dma_run zero
	unlock r20
	.loc	1 131 13                        # parallel-rne.mlir:131:13
	slli r2, r3, 13
	loadli.w r3,  -104(r30)                 # 4-byte Folded Reload
	add.s r16, r2, r3
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	addli r2, zero, 12
	j .LBB0_27
.LBB0_23:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 131 13                        # parallel-rne.mlir:131:13
	loadli.w r4,  -104(r30)                 # 4-byte Folded Reload
	slli r3, r3, 13
	addli r11, r11, 1
	add.s r16, r3, r4
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	bneq r12, r17, .LBB0_29
# %bb.24:                               #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 10
	addli r3, zero, 0
	addli r7, zero, 8192
	xwait r4, 0
	addli r4, zero, 12
	xwait r4, 0
	addli r4, zero, 17
	xwait r4, 0
	lock zero, r21
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 127
	ew_cfg zero, r4, zero, 2
	ew_cfg r18, zero, zero, 3
.LBB0_25:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r16, r3
	add.s r5, r9, r3
	addli r3, r3, 512
	dsmadd r4, r5, r2, 0
	bneq r3, r7, .LBB0_25
# %bb.26:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	unlock r21
	xsignal r2, 0
	addli r2, zero, 13
	xsignal r2, 0
	addli r2, zero, 14
	xsignal r25, 0
.LBB0_27:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
	.loc	1 134 13 is_stmt 1              # parallel-rne.mlir:134:13
	loadli.w r2,  -108(r30)                 # 4-byte Folded Reload
	.loc	1 140 7                         # parallel-rne.mlir:140:7
	storeli.w r11, -32(r30)                 # 4-byte Folded Spill
	.loc	1 134 13                        # parallel-rne.mlir:134:13
	add.s r10, r9, r2
	.loc	1 137 13                        # parallel-rne.mlir:137:13
	loadli.w r2,  -112(r30)                 # 4-byte Folded Reload
	add.s r26, r9, r2
	bneq r12, r17, .LBB0_32
# %bb.28:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 140 7                         # parallel-rne.mlir:140:7
	addli r2, zero, 15
	xwait r2, 0
	.loc	1 141 7                         # parallel-rne.mlir:141:7
	addli r2, zero, 18
	xwait r2, 0
	.loc	1 142 7                         # parallel-rne.mlir:142:7
	addli r2, zero, 20
	xwait r2, 0
	.loc	1 143 7                         # parallel-rne.mlir:143:7
	addli r2, zero, 23
	xwait r2, 0
	j .LBB0_32
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 134 13                        # parallel-rne.mlir:134:13
	loadli.w r2,  -108(r30)                 # 4-byte Folded Reload
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	storeli.w r11, -32(r30)                 # 4-byte Folded Spill
	.loc	1 134 13                        # parallel-rne.mlir:134:13
	add.s r10, r9, r2
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	addli r2, zero, 5
	bneq r12, r2, .LBB0_31
# %bb.30:                               # %.thread24
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 14
	addli r3, zero, 511
	xwait r2, 0
	addli r2, zero, 19
	xwait r2, 0
	lock zero, r21
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r3, zero, 2
	ew_cfg r20, zero, zero, 3
	ew_cfg r20, r20, zero, 19
	ew_cfg r21, zero, zero, 10
	loadli.w r2,  -116(r30)                 # 4-byte Folded Reload
	ew_cfg r21, r18, r2, 11
	lui r2, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r20, r2, 14
	ew_cfg zero, zero, zero, 15
	sslut r10, r16, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r21
	.loc	1 137 13                        # parallel-rne.mlir:137:13
	loadli.w r2,  -112(r30)                 # 4-byte Folded Reload
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	xwait r25, 0
	.loc	1 137 13                        # parallel-rne.mlir:137:13
	add.s r26, r9, r2
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	addli r2, zero, 21
	xwait r2, 0
	lock zero, r21
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r2, 0
	addli r2, zero, 15
	ew_cfg zero, r3, zero, 2
	ew_cfg r20, zero, zero, 3
	ew_cfg r20, r20, r20, 19
	dsmul r26, r16, r10, 0
	ew_cfg zero, zero, zero, 19
	unlock r21
	xsignal r2, 0
	addli r2, zero, 18
	xsignal r2, 0
	addli r2, zero, 20
	xsignal r2, 0
	j .LBB0_32
.LBB0_31:                               # %.thread82
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 137 13                        # parallel-rne.mlir:137:13
	loadli.w r2,  -112(r30)                 # 4-byte Folded Reload
	add.s r26, r9, r2
.LBB0_32:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 13 is_stmt 0                # parallel-rne.mlir:0:13
	ori r2, r6, 3584
	.loc	1 145 7 is_stmt 1               # parallel-rne.mlir:145:7
	xfence
	.loc	1 146 7                         # parallel-rne.mlir:146:7
	mfence { lm, sm, gm }
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r20, r9, r2
	.loc	1 147 7 is_stmt 1               # parallel-rne.mlir:147:7
	addli r2, zero, 255
	csr_set csr5, r2
	sub.s r2, r20, r16
	storeli.w r2, -20(r30)                  # 4-byte Folded Spill
	sub.s r2, r20, r10
	storeli.w r2, -24(r30)                  # 4-byte Folded Spill
	sub.s r2, r20, r26
	storeli.w r2, -28(r30)                  # 4-byte Folded Spill
	addli r2, zero, 127
	sync_core
	zext_int2long r[21:22], r2
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	beq r12, zero, .LBB0_39
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 184 7                         # parallel-rne.mlir:184:7
	addli r2, zero, 1
	beq r12, r2, .LBB0_67
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 220 7                         # parallel-rne.mlir:220:7
	bneq r28, zero, .LBB0_95
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 256 7                         # parallel-rne.mlir:256:7
	addli r2, zero, 3
	beq r12, r2, .LBB0_123
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 292 7                         # parallel-rne.mlir:292:7
	loadli.w r2,  -16(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_151
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 328 7                         # parallel-rne.mlir:328:7
	addli r2, zero, 5
	beq r12, r2, .LBB0_179
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	addli r2, zero, 6
	beq r12, r2, .LBB0_207
	j .LBB0_235
.LBB0_39:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -20(r30)                  # 4-byte Folded Reload
	loadli.w r3,  -24(r30)                  # 4-byte Folded Reload
	storeli.w r28, -56(r30)                 # 4-byte Folded Spill
	addli r18, zero, 1
	zext_int2long r[27:28], zero
	min.u r2, r2, r3
	loadli.w r3,  -28(r30)                  # 4-byte Folded Reload
	min.u r2, r2, r3
	setlt.u r2, r2, r25
	.loc	1 148 7 is_stmt 1               # parallel-rne.mlir:148:7
	storeli.w r2, -4(r30)                   # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_41
.LBB0_40:                               # %middle.block192
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 156 9                         # parallel-rne.mlir:156:9
	andi r2, r18, 1
	addli.d r[27:28], r[23:24], 0
	addli r18, zero, 0
	beq r2, zero, .LBB0_66
.LBB0_41:                               # %vector.memcheck178
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_58 Depth 3
                                        #       Child Loop BB0_44 Depth 3
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	beq r2, zero, .LBB0_56
# %bb.42:                               # %scalar.ph184.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_44
.LBB0_43:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	setlt.ul r5, r[2:3], r[21:22]
	.loc	1 179 13 is_stmt 1              # parallel-rne.mlir:179:13
	add.s r4, r20, r4
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 179 13                        # parallel-rne.mlir:179:13
	stores.w r7, 0(r4)
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	beq r5, zero, .LBB0_40
.LBB0_44:                               # %scalar.ph184
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	add.ul r[4:5], r[2:3], r[27:28]
	lui r7, 523264
	lui r9, 523264
	slli r4, r4, 2
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	add.s r5, r10, r4
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	add.s r6, r26, r4
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	loads.w r5, 0(r5)
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	loads.w r11, 0(r6)
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	and r5, r5, r14
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	beq r5, r1, .LBB0_46
# %bb.45:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r11, 0
.LBB0_46:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_44 Depth=3
	add.s r6, r16, r4
	loads.w r6, 0(r6)
	and r8, r6, r14
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r8, zero, .LBB0_54
# %bb.47:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r11, 523264
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r5, zero, .LBB0_55
.LBB0_48:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_44 Depth=3
	beq r8, r1, .LBB0_50
.LBB0_49:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r9, 0
.LBB0_50:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_44 Depth=3
	setlt.u r6, r1, r5
	lui r5, 523264
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r6, zero, .LBB0_52
# %bb.51:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r11, 0
.LBB0_52:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_44 Depth=3
	setlt.u r6, r1, r8
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r6, zero, .LBB0_43
# %bb.53:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r5, 0
	j .LBB0_43
.LBB0_54:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_44 Depth=3
	addli r9, r11, 0
	lui r11, 523264
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	beq r5, zero, .LBB0_48
.LBB0_55:                               # %scalar.ph184
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r9, 0
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r8, r1, .LBB0_49
	j .LBB0_50
.LBB0_56:                               # %vector.body186.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_58
.LBB0_57:                               # %vector.body186
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 157 11 is_stmt 1              # parallel-rne.mlir:157:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 179 13                        # parallel-rne.mlir:179:13
	add.s r5, r20, r11
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	seteq.d r2, r[7:8], r[23:24]
	.loc	1 179 13                        # parallel-rne.mlir:179:13
	stores.w r9, 12(r5)
	stores.w r12, 8(r5)
	stores.w r3, 4(r5)
	stores.w r4, 0(r5)
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	bneq r2, zero, .LBB0_40
.LBB0_58:                               # %vector.body186
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	add.ul r[2:3], r[7:8], r[27:28]
	slli r11, r2, 2
	add.s r2, r16, r11
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	add.s r13, r10, r11
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	loads.w r3, 0(r2)
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	loads.w r4, 0(r13)
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	and r3, r3, r14
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	and r4, r4, r14
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	seteq r5, r3, r1
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	seteq r15, r3, zero
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	seteq r9, r4, zero
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	seteq r12, r4, r1
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	max.u r3, r3, r4
	setlt.u r3, r1, r3
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	and r4, r5, r9
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	and r5, r15, r12
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	add.s r15, r26, r11
	lui r9, 523264
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	or r4, r4, r5
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	or r3, r3, r4
	lui r4, 523264
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r3, zero, .LBB0_60
# %bb.59:                               # %vector.body186
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r15)
.LBB0_60:                               # %vector.body186
                                        #   in Loop: Header=BB0_58 Depth=3
	loads.w r3, 4(r2)
	loads.w r5, 4(r13)
	and r3, r3, r14
	and r5, r5, r14
	seteq r12, r3, r1
	seteq r19, r3, zero
	seteq r6, r5, r1
	seteq r25, r5, zero
	max.u r3, r3, r5
	setlt.u r3, r1, r3
	and r5, r12, r25
	and r6, r19, r6
	or r5, r5, r6
	or r5, r3, r5
	lui r3, 523264
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r5, zero, .LBB0_62
# %bb.61:                               # %vector.body186
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 4(r15)
.LBB0_62:                               # %vector.body186
                                        #   in Loop: Header=BB0_58 Depth=3
	loads.w r5, 8(r2)
	loads.w r6, 8(r13)
	and r5, r5, r14
	and r6, r6, r14
	seteq r12, r5, r1
	seteq r17, r5, zero
	seteq r19, r6, zero
	seteq r25, r6, r1
	max.u r5, r5, r6
	setlt.u r5, r1, r5
	and r6, r12, r19
	and r12, r17, r25
	or r6, r6, r12
	lui r12, 523264
	or r5, r5, r6
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r5, zero, .LBB0_64
# %bb.63:                               # %vector.body186
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r15)
.LBB0_64:                               # %vector.body186
                                        #   in Loop: Header=BB0_58 Depth=3
	loads.w r2, 12(r2)
	loads.w r5, 12(r13)
	and r2, r2, r14
	and r5, r5, r14
	seteq r6, r2, r1
	seteq r19, r2, zero
	seteq r13, r5, zero
	seteq r17, r5, r1
	max.u r2, r2, r5
	setlt.u r2, r1, r2
	and r5, r6, r13
	and r6, r19, r17
	or r5, r5, r6
	or r2, r2, r5
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r2, zero, .LBB0_57
# %bb.65:                               # %vector.body186
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r15)
	j .LBB0_57
.LBB0_66:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 148 7 is_stmt 1               # parallel-rne.mlir:148:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r12
	addli r25, zero, 16
	loadli.w r28,  -56(r30)                 # 4-byte Folded Reload
	.loc	1 184 7                         # parallel-rne.mlir:184:7
	addli r2, zero, 1
	bneq r12, r2, .LBB0_34
.LBB0_67:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -20(r30)                  # 4-byte Folded Reload
	loadli.w r3,  -24(r30)                  # 4-byte Folded Reload
	storeli.w r28, -56(r30)                 # 4-byte Folded Spill
	addli r18, zero, 1
	min.u r2, r2, r3
	loadli.w r3,  -28(r30)                  # 4-byte Folded Reload
	min.u r2, r2, r3
	setlt.u r2, r2, r25
	.loc	1 184 7                         # parallel-rne.mlir:184:7
	storeli.w r2, -4(r30)                   # 4-byte Folded Spill
	addli r2, zero, 256
	xfence
	zext_int2long r[27:28], r2
	mfence { lm, sm, gm }
	j .LBB0_69
.LBB0_68:                               # %middle.block177
                                        #   in Loop: Header=BB0_69 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 384
	.loc	1 192 9 is_stmt 1               # parallel-rne.mlir:192:9
	andi r2, r18, 1
	addli r18, zero, 0
	zext_int2long r[27:28], r3
	beq r2, zero, .LBB0_94
.LBB0_69:                               # %vector.memcheck163
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_86 Depth 3
                                        #       Child Loop BB0_72 Depth 3
	.loc	1 193 11                        # parallel-rne.mlir:193:11
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	beq r2, zero, .LBB0_84
# %bb.70:                               # %scalar.ph169.preheader
                                        #   in Loop: Header=BB0_69 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_72
.LBB0_71:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 193 11                        # parallel-rne.mlir:193:11
	setlt.ul r5, r[2:3], r[21:22]
	.loc	1 215 13 is_stmt 1              # parallel-rne.mlir:215:13
	add.s r4, r20, r4
	.loc	1 193 11                        # parallel-rne.mlir:193:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	stores.w r7, 0(r4)
	.loc	1 193 11                        # parallel-rne.mlir:193:11
	beq r5, zero, .LBB0_68
.LBB0_72:                               # %scalar.ph169
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	add.ul r[4:5], r[2:3], r[27:28]
	lui r7, 523264
	lui r9, 523264
	slli r4, r4, 2
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	add.s r5, r10, r4
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	add.s r6, r26, r4
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	loads.w r5, 0(r5)
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	loads.w r11, 0(r6)
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	and r5, r5, r14
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r5, r1, .LBB0_74
# %bb.73:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r11, 0
.LBB0_74:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_72 Depth=3
	add.s r6, r16, r4
	loads.w r6, 0(r6)
	and r8, r6, r14
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r8, zero, .LBB0_82
# %bb.75:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r11, 523264
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r5, zero, .LBB0_83
.LBB0_76:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_72 Depth=3
	beq r8, r1, .LBB0_78
.LBB0_77:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r9, 0
.LBB0_78:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_72 Depth=3
	setlt.u r6, r1, r5
	lui r5, 523264
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r6, zero, .LBB0_80
# %bb.79:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r11, 0
.LBB0_80:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_72 Depth=3
	setlt.u r6, r1, r8
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r6, zero, .LBB0_71
# %bb.81:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r5, 0
	j .LBB0_71
.LBB0_82:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_72 Depth=3
	addli r9, r11, 0
	lui r11, 523264
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r5, zero, .LBB0_76
.LBB0_83:                               # %scalar.ph169
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r9, 0
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r8, r1, .LBB0_77
	j .LBB0_78
.LBB0_84:                               # %vector.body171.preheader
                                        #   in Loop: Header=BB0_69 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_86
.LBB0_85:                               # %vector.body171
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 193 11 is_stmt 1              # parallel-rne.mlir:193:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	add.s r5, r20, r11
	.loc	1 193 11                        # parallel-rne.mlir:193:11
	seteq.d r2, r[7:8], r[23:24]
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	stores.w r9, 12(r5)
	stores.w r12, 8(r5)
	stores.w r3, 4(r5)
	stores.w r4, 0(r5)
	.loc	1 193 11                        # parallel-rne.mlir:193:11
	bneq r2, zero, .LBB0_68
.LBB0_86:                               # %vector.body171
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	add.ul r[2:3], r[7:8], r[27:28]
	slli r11, r2, 2
	add.s r2, r16, r11
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	add.s r13, r10, r11
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	add.s r15, r26, r11
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	loads.w r3, 0(r2)
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	loads.w r4, 0(r13)
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	and r3, r3, r14
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	and r4, r4, r14
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	seteq r5, r3, r1
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	seteq r12, r3, zero
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	seteq r6, r4, zero
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	seteq r9, r4, r1
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	max.u r3, r3, r4
	setlt.u r3, r1, r3
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	and r4, r5, r6
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	and r5, r12, r9
	lui r9, 523264
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	or r4, r4, r5
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	or r3, r3, r4
	lui r4, 523264
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r3, zero, .LBB0_88
# %bb.87:                               # %vector.body171
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r15)
.LBB0_88:                               # %vector.body171
                                        #   in Loop: Header=BB0_86 Depth=3
	loads.w r3, 4(r2)
	loads.w r5, 4(r13)
	and r3, r3, r14
	and r5, r5, r14
	seteq r6, r3, r1
	seteq r25, r3, zero
	seteq r12, r5, zero
	seteq r19, r5, r1
	max.u r3, r3, r5
	setlt.u r3, r1, r3
	and r5, r6, r12
	and r6, r25, r19
	or r5, r5, r6
	or r5, r3, r5
	lui r3, 523264
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r5, zero, .LBB0_90
# %bb.89:                               # %vector.body171
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 4(r15)
.LBB0_90:                               # %vector.body171
                                        #   in Loop: Header=BB0_86 Depth=3
	loads.w r5, 8(r2)
	loads.w r6, 8(r13)
	and r5, r5, r14
	and r6, r6, r14
	seteq r12, r5, r1
	seteq r17, r5, zero
	seteq r19, r6, zero
	seteq r25, r6, r1
	max.u r5, r5, r6
	setlt.u r5, r1, r5
	and r6, r12, r19
	and r12, r17, r25
	or r6, r6, r12
	lui r12, 523264
	or r5, r5, r6
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r5, zero, .LBB0_92
# %bb.91:                               # %vector.body171
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r15)
.LBB0_92:                               # %vector.body171
                                        #   in Loop: Header=BB0_86 Depth=3
	loads.w r2, 12(r2)
	loads.w r5, 12(r13)
	and r2, r2, r14
	and r5, r5, r14
	seteq r6, r2, r1
	seteq r19, r2, zero
	seteq r13, r5, zero
	seteq r17, r5, r1
	max.u r2, r2, r5
	setlt.u r2, r1, r2
	and r5, r6, r13
	and r6, r19, r17
	or r5, r5, r6
	or r2, r2, r5
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r2, zero, .LBB0_85
# %bb.93:                               # %vector.body171
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r15)
	j .LBB0_85
.LBB0_94:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 184 7 is_stmt 1               # parallel-rne.mlir:184:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r12
	addli r25, zero, 16
	loadli.w r28,  -56(r30)                 # 4-byte Folded Reload
	.loc	1 220 7                         # parallel-rne.mlir:220:7
	beq r28, zero, .LBB0_35
.LBB0_95:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -20(r30)                  # 4-byte Folded Reload
	loadli.w r3,  -24(r30)                  # 4-byte Folded Reload
	addli r17, zero, 1
	min.u r2, r2, r3
	loadli.w r3,  -28(r30)                  # 4-byte Folded Reload
	min.u r2, r2, r3
	setlt.u r2, r2, r25
	.loc	1 220 7                         # parallel-rne.mlir:220:7
	storeli.w r2, -4(r30)                   # 4-byte Folded Spill
	addli r2, zero, 512
	xfence
	zext_int2long r[27:28], r2
	mfence { lm, sm, gm }
	j .LBB0_97
.LBB0_96:                               # %middle.block162
                                        #   in Loop: Header=BB0_97 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 640
	.loc	1 228 9 is_stmt 1               # parallel-rne.mlir:228:9
	andi r2, r17, 1
	addli r17, zero, 0
	zext_int2long r[27:28], r3
	beq r2, zero, .LBB0_122
.LBB0_97:                               # %vector.memcheck148
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_100 Depth 3
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	beq r2, zero, .LBB0_112
# %bb.98:                               # %scalar.ph154.preheader
                                        #   in Loop: Header=BB0_97 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_100
.LBB0_99:                               # %scalar.ph154
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	setlt.ul r5, r[2:3], r[21:22]
	.loc	1 251 13 is_stmt 1              # parallel-rne.mlir:251:13
	add.s r4, r20, r4
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 251 13                        # parallel-rne.mlir:251:13
	stores.w r7, 0(r4)
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	beq r5, zero, .LBB0_96
.LBB0_100:                              # %scalar.ph154
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_97 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	add.ul r[4:5], r[2:3], r[27:28]
	lui r7, 523264
	lui r9, 523264
	slli r4, r4, 2
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	add.s r5, r10, r4
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.s r6, r26, r4
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	loads.w r5, 0(r5)
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	loads.w r12, 0(r6)
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r5, r5, r14
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	beq r5, r1, .LBB0_102
# %bb.101:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r12, 0
.LBB0_102:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_100 Depth=3
	add.s r6, r16, r4
	loads.w r6, 0(r6)
	and r8, r6, r14
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r8, zero, .LBB0_110
# %bb.103:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r12, 523264
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r5, zero, .LBB0_111
.LBB0_104:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_100 Depth=3
	beq r8, r1, .LBB0_106
.LBB0_105:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
.LBB0_106:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_100 Depth=3
	setlt.u r6, r1, r5
	lui r5, 523264
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r6, zero, .LBB0_108
# %bb.107:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
.LBB0_108:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_100 Depth=3
	setlt.u r6, r1, r8
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r6, zero, .LBB0_99
# %bb.109:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r5, 0
	j .LBB0_99
.LBB0_110:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_100 Depth=3
	addli r9, r12, 0
	lui r12, 523264
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	beq r5, zero, .LBB0_104
.LBB0_111:                              # %scalar.ph154
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r8, r1, .LBB0_105
	j .LBB0_106
.LBB0_112:                              # %vector.body156.preheader
                                        #   in Loop: Header=BB0_97 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_114
.LBB0_113:                              # %vector.body156
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 229 11 is_stmt 1              # parallel-rne.mlir:229:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 251 13                        # parallel-rne.mlir:251:13
	add.s r5, r20, r18
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	seteq.d r2, r[7:8], r[23:24]
	.loc	1 251 13                        # parallel-rne.mlir:251:13
	stores.w r9, 12(r5)
	stores.w r12, 8(r5)
	stores.w r3, 4(r5)
	stores.w r4, 0(r5)
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	bneq r2, zero, .LBB0_96
.LBB0_114:                              # %vector.body156
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_97 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	add.ul r[2:3], r[7:8], r[27:28]
	slli r18, r2, 2
	add.s r2, r16, r18
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	add.s r13, r10, r18
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.s r15, r26, r18
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	loads.w r3, 0(r2)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	loads.w r4, 0(r13)
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	and r3, r3, r14
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r4, r4, r14
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	seteq r5, r3, r1
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	seteq r12, r3, zero
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	seteq r6, r4, zero
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	seteq r9, r4, r1
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	max.u r3, r3, r4
	setlt.u r3, r1, r3
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	and r4, r5, r6
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	and r5, r12, r9
	lui r9, 523264
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	or r4, r4, r5
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	or r3, r3, r4
	lui r4, 523264
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r3, zero, .LBB0_116
# %bb.115:                              # %vector.body156
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r15)
.LBB0_116:                              # %vector.body156
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r3, 4(r2)
	loads.w r5, 4(r13)
	and r3, r3, r14
	and r5, r5, r14
	seteq r6, r3, r1
	seteq r25, r3, zero
	seteq r12, r5, zero
	seteq r19, r5, r1
	max.u r3, r3, r5
	setlt.u r3, r1, r3
	and r5, r6, r12
	and r6, r25, r19
	or r5, r5, r6
	or r5, r3, r5
	lui r3, 523264
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r5, zero, .LBB0_118
# %bb.117:                              # %vector.body156
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 4(r15)
.LBB0_118:                              # %vector.body156
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r5, 8(r2)
	loads.w r6, 8(r13)
	and r5, r5, r14
	and r6, r6, r14
	seteq r12, r5, r1
	seteq r11, r5, zero
	seteq r25, r6, r1
	seteq r19, r6, zero
	max.u r5, r5, r6
	setlt.u r5, r1, r5
	and r6, r12, r19
	and r11, r11, r25
	lui r12, 523264
	or r6, r6, r11
	or r5, r5, r6
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r5, zero, .LBB0_120
# %bb.119:                              # %vector.body156
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r15)
.LBB0_120:                              # %vector.body156
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r2, 12(r2)
	loads.w r5, 12(r13)
	and r2, r2, r14
	and r5, r5, r14
	seteq r6, r2, r1
	seteq r19, r2, zero
	seteq r11, r5, zero
	seteq r13, r5, r1
	max.u r2, r2, r5
	setlt.u r2, r1, r2
	and r5, r6, r11
	and r6, r19, r13
	or r5, r5, r6
	or r2, r2, r5
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r2, zero, .LBB0_113
# %bb.121:                              # %vector.body156
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r15)
	j .LBB0_113
.LBB0_122:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r12
	addli r25, zero, 16
	.loc	1 220 7                         # parallel-rne.mlir:220:7
	mfence { sm }
	.loc	1 256 7                         # parallel-rne.mlir:256:7
	addli r2, zero, 3
	bneq r12, r2, .LBB0_36
.LBB0_123:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -20(r30)                  # 4-byte Folded Reload
	loadli.w r3,  -24(r30)                  # 4-byte Folded Reload
	addli r17, zero, 1
	min.u r2, r2, r3
	loadli.w r3,  -28(r30)                  # 4-byte Folded Reload
	min.u r2, r2, r3
	setlt.u r2, r2, r25
	.loc	1 256 7                         # parallel-rne.mlir:256:7
	storeli.w r2, -4(r30)                   # 4-byte Folded Spill
	addli r2, zero, 768
	xfence
	zext_int2long r[27:28], r2
	mfence { lm, sm, gm }
	j .LBB0_125
.LBB0_124:                              # %middle.block147
                                        #   in Loop: Header=BB0_125 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 896
	.loc	1 264 9 is_stmt 1               # parallel-rne.mlir:264:9
	andi r2, r17, 1
	addli r17, zero, 0
	zext_int2long r[27:28], r3
	beq r2, zero, .LBB0_150
.LBB0_125:                              # %vector.memcheck133
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_142 Depth 3
                                        #       Child Loop BB0_128 Depth 3
	.loc	1 265 11                        # parallel-rne.mlir:265:11
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	beq r2, zero, .LBB0_140
# %bb.126:                              # %scalar.ph139.preheader
                                        #   in Loop: Header=BB0_125 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_128
.LBB0_127:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 265 11                        # parallel-rne.mlir:265:11
	setlt.ul r5, r[2:3], r[21:22]
	.loc	1 287 13 is_stmt 1              # parallel-rne.mlir:287:13
	add.s r4, r20, r4
	.loc	1 265 11                        # parallel-rne.mlir:265:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 287 13                        # parallel-rne.mlir:287:13
	stores.w r7, 0(r4)
	.loc	1 265 11                        # parallel-rne.mlir:265:11
	beq r5, zero, .LBB0_124
.LBB0_128:                              # %scalar.ph139
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_125 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	add.ul r[4:5], r[2:3], r[27:28]
	lui r7, 523264
	lui r9, 523264
	slli r4, r4, 2
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	add.s r5, r10, r4
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	add.s r6, r26, r4
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	loads.w r5, 0(r5)
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	loads.w r12, 0(r6)
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	and r5, r5, r14
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	beq r5, r1, .LBB0_130
# %bb.129:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r12, 0
.LBB0_130:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_128 Depth=3
	add.s r6, r16, r4
	loads.w r6, 0(r6)
	and r8, r6, r14
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r8, zero, .LBB0_138
# %bb.131:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r12, 523264
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r5, zero, .LBB0_139
.LBB0_132:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_128 Depth=3
	beq r8, r1, .LBB0_134
.LBB0_133:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
.LBB0_134:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_128 Depth=3
	setlt.u r6, r1, r5
	lui r5, 523264
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r6, zero, .LBB0_136
# %bb.135:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
.LBB0_136:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_128 Depth=3
	setlt.u r6, r1, r8
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r6, zero, .LBB0_127
# %bb.137:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r5, 0
	j .LBB0_127
.LBB0_138:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_128 Depth=3
	addli r9, r12, 0
	lui r12, 523264
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	beq r5, zero, .LBB0_132
.LBB0_139:                              # %scalar.ph139
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r8, r1, .LBB0_133
	j .LBB0_134
.LBB0_140:                              # %vector.body141.preheader
                                        #   in Loop: Header=BB0_125 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_142
.LBB0_141:                              # %vector.body141
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 265 11 is_stmt 1              # parallel-rne.mlir:265:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 287 13                        # parallel-rne.mlir:287:13
	add.s r5, r20, r18
	.loc	1 265 11                        # parallel-rne.mlir:265:11
	seteq.d r2, r[7:8], r[23:24]
	.loc	1 287 13                        # parallel-rne.mlir:287:13
	stores.w r9, 12(r5)
	stores.w r12, 8(r5)
	stores.w r3, 4(r5)
	stores.w r4, 0(r5)
	.loc	1 265 11                        # parallel-rne.mlir:265:11
	bneq r2, zero, .LBB0_124
.LBB0_142:                              # %vector.body141
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_125 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	add.ul r[2:3], r[7:8], r[27:28]
	slli r18, r2, 2
	add.s r2, r16, r18
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	add.s r13, r10, r18
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	add.s r15, r26, r18
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	loads.w r3, 0(r2)
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	loads.w r4, 0(r13)
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	and r3, r3, r14
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	and r4, r4, r14
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	seteq r5, r3, r1
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	seteq r12, r3, zero
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	seteq r6, r4, zero
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	seteq r9, r4, r1
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	max.u r3, r3, r4
	setlt.u r3, r1, r3
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	and r4, r5, r6
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	and r5, r12, r9
	lui r9, 523264
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	or r4, r4, r5
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	or r3, r3, r4
	lui r4, 523264
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r3, zero, .LBB0_144
# %bb.143:                              # %vector.body141
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r15)
.LBB0_144:                              # %vector.body141
                                        #   in Loop: Header=BB0_142 Depth=3
	loads.w r3, 4(r2)
	loads.w r5, 4(r13)
	and r3, r3, r14
	and r5, r5, r14
	seteq r6, r3, r1
	seteq r25, r3, zero
	seteq r12, r5, zero
	seteq r19, r5, r1
	max.u r3, r3, r5
	setlt.u r3, r1, r3
	and r5, r6, r12
	and r6, r25, r19
	or r5, r5, r6
	or r5, r3, r5
	lui r3, 523264
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r5, zero, .LBB0_146
# %bb.145:                              # %vector.body141
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 4(r15)
.LBB0_146:                              # %vector.body141
                                        #   in Loop: Header=BB0_142 Depth=3
	loads.w r5, 8(r2)
	loads.w r6, 8(r13)
	and r5, r5, r14
	and r6, r6, r14
	seteq r12, r5, r1
	seteq r11, r5, zero
	seteq r25, r6, r1
	seteq r19, r6, zero
	max.u r5, r5, r6
	setlt.u r5, r1, r5
	and r6, r12, r19
	and r11, r11, r25
	lui r12, 523264
	or r6, r6, r11
	or r5, r5, r6
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r5, zero, .LBB0_148
# %bb.147:                              # %vector.body141
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r15)
.LBB0_148:                              # %vector.body141
                                        #   in Loop: Header=BB0_142 Depth=3
	loads.w r2, 12(r2)
	loads.w r5, 12(r13)
	and r2, r2, r14
	and r5, r5, r14
	seteq r6, r2, r1
	seteq r19, r2, zero
	seteq r11, r5, zero
	seteq r13, r5, r1
	max.u r2, r2, r5
	setlt.u r2, r1, r2
	and r5, r6, r11
	and r6, r19, r13
	or r5, r5, r6
	or r2, r2, r5
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r2, zero, .LBB0_141
# %bb.149:                              # %vector.body141
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r15)
	j .LBB0_141
.LBB0_150:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r12
	addli r25, zero, 16
	.loc	1 256 7                         # parallel-rne.mlir:256:7
	mfence { sm }
	.loc	1 292 7                         # parallel-rne.mlir:292:7
	loadli.w r2,  -16(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_37
.LBB0_151:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -20(r30)                  # 4-byte Folded Reload
	loadli.w r3,  -24(r30)                  # 4-byte Folded Reload
	addli r17, zero, 1
	min.u r2, r2, r3
	loadli.w r3,  -28(r30)                  # 4-byte Folded Reload
	min.u r2, r2, r3
	setlt.u r2, r2, r25
	.loc	1 292 7                         # parallel-rne.mlir:292:7
	storeli.w r2, -4(r30)                   # 4-byte Folded Spill
	addli r2, zero, 1024
	xfence
	zext_int2long r[27:28], r2
	mfence { lm, sm, gm }
	j .LBB0_153
.LBB0_152:                              # %middle.block132
                                        #   in Loop: Header=BB0_153 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 1152
	.loc	1 300 9 is_stmt 1               # parallel-rne.mlir:300:9
	andi r2, r17, 1
	addli r17, zero, 0
	zext_int2long r[27:28], r3
	beq r2, zero, .LBB0_178
.LBB0_153:                              # %vector.memcheck118
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_170 Depth 3
                                        #       Child Loop BB0_156 Depth 3
	.loc	1 301 11                        # parallel-rne.mlir:301:11
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	beq r2, zero, .LBB0_168
# %bb.154:                              # %scalar.ph124.preheader
                                        #   in Loop: Header=BB0_153 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_156
.LBB0_155:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 301 11                        # parallel-rne.mlir:301:11
	setlt.ul r5, r[2:3], r[21:22]
	.loc	1 323 13 is_stmt 1              # parallel-rne.mlir:323:13
	add.s r4, r20, r4
	.loc	1 301 11                        # parallel-rne.mlir:301:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 323 13                        # parallel-rne.mlir:323:13
	stores.w r7, 0(r4)
	.loc	1 301 11                        # parallel-rne.mlir:301:11
	beq r5, zero, .LBB0_152
.LBB0_156:                              # %scalar.ph124
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	add.ul r[4:5], r[2:3], r[27:28]
	lui r7, 523264
	lui r9, 523264
	slli r4, r4, 2
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	add.s r5, r10, r4
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	add.s r6, r26, r4
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	loads.w r5, 0(r5)
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	loads.w r12, 0(r6)
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	and r5, r5, r14
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	beq r5, r1, .LBB0_158
# %bb.157:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r12, 0
.LBB0_158:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_156 Depth=3
	add.s r6, r16, r4
	loads.w r6, 0(r6)
	and r8, r6, r14
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r8, zero, .LBB0_166
# %bb.159:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r12, 523264
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r5, zero, .LBB0_167
.LBB0_160:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_156 Depth=3
	beq r8, r1, .LBB0_162
.LBB0_161:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
.LBB0_162:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_156 Depth=3
	setlt.u r6, r1, r5
	lui r5, 523264
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r6, zero, .LBB0_164
# %bb.163:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
.LBB0_164:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_156 Depth=3
	setlt.u r6, r1, r8
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r6, zero, .LBB0_155
# %bb.165:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r5, 0
	j .LBB0_155
.LBB0_166:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_156 Depth=3
	addli r9, r12, 0
	lui r12, 523264
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	beq r5, zero, .LBB0_160
.LBB0_167:                              # %scalar.ph124
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r8, r1, .LBB0_161
	j .LBB0_162
.LBB0_168:                              # %vector.body126.preheader
                                        #   in Loop: Header=BB0_153 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_170
.LBB0_169:                              # %vector.body126
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 301 11 is_stmt 1              # parallel-rne.mlir:301:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 323 13                        # parallel-rne.mlir:323:13
	add.s r5, r20, r18
	.loc	1 301 11                        # parallel-rne.mlir:301:11
	seteq.d r2, r[7:8], r[23:24]
	.loc	1 323 13                        # parallel-rne.mlir:323:13
	stores.w r9, 12(r5)
	stores.w r12, 8(r5)
	stores.w r3, 4(r5)
	stores.w r4, 0(r5)
	.loc	1 301 11                        # parallel-rne.mlir:301:11
	bneq r2, zero, .LBB0_152
.LBB0_170:                              # %vector.body126
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	add.ul r[2:3], r[7:8], r[27:28]
	slli r18, r2, 2
	add.s r2, r16, r18
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	add.s r13, r10, r18
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	add.s r15, r26, r18
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	loads.w r3, 0(r2)
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	loads.w r4, 0(r13)
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	and r3, r3, r14
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	and r4, r4, r14
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	seteq r5, r3, r1
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	seteq r12, r3, zero
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	seteq r6, r4, zero
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	seteq r9, r4, r1
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	max.u r3, r3, r4
	setlt.u r3, r1, r3
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	and r4, r5, r6
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r5, r12, r9
	lui r9, 523264
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	or r4, r4, r5
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	or r3, r3, r4
	lui r4, 523264
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r3, zero, .LBB0_172
# %bb.171:                              # %vector.body126
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r15)
.LBB0_172:                              # %vector.body126
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r3, 4(r2)
	loads.w r5, 4(r13)
	and r3, r3, r14
	and r5, r5, r14
	seteq r6, r3, r1
	seteq r25, r3, zero
	seteq r12, r5, zero
	seteq r19, r5, r1
	max.u r3, r3, r5
	setlt.u r3, r1, r3
	and r5, r6, r12
	and r6, r25, r19
	or r5, r5, r6
	or r5, r3, r5
	lui r3, 523264
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r5, zero, .LBB0_174
# %bb.173:                              # %vector.body126
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 4(r15)
.LBB0_174:                              # %vector.body126
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r5, 8(r2)
	loads.w r6, 8(r13)
	and r5, r5, r14
	and r6, r6, r14
	seteq r12, r5, r1
	seteq r11, r5, zero
	seteq r25, r6, r1
	seteq r19, r6, zero
	max.u r5, r5, r6
	setlt.u r5, r1, r5
	and r6, r12, r19
	and r11, r11, r25
	lui r12, 523264
	or r6, r6, r11
	or r5, r5, r6
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r5, zero, .LBB0_176
# %bb.175:                              # %vector.body126
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r15)
.LBB0_176:                              # %vector.body126
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r2, 12(r2)
	loads.w r5, 12(r13)
	and r2, r2, r14
	and r5, r5, r14
	seteq r6, r2, r1
	seteq r19, r2, zero
	seteq r11, r5, zero
	seteq r13, r5, r1
	max.u r2, r2, r5
	setlt.u r2, r1, r2
	and r5, r6, r11
	and r6, r19, r13
	or r5, r5, r6
	or r2, r2, r5
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r2, zero, .LBB0_169
# %bb.177:                              # %vector.body126
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r15)
	j .LBB0_169
.LBB0_178:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r12
	addli r25, zero, 16
	.loc	1 292 7                         # parallel-rne.mlir:292:7
	mfence { sm }
	.loc	1 328 7                         # parallel-rne.mlir:328:7
	addli r2, zero, 5
	bneq r12, r2, .LBB0_38
.LBB0_179:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -20(r30)                  # 4-byte Folded Reload
	loadli.w r3,  -24(r30)                  # 4-byte Folded Reload
	addli r17, zero, 1
	min.u r2, r2, r3
	loadli.w r3,  -28(r30)                  # 4-byte Folded Reload
	min.u r2, r2, r3
	setlt.u r2, r2, r25
	.loc	1 328 7                         # parallel-rne.mlir:328:7
	storeli.w r2, -4(r30)                   # 4-byte Folded Spill
	addli r2, zero, 1280
	xfence
	zext_int2long r[27:28], r2
	mfence { lm, sm, gm }
	j .LBB0_181
.LBB0_180:                              # %middle.block117
                                        #   in Loop: Header=BB0_181 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 1408
	.loc	1 336 9 is_stmt 1               # parallel-rne.mlir:336:9
	andi r2, r17, 1
	addli r17, zero, 0
	zext_int2long r[27:28], r3
	beq r2, zero, .LBB0_206
.LBB0_181:                              # %vector.memcheck103
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_198 Depth 3
                                        #       Child Loop BB0_184 Depth 3
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	beq r2, zero, .LBB0_196
# %bb.182:                              # %scalar.ph109.preheader
                                        #   in Loop: Header=BB0_181 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_184
.LBB0_183:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	setlt.ul r5, r[2:3], r[21:22]
	.loc	1 359 13 is_stmt 1              # parallel-rne.mlir:359:13
	add.s r4, r20, r4
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 359 13                        # parallel-rne.mlir:359:13
	stores.w r7, 0(r4)
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	beq r5, zero, .LBB0_180
.LBB0_184:                              # %scalar.ph109
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_181 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	add.ul r[4:5], r[2:3], r[27:28]
	lui r7, 523264
	lui r9, 523264
	slli r4, r4, 2
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	add.s r5, r10, r4
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	add.s r6, r26, r4
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	loads.w r5, 0(r5)
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	loads.w r12, 0(r6)
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r5, r5, r14
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	beq r5, r1, .LBB0_186
# %bb.185:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r12, 0
.LBB0_186:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_184 Depth=3
	add.s r6, r16, r4
	loads.w r6, 0(r6)
	and r8, r6, r14
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r8, zero, .LBB0_194
# %bb.187:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r12, 523264
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r5, zero, .LBB0_195
.LBB0_188:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_184 Depth=3
	beq r8, r1, .LBB0_190
.LBB0_189:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
.LBB0_190:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_184 Depth=3
	setlt.u r6, r1, r5
	lui r5, 523264
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r6, zero, .LBB0_192
# %bb.191:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
.LBB0_192:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_184 Depth=3
	setlt.u r6, r1, r8
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r6, zero, .LBB0_183
# %bb.193:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r5, 0
	j .LBB0_183
.LBB0_194:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_184 Depth=3
	addli r9, r12, 0
	lui r12, 523264
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	beq r5, zero, .LBB0_188
.LBB0_195:                              # %scalar.ph109
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r8, r1, .LBB0_189
	j .LBB0_190
.LBB0_196:                              # %vector.body111.preheader
                                        #   in Loop: Header=BB0_181 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_198
.LBB0_197:                              # %vector.body111
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 337 11 is_stmt 1              # parallel-rne.mlir:337:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 359 13                        # parallel-rne.mlir:359:13
	add.s r5, r20, r18
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	seteq.d r2, r[7:8], r[23:24]
	.loc	1 359 13                        # parallel-rne.mlir:359:13
	stores.w r9, 12(r5)
	stores.w r12, 8(r5)
	stores.w r3, 4(r5)
	stores.w r4, 0(r5)
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	bneq r2, zero, .LBB0_180
.LBB0_198:                              # %vector.body111
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_181 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	add.ul r[2:3], r[7:8], r[27:28]
	slli r18, r2, 2
	add.s r2, r16, r18
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	add.s r13, r10, r18
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	add.s r15, r26, r18
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	loads.w r3, 0(r2)
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	loads.w r4, 0(r13)
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	and r3, r3, r14
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r4, r4, r14
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	seteq r5, r3, r1
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	seteq r12, r3, zero
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	seteq r6, r4, zero
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	seteq r9, r4, r1
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	max.u r3, r3, r4
	setlt.u r3, r1, r3
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	and r4, r5, r6
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	and r5, r12, r9
	lui r9, 523264
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	or r4, r4, r5
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	or r3, r3, r4
	lui r4, 523264
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r3, zero, .LBB0_200
# %bb.199:                              # %vector.body111
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r15)
.LBB0_200:                              # %vector.body111
                                        #   in Loop: Header=BB0_198 Depth=3
	loads.w r3, 4(r2)
	loads.w r5, 4(r13)
	and r3, r3, r14
	and r5, r5, r14
	seteq r6, r3, r1
	seteq r25, r3, zero
	seteq r12, r5, zero
	seteq r19, r5, r1
	max.u r3, r3, r5
	setlt.u r3, r1, r3
	and r5, r6, r12
	and r6, r25, r19
	or r5, r5, r6
	or r5, r3, r5
	lui r3, 523264
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r5, zero, .LBB0_202
# %bb.201:                              # %vector.body111
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 4(r15)
.LBB0_202:                              # %vector.body111
                                        #   in Loop: Header=BB0_198 Depth=3
	loads.w r5, 8(r2)
	loads.w r6, 8(r13)
	and r5, r5, r14
	and r6, r6, r14
	seteq r12, r5, r1
	seteq r11, r5, zero
	seteq r25, r6, r1
	seteq r19, r6, zero
	max.u r5, r5, r6
	setlt.u r5, r1, r5
	and r6, r12, r19
	and r11, r11, r25
	lui r12, 523264
	or r6, r6, r11
	or r5, r5, r6
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r5, zero, .LBB0_204
# %bb.203:                              # %vector.body111
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r15)
.LBB0_204:                              # %vector.body111
                                        #   in Loop: Header=BB0_198 Depth=3
	loads.w r2, 12(r2)
	loads.w r5, 12(r13)
	and r2, r2, r14
	and r5, r5, r14
	seteq r6, r2, r1
	seteq r19, r2, zero
	seteq r11, r5, zero
	seteq r13, r5, r1
	max.u r2, r2, r5
	setlt.u r2, r1, r2
	and r5, r6, r11
	and r6, r19, r13
	or r5, r5, r6
	or r2, r2, r5
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r2, zero, .LBB0_197
# %bb.205:                              # %vector.body111
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r15)
	j .LBB0_197
.LBB0_206:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r12
	addli r25, zero, 16
	.loc	1 328 7                         # parallel-rne.mlir:328:7
	mfence { sm }
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	addli r2, zero, 6
	bneq r12, r2, .LBB0_235
.LBB0_207:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -20(r30)                  # 4-byte Folded Reload
	loadli.w r3,  -24(r30)                  # 4-byte Folded Reload
	addli r17, zero, 1
	min.u r2, r2, r3
	loadli.w r3,  -28(r30)                  # 4-byte Folded Reload
	min.u r2, r2, r3
	setlt.u r2, r2, r25
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	storeli.w r2, -4(r30)                   # 4-byte Folded Spill
	addli r2, zero, 1536
	xfence
	zext_int2long r[27:28], r2
	mfence { lm, sm, gm }
	j .LBB0_209
.LBB0_208:                              # %middle.block102
                                        #   in Loop: Header=BB0_209 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 1664
	.loc	1 372 9 is_stmt 1               # parallel-rne.mlir:372:9
	andi r2, r17, 1
	addli r17, zero, 0
	zext_int2long r[27:28], r3
	beq r2, zero, .LBB0_234
.LBB0_209:                              # %vector.memcheck88
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_226 Depth 3
                                        #       Child Loop BB0_212 Depth 3
	.loc	1 373 11                        # parallel-rne.mlir:373:11
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	beq r2, zero, .LBB0_224
# %bb.210:                              # %scalar.ph94.preheader
                                        #   in Loop: Header=BB0_209 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_212
.LBB0_211:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 373 11                        # parallel-rne.mlir:373:11
	setlt.ul r5, r[2:3], r[21:22]
	.loc	1 395 13 is_stmt 1              # parallel-rne.mlir:395:13
	add.s r4, r20, r4
	.loc	1 373 11                        # parallel-rne.mlir:373:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 395 13                        # parallel-rne.mlir:395:13
	stores.w r7, 0(r4)
	.loc	1 373 11                        # parallel-rne.mlir:373:11
	beq r5, zero, .LBB0_208
.LBB0_212:                              # %scalar.ph94
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_209 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	add.ul r[4:5], r[2:3], r[27:28]
	lui r7, 523264
	lui r9, 523264
	slli r4, r4, 2
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	add.s r5, r10, r4
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	add.s r6, r26, r4
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	loads.w r5, 0(r5)
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	loads.w r12, 0(r6)
	.loc	1 379 19                        # parallel-rne.mlir:379:19
	and r5, r5, r14
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	beq r5, r1, .LBB0_214
# %bb.213:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r12, 0
.LBB0_214:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_212 Depth=3
	add.s r6, r16, r4
	loads.w r6, 0(r6)
	and r8, r6, r14
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r8, zero, .LBB0_222
# %bb.215:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r12, 523264
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r5, zero, .LBB0_223
.LBB0_216:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_212 Depth=3
	beq r8, r1, .LBB0_218
.LBB0_217:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
.LBB0_218:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_212 Depth=3
	setlt.u r6, r1, r5
	lui r5, 523264
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r6, zero, .LBB0_220
# %bb.219:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
.LBB0_220:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_212 Depth=3
	setlt.u r6, r1, r8
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r6, zero, .LBB0_211
# %bb.221:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r5, 0
	j .LBB0_211
.LBB0_222:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_212 Depth=3
	addli r9, r12, 0
	lui r12, 523264
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	beq r5, zero, .LBB0_216
.LBB0_223:                              # %scalar.ph94
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r8, r1, .LBB0_217
	j .LBB0_218
.LBB0_224:                              # %vector.body96.preheader
                                        #   in Loop: Header=BB0_209 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_226
.LBB0_225:                              # %vector.body96
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 373 11 is_stmt 1              # parallel-rne.mlir:373:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 395 13                        # parallel-rne.mlir:395:13
	add.s r5, r20, r18
	.loc	1 373 11                        # parallel-rne.mlir:373:11
	seteq.d r2, r[7:8], r[23:24]
	.loc	1 395 13                        # parallel-rne.mlir:395:13
	stores.w r9, 12(r5)
	stores.w r12, 8(r5)
	stores.w r3, 4(r5)
	stores.w r4, 0(r5)
	.loc	1 373 11                        # parallel-rne.mlir:373:11
	bneq r2, zero, .LBB0_208
.LBB0_226:                              # %vector.body96
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_209 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	add.ul r[2:3], r[7:8], r[27:28]
	slli r18, r2, 2
	add.s r2, r16, r18
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	add.s r13, r10, r18
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	add.s r15, r26, r18
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	loads.w r3, 0(r2)
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	loads.w r4, 0(r13)
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	and r3, r3, r14
	.loc	1 379 19                        # parallel-rne.mlir:379:19
	and r4, r4, r14
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	seteq r5, r3, r1
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	seteq r12, r3, zero
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	seteq r6, r4, zero
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	seteq r9, r4, r1
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	max.u r3, r3, r4
	setlt.u r3, r1, r3
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	and r4, r5, r6
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	and r5, r12, r9
	lui r9, 523264
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	or r4, r4, r5
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	or r3, r3, r4
	lui r4, 523264
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r3, zero, .LBB0_228
# %bb.227:                              # %vector.body96
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r15)
.LBB0_228:                              # %vector.body96
                                        #   in Loop: Header=BB0_226 Depth=3
	loads.w r3, 4(r2)
	loads.w r5, 4(r13)
	and r3, r3, r14
	and r5, r5, r14
	seteq r6, r3, r1
	seteq r25, r3, zero
	seteq r12, r5, zero
	seteq r19, r5, r1
	max.u r3, r3, r5
	setlt.u r3, r1, r3
	and r5, r6, r12
	and r6, r25, r19
	or r5, r5, r6
	or r5, r3, r5
	lui r3, 523264
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r5, zero, .LBB0_230
# %bb.229:                              # %vector.body96
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 4(r15)
.LBB0_230:                              # %vector.body96
                                        #   in Loop: Header=BB0_226 Depth=3
	loads.w r5, 8(r2)
	loads.w r6, 8(r13)
	and r5, r5, r14
	and r6, r6, r14
	seteq r12, r5, r1
	seteq r11, r5, zero
	seteq r25, r6, r1
	seteq r19, r6, zero
	max.u r5, r5, r6
	setlt.u r5, r1, r5
	and r6, r12, r19
	and r11, r11, r25
	lui r12, 523264
	or r6, r6, r11
	or r5, r5, r6
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r5, zero, .LBB0_232
# %bb.231:                              # %vector.body96
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r15)
.LBB0_232:                              # %vector.body96
                                        #   in Loop: Header=BB0_226 Depth=3
	loads.w r2, 12(r2)
	loads.w r5, 12(r13)
	and r2, r2, r14
	and r5, r5, r14
	seteq r6, r2, r1
	seteq r19, r2, zero
	seteq r11, r5, zero
	seteq r13, r5, r1
	max.u r2, r2, r5
	setlt.u r2, r1, r2
	and r5, r6, r11
	and r6, r19, r13
	or r5, r5, r6
	or r2, r2, r5
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r2, zero, .LBB0_225
# %bb.233:                              # %vector.body96
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r15)
	j .LBB0_225
.LBB0_234:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r12
	addli r25, zero, 16
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	mfence { sm }
.LBB0_235:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[2:3], zero
	.loc	1 400 7 is_stmt 1               # parallel-rne.mlir:400:7
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	loadli.w r2,  -52(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_264
# %bb.236:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -20(r30)                  # 4-byte Folded Reload
	loadli.w r3,  -24(r30)                  # 4-byte Folded Reload
	addli r11, zero, 1
	min.u r2, r2, r3
	loadli.w r3,  -28(r30)                  # 4-byte Folded Reload
	min.u r2, r2, r3
	setlt.u r2, r2, r25
	.loc	1 400 7                         # parallel-rne.mlir:400:7
	storeli.w r2, -4(r30)                   # 4-byte Folded Spill
	addli r2, zero, 1792
	xfence
	zext_int2long r[27:28], r2
	mfence { lm, sm, gm }
	j .LBB0_238
.LBB0_237:                              # %middle.block
                                        #   in Loop: Header=BB0_238 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 1920
	.loc	1 408 9 is_stmt 1               # parallel-rne.mlir:408:9
	andi r2, r11, 1
	addli r11, zero, 0
	zext_int2long r[27:28], r3
	beq r2, zero, .LBB0_263
.LBB0_238:                              # %vector.memcheck
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_255 Depth 3
                                        #       Child Loop BB0_241 Depth 3
	.loc	1 409 11                        # parallel-rne.mlir:409:11
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	beq r2, zero, .LBB0_253
# %bb.239:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_238 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_241
.LBB0_240:                              # %scalar.ph
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 409 11                        # parallel-rne.mlir:409:11
	setlt.ul r5, r[2:3], r[21:22]
	.loc	1 431 13 is_stmt 1              # parallel-rne.mlir:431:13
	add.s r4, r20, r4
	.loc	1 409 11                        # parallel-rne.mlir:409:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 431 13                        # parallel-rne.mlir:431:13
	stores.w r7, 0(r4)
	.loc	1 409 11                        # parallel-rne.mlir:409:11
	beq r5, zero, .LBB0_237
.LBB0_241:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_238 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	add.ul r[4:5], r[2:3], r[27:28]
	lui r7, 523264
	lui r12, 523264
	slli r4, r4, 2
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	add.s r5, r10, r4
	.loc	1 412 19                        # parallel-rne.mlir:412:19
	add.s r6, r26, r4
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	loads.w r5, 0(r5)
	.loc	1 412 19                        # parallel-rne.mlir:412:19
	loads.w r13, 0(r6)
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	and r5, r5, r14
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	beq r5, r1, .LBB0_243
# %bb.242:                              # %scalar.ph
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
.LBB0_243:                              # %scalar.ph
                                        #   in Loop: Header=BB0_241 Depth=3
	add.s r6, r16, r4
	loads.w r6, 0(r6)
	and r8, r6, r14
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r8, zero, .LBB0_251
# %bb.244:                              # %scalar.ph
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r13, 523264
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r5, zero, .LBB0_252
.LBB0_245:                              # %scalar.ph
                                        #   in Loop: Header=BB0_241 Depth=3
	beq r8, r1, .LBB0_247
.LBB0_246:                              # %scalar.ph
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r12, 0
.LBB0_247:                              # %scalar.ph
                                        #   in Loop: Header=BB0_241 Depth=3
	setlt.u r6, r1, r5
	lui r5, 523264
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r6, zero, .LBB0_249
# %bb.248:                              # %scalar.ph
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r13, 0
.LBB0_249:                              # %scalar.ph
                                        #   in Loop: Header=BB0_241 Depth=3
	setlt.u r6, r1, r8
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r6, zero, .LBB0_240
# %bb.250:                              # %scalar.ph
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r5, 0
	j .LBB0_240
.LBB0_251:                              # %scalar.ph
                                        #   in Loop: Header=BB0_241 Depth=3
	addli r12, r13, 0
	lui r13, 523264
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	beq r5, zero, .LBB0_245
.LBB0_252:                              # %scalar.ph
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r12, 0
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r8, r1, .LBB0_246
	j .LBB0_247
.LBB0_253:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_238 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	load.d r[7:8], -16(r30)                 # 8-byte Folded Reload
	j .LBB0_255
.LBB0_254:                              # %vector.body
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 409 11 is_stmt 1              # parallel-rne.mlir:409:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 431 13                        # parallel-rne.mlir:431:13
	add.s r2, r20, r2
	.loc	1 409 11                        # parallel-rne.mlir:409:11
	seteq.d r3, r[7:8], r[23:24]
	.loc	1 431 13                        # parallel-rne.mlir:431:13
	stores.w r15, 12(r2)
	stores.w r5, 8(r2)
	stores.w r12, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 409 11                        # parallel-rne.mlir:409:11
	bneq r3, zero, .LBB0_237
.LBB0_255:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_238 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	add.ul r[2:3], r[7:8], r[27:28]
	slli r2, r2, 2
	add.s r13, r16, r2
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	add.s r25, r10, r2
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	loads.w r3, 0(r13)
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	loads.w r4, 0(r25)
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	and r3, r3, r14
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	and r4, r4, r14
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	seteq r5, r3, r1
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	seteq r15, r3, zero
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	seteq r6, r4, zero
	.loc	1 421 19                        # parallel-rne.mlir:421:19
	seteq r12, r4, r1
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	max.u r3, r3, r4
	setlt.u r4, r1, r3
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	and r3, r5, r6
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	and r5, r15, r12
	lui r15, 523264
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	or r5, r3, r5
	.loc	1 412 19                        # parallel-rne.mlir:412:19
	add.s r3, r26, r2
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	or r5, r4, r5
	lui r4, 523264
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r5, zero, .LBB0_257
# %bb.256:                              # %vector.body
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r3)
.LBB0_257:                              # %vector.body
                                        #   in Loop: Header=BB0_255 Depth=3
	loads.w r5, 4(r13)
	loads.w r6, 4(r25)
	and r5, r5, r14
	and r6, r6, r14
	seteq r12, r5, r1
	seteq r18, r5, zero
	seteq r19, r6, zero
	seteq r17, r6, r1
	max.u r5, r5, r6
	setlt.u r5, r1, r5
	and r6, r12, r19
	and r12, r18, r17
	or r6, r6, r12
	lui r12, 523264
	or r5, r5, r6
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r5, zero, .LBB0_259
# %bb.258:                              # %vector.body
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 4(r3)
.LBB0_259:                              # %vector.body
                                        #   in Loop: Header=BB0_255 Depth=3
	loads.w r5, 8(r13)
	loads.w r6, 8(r25)
	and r5, r5, r14
	and r6, r6, r14
	seteq r17, r5, r1
	seteq r9, r5, zero
	seteq r19, r6, r1
	seteq r18, r6, zero
	max.u r5, r5, r6
	setlt.u r5, r1, r5
	and r6, r17, r18
	and r9, r9, r19
	or r6, r6, r9
	or r6, r5, r6
	lui r5, 523264
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r6, zero, .LBB0_261
# %bb.260:                              # %vector.body
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r3)
.LBB0_261:                              # %vector.body
                                        #   in Loop: Header=BB0_255 Depth=3
	loads.w r6, 12(r13)
	loads.w r9, 12(r25)
	and r6, r6, r14
	and r9, r9, r14
	seteq r13, r6, r1
	seteq r19, r6, zero
	seteq r17, r9, zero
	seteq r18, r9, r1
	max.u r6, r6, r9
	setlt.u r6, r1, r6
	and r9, r13, r17
	and r13, r19, r18
	or r9, r9, r13
	or r6, r6, r9
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r6, zero, .LBB0_254
# %bb.262:                              # %vector.body
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r3)
	j .LBB0_254
.LBB0_263:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r12
	addli r25, zero, 16
	.loc	1 400 7                         # parallel-rne.mlir:400:7
	mfence { sm }
.LBB0_264:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 436 7                         # parallel-rne.mlir:436:7
	addli r2, zero, 255
	addli r17, zero, 3
	csr_set csr5, r2
	sync_core
	.loc	1 437 7                         # parallel-rne.mlir:437:7
	beq r12, r17, .LBB0_5
# %bb.265:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r13,  -36(r30)                 # 4-byte Folded Reload
	load.d r[15:16], -48(r30)               # 8-byte Folded Reload
	addli r18, zero, 1
	addli r19, zero, 7
	addli r21, zero, 2
	addli r22, zero, 6
	addli r23, zero, 64
	.loc	1 448 7 is_stmt 1               # parallel-rne.mlir:448:7
	bneq r12, zero, .LBB0_6
# %bb.266:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -68(r30)                  # 4-byte Folded Reload
	.loc	1 448 7                         # parallel-rne.mlir:448:7
	load.d r[7:8], -64(r30)                 # 8-byte Folded Reload
	addli r6, zero, 12
	load.d r[4:5], -16(r30)                 # 8-byte Folded Reload
	load.d r[10:11], 24(r30)
	slli r2, r2, 4
	sll.d r[6:7], r[7:8], r6
	load.d r[8:9], -80(r30)                 # 8-byte Folded Reload
	sext_int2long r[2:3], r2
	add.ul r[6:7], r[10:11], r[6:7]
	addli r10, zero, 22
	sll.d r[8:9], r[8:9], r18
	min.sl r[4:5], r[2:3], r[4:5]
	xwait r10, 0
	add.ul r[6:7], r[6:7], r[8:9]
	addli r8, zero, 5
	addli.d r[4:5], r[4:5], 16
	lock zero, r8
	max.sl r[4:5], r[4:5], r[2:3]
	dma_cfg r18, zero, zero, 0
	dma_cfg zero, r18, zero, 1
	sub.sl r[2:3], r[4:5], r[2:3]
	zext_int2long r[4:5], r25
	.loc	1 444 13 is_stmt 1              # parallel-rne.mlir:444:13
	min.sl r[2:3], r[2:3], r[4:5]
	.loc	1 448 7                         # parallel-rne.mlir:448:7
	load.d r[4:5], -88(r30)                 # 8-byte Folded Reload
	dma_cfg r7, zero, zero, 2
	slli r4, r4, 2
	addli r5, zero, 512
	dma_cfg r6, r20, r4, 3
	addli r4, zero, 256
	dma_cfg r4, r5, r2, 4
	addli r2, zero, 23
	dma_run zero
	unlock r8
	xsignal r2, 0
	j .LBB0_6
.LBB0_267:                              # %._crit_edge
	.loc	1 450 5                         # parallel-rne.mlir:450:5
	xsignal zero, 0
	bneq r12, zero, .LBB0_269
# %bb.268:
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
.LBB0_269:
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-18660cx6" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
