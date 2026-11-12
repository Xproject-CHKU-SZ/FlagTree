	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-uuz2ng66" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -136
	addli r1, zero, 1
.Ltmp0:
	.loc	1 28 5 prologue_end             # parallel-rne.mlir:28:5
	core_id r10
	addli r30, sp, 72
	xsignal_mode_cfg r1
	beq r10, zero, .LBB0_2
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
	ble.s r2, r1, .LBB0_231
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 39 11 is_stmt 1               # parallel-rne.mlir:39:11
	sext_int2long r[16:17], r1
	lui r1, 524287
	addli r11, zero, 3
	addli r13, zero, 1
	lui r12, 1024
	lui r19, 522240
	lui r21, 1048560
	addli r4, zero, 0
	store.d r[2:3], -72(r30)                # 8-byte Folded Spill
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
	xsignal r1, 0
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	addli r1, zero, 12
	xsignal r1, 0
	load.d r[16:17], -32(r30)               # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 47 5                          # parallel-rne.mlir:47:5
	load.d r[1:2], -72(r30)                 # 8-byte Folded Reload
	addli.d r[16:17], r[16:17], 1
	loadli.w r4,  -20(r30)                  # 4-byte Folded Reload
	setlt.sl r1, r[16:17], r[1:2]
	addli r4, r4, 1
	beq r1, zero, .LBB0_231
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_37 Depth 2
                                        #       Child Loop BB0_39 Depth 3
                                        #     Child Loop BB0_61 Depth 2
                                        #       Child Loop BB0_63 Depth 3
                                        #     Child Loop BB0_85 Depth 2
                                        #       Child Loop BB0_87 Depth 3
                                        #     Child Loop BB0_109 Depth 2
                                        #       Child Loop BB0_111 Depth 3
                                        #     Child Loop BB0_133 Depth 2
                                        #       Child Loop BB0_135 Depth 3
                                        #     Child Loop BB0_157 Depth 2
                                        #       Child Loop BB0_159 Depth 3
                                        #     Child Loop BB0_181 Depth 2
                                        #       Child Loop BB0_183 Depth 3
                                        #     Child Loop BB0_206 Depth 2
                                        #       Child Loop BB0_208 Depth 3
	.loc	1 49 13                         # parallel-rne.mlir:49:13
	loadli.w r1,  32(r30)
	.loc	1 50 13                         # parallel-rne.mlir:50:13
	loadli.w r2,  28(r30)
	addli r3, zero, 8
	addli r20, r4, 0
	addli r7, zero, 8
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	mod.s r14, r20, r11
	.loc	1 89 7                          # parallel-rne.mlir:89:7
	storeli.w r20, -20(r30)                 # 4-byte Folded Spill
	.loc	1 49 13                         # parallel-rne.mlir:49:13
	div.s r1, r16, r1
	.loc	1 50 13                         # parallel-rne.mlir:50:13
	div.s r2, r1, r2
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	div.s r1, r2, r3
	slli r9, r1, 3
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	sub.s r1, r13, r9
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	min.s r15, r1, r3
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	mod.s r1, r2, r15
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	add.s r3, r1, r9
	.loc	1 83 13                         # parallel-rne.mlir:83:13
	slli r1, r14, 12
	.loc	1 66 13                         # parallel-rne.mlir:66:13
	zext_int2long r[4:5], r3
	storeli.w r3, -60(r30)                  # 4-byte Folded Spill
	.loc	1 85 13                         # parallel-rne.mlir:85:13
	lui r3, 6
	add.s r6, r1, r3
	.loc	1 89 7                          # parallel-rne.mlir:89:7
	store.d r[4:5], -56(r30)                # 8-byte Folded Spill
	bneq r10, r13, .LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 11
	.loc	1 89 7                          # parallel-rne.mlir:89:7
	load.d r[26:27], 0(r30)
	addli r18, zero, 2
	xwait r11, 0
	sll.d r[3:4], r[4:5], r8
	add.ul r[4:5], r[26:27], r[3:4]
	blt.s r18, r20, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r20, zero, 5
	.loc	1 89 7                          # parallel-rne.mlir:89:7
	addli r3, zero, 4
	addli r24, zero, 17
	lock zero, r20
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 6
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 7
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 13
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 15
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 16
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 18
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 19
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 20
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 21
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 22
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 23
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 24
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 25
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 26
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 27
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 28
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 29
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 30
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 31
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 64
	dma_cfg r13, r13, zero, 0
	dma_cfg r13, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r24, 3
	addli r24, zero, 128
	dma_cfg r24, zero, r18, 4
	addli r24, zero, 256
	dma_cfg r24, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r20
.LBB0_10:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r3, 6
	addli r20, zero, 4
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	addli r26, zero, 64
	addli r27, zero, 128
	addli r24, zero, 16
	addli r28, zero, 256
	ori r3, r3, 64
	.loc	1 89 7                          # parallel-rne.mlir:89:7
	lock zero, r20
	dma_cfg r13, r13, zero, 0
	add.s r3, r1, r3
	dma_cfg zero, r5, zero, 2
	dma_cfg r3, r4, r26, 3
	addli r3, zero, 5
	addli r4, zero, 6
	addli r5, zero, 9
	dma_cfg r27, r26, r18, 4
	dma_cfg r28, r27, r24, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r20
	lock zero, r3
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 7
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 12
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 13
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 14
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 15
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 17
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 18
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 19
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 20
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 21
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 22
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 23
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 24
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 25
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 26
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 27
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 28
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 29
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 30
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 31
	dma_cfg zero, zero, r5, 10
	dma_cfg r13, r13, zero, 0
	dma_cfg r13, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r26, 3
	dma_cfg r27, zero, r18, 4
	dma_cfg r28, zero, r24, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	xsignal r18, 0
	.loc	1 90 7 is_stmt 1                # parallel-rne.mlir:90:7
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 2
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	bneq r10, r3, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 5
	xwait r3, 0
	xwait r4, 0
	lock zero, zero
	addli r4, zero, 64
	ds_cfg r3, zero, 0
	addli r3, zero, 16
	ds_cfg r4, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r3, zero, 13
	addli r3, zero, 1
	shuffle_batch r1, r6, r4, 1
	unlock zero
	xsignal r11, 0
	storeli.w r3, -44(r30)                  # 4-byte Folded Spill
	addli r3, zero, 4
	xsignal r3, 0
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 7
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	sub.s r2, r2, r9
	.loc	1 98 13 is_stmt 1               # parallel-rne.mlir:98:13
	slli r6, r14, 15
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	slli r9, r14, 13
	addli r14, zero, 6
	.loc	1 104 7 is_stmt 1               # parallel-rne.mlir:104:7
	store.d r[16:17], -32(r30)              # 8-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.s r15, r2, r15
	zext_int2long r[2:3], r15
	.loc	1 104 7                         # parallel-rne.mlir:104:7
	storeli.w r15, -64(r30)                 # 4-byte Folded Spill
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	sll.d r[3:4], r[2:3], r4
	.loc	1 100 13 is_stmt 1              # parallel-rne.mlir:100:13
	lui r2, 9
	.loc	1 104 7                         # parallel-rne.mlir:104:7
	sll.d r[26:27], r[3:4], r13
	.loc	1 100 13                        # parallel-rne.mlir:100:13
	add.s r2, r6, r2
	addli r3, zero, 7
	.loc	1 104 7                         # parallel-rne.mlir:104:7
	bneq r10, r14, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[4:5], 8(r30)
	xwait r3, 0
	loadli.w r1,  -20(r30)                  # 4-byte Folded Reload
	addli r18, zero, 6
	addli r8, zero, 11
	addli r14, zero, 2
	addli r15, zero, 4
	add.ul r[4:5], r[4:5], r[26:27]
	blt.s r14, r1, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 5
	.loc	1 104 7                         # parallel-rne.mlir:104:7
	addli r20, zero, 128
	lock zero, r1
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 9
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 10
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 12
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 13
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 14
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 15
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 16
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 17
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 18
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 19
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 20
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 21
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 22
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 23
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 24
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 25
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 26
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 27
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 28
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 29
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 30
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 31
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 64
	dma_cfg r13, r13, zero, 0
	dma_cfg r13, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r18, 3
	dma_cfg r20, zero, r15, 4
	addli r20, zero, 512
	dma_cfg r20, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r1
.LBB0_18:                               # %.thread15
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r1, 9
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	addli r16, zero, 512
	.loc	1 104 7                         # parallel-rne.mlir:104:7
	lock zero, r15
	ori r1, r1, 64
	dma_cfg r13, r13, zero, 0
	dma_cfg zero, r5, zero, 2
	add.s r1, r6, r1
	addli r6, zero, 64
	dma_cfg r1, r4, r6, 3
	addli r1, zero, 128
	addli r4, zero, 6
	addli r5, zero, 128
	dma_cfg r1, r6, r15, 4
	addli r1, zero, 256
	dma_cfg r16, r1, r6, 5
	addli r1, zero, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	lock zero, r1
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 13
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 15
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 16
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 17
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 18
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 19
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 20
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 21
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 22
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 23
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 24
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 25
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 26
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 27
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 28
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 29
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 30
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 31
	dma_cfg zero, zero, r3, 10
	dma_cfg r13, r13, zero, 0
	dma_cfg r13, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r6, 3
	dma_cfg r5, zero, r15, 4
	dma_cfg r16, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r1
	xsignal r4, 0
	.loc	1 105 7 is_stmt 1               # parallel-rne.mlir:105:7
	j .LBB0_28
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 11
	addli r4, zero, 2
	addli r8, zero, 4
	.loc	1 105 7                         # parallel-rne.mlir:105:7
	beq r10, r8, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r10, r3, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 9
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	xwait r14, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 64
	ds_cfg r4, zero, 0
	addli r4, zero, 128
	ds_cfg r4, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r4, zero, 13
	shuffle_coa r6, r2, r1, 2
	addli r1, zero, 1
	unlock zero
	xsignal r3, 0
	storeli.w r1, -36(r30)                  # 4-byte Folded Spill
	xsignal r7, 0
	j .LBB0_28
.LBB0_22:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 106 7 is_stmt 1               # parallel-rne.mlir:106:7
	xwait r8, 0
	xwait r7, 0
	addli r4, zero, 0
	addli r2, zero, 1
	addli r3, zero, 1
	addli r7, zero, 16
	addli r14, zero, 64
	xwait r5, 0
.LBB0_23:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r5, r4, 14
	slli r4, r4, 8
	lock zero, r2
	mm_cfg r14, r14, r7, 0
	or r5, r5, r6
	or r4, r4, r9
	mm_cfg r8, r8, r2, 2
	mm r4, r1, r5, 8
	andi r5, r3, 1
	addli r4, zero, 1
	addli r3, zero, 0
	unlock r2
	bneq r5, zero, .LBB0_23
# %bb.24:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 5
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	addli r1, zero, 1
	storeli.w r1, -40(r30)                  # 4-byte Folded Spill
	addli r1, zero, 10
	xsignal r1, 0
	j .LBB0_28
.LBB0_25:                               # %.thread16
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 113 7                         # parallel-rne.mlir:113:7
	bneq r10, r11, .LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	xwait r1, 0
	.loc	1 114 7                         # parallel-rne.mlir:114:7
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
.LBB0_28:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 111 13 is_stmt 1              # parallel-rne.mlir:111:13
	lui r1, 33
	.loc	1 116 7                         # parallel-rne.mlir:116:7
	xfence
	.loc	1 117 7                         # parallel-rne.mlir:117:7
	mfence { lm, sm, gm }
	.loc	1 111 13                        # parallel-rne.mlir:111:13
	add.s r17, r9, r1
	.loc	1 118 7                         # parallel-rne.mlir:118:7
	addli r1, zero, 255
	csr_set csr5, r1
	addli r1, zero, 128
	sync_core
	store.d r[26:27], -8(r30)               # 8-byte Folded Spill
	zext_int2long r[14:15], r1
	.loc	1 119 7                         # parallel-rne.mlir:119:7
	beq r10, zero, .LBB0_35
# %bb.29:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	beq r10, r13, .LBB0_59
.LBB0_30:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_83
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	beq r10, r11, .LBB0_107
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 235 7                         # parallel-rne.mlir:235:7
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_131
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 264 7                         # parallel-rne.mlir:264:7
	addli r1, zero, 5
	beq r10, r1, .LBB0_155
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 293 7                         # parallel-rne.mlir:293:7
	addli r1, zero, 6
	beq r10, r1, .LBB0_179
	j .LBB0_203
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 119 7                         # parallel-rne.mlir:119:7
	xfence
	zext_int2long r[10:11], zero
	addli r24, zero, 1
	mfence { lm, sm, gm }
	store.d r[10:11], -16(r30)              # 8-byte Folded Spill
	j .LBB0_37
.LBB0_36:                               # %middle.block98
                                        #   in Loop: Header=BB0_37 Depth=2
	.loc	1 127 9                         # parallel-rne.mlir:127:9
	andi r1, r24, 1
	addli.d r[10:11], r[14:15], 0
	addli r24, zero, 0
	beq r1, zero, .LBB0_58
.LBB0_37:                               # %vector.ph93
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_39 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	j .LBB0_39
.LBB0_38:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 128 11 is_stmt 1              # parallel-rne.mlir:128:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	add.s r2, r17, r8
	.loc	1 128 11                        # parallel-rne.mlir:128:11
	setneq.d r1, r[6:7], r[14:15]
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	stores.w r16, 12(r2)
	stores.w r4, 8(r2)
	stores.w r27, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 128 11                        # parallel-rne.mlir:128:11
	beq r1, zero, .LBB0_36
.LBB0_39:                               # %vector.body94
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 129 19                        # parallel-rne.mlir:129:19
	add.ul r[1:2], r[6:7], r[10:11]
	slli r8, r1, 2
	add.s r1, r9, r8
	loads.w r28, 12(r1)
	loads.w r20, 0(r1)
	loads.w r5, 4(r1)
	loads.w r26, 8(r1)
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	and r18, r28, r22
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	setlt.u r1, r19, r18
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r1, zero, .LBB0_41
# %bb.40:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r28, 0
	j .LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_39 Depth=3
	or r16, r28, r12
.LBB0_42:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	and r3, r26, r22
	setlt.u r1, r19, r3
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r1, zero, .LBB0_44
# %bb.43:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r26, 0
	j .LBB0_45
.LBB0_44:                               #   in Loop: Header=BB0_39 Depth=3
	or r4, r26, r12
.LBB0_45:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	and r1, r5, r22
	setlt.u r2, r19, r1
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r2, zero, .LBB0_47
# %bb.46:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r5, 0
	j .LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_39 Depth=3
	or r27, r5, r12
.LBB0_48:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	and r2, r20, r22
	setlt.u r13, r19, r2
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r13, zero, .LBB0_50
# %bb.49:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r20, 0
	.loc	1 140 19 is_stmt 1              # parallel-rne.mlir:140:19
	setlt.u r2, r25, r2
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	beq r2, zero, .LBB0_51
	j .LBB0_52
.LBB0_50:                               #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r20, r12
	.loc	1 140 19 is_stmt 1              # parallel-rne.mlir:140:19
	setlt.u r2, r25, r2
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r2, zero, .LBB0_52
.LBB0_51:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r20, 16
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r23
	and r13, r2, r21
.LBB0_52:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	setlt.u r1, r25, r1
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	beq r1, zero, .LBB0_55
# %bb.53:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r25, r3
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	beq r1, zero, .LBB0_56
.LBB0_54:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r25, r18
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r1, zero, .LBB0_38
	j .LBB0_57
.LBB0_55:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r5, 16
	andi r1, r1, 1
	add.s r1, r5, r1
	add.s r1, r1, r23
	and r27, r1, r21
	setlt.u r1, r25, r3
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r1, zero, .LBB0_54
.LBB0_56:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r23
	and r4, r1, r21
	setlt.u r1, r25, r18
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r1, zero, .LBB0_38
.LBB0_57:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r23
	and r16, r1, r21
	j .LBB0_38
.LBB0_58:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 119 7 is_stmt 1               # parallel-rne.mlir:119:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r11, zero, 3
	addli r13, zero, 1
	load.d r[26:27], -8(r30)                # 8-byte Folded Reload
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	bneq r10, r13, .LBB0_30
.LBB0_59:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 256
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_61
.LBB0_60:                               # %middle.block89
                                        #   in Loop: Header=BB0_61 Depth=2
	.loc	1 156 9 is_stmt 1               # parallel-rne.mlir:156:9
	andi r2, r1, 1
	addli r1, zero, 384
	zext_int2long r[10:11], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_82
.LBB0_61:                               # %vector.ph84
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_63 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[6:7], zero
	j .LBB0_63
.LBB0_62:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 157 11 is_stmt 1              # parallel-rne.mlir:157:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 172 13                        # parallel-rne.mlir:172:13
	add.s r2, r17, r2
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	setneq.d r3, r[6:7], r[14:15]
	.loc	1 172 13                        # parallel-rne.mlir:172:13
	stores.w r16, 12(r2)
	stores.w r24, 8(r2)
	stores.w r5, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	beq r3, zero, .LBB0_60
.LBB0_63:                               # %vector.body85
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_61 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	add.ul r[2:3], r[6:7], r[10:11]
	slli r2, r2, 2
	add.s r3, r9, r2
	loads.w r8, 12(r3)
	loads.w r13, 0(r3)
	loads.w r26, 4(r3)
	loads.w r4, 8(r3)
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	and r18, r8, r22
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	setlt.u r3, r19, r18
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r3, zero, .LBB0_65
# %bb.64:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r8, 0
	j .LBB0_66
.LBB0_65:                               #   in Loop: Header=BB0_63 Depth=3
	or r16, r8, r12
.LBB0_66:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	and r3, r4, r22
	setlt.u r5, r19, r3
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r5, zero, .LBB0_68
# %bb.67:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_69
.LBB0_68:                               #   in Loop: Header=BB0_63 Depth=3
	or r24, r4, r12
.LBB0_69:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	and r27, r26, r22
	setlt.u r5, r19, r27
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r5, zero, .LBB0_71
# %bb.70:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r26, 0
	j .LBB0_72
.LBB0_71:                               #   in Loop: Header=BB0_63 Depth=3
	or r5, r26, r12
.LBB0_72:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	and r28, r13, r22
	setlt.u r20, r19, r28
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r20, zero, .LBB0_74
# %bb.73:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	.loc	1 169 19 is_stmt 1              # parallel-rne.mlir:169:19
	setlt.u r28, r25, r28
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	beq r28, zero, .LBB0_75
	j .LBB0_76
.LBB0_74:                               #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r13, r12
	.loc	1 169 19 is_stmt 1              # parallel-rne.mlir:169:19
	setlt.u r28, r25, r28
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r28, zero, .LBB0_76
.LBB0_75:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r13, 16
	andi r20, r20, 1
	add.s r13, r13, r20
	add.s r13, r13, r23
	and r20, r13, r21
.LBB0_76:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	setlt.u r13, r25, r27
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	beq r13, zero, .LBB0_81
# %bb.77:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r3, zero, .LBB0_79
.LBB0_78:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	add.s r3, r3, r23
	and r24, r3, r21
.LBB0_79:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	setlt.u r3, r25, r18
	load.d r[26:27], -8(r30)                # 8-byte Folded Reload
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r3, zero, .LBB0_62
# %bb.80:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r8, 16
	andi r3, r3, 1
	add.s r3, r8, r3
	add.s r3, r3, r23
	and r16, r3, r21
	j .LBB0_62
.LBB0_81:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r23
	and r5, r5, r21
	setlt.u r3, r25, r3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	beq r3, zero, .LBB0_78
	j .LBB0_79
.LBB0_82:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r10
	addli r11, zero, 3
	addli r13, zero, 1
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	mfence { sm }
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_31
.LBB0_83:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 512
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_85
.LBB0_84:                               # %middle.block80
                                        #   in Loop: Header=BB0_85 Depth=2
	.loc	1 185 9 is_stmt 1               # parallel-rne.mlir:185:9
	andi r2, r1, 1
	addli r1, zero, 640
	zext_int2long r[10:11], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_106
.LBB0_85:                               # %vector.ph75
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_87 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[6:7], zero
	j .LBB0_87
.LBB0_86:                               # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 186 11 is_stmt 1              # parallel-rne.mlir:186:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 201 13                        # parallel-rne.mlir:201:13
	add.s r2, r17, r2
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	setneq.d r3, r[6:7], r[14:15]
	.loc	1 201 13                        # parallel-rne.mlir:201:13
	stores.w r16, 12(r2)
	stores.w r24, 8(r2)
	stores.w r5, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	beq r3, zero, .LBB0_84
.LBB0_87:                               # %vector.body76
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_85 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	add.ul r[2:3], r[6:7], r[10:11]
	slli r2, r2, 2
	add.s r3, r9, r2
	loads.w r8, 12(r3)
	loads.w r13, 0(r3)
	loads.w r26, 4(r3)
	loads.w r4, 8(r3)
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	and r18, r8, r22
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	setlt.u r3, r19, r18
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r3, zero, .LBB0_89
# %bb.88:                               # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r8, 0
	j .LBB0_90
.LBB0_89:                               #   in Loop: Header=BB0_87 Depth=3
	or r16, r8, r12
.LBB0_90:                               # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	and r3, r4, r22
	setlt.u r5, r19, r3
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r5, zero, .LBB0_92
# %bb.91:                               # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_93
.LBB0_92:                               #   in Loop: Header=BB0_87 Depth=3
	or r24, r4, r12
.LBB0_93:                               # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	and r27, r26, r22
	setlt.u r5, r19, r27
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r5, zero, .LBB0_95
# %bb.94:                               # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r26, 0
	j .LBB0_96
.LBB0_95:                               #   in Loop: Header=BB0_87 Depth=3
	or r5, r26, r12
.LBB0_96:                               # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	and r28, r13, r22
	setlt.u r20, r19, r28
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r20, zero, .LBB0_98
# %bb.97:                               # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	.loc	1 198 19 is_stmt 1              # parallel-rne.mlir:198:19
	setlt.u r28, r25, r28
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	beq r28, zero, .LBB0_99
	j .LBB0_100
.LBB0_98:                               #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r13, r12
	.loc	1 198 19 is_stmt 1              # parallel-rne.mlir:198:19
	setlt.u r28, r25, r28
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r28, zero, .LBB0_100
.LBB0_99:                               # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r13, 16
	andi r20, r20, 1
	add.s r13, r13, r20
	add.s r13, r13, r23
	and r20, r13, r21
.LBB0_100:                              # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	setlt.u r13, r25, r27
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	beq r13, zero, .LBB0_103
# %bb.101:                              # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r3
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	beq r3, zero, .LBB0_104
.LBB0_102:                              # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r18
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r3, zero, .LBB0_86
	j .LBB0_105
.LBB0_103:                              # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r23
	and r5, r5, r21
	setlt.u r3, r25, r3
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r3, zero, .LBB0_102
.LBB0_104:                              # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	add.s r3, r3, r23
	and r24, r3, r21
	setlt.u r3, r25, r18
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r3, zero, .LBB0_86
.LBB0_105:                              # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r8, 16
	andi r3, r3, 1
	add.s r3, r8, r3
	add.s r3, r3, r23
	and r16, r3, r21
	j .LBB0_86
.LBB0_106:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 177 7 is_stmt 1               # parallel-rne.mlir:177:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r11, zero, 3
	addli r13, zero, 1
	load.d r[26:27], -8(r30)                # 8-byte Folded Reload
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	bneq r10, r11, .LBB0_32
.LBB0_107:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 768
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_109
.LBB0_108:                              # %middle.block71
                                        #   in Loop: Header=BB0_109 Depth=2
	.loc	1 214 9 is_stmt 1               # parallel-rne.mlir:214:9
	andi r2, r1, 1
	addli r1, zero, 896
	zext_int2long r[10:11], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_130
.LBB0_109:                              # %vector.ph66
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_111 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[6:7], zero
	j .LBB0_111
.LBB0_110:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 215 11 is_stmt 1              # parallel-rne.mlir:215:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 230 13                        # parallel-rne.mlir:230:13
	add.s r2, r17, r2
	.loc	1 215 11                        # parallel-rne.mlir:215:11
	setneq.d r3, r[6:7], r[14:15]
	.loc	1 230 13                        # parallel-rne.mlir:230:13
	stores.w r16, 12(r2)
	stores.w r24, 8(r2)
	stores.w r5, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 215 11                        # parallel-rne.mlir:215:11
	beq r3, zero, .LBB0_108
.LBB0_111:                              # %vector.body67
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_109 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	add.ul r[2:3], r[6:7], r[10:11]
	slli r2, r2, 2
	add.s r3, r9, r2
	loads.w r8, 12(r3)
	loads.w r13, 0(r3)
	loads.w r26, 4(r3)
	loads.w r4, 8(r3)
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	and r18, r8, r22
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	setlt.u r3, r19, r18
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r3, zero, .LBB0_113
# %bb.112:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r8, 0
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_111 Depth=3
	or r16, r8, r12
.LBB0_114:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	and r3, r4, r22
	setlt.u r5, r19, r3
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r5, zero, .LBB0_116
# %bb.115:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_111 Depth=3
	or r24, r4, r12
.LBB0_117:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	and r27, r26, r22
	setlt.u r5, r19, r27
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r5, zero, .LBB0_119
# %bb.118:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r26, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_111 Depth=3
	or r5, r26, r12
.LBB0_120:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	and r28, r13, r22
	setlt.u r20, r19, r28
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r20, zero, .LBB0_122
# %bb.121:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	.loc	1 227 19 is_stmt 1              # parallel-rne.mlir:227:19
	setlt.u r28, r25, r28
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	beq r28, zero, .LBB0_123
	j .LBB0_124
.LBB0_122:                              #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r13, r12
	.loc	1 227 19 is_stmt 1              # parallel-rne.mlir:227:19
	setlt.u r28, r25, r28
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r28, zero, .LBB0_124
.LBB0_123:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r13, 16
	andi r20, r20, 1
	add.s r13, r13, r20
	add.s r13, r13, r23
	and r20, r13, r21
.LBB0_124:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	setlt.u r13, r25, r27
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	beq r13, zero, .LBB0_127
# %bb.125:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	beq r3, zero, .LBB0_128
.LBB0_126:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r18
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r3, zero, .LBB0_110
	j .LBB0_129
.LBB0_127:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r23
	and r5, r5, r21
	setlt.u r3, r25, r3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r3, zero, .LBB0_126
.LBB0_128:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	add.s r3, r3, r23
	and r24, r3, r21
	setlt.u r3, r25, r18
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r3, zero, .LBB0_110
.LBB0_129:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r8, 16
	andi r3, r3, 1
	add.s r3, r8, r3
	add.s r3, r3, r23
	and r16, r3, r21
	j .LBB0_110
.LBB0_130:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 206 7 is_stmt 1               # parallel-rne.mlir:206:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r13, zero, 1
	load.d r[26:27], -8(r30)                # 8-byte Folded Reload
	.loc	1 235 7                         # parallel-rne.mlir:235:7
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_33
.LBB0_131:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 1024
	.loc	1 235 7                         # parallel-rne.mlir:235:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_133
.LBB0_132:                              # %middle.block62
                                        #   in Loop: Header=BB0_133 Depth=2
	.loc	1 243 9 is_stmt 1               # parallel-rne.mlir:243:9
	andi r2, r1, 1
	addli r1, zero, 1152
	zext_int2long r[10:11], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_154
.LBB0_133:                              # %vector.ph57
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_135 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[6:7], zero
	j .LBB0_135
.LBB0_134:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 244 11 is_stmt 1              # parallel-rne.mlir:244:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 259 13                        # parallel-rne.mlir:259:13
	add.s r2, r17, r2
	.loc	1 244 11                        # parallel-rne.mlir:244:11
	setneq.d r3, r[6:7], r[14:15]
	.loc	1 259 13                        # parallel-rne.mlir:259:13
	stores.w r16, 12(r2)
	stores.w r24, 8(r2)
	stores.w r5, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 244 11                        # parallel-rne.mlir:244:11
	beq r3, zero, .LBB0_132
.LBB0_135:                              # %vector.body58
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_133 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	add.ul r[2:3], r[6:7], r[10:11]
	slli r2, r2, 2
	add.s r3, r9, r2
	loads.w r8, 12(r3)
	loads.w r13, 0(r3)
	loads.w r26, 4(r3)
	loads.w r4, 8(r3)
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	and r18, r8, r22
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	setlt.u r3, r19, r18
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r3, zero, .LBB0_137
# %bb.136:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r8, 0
	j .LBB0_138
.LBB0_137:                              #   in Loop: Header=BB0_135 Depth=3
	or r16, r8, r12
.LBB0_138:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	and r3, r4, r22
	setlt.u r5, r19, r3
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r5, zero, .LBB0_140
# %bb.139:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_135 Depth=3
	or r24, r4, r12
.LBB0_141:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	and r27, r26, r22
	setlt.u r5, r19, r27
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r5, zero, .LBB0_143
# %bb.142:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r26, 0
	j .LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_135 Depth=3
	or r5, r26, r12
.LBB0_144:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	and r28, r13, r22
	setlt.u r20, r19, r28
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r20, zero, .LBB0_146
# %bb.145:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	.loc	1 256 19 is_stmt 1              # parallel-rne.mlir:256:19
	setlt.u r28, r25, r28
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	beq r28, zero, .LBB0_147
	j .LBB0_148
.LBB0_146:                              #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r13, r12
	.loc	1 256 19 is_stmt 1              # parallel-rne.mlir:256:19
	setlt.u r28, r25, r28
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	bneq r28, zero, .LBB0_148
.LBB0_147:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r13, 16
	andi r20, r20, 1
	add.s r13, r13, r20
	add.s r13, r13, r23
	and r20, r13, r21
.LBB0_148:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	setlt.u r13, r25, r27
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	beq r13, zero, .LBB0_153
# %bb.149:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	bneq r3, zero, .LBB0_151
.LBB0_150:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	add.s r3, r3, r23
	and r24, r3, r21
.LBB0_151:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	setlt.u r3, r25, r18
	load.d r[26:27], -8(r30)                # 8-byte Folded Reload
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	bneq r3, zero, .LBB0_134
# %bb.152:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r8, 16
	andi r3, r3, 1
	add.s r3, r8, r3
	add.s r3, r3, r23
	and r16, r3, r21
	j .LBB0_134
.LBB0_153:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r23
	and r5, r5, r21
	setlt.u r3, r25, r3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	beq r3, zero, .LBB0_150
	j .LBB0_151
.LBB0_154:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r10
	addli r13, zero, 1
	.loc	1 235 7                         # parallel-rne.mlir:235:7
	mfence { sm }
	.loc	1 264 7                         # parallel-rne.mlir:264:7
	addli r1, zero, 5
	bneq r10, r1, .LBB0_34
.LBB0_155:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 1280
	.loc	1 264 7                         # parallel-rne.mlir:264:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_157
.LBB0_156:                              # %middle.block53
                                        #   in Loop: Header=BB0_157 Depth=2
	.loc	1 272 9 is_stmt 1               # parallel-rne.mlir:272:9
	andi r2, r1, 1
	addli r1, zero, 1408
	zext_int2long r[10:11], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_178
.LBB0_157:                              # %vector.ph48
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_159 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[6:7], zero
	j .LBB0_159
.LBB0_158:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 273 11 is_stmt 1              # parallel-rne.mlir:273:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 288 13                        # parallel-rne.mlir:288:13
	add.s r2, r17, r2
	.loc	1 273 11                        # parallel-rne.mlir:273:11
	setneq.d r3, r[6:7], r[14:15]
	.loc	1 288 13                        # parallel-rne.mlir:288:13
	stores.w r16, 12(r2)
	stores.w r24, 8(r2)
	stores.w r5, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 273 11                        # parallel-rne.mlir:273:11
	beq r3, zero, .LBB0_156
.LBB0_159:                              # %vector.body49
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_157 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	add.ul r[2:3], r[6:7], r[10:11]
	slli r2, r2, 2
	add.s r3, r9, r2
	loads.w r8, 12(r3)
	loads.w r13, 0(r3)
	loads.w r26, 4(r3)
	loads.w r4, 8(r3)
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	and r18, r8, r22
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	setlt.u r3, r19, r18
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r3, zero, .LBB0_161
# %bb.160:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r8, 0
	j .LBB0_162
.LBB0_161:                              #   in Loop: Header=BB0_159 Depth=3
	or r16, r8, r12
.LBB0_162:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	and r3, r4, r22
	setlt.u r5, r19, r3
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r5, zero, .LBB0_164
# %bb.163:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_165
.LBB0_164:                              #   in Loop: Header=BB0_159 Depth=3
	or r24, r4, r12
.LBB0_165:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	and r27, r26, r22
	setlt.u r5, r19, r27
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r5, zero, .LBB0_167
# %bb.166:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r26, 0
	j .LBB0_168
.LBB0_167:                              #   in Loop: Header=BB0_159 Depth=3
	or r5, r26, r12
.LBB0_168:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	and r28, r13, r22
	setlt.u r20, r19, r28
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r20, zero, .LBB0_170
# %bb.169:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	.loc	1 285 19 is_stmt 1              # parallel-rne.mlir:285:19
	setlt.u r28, r25, r28
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	beq r28, zero, .LBB0_171
	j .LBB0_172
.LBB0_170:                              #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r13, r12
	.loc	1 285 19 is_stmt 1              # parallel-rne.mlir:285:19
	setlt.u r28, r25, r28
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r28, zero, .LBB0_172
.LBB0_171:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r13, 16
	andi r20, r20, 1
	add.s r13, r13, r20
	add.s r13, r13, r23
	and r20, r13, r21
.LBB0_172:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	setlt.u r13, r25, r27
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	beq r13, zero, .LBB0_175
# %bb.173:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r3
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	beq r3, zero, .LBB0_176
.LBB0_174:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r18
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r3, zero, .LBB0_158
	j .LBB0_177
.LBB0_175:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r23
	and r5, r5, r21
	setlt.u r3, r25, r3
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r3, zero, .LBB0_174
.LBB0_176:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	add.s r3, r3, r23
	and r24, r3, r21
	setlt.u r3, r25, r18
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r3, zero, .LBB0_158
.LBB0_177:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r8, 16
	andi r3, r3, 1
	add.s r3, r8, r3
	add.s r3, r3, r23
	and r16, r3, r21
	j .LBB0_158
.LBB0_178:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 264 7 is_stmt 1               # parallel-rne.mlir:264:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r13, zero, 1
	load.d r[26:27], -8(r30)                # 8-byte Folded Reload
	.loc	1 293 7                         # parallel-rne.mlir:293:7
	addli r1, zero, 6
	bneq r10, r1, .LBB0_203
.LBB0_179:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 1536
	.loc	1 293 7                         # parallel-rne.mlir:293:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_181
.LBB0_180:                              # %middle.block44
                                        #   in Loop: Header=BB0_181 Depth=2
	.loc	1 301 9 is_stmt 1               # parallel-rne.mlir:301:9
	andi r2, r1, 1
	addli r1, zero, 1664
	zext_int2long r[10:11], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_202
.LBB0_181:                              # %vector.ph39
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_183 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[6:7], zero
	j .LBB0_183
.LBB0_182:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 302 11 is_stmt 1              # parallel-rne.mlir:302:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 317 13                        # parallel-rne.mlir:317:13
	add.s r2, r17, r2
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	setneq.d r3, r[6:7], r[14:15]
	.loc	1 317 13                        # parallel-rne.mlir:317:13
	stores.w r16, 12(r2)
	stores.w r24, 8(r2)
	stores.w r5, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	beq r3, zero, .LBB0_180
.LBB0_183:                              # %vector.body40
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_181 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	add.ul r[2:3], r[6:7], r[10:11]
	slli r2, r2, 2
	add.s r3, r9, r2
	loads.w r8, 12(r3)
	loads.w r13, 0(r3)
	loads.w r26, 4(r3)
	loads.w r4, 8(r3)
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	and r18, r8, r22
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	setlt.u r3, r19, r18
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r3, zero, .LBB0_185
# %bb.184:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r8, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_183 Depth=3
	or r16, r8, r12
.LBB0_186:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	and r3, r4, r22
	setlt.u r5, r19, r3
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r5, zero, .LBB0_188
# %bb.187:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_189
.LBB0_188:                              #   in Loop: Header=BB0_183 Depth=3
	or r24, r4, r12
.LBB0_189:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	and r27, r26, r22
	setlt.u r5, r19, r27
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r5, zero, .LBB0_191
# %bb.190:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r26, 0
	j .LBB0_192
.LBB0_191:                              #   in Loop: Header=BB0_183 Depth=3
	or r5, r26, r12
.LBB0_192:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	and r28, r13, r22
	setlt.u r20, r19, r28
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r20, zero, .LBB0_194
# %bb.193:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	.loc	1 314 19 is_stmt 1              # parallel-rne.mlir:314:19
	setlt.u r28, r25, r28
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	beq r28, zero, .LBB0_195
	j .LBB0_196
.LBB0_194:                              #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r13, r12
	.loc	1 314 19 is_stmt 1              # parallel-rne.mlir:314:19
	setlt.u r28, r25, r28
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r28, zero, .LBB0_196
.LBB0_195:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r13, 16
	andi r20, r20, 1
	add.s r13, r13, r20
	add.s r13, r13, r23
	and r20, r13, r21
.LBB0_196:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	setlt.u r13, r25, r27
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	beq r13, zero, .LBB0_201
# %bb.197:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r3
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r3, zero, .LBB0_199
.LBB0_198:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	add.s r3, r3, r23
	and r24, r3, r21
.LBB0_199:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	setlt.u r3, r25, r18
	load.d r[26:27], -8(r30)                # 8-byte Folded Reload
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r3, zero, .LBB0_182
# %bb.200:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r8, 16
	andi r3, r3, 1
	add.s r3, r8, r3
	add.s r3, r3, r23
	and r16, r3, r21
	j .LBB0_182
.LBB0_201:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r23
	and r5, r5, r21
	setlt.u r3, r25, r3
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	beq r3, zero, .LBB0_198
	j .LBB0_199
.LBB0_202:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r10
	addli r13, zero, 1
	.loc	1 293 7                         # parallel-rne.mlir:293:7
	mfence { sm }
.LBB0_203:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 322 7 is_stmt 1               # parallel-rne.mlir:322:7
	store.d r[1:2], -16(r30)                # 8-byte Folded Spill
	loadli.w r1,  -36(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_228
# %bb.204:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 1792
	.loc	1 322 7                         # parallel-rne.mlir:322:7
	xfence
	addli r8, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r1
	j .LBB0_206
.LBB0_205:                              # %middle.block
                                        #   in Loop: Header=BB0_206 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 1920
	.loc	1 330 9 is_stmt 1               # parallel-rne.mlir:330:9
	andi r1, r8, 1
	addli r8, zero, 0
	zext_int2long r[10:11], r2
	beq r1, zero, .LBB0_227
.LBB0_206:                              # %vector.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_208 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	j .LBB0_208
.LBB0_207:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 331 11 is_stmt 1              # parallel-rne.mlir:331:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 346 13                        # parallel-rne.mlir:346:13
	add.s r2, r17, r24
	.loc	1 331 11                        # parallel-rne.mlir:331:11
	setneq.d r1, r[6:7], r[14:15]
	.loc	1 346 13                        # parallel-rne.mlir:346:13
	stores.w r16, 12(r2)
	stores.w r26, 8(r2)
	stores.w r5, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 331 11                        # parallel-rne.mlir:331:11
	beq r1, zero, .LBB0_205
.LBB0_208:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_206 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	add.ul r[1:2], r[6:7], r[10:11]
	slli r24, r1, 2
	add.s r1, r9, r24
	loads.w r28, 12(r1)
	loads.w r13, 0(r1)
	loads.w r27, 4(r1)
	loads.w r4, 8(r1)
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	and r18, r28, r22
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	setlt.u r1, r19, r18
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r1, zero, .LBB0_210
# %bb.209:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r28, 0
	j .LBB0_211
.LBB0_210:                              #   in Loop: Header=BB0_208 Depth=3
	or r16, r28, r12
.LBB0_211:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	and r3, r4, r22
	setlt.u r1, r19, r3
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r1, zero, .LBB0_213
# %bb.212:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r4, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_208 Depth=3
	or r26, r4, r12
.LBB0_214:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	and r1, r27, r22
	setlt.u r2, r19, r1
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r2, zero, .LBB0_216
# %bb.215:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r27, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_208 Depth=3
	or r5, r27, r12
.LBB0_217:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	and r2, r13, r22
	setlt.u r20, r19, r2
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r20, zero, .LBB0_219
# %bb.218:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	.loc	1 343 19 is_stmt 1              # parallel-rne.mlir:343:19
	setlt.u r2, r25, r2
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	beq r2, zero, .LBB0_220
	j .LBB0_221
.LBB0_219:                              #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r13, r12
	.loc	1 343 19 is_stmt 1              # parallel-rne.mlir:343:19
	setlt.u r2, r25, r2
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r2, zero, .LBB0_221
.LBB0_220:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r13, 16
	andi r2, r2, 1
	add.s r2, r13, r2
	add.s r2, r2, r23
	and r20, r2, r21
.LBB0_221:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	setlt.u r1, r25, r1
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	beq r1, zero, .LBB0_224
# %bb.222:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r25, r3
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	beq r1, zero, .LBB0_225
.LBB0_223:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r25, r18
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r1, zero, .LBB0_207
	j .LBB0_226
.LBB0_224:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r23
	and r5, r1, r21
	setlt.u r1, r25, r3
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r1, zero, .LBB0_223
.LBB0_225:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r23
	and r26, r1, r21
	setlt.u r1, r25, r18
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r1, zero, .LBB0_207
.LBB0_226:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r23
	and r16, r1, r21
	j .LBB0_207
.LBB0_227:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 322 7 is_stmt 1               # parallel-rne.mlir:322:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r13, zero, 1
	load.d r[26:27], -8(r30)                # 8-byte Folded Reload
.LBB0_228:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 351 7                         # parallel-rne.mlir:351:7
	addli r1, zero, 255
	addli r11, zero, 3
	csr_set csr5, r1
	sync_core
	.loc	1 352 7                         # parallel-rne.mlir:352:7
	beq r10, r11, .LBB0_5
# %bb.229:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[16:17], -32(r30)               # 8-byte Folded Reload
	.loc	1 369 7 is_stmt 1               # parallel-rne.mlir:369:7
	bneq r10, zero, .LBB0_6
# %bb.230:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -60(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -64(r30)                  # 4-byte Folded Reload
	.loc	1 356 13 is_stmt 1              # parallel-rne.mlir:356:13
	load.d r[5:6], -16(r30)                 # 8-byte Folded Reload
	slli r1, r1, 4
	slli r2, r2, 7
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	sext_int2long r[3:4], r1
	.loc	1 359 13                        # parallel-rne.mlir:359:13
	zext_int2long r[1:2], r2
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	min.sl r[5:6], r[3:4], r[5:6]
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	max.ul r[7:8], r[1:2], r[14:15]
	addli r14, zero, 12
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	addli.d r[5:6], r[5:6], 16
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	sub.sl r[1:2], r[7:8], r[1:2]
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	load.d r[7:8], -56(r30)                 # 8-byte Folded Reload
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	max.sl r[5:6], r[5:6], r[3:4]
	store.d r[1:2], -8(r30)                 # 8-byte Folded Spill
	addli.d r[1:2], r[26:27], 0
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	load.d r[26:27], 16(r30)
	xwait r14, 0
	sll.d r[7:8], r[7:8], r14
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	sub.sl r[3:4], r[5:6], r[3:4]
	addli r5, zero, 16
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	add.ul r[7:8], r[26:27], r[7:8]
	zext_int2long r[5:6], r5
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	min.sl r[3:4], r[3:4], r[5:6]
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	add.ul r[5:6], r[7:8], r[1:2]
	addli r8, zero, 5
	lui r7, 33
	lock zero, r8
	ori r7, r7, 64
	dma_cfg r13, r13, zero, 0
	dma_cfg zero, r13, zero, 1
	add.s r7, r9, r7
	dma_cfg r6, zero, zero, 2
	load.d r[1:2], -8(r30)                  # 8-byte Folded Reload
	srli r1, r1, 5
	addli r2, zero, 64
	dma_cfg r5, r7, r2, 3
	addli r5, zero, 128
	dma_cfg r2, r5, r1, 4
	addli r1, zero, 256
	addli r2, zero, 512
	dma_cfg r1, r2, r3, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	xsignal r1, 0
	j .LBB0_6
.LBB0_231:                              # %._crit_edge
	.loc	1 371 5                         # parallel-rne.mlir:371:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_233
# %bb.232:
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
.LBB0_233:
	.loc	1 372 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:372:5
	addli sp, sp, 72
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
	.long	136                             # 0x88
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-uuz2ng66" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
