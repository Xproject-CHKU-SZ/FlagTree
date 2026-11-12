	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-y_umhqj7" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -208
	addli r1, zero, 1
.Ltmp0:
	.loc	1 29 5 prologue_end             # parallel-rne.mlir:29:5
	core_id r13
	addli r30, sp, 144
	xsignal_mode_cfg r1
	beq r13, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r2, 1048575
	.loc	1 29 5                          # parallel-rne.mlir:29:5
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
	.loc	1 29 5                          # parallel-rne.mlir:29:5
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
	.loc	1 31 10 is_stmt 1               # parallel-rne.mlir:31:10
	load_param_i r4, 1
	loadli.w r3,  48(r30)
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	mul.s r1, r2, r1
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	mul.s r3, r1, r3
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	addli r2, r2, -1
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	div.s r2, r2, r4
	.loc	1 30 10                         # parallel-rne.mlir:30:10
	load_param_i r4, 0
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	mul.s r1, r2, r4
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	fmac.s r2, r2, r4
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	min.s r2, r2, r3
	.loc	1 52 5                          # parallel-rne.mlir:52:5
	ble.s r2, r1, .LBB0_271
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 40 11 is_stmt 1               # parallel-rne.mlir:40:11
	sext_int2long r[14:15], r1
	addli r12, zero, 0
	addli r16, zero, 4
	addli r18, zero, 64
	addli r19, zero, 2
	addli r20, zero, 7
	addli r24, zero, 1
	addli r25, zero, 3
	addli r21, zero, 6
	addli r23, zero, 128
	lui r22, 522240
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	store.d r[2:3], -112(r30)               # 8-byte Folded Spill
	addli r2, zero, 4095
	lui r1, 1048572
	store.d r[1:2], -136(r30)               # 8-byte Folded Spill
	lui r1, 112
	lui r2, 176
	ori r1, r1, 2048
	storeli.w r1, -116(r30)                 # 4-byte Folded Spill
	lui r1, 144
	ori r1, r1, 2048
	storeli.w r1, -120(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2048
	lui r2, 40
	storeli.w r1, -124(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r17, r1, 4095
	ori r1, r2, 2114
	storeli.w r1, -140(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 438 7                         # parallel-rne.mlir:438:7
	addli r1, zero, 17
	addli r18, zero, 64
	addli r20, zero, 7
	addli r24, zero, 1
	addli r23, zero, 128
	xsignal r1, 0
	.loc	1 439 7                         # parallel-rne.mlir:439:7
	addli r1, zero, 19
	xsignal r1, 0
	.loc	1 440 7                         # parallel-rne.mlir:440:7
	addli r1, zero, 21
	xsignal r1, 0
	.loc	1 441 7                         # parallel-rne.mlir:441:7
	addli r1, zero, 22
	xsignal r1, 0
	loadli.w r12,  -40(r30)                 # 4-byte Folded Reload
	load.d r[14:15], -48(r30)               # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 52 5                          # parallel-rne.mlir:52:5
	load.d r[1:2], -112(r30)                # 8-byte Folded Reload
	addli.d r[14:15], r[14:15], 1
	addli r12, r12, 1
	addli r16, zero, 4
	addli r19, zero, 2
	addli r21, zero, 6
	setlt.sl r1, r[14:15], r[1:2]
	beq r1, zero, .LBB0_271
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_39 Depth 2
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_42 Depth 3
                                        #     Child Loop BB0_74 Depth 2
                                        #       Child Loop BB0_91 Depth 3
                                        #       Child Loop BB0_77 Depth 3
                                        #     Child Loop BB0_102 Depth 2
                                        #       Child Loop BB0_119 Depth 3
                                        #       Child Loop BB0_105 Depth 3
                                        #     Child Loop BB0_130 Depth 2
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_133 Depth 3
                                        #     Child Loop BB0_158 Depth 2
                                        #       Child Loop BB0_175 Depth 3
                                        #       Child Loop BB0_161 Depth 3
                                        #     Child Loop BB0_186 Depth 2
                                        #       Child Loop BB0_203 Depth 3
                                        #       Child Loop BB0_189 Depth 3
                                        #     Child Loop BB0_214 Depth 2
                                        #       Child Loop BB0_231 Depth 3
                                        #       Child Loop BB0_217 Depth 3
                                        #     Child Loop BB0_242 Depth 2
                                        #       Child Loop BB0_259 Depth 3
                                        #       Child Loop BB0_245 Depth 3
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	loadli.w r1,  48(r30)
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	loadli.w r2,  44(r30)
	.loc	1 61 13                         # parallel-rne.mlir:61:13
	addli r5, zero, 8
	zext_int2long r[26:27], r18
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	div.s r1, r14, r1
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	div.s r3, r1, r2
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	div.s r4, r3, r18
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	slli r1, r4, 3
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	sub.s r2, r19, r1
	.loc	1 61 13                         # parallel-rne.mlir:61:13
	min.s r5, r2, r5
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	mod.s r2, r12, r16
	.loc	1 62 13                         # parallel-rne.mlir:62:13
	mod.s r6, r3, r5
	.loc	1 88 13                         # parallel-rne.mlir:88:13
	slli r7, r2, 14
	.loc	1 63 13                         # parallel-rne.mlir:63:13
	add.s r28, r6, r1
	.loc	1 90 13                         # parallel-rne.mlir:90:13
	lui r1, 32
	.loc	1 71 13                         # parallel-rne.mlir:71:13
	zext_int2long r[9:10], r28
	.loc	1 90 13                         # parallel-rne.mlir:90:13
	add.s r6, r7, r1
	.loc	1 94 7                          # parallel-rne.mlir:94:7
	store.d r[9:10], -72(r30)               # 8-byte Folded Spill
	bneq r13, r24, .LBB0_10
# %bb.8:                                # %.thread19
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 76 13                         # parallel-rne.mlir:76:13
	setlt.u r1, r24, r28
	.loc	1 75 13                         # parallel-rne.mlir:75:13
	addli r8, zero, 13
	sll.d r[8:9], r[9:10], r8
	.loc	1 80 13                         # parallel-rne.mlir:80:13
	bneq r1, zero, .LBB0_12
# %bb.9:                                # %.thread19
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 13 is_stmt 0                # parallel-rne.mlir:0:13
	zext_int2long r[10:11], zero
	j .LBB0_13
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 95 7 is_stmt 1                # parallel-rne.mlir:95:7
	bneq r13, r19, .LBB0_14
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 5
	xwait r19, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 1
	ds_cfg r25, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r18, zero, 13
	shuffle_batch r7, r6, r23, 1
	unlock zero
	xsignal r25, 0
	storeli.w r1, -60(r30)                  # 4-byte Folded Spill
	xsignal r16, 0
	j .LBB0_15
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	load.d r[10:11], -136(r30)              # 8-byte Folded Reload
	and.d r[10:11], r[8:9], r[10:11]
.LBB0_13:                               # %.thread19
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 80 13 is_stmt 1               # parallel-rne.mlir:80:13
	sub.sl r[8:9], r[8:9], r[10:11]
	storeli.w zero, -60(r30)                # 4-byte Folded Spill
	.loc	1 81 13                         # parallel-rne.mlir:81:13
	sra.d r[8:9], r[8:9], r20
	.loc	1 83 13                         # parallel-rne.mlir:83:13
	min.sl r[10:11], r[8:9], r[26:27]
	.loc	1 84 13                         # parallel-rne.mlir:84:13
	sub.sl r[8:9], r[10:11], r[8:9]
	.loc	1 94 7                          # parallel-rne.mlir:94:7
	addli r1, r8, 64
	load.d r[9:10], -72(r30)                # 8-byte Folded Reload
	addli r8, zero, 14
	xwait r25, 0
	lock zero, r16
	dma_cfg r24, r24, zero, 0
	sll.d r[8:9], r[9:10], r8
	load.d r[10:11], 0(r30)
	add.ul r[8:9], r[10:11], r[8:9]
	addli r10, zero, 256
	dma_cfg zero, r9, zero, 2
	dma_cfg r6, r8, r10, 3
	dma_cfg r10, r10, r1, 4
	dma_run zero
	unlock r16
	xsignal r19, 0
	.loc	1 95 7                          # parallel-rne.mlir:95:7
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -60(r30)                # 4-byte Folded Spill
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	slli r1, r4, 6
	.loc	1 109 7 is_stmt 1               # parallel-rne.mlir:109:7
	storeli.w r12, -40(r30)                 # 4-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r1, r3, r1
	slli r3, r2, 15
	div.s r8, r1, r5
	.loc	1 105 13 is_stmt 1              # parallel-rne.mlir:105:13
	lui r1, 48
	add.s r1, r3, r1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[4:5], r8
	sll.d r[4:5], r[4:5], r20
	.loc	1 109 7 is_stmt 1               # parallel-rne.mlir:109:7
	store.d r[4:5], -80(r30)                # 8-byte Folded Spill
	bneq r13, r21, .LBB0_17
# %bb.16:                               # %.thread20
                                        #   in Loop: Header=BB0_7 Depth=1
	load.d r[6:7], 8(r30)
	sll.d r[4:5], r[4:5], r24
	storeli.w zero, -56(r30)                # 4-byte Folded Spill
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
	xwait r20, 0
	lock zero, r16
	dma_cfg r24, r24, zero, 0
	add.ul r[4:5], r[6:7], r[4:5]
	addli r6, zero, 256
	dma_cfg zero, r5, zero, 2
	dma_cfg r1, r4, r6, 3
	addli r1, zero, 2048
	dma_cfg r6, r1, r23, 4
	dma_run zero
	unlock r16
	xsignal r21, 0
	j .LBB0_25
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 110 7                         # parallel-rne.mlir:110:7
	beq r13, r16, .LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r13, r20, .LBB0_24
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 9
	storeli.w zero, -56(r30)                # 4-byte Folded Spill
	xwait r21, 0
	xwait r4, 0
	lock zero, zero
	ds_cfg r25, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r3, r1, r23, 2
	addli r1, zero, 1
	unlock zero
	xsignal r20, 0
	storeli.w r1, -52(r30)                  # 4-byte Folded Spill
	addli r1, zero, 8
	j .LBB0_23
.LBB0_20:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 111 7                         # parallel-rne.mlir:111:7
	addli r1, zero, 8
	xwait r16, 0
	addli r5, zero, 0
	addli r4, zero, 1
	addli r6, zero, 11
	xwait r1, 0
	addli r1, zero, 1
	xwait r6, 0
.LBB0_21:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r6, r5, 14
	slli r5, r5, 8
	lock zero, r1
	mm_cfg r18, r23, r18, 0
	or r6, r6, r3
	or r5, r5, r3
	mm_cfg r16, r16, r1, 2
	mm r5, r7, r6, 5
	andi r6, r4, 1
	addli r5, zero, 1
	addli r4, zero, 0
	unlock r1
	bneq r6, zero, .LBB0_21
# %bb.22:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 5
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	addli r1, zero, 1
	storeli.w r1, -56(r30)                  # 4-byte Folded Spill
	addli r1, zero, 10
.LBB0_23:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
	j .LBB0_25
.LBB0_24:                               #   in Loop: Header=BB0_7 Depth=1
	storeli.w zero, -56(r30)                # 4-byte Folded Spill
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
.LBB0_25:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 896
	slli r1, r8, 7
	loadli.w r10,  -36(r30)                 # 4-byte Folded Reload
	lui r9, 80
	.loc	1 125 13 is_stmt 1              # parallel-rne.mlir:125:13
	slli r2, r2, 9
	zext_int2long r[11:12], r23
	storeli.w r28, -92(r30)                 # 4-byte Folded Spill
	store.d r[26:27], -88(r30)              # 8-byte Folded Spill
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	store.d r[14:15], -48(r30)              # 8-byte Folded Spill
	.loc	1 118 13                        # parallel-rne.mlir:118:13
	zext_int2long r[6:7], r1
	zext_int2long r[4:5], r4
	.loc	1 125 13                        # parallel-rne.mlir:125:13
	add.s r2, r2, r9
	mod.s r1, r10, r16
	.loc	1 120 13                        # parallel-rne.mlir:120:13
	min.ul r[4:5], r[6:7], r[4:5]
	addli.d r[4:5], r[4:5], 128
	.loc	1 122 13                        # parallel-rne.mlir:122:13
	max.ul r[4:5], r[4:5], r[6:7]
	sub.sl r[4:5], r[4:5], r[6:7]
	.loc	1 123 13                        # parallel-rne.mlir:123:13
	min.ul r[20:21], r[4:5], r[11:12]
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	store.d r[20:21], -104(r30)             # 8-byte Folded Spill
	bneq r13, r24, .LBB0_27
# %bb.26:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	load.d r[4:5], -80(r30)                 # 8-byte Folded Reload
	addli r6, zero, 13
	.loc	1 132 13                        # parallel-rne.mlir:132:13
	slli r1, r1, 15
	addli r10, r10, 1
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	xwait r6, 0
	load.d r[6:7], 16(r30)
	lock zero, r16
	sll.d r[4:5], r[4:5], r24
	dma_cfg zero, r24, zero, 0
	add.ul r[4:5], r[6:7], r[4:5]
	slli r6, r20, 1
	dma_cfg zero, r5, zero, 2
	dma_cfg r2, r4, r6, 3
	addli r2, zero, 256
	addli r4, zero, 512
	dma_cfg r4, r2, r24, 4
	dma_run zero
	unlock r16
	storeli.w r10, -36(r30)                 # 4-byte Folded Spill
	.loc	1 132 13                        # parallel-rne.mlir:132:13
	loadli.w r2,  -116(r30)                 # 4-byte Folded Reload
	add.s r28, r1, r2
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	addli r1, zero, 12
	j .LBB0_31
.LBB0_27:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 132 13                        # parallel-rne.mlir:132:13
	loadli.w r4,  -116(r30)                 # 4-byte Folded Reload
	slli r1, r1, 15
	addli r10, r10, 1
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	storeli.w r10, -36(r30)                 # 4-byte Folded Spill
	.loc	1 132 13                        # parallel-rne.mlir:132:13
	add.s r28, r1, r4
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	bneq r13, r25, .LBB0_33
# %bb.28:                               #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 10
	addli r1, zero, 0
	lui r6, 8
	xwait r4, 0
	addli r4, zero, 12
	xwait r4, 0
	addli r4, zero, 17
	xwait r4, 0
	lock zero, r19
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 127
	ew_cfg zero, r4, zero, 2
	ew_cfg r24, zero, zero, 3
.LBB0_29:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r28, r1
	add.s r5, r3, r1
	addli r1, r1, 512
	dsmadd r4, r5, r2, 0
	bneq r1, r6, .LBB0_29
# %bb.30:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	unlock r19
	xsignal r1, 0
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
	addli r1, zero, 14
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
	.loc	1 135 13 is_stmt 1              # parallel-rne.mlir:135:13
	loadli.w r1,  -120(r30)                 # 4-byte Folded Reload
	add.s r23, r3, r1
	.loc	1 138 13                        # parallel-rne.mlir:138:13
	loadli.w r1,  -124(r30)                 # 4-byte Folded Reload
	add.s r20, r3, r1
	bneq r13, r25, .LBB0_36
# %bb.32:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 141 7                         # parallel-rne.mlir:141:7
	addli r1, zero, 15
	xwait r1, 0
	.loc	1 142 7                         # parallel-rne.mlir:142:7
	addli r1, zero, 18
	xwait r1, 0
	.loc	1 143 7                         # parallel-rne.mlir:143:7
	addli r1, zero, 20
	xwait r1, 0
	.loc	1 144 7                         # parallel-rne.mlir:144:7
	addli r1, zero, 23
	xwait r1, 0
	j .LBB0_36
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 135 13                        # parallel-rne.mlir:135:13
	loadli.w r1,  -120(r30)                 # 4-byte Folded Reload
	add.s r23, r3, r1
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	addli r1, zero, 5
	bneq r13, r1, .LBB0_35
# %bb.34:                               # %.thread23
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 14
	addli r2, zero, 2047
	xwait r1, 0
	addli r1, zero, 19
	xwait r1, 0
	lock zero, r19
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r2, zero, 2
	ew_cfg r16, zero, zero, 3
	ew_cfg r16, r16, zero, 19
	ew_cfg r19, zero, zero, 10
	loadli.w r1,  -140(r30)                 # 4-byte Folded Reload
	ew_cfg r19, r24, r1, 11
	lui r1, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r16, r1, 14
	ew_cfg zero, zero, zero, 15
	sslut r23, r28, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r19
	.loc	1 138 13                        # parallel-rne.mlir:138:13
	loadli.w r1,  -124(r30)                 # 4-byte Folded Reload
	add.s r20, r3, r1
	.loc	1 139 7                         # parallel-rne.mlir:139:7
	addli r1, zero, 16
	xwait r1, 0
	addli r1, zero, 21
	xwait r1, 0
	lock zero, r19
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r1, 0
	addli r1, zero, 15
	ew_cfg zero, r2, zero, 2
	ew_cfg r16, zero, zero, 3
	ew_cfg r16, r16, r16, 19
	dsmul r20, r28, r23, 0
	ew_cfg zero, zero, zero, 19
	unlock r19
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	addli r1, zero, 20
	xsignal r1, 0
	j .LBB0_36
.LBB0_35:                               # %.thread81
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 138 13                        # parallel-rne.mlir:138:13
	loadli.w r1,  -124(r30)                 # 4-byte Folded Reload
	add.s r20, r3, r1
.LBB0_36:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 13 is_stmt 0                # parallel-rne.mlir:0:13
	ori r1, r9, 2048
	.loc	1 146 7 is_stmt 1               # parallel-rne.mlir:146:7
	xfence
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	mfence { lm, sm, gm }
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r21, r3, r1
	.loc	1 148 7 is_stmt 1               # parallel-rne.mlir:148:7
	addli r1, zero, 255
	csr_set csr5, r1
	sub.s r1, r21, r28
	storeli.w r1, -24(r30)                  # 4-byte Folded Spill
	sub.s r1, r21, r23
	storeli.w r1, -28(r30)                  # 4-byte Folded Spill
	sub.s r1, r21, r20
	storeli.w r1, -32(r30)                  # 4-byte Folded Spill
	addli r1, zero, 127
	sync_core
	zext_int2long r[14:15], r1
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r1
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	bneq r1, zero, .LBB0_65
# %bb.37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -28(r30)                  # 4-byte Folded Reload
	addli r25, zero, 7
	min.u r1, r1, r2
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	zext_int2long r[2:3], zero
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_39
.LBB0_38:                               # %middle.block191
                                        #   in Loop: Header=BB0_39 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[3:4], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r25
	.loc	1 157 9 is_stmt 1               # parallel-rne.mlir:157:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_64
.LBB0_39:                               # %.preheader30
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_42 Depth 3
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r25
	beq r1, zero, .LBB0_54
# %bb.40:                               # %scalar.ph183.preheader
                                        #   in Loop: Header=BB0_39 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_42
.LBB0_41:                               # %scalar.ph183
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	setlt.ul r1, r[4:5], r[14:15]
	.loc	1 180 13 is_stmt 1              # parallel-rne.mlir:180:13
	add.s r6, r21, r6
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 180 13                        # parallel-rne.mlir:180:13
	stores.w r7, 0(r6)
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	beq r1, zero, .LBB0_38
.LBB0_42:                               # %scalar.ph183
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	add.ul r[6:7], r[4:5], r[2:3]
	lui r9, 523264
	slli r6, r6, 2
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	add.s r1, r23, r6
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	add.s r7, r20, r6
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	loads.w r1, 0(r1)
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	loads.w r10, 0(r7)
	lui r7, 523264
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	and r1, r1, r17
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	beq r1, r22, .LBB0_44
# %bb.43:                               # %scalar.ph183
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
.LBB0_44:                               # %scalar.ph183
                                        #   in Loop: Header=BB0_42 Depth=3
	add.s r8, r28, r6
	loads.w r8, 0(r8)
	and r8, r8, r17
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r8, zero, .LBB0_52
# %bb.45:                               # %scalar.ph183
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r10, 523264
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r1, zero, .LBB0_53
.LBB0_46:                               # %scalar.ph183
                                        #   in Loop: Header=BB0_42 Depth=3
	beq r8, r22, .LBB0_48
.LBB0_47:                               # %scalar.ph183
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
.LBB0_48:                               # %scalar.ph183
                                        #   in Loop: Header=BB0_42 Depth=3
	setlt.u r9, r22, r1
	lui r1, 523264
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r9, zero, .LBB0_50
# %bb.49:                               # %scalar.ph183
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r10, 0
.LBB0_50:                               # %scalar.ph183
                                        #   in Loop: Header=BB0_42 Depth=3
	setlt.u r8, r22, r8
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r8, zero, .LBB0_41
# %bb.51:                               # %scalar.ph183
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r1, 0
	j .LBB0_41
.LBB0_52:                               # %scalar.ph183
                                        #   in Loop: Header=BB0_42 Depth=3
	addli r9, r10, 0
	lui r10, 523264
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	beq r1, zero, .LBB0_46
.LBB0_53:                               # %scalar.ph183
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r8, r22, .LBB0_47
	j .LBB0_48
.LBB0_54:                               # %vector.body185.preheader
                                        #   in Loop: Header=BB0_39 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_56
.LBB0_55:                               # %vector.body185
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 158 11 is_stmt 1              # parallel-rne.mlir:158:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 180 13                        # parallel-rne.mlir:180:13
	add.s r4, r21, r27
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	seteq.d r1, r[7:8], r[11:12]
	.loc	1 180 13                        # parallel-rne.mlir:180:13
	stores.w r10, 12(r4)
	stores.w r6, 8(r4)
	stores.w r5, 4(r4)
	stores.w r9, 0(r4)
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	bneq r1, zero, .LBB0_38
.LBB0_56:                               # %vector.body185
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	add.ul r[4:5], r[7:8], r[2:3]
	slli r27, r4, 2
	add.s r4, r28, r27
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	add.s r16, r23, r27
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	add.s r26, r20, r27
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	loads.w r1, 0(r4)
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	loads.w r5, 0(r16)
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	and r1, r1, r17
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	and r5, r5, r17
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	seteq r6, r1, r22
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	seteq r19, r1, zero
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	seteq r9, r5, zero
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	seteq r10, r5, r22
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	max.u r1, r1, r5
	setlt.u r1, r22, r1
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	and r5, r6, r9
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	and r6, r19, r10
	lui r10, 523264
	lui r9, 523264
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	or r5, r5, r6
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	or r1, r1, r5
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r1, zero, .LBB0_58
# %bb.57:                               # %vector.body185
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r26)
.LBB0_58:                               # %vector.body185
                                        #   in Loop: Header=BB0_56 Depth=3
	loads.w r1, 4(r4)
	loads.w r5, 4(r16)
	and r1, r1, r17
	and r5, r5, r17
	seteq r6, r1, r22
	seteq r18, r1, zero
	seteq r19, r5, zero
	seteq r13, r5, r22
	max.u r1, r1, r5
	setlt.u r1, r22, r1
	and r5, r6, r19
	and r6, r18, r13
	or r5, r5, r6
	or r1, r1, r5
	lui r5, 523264
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r1, zero, .LBB0_60
# %bb.59:                               # %vector.body185
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 4(r26)
.LBB0_60:                               # %vector.body185
                                        #   in Loop: Header=BB0_56 Depth=3
	loads.w r1, 8(r4)
	loads.w r6, 8(r16)
	and r1, r1, r17
	and r6, r6, r17
	seteq r13, r1, r22
	seteq r24, r1, zero
	seteq r18, r6, zero
	seteq r19, r6, r22
	max.u r1, r1, r6
	setlt.u r1, r22, r1
	and r6, r13, r18
	and r13, r24, r19
	or r6, r6, r13
	or r1, r1, r6
	lui r6, 523264
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r1, zero, .LBB0_62
# %bb.61:                               # %vector.body185
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 8(r26)
.LBB0_62:                               # %vector.body185
                                        #   in Loop: Header=BB0_56 Depth=3
	loads.w r1, 12(r4)
	loads.w r4, 12(r16)
	and r1, r1, r17
	and r4, r4, r17
	seteq r13, r1, r22
	seteq r19, r1, zero
	seteq r16, r4, zero
	seteq r18, r4, r22
	max.u r1, r1, r4
	setlt.u r1, r22, r1
	and r4, r13, r16
	and r13, r19, r18
	or r4, r4, r13
	or r1, r1, r4
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r1, zero, .LBB0_55
# %bb.63:                               # %vector.body185
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r26)
	j .LBB0_55
.LBB0_64:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 29 5 is_stmt 1                # parallel-rne.mlir:29:5
	core_id r1
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	mfence { sm }
.LBB0_65:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r25
	.loc	1 185 7                         # parallel-rne.mlir:185:7
	addli r2, zero, 1
	beq r1, r2, .LBB0_72
# %bb.66:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 221 7                         # parallel-rne.mlir:221:7
	loadli.w r1,  -60(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_100
.LBB0_67:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 257 7                         # parallel-rne.mlir:257:7
	addli r1, zero, 3
	beq r25, r1, .LBB0_128
.LBB0_68:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 293 7                         # parallel-rne.mlir:293:7
	loadli.w r1,  -56(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_156
.LBB0_69:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 329 7                         # parallel-rne.mlir:329:7
	addli r1, zero, 5
	beq r25, r1, .LBB0_184
.LBB0_70:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 365 7                         # parallel-rne.mlir:365:7
	addli r1, zero, 6
	beq r25, r1, .LBB0_212
.LBB0_71:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 401 7                         # parallel-rne.mlir:401:7
	loadli.w r1,  -52(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_240
	j .LBB0_268
.LBB0_72:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -28(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 185 7 is_stmt 1               # parallel-rne.mlir:185:7
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	addli r1, zero, 8
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_74
.LBB0_73:                               # %middle.block176
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[3:4], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 193 9 is_stmt 1               # parallel-rne.mlir:193:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_99
.LBB0_74:                               # %.preheader29
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_91 Depth 3
                                        #       Child Loop BB0_77 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	.loc	1 194 11 is_stmt 1              # parallel-rne.mlir:194:11
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_89
# %bb.75:                               # %scalar.ph168.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_77
.LBB0_76:                               # %scalar.ph168
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 194 11                        # parallel-rne.mlir:194:11
	setlt.ul r1, r[4:5], r[14:15]
	.loc	1 216 13 is_stmt 1              # parallel-rne.mlir:216:13
	add.s r6, r21, r6
	.loc	1 194 11                        # parallel-rne.mlir:194:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 216 13                        # parallel-rne.mlir:216:13
	stores.w r7, 0(r6)
	.loc	1 194 11                        # parallel-rne.mlir:194:11
	beq r1, zero, .LBB0_73
.LBB0_77:                               # %scalar.ph168
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	add.ul r[6:7], r[4:5], r[2:3]
	lui r9, 523264
	slli r6, r6, 2
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	add.s r1, r23, r6
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	add.s r7, r20, r6
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	loads.w r1, 0(r1)
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	loads.w r10, 0(r7)
	lui r7, 523264
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	and r1, r1, r17
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	beq r1, r22, .LBB0_79
# %bb.78:                               # %scalar.ph168
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
.LBB0_79:                               # %scalar.ph168
                                        #   in Loop: Header=BB0_77 Depth=3
	add.s r8, r28, r6
	loads.w r8, 0(r8)
	and r8, r8, r17
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r8, zero, .LBB0_87
# %bb.80:                               # %scalar.ph168
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r10, 523264
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_88
.LBB0_81:                               # %scalar.ph168
                                        #   in Loop: Header=BB0_77 Depth=3
	beq r8, r22, .LBB0_83
.LBB0_82:                               # %scalar.ph168
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
.LBB0_83:                               # %scalar.ph168
                                        #   in Loop: Header=BB0_77 Depth=3
	setlt.u r9, r22, r1
	lui r1, 523264
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r9, zero, .LBB0_85
# %bb.84:                               # %scalar.ph168
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r10, 0
.LBB0_85:                               # %scalar.ph168
                                        #   in Loop: Header=BB0_77 Depth=3
	setlt.u r8, r22, r8
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r8, zero, .LBB0_76
# %bb.86:                               # %scalar.ph168
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r1, 0
	j .LBB0_76
.LBB0_87:                               # %scalar.ph168
                                        #   in Loop: Header=BB0_77 Depth=3
	addli r9, r10, 0
	lui r10, 523264
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	beq r1, zero, .LBB0_81
.LBB0_88:                               # %scalar.ph168
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r8, r22, .LBB0_82
	j .LBB0_83
.LBB0_89:                               # %vector.body170.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_91
.LBB0_90:                               # %vector.body170
                                        #   in Loop: Header=BB0_91 Depth=3
	.loc	1 194 11 is_stmt 1              # parallel-rne.mlir:194:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 216 13                        # parallel-rne.mlir:216:13
	add.s r4, r21, r27
	.loc	1 194 11                        # parallel-rne.mlir:194:11
	seteq.d r1, r[7:8], r[11:12]
	.loc	1 216 13                        # parallel-rne.mlir:216:13
	stores.w r10, 12(r4)
	stores.w r6, 8(r4)
	stores.w r5, 4(r4)
	stores.w r9, 0(r4)
	.loc	1 194 11                        # parallel-rne.mlir:194:11
	bneq r1, zero, .LBB0_73
.LBB0_91:                               # %vector.body170
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	add.ul r[4:5], r[7:8], r[2:3]
	slli r27, r4, 2
	add.s r4, r28, r27
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	add.s r16, r23, r27
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	add.s r26, r20, r27
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	loads.w r1, 0(r4)
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	loads.w r5, 0(r16)
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	and r1, r1, r17
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	and r5, r5, r17
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	seteq r6, r1, r22
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	seteq r13, r1, zero
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	seteq r9, r5, zero
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	seteq r10, r5, r22
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	max.u r1, r1, r5
	setlt.u r1, r22, r1
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	and r5, r6, r9
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	and r6, r13, r10
	lui r10, 523264
	lui r9, 523264
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	or r5, r5, r6
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	or r1, r1, r5
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_93
# %bb.92:                               # %vector.body170
                                        #   in Loop: Header=BB0_91 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r26)
.LBB0_93:                               # %vector.body170
                                        #   in Loop: Header=BB0_91 Depth=3
	loads.w r1, 4(r4)
	loads.w r5, 4(r16)
	and r1, r1, r17
	and r5, r5, r17
	seteq r6, r1, r22
	seteq r18, r1, zero
	seteq r13, r5, zero
	seteq r19, r5, r22
	max.u r1, r1, r5
	setlt.u r1, r22, r1
	and r5, r6, r13
	and r6, r18, r19
	or r5, r5, r6
	or r1, r1, r5
	lui r5, 523264
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_95
# %bb.94:                               # %vector.body170
                                        #   in Loop: Header=BB0_91 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 4(r26)
.LBB0_95:                               # %vector.body170
                                        #   in Loop: Header=BB0_91 Depth=3
	loads.w r1, 8(r4)
	loads.w r6, 8(r16)
	and r1, r1, r17
	and r6, r6, r17
	seteq r13, r1, r22
	seteq r24, r1, zero
	seteq r18, r6, zero
	seteq r19, r6, r22
	max.u r1, r1, r6
	setlt.u r1, r22, r1
	and r6, r13, r18
	and r13, r24, r19
	or r6, r6, r13
	or r1, r1, r6
	lui r6, 523264
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_97
# %bb.96:                               # %vector.body170
                                        #   in Loop: Header=BB0_91 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 8(r26)
.LBB0_97:                               # %vector.body170
                                        #   in Loop: Header=BB0_91 Depth=3
	loads.w r1, 12(r4)
	loads.w r4, 12(r16)
	and r1, r1, r17
	and r4, r4, r17
	seteq r13, r1, r22
	seteq r19, r1, zero
	seteq r16, r4, zero
	seteq r18, r4, r22
	max.u r1, r1, r4
	setlt.u r1, r22, r1
	and r4, r13, r16
	and r13, r19, r18
	or r4, r4, r13
	or r1, r1, r4
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_90
# %bb.98:                               # %vector.body170
                                        #   in Loop: Header=BB0_91 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r26)
	j .LBB0_90
.LBB0_99:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 185 7 is_stmt 1               # parallel-rne.mlir:185:7
	mfence { sm }
	.loc	1 221 7                         # parallel-rne.mlir:221:7
	loadli.w r1,  -60(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_67
.LBB0_100:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -28(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	zext_int2long r[2:3], r2
	.loc	1 221 7                         # parallel-rne.mlir:221:7
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_102
.LBB0_101:                              # %middle.block161
                                        #   in Loop: Header=BB0_102 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[3:4], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 229 9 is_stmt 1               # parallel-rne.mlir:229:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_127
.LBB0_102:                              # %.preheader28
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_119 Depth 3
                                        #       Child Loop BB0_105 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	.loc	1 230 11 is_stmt 1              # parallel-rne.mlir:230:11
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_117
# %bb.103:                              # %scalar.ph153.preheader
                                        #   in Loop: Header=BB0_102 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_105
.LBB0_104:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 230 11                        # parallel-rne.mlir:230:11
	setlt.ul r1, r[4:5], r[14:15]
	.loc	1 252 13 is_stmt 1              # parallel-rne.mlir:252:13
	add.s r6, r21, r6
	.loc	1 230 11                        # parallel-rne.mlir:230:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 252 13                        # parallel-rne.mlir:252:13
	stores.w r7, 0(r6)
	.loc	1 230 11                        # parallel-rne.mlir:230:11
	beq r1, zero, .LBB0_101
.LBB0_105:                              # %scalar.ph153
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	add.ul r[6:7], r[4:5], r[2:3]
	lui r9, 523264
	slli r6, r6, 2
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.s r1, r23, r6
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	add.s r7, r20, r6
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	loads.w r1, 0(r1)
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	loads.w r10, 0(r7)
	lui r7, 523264
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	and r1, r1, r17
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	beq r1, r22, .LBB0_107
# %bb.106:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
.LBB0_107:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_105 Depth=3
	add.s r8, r28, r6
	loads.w r8, 0(r8)
	and r8, r8, r17
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r8, zero, .LBB0_115
# %bb.108:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r10, 523264
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r1, zero, .LBB0_116
.LBB0_109:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_105 Depth=3
	beq r8, r22, .LBB0_111
.LBB0_110:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
.LBB0_111:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_105 Depth=3
	setlt.u r9, r22, r1
	lui r1, 523264
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r9, zero, .LBB0_113
# %bb.112:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r10, 0
.LBB0_113:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_105 Depth=3
	setlt.u r8, r22, r8
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r8, zero, .LBB0_104
# %bb.114:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r1, 0
	j .LBB0_104
.LBB0_115:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_105 Depth=3
	addli r9, r10, 0
	lui r10, 523264
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	beq r1, zero, .LBB0_109
.LBB0_116:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r8, r22, .LBB0_110
	j .LBB0_111
.LBB0_117:                              # %vector.body155.preheader
                                        #   in Loop: Header=BB0_102 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_119
.LBB0_118:                              # %vector.body155
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 230 11 is_stmt 1              # parallel-rne.mlir:230:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 252 13                        # parallel-rne.mlir:252:13
	add.s r4, r21, r27
	.loc	1 230 11                        # parallel-rne.mlir:230:11
	seteq.d r1, r[7:8], r[11:12]
	.loc	1 252 13                        # parallel-rne.mlir:252:13
	stores.w r10, 12(r4)
	stores.w r6, 8(r4)
	stores.w r5, 4(r4)
	stores.w r9, 0(r4)
	.loc	1 230 11                        # parallel-rne.mlir:230:11
	bneq r1, zero, .LBB0_101
.LBB0_119:                              # %vector.body155
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	add.ul r[4:5], r[7:8], r[2:3]
	slli r27, r4, 2
	add.s r4, r28, r27
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.s r16, r23, r27
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	add.s r26, r20, r27
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	loads.w r1, 0(r4)
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	loads.w r5, 0(r16)
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	and r1, r1, r17
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	and r5, r5, r17
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	seteq r6, r1, r22
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	seteq r13, r1, zero
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	seteq r9, r5, zero
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	seteq r10, r5, r22
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	max.u r1, r1, r5
	setlt.u r1, r22, r1
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	and r5, r6, r9
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	and r6, r13, r10
	lui r10, 523264
	lui r9, 523264
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	or r5, r5, r6
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	or r1, r1, r5
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r1, zero, .LBB0_121
# %bb.120:                              # %vector.body155
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r26)
.LBB0_121:                              # %vector.body155
                                        #   in Loop: Header=BB0_119 Depth=3
	loads.w r1, 4(r4)
	loads.w r5, 4(r16)
	and r1, r1, r17
	and r5, r5, r17
	seteq r6, r1, r22
	seteq r18, r1, zero
	seteq r13, r5, zero
	seteq r19, r5, r22
	max.u r1, r1, r5
	setlt.u r1, r22, r1
	and r5, r6, r13
	and r6, r18, r19
	or r5, r5, r6
	or r1, r1, r5
	lui r5, 523264
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r1, zero, .LBB0_123
# %bb.122:                              # %vector.body155
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 4(r26)
.LBB0_123:                              # %vector.body155
                                        #   in Loop: Header=BB0_119 Depth=3
	loads.w r1, 8(r4)
	loads.w r6, 8(r16)
	and r1, r1, r17
	and r6, r6, r17
	seteq r13, r1, r22
	seteq r24, r1, zero
	seteq r18, r6, zero
	seteq r19, r6, r22
	max.u r1, r1, r6
	setlt.u r1, r22, r1
	and r6, r13, r18
	and r13, r24, r19
	or r6, r6, r13
	or r1, r1, r6
	lui r6, 523264
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r1, zero, .LBB0_125
# %bb.124:                              # %vector.body155
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 8(r26)
.LBB0_125:                              # %vector.body155
                                        #   in Loop: Header=BB0_119 Depth=3
	loads.w r1, 12(r4)
	loads.w r4, 12(r16)
	and r1, r1, r17
	and r4, r4, r17
	seteq r13, r1, r22
	seteq r19, r1, zero
	seteq r16, r4, zero
	seteq r18, r4, r22
	max.u r1, r1, r4
	setlt.u r1, r22, r1
	and r4, r13, r16
	and r13, r19, r18
	or r4, r4, r13
	or r1, r1, r4
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r1, zero, .LBB0_118
# %bb.126:                              # %vector.body155
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r26)
	j .LBB0_118
.LBB0_127:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 221 7 is_stmt 1               # parallel-rne.mlir:221:7
	mfence { sm }
	.loc	1 257 7                         # parallel-rne.mlir:257:7
	addli r1, zero, 3
	bneq r25, r1, .LBB0_68
.LBB0_128:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -28(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 257 7                         # parallel-rne.mlir:257:7
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	addli r1, zero, 24
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_130
.LBB0_129:                              # %middle.block146
                                        #   in Loop: Header=BB0_130 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 31
	load.d r[3:4], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 265 9 is_stmt 1               # parallel-rne.mlir:265:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_155
.LBB0_130:                              # %.preheader27
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_133 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	.loc	1 266 11 is_stmt 1              # parallel-rne.mlir:266:11
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_145
# %bb.131:                              # %scalar.ph138.preheader
                                        #   in Loop: Header=BB0_130 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_133
.LBB0_132:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 266 11                        # parallel-rne.mlir:266:11
	setlt.ul r1, r[4:5], r[14:15]
	.loc	1 288 13 is_stmt 1              # parallel-rne.mlir:288:13
	add.s r6, r21, r6
	.loc	1 266 11                        # parallel-rne.mlir:266:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 288 13                        # parallel-rne.mlir:288:13
	stores.w r7, 0(r6)
	.loc	1 266 11                        # parallel-rne.mlir:266:11
	beq r1, zero, .LBB0_129
.LBB0_133:                              # %scalar.ph138
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	add.ul r[6:7], r[4:5], r[2:3]
	lui r9, 523264
	slli r6, r6, 2
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	add.s r1, r23, r6
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	add.s r7, r20, r6
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	loads.w r1, 0(r1)
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	loads.w r10, 0(r7)
	lui r7, 523264
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	and r1, r1, r17
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	beq r1, r22, .LBB0_135
# %bb.134:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
.LBB0_135:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_133 Depth=3
	add.s r8, r28, r6
	loads.w r8, 0(r8)
	and r8, r8, r17
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r8, zero, .LBB0_143
# %bb.136:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r10, 523264
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r1, zero, .LBB0_144
.LBB0_137:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_133 Depth=3
	beq r8, r22, .LBB0_139
.LBB0_138:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
.LBB0_139:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_133 Depth=3
	setlt.u r9, r22, r1
	lui r1, 523264
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r9, zero, .LBB0_141
# %bb.140:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r10, 0
.LBB0_141:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_133 Depth=3
	setlt.u r8, r22, r8
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r8, zero, .LBB0_132
# %bb.142:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r1, 0
	j .LBB0_132
.LBB0_143:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_133 Depth=3
	addli r9, r10, 0
	lui r10, 523264
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	beq r1, zero, .LBB0_137
.LBB0_144:                              # %scalar.ph138
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r8, r22, .LBB0_138
	j .LBB0_139
.LBB0_145:                              # %vector.body140.preheader
                                        #   in Loop: Header=BB0_130 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_147
.LBB0_146:                              # %vector.body140
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 266 11 is_stmt 1              # parallel-rne.mlir:266:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 288 13                        # parallel-rne.mlir:288:13
	add.s r4, r21, r27
	.loc	1 266 11                        # parallel-rne.mlir:266:11
	seteq.d r1, r[7:8], r[11:12]
	.loc	1 288 13                        # parallel-rne.mlir:288:13
	stores.w r10, 12(r4)
	stores.w r6, 8(r4)
	stores.w r5, 4(r4)
	stores.w r9, 0(r4)
	.loc	1 266 11                        # parallel-rne.mlir:266:11
	bneq r1, zero, .LBB0_129
.LBB0_147:                              # %vector.body140
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	add.ul r[4:5], r[7:8], r[2:3]
	slli r27, r4, 2
	add.s r4, r28, r27
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	add.s r16, r23, r27
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	add.s r26, r20, r27
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	loads.w r1, 0(r4)
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	loads.w r5, 0(r16)
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	and r1, r1, r17
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	and r5, r5, r17
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	seteq r6, r1, r22
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	seteq r13, r1, zero
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	seteq r9, r5, zero
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	seteq r10, r5, r22
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	max.u r1, r1, r5
	setlt.u r1, r22, r1
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	and r5, r6, r9
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	and r6, r13, r10
	lui r10, 523264
	lui r9, 523264
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	or r5, r5, r6
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	or r1, r1, r5
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r1, zero, .LBB0_149
# %bb.148:                              # %vector.body140
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r26)
.LBB0_149:                              # %vector.body140
                                        #   in Loop: Header=BB0_147 Depth=3
	loads.w r1, 4(r4)
	loads.w r5, 4(r16)
	and r1, r1, r17
	and r5, r5, r17
	seteq r6, r1, r22
	seteq r18, r1, zero
	seteq r13, r5, zero
	seteq r19, r5, r22
	max.u r1, r1, r5
	setlt.u r1, r22, r1
	and r5, r6, r13
	and r6, r18, r19
	or r5, r5, r6
	or r1, r1, r5
	lui r5, 523264
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r1, zero, .LBB0_151
# %bb.150:                              # %vector.body140
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 4(r26)
.LBB0_151:                              # %vector.body140
                                        #   in Loop: Header=BB0_147 Depth=3
	loads.w r1, 8(r4)
	loads.w r6, 8(r16)
	and r1, r1, r17
	and r6, r6, r17
	seteq r13, r1, r22
	seteq r24, r1, zero
	seteq r18, r6, zero
	seteq r19, r6, r22
	max.u r1, r1, r6
	setlt.u r1, r22, r1
	and r6, r13, r18
	and r13, r24, r19
	or r6, r6, r13
	or r1, r1, r6
	lui r6, 523264
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r1, zero, .LBB0_153
# %bb.152:                              # %vector.body140
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 8(r26)
.LBB0_153:                              # %vector.body140
                                        #   in Loop: Header=BB0_147 Depth=3
	loads.w r1, 12(r4)
	loads.w r4, 12(r16)
	and r1, r1, r17
	and r4, r4, r17
	seteq r13, r1, r22
	seteq r19, r1, zero
	seteq r16, r4, zero
	seteq r18, r4, r22
	max.u r1, r1, r4
	setlt.u r1, r22, r1
	and r4, r13, r16
	and r13, r19, r18
	or r4, r4, r13
	or r1, r1, r4
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r1, zero, .LBB0_146
# %bb.154:                              # %vector.body140
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r26)
	j .LBB0_146
.LBB0_155:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 257 7 is_stmt 1               # parallel-rne.mlir:257:7
	mfence { sm }
	.loc	1 293 7                         # parallel-rne.mlir:293:7
	loadli.w r1,  -56(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_69
.LBB0_156:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -28(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 293 7                         # parallel-rne.mlir:293:7
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	addli r1, zero, 32
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_158
.LBB0_157:                              # %middle.block131
                                        #   in Loop: Header=BB0_158 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 39
	load.d r[3:4], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 301 9 is_stmt 1               # parallel-rne.mlir:301:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_183
.LBB0_158:                              # %.preheader26
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_175 Depth 3
                                        #       Child Loop BB0_161 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	.loc	1 302 11 is_stmt 1              # parallel-rne.mlir:302:11
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_173
# %bb.159:                              # %scalar.ph123.preheader
                                        #   in Loop: Header=BB0_158 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_161
.LBB0_160:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	setlt.ul r1, r[4:5], r[14:15]
	.loc	1 324 13 is_stmt 1              # parallel-rne.mlir:324:13
	add.s r6, r21, r6
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 324 13                        # parallel-rne.mlir:324:13
	stores.w r7, 0(r6)
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	beq r1, zero, .LBB0_157
.LBB0_161:                              # %scalar.ph123
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_158 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	add.ul r[6:7], r[4:5], r[2:3]
	lui r9, 523264
	slli r6, r6, 2
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	add.s r1, r23, r6
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	add.s r7, r20, r6
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	loads.w r1, 0(r1)
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	loads.w r10, 0(r7)
	lui r7, 523264
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	and r1, r1, r17
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	beq r1, r22, .LBB0_163
# %bb.162:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
.LBB0_163:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_161 Depth=3
	add.s r8, r28, r6
	loads.w r8, 0(r8)
	and r8, r8, r17
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r8, zero, .LBB0_171
# %bb.164:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r10, 523264
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r1, zero, .LBB0_172
.LBB0_165:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_161 Depth=3
	beq r8, r22, .LBB0_167
.LBB0_166:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
.LBB0_167:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_161 Depth=3
	setlt.u r9, r22, r1
	lui r1, 523264
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r9, zero, .LBB0_169
# %bb.168:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r10, 0
.LBB0_169:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_161 Depth=3
	setlt.u r8, r22, r8
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r8, zero, .LBB0_160
# %bb.170:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r1, 0
	j .LBB0_160
.LBB0_171:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_161 Depth=3
	addli r9, r10, 0
	lui r10, 523264
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	beq r1, zero, .LBB0_165
.LBB0_172:                              # %scalar.ph123
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r8, r22, .LBB0_166
	j .LBB0_167
.LBB0_173:                              # %vector.body125.preheader
                                        #   in Loop: Header=BB0_158 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_175
.LBB0_174:                              # %vector.body125
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 302 11 is_stmt 1              # parallel-rne.mlir:302:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 324 13                        # parallel-rne.mlir:324:13
	add.s r4, r21, r27
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	seteq.d r1, r[7:8], r[11:12]
	.loc	1 324 13                        # parallel-rne.mlir:324:13
	stores.w r10, 12(r4)
	stores.w r6, 8(r4)
	stores.w r5, 4(r4)
	stores.w r9, 0(r4)
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	bneq r1, zero, .LBB0_157
.LBB0_175:                              # %vector.body125
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_158 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	add.ul r[4:5], r[7:8], r[2:3]
	slli r27, r4, 2
	add.s r4, r28, r27
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	add.s r16, r23, r27
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	add.s r26, r20, r27
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	loads.w r1, 0(r4)
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	loads.w r5, 0(r16)
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	and r1, r1, r17
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	and r5, r5, r17
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	seteq r6, r1, r22
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	seteq r13, r1, zero
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	seteq r9, r5, zero
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	seteq r10, r5, r22
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	max.u r1, r1, r5
	setlt.u r1, r22, r1
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	and r5, r6, r9
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	and r6, r13, r10
	lui r10, 523264
	lui r9, 523264
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	or r5, r5, r6
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	or r1, r1, r5
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r1, zero, .LBB0_177
# %bb.176:                              # %vector.body125
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r26)
.LBB0_177:                              # %vector.body125
                                        #   in Loop: Header=BB0_175 Depth=3
	loads.w r1, 4(r4)
	loads.w r5, 4(r16)
	and r1, r1, r17
	and r5, r5, r17
	seteq r6, r1, r22
	seteq r18, r1, zero
	seteq r13, r5, zero
	seteq r19, r5, r22
	max.u r1, r1, r5
	setlt.u r1, r22, r1
	and r5, r6, r13
	and r6, r18, r19
	or r5, r5, r6
	or r1, r1, r5
	lui r5, 523264
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r1, zero, .LBB0_179
# %bb.178:                              # %vector.body125
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 4(r26)
.LBB0_179:                              # %vector.body125
                                        #   in Loop: Header=BB0_175 Depth=3
	loads.w r1, 8(r4)
	loads.w r6, 8(r16)
	and r1, r1, r17
	and r6, r6, r17
	seteq r13, r1, r22
	seteq r24, r1, zero
	seteq r18, r6, zero
	seteq r19, r6, r22
	max.u r1, r1, r6
	setlt.u r1, r22, r1
	and r6, r13, r18
	and r13, r24, r19
	or r6, r6, r13
	or r1, r1, r6
	lui r6, 523264
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r1, zero, .LBB0_181
# %bb.180:                              # %vector.body125
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 8(r26)
.LBB0_181:                              # %vector.body125
                                        #   in Loop: Header=BB0_175 Depth=3
	loads.w r1, 12(r4)
	loads.w r4, 12(r16)
	and r1, r1, r17
	and r4, r4, r17
	seteq r13, r1, r22
	seteq r19, r1, zero
	seteq r16, r4, zero
	seteq r18, r4, r22
	max.u r1, r1, r4
	setlt.u r1, r22, r1
	and r4, r13, r16
	and r13, r19, r18
	or r4, r4, r13
	or r1, r1, r4
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r1, zero, .LBB0_174
# %bb.182:                              # %vector.body125
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r26)
	j .LBB0_174
.LBB0_183:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 293 7 is_stmt 1               # parallel-rne.mlir:293:7
	mfence { sm }
	.loc	1 329 7                         # parallel-rne.mlir:329:7
	addli r1, zero, 5
	bneq r25, r1, .LBB0_70
.LBB0_184:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -28(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 329 7                         # parallel-rne.mlir:329:7
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	addli r1, zero, 40
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_186
.LBB0_185:                              # %middle.block116
                                        #   in Loop: Header=BB0_186 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[3:4], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 337 9 is_stmt 1               # parallel-rne.mlir:337:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_211
.LBB0_186:                              # %.preheader25
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_203 Depth 3
                                        #       Child Loop BB0_189 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	.loc	1 338 11 is_stmt 1              # parallel-rne.mlir:338:11
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_201
# %bb.187:                              # %scalar.ph108.preheader
                                        #   in Loop: Header=BB0_186 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_189
.LBB0_188:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_189 Depth=3
	.loc	1 338 11                        # parallel-rne.mlir:338:11
	setlt.ul r1, r[4:5], r[14:15]
	.loc	1 360 13 is_stmt 1              # parallel-rne.mlir:360:13
	add.s r6, r21, r6
	.loc	1 338 11                        # parallel-rne.mlir:338:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	stores.w r7, 0(r6)
	.loc	1 338 11                        # parallel-rne.mlir:338:11
	beq r1, zero, .LBB0_185
.LBB0_189:                              # %scalar.ph108
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_186 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	add.ul r[6:7], r[4:5], r[2:3]
	lui r9, 523264
	slli r6, r6, 2
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	add.s r1, r23, r6
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	add.s r7, r20, r6
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	loads.w r1, 0(r1)
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	loads.w r10, 0(r7)
	lui r7, 523264
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	and r1, r1, r17
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	beq r1, r22, .LBB0_191
# %bb.190:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_189 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
.LBB0_191:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_189 Depth=3
	add.s r8, r28, r6
	loads.w r8, 0(r8)
	and r8, r8, r17
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	bneq r8, zero, .LBB0_199
# %bb.192:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_189 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r10, 523264
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	bneq r1, zero, .LBB0_200
.LBB0_193:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_189 Depth=3
	beq r8, r22, .LBB0_195
.LBB0_194:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_189 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
.LBB0_195:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_189 Depth=3
	setlt.u r9, r22, r1
	lui r1, 523264
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	bneq r9, zero, .LBB0_197
# %bb.196:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_189 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r10, 0
.LBB0_197:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_189 Depth=3
	setlt.u r8, r22, r8
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	bneq r8, zero, .LBB0_188
# %bb.198:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_189 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r1, 0
	j .LBB0_188
.LBB0_199:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_189 Depth=3
	addli r9, r10, 0
	lui r10, 523264
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	beq r1, zero, .LBB0_193
.LBB0_200:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_189 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	bneq r8, r22, .LBB0_194
	j .LBB0_195
.LBB0_201:                              # %vector.body110.preheader
                                        #   in Loop: Header=BB0_186 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_203
.LBB0_202:                              # %vector.body110
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 338 11 is_stmt 1              # parallel-rne.mlir:338:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	add.s r4, r21, r27
	.loc	1 338 11                        # parallel-rne.mlir:338:11
	seteq.d r1, r[7:8], r[11:12]
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	stores.w r10, 12(r4)
	stores.w r6, 8(r4)
	stores.w r5, 4(r4)
	stores.w r9, 0(r4)
	.loc	1 338 11                        # parallel-rne.mlir:338:11
	bneq r1, zero, .LBB0_185
.LBB0_203:                              # %vector.body110
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_186 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	add.ul r[4:5], r[7:8], r[2:3]
	slli r27, r4, 2
	add.s r4, r28, r27
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	add.s r16, r23, r27
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	add.s r26, r20, r27
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	loads.w r1, 0(r4)
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	loads.w r5, 0(r16)
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	and r1, r1, r17
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	and r5, r5, r17
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	seteq r6, r1, r22
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	seteq r13, r1, zero
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	seteq r9, r5, zero
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	seteq r10, r5, r22
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	max.u r1, r1, r5
	setlt.u r1, r22, r1
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	and r5, r6, r9
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	and r6, r13, r10
	lui r10, 523264
	lui r9, 523264
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	or r5, r5, r6
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	or r1, r1, r5
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	bneq r1, zero, .LBB0_205
# %bb.204:                              # %vector.body110
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r26)
.LBB0_205:                              # %vector.body110
                                        #   in Loop: Header=BB0_203 Depth=3
	loads.w r1, 4(r4)
	loads.w r5, 4(r16)
	and r1, r1, r17
	and r5, r5, r17
	seteq r6, r1, r22
	seteq r18, r1, zero
	seteq r13, r5, zero
	seteq r19, r5, r22
	max.u r1, r1, r5
	setlt.u r1, r22, r1
	and r5, r6, r13
	and r6, r18, r19
	or r5, r5, r6
	or r1, r1, r5
	lui r5, 523264
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	bneq r1, zero, .LBB0_207
# %bb.206:                              # %vector.body110
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 4(r26)
.LBB0_207:                              # %vector.body110
                                        #   in Loop: Header=BB0_203 Depth=3
	loads.w r1, 8(r4)
	loads.w r6, 8(r16)
	and r1, r1, r17
	and r6, r6, r17
	seteq r13, r1, r22
	seteq r24, r1, zero
	seteq r18, r6, zero
	seteq r19, r6, r22
	max.u r1, r1, r6
	setlt.u r1, r22, r1
	and r6, r13, r18
	and r13, r24, r19
	or r6, r6, r13
	or r1, r1, r6
	lui r6, 523264
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	bneq r1, zero, .LBB0_209
# %bb.208:                              # %vector.body110
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 8(r26)
.LBB0_209:                              # %vector.body110
                                        #   in Loop: Header=BB0_203 Depth=3
	loads.w r1, 12(r4)
	loads.w r4, 12(r16)
	and r1, r1, r17
	and r4, r4, r17
	seteq r13, r1, r22
	seteq r19, r1, zero
	seteq r16, r4, zero
	seteq r18, r4, r22
	max.u r1, r1, r4
	setlt.u r1, r22, r1
	and r4, r13, r16
	and r13, r19, r18
	or r4, r4, r13
	or r1, r1, r4
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	bneq r1, zero, .LBB0_202
# %bb.210:                              # %vector.body110
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r26)
	j .LBB0_202
.LBB0_211:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 329 7 is_stmt 1               # parallel-rne.mlir:329:7
	mfence { sm }
	.loc	1 365 7                         # parallel-rne.mlir:365:7
	addli r1, zero, 6
	bneq r25, r1, .LBB0_71
.LBB0_212:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -28(r30)                  # 4-byte Folded Reload
	addli r25, zero, 7
	min.u r1, r1, r2
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 365 7                         # parallel-rne.mlir:365:7
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	addli r1, zero, 48
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_214
.LBB0_213:                              # %middle.block101
                                        #   in Loop: Header=BB0_214 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 55
	load.d r[3:4], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 373 9 is_stmt 1               # parallel-rne.mlir:373:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_239
.LBB0_214:                              # %.preheader24
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_231 Depth 3
                                        #       Child Loop BB0_217 Depth 3
	.loc	1 374 11                        # parallel-rne.mlir:374:11
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r25
	beq r1, zero, .LBB0_229
# %bb.215:                              # %scalar.ph93.preheader
                                        #   in Loop: Header=BB0_214 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_217
.LBB0_216:                              # %scalar.ph93
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 374 11                        # parallel-rne.mlir:374:11
	setlt.ul r1, r[4:5], r[14:15]
	.loc	1 396 13 is_stmt 1              # parallel-rne.mlir:396:13
	add.s r6, r21, r6
	.loc	1 374 11                        # parallel-rne.mlir:374:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 396 13                        # parallel-rne.mlir:396:13
	stores.w r7, 0(r6)
	.loc	1 374 11                        # parallel-rne.mlir:374:11
	beq r1, zero, .LBB0_213
.LBB0_217:                              # %scalar.ph93
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_214 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	add.ul r[6:7], r[4:5], r[2:3]
	lui r9, 523264
	slli r6, r6, 2
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	add.s r1, r23, r6
	.loc	1 377 19                        # parallel-rne.mlir:377:19
	add.s r7, r20, r6
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	loads.w r1, 0(r1)
	.loc	1 377 19                        # parallel-rne.mlir:377:19
	loads.w r10, 0(r7)
	lui r7, 523264
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	and r1, r1, r17
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	beq r1, r22, .LBB0_219
# %bb.218:                              # %scalar.ph93
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
.LBB0_219:                              # %scalar.ph93
                                        #   in Loop: Header=BB0_217 Depth=3
	add.s r8, r28, r6
	loads.w r8, 0(r8)
	and r8, r8, r17
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	bneq r8, zero, .LBB0_227
# %bb.220:                              # %scalar.ph93
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r10, 523264
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	bneq r1, zero, .LBB0_228
.LBB0_221:                              # %scalar.ph93
                                        #   in Loop: Header=BB0_217 Depth=3
	beq r8, r22, .LBB0_223
.LBB0_222:                              # %scalar.ph93
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
.LBB0_223:                              # %scalar.ph93
                                        #   in Loop: Header=BB0_217 Depth=3
	setlt.u r9, r22, r1
	lui r1, 523264
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	bneq r9, zero, .LBB0_225
# %bb.224:                              # %scalar.ph93
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r10, 0
.LBB0_225:                              # %scalar.ph93
                                        #   in Loop: Header=BB0_217 Depth=3
	setlt.u r8, r22, r8
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	bneq r8, zero, .LBB0_216
# %bb.226:                              # %scalar.ph93
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r1, 0
	j .LBB0_216
.LBB0_227:                              # %scalar.ph93
                                        #   in Loop: Header=BB0_217 Depth=3
	addli r9, r10, 0
	lui r10, 523264
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	beq r1, zero, .LBB0_221
.LBB0_228:                              # %scalar.ph93
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	bneq r8, r22, .LBB0_222
	j .LBB0_223
.LBB0_229:                              # %vector.body95.preheader
                                        #   in Loop: Header=BB0_214 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_231
.LBB0_230:                              # %vector.body95
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 374 11 is_stmt 1              # parallel-rne.mlir:374:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 396 13                        # parallel-rne.mlir:396:13
	add.s r4, r21, r27
	.loc	1 374 11                        # parallel-rne.mlir:374:11
	seteq.d r1, r[7:8], r[11:12]
	.loc	1 396 13                        # parallel-rne.mlir:396:13
	stores.w r10, 12(r4)
	stores.w r6, 8(r4)
	stores.w r5, 4(r4)
	stores.w r9, 0(r4)
	.loc	1 374 11                        # parallel-rne.mlir:374:11
	bneq r1, zero, .LBB0_213
.LBB0_231:                              # %vector.body95
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_214 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	add.ul r[4:5], r[7:8], r[2:3]
	slli r27, r4, 2
	add.s r4, r28, r27
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	add.s r16, r23, r27
	.loc	1 377 19                        # parallel-rne.mlir:377:19
	add.s r26, r20, r27
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	loads.w r1, 0(r4)
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	loads.w r5, 0(r16)
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	and r1, r1, r17
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	and r5, r5, r17
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	seteq r6, r1, r22
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	seteq r13, r1, zero
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	seteq r9, r5, zero
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	seteq r10, r5, r22
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	max.u r1, r1, r5
	setlt.u r1, r22, r1
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	and r5, r6, r9
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	and r6, r13, r10
	lui r10, 523264
	lui r9, 523264
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	or r5, r5, r6
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	or r1, r1, r5
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	bneq r1, zero, .LBB0_233
# %bb.232:                              # %vector.body95
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r26)
.LBB0_233:                              # %vector.body95
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r1, 4(r4)
	loads.w r5, 4(r16)
	and r1, r1, r17
	and r5, r5, r17
	seteq r6, r1, r22
	seteq r18, r1, zero
	seteq r13, r5, zero
	seteq r19, r5, r22
	max.u r1, r1, r5
	setlt.u r1, r22, r1
	and r5, r6, r13
	and r6, r18, r19
	or r5, r5, r6
	or r1, r1, r5
	lui r5, 523264
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	bneq r1, zero, .LBB0_235
# %bb.234:                              # %vector.body95
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 4(r26)
.LBB0_235:                              # %vector.body95
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r1, 8(r4)
	loads.w r6, 8(r16)
	and r1, r1, r17
	and r6, r6, r17
	seteq r13, r1, r22
	seteq r24, r1, zero
	seteq r18, r6, zero
	seteq r19, r6, r22
	max.u r1, r1, r6
	setlt.u r1, r22, r1
	and r6, r13, r18
	and r13, r24, r19
	or r6, r6, r13
	or r1, r1, r6
	lui r6, 523264
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	bneq r1, zero, .LBB0_237
# %bb.236:                              # %vector.body95
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 8(r26)
.LBB0_237:                              # %vector.body95
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r1, 12(r4)
	loads.w r4, 12(r16)
	and r1, r1, r17
	and r4, r4, r17
	seteq r13, r1, r22
	seteq r19, r1, zero
	seteq r16, r4, zero
	seteq r18, r4, r22
	max.u r1, r1, r4
	setlt.u r1, r22, r1
	and r4, r13, r16
	and r13, r19, r18
	or r4, r4, r13
	or r1, r1, r4
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	bneq r1, zero, .LBB0_230
# %bb.238:                              # %vector.body95
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r26)
	j .LBB0_230
.LBB0_239:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 365 7 is_stmt 1               # parallel-rne.mlir:365:7
	mfence { sm }
	.loc	1 401 7                         # parallel-rne.mlir:401:7
	loadli.w r1,  -52(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_268
.LBB0_240:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -28(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	zext_int2long r[1:2], zero
	.loc	1 401 7                         # parallel-rne.mlir:401:7
	store.d r[1:2], -24(r30)                # 8-byte Folded Spill
	addli r1, zero, 56
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_242
.LBB0_241:                              # %middle.block
                                        #   in Loop: Header=BB0_242 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 63
	load.d r[3:4], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 409 9 is_stmt 1               # parallel-rne.mlir:409:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_267
.LBB0_242:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_259 Depth 3
                                        #       Child Loop BB0_245 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	.loc	1 410 11 is_stmt 1              # parallel-rne.mlir:410:11
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	sll.d r[7:8], r[2:3], r1
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_257
# %bb.243:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_242 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_245
.LBB0_244:                              # %scalar.ph
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 410 11                        # parallel-rne.mlir:410:11
	setlt.ul r1, r[4:5], r[14:15]
	.loc	1 432 13 is_stmt 1              # parallel-rne.mlir:432:13
	add.s r2, r21, r2
	.loc	1 410 11                        # parallel-rne.mlir:410:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 432 13                        # parallel-rne.mlir:432:13
	stores.w r6, 0(r2)
	.loc	1 410 11                        # parallel-rne.mlir:410:11
	beq r1, zero, .LBB0_241
.LBB0_245:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	add.ul r[1:2], r[4:5], r[7:8]
	lui r6, 523264
	lui r18, 523264
	slli r2, r1, 2
	.loc	1 412 19                        # parallel-rne.mlir:412:19
	add.s r1, r23, r2
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	add.s r3, r20, r2
	.loc	1 412 19                        # parallel-rne.mlir:412:19
	loads.w r1, 0(r1)
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	loads.w r19, 0(r3)
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	and r1, r1, r17
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	beq r1, r22, .LBB0_247
# %bb.246:                              # %scalar.ph
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_247:                              # %scalar.ph
                                        #   in Loop: Header=BB0_245 Depth=3
	add.s r3, r28, r2
	loads.w r3, 0(r3)
	and r16, r3, r17
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r16, zero, .LBB0_255
# %bb.248:                              # %scalar.ph
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r19, 523264
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r1, zero, .LBB0_256
.LBB0_249:                              # %scalar.ph
                                        #   in Loop: Header=BB0_245 Depth=3
	beq r16, r22, .LBB0_251
.LBB0_250:                              # %scalar.ph
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_251:                              # %scalar.ph
                                        #   in Loop: Header=BB0_245 Depth=3
	setlt.u r3, r22, r1
	lui r1, 523264
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r3, zero, .LBB0_253
# %bb.252:                              # %scalar.ph
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r19, 0
.LBB0_253:                              # %scalar.ph
                                        #   in Loop: Header=BB0_245 Depth=3
	setlt.u r3, r22, r16
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r3, zero, .LBB0_244
# %bb.254:                              # %scalar.ph
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r1, 0
	j .LBB0_244
.LBB0_255:                              # %scalar.ph
                                        #   in Loop: Header=BB0_245 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	beq r1, zero, .LBB0_249
.LBB0_256:                              # %scalar.ph
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r16, r22, .LBB0_250
	j .LBB0_251
.LBB0_257:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_242 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	load.d r[24:25], -24(r30)               # 8-byte Folded Reload
	j .LBB0_259
.LBB0_258:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 410 11 is_stmt 1              # parallel-rne.mlir:410:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 432 13                        # parallel-rne.mlir:432:13
	add.s r2, r21, r2
	.loc	1 410 11                        # parallel-rne.mlir:410:11
	seteq.d r3, r[24:25], r[11:12]
	.loc	1 432 13                        # parallel-rne.mlir:432:13
	stores.w r4, 12(r2)
	stores.w r1, 8(r2)
	stores.w r19, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 410 11                        # parallel-rne.mlir:410:11
	bneq r3, zero, .LBB0_241
.LBB0_259:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	add.ul r[1:2], r[24:25], r[7:8]
	slli r2, r1, 2
	add.s r16, r28, r2
	.loc	1 412 19                        # parallel-rne.mlir:412:19
	add.s r5, r23, r2
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	loads.w r1, 0(r16)
	.loc	1 412 19                        # parallel-rne.mlir:412:19
	loads.w r4, 0(r5)
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	and r1, r1, r17
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	and r4, r4, r17
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	seteq r6, r1, r22
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	seteq r19, r1, zero
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	seteq r13, r4, zero
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	seteq r18, r4, r22
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	max.u r1, r1, r4
	setlt.u r1, r22, r1
	.loc	1 421 19                        # parallel-rne.mlir:421:19
	and r4, r6, r13
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	and r6, r19, r18
	lui r18, 523264
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	or r4, r4, r6
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	add.s r6, r20, r2
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	or r1, r1, r4
	lui r4, 523264
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r1, zero, .LBB0_261
# %bb.260:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r18, 0(r6)
.LBB0_261:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	loads.w r1, 4(r16)
	loads.w r13, 4(r5)
	and r1, r1, r17
	and r13, r13, r17
	seteq r19, r1, r22
	seteq r3, r1, zero
	seteq r27, r13, r22
	seteq r26, r13, zero
	max.u r1, r1, r13
	setlt.u r1, r22, r1
	and r13, r19, r26
	and r3, r3, r27
	lui r19, 523264
	or r3, r13, r3
	or r1, r1, r3
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r1, zero, .LBB0_263
# %bb.262:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r6)
.LBB0_263:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	loads.w r1, 8(r16)
	loads.w r3, 8(r5)
	and r1, r1, r17
	and r3, r3, r17
	seteq r13, r1, r22
	seteq r9, r1, zero
	seteq r27, r3, r22
	seteq r26, r3, zero
	max.u r1, r1, r3
	setlt.u r1, r22, r1
	and r3, r13, r26
	and r9, r9, r27
	or r3, r3, r9
	or r3, r1, r3
	lui r1, 523264
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r3, zero, .LBB0_265
# %bb.264:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 8(r6)
.LBB0_265:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	loads.w r3, 12(r16)
	loads.w r5, 12(r5)
	and r3, r3, r17
	and r5, r5, r17
	seteq r9, r3, r22
	seteq r16, r3, zero
	seteq r10, r5, zero
	seteq r13, r5, r22
	max.u r3, r3, r5
	setlt.u r3, r22, r3
	and r5, r9, r10
	and r9, r16, r13
	or r5, r5, r9
	or r3, r3, r5
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r3, zero, .LBB0_258
# %bb.266:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 12(r6)
	j .LBB0_258
.LBB0_267:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 401 7 is_stmt 1               # parallel-rne.mlir:401:7
	mfence { sm }
.LBB0_268:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 437 7                         # parallel-rne.mlir:437:7
	addli r1, zero, 255
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r13
	addli r25, zero, 3
	.loc	1 437 7                         # parallel-rne.mlir:437:7
	csr_set csr5, r1
	sync_core
	.loc	1 438 7                         # parallel-rne.mlir:438:7
	beq r13, r25, .LBB0_5
# %bb.269:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r12,  -40(r30)                 # 4-byte Folded Reload
	load.d r[14:15], -48(r30)               # 8-byte Folded Reload
	addli r18, zero, 64
	addli r20, zero, 7
	addli r24, zero, 1
	addli r23, zero, 128
	.loc	1 449 7 is_stmt 1               # parallel-rne.mlir:449:7
	bneq r13, zero, .LBB0_6
# %bb.270:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -92(r30)                  # 4-byte Folded Reload
	.loc	1 449 7                         # parallel-rne.mlir:449:7
	load.d r[3:4], -72(r30)                 # 8-byte Folded Reload
	addli r2, zero, 17
	load.d r[26:27], -88(r30)               # 8-byte Folded Reload
	load.d r[6:7], -80(r30)                 # 8-byte Folded Reload
	addli r16, zero, 5
	load.d r[10:11], 24(r30)
	slli r1, r1, 6
	sll.d r[2:3], r[3:4], r2
	sll.d r[6:7], r[6:7], r24
	sext_int2long r[4:5], r1
	addli r1, zero, 22
	min.sl r[8:9], r[4:5], r[26:27]
	xwait r1, 0
	lock zero, r16
	add.ul r[1:2], r[10:11], r[2:3]
	dma_cfg r24, zero, zero, 0
	addli.d r[8:9], r[8:9], 64
	dma_cfg zero, r24, zero, 1
	add.ul r[1:2], r[1:2], r[6:7]
	max.sl r[8:9], r[8:9], r[4:5]
	sub.sl r[3:4], r[8:9], r[4:5]
	load.d r[5:6], -104(r30)                # 8-byte Folded Reload
	dma_cfg r2, zero, zero, 2
	.loc	1 445 13 is_stmt 1              # parallel-rne.mlir:445:13
	min.sl r[3:4], r[3:4], r[26:27]
	.loc	1 449 7                         # parallel-rne.mlir:449:7
	slli r5, r5, 2
	dma_cfg r1, r21, r5, 3
	addli r1, zero, 2048
	addli r2, zero, 512
	dma_cfg r1, r2, r3, 4
	addli r1, zero, 23
	dma_run zero
	unlock r16
	xsignal r1, 0
	j .LBB0_6
.LBB0_271:                              # %._crit_edge
	.loc	1 451 5                         # parallel-rne.mlir:451:5
	xsignal zero, 0
	bneq r13, zero, .LBB0_273
# %bb.272:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 451 5                         # parallel-rne.mlir:451:5
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
.LBB0_273:
	.loc	1 452 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:452:5
	addli sp, sp, 144
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
	.long	208                             # 0xd0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-y_umhqj7" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
