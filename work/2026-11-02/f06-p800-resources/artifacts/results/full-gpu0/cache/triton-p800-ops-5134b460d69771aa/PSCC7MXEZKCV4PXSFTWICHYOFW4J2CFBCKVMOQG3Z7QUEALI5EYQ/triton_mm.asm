	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-5uv_6f__" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -144
	addli r1, zero, 1
.Ltmp0:
	.loc	1 29 5 prologue_end             # parallel-rne.mlir:29:5
	core_id r14
	addli r30, sp, 80
	xsignal_mode_cfg r1
	beq r14, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 29 5                          # parallel-rne.mlir:29:5
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
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 3
	addli r2, zero, 9
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 7
	addli r2, zero, 13
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	.loc	1 31 10 is_stmt 1               # parallel-rne.mlir:31:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
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
	.loc	1 48 5                          # parallel-rne.mlir:48:5
	ble.s r2, r1, .LBB0_286
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 40 11 is_stmt 1               # parallel-rne.mlir:40:11
	sext_int2long r[15:16], r1
	lui r1, 524287
	addli r17, zero, 2
	addli r18, zero, 64
	addli r19, zero, 1
	addli r12, zero, 5
	addli r20, zero, 12
	addli r23, zero, 3
	addli r24, zero, 6
	lui r22, 522240
	lui r21, 1048560
	addli r25, zero, 0
	store.d r[2:3], -80(r30)                # 8-byte Folded Spill
	ori r26, r1, 4095
	lui r1, 7
	lui r2, 522239
	ori r1, r1, 4095
	ori r3, r2, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 345 7                         # parallel-rne.mlir:345:7
	addli r2, zero, 11
	addli r17, zero, 2
	addli r18, zero, 64
	xsignal r2, 0
	.loc	1 346 7                         # parallel-rne.mlir:346:7
	addli r2, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[15:16], -32(r30)               # 8-byte Folded Reload
	.loc	1 48 5 is_stmt 1                # parallel-rne.mlir:48:5
	load.d r[4:5], -80(r30)                 # 8-byte Folded Reload
	loadli.w r25,  -20(r30)                 # 4-byte Folded Reload
	addli r19, zero, 1
	addli r20, zero, 12
	addli r23, zero, 3
	addli r24, zero, 6
	addli.d r[15:16], r[15:16], 1
	addli r25, r25, 1
	setlt.sl r2, r[15:16], r[4:5]
	beq r2, zero, .LBB0_286
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_126 Depth 2
                                        #       Child Loop BB0_135 Depth 3
                                        #       Child Loop BB0_130 Depth 3
                                        #     Child Loop BB0_31 Depth 2
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_35 Depth 3
                                        #     Child Loop BB0_158 Depth 2
                                        #       Child Loop BB0_167 Depth 3
                                        #       Child Loop BB0_162 Depth 3
                                        #     Child Loop BB0_63 Depth 2
                                        #       Child Loop BB0_72 Depth 3
                                        #       Child Loop BB0_67 Depth 3
                                        #     Child Loop BB0_190 Depth 2
                                        #       Child Loop BB0_199 Depth 3
                                        #       Child Loop BB0_194 Depth 3
                                        #     Child Loop BB0_95 Depth 2
                                        #       Child Loop BB0_104 Depth 3
                                        #       Child Loop BB0_99 Depth 3
                                        #     Child Loop BB0_222 Depth 2
                                        #       Child Loop BB0_231 Depth 3
                                        #       Child Loop BB0_226 Depth 3
                                        #     Child Loop BB0_254 Depth 2
                                        #       Child Loop BB0_263 Depth 3
                                        #       Child Loop BB0_258 Depth 3
	.loc	1 50 13                         # parallel-rne.mlir:50:13
	loadli.w r2,  32(r30)
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	loadli.w r4,  28(r30)
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	addli r5, zero, 8
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	mod.s r9, r25, r17
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	storeli.w r25, -20(r30)                 # 4-byte Folded Spill
	.loc	1 50 13                         # parallel-rne.mlir:50:13
	div.s r2, r15, r2
	.loc	1 84 13                         # parallel-rne.mlir:84:13
	slli r8, r9, 13
	.loc	1 86 13                         # parallel-rne.mlir:86:13
	addli r11, r8, 8192
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	div.s r6, r2, r4
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	div.s r7, r6, r18
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	slli r2, r7, 3
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	sub.s r4, r19, r2
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	min.s r10, r4, r5
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	mod.s r4, r6, r10
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	add.s r2, r4, r2
	.loc	1 67 13                         # parallel-rne.mlir:67:13
	zext_int2long r[4:5], r2
	storeli.w r2, -52(r30)                  # 4-byte Folded Spill
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	store.d r[4:5], -48(r30)                # 8-byte Folded Spill
	bneq r14, r19, .LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[12:13], 0(r30)
	sll.d r[4:5], r[4:5], r20
	xwait r23, 0
	add.ul r[12:13], r[12:13], r[4:5]
	blt.s r19, r25, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 5
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	addli r2, zero, 4
	addli r5, zero, 256
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 7
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
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
	addli r2, zero, 128
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r11, zero, r18, 3
	dma_cfg r2, zero, r17, 4
	addli r2, zero, 32
	dma_cfg r5, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 4
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	addli r2, r8, 8256
	addli r5, zero, 128
	addli r25, zero, 256
	lock zero, r4
	dma_cfg r19, r19, zero, 0
	dma_cfg zero, r13, zero, 2
	dma_cfg r2, r12, r18, 3
	addli r13, zero, 32
	addli r12, zero, 5
	addli r2, zero, 7
	dma_cfg r5, r18, r17, 4
	dma_cfg r25, r5, r13, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
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
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r11, zero, r18, 3
	dma_cfg r5, zero, r17, 4
	dma_cfg r25, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r17, 0
	j .LBB0_15
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 91 7 is_stmt 1                # parallel-rne.mlir:91:7
	bneq r14, r17, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	xwait r17, 0
	xwait r12, 0
	lock zero, zero
	addli r2, zero, 32
	ds_cfg r17, zero, 0
	ds_cfg r18, zero, 1
	ds_cfg r18, zero, 14
	ds_cfg r2, zero, 13
	addli r2, zero, 1
	shuffle_batch r8, r11, r18, 1
	unlock zero
	xsignal r23, 0
	storeli.w r2, -40(r30)                  # 4-byte Folded Spill
	addli r2, zero, 4
	xsignal r2, 0
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	slli r2, r7, 6
	addli r11, zero, 1
	addli r13, zero, 6
	slli r28, r9, 12
	.loc	1 105 7 is_stmt 1               # parallel-rne.mlir:105:7
	store.d r[15:16], -32(r30)              # 8-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r2, r6, r2
	div.s r2, r2, r10
	zext_int2long r[4:5], r2
	storeli.w r2, -68(r30)                  # 4-byte Folded Spill
	.loc	1 101 13 is_stmt 1              # parallel-rne.mlir:101:13
	lui r2, 6
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sll.d r[4:5], r[4:5], r12
	.loc	1 101 13                        # parallel-rne.mlir:101:13
	add.s r6, r8, r2
	.loc	1 105 7 is_stmt 1               # parallel-rne.mlir:105:7
	sll.d r[9:10], r[4:5], r11
	store.d r[9:10], -64(r30)               # 8-byte Folded Spill
	bneq r14, r13, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=1
	load.d r[4:5], 8(r30)
	add.ul r[9:10], r[4:5], r[9:10]
	addli r4, zero, 7
	xwait r4, 0
	loadli.w r2,  -20(r30)                  # 4-byte Folded Reload
	blt.s r11, r2, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	lock zero, r12
	addli r2, zero, 3
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 4
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 6
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r4, 10
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
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
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
	addli r2, zero, 128
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r18, 3
	dma_cfg r2, zero, r11, 4
	dma_cfg r2, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
.LBB0_18:                               # %.thread15
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r2, 6
	addli r4, zero, 4
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	addli r7, zero, 128
	addli r5, zero, 7
	ori r2, r2, 64
	.loc	1 105 7                         # parallel-rne.mlir:105:7
	lock zero, r4
	dma_cfg r11, r11, zero, 0
	add.s r2, r8, r2
	dma_cfg zero, r10, zero, 2
	dma_cfg r2, r9, r18, 3
	addli r2, zero, 512
	dma_cfg r7, r18, r11, 4
	dma_cfg r7, r2, r18, 5
	addli r2, zero, 3
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 6
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r5, 10
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
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
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
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r18, 3
	dma_cfg r7, zero, r11, 4
	dma_cfg r7, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r4, 0
	.loc	1 106 7 is_stmt 1               # parallel-rne.mlir:106:7
	j .LBB0_27
.LBB0_19:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 4
	addli r4, zero, 7
	beq r14, r2, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r14, r4, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 6
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	xwait r2, 0
	addli r2, zero, 9
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 32
	ds_cfg r17, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r18, zero, 14
	ds_cfg r2, zero, 13
	addli r2, zero, 1
	shuffle_coa r8, r6, r18, 2
	unlock zero
	xsignal r4, 0
	storeli.w r2, -36(r30)                  # 4-byte Folded Spill
	addli r2, zero, 8
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
	j .LBB0_26
.LBB0_22:                               #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 4
	.loc	1 107 7 is_stmt 1               # parallel-rne.mlir:107:7
	addli r2, zero, 8
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	addli r5, zero, 1
	xwait r4, 0
	xwait r2, 0
	addli r2, zero, 11
	xwait r2, 0
	addli r2, zero, 32
	lock zero, r5
	mm_cfg r2, r18, r2, 0
	addli r2, zero, 1
	mm_cfg r4, r5, r5, 2
	mm r28, r8, r8, 8
	storeli.w r2, -16(r30)                  # 4-byte Folded Spill
	addli r2, zero, 9
	unlock r5
	xsignal r12, 0
	xsignal r2, 0
	addli r2, zero, 10
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
	j .LBB0_26
.LBB0_23:                               # %.thread16
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 114 7 is_stmt 1               # parallel-rne.mlir:114:7
	addli r2, zero, 3
	bneq r14, r2, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	xwait r2, 0
	.loc	1 115 7                         # parallel-rne.mlir:115:7
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
.LBB0_26:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 31
.LBB0_27:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 112 13 is_stmt 1              # parallel-rne.mlir:112:13
	lui r4, 10
	.loc	1 117 7                         # parallel-rne.mlir:117:7
	xfence
	zext_int2long r[8:9], r2
	.loc	1 118 7                         # parallel-rne.mlir:118:7
	mfence { lm, sm, gm }
	.loc	1 112 13                        # parallel-rne.mlir:112:13
	add.s r18, r28, r4
	.loc	1 119 7                         # parallel-rne.mlir:119:7
	addli r4, zero, 255
	csr_set csr5, r4
	addli r4, zero, 32
	sync_core
	zext_int2long r[15:16], r4
	.loc	1 120 7                         # parallel-rne.mlir:120:7
	beq r14, zero, .LBB0_124
# %bb.28:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	addli r2, zero, 1
	bneq r14, r2, .LBB0_155
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 4
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_31
.LBB0_30:                               # %middle.block89
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 7
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	addli r12, zero, 5
	zext_int2long r[4:5], r2
	.loc	1 155 9 is_stmt 1               # parallel-rne.mlir:155:9
	setlt.ul r2, r[6:7], r[4:5]
	addli.d r[4:5], r[6:7], 1
	beq r2, zero, .LBB0_59
.LBB0_31:                               # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_35 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[4:5], r12
	.loc	1 156 11 is_stmt 1              # parallel-rne.mlir:156:11
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	bneq r18, r28, .LBB0_38
# %bb.32:                               # %scalar.ph83.preheader
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_35
.LBB0_33:                               # %scalar.ph83
                                        #   in Loop: Header=BB0_35 Depth=3
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r1
	and r4, r4, r21
.LBB0_34:                               # %scalar.ph83
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 156 11                        # parallel-rne.mlir:156:11
	setlt.ul r5, r[12:13], r[8:9]
	.loc	1 171 13 is_stmt 1              # parallel-rne.mlir:171:13
	add.s r2, r18, r2
	.loc	1 156 11                        # parallel-rne.mlir:156:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 171 13                        # parallel-rne.mlir:171:13
	stores.w r4, 0(r2)
	.loc	1 156 11                        # parallel-rne.mlir:156:11
	beq r5, zero, .LBB0_30
.LBB0_35:                               # %scalar.ph83
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	add.ul r[4:5], r[12:13], r[6:7]
	slli r2, r4, 2
	add.s r4, r28, r2
	loads.w r10, 0(r4)
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	and r5, r10, r26
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	setlt.u r4, r22, r5
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	bneq r4, zero, .LBB0_37
# %bb.36:                               # %scalar.ph83
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 168 19 is_stmt 1              # parallel-rne.mlir:168:19
	setlt.u r5, r3, r5
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r5, zero, .LBB0_34
	j .LBB0_33
.LBB0_37:                               #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r10, r4
	.loc	1 168 19 is_stmt 1              # parallel-rne.mlir:168:19
	setlt.u r5, r3, r5
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r5, zero, .LBB0_34
	j .LBB0_33
.LBB0_38:                               # %vector.body85.preheader
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_40
.LBB0_39:                               # %vector.body85
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 156 11 is_stmt 1              # parallel-rne.mlir:156:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 171 13                        # parallel-rne.mlir:171:13
	add.s r5, r18, r23
	.loc	1 156 11                        # parallel-rne.mlir:156:11
	seteq.d r4, r[13:14], r[15:16]
	.loc	1 171 13                        # parallel-rne.mlir:171:13
	stores.w r2, 12(r5)
	stores.w r25, 8(r5)
	stores.w r19, 4(r5)
	stores.w r17, 0(r5)
	.loc	1 156 11                        # parallel-rne.mlir:156:11
	bneq r4, zero, .LBB0_30
.LBB0_40:                               # %vector.body85
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	add.ul r[4:5], r[13:14], r[6:7]
	slli r23, r4, 2
	add.s r17, r28, r23
	loads.w r4, 12(r17)
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	and r24, r4, r26
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	setlt.u r2, r22, r24
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	bneq r2, zero, .LBB0_42
# %bb.41:                               # %vector.body85
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_43
.LBB0_42:                               #   in Loop: Header=BB0_40 Depth=3
	lui r2, 1024
	or r2, r4, r2
.LBB0_43:                               # %vector.body85
                                        #   in Loop: Header=BB0_40 Depth=3
	loads.w r20, 8(r17)
	and r12, r20, r26
	setlt.u r5, r22, r12
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	bneq r5, zero, .LBB0_45
# %bb.44:                               # %vector.body85
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r20, 0
	j .LBB0_46
.LBB0_45:                               #   in Loop: Header=BB0_40 Depth=3
	lui r5, 1024
	or r25, r20, r5
.LBB0_46:                               # %vector.body85
                                        #   in Loop: Header=BB0_40 Depth=3
	loads.w r27, 4(r17)
	and r10, r27, r26
	setlt.u r5, r22, r10
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	bneq r5, zero, .LBB0_48
# %bb.47:                               # %vector.body85
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r27, 0
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_40 Depth=3
	lui r5, 1024
	or r19, r27, r5
.LBB0_49:                               # %vector.body85
                                        #   in Loop: Header=BB0_40 Depth=3
	loads.w r11, 0(r17)
	and r5, r11, r26
	setlt.u r17, r22, r5
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	bneq r17, zero, .LBB0_58
# %bb.50:                               # %vector.body85
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r11, 0
	.loc	1 168 19 is_stmt 1              # parallel-rne.mlir:168:19
	setlt.u r5, r3, r5
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r5, zero, .LBB0_52
.LBB0_51:                               # %vector.body85
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r11, 16
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r1
	and r17, r5, r21
.LBB0_52:                               # %vector.body85
                                        #   in Loop: Header=BB0_40 Depth=3
	setlt.u r5, r3, r10
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r5, zero, .LBB0_55
# %bb.53:                               # %vector.body85
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r1
	and r19, r5, r21
	setlt.u r5, r3, r12
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	beq r5, zero, .LBB0_56
.LBB0_54:                               # %vector.body85
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r24
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r5, zero, .LBB0_39
	j .LBB0_57
.LBB0_55:                               # %vector.body85
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r12
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r5, zero, .LBB0_54
.LBB0_56:                               # %vector.body85
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r20, 16
	andi r5, r5, 1
	add.s r5, r20, r5
	add.s r5, r5, r1
	and r25, r5, r21
	setlt.u r5, r3, r24
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r5, zero, .LBB0_39
.LBB0_57:                               # %vector.body85
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r1
	and r2, r2, r21
	j .LBB0_39
.LBB0_58:                               #   in Loop: Header=BB0_40 Depth=3
	lui r17, 1024
	or r17, r11, r17
	.loc	1 168 19 is_stmt 1              # parallel-rne.mlir:168:19
	setlt.u r5, r3, r5
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	beq r5, zero, .LBB0_51
	j .LBB0_52
.LBB0_59:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r14
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	mfence { sm }
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	loadli.w r2,  -40(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_156
.LBB0_60:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 204 7                         # parallel-rne.mlir:204:7
	addli r2, zero, 3
	bneq r14, r2, .LBB0_187
.LBB0_61:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 12
	.loc	1 204 7                         # parallel-rne.mlir:204:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_63
.LBB0_62:                               # %middle.block71
                                        #   in Loop: Header=BB0_63 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 15
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	addli r12, zero, 5
	zext_int2long r[4:5], r2
	.loc	1 211 9 is_stmt 1               # parallel-rne.mlir:211:9
	setlt.ul r2, r[6:7], r[4:5]
	addli.d r[4:5], r[6:7], 1
	beq r2, zero, .LBB0_91
.LBB0_63:                               # %.preheader20
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_72 Depth 3
                                        #       Child Loop BB0_67 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[4:5], r12
	.loc	1 212 11 is_stmt 1              # parallel-rne.mlir:212:11
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	bneq r18, r28, .LBB0_70
# %bb.64:                               # %scalar.ph65.preheader
                                        #   in Loop: Header=BB0_63 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_67
.LBB0_65:                               # %scalar.ph65
                                        #   in Loop: Header=BB0_67 Depth=3
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r1
	and r4, r4, r21
.LBB0_66:                               # %scalar.ph65
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 212 11                        # parallel-rne.mlir:212:11
	setlt.ul r5, r[12:13], r[8:9]
	.loc	1 227 13 is_stmt 1              # parallel-rne.mlir:227:13
	add.s r2, r18, r2
	.loc	1 212 11                        # parallel-rne.mlir:212:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 227 13                        # parallel-rne.mlir:227:13
	stores.w r4, 0(r2)
	.loc	1 212 11                        # parallel-rne.mlir:212:11
	beq r5, zero, .LBB0_62
.LBB0_67:                               # %scalar.ph65
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	add.ul r[4:5], r[12:13], r[6:7]
	slli r2, r4, 2
	add.s r4, r28, r2
	loads.w r10, 0(r4)
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	and r5, r10, r26
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	setlt.u r4, r22, r5
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r4, zero, .LBB0_69
# %bb.68:                               # %scalar.ph65
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 224 19 is_stmt 1              # parallel-rne.mlir:224:19
	setlt.u r5, r3, r5
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r5, zero, .LBB0_66
	j .LBB0_65
.LBB0_69:                               #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r10, r4
	.loc	1 224 19 is_stmt 1              # parallel-rne.mlir:224:19
	setlt.u r5, r3, r5
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r5, zero, .LBB0_66
	j .LBB0_65
.LBB0_70:                               # %vector.body67.preheader
                                        #   in Loop: Header=BB0_63 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_72
.LBB0_71:                               # %vector.body67
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 212 11 is_stmt 1              # parallel-rne.mlir:212:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 227 13                        # parallel-rne.mlir:227:13
	add.s r5, r18, r23
	.loc	1 212 11                        # parallel-rne.mlir:212:11
	seteq.d r4, r[13:14], r[15:16]
	.loc	1 227 13                        # parallel-rne.mlir:227:13
	stores.w r2, 12(r5)
	stores.w r25, 8(r5)
	stores.w r19, 4(r5)
	stores.w r17, 0(r5)
	.loc	1 212 11                        # parallel-rne.mlir:212:11
	bneq r4, zero, .LBB0_62
.LBB0_72:                               # %vector.body67
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	add.ul r[4:5], r[13:14], r[6:7]
	slli r23, r4, 2
	add.s r17, r28, r23
	loads.w r4, 12(r17)
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	and r24, r4, r26
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	setlt.u r2, r22, r24
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r2, zero, .LBB0_74
# %bb.73:                               # %vector.body67
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_75
.LBB0_74:                               #   in Loop: Header=BB0_72 Depth=3
	lui r2, 1024
	or r2, r4, r2
.LBB0_75:                               # %vector.body67
                                        #   in Loop: Header=BB0_72 Depth=3
	loads.w r20, 8(r17)
	and r12, r20, r26
	setlt.u r5, r22, r12
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r5, zero, .LBB0_77
# %bb.76:                               # %vector.body67
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r20, 0
	j .LBB0_78
.LBB0_77:                               #   in Loop: Header=BB0_72 Depth=3
	lui r5, 1024
	or r25, r20, r5
.LBB0_78:                               # %vector.body67
                                        #   in Loop: Header=BB0_72 Depth=3
	loads.w r27, 4(r17)
	and r10, r27, r26
	setlt.u r5, r22, r10
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r5, zero, .LBB0_80
# %bb.79:                               # %vector.body67
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r27, 0
	j .LBB0_81
.LBB0_80:                               #   in Loop: Header=BB0_72 Depth=3
	lui r5, 1024
	or r19, r27, r5
.LBB0_81:                               # %vector.body67
                                        #   in Loop: Header=BB0_72 Depth=3
	loads.w r11, 0(r17)
	and r5, r11, r26
	setlt.u r17, r22, r5
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r17, zero, .LBB0_90
# %bb.82:                               # %vector.body67
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r11, 0
	.loc	1 224 19 is_stmt 1              # parallel-rne.mlir:224:19
	setlt.u r5, r3, r5
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r5, zero, .LBB0_84
.LBB0_83:                               # %vector.body67
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r11, 16
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r1
	and r17, r5, r21
.LBB0_84:                               # %vector.body67
                                        #   in Loop: Header=BB0_72 Depth=3
	setlt.u r5, r3, r10
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r5, zero, .LBB0_87
# %bb.85:                               # %vector.body67
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r1
	and r19, r5, r21
	setlt.u r5, r3, r12
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	beq r5, zero, .LBB0_88
.LBB0_86:                               # %vector.body67
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r24
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r5, zero, .LBB0_71
	j .LBB0_89
.LBB0_87:                               # %vector.body67
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r12
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r5, zero, .LBB0_86
.LBB0_88:                               # %vector.body67
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r20, 16
	andi r5, r5, 1
	add.s r5, r20, r5
	add.s r5, r5, r1
	and r25, r5, r21
	setlt.u r5, r3, r24
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r5, zero, .LBB0_71
.LBB0_89:                               # %vector.body67
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r1
	and r2, r2, r21
	j .LBB0_71
.LBB0_90:                               #   in Loop: Header=BB0_72 Depth=3
	lui r17, 1024
	or r17, r11, r17
	.loc	1 224 19 is_stmt 1              # parallel-rne.mlir:224:19
	setlt.u r5, r3, r5
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	beq r5, zero, .LBB0_83
	j .LBB0_84
.LBB0_91:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r14
	.loc	1 204 7                         # parallel-rne.mlir:204:7
	mfence { sm }
	.loc	1 232 7                         # parallel-rne.mlir:232:7
	loadli.w r2,  -16(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_188
.LBB0_92:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 260 7                         # parallel-rne.mlir:260:7
	bneq r14, r12, .LBB0_219
.LBB0_93:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 260 7                         # parallel-rne.mlir:260:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_95
.LBB0_94:                               # %middle.block53
                                        #   in Loop: Header=BB0_95 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 23
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	addli r12, zero, 5
	zext_int2long r[4:5], r2
	.loc	1 267 9 is_stmt 1               # parallel-rne.mlir:267:9
	setlt.ul r2, r[6:7], r[4:5]
	addli.d r[4:5], r[6:7], 1
	beq r2, zero, .LBB0_123
.LBB0_95:                               # %.preheader18
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_104 Depth 3
                                        #       Child Loop BB0_99 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[4:5], r12
	.loc	1 268 11 is_stmt 1              # parallel-rne.mlir:268:11
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	bneq r18, r28, .LBB0_102
# %bb.96:                               # %scalar.ph47.preheader
                                        #   in Loop: Header=BB0_95 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_99
.LBB0_97:                               # %scalar.ph47
                                        #   in Loop: Header=BB0_99 Depth=3
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r1
	and r4, r4, r21
.LBB0_98:                               # %scalar.ph47
                                        #   in Loop: Header=BB0_99 Depth=3
	.loc	1 268 11                        # parallel-rne.mlir:268:11
	setlt.ul r5, r[12:13], r[8:9]
	.loc	1 283 13 is_stmt 1              # parallel-rne.mlir:283:13
	add.s r2, r18, r2
	.loc	1 268 11                        # parallel-rne.mlir:268:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 283 13                        # parallel-rne.mlir:283:13
	stores.w r4, 0(r2)
	.loc	1 268 11                        # parallel-rne.mlir:268:11
	beq r5, zero, .LBB0_94
.LBB0_99:                               # %scalar.ph47
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	add.ul r[4:5], r[12:13], r[6:7]
	slli r2, r4, 2
	add.s r4, r28, r2
	loads.w r10, 0(r4)
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	and r5, r10, r26
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	setlt.u r4, r22, r5
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r4, zero, .LBB0_101
# %bb.100:                              # %scalar.ph47
                                        #   in Loop: Header=BB0_99 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 280 19 is_stmt 1              # parallel-rne.mlir:280:19
	setlt.u r5, r3, r5
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r5, zero, .LBB0_98
	j .LBB0_97
.LBB0_101:                              #   in Loop: Header=BB0_99 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r10, r4
	.loc	1 280 19 is_stmt 1              # parallel-rne.mlir:280:19
	setlt.u r5, r3, r5
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r5, zero, .LBB0_98
	j .LBB0_97
.LBB0_102:                              # %vector.body49.preheader
                                        #   in Loop: Header=BB0_95 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_104
.LBB0_103:                              # %vector.body49
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 268 11 is_stmt 1              # parallel-rne.mlir:268:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 283 13                        # parallel-rne.mlir:283:13
	add.s r5, r18, r23
	.loc	1 268 11                        # parallel-rne.mlir:268:11
	seteq.d r4, r[13:14], r[15:16]
	.loc	1 283 13                        # parallel-rne.mlir:283:13
	stores.w r2, 12(r5)
	stores.w r25, 8(r5)
	stores.w r19, 4(r5)
	stores.w r17, 0(r5)
	.loc	1 268 11                        # parallel-rne.mlir:268:11
	bneq r4, zero, .LBB0_94
.LBB0_104:                              # %vector.body49
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	add.ul r[4:5], r[13:14], r[6:7]
	slli r23, r4, 2
	add.s r17, r28, r23
	loads.w r4, 12(r17)
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	and r24, r4, r26
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	setlt.u r2, r22, r24
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r2, zero, .LBB0_106
# %bb.105:                              # %vector.body49
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_107
.LBB0_106:                              #   in Loop: Header=BB0_104 Depth=3
	lui r2, 1024
	or r2, r4, r2
.LBB0_107:                              # %vector.body49
                                        #   in Loop: Header=BB0_104 Depth=3
	loads.w r20, 8(r17)
	and r12, r20, r26
	setlt.u r5, r22, r12
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r5, zero, .LBB0_109
# %bb.108:                              # %vector.body49
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r20, 0
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_104 Depth=3
	lui r5, 1024
	or r25, r20, r5
.LBB0_110:                              # %vector.body49
                                        #   in Loop: Header=BB0_104 Depth=3
	loads.w r27, 4(r17)
	and r10, r27, r26
	setlt.u r5, r22, r10
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r5, zero, .LBB0_112
# %bb.111:                              # %vector.body49
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r27, 0
	j .LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_104 Depth=3
	lui r5, 1024
	or r19, r27, r5
.LBB0_113:                              # %vector.body49
                                        #   in Loop: Header=BB0_104 Depth=3
	loads.w r11, 0(r17)
	and r5, r11, r26
	setlt.u r17, r22, r5
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r17, zero, .LBB0_122
# %bb.114:                              # %vector.body49
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r11, 0
	.loc	1 280 19 is_stmt 1              # parallel-rne.mlir:280:19
	setlt.u r5, r3, r5
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r5, zero, .LBB0_116
.LBB0_115:                              # %vector.body49
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r11, 16
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r1
	and r17, r5, r21
.LBB0_116:                              # %vector.body49
                                        #   in Loop: Header=BB0_104 Depth=3
	setlt.u r5, r3, r10
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r5, zero, .LBB0_119
# %bb.117:                              # %vector.body49
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r1
	and r19, r5, r21
	setlt.u r5, r3, r12
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	beq r5, zero, .LBB0_120
.LBB0_118:                              # %vector.body49
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r24
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r5, zero, .LBB0_103
	j .LBB0_121
.LBB0_119:                              # %vector.body49
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r12
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r5, zero, .LBB0_118
.LBB0_120:                              # %vector.body49
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r20, 16
	andi r5, r5, 1
	add.s r5, r20, r5
	add.s r5, r5, r1
	and r25, r5, r21
	setlt.u r5, r3, r24
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r5, zero, .LBB0_103
.LBB0_121:                              # %vector.body49
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r1
	and r2, r2, r21
	j .LBB0_103
.LBB0_122:                              #   in Loop: Header=BB0_104 Depth=3
	lui r17, 1024
	or r17, r11, r17
	.loc	1 280 19 is_stmt 1              # parallel-rne.mlir:280:19
	setlt.u r5, r3, r5
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	beq r5, zero, .LBB0_115
	j .LBB0_116
.LBB0_123:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r14
	.loc	1 260 7                         # parallel-rne.mlir:260:7
	mfence { sm }
	.loc	1 288 7                         # parallel-rne.mlir:288:7
	addli r2, zero, 6
	bneq r14, r2, .LBB0_251
	j .LBB0_220
.LBB0_124:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 120 7                         # parallel-rne.mlir:120:7
	xfence
	zext_int2long r[4:5], zero
	mfence { lm, sm, gm }
	j .LBB0_126
.LBB0_125:                              # %middle.block98
                                        #   in Loop: Header=BB0_126 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 3
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	addli r12, zero, 5
	zext_int2long r[4:5], r2
	.loc	1 127 9 is_stmt 1               # parallel-rne.mlir:127:9
	setlt.ul r2, r[6:7], r[4:5]
	addli.d r[4:5], r[6:7], 1
	beq r2, zero, .LBB0_154
.LBB0_126:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_135 Depth 3
                                        #       Child Loop BB0_130 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[4:5], r12
	.loc	1 128 11 is_stmt 1              # parallel-rne.mlir:128:11
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	bneq r18, r28, .LBB0_133
# %bb.127:                              # %scalar.ph92.preheader
                                        #   in Loop: Header=BB0_126 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_130
.LBB0_128:                              # %scalar.ph92
                                        #   in Loop: Header=BB0_130 Depth=3
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r1
	and r4, r4, r21
.LBB0_129:                              # %scalar.ph92
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 128 11                        # parallel-rne.mlir:128:11
	setlt.ul r5, r[12:13], r[8:9]
	.loc	1 143 13 is_stmt 1              # parallel-rne.mlir:143:13
	add.s r2, r18, r2
	.loc	1 128 11                        # parallel-rne.mlir:128:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	stores.w r4, 0(r2)
	.loc	1 128 11                        # parallel-rne.mlir:128:11
	beq r5, zero, .LBB0_125
.LBB0_130:                              # %scalar.ph92
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_126 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 129 19                        # parallel-rne.mlir:129:19
	add.ul r[4:5], r[12:13], r[6:7]
	slli r2, r4, 2
	add.s r4, r28, r2
	loads.w r10, 0(r4)
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	and r5, r10, r26
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	setlt.u r4, r22, r5
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r4, zero, .LBB0_132
# %bb.131:                              # %scalar.ph92
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 140 19 is_stmt 1              # parallel-rne.mlir:140:19
	setlt.u r5, r3, r5
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r5, zero, .LBB0_129
	j .LBB0_128
.LBB0_132:                              #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r10, r4
	.loc	1 140 19 is_stmt 1              # parallel-rne.mlir:140:19
	setlt.u r5, r3, r5
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r5, zero, .LBB0_129
	j .LBB0_128
.LBB0_133:                              # %vector.body94.preheader
                                        #   in Loop: Header=BB0_126 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_135
.LBB0_134:                              # %vector.body94
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 128 11 is_stmt 1              # parallel-rne.mlir:128:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	add.s r5, r18, r23
	.loc	1 128 11                        # parallel-rne.mlir:128:11
	seteq.d r4, r[13:14], r[15:16]
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	stores.w r2, 12(r5)
	stores.w r25, 8(r5)
	stores.w r19, 4(r5)
	stores.w r17, 0(r5)
	.loc	1 128 11                        # parallel-rne.mlir:128:11
	bneq r4, zero, .LBB0_125
.LBB0_135:                              # %vector.body94
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_126 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 129 19                        # parallel-rne.mlir:129:19
	add.ul r[4:5], r[13:14], r[6:7]
	slli r23, r4, 2
	add.s r17, r28, r23
	loads.w r4, 12(r17)
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	and r24, r4, r26
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	setlt.u r2, r22, r24
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r2, zero, .LBB0_137
# %bb.136:                              # %vector.body94
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_138
.LBB0_137:                              #   in Loop: Header=BB0_135 Depth=3
	lui r2, 1024
	or r2, r4, r2
.LBB0_138:                              # %vector.body94
                                        #   in Loop: Header=BB0_135 Depth=3
	loads.w r20, 8(r17)
	and r12, r20, r26
	setlt.u r5, r22, r12
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r5, zero, .LBB0_140
# %bb.139:                              # %vector.body94
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r20, 0
	j .LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_135 Depth=3
	lui r5, 1024
	or r25, r20, r5
.LBB0_141:                              # %vector.body94
                                        #   in Loop: Header=BB0_135 Depth=3
	loads.w r27, 4(r17)
	and r10, r27, r26
	setlt.u r5, r22, r10
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r5, zero, .LBB0_143
# %bb.142:                              # %vector.body94
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r27, 0
	j .LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_135 Depth=3
	lui r5, 1024
	or r19, r27, r5
.LBB0_144:                              # %vector.body94
                                        #   in Loop: Header=BB0_135 Depth=3
	loads.w r11, 0(r17)
	and r5, r11, r26
	setlt.u r17, r22, r5
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r17, zero, .LBB0_146
# %bb.145:                              # %vector.body94
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r11, 0
	.loc	1 140 19 is_stmt 1              # parallel-rne.mlir:140:19
	setlt.u r5, r3, r5
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	beq r5, zero, .LBB0_147
	j .LBB0_148
.LBB0_146:                              #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r17, 1024
	or r17, r11, r17
	.loc	1 140 19 is_stmt 1              # parallel-rne.mlir:140:19
	setlt.u r5, r3, r5
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r5, zero, .LBB0_148
.LBB0_147:                              # %vector.body94
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r11, 16
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r1
	and r17, r5, r21
.LBB0_148:                              # %vector.body94
                                        #   in Loop: Header=BB0_135 Depth=3
	setlt.u r5, r3, r10
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r5, zero, .LBB0_151
# %bb.149:                              # %vector.body94
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r1
	and r19, r5, r21
	setlt.u r5, r3, r12
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	beq r5, zero, .LBB0_152
.LBB0_150:                              # %vector.body94
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r24
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r5, zero, .LBB0_134
	j .LBB0_153
.LBB0_151:                              # %vector.body94
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r12
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r5, zero, .LBB0_150
.LBB0_152:                              # %vector.body94
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r20, 16
	andi r5, r5, 1
	add.s r5, r20, r5
	add.s r5, r5, r1
	and r25, r5, r21
	setlt.u r5, r3, r24
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r5, zero, .LBB0_134
.LBB0_153:                              # %vector.body94
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r1
	and r2, r2, r21
	j .LBB0_134
.LBB0_154:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 29 5 is_stmt 1                # parallel-rne.mlir:29:5
	core_id r14
	.loc	1 120 7                         # parallel-rne.mlir:120:7
	mfence { sm }
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	addli r2, zero, 1
	beq r14, r2, .LBB0_29
.LBB0_155:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	loadli.w r2,  -40(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_60
.LBB0_156:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_158
.LBB0_157:                              # %middle.block80
                                        #   in Loop: Header=BB0_158 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 11
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	addli r12, zero, 5
	zext_int2long r[4:5], r2
	.loc	1 183 9 is_stmt 1               # parallel-rne.mlir:183:9
	setlt.ul r2, r[6:7], r[4:5]
	addli.d r[4:5], r[6:7], 1
	beq r2, zero, .LBB0_186
.LBB0_158:                              # %.preheader21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_167 Depth 3
                                        #       Child Loop BB0_162 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[4:5], r12
	.loc	1 184 11 is_stmt 1              # parallel-rne.mlir:184:11
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	bneq r18, r28, .LBB0_165
# %bb.159:                              # %scalar.ph74.preheader
                                        #   in Loop: Header=BB0_158 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_162
.LBB0_160:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_162 Depth=3
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r1
	and r4, r4, r21
.LBB0_161:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 184 11                        # parallel-rne.mlir:184:11
	setlt.ul r5, r[12:13], r[8:9]
	.loc	1 199 13 is_stmt 1              # parallel-rne.mlir:199:13
	add.s r2, r18, r2
	.loc	1 184 11                        # parallel-rne.mlir:184:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 199 13                        # parallel-rne.mlir:199:13
	stores.w r4, 0(r2)
	.loc	1 184 11                        # parallel-rne.mlir:184:11
	beq r5, zero, .LBB0_157
.LBB0_162:                              # %scalar.ph74
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_158 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	add.ul r[4:5], r[12:13], r[6:7]
	slli r2, r4, 2
	add.s r4, r28, r2
	loads.w r10, 0(r4)
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	and r5, r10, r26
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	setlt.u r4, r22, r5
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r4, zero, .LBB0_164
# %bb.163:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 196 19 is_stmt 1              # parallel-rne.mlir:196:19
	setlt.u r5, r3, r5
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	bneq r5, zero, .LBB0_161
	j .LBB0_160
.LBB0_164:                              #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r10, r4
	.loc	1 196 19 is_stmt 1              # parallel-rne.mlir:196:19
	setlt.u r5, r3, r5
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	bneq r5, zero, .LBB0_161
	j .LBB0_160
.LBB0_165:                              # %vector.body76.preheader
                                        #   in Loop: Header=BB0_158 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_167
.LBB0_166:                              # %vector.body76
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 184 11 is_stmt 1              # parallel-rne.mlir:184:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 199 13                        # parallel-rne.mlir:199:13
	add.s r5, r18, r23
	.loc	1 184 11                        # parallel-rne.mlir:184:11
	seteq.d r4, r[13:14], r[15:16]
	.loc	1 199 13                        # parallel-rne.mlir:199:13
	stores.w r2, 12(r5)
	stores.w r25, 8(r5)
	stores.w r19, 4(r5)
	stores.w r17, 0(r5)
	.loc	1 184 11                        # parallel-rne.mlir:184:11
	bneq r4, zero, .LBB0_157
.LBB0_167:                              # %vector.body76
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_158 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	add.ul r[4:5], r[13:14], r[6:7]
	slli r23, r4, 2
	add.s r17, r28, r23
	loads.w r4, 12(r17)
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	and r24, r4, r26
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	setlt.u r2, r22, r24
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r2, zero, .LBB0_169
# %bb.168:                              # %vector.body76
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_170
.LBB0_169:                              #   in Loop: Header=BB0_167 Depth=3
	lui r2, 1024
	or r2, r4, r2
.LBB0_170:                              # %vector.body76
                                        #   in Loop: Header=BB0_167 Depth=3
	loads.w r20, 8(r17)
	and r12, r20, r26
	setlt.u r5, r22, r12
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r5, zero, .LBB0_172
# %bb.171:                              # %vector.body76
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r20, 0
	j .LBB0_173
.LBB0_172:                              #   in Loop: Header=BB0_167 Depth=3
	lui r5, 1024
	or r25, r20, r5
.LBB0_173:                              # %vector.body76
                                        #   in Loop: Header=BB0_167 Depth=3
	loads.w r27, 4(r17)
	and r10, r27, r26
	setlt.u r5, r22, r10
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r5, zero, .LBB0_175
# %bb.174:                              # %vector.body76
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r27, 0
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_167 Depth=3
	lui r5, 1024
	or r19, r27, r5
.LBB0_176:                              # %vector.body76
                                        #   in Loop: Header=BB0_167 Depth=3
	loads.w r11, 0(r17)
	and r5, r11, r26
	setlt.u r17, r22, r5
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r17, zero, .LBB0_185
# %bb.177:                              # %vector.body76
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r11, 0
	.loc	1 196 19 is_stmt 1              # parallel-rne.mlir:196:19
	setlt.u r5, r3, r5
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	bneq r5, zero, .LBB0_179
.LBB0_178:                              # %vector.body76
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r11, 16
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r1
	and r17, r5, r21
.LBB0_179:                              # %vector.body76
                                        #   in Loop: Header=BB0_167 Depth=3
	setlt.u r5, r3, r10
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	bneq r5, zero, .LBB0_182
# %bb.180:                              # %vector.body76
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r1
	and r19, r5, r21
	setlt.u r5, r3, r12
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	beq r5, zero, .LBB0_183
.LBB0_181:                              # %vector.body76
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r24
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	bneq r5, zero, .LBB0_166
	j .LBB0_184
.LBB0_182:                              # %vector.body76
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r12
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	bneq r5, zero, .LBB0_181
.LBB0_183:                              # %vector.body76
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r20, 16
	andi r5, r5, 1
	add.s r5, r20, r5
	add.s r5, r5, r1
	and r25, r5, r21
	setlt.u r5, r3, r24
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	bneq r5, zero, .LBB0_166
.LBB0_184:                              # %vector.body76
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r1
	and r2, r2, r21
	j .LBB0_166
.LBB0_185:                              #   in Loop: Header=BB0_167 Depth=3
	lui r17, 1024
	or r17, r11, r17
	.loc	1 196 19 is_stmt 1              # parallel-rne.mlir:196:19
	setlt.u r5, r3, r5
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	beq r5, zero, .LBB0_178
	j .LBB0_179
.LBB0_186:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r14
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	mfence { sm }
	.loc	1 204 7                         # parallel-rne.mlir:204:7
	addli r2, zero, 3
	beq r14, r2, .LBB0_61
.LBB0_187:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 232 7                         # parallel-rne.mlir:232:7
	loadli.w r2,  -16(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_92
.LBB0_188:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 232 7                         # parallel-rne.mlir:232:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_190
.LBB0_189:                              # %middle.block62
                                        #   in Loop: Header=BB0_190 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 19
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	addli r12, zero, 5
	zext_int2long r[4:5], r2
	.loc	1 239 9 is_stmt 1               # parallel-rne.mlir:239:9
	setlt.ul r2, r[6:7], r[4:5]
	addli.d r[4:5], r[6:7], 1
	beq r2, zero, .LBB0_218
.LBB0_190:                              # %.preheader19
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_199 Depth 3
                                        #       Child Loop BB0_194 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[4:5], r12
	.loc	1 240 11 is_stmt 1              # parallel-rne.mlir:240:11
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	bneq r18, r28, .LBB0_197
# %bb.191:                              # %scalar.ph56.preheader
                                        #   in Loop: Header=BB0_190 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_194
.LBB0_192:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_194 Depth=3
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r1
	and r4, r4, r21
.LBB0_193:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 240 11                        # parallel-rne.mlir:240:11
	setlt.ul r5, r[12:13], r[8:9]
	.loc	1 255 13 is_stmt 1              # parallel-rne.mlir:255:13
	add.s r2, r18, r2
	.loc	1 240 11                        # parallel-rne.mlir:240:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 255 13                        # parallel-rne.mlir:255:13
	stores.w r4, 0(r2)
	.loc	1 240 11                        # parallel-rne.mlir:240:11
	beq r5, zero, .LBB0_189
.LBB0_194:                              # %scalar.ph56
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_190 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	add.ul r[4:5], r[12:13], r[6:7]
	slli r2, r4, 2
	add.s r4, r28, r2
	loads.w r10, 0(r4)
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	and r5, r10, r26
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	setlt.u r4, r22, r5
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r4, zero, .LBB0_196
# %bb.195:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 252 19 is_stmt 1              # parallel-rne.mlir:252:19
	setlt.u r5, r3, r5
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	bneq r5, zero, .LBB0_193
	j .LBB0_192
.LBB0_196:                              #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r10, r4
	.loc	1 252 19 is_stmt 1              # parallel-rne.mlir:252:19
	setlt.u r5, r3, r5
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	bneq r5, zero, .LBB0_193
	j .LBB0_192
.LBB0_197:                              # %vector.body58.preheader
                                        #   in Loop: Header=BB0_190 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_199
.LBB0_198:                              # %vector.body58
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 240 11 is_stmt 1              # parallel-rne.mlir:240:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 255 13                        # parallel-rne.mlir:255:13
	add.s r5, r18, r23
	.loc	1 240 11                        # parallel-rne.mlir:240:11
	seteq.d r4, r[13:14], r[15:16]
	.loc	1 255 13                        # parallel-rne.mlir:255:13
	stores.w r2, 12(r5)
	stores.w r25, 8(r5)
	stores.w r19, 4(r5)
	stores.w r17, 0(r5)
	.loc	1 240 11                        # parallel-rne.mlir:240:11
	bneq r4, zero, .LBB0_189
.LBB0_199:                              # %vector.body58
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_190 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	add.ul r[4:5], r[13:14], r[6:7]
	slli r23, r4, 2
	add.s r17, r28, r23
	loads.w r4, 12(r17)
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	and r24, r4, r26
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	setlt.u r2, r22, r24
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r2, zero, .LBB0_201
# %bb.200:                              # %vector.body58
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_202
.LBB0_201:                              #   in Loop: Header=BB0_199 Depth=3
	lui r2, 1024
	or r2, r4, r2
.LBB0_202:                              # %vector.body58
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r20, 8(r17)
	and r12, r20, r26
	setlt.u r5, r22, r12
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r5, zero, .LBB0_204
# %bb.203:                              # %vector.body58
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r20, 0
	j .LBB0_205
.LBB0_204:                              #   in Loop: Header=BB0_199 Depth=3
	lui r5, 1024
	or r25, r20, r5
.LBB0_205:                              # %vector.body58
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r27, 4(r17)
	and r10, r27, r26
	setlt.u r5, r22, r10
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r5, zero, .LBB0_207
# %bb.206:                              # %vector.body58
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r27, 0
	j .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_199 Depth=3
	lui r5, 1024
	or r19, r27, r5
.LBB0_208:                              # %vector.body58
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r11, 0(r17)
	and r5, r11, r26
	setlt.u r17, r22, r5
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r17, zero, .LBB0_217
# %bb.209:                              # %vector.body58
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r11, 0
	.loc	1 252 19 is_stmt 1              # parallel-rne.mlir:252:19
	setlt.u r5, r3, r5
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	bneq r5, zero, .LBB0_211
.LBB0_210:                              # %vector.body58
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r11, 16
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r1
	and r17, r5, r21
.LBB0_211:                              # %vector.body58
                                        #   in Loop: Header=BB0_199 Depth=3
	setlt.u r5, r3, r10
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	bneq r5, zero, .LBB0_214
# %bb.212:                              # %vector.body58
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r1
	and r19, r5, r21
	setlt.u r5, r3, r12
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	beq r5, zero, .LBB0_215
.LBB0_213:                              # %vector.body58
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r24
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	bneq r5, zero, .LBB0_198
	j .LBB0_216
.LBB0_214:                              # %vector.body58
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r12
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	bneq r5, zero, .LBB0_213
.LBB0_215:                              # %vector.body58
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r20, 16
	andi r5, r5, 1
	add.s r5, r20, r5
	add.s r5, r5, r1
	and r25, r5, r21
	setlt.u r5, r3, r24
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	bneq r5, zero, .LBB0_198
.LBB0_216:                              # %vector.body58
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r1
	and r2, r2, r21
	j .LBB0_198
.LBB0_217:                              #   in Loop: Header=BB0_199 Depth=3
	lui r17, 1024
	or r17, r11, r17
	.loc	1 252 19 is_stmt 1              # parallel-rne.mlir:252:19
	setlt.u r5, r3, r5
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	beq r5, zero, .LBB0_210
	j .LBB0_211
.LBB0_218:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r14
	.loc	1 232 7                         # parallel-rne.mlir:232:7
	mfence { sm }
	.loc	1 260 7                         # parallel-rne.mlir:260:7
	beq r14, r12, .LBB0_93
.LBB0_219:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 288 7                         # parallel-rne.mlir:288:7
	addli r2, zero, 6
	bneq r14, r2, .LBB0_251
.LBB0_220:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 288 7                         # parallel-rne.mlir:288:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_222
.LBB0_221:                              # %middle.block44
                                        #   in Loop: Header=BB0_222 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 27
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	addli r12, zero, 5
	zext_int2long r[4:5], r2
	.loc	1 295 9 is_stmt 1               # parallel-rne.mlir:295:9
	setlt.ul r2, r[6:7], r[4:5]
	addli.d r[4:5], r[6:7], 1
	beq r2, zero, .LBB0_250
.LBB0_222:                              # %.preheader17
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_231 Depth 3
                                        #       Child Loop BB0_226 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[4:5], r12
	.loc	1 296 11 is_stmt 1              # parallel-rne.mlir:296:11
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	bneq r18, r28, .LBB0_229
# %bb.223:                              # %scalar.ph38.preheader
                                        #   in Loop: Header=BB0_222 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_226
.LBB0_224:                              # %scalar.ph38
                                        #   in Loop: Header=BB0_226 Depth=3
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r1
	and r4, r4, r21
.LBB0_225:                              # %scalar.ph38
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 296 11                        # parallel-rne.mlir:296:11
	setlt.ul r5, r[12:13], r[8:9]
	.loc	1 311 13 is_stmt 1              # parallel-rne.mlir:311:13
	add.s r2, r18, r2
	.loc	1 296 11                        # parallel-rne.mlir:296:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 311 13                        # parallel-rne.mlir:311:13
	stores.w r4, 0(r2)
	.loc	1 296 11                        # parallel-rne.mlir:296:11
	beq r5, zero, .LBB0_221
.LBB0_226:                              # %scalar.ph38
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_222 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	add.ul r[4:5], r[12:13], r[6:7]
	slli r2, r4, 2
	add.s r4, r28, r2
	loads.w r10, 0(r4)
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	and r5, r10, r26
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	setlt.u r4, r22, r5
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r4, zero, .LBB0_228
# %bb.227:                              # %scalar.ph38
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 308 19 is_stmt 1              # parallel-rne.mlir:308:19
	setlt.u r5, r3, r5
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r5, zero, .LBB0_225
	j .LBB0_224
.LBB0_228:                              #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r10, r4
	.loc	1 308 19 is_stmt 1              # parallel-rne.mlir:308:19
	setlt.u r5, r3, r5
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r5, zero, .LBB0_225
	j .LBB0_224
.LBB0_229:                              # %vector.body40.preheader
                                        #   in Loop: Header=BB0_222 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_231
.LBB0_230:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 296 11 is_stmt 1              # parallel-rne.mlir:296:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 311 13                        # parallel-rne.mlir:311:13
	add.s r5, r18, r23
	.loc	1 296 11                        # parallel-rne.mlir:296:11
	seteq.d r4, r[13:14], r[15:16]
	.loc	1 311 13                        # parallel-rne.mlir:311:13
	stores.w r2, 12(r5)
	stores.w r25, 8(r5)
	stores.w r19, 4(r5)
	stores.w r17, 0(r5)
	.loc	1 296 11                        # parallel-rne.mlir:296:11
	bneq r4, zero, .LBB0_221
.LBB0_231:                              # %vector.body40
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_222 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	add.ul r[4:5], r[13:14], r[6:7]
	slli r23, r4, 2
	add.s r17, r28, r23
	loads.w r4, 12(r17)
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	and r24, r4, r26
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	setlt.u r2, r22, r24
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r2, zero, .LBB0_233
# %bb.232:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_234
.LBB0_233:                              #   in Loop: Header=BB0_231 Depth=3
	lui r2, 1024
	or r2, r4, r2
.LBB0_234:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r20, 8(r17)
	and r12, r20, r26
	setlt.u r5, r22, r12
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r5, zero, .LBB0_236
# %bb.235:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r20, 0
	j .LBB0_237
.LBB0_236:                              #   in Loop: Header=BB0_231 Depth=3
	lui r5, 1024
	or r25, r20, r5
.LBB0_237:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r27, 4(r17)
	and r10, r27, r26
	setlt.u r5, r22, r10
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r5, zero, .LBB0_239
# %bb.238:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r27, 0
	j .LBB0_240
.LBB0_239:                              #   in Loop: Header=BB0_231 Depth=3
	lui r5, 1024
	or r19, r27, r5
.LBB0_240:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r11, 0(r17)
	and r5, r11, r26
	setlt.u r17, r22, r5
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r17, zero, .LBB0_249
# %bb.241:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r11, 0
	.loc	1 308 19 is_stmt 1              # parallel-rne.mlir:308:19
	setlt.u r5, r3, r5
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r5, zero, .LBB0_243
.LBB0_242:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r11, 16
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r1
	and r17, r5, r21
.LBB0_243:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	setlt.u r5, r3, r10
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r5, zero, .LBB0_246
# %bb.244:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r1
	and r19, r5, r21
	setlt.u r5, r3, r12
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	beq r5, zero, .LBB0_247
.LBB0_245:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r24
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r5, zero, .LBB0_230
	j .LBB0_248
.LBB0_246:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r12
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r5, zero, .LBB0_245
.LBB0_247:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r20, 16
	andi r5, r5, 1
	add.s r5, r20, r5
	add.s r5, r5, r1
	and r25, r5, r21
	setlt.u r5, r3, r24
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r5, zero, .LBB0_230
.LBB0_248:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r1
	and r2, r2, r21
	j .LBB0_230
.LBB0_249:                              #   in Loop: Header=BB0_231 Depth=3
	lui r17, 1024
	or r17, r11, r17
	.loc	1 308 19 is_stmt 1              # parallel-rne.mlir:308:19
	setlt.u r5, r3, r5
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	beq r5, zero, .LBB0_242
	j .LBB0_243
.LBB0_250:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r14
	.loc	1 288 7                         # parallel-rne.mlir:288:7
	mfence { sm }
.LBB0_251:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 316 7                         # parallel-rne.mlir:316:7
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	zext_int2long r[4:5], zero
	store.d r[4:5], -16(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_283
# %bb.252:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 316 7                         # parallel-rne.mlir:316:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_254
.LBB0_253:                              # %middle.block
                                        #   in Loop: Header=BB0_254 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[4:5], -8(r30)                  # 8-byte Folded Reload
	addli r12, zero, 5
	.loc	1 323 9 is_stmt 1               # parallel-rne.mlir:323:9
	setlt.ul r2, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r2, zero, .LBB0_282
.LBB0_254:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_263 Depth 3
                                        #       Child Loop BB0_258 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	sll.d r[13:14], r[4:5], r2
	.loc	1 324 11 is_stmt 1              # parallel-rne.mlir:324:11
	bneq r18, r28, .LBB0_261
# %bb.255:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_254 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_258
.LBB0_256:                              # %scalar.ph
                                        #   in Loop: Header=BB0_258 Depth=3
	srli r4, r6, 16
	andi r4, r4, 1
	add.s r4, r6, r4
	add.s r4, r4, r1
	and r4, r4, r21
.LBB0_257:                              # %scalar.ph
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 324 11                        # parallel-rne.mlir:324:11
	setlt.ul r5, r[10:11], r[8:9]
	.loc	1 339 13 is_stmt 1              # parallel-rne.mlir:339:13
	add.s r2, r18, r2
	.loc	1 324 11                        # parallel-rne.mlir:324:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 339 13                        # parallel-rne.mlir:339:13
	stores.w r4, 0(r2)
	.loc	1 324 11                        # parallel-rne.mlir:324:11
	beq r5, zero, .LBB0_253
.LBB0_258:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_254 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	add.ul r[4:5], r[10:11], r[13:14]
	slli r2, r4, 2
	add.s r4, r28, r2
	loads.w r6, 0(r4)
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	and r5, r6, r26
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	setlt.u r4, r22, r5
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	bneq r4, zero, .LBB0_260
# %bb.259:                              # %scalar.ph
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r6, 0
	.loc	1 336 19 is_stmt 1              # parallel-rne.mlir:336:19
	setlt.u r5, r3, r5
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r5, zero, .LBB0_257
	j .LBB0_256
.LBB0_260:                              #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r6, r4
	.loc	1 336 19 is_stmt 1              # parallel-rne.mlir:336:19
	setlt.u r5, r3, r5
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r5, zero, .LBB0_257
	j .LBB0_256
.LBB0_261:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_254 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	load.d r[10:11], -16(r30)               # 8-byte Folded Reload
	j .LBB0_263
.LBB0_262:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 324 11 is_stmt 1              # parallel-rne.mlir:324:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 339 13                        # parallel-rne.mlir:339:13
	add.s r2, r18, r2
	.loc	1 324 11                        # parallel-rne.mlir:324:11
	seteq.d r4, r[10:11], r[15:16]
	.loc	1 339 13                        # parallel-rne.mlir:339:13
	stores.w r27, 12(r2)
	stores.w r17, 8(r2)
	stores.w r20, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 324 11                        # parallel-rne.mlir:324:11
	bneq r4, zero, .LBB0_253
.LBB0_263:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_254 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	add.ul r[4:5], r[10:11], r[13:14]
	slli r2, r4, 2
	add.s r12, r28, r2
	loads.w r4, 12(r12)
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	and r25, r4, r26
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	setlt.u r5, r22, r25
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	bneq r5, zero, .LBB0_265
# %bb.264:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r27, r4, 0
	j .LBB0_266
.LBB0_265:                              #   in Loop: Header=BB0_263 Depth=3
	lui r5, 1024
	or r27, r4, r5
.LBB0_266:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	loads.w r19, 8(r12)
	and r23, r19, r26
	setlt.u r5, r22, r23
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	bneq r5, zero, .LBB0_268
# %bb.267:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	j .LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_263 Depth=3
	lui r5, 1024
	or r17, r19, r5
.LBB0_269:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	loads.w r24, 4(r12)
	and r6, r24, r26
	setlt.u r5, r22, r6
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	bneq r5, zero, .LBB0_271
# %bb.270:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r24, 0
	j .LBB0_272
.LBB0_271:                              #   in Loop: Header=BB0_263 Depth=3
	lui r5, 1024
	or r20, r24, r5
.LBB0_272:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	loads.w r7, 0(r12)
	and r5, r7, r26
	setlt.u r12, r22, r5
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	bneq r12, zero, .LBB0_281
# %bb.273:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r7, 0
	.loc	1 336 19 is_stmt 1              # parallel-rne.mlir:336:19
	setlt.u r5, r3, r5
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r5, zero, .LBB0_275
.LBB0_274:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r7, 16
	andi r5, r5, 1
	add.s r5, r7, r5
	add.s r5, r5, r1
	and r12, r5, r21
.LBB0_275:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	setlt.u r5, r3, r6
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r5, zero, .LBB0_278
# %bb.276:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r24, 16
	andi r5, r5, 1
	add.s r5, r24, r5
	add.s r5, r5, r1
	and r20, r5, r21
	setlt.u r5, r3, r23
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	beq r5, zero, .LBB0_279
.LBB0_277:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r25
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r5, zero, .LBB0_262
	j .LBB0_280
.LBB0_278:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r23
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r5, zero, .LBB0_277
.LBB0_279:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r19, 16
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r1
	and r17, r5, r21
	setlt.u r5, r3, r25
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r5, zero, .LBB0_262
.LBB0_280:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r27, r4, r21
	j .LBB0_262
.LBB0_281:                              #   in Loop: Header=BB0_263 Depth=3
	lui r12, 1024
	or r12, r7, r12
	.loc	1 336 19 is_stmt 1              # parallel-rne.mlir:336:19
	setlt.u r5, r3, r5
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	beq r5, zero, .LBB0_274
	j .LBB0_275
.LBB0_282:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r14
	.loc	1 316 7                         # parallel-rne.mlir:316:7
	mfence { sm }
.LBB0_283:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 344 7                         # parallel-rne.mlir:344:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 345 7                         # parallel-rne.mlir:345:7
	addli r2, zero, 3
	.loc	1 344 7                         # parallel-rne.mlir:344:7
	sync_core
	.loc	1 345 7                         # parallel-rne.mlir:345:7
	beq r14, r2, .LBB0_5
# %bb.284:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r17, zero, 2
	addli r18, zero, 64
	.loc	1 362 7 is_stmt 1               # parallel-rne.mlir:362:7
	bneq r14, zero, .LBB0_7
# %bb.285:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -68(r30)                  # 4-byte Folded Reload
	addli r4, zero, 224
	.loc	1 349 13 is_stmt 1              # parallel-rne.mlir:349:13
	load.d r[10:11], -16(r30)               # 8-byte Folded Reload
	zext_int2long r[4:5], r4
	slli r2, r2, 5
	.loc	1 352 13                        # parallel-rne.mlir:352:13
	zext_int2long r[6:7], r2
	loadli.w r2,  -52(r30)                  # 4-byte Folded Reload
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	min.ul r[4:5], r[6:7], r[4:5]
	slli r2, r2, 5
	addli.d r[4:5], r[4:5], 32
	.loc	1 347 13                        # parallel-rne.mlir:347:13
	sext_int2long r[8:9], r2
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	addli r2, zero, 14
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	max.ul r[4:5], r[4:5], r[6:7]
	.loc	1 349 13                        # parallel-rne.mlir:349:13
	min.sl r[10:11], r[8:9], r[10:11]
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	sub.sl r[4:5], r[4:5], r[6:7]
	.loc	1 349 13                        # parallel-rne.mlir:349:13
	addli.d r[10:11], r[10:11], 32
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	min.ul r[4:5], r[4:5], r[15:16]
	.loc	1 350 13                        # parallel-rne.mlir:350:13
	max.sl r[6:7], r[10:11], r[8:9]
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	load.d r[10:11], -48(r30)               # 8-byte Folded Reload
	.loc	1 351 13                        # parallel-rne.mlir:351:13
	sub.sl r[6:7], r[6:7], r[8:9]
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	load.d r[8:9], 16(r30)
	sll.d r[10:11], r[10:11], r2
	addli r2, zero, 12
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	min.sl r[6:7], r[6:7], r[15:16]
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	add.ul r[8:9], r[8:9], r[10:11]
	load.d r[10:11], -64(r30)               # 8-byte Folded Reload
	xwait r2, 0
	lui r2, 10
	lock zero, r12
	ori r2, r2, 64
	add.ul r[8:9], r[8:9], r[10:11]
	addli r11, zero, 1
	addli r10, r4, 31
	slli r4, r4, 1
	addli r5, zero, 128
	add.s r2, r28, r2
	dma_cfg r11, r11, zero, 0
	dma_cfg zero, r11, zero, 1
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r2, r18, 3
	srli r2, r10, 5
	dma_cfg r18, r5, r2, 4
	andi r2, r4, 62
	addli r4, zero, 512
	dma_cfg r4, r5, r6, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	addli r2, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r12
	j .LBB0_6
.LBB0_286:                              # %._crit_edge
	.loc	1 364 5                         # parallel-rne.mlir:364:5
	xsignal zero, 0
	bneq r14, zero, .LBB0_288
# %bb.287:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 364 5                         # parallel-rne.mlir:364:5
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
.LBB0_288:
	.loc	1 365 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:365:5
	addli sp, sp, 80
	mfence { lm, sm, gm }
	exit
.Ltmp1:
.Lfunc_end0:
	.size	triton_mm, .Lfunc_end0-triton_mm
	.cfi_endproc
                                        # -- End function
	.type	XPU_KERNEL_PARAM_SIZE_triton_mm,@object # @XPU_KERNEL_PARAM_SIZE_triton_mm
	.section	.XPU.KERNEL_PARAM_SIZE.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE_triton_mm:
	.long	36                              # 0x24
	.size	XPU_KERNEL_PARAM_SIZE_triton_mm, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_mm,@object # @XPU_KERNEL_STACK_SIZE_triton_mm
	.section	.XPU.KERNEL_STACK_SIZE.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_mm:
	.long	144                             # 0x90
	.size	XPU_KERNEL_STACK_SIZE_triton_mm, 4

	.type	XPU_KERNEL_DYNAMIC_LM_triton_mm,@object # @XPU_KERNEL_DYNAMIC_LM_triton_mm
	.section	.XPU.KERNEL_DYNAMIC_LM.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM_triton_mm:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM_triton_mm, 4

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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-5uv_6f__" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
