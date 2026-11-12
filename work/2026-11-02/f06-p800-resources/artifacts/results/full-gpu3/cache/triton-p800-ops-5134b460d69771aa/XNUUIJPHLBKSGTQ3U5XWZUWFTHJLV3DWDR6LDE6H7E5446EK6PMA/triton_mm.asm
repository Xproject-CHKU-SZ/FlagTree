	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-6dm_6dus" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -144
	addli r1, zero, 1
.Ltmp0:
	.loc	1 28 5 prologue_end             # parallel-rne.mlir:28:5
	core_id r8
	addli r30, sp, 80
	xsignal_mode_cfg r1
	beq r8, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 28 5                          # parallel-rne.mlir:28:5
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
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	.loc	1 30 10 is_stmt 1               # parallel-rne.mlir:30:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
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
	.loc	1 47 5                          # parallel-rne.mlir:47:5
	ble.s r2, r1, .LBB0_287
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 39 11 is_stmt 1               # parallel-rne.mlir:39:11
	sext_int2long r[12:13], r1
	lui r1, 524287
	addli r10, zero, 4
	addli r14, zero, 8
	addli r15, zero, 1
	addli r16, zero, 7
	addli r17, zero, 11
	lui r19, 522240
	lui r21, 1048560
	addli r11, zero, 0
	store.d r[2:3], -80(r30)                # 8-byte Folded Spill
	ori r22, r1, 4095
	lui r1, 7
	lui r2, 522239
	ori r23, r1, 4095
	ori r25, r2, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 352 7                         # parallel-rne.mlir:352:7
	addli r1, zero, 11
	addli r10, zero, 4
	addli r14, zero, 8
	addli r15, zero, 1
	xsignal r1, 0
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	addli r1, zero, 12
	xsignal r1, 0
	load.d r[12:13], -40(r30)               # 8-byte Folded Reload
	loadli.w r11,  -28(r30)                 # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 47 5                          # parallel-rne.mlir:47:5
	load.d r[1:2], -80(r30)                 # 8-byte Folded Reload
	addli.d r[12:13], r[12:13], 1
	addli r11, r11, 1
	addli r16, zero, 7
	addli r17, zero, 11
	setlt.sl r1, r[12:13], r[1:2]
	beq r1, zero, .LBB0_287
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_37 Depth 2
                                        #       Child Loop BB0_46 Depth 3
                                        #       Child Loop BB0_40 Depth 3
                                        #     Child Loop BB0_68 Depth 2
                                        #       Child Loop BB0_77 Depth 3
                                        #       Child Loop BB0_71 Depth 3
                                        #     Child Loop BB0_99 Depth 2
                                        #       Child Loop BB0_108 Depth 3
                                        #       Child Loop BB0_102 Depth 3
                                        #     Child Loop BB0_130 Depth 2
                                        #       Child Loop BB0_139 Depth 3
                                        #       Child Loop BB0_133 Depth 3
                                        #     Child Loop BB0_161 Depth 2
                                        #       Child Loop BB0_170 Depth 3
                                        #       Child Loop BB0_164 Depth 3
                                        #     Child Loop BB0_192 Depth 2
                                        #       Child Loop BB0_201 Depth 3
                                        #       Child Loop BB0_195 Depth 3
                                        #     Child Loop BB0_223 Depth 2
                                        #       Child Loop BB0_232 Depth 3
                                        #       Child Loop BB0_226 Depth 3
                                        #     Child Loop BB0_255 Depth 2
                                        #       Child Loop BB0_264 Depth 3
                                        #       Child Loop BB0_258 Depth 3
	.loc	1 49 13                         # parallel-rne.mlir:49:13
	loadli.w r1,  32(r30)
	.loc	1 50 13                         # parallel-rne.mlir:50:13
	loadli.w r2,  28(r30)
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	mod.s r6, r11, r10
	addli r20, r11, 0
	addli r4, zero, 3
	.loc	1 89 7                          # parallel-rne.mlir:89:7
	storeli.w r20, -28(r30)                 # 4-byte Folded Spill
	.loc	1 49 13                         # parallel-rne.mlir:49:13
	div.s r1, r12, r1
	.loc	1 50 13                         # parallel-rne.mlir:50:13
	div.s r2, r1, r2
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	div.s r1, r2, r14
	slli r7, r1, 3
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	sub.s r1, r15, r7
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	min.s r9, r1, r14
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	mod.s r1, r2, r9
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	add.s r3, r1, r7
	.loc	1 83 13                         # parallel-rne.mlir:83:13
	slli r1, r6, 12
	.loc	1 66 13                         # parallel-rne.mlir:66:13
	zext_int2long r[26:27], r3
	storeli.w r3, -52(r30)                  # 4-byte Folded Spill
	.loc	1 85 13                         # parallel-rne.mlir:85:13
	lui r3, 8
	add.s r11, r1, r3
	store.d r[26:27], -8(r30)               # 8-byte Folded Spill
	.loc	1 89 7                          # parallel-rne.mlir:89:7
	bneq r8, r15, .LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	sll.d r[3:4], r[26:27], r17
	load.d r[26:27], 0(r30)
	addli r18, zero, 3
	xwait r18, 0
	add.ul r[4:5], r[26:27], r[3:4]
	blt.s r18, r20, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 5
	addli r20, zero, 2
	.loc	1 89 7                          # parallel-rne.mlir:89:7
	addli r24, zero, 6
	addli r26, zero, 17
	lock zero, r3
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 9
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 10
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 12
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 13
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 14
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 15
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 16
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 18
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 19
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 20
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 21
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 22
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 23
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 24
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 25
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 26
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 27
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 28
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 29
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 30
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 31
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 64
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r11, zero, r26, 3
	addli r26, zero, 128
	dma_cfg r26, zero, r20, 4
	addli r20, zero, 256
	dma_cfg r20, zero, r24, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
.LBB0_10:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r3, 8
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
	addli r20, zero, 64
	addli r24, zero, 128
	addli r26, zero, 256
	.loc	1 89 7                          # parallel-rne.mlir:89:7
	lock zero, r10
	ori r3, r3, 64
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r5, zero, 2
	add.s r3, r1, r3
	dma_cfg r3, r4, r20, 3
	addli r4, zero, 2
	addli r5, zero, 16
	addli r3, zero, 5
	dma_cfg r24, r20, r4, 4
	dma_cfg r26, r24, r5, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r3
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 6
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 12
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 13
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 18
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 19
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 20
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 21
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 22
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 23
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 24
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 25
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 26
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 27
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 28
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 29
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 30
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 31
	dma_cfg zero, zero, r4, 10
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r11, zero, r20, 3
	addli r11, zero, 2
	dma_cfg r24, zero, r11, 4
	dma_cfg r26, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	xsignal r11, 0
	load.d r[26:27], -8(r30)                # 8-byte Folded Reload
	.loc	1 90 7 is_stmt 1                # parallel-rne.mlir:90:7
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 2
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	bneq r8, r5, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 5
	xwait r5, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 16
	ds_cfg r5, zero, 0
	addli r5, zero, 64
	ds_cfg r5, zero, 1
	ds_cfg r5, zero, 14
	ds_cfg r3, zero, 13
	addli r3, zero, 1
	shuffle_batch r1, r11, r5, 1
	unlock zero
	xsignal r4, 0
	storeli.w r3, -48(r30)                  # 4-byte Folded Spill
	xsignal r10, 0
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	addli r11, zero, 2
	addli r18, zero, 6
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	sub.s r2, r2, r7
	.loc	1 98 13 is_stmt 1               # parallel-rne.mlir:98:13
	slli r4, r6, 15
	.loc	1 104 7                         # parallel-rne.mlir:104:7
	store.d r[12:13], -40(r30)              # 8-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.s r2, r2, r9
	slli r9, r6, 13
	storeli.w r2, -68(r30)                  # 4-byte Folded Spill
	zext_int2long r[2:3], r2
	sll.d r[5:6], r[2:3], r16
	.loc	1 100 13 is_stmt 1              # parallel-rne.mlir:100:13
	lui r2, 12
	.loc	1 104 7                         # parallel-rne.mlir:104:7
	sll.d r[5:6], r[5:6], r15
	.loc	1 100 13                        # parallel-rne.mlir:100:13
	add.s r20, r4, r2
	.loc	1 104 7                         # parallel-rne.mlir:104:7
	store.d r[5:6], -64(r30)                # 8-byte Folded Spill
	bneq r8, r18, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli.d r[1:2], r[5:6], 0
	.loc	1 104 7                         # parallel-rne.mlir:104:7
	load.d r[5:6], 8(r30)
	xwait r16, 0
	addli r3, zero, 3
	add.ul r[5:6], r[5:6], r[1:2]
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	blt.s r3, r1, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 5
	.loc	1 104 7                         # parallel-rne.mlir:104:7
	addli r7, zero, 6
	addli r18, zero, 128
	lock zero, r1
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 9
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 12
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 13
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 14
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 15
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 16
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 17
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 18
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 19
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
	addli r7, zero, 64
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r20, zero, r7, 3
	dma_cfg r18, zero, r10, 4
	addli r18, zero, 512
	dma_cfg r18, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r1
.LBB0_18:                               # %.thread15
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r1, 12
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	addli r7, zero, 64
	.loc	1 104 7                         # parallel-rne.mlir:104:7
	lock zero, r10
	ori r1, r1, 64
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r6, zero, 2
	add.s r1, r4, r1
	addli r4, zero, 9
	dma_cfg r1, r5, r7, 3
	addli r1, zero, 128
	addli r6, zero, 512
	addli r5, zero, 128
	dma_cfg r1, r7, r10, 4
	addli r1, zero, 256
	dma_cfg r6, r1, r7, 5
	addli r1, zero, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r1
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 6
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 12
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 13
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 16
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 18
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 19
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 20
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 21
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 22
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 23
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 24
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 25
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 26
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 27
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 28
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 29
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 30
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 31
	dma_cfg zero, zero, r4, 10
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r20, zero, r7, 3
	dma_cfg r5, zero, r10, 4
	dma_cfg r6, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r1
	xsignal r3, 0
	.loc	1 105 7 is_stmt 1               # parallel-rne.mlir:105:7
	j .LBB0_28
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 3
	.loc	1 105 7                         # parallel-rne.mlir:105:7
	beq r8, r10, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 6
	addli r5, zero, 64
	.loc	1 105 7                         # parallel-rne.mlir:105:7
	bneq r8, r16, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	.loc	1 105 7                         # parallel-rne.mlir:105:7
	xwait r1, 0
	addli r1, zero, 9
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 128
	ds_cfg r11, zero, 0
	ds_cfg r1, zero, 1
	ds_cfg r5, zero, 14
	ds_cfg r1, zero, 13
	addli r1, zero, 1
	shuffle_coa r4, r20, r5, 2
	unlock zero
	xsignal r16, 0
	storeli.w r1, -44(r30)                  # 4-byte Folded Spill
	xsignal r14, 0
	j .LBB0_28
.LBB0_22:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r5, zero, 0
	addli r2, zero, 1
	addli r3, zero, 1
	addli r7, zero, 16
	addli r11, zero, 64
	.loc	1 106 7 is_stmt 1               # parallel-rne.mlir:106:7
	xwait r10, 0
	xwait r14, 0
	xwait r17, 0
.LBB0_23:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r6, r5, 14
	slli r5, r5, 8
	lock zero, r2
	mm_cfg r11, r11, r7, 0
	or r6, r6, r4
	or r5, r5, r9
	mm_cfg r10, r10, r2, 2
	mm r5, r1, r6, 8
	andi r6, r3, 1
	addli r5, zero, 1
	addli r3, zero, 0
	unlock r2
	bneq r6, zero, .LBB0_23
# %bb.24:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 5
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	addli r1, zero, 1
	storeli.w r1, -24(r30)                  # 4-byte Folded Spill
	addli r1, zero, 10
	xsignal r1, 0
	j .LBB0_28
.LBB0_25:                               # %.thread16
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 113 7                         # parallel-rne.mlir:113:7
	bneq r8, r3, .LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	xwait r1, 0
	.loc	1 114 7                         # parallel-rne.mlir:114:7
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
.LBB0_28:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 111 13 is_stmt 1              # parallel-rne.mlir:111:13
	lui r1, 44
	.loc	1 116 7                         # parallel-rne.mlir:116:7
	xfence
	.loc	1 117 7                         # parallel-rne.mlir:117:7
	mfence { lm, sm, gm }
	.loc	1 111 13                        # parallel-rne.mlir:111:13
	add.s r11, r9, r1
	.loc	1 118 7                         # parallel-rne.mlir:118:7
	addli r1, zero, 255
	csr_set csr5, r1
	addli r1, zero, 128
	sync_core
	zext_int2long r[16:17], r1
	addli r1, zero, 127
	zext_int2long r[14:15], r1
	.loc	1 119 7                         # parallel-rne.mlir:119:7
	beq r8, zero, .LBB0_35
# %bb.29:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	addli r1, zero, 1
	beq r8, r1, .LBB0_66
.LBB0_30:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	loadli.w r1,  -48(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_97
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	addli r1, zero, 3
	beq r8, r1, .LBB0_128
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 235 7                         # parallel-rne.mlir:235:7
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_159
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 264 7                         # parallel-rne.mlir:264:7
	addli r1, zero, 5
	beq r8, r1, .LBB0_190
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 293 7                         # parallel-rne.mlir:293:7
	addli r1, zero, 6
	beq r8, r1, .LBB0_221
	j .LBB0_252
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 119 7                         # parallel-rne.mlir:119:7
	xfence
	addli r2, zero, 1
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	j .LBB0_37
.LBB0_36:                               # %middle.block98
                                        #   in Loop: Header=BB0_37 Depth=2
	.loc	1 127 9                         # parallel-rne.mlir:127:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli.d r[6:7], r[16:17], 0
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_65
.LBB0_37:                               # %vector.memcheck90
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_46 Depth 3
                                        #       Child Loop BB0_40 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 128 11 is_stmt 1              # parallel-rne.mlir:128:11
	bneq r11, r9, .LBB0_44
# %bb.38:                               # %scalar.ph92.preheader
                                        #   in Loop: Header=BB0_37 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_40
.LBB0_39:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 128 11                        # parallel-rne.mlir:128:11
	setlt.ul r2, r[3:4], r[14:15]
	.loc	1 143 13 is_stmt 1              # parallel-rne.mlir:143:13
	add.s r1, r11, r1
	.loc	1 128 11                        # parallel-rne.mlir:128:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	stores.w r5, 0(r1)
	.loc	1 128 11                        # parallel-rne.mlir:128:11
	beq r2, zero, .LBB0_36
.LBB0_40:                               # %scalar.ph92
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 129 19                        # parallel-rne.mlir:129:19
	add.ul r[1:2], r[3:4], r[6:7]
	slli r1, r1, 2
	add.s r2, r9, r1
	loads.w r2, 0(r2)
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	and r8, r2, r22
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	setlt.u r5, r19, r8
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r5, zero, .LBB0_42
# %bb.41:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r2, 0
	.loc	1 140 19 is_stmt 1              # parallel-rne.mlir:140:19
	setlt.u r8, r25, r8
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r8, zero, .LBB0_39
	j .LBB0_43
.LBB0_42:                               #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r2, r5
	.loc	1 140 19 is_stmt 1              # parallel-rne.mlir:140:19
	setlt.u r8, r25, r8
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r8, zero, .LBB0_39
.LBB0_43:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r23
	and r5, r2, r21
	j .LBB0_39
.LBB0_44:                               # %vector.body94.preheader
                                        #   in Loop: Header=BB0_37 Depth=2
	zext_int2long r[4:5], zero
	j .LBB0_46
.LBB0_45:                               # %vector.body94
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 128 11 is_stmt 1              # parallel-rne.mlir:128:11
	addli.d r[4:5], r[4:5], 4
	load.d r[26:27], -8(r30)                # 8-byte Folded Reload
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	add.s r1, r11, r1
	.loc	1 128 11                        # parallel-rne.mlir:128:11
	seteq.d r3, r[4:5], r[16:17]
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	stores.w r10, 12(r1)
	stores.w r28, 8(r1)
	stores.w r8, 4(r1)
	stores.w r2, 0(r1)
	.loc	1 128 11                        # parallel-rne.mlir:128:11
	bneq r3, zero, .LBB0_36
.LBB0_46:                               # %vector.body94
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 129 19                        # parallel-rne.mlir:129:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r1, r1, 2
	add.s r20, r9, r1
	loads.w r18, 12(r20)
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	and r26, r18, r22
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	setlt.u r2, r19, r26
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r2, zero, .LBB0_48
# %bb.47:                               # %vector.body94
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r18, 0
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_46 Depth=3
	lui r2, 1024
	or r10, r18, r2
.LBB0_49:                               # %vector.body94
                                        #   in Loop: Header=BB0_46 Depth=3
	loads.w r27, 8(r20)
	and r3, r27, r22
	setlt.u r2, r19, r3
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r2, zero, .LBB0_51
# %bb.50:                               # %vector.body94
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r27, 0
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_46 Depth=3
	lui r2, 1024
	or r28, r27, r2
.LBB0_52:                               # %vector.body94
                                        #   in Loop: Header=BB0_46 Depth=3
	loads.w r13, 4(r20)
	and r24, r13, r22
	setlt.u r2, r19, r24
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r2, zero, .LBB0_54
# %bb.53:                               # %vector.body94
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r13, 0
	j .LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_46 Depth=3
	lui r2, 1024
	or r8, r13, r2
.LBB0_55:                               # %vector.body94
                                        #   in Loop: Header=BB0_46 Depth=3
	loads.w r20, 0(r20)
	and r12, r20, r22
	setlt.u r2, r19, r12
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r2, zero, .LBB0_57
# %bb.56:                               # %vector.body94
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r20, 0
	.loc	1 140 19 is_stmt 1              # parallel-rne.mlir:140:19
	setlt.u r12, r25, r12
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	beq r12, zero, .LBB0_58
	j .LBB0_59
.LBB0_57:                               #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r20, r2
	.loc	1 140 19 is_stmt 1              # parallel-rne.mlir:140:19
	setlt.u r12, r25, r12
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r12, zero, .LBB0_59
.LBB0_58:                               # %vector.body94
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r20, 16
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r23
	and r2, r2, r21
.LBB0_59:                               # %vector.body94
                                        #   in Loop: Header=BB0_46 Depth=3
	setlt.u r12, r25, r24
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	beq r12, zero, .LBB0_62
# %bb.60:                               # %vector.body94
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r3
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	beq r3, zero, .LBB0_63
.LBB0_61:                               # %vector.body94
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r26
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r3, zero, .LBB0_45
	j .LBB0_64
.LBB0_62:                               # %vector.body94
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r13, 16
	andi r8, r8, 1
	add.s r8, r13, r8
	add.s r8, r8, r23
	and r8, r8, r21
	setlt.u r3, r25, r3
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r3, zero, .LBB0_61
.LBB0_63:                               # %vector.body94
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r27, 16
	andi r3, r3, 1
	add.s r3, r27, r3
	add.s r3, r3, r23
	and r28, r3, r21
	setlt.u r3, r25, r26
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r3, zero, .LBB0_45
.LBB0_64:                               # %vector.body94
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r18, 16
	andi r3, r3, 1
	add.s r3, r18, r3
	add.s r3, r3, r23
	and r10, r3, r21
	j .LBB0_45
.LBB0_65:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r8
	.loc	1 119 7                         # parallel-rne.mlir:119:7
	mfence { sm }
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	addli r1, zero, 1
	bneq r8, r1, .LBB0_30
.LBB0_66:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 256
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_68
.LBB0_67:                               # %middle.block89
                                        #   in Loop: Header=BB0_68 Depth=2
	.loc	1 156 9 is_stmt 1               # parallel-rne.mlir:156:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 384
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_96
.LBB0_68:                               # %vector.memcheck81
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_77 Depth 3
                                        #       Child Loop BB0_71 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 157 11 is_stmt 1              # parallel-rne.mlir:157:11
	bneq r11, r9, .LBB0_75
# %bb.69:                               # %scalar.ph83.preheader
                                        #   in Loop: Header=BB0_68 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_71
.LBB0_70:                               # %scalar.ph83
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	setlt.ul r2, r[3:4], r[14:15]
	.loc	1 172 13 is_stmt 1              # parallel-rne.mlir:172:13
	add.s r1, r11, r1
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 172 13                        # parallel-rne.mlir:172:13
	stores.w r5, 0(r1)
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	beq r2, zero, .LBB0_67
.LBB0_71:                               # %scalar.ph83
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_68 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	add.ul r[1:2], r[3:4], r[6:7]
	slli r1, r1, 2
	add.s r2, r9, r1
	loads.w r2, 0(r2)
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	and r8, r2, r22
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	setlt.u r5, r19, r8
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r5, zero, .LBB0_73
# %bb.72:                               # %scalar.ph83
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r2, 0
	.loc	1 169 19 is_stmt 1              # parallel-rne.mlir:169:19
	setlt.u r8, r25, r8
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r8, zero, .LBB0_70
	j .LBB0_74
.LBB0_73:                               #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r2, r5
	.loc	1 169 19 is_stmt 1              # parallel-rne.mlir:169:19
	setlt.u r8, r25, r8
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r8, zero, .LBB0_70
.LBB0_74:                               # %scalar.ph83
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r23
	and r5, r2, r21
	j .LBB0_70
.LBB0_75:                               # %vector.body85.preheader
                                        #   in Loop: Header=BB0_68 Depth=2
	zext_int2long r[4:5], zero
	j .LBB0_77
.LBB0_76:                               # %vector.body85
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 157 11 is_stmt 1              # parallel-rne.mlir:157:11
	addli.d r[4:5], r[4:5], 4
	load.d r[26:27], -8(r30)                # 8-byte Folded Reload
	.loc	1 172 13                        # parallel-rne.mlir:172:13
	add.s r1, r11, r1
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	seteq.d r3, r[4:5], r[16:17]
	.loc	1 172 13                        # parallel-rne.mlir:172:13
	stores.w r10, 12(r1)
	stores.w r28, 8(r1)
	stores.w r8, 4(r1)
	stores.w r2, 0(r1)
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	bneq r3, zero, .LBB0_67
.LBB0_77:                               # %vector.body85
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_68 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r1, r1, 2
	add.s r20, r9, r1
	loads.w r18, 12(r20)
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	and r26, r18, r22
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	setlt.u r2, r19, r26
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r2, zero, .LBB0_79
# %bb.78:                               # %vector.body85
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r18, 0
	j .LBB0_80
.LBB0_79:                               #   in Loop: Header=BB0_77 Depth=3
	lui r2, 1024
	or r10, r18, r2
.LBB0_80:                               # %vector.body85
                                        #   in Loop: Header=BB0_77 Depth=3
	loads.w r27, 8(r20)
	and r3, r27, r22
	setlt.u r2, r19, r3
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r2, zero, .LBB0_82
# %bb.81:                               # %vector.body85
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r27, 0
	j .LBB0_83
.LBB0_82:                               #   in Loop: Header=BB0_77 Depth=3
	lui r2, 1024
	or r28, r27, r2
.LBB0_83:                               # %vector.body85
                                        #   in Loop: Header=BB0_77 Depth=3
	loads.w r13, 4(r20)
	and r24, r13, r22
	setlt.u r2, r19, r24
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r2, zero, .LBB0_85
# %bb.84:                               # %vector.body85
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r13, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_77 Depth=3
	lui r2, 1024
	or r8, r13, r2
.LBB0_86:                               # %vector.body85
                                        #   in Loop: Header=BB0_77 Depth=3
	loads.w r20, 0(r20)
	and r12, r20, r22
	setlt.u r2, r19, r12
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r2, zero, .LBB0_92
# %bb.87:                               # %vector.body85
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r20, 0
	.loc	1 169 19 is_stmt 1              # parallel-rne.mlir:169:19
	setlt.u r12, r25, r12
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r12, zero, .LBB0_89
.LBB0_88:                               # %vector.body85
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r20, 16
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r23
	and r2, r2, r21
.LBB0_89:                               # %vector.body85
                                        #   in Loop: Header=BB0_77 Depth=3
	setlt.u r12, r25, r24
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	beq r12, zero, .LBB0_93
# %bb.90:                               # %vector.body85
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	beq r3, zero, .LBB0_94
.LBB0_91:                               # %vector.body85
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r26
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r3, zero, .LBB0_76
	j .LBB0_95
.LBB0_92:                               #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r20, r2
	.loc	1 169 19 is_stmt 1              # parallel-rne.mlir:169:19
	setlt.u r12, r25, r12
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	beq r12, zero, .LBB0_88
	j .LBB0_89
.LBB0_93:                               # %vector.body85
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r13, 16
	andi r8, r8, 1
	add.s r8, r13, r8
	add.s r8, r8, r23
	and r8, r8, r21
	setlt.u r3, r25, r3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r3, zero, .LBB0_91
.LBB0_94:                               # %vector.body85
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r27, 16
	andi r3, r3, 1
	add.s r3, r27, r3
	add.s r3, r3, r23
	and r28, r3, r21
	setlt.u r3, r25, r26
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r3, zero, .LBB0_76
.LBB0_95:                               # %vector.body85
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r18, 16
	andi r3, r3, 1
	add.s r3, r18, r3
	add.s r3, r3, r23
	and r10, r3, r21
	j .LBB0_76
.LBB0_96:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r8
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	mfence { sm }
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	loadli.w r1,  -48(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_31
.LBB0_97:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 512
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_99
.LBB0_98:                               # %middle.block80
                                        #   in Loop: Header=BB0_99 Depth=2
	.loc	1 185 9 is_stmt 1               # parallel-rne.mlir:185:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 640
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_127
.LBB0_99:                               # %vector.memcheck72
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_108 Depth 3
                                        #       Child Loop BB0_102 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 186 11 is_stmt 1              # parallel-rne.mlir:186:11
	bneq r11, r9, .LBB0_106
# %bb.100:                              # %scalar.ph74.preheader
                                        #   in Loop: Header=BB0_99 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_102
.LBB0_101:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_102 Depth=3
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	setlt.ul r2, r[3:4], r[14:15]
	.loc	1 201 13 is_stmt 1              # parallel-rne.mlir:201:13
	add.s r1, r11, r1
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 201 13                        # parallel-rne.mlir:201:13
	stores.w r5, 0(r1)
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	beq r2, zero, .LBB0_98
.LBB0_102:                              # %scalar.ph74
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	add.ul r[1:2], r[3:4], r[6:7]
	slli r1, r1, 2
	add.s r2, r9, r1
	loads.w r2, 0(r2)
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	and r8, r2, r22
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	setlt.u r5, r19, r8
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r5, zero, .LBB0_104
# %bb.103:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_102 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r2, 0
	.loc	1 198 19 is_stmt 1              # parallel-rne.mlir:198:19
	setlt.u r8, r25, r8
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r8, zero, .LBB0_101
	j .LBB0_105
.LBB0_104:                              #   in Loop: Header=BB0_102 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r2, r5
	.loc	1 198 19 is_stmt 1              # parallel-rne.mlir:198:19
	setlt.u r8, r25, r8
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r8, zero, .LBB0_101
.LBB0_105:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_102 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r23
	and r5, r2, r21
	j .LBB0_101
.LBB0_106:                              # %vector.body76.preheader
                                        #   in Loop: Header=BB0_99 Depth=2
	zext_int2long r[4:5], zero
	j .LBB0_108
.LBB0_107:                              # %vector.body76
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 186 11 is_stmt 1              # parallel-rne.mlir:186:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 201 13                        # parallel-rne.mlir:201:13
	add.s r1, r11, r1
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	seteq.d r3, r[4:5], r[16:17]
	.loc	1 201 13                        # parallel-rne.mlir:201:13
	stores.w r26, 8(r1)
	load.d r[26:27], -8(r30)                # 8-byte Folded Reload
	stores.w r10, 12(r1)
	stores.w r8, 4(r1)
	stores.w r2, 0(r1)
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	bneq r3, zero, .LBB0_98
.LBB0_108:                              # %vector.body76
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r1, r1, 2
	add.s r20, r9, r1
	loads.w r18, 12(r20)
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	and r24, r18, r22
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	setlt.u r2, r19, r24
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r2, zero, .LBB0_110
# %bb.109:                              # %vector.body76
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r18, 0
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_108 Depth=3
	lui r2, 1024
	or r10, r18, r2
.LBB0_111:                              # %vector.body76
                                        #   in Loop: Header=BB0_108 Depth=3
	loads.w r27, 8(r20)
	and r3, r27, r22
	setlt.u r2, r19, r3
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r2, zero, .LBB0_113
# %bb.112:                              # %vector.body76
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_108 Depth=3
	lui r2, 1024
	or r26, r27, r2
.LBB0_114:                              # %vector.body76
                                        #   in Loop: Header=BB0_108 Depth=3
	loads.w r13, 4(r20)
	and r28, r13, r22
	setlt.u r2, r19, r28
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r2, zero, .LBB0_116
# %bb.115:                              # %vector.body76
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r13, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_108 Depth=3
	lui r2, 1024
	or r8, r13, r2
.LBB0_117:                              # %vector.body76
                                        #   in Loop: Header=BB0_108 Depth=3
	loads.w r20, 0(r20)
	and r12, r20, r22
	setlt.u r2, r19, r12
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r2, zero, .LBB0_123
# %bb.118:                              # %vector.body76
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r20, 0
	.loc	1 198 19 is_stmt 1              # parallel-rne.mlir:198:19
	setlt.u r12, r25, r12
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r12, zero, .LBB0_120
.LBB0_119:                              # %vector.body76
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r20, 16
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r23
	and r2, r2, r21
.LBB0_120:                              # %vector.body76
                                        #   in Loop: Header=BB0_108 Depth=3
	setlt.u r12, r25, r28
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	beq r12, zero, .LBB0_124
# %bb.121:                              # %vector.body76
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r3
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	beq r3, zero, .LBB0_125
.LBB0_122:                              # %vector.body76
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r24
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r3, zero, .LBB0_107
	j .LBB0_126
.LBB0_123:                              #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r20, r2
	.loc	1 198 19 is_stmt 1              # parallel-rne.mlir:198:19
	setlt.u r12, r25, r12
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	beq r12, zero, .LBB0_119
	j .LBB0_120
.LBB0_124:                              # %vector.body76
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r13, 16
	andi r8, r8, 1
	add.s r8, r13, r8
	add.s r8, r8, r23
	and r8, r8, r21
	setlt.u r3, r25, r3
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r3, zero, .LBB0_122
.LBB0_125:                              # %vector.body76
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r27, 16
	andi r3, r3, 1
	add.s r3, r27, r3
	add.s r3, r3, r23
	and r26, r3, r21
	setlt.u r3, r25, r24
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r3, zero, .LBB0_107
.LBB0_126:                              # %vector.body76
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r18, 16
	andi r3, r3, 1
	add.s r3, r18, r3
	add.s r3, r3, r23
	and r10, r3, r21
	j .LBB0_107
.LBB0_127:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r8
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	mfence { sm }
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	addli r1, zero, 3
	bneq r8, r1, .LBB0_32
.LBB0_128:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 768
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_130
.LBB0_129:                              # %middle.block71
                                        #   in Loop: Header=BB0_130 Depth=2
	.loc	1 214 9 is_stmt 1               # parallel-rne.mlir:214:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 896
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_158
.LBB0_130:                              # %vector.memcheck63
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_139 Depth 3
                                        #       Child Loop BB0_133 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 215 11 is_stmt 1              # parallel-rne.mlir:215:11
	bneq r11, r9, .LBB0_137
# %bb.131:                              # %scalar.ph65.preheader
                                        #   in Loop: Header=BB0_130 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_133
.LBB0_132:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 215 11                        # parallel-rne.mlir:215:11
	setlt.ul r2, r[3:4], r[14:15]
	.loc	1 230 13 is_stmt 1              # parallel-rne.mlir:230:13
	add.s r1, r11, r1
	.loc	1 215 11                        # parallel-rne.mlir:215:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 230 13                        # parallel-rne.mlir:230:13
	stores.w r5, 0(r1)
	.loc	1 215 11                        # parallel-rne.mlir:215:11
	beq r2, zero, .LBB0_129
.LBB0_133:                              # %scalar.ph65
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	add.ul r[1:2], r[3:4], r[6:7]
	slli r1, r1, 2
	add.s r2, r9, r1
	loads.w r2, 0(r2)
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	and r8, r2, r22
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	setlt.u r5, r19, r8
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r5, zero, .LBB0_135
# %bb.134:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r2, 0
	.loc	1 227 19 is_stmt 1              # parallel-rne.mlir:227:19
	setlt.u r8, r25, r8
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r8, zero, .LBB0_132
	j .LBB0_136
.LBB0_135:                              #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r2, r5
	.loc	1 227 19 is_stmt 1              # parallel-rne.mlir:227:19
	setlt.u r8, r25, r8
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r8, zero, .LBB0_132
.LBB0_136:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r23
	and r5, r2, r21
	j .LBB0_132
.LBB0_137:                              # %vector.body67.preheader
                                        #   in Loop: Header=BB0_130 Depth=2
	zext_int2long r[4:5], zero
	j .LBB0_139
.LBB0_138:                              # %vector.body67
                                        #   in Loop: Header=BB0_139 Depth=3
	.loc	1 215 11 is_stmt 1              # parallel-rne.mlir:215:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 230 13                        # parallel-rne.mlir:230:13
	add.s r1, r11, r1
	.loc	1 215 11                        # parallel-rne.mlir:215:11
	seteq.d r3, r[4:5], r[16:17]
	.loc	1 230 13                        # parallel-rne.mlir:230:13
	stores.w r26, 8(r1)
	load.d r[26:27], -8(r30)                # 8-byte Folded Reload
	stores.w r10, 12(r1)
	stores.w r8, 4(r1)
	stores.w r2, 0(r1)
	.loc	1 215 11                        # parallel-rne.mlir:215:11
	bneq r3, zero, .LBB0_129
.LBB0_139:                              # %vector.body67
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r1, r1, 2
	add.s r20, r9, r1
	loads.w r18, 12(r20)
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	and r24, r18, r22
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	setlt.u r2, r19, r24
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r2, zero, .LBB0_141
# %bb.140:                              # %vector.body67
                                        #   in Loop: Header=BB0_139 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r18, 0
	j .LBB0_142
.LBB0_141:                              #   in Loop: Header=BB0_139 Depth=3
	lui r2, 1024
	or r10, r18, r2
.LBB0_142:                              # %vector.body67
                                        #   in Loop: Header=BB0_139 Depth=3
	loads.w r27, 8(r20)
	and r3, r27, r22
	setlt.u r2, r19, r3
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r2, zero, .LBB0_144
# %bb.143:                              # %vector.body67
                                        #   in Loop: Header=BB0_139 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_145
.LBB0_144:                              #   in Loop: Header=BB0_139 Depth=3
	lui r2, 1024
	or r26, r27, r2
.LBB0_145:                              # %vector.body67
                                        #   in Loop: Header=BB0_139 Depth=3
	loads.w r13, 4(r20)
	and r28, r13, r22
	setlt.u r2, r19, r28
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r2, zero, .LBB0_147
# %bb.146:                              # %vector.body67
                                        #   in Loop: Header=BB0_139 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r13, 0
	j .LBB0_148
.LBB0_147:                              #   in Loop: Header=BB0_139 Depth=3
	lui r2, 1024
	or r8, r13, r2
.LBB0_148:                              # %vector.body67
                                        #   in Loop: Header=BB0_139 Depth=3
	loads.w r20, 0(r20)
	and r12, r20, r22
	setlt.u r2, r19, r12
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r2, zero, .LBB0_154
# %bb.149:                              # %vector.body67
                                        #   in Loop: Header=BB0_139 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r20, 0
	.loc	1 227 19 is_stmt 1              # parallel-rne.mlir:227:19
	setlt.u r12, r25, r12
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r12, zero, .LBB0_151
.LBB0_150:                              # %vector.body67
                                        #   in Loop: Header=BB0_139 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r20, 16
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r23
	and r2, r2, r21
.LBB0_151:                              # %vector.body67
                                        #   in Loop: Header=BB0_139 Depth=3
	setlt.u r12, r25, r28
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	beq r12, zero, .LBB0_155
# %bb.152:                              # %vector.body67
                                        #   in Loop: Header=BB0_139 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	beq r3, zero, .LBB0_156
.LBB0_153:                              # %vector.body67
                                        #   in Loop: Header=BB0_139 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r24
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r3, zero, .LBB0_138
	j .LBB0_157
.LBB0_154:                              #   in Loop: Header=BB0_139 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r20, r2
	.loc	1 227 19 is_stmt 1              # parallel-rne.mlir:227:19
	setlt.u r12, r25, r12
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	beq r12, zero, .LBB0_150
	j .LBB0_151
.LBB0_155:                              # %vector.body67
                                        #   in Loop: Header=BB0_139 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r13, 16
	andi r8, r8, 1
	add.s r8, r13, r8
	add.s r8, r8, r23
	and r8, r8, r21
	setlt.u r3, r25, r3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r3, zero, .LBB0_153
.LBB0_156:                              # %vector.body67
                                        #   in Loop: Header=BB0_139 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r27, 16
	andi r3, r3, 1
	add.s r3, r27, r3
	add.s r3, r3, r23
	and r26, r3, r21
	setlt.u r3, r25, r24
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r3, zero, .LBB0_138
.LBB0_157:                              # %vector.body67
                                        #   in Loop: Header=BB0_139 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r18, 16
	andi r3, r3, 1
	add.s r3, r18, r3
	add.s r3, r3, r23
	and r10, r3, r21
	j .LBB0_138
.LBB0_158:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r8
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	mfence { sm }
	.loc	1 235 7                         # parallel-rne.mlir:235:7
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_33
.LBB0_159:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 1024
	.loc	1 235 7                         # parallel-rne.mlir:235:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_161
.LBB0_160:                              # %middle.block62
                                        #   in Loop: Header=BB0_161 Depth=2
	.loc	1 243 9 is_stmt 1               # parallel-rne.mlir:243:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 1152
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_189
.LBB0_161:                              # %vector.memcheck54
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_170 Depth 3
                                        #       Child Loop BB0_164 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 244 11 is_stmt 1              # parallel-rne.mlir:244:11
	bneq r11, r9, .LBB0_168
# %bb.162:                              # %scalar.ph56.preheader
                                        #   in Loop: Header=BB0_161 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_164
.LBB0_163:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 244 11                        # parallel-rne.mlir:244:11
	setlt.ul r1, r[2:3], r[14:15]
	.loc	1 259 13 is_stmt 1              # parallel-rne.mlir:259:13
	add.s r4, r11, r4
	.loc	1 244 11                        # parallel-rne.mlir:244:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 259 13                        # parallel-rne.mlir:259:13
	stores.w r5, 0(r4)
	.loc	1 244 11                        # parallel-rne.mlir:244:11
	beq r1, zero, .LBB0_160
.LBB0_164:                              # %scalar.ph56
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_161 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	add.ul r[4:5], r[2:3], r[6:7]
	slli r4, r4, 2
	add.s r1, r9, r4
	loads.w r1, 0(r1)
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	and r8, r1, r22
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	setlt.u r5, r19, r8
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r5, zero, .LBB0_166
# %bb.165:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r1, 0
	.loc	1 256 19 is_stmt 1              # parallel-rne.mlir:256:19
	setlt.u r8, r25, r8
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	bneq r8, zero, .LBB0_163
	j .LBB0_167
.LBB0_166:                              #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r1, r5
	.loc	1 256 19 is_stmt 1              # parallel-rne.mlir:256:19
	setlt.u r8, r25, r8
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	bneq r8, zero, .LBB0_163
.LBB0_167:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	add.s r1, r1, r23
	and r5, r1, r21
	j .LBB0_163
.LBB0_168:                              # %vector.body58.preheader
                                        #   in Loop: Header=BB0_161 Depth=2
	zext_int2long r[4:5], zero
	j .LBB0_170
.LBB0_169:                              # %vector.body58
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 244 11 is_stmt 1              # parallel-rne.mlir:244:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 259 13                        # parallel-rne.mlir:259:13
	add.s r2, r11, r2
	.loc	1 244 11                        # parallel-rne.mlir:244:11
	seteq.d r3, r[4:5], r[16:17]
	.loc	1 259 13                        # parallel-rne.mlir:259:13
	stores.w r26, 8(r2)
	load.d r[26:27], -8(r30)                # 8-byte Folded Reload
	stores.w r10, 12(r2)
	stores.w r8, 4(r2)
	stores.w r1, 0(r2)
	.loc	1 244 11                        # parallel-rne.mlir:244:11
	bneq r3, zero, .LBB0_160
.LBB0_170:                              # %vector.body58
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_161 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r2, r1, 2
	add.s r20, r9, r2
	loads.w r18, 12(r20)
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	and r24, r18, r22
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	setlt.u r1, r19, r24
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r1, zero, .LBB0_172
# %bb.171:                              # %vector.body58
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r18, 0
	j .LBB0_173
.LBB0_172:                              #   in Loop: Header=BB0_170 Depth=3
	lui r1, 1024
	or r10, r18, r1
.LBB0_173:                              # %vector.body58
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r27, 8(r20)
	and r3, r27, r22
	setlt.u r1, r19, r3
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r1, zero, .LBB0_175
# %bb.174:                              # %vector.body58
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_170 Depth=3
	lui r1, 1024
	or r26, r27, r1
.LBB0_176:                              # %vector.body58
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r13, 4(r20)
	and r28, r13, r22
	setlt.u r1, r19, r28
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r1, zero, .LBB0_178
# %bb.177:                              # %vector.body58
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r13, 0
	j .LBB0_179
.LBB0_178:                              #   in Loop: Header=BB0_170 Depth=3
	lui r1, 1024
	or r8, r13, r1
.LBB0_179:                              # %vector.body58
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r20, 0(r20)
	and r12, r20, r22
	setlt.u r1, r19, r12
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r1, zero, .LBB0_185
# %bb.180:                              # %vector.body58
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r20, 0
	.loc	1 256 19 is_stmt 1              # parallel-rne.mlir:256:19
	setlt.u r12, r25, r12
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	bneq r12, zero, .LBB0_182
.LBB0_181:                              # %vector.body58
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r20, 16
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r23
	and r1, r1, r21
.LBB0_182:                              # %vector.body58
                                        #   in Loop: Header=BB0_170 Depth=3
	setlt.u r12, r25, r28
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	beq r12, zero, .LBB0_186
# %bb.183:                              # %vector.body58
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	beq r3, zero, .LBB0_187
.LBB0_184:                              # %vector.body58
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r24
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	bneq r3, zero, .LBB0_169
	j .LBB0_188
.LBB0_185:                              #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r20, r1
	.loc	1 256 19 is_stmt 1              # parallel-rne.mlir:256:19
	setlt.u r12, r25, r12
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	beq r12, zero, .LBB0_181
	j .LBB0_182
.LBB0_186:                              # %vector.body58
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r13, 16
	andi r8, r8, 1
	add.s r8, r13, r8
	add.s r8, r8, r23
	and r8, r8, r21
	setlt.u r3, r25, r3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	bneq r3, zero, .LBB0_184
.LBB0_187:                              # %vector.body58
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r27, 16
	andi r3, r3, 1
	add.s r3, r27, r3
	add.s r3, r3, r23
	and r26, r3, r21
	setlt.u r3, r25, r24
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	bneq r3, zero, .LBB0_169
.LBB0_188:                              # %vector.body58
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r18, 16
	andi r3, r3, 1
	add.s r3, r18, r3
	add.s r3, r3, r23
	and r10, r3, r21
	j .LBB0_169
.LBB0_189:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r8
	.loc	1 235 7                         # parallel-rne.mlir:235:7
	mfence { sm }
	.loc	1 264 7                         # parallel-rne.mlir:264:7
	addli r1, zero, 5
	bneq r8, r1, .LBB0_34
.LBB0_190:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 1280
	.loc	1 264 7                         # parallel-rne.mlir:264:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_192
.LBB0_191:                              # %middle.block53
                                        #   in Loop: Header=BB0_192 Depth=2
	.loc	1 272 9 is_stmt 1               # parallel-rne.mlir:272:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 1408
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_220
.LBB0_192:                              # %vector.memcheck45
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_201 Depth 3
                                        #       Child Loop BB0_195 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 273 11 is_stmt 1              # parallel-rne.mlir:273:11
	bneq r11, r9, .LBB0_199
# %bb.193:                              # %scalar.ph47.preheader
                                        #   in Loop: Header=BB0_192 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_195
.LBB0_194:                              # %scalar.ph47
                                        #   in Loop: Header=BB0_195 Depth=3
	.loc	1 273 11                        # parallel-rne.mlir:273:11
	setlt.ul r1, r[2:3], r[14:15]
	.loc	1 288 13 is_stmt 1              # parallel-rne.mlir:288:13
	add.s r4, r11, r4
	.loc	1 273 11                        # parallel-rne.mlir:273:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 288 13                        # parallel-rne.mlir:288:13
	stores.w r5, 0(r4)
	.loc	1 273 11                        # parallel-rne.mlir:273:11
	beq r1, zero, .LBB0_191
.LBB0_195:                              # %scalar.ph47
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_192 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	add.ul r[4:5], r[2:3], r[6:7]
	slli r4, r4, 2
	add.s r1, r9, r4
	loads.w r1, 0(r1)
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	and r8, r1, r22
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	setlt.u r5, r19, r8
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r5, zero, .LBB0_197
# %bb.196:                              # %scalar.ph47
                                        #   in Loop: Header=BB0_195 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r1, 0
	.loc	1 285 19 is_stmt 1              # parallel-rne.mlir:285:19
	setlt.u r8, r25, r8
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r8, zero, .LBB0_194
	j .LBB0_198
.LBB0_197:                              #   in Loop: Header=BB0_195 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r1, r5
	.loc	1 285 19 is_stmt 1              # parallel-rne.mlir:285:19
	setlt.u r8, r25, r8
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r8, zero, .LBB0_194
.LBB0_198:                              # %scalar.ph47
                                        #   in Loop: Header=BB0_195 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	add.s r1, r1, r23
	and r5, r1, r21
	j .LBB0_194
.LBB0_199:                              # %vector.body49.preheader
                                        #   in Loop: Header=BB0_192 Depth=2
	zext_int2long r[4:5], zero
	j .LBB0_201
.LBB0_200:                              # %vector.body49
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 273 11 is_stmt 1              # parallel-rne.mlir:273:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 288 13                        # parallel-rne.mlir:288:13
	add.s r2, r11, r2
	.loc	1 273 11                        # parallel-rne.mlir:273:11
	seteq.d r3, r[4:5], r[16:17]
	.loc	1 288 13                        # parallel-rne.mlir:288:13
	stores.w r26, 8(r2)
	load.d r[26:27], -8(r30)                # 8-byte Folded Reload
	stores.w r10, 12(r2)
	stores.w r8, 4(r2)
	stores.w r1, 0(r2)
	.loc	1 273 11                        # parallel-rne.mlir:273:11
	bneq r3, zero, .LBB0_191
.LBB0_201:                              # %vector.body49
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_192 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r2, r1, 2
	add.s r20, r9, r2
	loads.w r18, 12(r20)
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	and r24, r18, r22
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	setlt.u r1, r19, r24
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r1, zero, .LBB0_203
# %bb.202:                              # %vector.body49
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r18, 0
	j .LBB0_204
.LBB0_203:                              #   in Loop: Header=BB0_201 Depth=3
	lui r1, 1024
	or r10, r18, r1
.LBB0_204:                              # %vector.body49
                                        #   in Loop: Header=BB0_201 Depth=3
	loads.w r27, 8(r20)
	and r3, r27, r22
	setlt.u r1, r19, r3
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r1, zero, .LBB0_206
# %bb.205:                              # %vector.body49
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_207
.LBB0_206:                              #   in Loop: Header=BB0_201 Depth=3
	lui r1, 1024
	or r26, r27, r1
.LBB0_207:                              # %vector.body49
                                        #   in Loop: Header=BB0_201 Depth=3
	loads.w r13, 4(r20)
	and r28, r13, r22
	setlt.u r1, r19, r28
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r1, zero, .LBB0_209
# %bb.208:                              # %vector.body49
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r13, 0
	j .LBB0_210
.LBB0_209:                              #   in Loop: Header=BB0_201 Depth=3
	lui r1, 1024
	or r8, r13, r1
.LBB0_210:                              # %vector.body49
                                        #   in Loop: Header=BB0_201 Depth=3
	loads.w r20, 0(r20)
	and r12, r20, r22
	setlt.u r1, r19, r12
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r1, zero, .LBB0_216
# %bb.211:                              # %vector.body49
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r20, 0
	.loc	1 285 19 is_stmt 1              # parallel-rne.mlir:285:19
	setlt.u r12, r25, r12
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r12, zero, .LBB0_213
.LBB0_212:                              # %vector.body49
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r20, 16
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r23
	and r1, r1, r21
.LBB0_213:                              # %vector.body49
                                        #   in Loop: Header=BB0_201 Depth=3
	setlt.u r12, r25, r28
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	beq r12, zero, .LBB0_217
# %bb.214:                              # %vector.body49
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r3
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	beq r3, zero, .LBB0_218
.LBB0_215:                              # %vector.body49
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r24
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r3, zero, .LBB0_200
	j .LBB0_219
.LBB0_216:                              #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r20, r1
	.loc	1 285 19 is_stmt 1              # parallel-rne.mlir:285:19
	setlt.u r12, r25, r12
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	beq r12, zero, .LBB0_212
	j .LBB0_213
.LBB0_217:                              # %vector.body49
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r13, 16
	andi r8, r8, 1
	add.s r8, r13, r8
	add.s r8, r8, r23
	and r8, r8, r21
	setlt.u r3, r25, r3
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r3, zero, .LBB0_215
.LBB0_218:                              # %vector.body49
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r27, 16
	andi r3, r3, 1
	add.s r3, r27, r3
	add.s r3, r3, r23
	and r26, r3, r21
	setlt.u r3, r25, r24
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r3, zero, .LBB0_200
.LBB0_219:                              # %vector.body49
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r18, 16
	andi r3, r3, 1
	add.s r3, r18, r3
	add.s r3, r3, r23
	and r10, r3, r21
	j .LBB0_200
.LBB0_220:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r8
	.loc	1 264 7                         # parallel-rne.mlir:264:7
	mfence { sm }
	.loc	1 293 7                         # parallel-rne.mlir:293:7
	addli r1, zero, 6
	bneq r8, r1, .LBB0_252
.LBB0_221:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 1536
	.loc	1 293 7                         # parallel-rne.mlir:293:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_223
.LBB0_222:                              # %middle.block44
                                        #   in Loop: Header=BB0_223 Depth=2
	.loc	1 301 9 is_stmt 1               # parallel-rne.mlir:301:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 1664
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_251
.LBB0_223:                              # %vector.memcheck36
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_232 Depth 3
                                        #       Child Loop BB0_226 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 302 11 is_stmt 1              # parallel-rne.mlir:302:11
	bneq r11, r9, .LBB0_230
# %bb.224:                              # %scalar.ph38.preheader
                                        #   in Loop: Header=BB0_223 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_226
.LBB0_225:                              # %scalar.ph38
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	setlt.ul r1, r[2:3], r[14:15]
	.loc	1 317 13 is_stmt 1              # parallel-rne.mlir:317:13
	add.s r4, r11, r4
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 317 13                        # parallel-rne.mlir:317:13
	stores.w r5, 0(r4)
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	beq r1, zero, .LBB0_222
.LBB0_226:                              # %scalar.ph38
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_223 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	add.ul r[4:5], r[2:3], r[6:7]
	slli r4, r4, 2
	add.s r1, r9, r4
	loads.w r1, 0(r1)
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	and r8, r1, r22
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	setlt.u r5, r19, r8
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r5, zero, .LBB0_228
# %bb.227:                              # %scalar.ph38
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r1, 0
	.loc	1 314 19 is_stmt 1              # parallel-rne.mlir:314:19
	setlt.u r8, r25, r8
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r8, zero, .LBB0_225
	j .LBB0_229
.LBB0_228:                              #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r1, r5
	.loc	1 314 19 is_stmt 1              # parallel-rne.mlir:314:19
	setlt.u r8, r25, r8
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r8, zero, .LBB0_225
.LBB0_229:                              # %scalar.ph38
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	add.s r1, r1, r23
	and r5, r1, r21
	j .LBB0_225
.LBB0_230:                              # %vector.body40.preheader
                                        #   in Loop: Header=BB0_223 Depth=2
	zext_int2long r[4:5], zero
	j .LBB0_232
.LBB0_231:                              # %vector.body40
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 302 11 is_stmt 1              # parallel-rne.mlir:302:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 317 13                        # parallel-rne.mlir:317:13
	add.s r2, r11, r2
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	seteq.d r3, r[4:5], r[16:17]
	.loc	1 317 13                        # parallel-rne.mlir:317:13
	stores.w r26, 8(r2)
	load.d r[26:27], -8(r30)                # 8-byte Folded Reload
	stores.w r10, 12(r2)
	stores.w r8, 4(r2)
	stores.w r1, 0(r2)
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	bneq r3, zero, .LBB0_222
.LBB0_232:                              # %vector.body40
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_223 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r2, r1, 2
	add.s r20, r9, r2
	loads.w r18, 12(r20)
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	and r24, r18, r22
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	setlt.u r1, r19, r24
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r1, zero, .LBB0_234
# %bb.233:                              # %vector.body40
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r18, 0
	j .LBB0_235
.LBB0_234:                              #   in Loop: Header=BB0_232 Depth=3
	lui r1, 1024
	or r10, r18, r1
.LBB0_235:                              # %vector.body40
                                        #   in Loop: Header=BB0_232 Depth=3
	loads.w r27, 8(r20)
	and r3, r27, r22
	setlt.u r1, r19, r3
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r1, zero, .LBB0_237
# %bb.236:                              # %vector.body40
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_238
.LBB0_237:                              #   in Loop: Header=BB0_232 Depth=3
	lui r1, 1024
	or r26, r27, r1
.LBB0_238:                              # %vector.body40
                                        #   in Loop: Header=BB0_232 Depth=3
	loads.w r13, 4(r20)
	and r28, r13, r22
	setlt.u r1, r19, r28
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r1, zero, .LBB0_240
# %bb.239:                              # %vector.body40
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r13, 0
	j .LBB0_241
.LBB0_240:                              #   in Loop: Header=BB0_232 Depth=3
	lui r1, 1024
	or r8, r13, r1
.LBB0_241:                              # %vector.body40
                                        #   in Loop: Header=BB0_232 Depth=3
	loads.w r20, 0(r20)
	and r12, r20, r22
	setlt.u r1, r19, r12
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r1, zero, .LBB0_247
# %bb.242:                              # %vector.body40
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r20, 0
	.loc	1 314 19 is_stmt 1              # parallel-rne.mlir:314:19
	setlt.u r12, r25, r12
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r12, zero, .LBB0_244
.LBB0_243:                              # %vector.body40
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r20, 16
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r23
	and r1, r1, r21
.LBB0_244:                              # %vector.body40
                                        #   in Loop: Header=BB0_232 Depth=3
	setlt.u r12, r25, r28
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	beq r12, zero, .LBB0_248
# %bb.245:                              # %vector.body40
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r3
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	beq r3, zero, .LBB0_249
.LBB0_246:                              # %vector.body40
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r24
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r3, zero, .LBB0_231
	j .LBB0_250
.LBB0_247:                              #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r20, r1
	.loc	1 314 19 is_stmt 1              # parallel-rne.mlir:314:19
	setlt.u r12, r25, r12
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	beq r12, zero, .LBB0_243
	j .LBB0_244
.LBB0_248:                              # %vector.body40
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r13, 16
	andi r8, r8, 1
	add.s r8, r13, r8
	add.s r8, r8, r23
	and r8, r8, r21
	setlt.u r3, r25, r3
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r3, zero, .LBB0_246
.LBB0_249:                              # %vector.body40
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r27, 16
	andi r3, r3, 1
	add.s r3, r27, r3
	add.s r3, r3, r23
	and r26, r3, r21
	setlt.u r3, r25, r24
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r3, zero, .LBB0_231
.LBB0_250:                              # %vector.body40
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r18, 16
	andi r3, r3, 1
	add.s r3, r18, r3
	add.s r3, r3, r23
	and r10, r3, r21
	j .LBB0_231
.LBB0_251:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r8
	.loc	1 293 7                         # parallel-rne.mlir:293:7
	mfence { sm }
.LBB0_252:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 322 7 is_stmt 1               # parallel-rne.mlir:322:7
	store.d r[1:2], -24(r30)                # 8-byte Folded Spill
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_284
# %bb.253:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 1792
	.loc	1 322 7                         # parallel-rne.mlir:322:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_255
.LBB0_254:                              # %middle.block
                                        #   in Loop: Header=BB0_255 Depth=2
	.loc	1 330 9 is_stmt 1               # parallel-rne.mlir:330:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 1920
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_283
.LBB0_255:                              # %vector.memcheck
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_264 Depth 3
                                        #       Child Loop BB0_258 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 331 11 is_stmt 1              # parallel-rne.mlir:331:11
	bneq r11, r9, .LBB0_262
# %bb.256:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_255 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_258
.LBB0_257:                              # %scalar.ph
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 331 11                        # parallel-rne.mlir:331:11
	setlt.ul r5, r[1:2], r[14:15]
	.loc	1 346 13 is_stmt 1              # parallel-rne.mlir:346:13
	add.s r3, r11, r3
	.loc	1 331 11                        # parallel-rne.mlir:331:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 346 13                        # parallel-rne.mlir:346:13
	stores.w r4, 0(r3)
	.loc	1 331 11                        # parallel-rne.mlir:331:11
	beq r5, zero, .LBB0_254
.LBB0_258:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_255 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	add.ul r[3:4], r[1:2], r[6:7]
	slli r3, r3, 2
	add.s r4, r9, r3
	loads.w r5, 0(r4)
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	and r8, r5, r22
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	setlt.u r4, r19, r8
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r4, zero, .LBB0_260
# %bb.259:                              # %scalar.ph
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r5, 0
	.loc	1 343 19 is_stmt 1              # parallel-rne.mlir:343:19
	setlt.u r8, r25, r8
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r8, zero, .LBB0_257
	j .LBB0_261
.LBB0_260:                              #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r5, r4
	.loc	1 343 19 is_stmt 1              # parallel-rne.mlir:343:19
	setlt.u r8, r25, r8
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r8, zero, .LBB0_257
.LBB0_261:                              # %scalar.ph
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	add.s r4, r4, r23
	and r4, r4, r21
	j .LBB0_257
.LBB0_262:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_255 Depth=2
	load.d r[4:5], -24(r30)                 # 8-byte Folded Reload
	j .LBB0_264
.LBB0_263:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 331 11 is_stmt 1              # parallel-rne.mlir:331:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 346 13                        # parallel-rne.mlir:346:13
	add.s r8, r11, r10
	.loc	1 331 11                        # parallel-rne.mlir:331:11
	seteq.d r2, r[4:5], r[16:17]
	.loc	1 346 13                        # parallel-rne.mlir:346:13
	stores.w r26, 12(r8)
	load.d r[26:27], -8(r30)                # 8-byte Folded Reload
	stores.w r20, 8(r8)
	stores.w r1, 4(r8)
	stores.w r3, 0(r8)
	.loc	1 331 11                        # parallel-rne.mlir:331:11
	bneq r2, zero, .LBB0_254
.LBB0_264:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_255 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r10, r1, 2
	add.s r2, r9, r10
	loads.w r18, 12(r2)
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	and r28, r18, r22
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	setlt.u r1, r19, r28
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r1, zero, .LBB0_266
# %bb.265:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r26, r18, 0
	j .LBB0_267
.LBB0_266:                              #   in Loop: Header=BB0_264 Depth=3
	lui r1, 1024
	or r26, r18, r1
.LBB0_267:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	loads.w r8, 8(r2)
	and r13, r8, r22
	setlt.u r1, r19, r13
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r1, zero, .LBB0_269
# %bb.268:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r8, 0
	j .LBB0_270
.LBB0_269:                              #   in Loop: Header=BB0_264 Depth=3
	lui r1, 1024
	or r20, r8, r1
.LBB0_270:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	loads.w r27, 4(r2)
	and r24, r27, r22
	setlt.u r1, r19, r24
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r1, zero, .LBB0_272
# %bb.271:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r27, 0
	j .LBB0_273
.LBB0_272:                              #   in Loop: Header=BB0_264 Depth=3
	lui r1, 1024
	or r1, r27, r1
.LBB0_273:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	loads.w r2, 0(r2)
	and r12, r2, r22
	setlt.u r3, r19, r12
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r3, zero, .LBB0_279
# %bb.274:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r2, 0
	.loc	1 343 19 is_stmt 1              # parallel-rne.mlir:343:19
	setlt.u r12, r25, r12
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r12, zero, .LBB0_276
.LBB0_275:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r23
	and r3, r2, r21
.LBB0_276:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	setlt.u r2, r25, r24
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	beq r2, zero, .LBB0_280
# %bb.277:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r25, r13
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	beq r2, zero, .LBB0_281
.LBB0_278:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r25, r28
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r2, zero, .LBB0_263
	j .LBB0_282
.LBB0_279:                              #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r3, r2, r3
	.loc	1 343 19 is_stmt 1              # parallel-rne.mlir:343:19
	setlt.u r12, r25, r12
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	beq r12, zero, .LBB0_275
	j .LBB0_276
.LBB0_280:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r23
	and r1, r1, r21
	setlt.u r2, r25, r13
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r2, zero, .LBB0_278
.LBB0_281:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r23
	and r20, r2, r21
	setlt.u r2, r25, r28
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r2, zero, .LBB0_263
.LBB0_282:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r18, 16
	andi r2, r2, 1
	add.s r2, r18, r2
	add.s r2, r2, r23
	and r26, r2, r21
	j .LBB0_263
.LBB0_283:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r8
	.loc	1 322 7                         # parallel-rne.mlir:322:7
	mfence { sm }
.LBB0_284:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 351 7                         # parallel-rne.mlir:351:7
	addli r1, zero, 255
	csr_set csr5, r1
	addli r1, zero, 3
	sync_core
	.loc	1 352 7                         # parallel-rne.mlir:352:7
	beq r8, r1, .LBB0_5
# %bb.285:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[12:13], -40(r30)               # 8-byte Folded Reload
	loadli.w r11,  -28(r30)                 # 4-byte Folded Reload
	addli r10, zero, 4
	addli r14, zero, 8
	addli r15, zero, 1
	.loc	1 369 7 is_stmt 1               # parallel-rne.mlir:369:7
	bneq r8, zero, .LBB0_6
# %bb.286:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -52(r30)                  # 4-byte Folded Reload
	.loc	1 356 13 is_stmt 1              # parallel-rne.mlir:356:13
	load.d r[5:6], -24(r30)                 # 8-byte Folded Reload
	loadli.w r2,  -68(r30)                  # 4-byte Folded Reload
	addli r18, r11, 0
	addli r11, zero, 12
	slli r1, r1, 4
	slli r2, r2, 7
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	sext_int2long r[3:4], r1
	.loc	1 359 13                        # parallel-rne.mlir:359:13
	zext_int2long r[1:2], r2
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	min.sl r[5:6], r[3:4], r[5:6]
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	max.ul r[7:8], r[1:2], r[16:17]
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	load.d r[16:17], 16(r30)
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	addli.d r[5:6], r[5:6], 16
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	sub.sl r[1:2], r[7:8], r[1:2]
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	sll.d r[7:8], r[26:27], r11
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	max.sl r[5:6], r[5:6], r[3:4]
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	add.ul r[7:8], r[16:17], r[7:8]
	srli r1, r1, 5
	addli r2, zero, 64
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	sub.sl r[3:4], r[5:6], r[3:4]
	addli r5, zero, 16
	zext_int2long r[5:6], r5
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	min.sl r[3:4], r[3:4], r[5:6]
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	load.d r[5:6], -64(r30)                 # 8-byte Folded Reload
	xwait r11, 0
	addli r11, zero, 5
	lock zero, r11
	add.ul r[5:6], r[7:8], r[5:6]
	lui r7, 44
	dma_cfg r15, r15, zero, 0
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r8
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	dma_cfg zero, r15, zero, 1
	ori r7, r7, 64
	dma_cfg r6, zero, zero, 2
	add.s r7, r9, r7
	dma_cfg r5, r7, r2, 3
	addli r5, zero, 128
	dma_cfg r2, r5, r1, 4
	addli r1, zero, 256
	addli r2, zero, 512
	dma_cfg r1, r2, r3, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	addli r11, r18, 0
	xsignal r1, 0
	j .LBB0_6
.LBB0_287:                              # %._crit_edge
	.loc	1 371 5                         # parallel-rne.mlir:371:5
	xsignal zero, 0
	bneq r8, zero, .LBB0_289
# %bb.288:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 371 5                         # parallel-rne.mlir:371:5
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
.LBB0_289:
	.loc	1 372 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:372:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-6dm_6dus" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
