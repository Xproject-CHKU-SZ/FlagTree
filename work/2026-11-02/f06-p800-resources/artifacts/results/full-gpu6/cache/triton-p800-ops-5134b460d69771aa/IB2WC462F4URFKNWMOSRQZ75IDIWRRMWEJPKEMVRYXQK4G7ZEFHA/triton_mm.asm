	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-5hfueegw" "parallel-rne.mlir"
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
	addli r2, zero, 13
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
	ble.s r2, r1, .LBB0_230
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 39 11 is_stmt 1               # parallel-rne.mlir:39:11
	sext_int2long r[7:8], r1
	lui r1, 524287
	addli r11, zero, 8
	addli r13, zero, 1
	addli r15, zero, 7
	addli r17, zero, 11
	addli r18, zero, 3
	lui r12, 1024
	lui r19, 522240
	lui r21, 1048560
	addli r14, zero, 0
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
	loadli.w r14,  -20(r30)                 # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[7:8], -32(r30)                 # 8-byte Folded Reload
	.loc	1 47 5 is_stmt 1                # parallel-rne.mlir:47:5
	load.d r[1:2], -72(r30)                 # 8-byte Folded Reload
	addli r14, r14, 1
	addli r11, zero, 8
	addli r13, zero, 1
	addli r15, zero, 7
	addli r17, zero, 11
	addli.d r[7:8], r[7:8], 1
	setlt.sl r1, r[7:8], r[1:2]
	beq r1, zero, .LBB0_230
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
                                        #     Child Loop BB0_36 Depth 2
                                        #       Child Loop BB0_38 Depth 3
                                        #     Child Loop BB0_60 Depth 2
                                        #       Child Loop BB0_62 Depth 3
                                        #     Child Loop BB0_84 Depth 2
                                        #       Child Loop BB0_86 Depth 3
                                        #     Child Loop BB0_108 Depth 2
                                        #       Child Loop BB0_110 Depth 3
                                        #     Child Loop BB0_132 Depth 2
                                        #       Child Loop BB0_134 Depth 3
                                        #     Child Loop BB0_156 Depth 2
                                        #       Child Loop BB0_158 Depth 3
                                        #     Child Loop BB0_180 Depth 2
                                        #       Child Loop BB0_182 Depth 3
                                        #     Child Loop BB0_205 Depth 2
                                        #       Child Loop BB0_207 Depth 3
	.loc	1 49 13                         # parallel-rne.mlir:49:13
	loadli.w r1,  32(r30)
	.loc	1 50 13                         # parallel-rne.mlir:50:13
	loadli.w r2,  28(r30)
	addli r24, r14, 0
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	addli r3, zero, 5
	mod.s r14, r24, r3
	.loc	1 89 7                          # parallel-rne.mlir:89:7
	storeli.w r24, -20(r30)                 # 4-byte Folded Spill
	.loc	1 49 13                         # parallel-rne.mlir:49:13
	div.s r1, r7, r1
	.loc	1 50 13                         # parallel-rne.mlir:50:13
	div.s r2, r1, r2
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	div.s r1, r2, r11
	slli r9, r1, 3
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	sub.s r1, r13, r9
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	min.s r16, r1, r11
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	mod.s r1, r2, r16
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	add.s r3, r1, r9
	.loc	1 83 13                         # parallel-rne.mlir:83:13
	slli r1, r14, 12
	.loc	1 66 13                         # parallel-rne.mlir:66:13
	zext_int2long r[5:6], r3
	storeli.w r3, -60(r30)                  # 4-byte Folded Spill
	.loc	1 85 13                         # parallel-rne.mlir:85:13
	lui r3, 10
	add.s r4, r1, r3
	.loc	1 89 7                          # parallel-rne.mlir:89:7
	store.d r[5:6], -56(r30)                # 8-byte Folded Spill
	bneq r10, r13, .LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	load.d r[26:27], 0(r30)
	sll.d r[5:6], r[5:6], r17
	addli r20, zero, 4
	xwait r18, 0
	add.ul r[5:6], r[26:27], r[5:6]
	blt.s r20, r24, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 5
	addli r24, zero, 2
	.loc	1 89 7                          # parallel-rne.mlir:89:7
	addli r26, zero, 6
	addli r27, zero, 17
	lock zero, r3
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 9
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 10
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 12
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 13
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 14
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 15
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 16
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r27, 10
	addli r27, zero, 18
	dma_cfg zero, zero, r27, 10
	addli r27, zero, 19
	dma_cfg zero, zero, r27, 10
	addli r27, zero, 20
	dma_cfg zero, zero, r27, 10
	addli r27, zero, 21
	dma_cfg zero, zero, r27, 10
	addli r27, zero, 22
	dma_cfg zero, zero, r27, 10
	addli r27, zero, 23
	dma_cfg zero, zero, r27, 10
	addli r27, zero, 24
	dma_cfg zero, zero, r27, 10
	addli r27, zero, 25
	dma_cfg zero, zero, r27, 10
	addli r27, zero, 26
	dma_cfg zero, zero, r27, 10
	addli r27, zero, 27
	dma_cfg zero, zero, r27, 10
	addli r27, zero, 28
	dma_cfg zero, zero, r27, 10
	addli r27, zero, 29
	dma_cfg zero, zero, r27, 10
	addli r27, zero, 30
	dma_cfg zero, zero, r27, 10
	addli r27, zero, 31
	dma_cfg zero, zero, r27, 10
	addli r27, zero, 64
	dma_cfg r13, r13, zero, 0
	dma_cfg r13, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r4, zero, r27, 3
	addli r27, zero, 128
	dma_cfg r27, zero, r24, 4
	addli r24, zero, 256
	dma_cfg r24, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
.LBB0_10:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r3, 10
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	addli r26, zero, 64
	addli r27, zero, 128
	addli r24, zero, 16
	addli r28, zero, 256
	.loc	1 89 7                          # parallel-rne.mlir:89:7
	lock zero, r20
	ori r3, r3, 64
	dma_cfg r13, r13, zero, 0
	dma_cfg zero, r6, zero, 2
	add.s r3, r1, r3
	dma_cfg r3, r5, r26, 3
	addli r5, zero, 2
	addli r3, zero, 5
	addli r6, zero, 6
	dma_cfg r27, r26, r5, 4
	dma_cfg r28, r27, r24, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r20
	lock zero, r3
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 9
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 12
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 13
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 14
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 15
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 17
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 18
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 19
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 20
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 21
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 22
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 23
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 24
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 25
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 26
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 27
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 28
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 29
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 30
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 31
	dma_cfg zero, zero, r6, 10
	dma_cfg r13, r13, zero, 0
	dma_cfg r13, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r4, zero, r26, 3
	dma_cfg r27, zero, r5, 4
	dma_cfg r28, zero, r24, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	xsignal r5, 0
	.loc	1 90 7 is_stmt 1                # parallel-rne.mlir:90:7
	j .LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 2
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	bneq r10, r5, .LBB0_13
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
	shuffle_batch r1, r4, r5, 1
	unlock zero
	xsignal r18, 0
	storeli.w r3, -44(r30)                  # 4-byte Folded Spill
	addli r3, zero, 4
	xsignal r3, 0
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	sub.s r2, r2, r9
	.loc	1 98 13 is_stmt 1               # parallel-rne.mlir:98:13
	slli r4, r14, 15
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	slli r9, r14, 13
	.loc	1 104 7 is_stmt 1               # parallel-rne.mlir:104:7
	store.d r[7:8], -32(r30)                # 8-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.s r2, r2, r16
	addli r16, zero, 6
	storeli.w r2, -64(r30)                  # 4-byte Folded Spill
	zext_int2long r[2:3], r2
	sll.d r[5:6], r[2:3], r15
	.loc	1 100 13 is_stmt 1              # parallel-rne.mlir:100:13
	lui r2, 15
	.loc	1 104 7                         # parallel-rne.mlir:104:7
	sll.d r[5:6], r[5:6], r13
	.loc	1 100 13                        # parallel-rne.mlir:100:13
	add.s r2, r4, r2
	store.d r[5:6], -16(r30)                # 8-byte Folded Spill
	.loc	1 104 7                         # parallel-rne.mlir:104:7
	bneq r10, r16, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli.d r[26:27], r[5:6], 0
	.loc	1 104 7                         # parallel-rne.mlir:104:7
	load.d r[5:6], 8(r30)
	xwait r15, 0
	loadli.w r1,  -20(r30)                  # 4-byte Folded Reload
	addli r3, zero, 4
	addli r14, zero, 2
	add.ul r[5:6], r[5:6], r[26:27]
	blt.s r3, r1, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 5
	.loc	1 104 7                         # parallel-rne.mlir:104:7
	addli r20, zero, 9
	addli r24, zero, 128
	lock zero, r1
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 10
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 12
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 13
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 14
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 15
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 16
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 17
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 18
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 19
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 20
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 21
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 22
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 23
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 24
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 25
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 26
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 27
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 28
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 29
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 30
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 31
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 64
	dma_cfg r13, r13, zero, 0
	dma_cfg r13, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r20, 3
	dma_cfg r24, zero, r3, 4
	addli r24, zero, 512
	dma_cfg r24, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r1
.LBB0_17:                               # %.thread15
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r1, 15
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	addli r7, zero, 64
	.loc	1 104 7                         # parallel-rne.mlir:104:7
	lock zero, r3
	ori r1, r1, 64
	dma_cfg r13, r13, zero, 0
	dma_cfg zero, r6, zero, 2
	add.s r1, r4, r1
	addli r4, zero, 9
	dma_cfg r1, r5, r7, 3
	addli r1, zero, 128
	addli r6, zero, 512
	addli r5, zero, 128
	dma_cfg r1, r7, r3, 4
	addli r1, zero, 256
	dma_cfg r6, r1, r7, 5
	addli r1, zero, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	lock zero, r1
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r11, 10
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
	dma_cfg r13, r13, zero, 0
	dma_cfg r13, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r7, 3
	dma_cfg r5, zero, r3, 4
	dma_cfg r6, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r1
	xsignal r16, 0
	load.d r[5:6], -16(r30)                 # 8-byte Folded Reload
	.loc	1 106 7 is_stmt 1               # parallel-rne.mlir:106:7
	j .LBB0_27
.LBB0_18:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r13, zero, 4
	addli r3, zero, 2
	.loc	1 105 7 is_stmt 1               # parallel-rne.mlir:105:7
	beq r10, r13, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r10, r15, .LBB0_24
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 9
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	xwait r16, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 64
	ds_cfg r3, zero, 0
	addli r3, zero, 128
	ds_cfg r3, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r3, zero, 13
	shuffle_coa r4, r2, r1, 2
	addli r1, zero, 1
	unlock zero
	xsignal r15, 0
	storeli.w r1, -36(r30)                  # 4-byte Folded Spill
	xsignal r11, 0
	j .LBB0_27
.LBB0_21:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	xwait r13, 0
	xwait r11, 0
	addli r5, zero, 0
	addli r2, zero, 1
	addli r3, zero, 1
	addli r11, zero, 16
	addli r14, zero, 64
	xwait r17, 0
.LBB0_22:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r6, r5, 14
	slli r5, r5, 8
	lock zero, r2
	mm_cfg r14, r14, r11, 0
	or r6, r6, r4
	or r5, r5, r9
	mm_cfg r13, r13, r2, 2
	mm r5, r1, r6, 8
	andi r6, r3, 1
	addli r5, zero, 1
	addli r3, zero, 0
	unlock r2
	bneq r6, zero, .LBB0_22
# %bb.23:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 5
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	addli r1, zero, 1
	storeli.w r1, -40(r30)                  # 4-byte Folded Spill
	addli r1, zero, 10
	xsignal r1, 0
	load.d r[5:6], -16(r30)                 # 8-byte Folded Reload
	j .LBB0_27
.LBB0_24:                               # %.thread16
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 113 7                         # parallel-rne.mlir:113:7
	bneq r10, r18, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	xwait r1, 0
	.loc	1 114 7                         # parallel-rne.mlir:114:7
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
.LBB0_27:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 111 13 is_stmt 1              # parallel-rne.mlir:111:13
	lui r1, 55
	.loc	1 116 7                         # parallel-rne.mlir:116:7
	xfence
	.loc	1 117 7                         # parallel-rne.mlir:117:7
	mfence { lm, sm, gm }
	.loc	1 111 13                        # parallel-rne.mlir:111:13
	add.s r14, r9, r1
	.loc	1 118 7                         # parallel-rne.mlir:118:7
	addli r1, zero, 255
	csr_set csr5, r1
	addli r1, zero, 128
	sync_core
	zext_int2long r[16:17], r1
	.loc	1 119 7                         # parallel-rne.mlir:119:7
	beq r10, zero, .LBB0_34
# %bb.28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	addli r1, zero, 1
	beq r10, r1, .LBB0_58
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_82
.LBB0_30:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	beq r10, r18, .LBB0_106
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 235 7                         # parallel-rne.mlir:235:7
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_130
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 264 7                         # parallel-rne.mlir:264:7
	addli r1, zero, 5
	beq r10, r1, .LBB0_154
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 293 7                         # parallel-rne.mlir:293:7
	addli r1, zero, 6
	beq r10, r1, .LBB0_178
	j .LBB0_202
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 119 7                         # parallel-rne.mlir:119:7
	xfence
	zext_int2long r[6:7], zero
	addli r24, zero, 1
	mfence { lm, sm, gm }
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_36
.LBB0_35:                               # %middle.block98
                                        #   in Loop: Header=BB0_36 Depth=2
	.loc	1 127 9                         # parallel-rne.mlir:127:9
	andi r1, r24, 1
	addli.d r[6:7], r[16:17], 0
	addli r24, zero, 0
	beq r1, zero, .LBB0_57
.LBB0_36:                               # %vector.ph93
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_38 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	load.d r[10:11], -8(r30)                # 8-byte Folded Reload
	j .LBB0_38
.LBB0_37:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 128 11 is_stmt 1              # parallel-rne.mlir:128:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	add.s r2, r14, r4
	.loc	1 128 11                        # parallel-rne.mlir:128:11
	setneq.d r1, r[10:11], r[16:17]
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	stores.w r8, 12(r2)
	stores.w r28, 8(r2)
	stores.w r27, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 128 11                        # parallel-rne.mlir:128:11
	beq r1, zero, .LBB0_35
.LBB0_38:                               # %vector.body94
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 129 19                        # parallel-rne.mlir:129:19
	add.ul r[1:2], r[10:11], r[6:7]
	slli r4, r1, 2
	add.s r1, r9, r4
	loads.w r5, 12(r1)
	loads.w r20, 0(r1)
	loads.w r15, 4(r1)
	loads.w r26, 8(r1)
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	and r18, r5, r22
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	setlt.u r1, r19, r18
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r1, zero, .LBB0_40
# %bb.39:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r5, 0
	j .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_38 Depth=3
	or r8, r5, r12
.LBB0_41:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	and r3, r26, r22
	setlt.u r1, r19, r3
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r1, zero, .LBB0_43
# %bb.42:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r26, 0
	j .LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_38 Depth=3
	or r28, r26, r12
.LBB0_44:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	and r1, r15, r22
	setlt.u r2, r19, r1
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r2, zero, .LBB0_46
# %bb.45:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r15, 0
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_38 Depth=3
	or r27, r15, r12
.LBB0_47:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	and r2, r20, r22
	setlt.u r13, r19, r2
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r13, zero, .LBB0_49
# %bb.48:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r20, 0
	.loc	1 140 19 is_stmt 1              # parallel-rne.mlir:140:19
	setlt.u r2, r25, r2
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	beq r2, zero, .LBB0_50
	j .LBB0_51
.LBB0_49:                               #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r20, r12
	.loc	1 140 19 is_stmt 1              # parallel-rne.mlir:140:19
	setlt.u r2, r25, r2
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r2, zero, .LBB0_51
.LBB0_50:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r20, 16
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r23
	and r13, r2, r21
.LBB0_51:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	setlt.u r1, r25, r1
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	beq r1, zero, .LBB0_54
# %bb.52:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r25, r3
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	beq r1, zero, .LBB0_55
.LBB0_53:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r25, r18
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r1, zero, .LBB0_37
	j .LBB0_56
.LBB0_54:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r23
	and r27, r1, r21
	setlt.u r1, r25, r3
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r1, zero, .LBB0_53
.LBB0_55:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r23
	and r28, r1, r21
	setlt.u r1, r25, r18
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r1, zero, .LBB0_37
.LBB0_56:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r5, 16
	andi r1, r1, 1
	add.s r1, r5, r1
	add.s r1, r1, r23
	and r8, r1, r21
	j .LBB0_37
.LBB0_57:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 119 7 is_stmt 1               # parallel-rne.mlir:119:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r18, zero, 3
	load.d r[5:6], -16(r30)                 # 8-byte Folded Reload
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	addli r1, zero, 1
	bneq r10, r1, .LBB0_29
.LBB0_58:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 256
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_60
.LBB0_59:                               # %middle.block89
                                        #   in Loop: Header=BB0_60 Depth=2
	.loc	1 156 9 is_stmt 1               # parallel-rne.mlir:156:9
	andi r2, r1, 1
	addli r1, zero, 384
	zext_int2long r[10:11], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_81
.LBB0_60:                               # %vector.ph84
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_62 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[6:7], zero
	j .LBB0_62
.LBB0_61:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 157 11 is_stmt 1              # parallel-rne.mlir:157:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 172 13                        # parallel-rne.mlir:172:13
	add.s r2, r14, r2
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	setneq.d r3, r[6:7], r[16:17]
	.loc	1 172 13                        # parallel-rne.mlir:172:13
	stores.w r5, 12(r2)
	stores.w r18, 8(r2)
	stores.w r15, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	beq r3, zero, .LBB0_59
.LBB0_62:                               # %vector.body85
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_60 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	add.ul r[2:3], r[6:7], r[10:11]
	slli r2, r2, 2
	add.s r3, r9, r2
	loads.w r4, 12(r3)
	loads.w r13, 0(r3)
	loads.w r26, 4(r3)
	loads.w r24, 8(r3)
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	and r8, r4, r22
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	setlt.u r3, r19, r8
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r3, zero, .LBB0_64
# %bb.63:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r4, 0
	j .LBB0_65
.LBB0_64:                               #   in Loop: Header=BB0_62 Depth=3
	or r5, r4, r12
.LBB0_65:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	and r3, r24, r22
	setlt.u r15, r19, r3
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r15, zero, .LBB0_67
# %bb.66:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r24, 0
	j .LBB0_68
.LBB0_67:                               #   in Loop: Header=BB0_62 Depth=3
	or r18, r24, r12
.LBB0_68:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	and r27, r26, r22
	setlt.u r15, r19, r27
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r15, zero, .LBB0_70
# %bb.69:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r26, 0
	j .LBB0_71
.LBB0_70:                               #   in Loop: Header=BB0_62 Depth=3
	or r15, r26, r12
.LBB0_71:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	and r28, r13, r22
	setlt.u r20, r19, r28
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r20, zero, .LBB0_73
# %bb.72:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	.loc	1 169 19 is_stmt 1              # parallel-rne.mlir:169:19
	setlt.u r28, r25, r28
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	beq r28, zero, .LBB0_74
	j .LBB0_75
.LBB0_73:                               #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r13, r12
	.loc	1 169 19 is_stmt 1              # parallel-rne.mlir:169:19
	setlt.u r28, r25, r28
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r28, zero, .LBB0_75
.LBB0_74:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r13, 16
	andi r20, r20, 1
	add.s r13, r13, r20
	add.s r13, r13, r23
	and r20, r13, r21
.LBB0_75:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	setlt.u r13, r25, r27
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	beq r13, zero, .LBB0_78
# %bb.76:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	beq r3, zero, .LBB0_79
.LBB0_77:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r8
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r3, zero, .LBB0_61
	j .LBB0_80
.LBB0_78:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r26, 16
	andi r13, r13, 1
	add.s r13, r26, r13
	add.s r13, r13, r23
	and r15, r13, r21
	setlt.u r3, r25, r3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r3, zero, .LBB0_77
.LBB0_79:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r24, 16
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r23
	and r18, r3, r21
	setlt.u r3, r25, r8
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r3, zero, .LBB0_61
.LBB0_80:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	add.s r3, r3, r23
	and r5, r3, r21
	j .LBB0_61
.LBB0_81:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 148 7 is_stmt 1               # parallel-rne.mlir:148:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r18, zero, 3
	load.d r[5:6], -16(r30)                 # 8-byte Folded Reload
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_30
.LBB0_82:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 512
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_84
.LBB0_83:                               # %middle.block80
                                        #   in Loop: Header=BB0_84 Depth=2
	.loc	1 185 9 is_stmt 1               # parallel-rne.mlir:185:9
	andi r2, r1, 1
	addli r1, zero, 640
	zext_int2long r[10:11], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_105
.LBB0_84:                               # %vector.ph75
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_86 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[6:7], zero
	j .LBB0_86
.LBB0_85:                               # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 186 11 is_stmt 1              # parallel-rne.mlir:186:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 201 13                        # parallel-rne.mlir:201:13
	add.s r2, r14, r2
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	setneq.d r3, r[6:7], r[16:17]
	.loc	1 201 13                        # parallel-rne.mlir:201:13
	stores.w r5, 12(r2)
	stores.w r18, 8(r2)
	stores.w r15, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	beq r3, zero, .LBB0_83
.LBB0_86:                               # %vector.body76
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_84 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	add.ul r[2:3], r[6:7], r[10:11]
	slli r2, r2, 2
	add.s r3, r9, r2
	loads.w r4, 12(r3)
	loads.w r13, 0(r3)
	loads.w r26, 4(r3)
	loads.w r24, 8(r3)
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	and r8, r4, r22
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	setlt.u r3, r19, r8
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r3, zero, .LBB0_88
# %bb.87:                               # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r4, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_86 Depth=3
	or r5, r4, r12
.LBB0_89:                               # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	and r3, r24, r22
	setlt.u r15, r19, r3
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r15, zero, .LBB0_91
# %bb.90:                               # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r24, 0
	j .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_86 Depth=3
	or r18, r24, r12
.LBB0_92:                               # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	and r27, r26, r22
	setlt.u r15, r19, r27
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r15, zero, .LBB0_94
# %bb.93:                               # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r26, 0
	j .LBB0_95
.LBB0_94:                               #   in Loop: Header=BB0_86 Depth=3
	or r15, r26, r12
.LBB0_95:                               # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	and r28, r13, r22
	setlt.u r20, r19, r28
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r20, zero, .LBB0_97
# %bb.96:                               # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	.loc	1 198 19 is_stmt 1              # parallel-rne.mlir:198:19
	setlt.u r28, r25, r28
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	beq r28, zero, .LBB0_98
	j .LBB0_99
.LBB0_97:                               #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r13, r12
	.loc	1 198 19 is_stmt 1              # parallel-rne.mlir:198:19
	setlt.u r28, r25, r28
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r28, zero, .LBB0_99
.LBB0_98:                               # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r13, 16
	andi r20, r20, 1
	add.s r13, r13, r20
	add.s r13, r13, r23
	and r20, r13, r21
.LBB0_99:                               # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	setlt.u r13, r25, r27
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	beq r13, zero, .LBB0_102
# %bb.100:                              # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r3
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	beq r3, zero, .LBB0_103
.LBB0_101:                              # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r8
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r3, zero, .LBB0_85
	j .LBB0_104
.LBB0_102:                              # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r26, 16
	andi r13, r13, 1
	add.s r13, r26, r13
	add.s r13, r13, r23
	and r15, r13, r21
	setlt.u r3, r25, r3
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r3, zero, .LBB0_101
.LBB0_103:                              # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r24, 16
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r23
	and r18, r3, r21
	setlt.u r3, r25, r8
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r3, zero, .LBB0_85
.LBB0_104:                              # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	add.s r3, r3, r23
	and r5, r3, r21
	j .LBB0_85
.LBB0_105:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 177 7 is_stmt 1               # parallel-rne.mlir:177:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r18, zero, 3
	load.d r[5:6], -16(r30)                 # 8-byte Folded Reload
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	bneq r10, r18, .LBB0_31
.LBB0_106:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 768
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_108
.LBB0_107:                              # %middle.block71
                                        #   in Loop: Header=BB0_108 Depth=2
	.loc	1 214 9 is_stmt 1               # parallel-rne.mlir:214:9
	andi r2, r1, 1
	addli r1, zero, 896
	zext_int2long r[10:11], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_129
.LBB0_108:                              # %vector.ph66
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_110 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[6:7], zero
	j .LBB0_110
.LBB0_109:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 215 11 is_stmt 1              # parallel-rne.mlir:215:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 230 13                        # parallel-rne.mlir:230:13
	add.s r2, r14, r2
	.loc	1 215 11                        # parallel-rne.mlir:215:11
	setneq.d r3, r[6:7], r[16:17]
	.loc	1 230 13                        # parallel-rne.mlir:230:13
	stores.w r5, 12(r2)
	stores.w r18, 8(r2)
	stores.w r15, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 215 11                        # parallel-rne.mlir:215:11
	beq r3, zero, .LBB0_107
.LBB0_110:                              # %vector.body67
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_108 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	add.ul r[2:3], r[6:7], r[10:11]
	slli r2, r2, 2
	add.s r3, r9, r2
	loads.w r4, 12(r3)
	loads.w r13, 0(r3)
	loads.w r26, 4(r3)
	loads.w r24, 8(r3)
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	and r8, r4, r22
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	setlt.u r3, r19, r8
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r3, zero, .LBB0_112
# %bb.111:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r4, 0
	j .LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_110 Depth=3
	or r5, r4, r12
.LBB0_113:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	and r3, r24, r22
	setlt.u r15, r19, r3
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r15, zero, .LBB0_115
# %bb.114:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r24, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_110 Depth=3
	or r18, r24, r12
.LBB0_116:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	and r27, r26, r22
	setlt.u r15, r19, r27
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r15, zero, .LBB0_118
# %bb.117:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r26, 0
	j .LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_110 Depth=3
	or r15, r26, r12
.LBB0_119:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	and r28, r13, r22
	setlt.u r20, r19, r28
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r20, zero, .LBB0_121
# %bb.120:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	.loc	1 227 19 is_stmt 1              # parallel-rne.mlir:227:19
	setlt.u r28, r25, r28
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	beq r28, zero, .LBB0_122
	j .LBB0_123
.LBB0_121:                              #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r13, r12
	.loc	1 227 19 is_stmt 1              # parallel-rne.mlir:227:19
	setlt.u r28, r25, r28
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r28, zero, .LBB0_123
.LBB0_122:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r13, 16
	andi r20, r20, 1
	add.s r13, r13, r20
	add.s r13, r13, r23
	and r20, r13, r21
.LBB0_123:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	setlt.u r13, r25, r27
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	beq r13, zero, .LBB0_126
# %bb.124:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	beq r3, zero, .LBB0_127
.LBB0_125:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r8
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r3, zero, .LBB0_109
	j .LBB0_128
.LBB0_126:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r26, 16
	andi r13, r13, 1
	add.s r13, r26, r13
	add.s r13, r13, r23
	and r15, r13, r21
	setlt.u r3, r25, r3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r3, zero, .LBB0_125
.LBB0_127:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r24, 16
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r23
	and r18, r3, r21
	setlt.u r3, r25, r8
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r3, zero, .LBB0_109
.LBB0_128:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	add.s r3, r3, r23
	and r5, r3, r21
	j .LBB0_109
.LBB0_129:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 206 7 is_stmt 1               # parallel-rne.mlir:206:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r18, zero, 3
	load.d r[5:6], -16(r30)                 # 8-byte Folded Reload
	.loc	1 235 7                         # parallel-rne.mlir:235:7
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_32
.LBB0_130:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 1024
	.loc	1 235 7                         # parallel-rne.mlir:235:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_132
.LBB0_131:                              # %middle.block62
                                        #   in Loop: Header=BB0_132 Depth=2
	.loc	1 243 9 is_stmt 1               # parallel-rne.mlir:243:9
	andi r2, r1, 1
	addli r1, zero, 1152
	zext_int2long r[10:11], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_153
.LBB0_132:                              # %vector.ph57
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_134 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[6:7], zero
	j .LBB0_134
.LBB0_133:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 244 11 is_stmt 1              # parallel-rne.mlir:244:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 259 13                        # parallel-rne.mlir:259:13
	add.s r2, r14, r2
	.loc	1 244 11                        # parallel-rne.mlir:244:11
	setneq.d r3, r[6:7], r[16:17]
	.loc	1 259 13                        # parallel-rne.mlir:259:13
	stores.w r5, 12(r2)
	stores.w r18, 8(r2)
	stores.w r15, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 244 11                        # parallel-rne.mlir:244:11
	beq r3, zero, .LBB0_131
.LBB0_134:                              # %vector.body58
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_132 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	add.ul r[2:3], r[6:7], r[10:11]
	slli r2, r2, 2
	add.s r3, r9, r2
	loads.w r4, 12(r3)
	loads.w r13, 0(r3)
	loads.w r26, 4(r3)
	loads.w r24, 8(r3)
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	and r8, r4, r22
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	setlt.u r3, r19, r8
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r3, zero, .LBB0_136
# %bb.135:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r4, 0
	j .LBB0_137
.LBB0_136:                              #   in Loop: Header=BB0_134 Depth=3
	or r5, r4, r12
.LBB0_137:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	and r3, r24, r22
	setlt.u r15, r19, r3
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r15, zero, .LBB0_139
# %bb.138:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r24, 0
	j .LBB0_140
.LBB0_139:                              #   in Loop: Header=BB0_134 Depth=3
	or r18, r24, r12
.LBB0_140:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	and r27, r26, r22
	setlt.u r15, r19, r27
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r15, zero, .LBB0_142
# %bb.141:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r26, 0
	j .LBB0_143
.LBB0_142:                              #   in Loop: Header=BB0_134 Depth=3
	or r15, r26, r12
.LBB0_143:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	and r28, r13, r22
	setlt.u r20, r19, r28
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r20, zero, .LBB0_145
# %bb.144:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	.loc	1 256 19 is_stmt 1              # parallel-rne.mlir:256:19
	setlt.u r28, r25, r28
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	beq r28, zero, .LBB0_146
	j .LBB0_147
.LBB0_145:                              #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r13, r12
	.loc	1 256 19 is_stmt 1              # parallel-rne.mlir:256:19
	setlt.u r28, r25, r28
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	bneq r28, zero, .LBB0_147
.LBB0_146:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r13, 16
	andi r20, r20, 1
	add.s r13, r13, r20
	add.s r13, r13, r23
	and r20, r13, r21
.LBB0_147:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	setlt.u r13, r25, r27
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	beq r13, zero, .LBB0_150
# %bb.148:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	beq r3, zero, .LBB0_151
.LBB0_149:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r8
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	bneq r3, zero, .LBB0_133
	j .LBB0_152
.LBB0_150:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r26, 16
	andi r13, r13, 1
	add.s r13, r26, r13
	add.s r13, r13, r23
	and r15, r13, r21
	setlt.u r3, r25, r3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	bneq r3, zero, .LBB0_149
.LBB0_151:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r24, 16
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r23
	and r18, r3, r21
	setlt.u r3, r25, r8
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	bneq r3, zero, .LBB0_133
.LBB0_152:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	add.s r3, r3, r23
	and r5, r3, r21
	j .LBB0_133
.LBB0_153:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 235 7 is_stmt 1               # parallel-rne.mlir:235:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r18, zero, 3
	load.d r[5:6], -16(r30)                 # 8-byte Folded Reload
	.loc	1 264 7                         # parallel-rne.mlir:264:7
	addli r1, zero, 5
	bneq r10, r1, .LBB0_33
.LBB0_154:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 1280
	.loc	1 264 7                         # parallel-rne.mlir:264:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_156
.LBB0_155:                              # %middle.block53
                                        #   in Loop: Header=BB0_156 Depth=2
	.loc	1 272 9 is_stmt 1               # parallel-rne.mlir:272:9
	andi r2, r1, 1
	addli r1, zero, 1408
	zext_int2long r[10:11], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_177
.LBB0_156:                              # %vector.ph48
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_158 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[6:7], zero
	j .LBB0_158
.LBB0_157:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 273 11 is_stmt 1              # parallel-rne.mlir:273:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 288 13                        # parallel-rne.mlir:288:13
	add.s r2, r14, r2
	.loc	1 273 11                        # parallel-rne.mlir:273:11
	setneq.d r3, r[6:7], r[16:17]
	.loc	1 288 13                        # parallel-rne.mlir:288:13
	stores.w r5, 12(r2)
	stores.w r18, 8(r2)
	stores.w r15, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 273 11                        # parallel-rne.mlir:273:11
	beq r3, zero, .LBB0_155
.LBB0_158:                              # %vector.body49
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	add.ul r[2:3], r[6:7], r[10:11]
	slli r2, r2, 2
	add.s r3, r9, r2
	loads.w r4, 12(r3)
	loads.w r13, 0(r3)
	loads.w r26, 4(r3)
	loads.w r24, 8(r3)
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	and r8, r4, r22
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	setlt.u r3, r19, r8
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r3, zero, .LBB0_160
# %bb.159:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r4, 0
	j .LBB0_161
.LBB0_160:                              #   in Loop: Header=BB0_158 Depth=3
	or r5, r4, r12
.LBB0_161:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	and r3, r24, r22
	setlt.u r15, r19, r3
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r15, zero, .LBB0_163
# %bb.162:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r24, 0
	j .LBB0_164
.LBB0_163:                              #   in Loop: Header=BB0_158 Depth=3
	or r18, r24, r12
.LBB0_164:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	and r27, r26, r22
	setlt.u r15, r19, r27
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r15, zero, .LBB0_166
# %bb.165:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r26, 0
	j .LBB0_167
.LBB0_166:                              #   in Loop: Header=BB0_158 Depth=3
	or r15, r26, r12
.LBB0_167:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	and r28, r13, r22
	setlt.u r20, r19, r28
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r20, zero, .LBB0_169
# %bb.168:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	.loc	1 285 19 is_stmt 1              # parallel-rne.mlir:285:19
	setlt.u r28, r25, r28
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	beq r28, zero, .LBB0_170
	j .LBB0_171
.LBB0_169:                              #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r13, r12
	.loc	1 285 19 is_stmt 1              # parallel-rne.mlir:285:19
	setlt.u r28, r25, r28
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r28, zero, .LBB0_171
.LBB0_170:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r13, 16
	andi r20, r20, 1
	add.s r13, r13, r20
	add.s r13, r13, r23
	and r20, r13, r21
.LBB0_171:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	setlt.u r13, r25, r27
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	beq r13, zero, .LBB0_174
# %bb.172:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r3
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	beq r3, zero, .LBB0_175
.LBB0_173:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r8
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r3, zero, .LBB0_157
	j .LBB0_176
.LBB0_174:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r26, 16
	andi r13, r13, 1
	add.s r13, r26, r13
	add.s r13, r13, r23
	and r15, r13, r21
	setlt.u r3, r25, r3
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r3, zero, .LBB0_173
.LBB0_175:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r24, 16
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r23
	and r18, r3, r21
	setlt.u r3, r25, r8
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r3, zero, .LBB0_157
.LBB0_176:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	add.s r3, r3, r23
	and r5, r3, r21
	j .LBB0_157
.LBB0_177:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 264 7 is_stmt 1               # parallel-rne.mlir:264:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r18, zero, 3
	load.d r[5:6], -16(r30)                 # 8-byte Folded Reload
	.loc	1 293 7                         # parallel-rne.mlir:293:7
	addli r1, zero, 6
	bneq r10, r1, .LBB0_202
.LBB0_178:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 1536
	.loc	1 293 7                         # parallel-rne.mlir:293:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_180
.LBB0_179:                              # %middle.block44
                                        #   in Loop: Header=BB0_180 Depth=2
	.loc	1 301 9 is_stmt 1               # parallel-rne.mlir:301:9
	andi r2, r1, 1
	addli r1, zero, 1664
	zext_int2long r[10:11], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_201
.LBB0_180:                              # %vector.ph39
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_182 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[6:7], zero
	j .LBB0_182
.LBB0_181:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 302 11 is_stmt 1              # parallel-rne.mlir:302:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 317 13                        # parallel-rne.mlir:317:13
	add.s r2, r14, r2
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	setneq.d r3, r[6:7], r[16:17]
	.loc	1 317 13                        # parallel-rne.mlir:317:13
	stores.w r5, 12(r2)
	stores.w r18, 8(r2)
	stores.w r15, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	beq r3, zero, .LBB0_179
.LBB0_182:                              # %vector.body40
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_180 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	add.ul r[2:3], r[6:7], r[10:11]
	slli r2, r2, 2
	add.s r3, r9, r2
	loads.w r4, 12(r3)
	loads.w r13, 0(r3)
	loads.w r26, 4(r3)
	loads.w r24, 8(r3)
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	and r8, r4, r22
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	setlt.u r3, r19, r8
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r3, zero, .LBB0_184
# %bb.183:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r4, 0
	j .LBB0_185
.LBB0_184:                              #   in Loop: Header=BB0_182 Depth=3
	or r5, r4, r12
.LBB0_185:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	and r3, r24, r22
	setlt.u r15, r19, r3
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r15, zero, .LBB0_187
# %bb.186:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r24, 0
	j .LBB0_188
.LBB0_187:                              #   in Loop: Header=BB0_182 Depth=3
	or r18, r24, r12
.LBB0_188:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	and r27, r26, r22
	setlt.u r15, r19, r27
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r15, zero, .LBB0_190
# %bb.189:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r26, 0
	j .LBB0_191
.LBB0_190:                              #   in Loop: Header=BB0_182 Depth=3
	or r15, r26, r12
.LBB0_191:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	and r28, r13, r22
	setlt.u r20, r19, r28
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r20, zero, .LBB0_193
# %bb.192:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	.loc	1 314 19 is_stmt 1              # parallel-rne.mlir:314:19
	setlt.u r28, r25, r28
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	beq r28, zero, .LBB0_194
	j .LBB0_195
.LBB0_193:                              #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r13, r12
	.loc	1 314 19 is_stmt 1              # parallel-rne.mlir:314:19
	setlt.u r28, r25, r28
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r28, zero, .LBB0_195
.LBB0_194:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r13, 16
	andi r20, r20, 1
	add.s r13, r13, r20
	add.s r13, r13, r23
	and r20, r13, r21
.LBB0_195:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	setlt.u r13, r25, r27
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	beq r13, zero, .LBB0_198
# %bb.196:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r3
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	beq r3, zero, .LBB0_199
.LBB0_197:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r8
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r3, zero, .LBB0_181
	j .LBB0_200
.LBB0_198:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r26, 16
	andi r13, r13, 1
	add.s r13, r26, r13
	add.s r13, r13, r23
	and r15, r13, r21
	setlt.u r3, r25, r3
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r3, zero, .LBB0_197
.LBB0_199:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r24, 16
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r23
	and r18, r3, r21
	setlt.u r3, r25, r8
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r3, zero, .LBB0_181
.LBB0_200:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	add.s r3, r3, r23
	and r5, r3, r21
	j .LBB0_181
.LBB0_201:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 293 7 is_stmt 1               # parallel-rne.mlir:293:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r18, zero, 3
	load.d r[5:6], -16(r30)                 # 8-byte Folded Reload
.LBB0_202:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	zext_int2long r[1:2], zero
	.loc	1 322 7 is_stmt 1               # parallel-rne.mlir:322:7
	store.d r[1:2], -8(r30)                 # 8-byte Folded Spill
	loadli.w r1,  -36(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_227
# %bb.203:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 1792
	.loc	1 322 7                         # parallel-rne.mlir:322:7
	xfence
	addli r11, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_205
.LBB0_204:                              # %middle.block
                                        #   in Loop: Header=BB0_205 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 1920
	.loc	1 330 9 is_stmt 1               # parallel-rne.mlir:330:9
	andi r1, r11, 1
	addli r11, zero, 0
	zext_int2long r[6:7], r2
	beq r1, zero, .LBB0_226
.LBB0_205:                              # %vector.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_207 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	load.d r[1:2], -8(r30)                  # 8-byte Folded Reload
	j .LBB0_207
.LBB0_206:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 331 11 is_stmt 1              # parallel-rne.mlir:331:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 346 13                        # parallel-rne.mlir:346:13
	add.s r4, r14, r10
	.loc	1 331 11                        # parallel-rne.mlir:331:11
	setneq.d r3, r[1:2], r[16:17]
	.loc	1 346 13                        # parallel-rne.mlir:346:13
	stores.w r8, 12(r4)
	stores.w r26, 8(r4)
	stores.w r15, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 331 11                        # parallel-rne.mlir:331:11
	beq r3, zero, .LBB0_204
.LBB0_207:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_205 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	add.ul r[3:4], r[1:2], r[6:7]
	slli r10, r3, 2
	add.s r3, r9, r10
	loads.w r24, 12(r3)
	loads.w r13, 0(r3)
	loads.w r27, 4(r3)
	loads.w r28, 8(r3)
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	and r18, r24, r22
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	setlt.u r3, r19, r18
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r3, zero, .LBB0_209
# %bb.208:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r24, 0
	j .LBB0_210
.LBB0_209:                              #   in Loop: Header=BB0_207 Depth=3
	or r8, r24, r12
.LBB0_210:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	and r3, r28, r22
	setlt.u r4, r19, r3
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r4, zero, .LBB0_212
# %bb.211:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r28, 0
	j .LBB0_213
.LBB0_212:                              #   in Loop: Header=BB0_207 Depth=3
	or r26, r28, r12
.LBB0_213:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	and r4, r27, r22
	setlt.u r5, r19, r4
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r5, zero, .LBB0_215
# %bb.214:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r27, 0
	j .LBB0_216
.LBB0_215:                              #   in Loop: Header=BB0_207 Depth=3
	or r15, r27, r12
.LBB0_216:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	and r5, r13, r22
	setlt.u r20, r19, r5
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r20, zero, .LBB0_218
# %bb.217:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	.loc	1 343 19 is_stmt 1              # parallel-rne.mlir:343:19
	setlt.u r5, r25, r5
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	beq r5, zero, .LBB0_219
	j .LBB0_220
.LBB0_218:                              #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r13, r12
	.loc	1 343 19 is_stmt 1              # parallel-rne.mlir:343:19
	setlt.u r5, r25, r5
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r5, zero, .LBB0_220
.LBB0_219:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r13, 16
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r23
	and r20, r5, r21
.LBB0_220:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	setlt.u r4, r25, r4
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	beq r4, zero, .LBB0_223
# %bb.221:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r3
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	beq r3, zero, .LBB0_224
.LBB0_222:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r25, r18
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r3, zero, .LBB0_206
	j .LBB0_225
.LBB0_223:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r27, 16
	andi r4, r4, 1
	add.s r4, r27, r4
	add.s r4, r4, r23
	and r15, r4, r21
	setlt.u r3, r25, r3
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r3, zero, .LBB0_222
.LBB0_224:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r28, 16
	andi r3, r3, 1
	add.s r3, r28, r3
	add.s r3, r3, r23
	and r26, r3, r21
	setlt.u r3, r25, r18
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r3, zero, .LBB0_206
.LBB0_225:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r24, 16
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r23
	and r8, r3, r21
	j .LBB0_206
.LBB0_226:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 322 7 is_stmt 1               # parallel-rne.mlir:322:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r18, zero, 3
	load.d r[5:6], -16(r30)                 # 8-byte Folded Reload
.LBB0_227:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 351 7                         # parallel-rne.mlir:351:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 352 7                         # parallel-rne.mlir:352:7
	beq r10, r18, .LBB0_5
# %bb.228:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r14,  -20(r30)                 # 4-byte Folded Reload
	.loc	1 369 7 is_stmt 1               # parallel-rne.mlir:369:7
	bneq r10, zero, .LBB0_6
# %bb.229:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -60(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -64(r30)                  # 4-byte Folded Reload
	addli.d r[26:27], r[5:6], 0
	.loc	1 356 13 is_stmt 1              # parallel-rne.mlir:356:13
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	addli r11, zero, 12
	addli r15, r14, 0
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	load.d r[13:14], 16(r30)
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
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	addli.d r[5:6], r[5:6], 16
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	sub.sl r[1:2], r[7:8], r[1:2]
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	load.d r[7:8], -56(r30)                 # 8-byte Folded Reload
	xwait r11, 0
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	max.sl r[5:6], r[5:6], r[3:4]
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	srli r1, r1, 5
	addli r2, zero, 64
	sll.d r[7:8], r[7:8], r11
	addli r11, zero, 1
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	sub.sl r[3:4], r[5:6], r[3:4]
	addli r5, zero, 16
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	add.ul r[7:8], r[13:14], r[7:8]
	addli r14, r15, 0
	zext_int2long r[5:6], r5
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	min.sl r[3:4], r[3:4], r[5:6]
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	add.ul r[5:6], r[7:8], r[26:27]
	lui r7, 55
	addli r8, zero, 5
	ori r7, r7, 64
	lock zero, r8
	dma_cfg r11, r11, zero, 0
	dma_cfg zero, r11, zero, 1
	add.s r7, r9, r7
	dma_cfg r6, zero, zero, 2
	dma_cfg r5, r7, r2, 3
	addli r5, zero, 128
	dma_cfg r2, r5, r1, 4
	addli r1, zero, 256
	addli r2, zero, 512
	dma_cfg r1, r2, r3, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	xsignal r1, 0
	j .LBB0_6
.LBB0_230:                              # %._crit_edge
	.loc	1 371 5                         # parallel-rne.mlir:371:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_232
# %bb.231:
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
.LBB0_232:
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-5hfueegw" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
