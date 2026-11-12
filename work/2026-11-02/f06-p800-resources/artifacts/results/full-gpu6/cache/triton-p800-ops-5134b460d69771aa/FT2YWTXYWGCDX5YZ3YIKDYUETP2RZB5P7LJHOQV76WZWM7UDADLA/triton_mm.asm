	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-znctp57n" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -144
	addli r1, zero, 1
.Ltmp0:
	.loc	1 27 5 prologue_end             # parallel-rne.mlir:27:5
	core_id r10
	addli r30, sp, 80
	xsignal_mode_cfg r1
	beq r10, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 27 5                          # parallel-rne.mlir:27:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 27 5                          # parallel-rne.mlir:27:5
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
	addli r2, zero, 13
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 9
	addli r2, zero, 7
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
	.loc	1 29 10 is_stmt 1               # parallel-rne.mlir:29:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 30 10                         # parallel-rne.mlir:30:10
	mul.s r1, r2, r1
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 31 10                         # parallel-rne.mlir:31:10
	mul.s r3, r1, r3
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	addli r2, r2, -1
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	div.s r2, r2, r4
	.loc	1 28 10                         # parallel-rne.mlir:28:10
	load_param_i r4, 0
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	mul.s r1, r2, r4
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	fmac.s r2, r2, r4
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	min.s r2, r2, r3
	.loc	1 46 5                          # parallel-rne.mlir:46:5
	ble.s r2, r1, .LBB0_271
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	addli r9, zero, 3
	addli r12, zero, 16
	addli r28, zero, 1
	addli r16, zero, 8
	addli r7, zero, 6
	addli r8, zero, 11
	lui r13, 522240
	lui r19, 1048560
	addli r11, zero, 0
	.loc	1 38 11 is_stmt 1               # parallel-rne.mlir:38:11
	store.d r[2:3], -80(r30)                # 8-byte Folded Spill
	sext_int2long r[3:4], r1
	lui r1, 524287
	lui r2, 522239
	ori r23, r1, 4095
	lui r1, 7
	ori r25, r2, 4095
	ori r24, r1, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 351 7                         # parallel-rne.mlir:351:7
	addli r1, zero, 11
	addli r12, zero, 16
	addli r28, zero, 1
	xsignal r1, 0
	.loc	1 352 7                         # parallel-rne.mlir:352:7
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[3:4], -40(r30)                 # 8-byte Folded Reload
	.loc	1 46 5 is_stmt 1                # parallel-rne.mlir:46:5
	load.d r[1:2], -80(r30)                 # 8-byte Folded Reload
	loadli.w r11,  -32(r30)                 # 4-byte Folded Reload
	addli r9, zero, 3
	addli r7, zero, 6
	addli r8, zero, 11
	addli r16, zero, 8
	addli.d r[3:4], r[3:4], 1
	addli r11, r11, 1
	setlt.sl r1, r[3:4], r[1:2]
	beq r1, zero, .LBB0_271
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_116 Depth 2
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_139 Depth 3
                                        #     Child Loop BB0_23 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #     Child Loop BB0_146 Depth 2
                                        #       Child Loop BB0_148 Depth 3
                                        #       Child Loop BB0_169 Depth 3
                                        #     Child Loop BB0_57 Depth 2
                                        #       Child Loop BB0_59 Depth 3
                                        #       Child Loop BB0_80 Depth 3
                                        #     Child Loop BB0_176 Depth 2
                                        #       Child Loop BB0_178 Depth 3
                                        #       Child Loop BB0_199 Depth 3
                                        #     Child Loop BB0_87 Depth 2
                                        #       Child Loop BB0_89 Depth 3
                                        #       Child Loop BB0_110 Depth 3
                                        #     Child Loop BB0_206 Depth 2
                                        #       Child Loop BB0_208 Depth 3
                                        #       Child Loop BB0_229 Depth 3
                                        #     Child Loop BB0_236 Depth 2
                                        #       Child Loop BB0_245 Depth 3
                                        #       Child Loop BB0_240 Depth 3
	.loc	1 48 13                         # parallel-rne.mlir:48:13
	loadli.w r1,  32(r30)
	.loc	1 49 13                         # parallel-rne.mlir:49:13
	loadli.w r2,  28(r30)
	store.d r[3:4], -40(r30)                # 8-byte Folded Spill
	addli r18, r11, 0
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	storeli.w r18, -32(r30)                 # 4-byte Folded Spill
	.loc	1 48 13                         # parallel-rne.mlir:48:13
	div.s r1, r3, r1
	.loc	1 49 13                         # parallel-rne.mlir:49:13
	div.s r1, r1, r2
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	div.s r3, r1, r12
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	slli r4, r3, 3
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	sub.s r2, r28, r4
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	min.s r6, r2, r16
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	mod.s r2, r11, r9
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	mod.s r5, r1, r6
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	slli r11, r2, 12
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	add.s r4, r5, r4
	storeli.w r4, -52(r30)                  # 4-byte Folded Spill
	.loc	1 65 13                         # parallel-rne.mlir:65:13
	zext_int2long r[26:27], r4
	.loc	1 84 13                         # parallel-rne.mlir:84:13
	addli r4, r11, 12288
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	bneq r10, r28, .LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r14, zero, 11
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	load.d r[20:21], 0(r30)
	addli r5, zero, 6
	addli r15, zero, 2
	xwait r9, 0
	sll.d r[7:8], r[26:27], r14
	add.ul r[7:8], r[20:21], r[7:8]
	blt.s r15, r18, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r18, zero, 5
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	addli r20, zero, 4
	lock zero, r18
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 7
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 9
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 12
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 13
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 14
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 15
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 17
	dma_cfg zero, zero, r12, 10
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
	addli r5, zero, 64
	dma_cfg r28, r28, zero, 0
	dma_cfg r28, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r4, zero, r5, 3
	addli r5, zero, 128
	dma_cfg r5, zero, r15, 4
	addli r5, zero, 256
	dma_cfg r5, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r28, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r18, zero, 4
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	addli r5, r11, 12352
	addli r20, zero, 64
	addli r21, zero, 128
	addli r22, zero, 256
	lock zero, r18
	dma_cfg r28, r28, zero, 0
	dma_cfg zero, r8, zero, 2
	dma_cfg r5, r7, r20, 3
	addli r5, zero, 5
	addli r7, zero, 6
	addli r8, zero, 7
	dma_cfg r21, r20, r15, 4
	dma_cfg r22, r21, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r28, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	lock zero, r5
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 9
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 12
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 13
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 14
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 15
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 17
	dma_cfg zero, zero, r12, 10
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
	addli r8, zero, 11
	dma_cfg r28, r28, zero, 0
	dma_cfg r28, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r4, zero, r20, 3
	dma_cfg r21, zero, r15, 4
	dma_cfg r22, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r28, 5
	dma_cfg zero, zero, zero, 8
	unlock r5
	addli r5, zero, 2
	xsignal r15, 0
	.loc	1 91 7 is_stmt 1                # parallel-rne.mlir:91:7
	j .LBB0_15
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r14, zero, 2
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	bneq r10, r14, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	addli r5, zero, 5
	xwait r14, 0
	xwait r5, 0
	lock zero, zero
	addli r5, zero, 2
	ds_cfg r14, zero, 0
	addli r14, zero, 64
	ds_cfg r14, zero, 1
	ds_cfg r14, zero, 14
	ds_cfg r12, zero, 13
	shuffle_batch r11, r4, r14, 1
	addli r4, zero, 1
	unlock zero
	xsignal r9, 0
	storeli.w r4, -48(r30)                  # 4-byte Folded Spill
	addli r4, zero, 4
	xsignal r4, 0
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r5, zero, 2
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	slli r3, r3, 4
	.loc	1 99 13 is_stmt 1               # parallel-rne.mlir:99:13
	slli r2, r2, 14
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r1, r1, r3
	div.s r1, r1, r6
	zext_int2long r[3:4], r1
	storeli.w r1, -68(r30)                  # 4-byte Folded Spill
	.loc	1 101 13 is_stmt 1              # parallel-rne.mlir:101:13
	lui r1, 9
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sll.d r[3:4], r[3:4], r7
	.loc	1 101 13                        # parallel-rne.mlir:101:13
	add.s r1, r2, r1
	.loc	1 105 7 is_stmt 1               # parallel-rne.mlir:105:7
	sll.d r[3:4], r[3:4], r28
	store.d r[3:4], -64(r30)                # 8-byte Folded Spill
	bneq r10, r7, .LBB0_49
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli.d r[5:6], r[3:4], 0
	.loc	1 105 7                         # parallel-rne.mlir:105:7
	load.d r[3:4], 8(r30)
	addli r15, zero, 7
	xwait r15, 0
	add.ul r[3:4], r[3:4], r[5:6]
	loadli.w r5,  -32(r30)                  # 4-byte Folded Reload
	addli r6, zero, 2
	blt.s r6, r5, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r5, zero, 5
	.loc	1 105 7                         # parallel-rne.mlir:105:7
	addli r14, zero, 4
	addli r18, zero, 128
	lock zero, r5
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 9
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 12
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 13
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 14
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 15
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 17
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 18
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 19
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 20
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 21
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 22
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 23
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 24
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 25
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 26
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 27
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 28
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 29
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 30
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 31
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 64
	dma_cfg r28, r28, zero, 0
	dma_cfg r28, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r14, 3
	dma_cfg r18, zero, r6, 4
	addli r18, zero, 256
	dma_cfg r18, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r28, 5
	dma_cfg zero, zero, zero, 8
	unlock r5
.LBB0_18:                               # %.thread15
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r5, 9
	storeli.w zero, -28(r30)                # 4-byte Folded Spill
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	addli r14, zero, 64
	addli r18, zero, 128
	addli r20, zero, 256
	ori r5, r5, 64
	.loc	1 105 7                         # parallel-rne.mlir:105:7
	add.s r2, r2, r5
	addli r5, zero, 4
	lock zero, r5
	dma_cfg r28, r28, zero, 0
	dma_cfg zero, r4, zero, 2
	dma_cfg r2, r3, r14, 3
	addli r2, zero, 5
	addli r3, zero, 9
	addli r4, zero, 64
	dma_cfg r18, r14, r6, 4
	dma_cfg r20, r20, r14, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r28, 5
	dma_cfg zero, zero, zero, 8
	unlock r5
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r16, 10
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
	addli r3, zero, 17
	dma_cfg zero, zero, r12, 10
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
	dma_cfg r28, r28, zero, 0
	dma_cfg r28, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r4, 3
	dma_cfg r18, zero, r6, 4
	dma_cfg r20, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r28, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
	xsignal r7, 0
.LBB0_19:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 6
	.loc	1 115 7 is_stmt 1               # parallel-rne.mlir:115:7
	xfence
	addli.d r[8:9], r[26:27], 0
	.loc	1 116 7                         # parallel-rne.mlir:116:7
	mfence { lm, sm, gm }
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r3, r11, r1
	.loc	1 117 7 is_stmt 1               # parallel-rne.mlir:117:7
	addli r1, zero, 255
	csr_set csr5, r1
	addli r1, zero, 64
	zext_int2long r[16:17], r1
	addli r1, zero, 63
	zext_int2long r[1:2], r1
	store.d r[1:2], -8(r30)                 # 8-byte Folded Spill
	sync_core
	.loc	1 118 7                         # parallel-rne.mlir:118:7
	beq r10, zero, .LBB0_114
# %bb.20:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	addli r1, zero, 1
	bneq r10, r1, .LBB0_143
.LBB0_21:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 128
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_23
.LBB0_22:                               # %middle.block88
                                        #   in Loop: Header=BB0_23 Depth=2
	.loc	1 155 9 is_stmt 1               # parallel-rne.mlir:155:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 192
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_53
.LBB0_23:                               # %vector.memcheck80
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_46 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[4:5], zero
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 156 11 is_stmt 1              # parallel-rne.mlir:156:11
	beq r3, r11, .LBB0_46
	j .LBB0_25
.LBB0_24:                               # %vector.body84
                                        #   in Loop: Header=BB0_25 Depth=3
	addli.d r[4:5], r[4:5], 4
	.loc	1 171 13                        # parallel-rne.mlir:171:13
	add.s r2, r3, r2
	addli.d r[26:27], r[8:9], 0
	.loc	1 156 11                        # parallel-rne.mlir:156:11
	seteq.d r12, r[4:5], r[16:17]
	.loc	1 171 13                        # parallel-rne.mlir:171:13
	stores.w r10, 12(r2)
	stores.w r28, 8(r2)
	stores.w r15, 4(r2)
	stores.w r1, 0(r2)
	.loc	1 156 11                        # parallel-rne.mlir:156:11
	bneq r12, zero, .LBB0_22
.LBB0_25:                               # %vector.body84
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r2, r1, 2
	add.s r18, r11, r2
	loads.w r20, 12(r18)
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	and r22, r20, r23
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	setlt.u r1, r13, r22
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	bneq r1, zero, .LBB0_27
# %bb.26:                               # %vector.body84
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r20, 0
	j .LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_25 Depth=3
	lui r1, 1024
	or r10, r20, r1
.LBB0_28:                               # %vector.body84
                                        #   in Loop: Header=BB0_25 Depth=3
	loads.w r26, 8(r18)
	and r21, r26, r23
	setlt.u r1, r13, r21
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	bneq r1, zero, .LBB0_30
# %bb.29:                               # %vector.body84
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r26, 0
	j .LBB0_31
.LBB0_30:                               #   in Loop: Header=BB0_25 Depth=3
	lui r1, 1024
	or r28, r26, r1
.LBB0_31:                               # %vector.body84
                                        #   in Loop: Header=BB0_25 Depth=3
	loads.w r14, 4(r18)
	and r12, r14, r23
	setlt.u r1, r13, r12
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	bneq r1, zero, .LBB0_33
# %bb.32:                               # %vector.body84
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r14, 0
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_25 Depth=3
	lui r1, 1024
	or r15, r14, r1
.LBB0_34:                               # %vector.body84
                                        #   in Loop: Header=BB0_25 Depth=3
	loads.w r18, 0(r18)
	and r27, r18, r23
	setlt.u r1, r13, r27
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	bneq r1, zero, .LBB0_43
# %bb.35:                               # %vector.body84
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r18, 0
	.loc	1 168 19 is_stmt 1              # parallel-rne.mlir:168:19
	setlt.u r27, r25, r27
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r27, zero, .LBB0_37
.LBB0_36:                               # %vector.body84
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r24
	and r1, r1, r19
.LBB0_37:                               # %vector.body84
                                        #   in Loop: Header=BB0_25 Depth=3
	setlt.u r12, r25, r12
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r12, zero, .LBB0_40
# %bb.38:                               # %vector.body84
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r14, 16
	andi r12, r12, 1
	add.s r12, r14, r12
	add.s r12, r12, r24
	and r15, r12, r19
	setlt.u r12, r25, r21
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	beq r12, zero, .LBB0_41
.LBB0_39:                               # %vector.body84
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r25, r22
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r12, zero, .LBB0_24
	j .LBB0_42
.LBB0_40:                               # %vector.body84
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r25, r21
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r12, zero, .LBB0_39
.LBB0_41:                               # %vector.body84
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r26, 16
	andi r12, r12, 1
	add.s r12, r26, r12
	add.s r12, r12, r24
	and r28, r12, r19
	setlt.u r12, r25, r22
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r12, zero, .LBB0_24
.LBB0_42:                               # %vector.body84
                                        #   in Loop: Header=BB0_25 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r20, 16
	andi r10, r10, 1
	add.s r10, r20, r10
	add.s r10, r10, r24
	and r10, r10, r19
	j .LBB0_24
.LBB0_43:                               #   in Loop: Header=BB0_25 Depth=3
	lui r1, 1024
	or r1, r18, r1
	.loc	1 168 19 is_stmt 1              # parallel-rne.mlir:168:19
	setlt.u r27, r25, r27
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	beq r27, zero, .LBB0_36
	j .LBB0_37
.LBB0_44:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r1, 16
	andi r10, r10, 1
	add.s r1, r1, r10
	add.s r1, r1, r24
	and r10, r1, r19
.LBB0_45:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 156 11 is_stmt 1              # parallel-rne.mlir:156:11
	load.d r[14:15], -8(r30)                # 8-byte Folded Reload
	.loc	1 171 13                        # parallel-rne.mlir:171:13
	add.s r2, r3, r2
	stores.w r10, 0(r2)
	.loc	1 156 11                        # parallel-rne.mlir:156:11
	setlt.ul r1, r[4:5], r[14:15]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_22
.LBB0_46:                               # %scalar.ph82
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r2, r1, 2
	add.s r1, r11, r2
	loads.w r1, 0(r1)
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	and r12, r1, r23
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	setlt.u r10, r13, r12
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	bneq r10, zero, .LBB0_48
# %bb.47:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r1, 0
	.loc	1 168 19 is_stmt 1              # parallel-rne.mlir:168:19
	setlt.u r12, r25, r12
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r12, zero, .LBB0_45
	j .LBB0_44
.LBB0_48:                               #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r1, r10
	.loc	1 168 19 is_stmt 1              # parallel-rne.mlir:168:19
	setlt.u r12, r25, r12
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r12, zero, .LBB0_45
	j .LBB0_44
.LBB0_49:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	beq r10, r9, .LBB0_269
# %bb.50:                               #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 4
	beq r10, r3, .LBB0_268
# %bb.51:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 2
	addli r4, zero, 7
	addli r6, zero, 64
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	bneq r10, r4, .LBB0_270
# %bb.52:                               #   in Loop: Header=BB0_8 Depth=1
	addli r5, zero, 9
	storeli.w zero, -28(r30)                # 4-byte Folded Spill
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	xwait r7, 0
	xwait r5, 0
	lock zero, zero
	ds_cfg r3, zero, 0
	ds_cfg r6, zero, 1
	ds_cfg r6, zero, 14
	ds_cfg r6, zero, 13
	shuffle_coa r2, r1, r6, 2
	addli r1, zero, 1
	unlock zero
	xsignal r4, 0
	storeli.w r1, -44(r30)                  # 4-byte Folded Spill
	xsignal r16, 0
	j .LBB0_19
.LBB0_53:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 27 5 is_stmt 1                # parallel-rne.mlir:27:5
	core_id r10
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	mfence { sm }
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	loadli.w r1,  -48(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_144
.LBB0_54:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 205 7                         # parallel-rne.mlir:205:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_173
.LBB0_55:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 384
	.loc	1 205 7                         # parallel-rne.mlir:205:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_57
.LBB0_56:                               # %middle.block70
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 213 9 is_stmt 1               # parallel-rne.mlir:213:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 448
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_83
.LBB0_57:                               # %vector.memcheck62
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_59 Depth 3
                                        #       Child Loop BB0_80 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[4:5], zero
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 214 11 is_stmt 1              # parallel-rne.mlir:214:11
	beq r3, r11, .LBB0_80
	j .LBB0_59
.LBB0_58:                               # %vector.body66
                                        #   in Loop: Header=BB0_59 Depth=3
	addli.d r[4:5], r[4:5], 4
	.loc	1 229 13                        # parallel-rne.mlir:229:13
	add.s r2, r3, r2
	addli.d r[26:27], r[8:9], 0
	.loc	1 214 11                        # parallel-rne.mlir:214:11
	seteq.d r12, r[4:5], r[16:17]
	.loc	1 229 13                        # parallel-rne.mlir:229:13
	stores.w r10, 12(r2)
	stores.w r22, 8(r2)
	stores.w r15, 4(r2)
	stores.w r1, 0(r2)
	.loc	1 214 11                        # parallel-rne.mlir:214:11
	bneq r12, zero, .LBB0_56
.LBB0_59:                               # %vector.body66
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r2, r1, 2
	add.s r18, r11, r2
	loads.w r12, 12(r18)
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	and r20, r12, r23
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	setlt.u r1, r13, r20
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r1, zero, .LBB0_61
# %bb.60:                               # %vector.body66
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_59 Depth=3
	lui r1, 1024
	or r10, r12, r1
.LBB0_62:                               # %vector.body66
                                        #   in Loop: Header=BB0_59 Depth=3
	loads.w r26, 8(r18)
	and r21, r26, r23
	setlt.u r1, r13, r21
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r1, zero, .LBB0_64
# %bb.63:                               # %vector.body66
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r26, 0
	j .LBB0_65
.LBB0_64:                               #   in Loop: Header=BB0_59 Depth=3
	lui r1, 1024
	or r22, r26, r1
.LBB0_65:                               # %vector.body66
                                        #   in Loop: Header=BB0_59 Depth=3
	loads.w r14, 4(r18)
	and r28, r14, r23
	setlt.u r1, r13, r28
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r1, zero, .LBB0_67
# %bb.66:                               # %vector.body66
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r14, 0
	j .LBB0_68
.LBB0_67:                               #   in Loop: Header=BB0_59 Depth=3
	lui r1, 1024
	or r15, r14, r1
.LBB0_68:                               # %vector.body66
                                        #   in Loop: Header=BB0_59 Depth=3
	loads.w r18, 0(r18)
	and r27, r18, r23
	setlt.u r1, r13, r27
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r1, zero, .LBB0_77
# %bb.69:                               # %vector.body66
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r18, 0
	.loc	1 226 19 is_stmt 1              # parallel-rne.mlir:226:19
	setlt.u r27, r25, r27
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r27, zero, .LBB0_71
.LBB0_70:                               # %vector.body66
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r24
	and r1, r1, r19
.LBB0_71:                               # %vector.body66
                                        #   in Loop: Header=BB0_59 Depth=3
	setlt.u r18, r25, r28
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r18, zero, .LBB0_74
# %bb.72:                               # %vector.body66
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r14, 16
	andi r15, r15, 1
	add.s r14, r14, r15
	add.s r14, r14, r24
	and r15, r14, r19
	setlt.u r14, r25, r21
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	beq r14, zero, .LBB0_75
.LBB0_73:                               # %vector.body66
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r25, r20
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r14, zero, .LBB0_58
	j .LBB0_76
.LBB0_74:                               # %vector.body66
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r25, r21
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r14, zero, .LBB0_73
.LBB0_75:                               # %vector.body66
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r26, 16
	andi r14, r14, 1
	add.s r14, r26, r14
	add.s r14, r14, r24
	and r22, r14, r19
	setlt.u r14, r25, r20
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r14, zero, .LBB0_58
.LBB0_76:                               # %vector.body66
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r12, 16
	andi r10, r10, 1
	add.s r10, r12, r10
	add.s r10, r10, r24
	and r10, r10, r19
	j .LBB0_58
.LBB0_77:                               #   in Loop: Header=BB0_59 Depth=3
	lui r1, 1024
	or r1, r18, r1
	.loc	1 226 19 is_stmt 1              # parallel-rne.mlir:226:19
	setlt.u r27, r25, r27
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	beq r27, zero, .LBB0_70
	j .LBB0_71
.LBB0_78:                               # %scalar.ph64
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r1, 16
	andi r10, r10, 1
	add.s r1, r1, r10
	add.s r1, r1, r24
	and r10, r1, r19
.LBB0_79:                               # %scalar.ph64
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 214 11 is_stmt 1              # parallel-rne.mlir:214:11
	load.d r[14:15], -8(r30)                # 8-byte Folded Reload
	.loc	1 229 13                        # parallel-rne.mlir:229:13
	add.s r2, r3, r2
	stores.w r10, 0(r2)
	.loc	1 214 11                        # parallel-rne.mlir:214:11
	setlt.ul r1, r[4:5], r[14:15]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_56
.LBB0_80:                               # %scalar.ph64
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r2, r1, 2
	add.s r1, r11, r2
	loads.w r1, 0(r1)
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	and r12, r1, r23
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	setlt.u r10, r13, r12
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r10, zero, .LBB0_82
# %bb.81:                               # %scalar.ph64
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r1, 0
	.loc	1 226 19 is_stmt 1              # parallel-rne.mlir:226:19
	setlt.u r12, r25, r12
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r12, zero, .LBB0_79
	j .LBB0_78
.LBB0_82:                               #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r1, r10
	.loc	1 226 19 is_stmt 1              # parallel-rne.mlir:226:19
	setlt.u r12, r25, r12
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r12, zero, .LBB0_79
	j .LBB0_78
.LBB0_83:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 27 5                          # parallel-rne.mlir:27:5
	core_id r10
	.loc	1 205 7                         # parallel-rne.mlir:205:7
	mfence { sm }
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_174
.LBB0_84:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 263 7                         # parallel-rne.mlir:263:7
	addli r1, zero, 5
	bneq r10, r1, .LBB0_203
.LBB0_85:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 640
	.loc	1 263 7                         # parallel-rne.mlir:263:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_87
.LBB0_86:                               # %middle.block52
                                        #   in Loop: Header=BB0_87 Depth=2
	.loc	1 271 9 is_stmt 1               # parallel-rne.mlir:271:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 704
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_113
.LBB0_87:                               # %vector.memcheck44
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_89 Depth 3
                                        #       Child Loop BB0_110 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[4:5], zero
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 272 11 is_stmt 1              # parallel-rne.mlir:272:11
	beq r3, r11, .LBB0_110
	j .LBB0_89
.LBB0_88:                               # %vector.body48
                                        #   in Loop: Header=BB0_89 Depth=3
	addli.d r[4:5], r[4:5], 4
	.loc	1 287 13                        # parallel-rne.mlir:287:13
	add.s r2, r3, r2
	addli.d r[26:27], r[8:9], 0
	.loc	1 272 11                        # parallel-rne.mlir:272:11
	seteq.d r12, r[4:5], r[16:17]
	.loc	1 287 13                        # parallel-rne.mlir:287:13
	stores.w r10, 12(r2)
	stores.w r22, 8(r2)
	stores.w r15, 4(r2)
	stores.w r1, 0(r2)
	.loc	1 272 11                        # parallel-rne.mlir:272:11
	bneq r12, zero, .LBB0_86
.LBB0_89:                               # %vector.body48
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_87 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r2, r1, 2
	add.s r18, r11, r2
	loads.w r12, 12(r18)
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	and r20, r12, r23
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	setlt.u r1, r13, r20
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r1, zero, .LBB0_91
# %bb.90:                               # %vector.body48
                                        #   in Loop: Header=BB0_89 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_89 Depth=3
	lui r1, 1024
	or r10, r12, r1
.LBB0_92:                               # %vector.body48
                                        #   in Loop: Header=BB0_89 Depth=3
	loads.w r26, 8(r18)
	and r21, r26, r23
	setlt.u r1, r13, r21
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r1, zero, .LBB0_94
# %bb.93:                               # %vector.body48
                                        #   in Loop: Header=BB0_89 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r26, 0
	j .LBB0_95
.LBB0_94:                               #   in Loop: Header=BB0_89 Depth=3
	lui r1, 1024
	or r22, r26, r1
.LBB0_95:                               # %vector.body48
                                        #   in Loop: Header=BB0_89 Depth=3
	loads.w r14, 4(r18)
	and r28, r14, r23
	setlt.u r1, r13, r28
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r1, zero, .LBB0_97
# %bb.96:                               # %vector.body48
                                        #   in Loop: Header=BB0_89 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r14, 0
	j .LBB0_98
.LBB0_97:                               #   in Loop: Header=BB0_89 Depth=3
	lui r1, 1024
	or r15, r14, r1
.LBB0_98:                               # %vector.body48
                                        #   in Loop: Header=BB0_89 Depth=3
	loads.w r18, 0(r18)
	and r27, r18, r23
	setlt.u r1, r13, r27
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r1, zero, .LBB0_107
# %bb.99:                               # %vector.body48
                                        #   in Loop: Header=BB0_89 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r18, 0
	.loc	1 284 19 is_stmt 1              # parallel-rne.mlir:284:19
	setlt.u r27, r25, r27
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r27, zero, .LBB0_101
.LBB0_100:                              # %vector.body48
                                        #   in Loop: Header=BB0_89 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r24
	and r1, r1, r19
.LBB0_101:                              # %vector.body48
                                        #   in Loop: Header=BB0_89 Depth=3
	setlt.u r18, r25, r28
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r18, zero, .LBB0_104
# %bb.102:                              # %vector.body48
                                        #   in Loop: Header=BB0_89 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r14, 16
	andi r15, r15, 1
	add.s r14, r14, r15
	add.s r14, r14, r24
	and r15, r14, r19
	setlt.u r14, r25, r21
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	beq r14, zero, .LBB0_105
.LBB0_103:                              # %vector.body48
                                        #   in Loop: Header=BB0_89 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r25, r20
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r14, zero, .LBB0_88
	j .LBB0_106
.LBB0_104:                              # %vector.body48
                                        #   in Loop: Header=BB0_89 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r25, r21
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r14, zero, .LBB0_103
.LBB0_105:                              # %vector.body48
                                        #   in Loop: Header=BB0_89 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r26, 16
	andi r14, r14, 1
	add.s r14, r26, r14
	add.s r14, r14, r24
	and r22, r14, r19
	setlt.u r14, r25, r20
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r14, zero, .LBB0_88
.LBB0_106:                              # %vector.body48
                                        #   in Loop: Header=BB0_89 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r12, 16
	andi r10, r10, 1
	add.s r10, r12, r10
	add.s r10, r10, r24
	and r10, r10, r19
	j .LBB0_88
.LBB0_107:                              #   in Loop: Header=BB0_89 Depth=3
	lui r1, 1024
	or r1, r18, r1
	.loc	1 284 19 is_stmt 1              # parallel-rne.mlir:284:19
	setlt.u r27, r25, r27
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	beq r27, zero, .LBB0_100
	j .LBB0_101
.LBB0_108:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r1, 16
	andi r10, r10, 1
	add.s r1, r1, r10
	add.s r1, r1, r24
	and r10, r1, r19
.LBB0_109:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 272 11 is_stmt 1              # parallel-rne.mlir:272:11
	load.d r[14:15], -8(r30)                # 8-byte Folded Reload
	.loc	1 287 13                        # parallel-rne.mlir:287:13
	add.s r2, r3, r2
	stores.w r10, 0(r2)
	.loc	1 272 11                        # parallel-rne.mlir:272:11
	setlt.ul r1, r[4:5], r[14:15]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_86
.LBB0_110:                              # %scalar.ph46
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_87 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r2, r1, 2
	add.s r1, r11, r2
	loads.w r1, 0(r1)
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	and r12, r1, r23
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	setlt.u r10, r13, r12
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r10, zero, .LBB0_112
# %bb.111:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r1, 0
	.loc	1 284 19 is_stmt 1              # parallel-rne.mlir:284:19
	setlt.u r12, r25, r12
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r12, zero, .LBB0_109
	j .LBB0_108
.LBB0_112:                              #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r1, r10
	.loc	1 284 19 is_stmt 1              # parallel-rne.mlir:284:19
	setlt.u r12, r25, r12
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r12, zero, .LBB0_109
	j .LBB0_108
.LBB0_113:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 27 5                          # parallel-rne.mlir:27:5
	core_id r10
	.loc	1 263 7                         # parallel-rne.mlir:263:7
	mfence { sm }
	.loc	1 292 7                         # parallel-rne.mlir:292:7
	addli r1, zero, 6
	bneq r10, r1, .LBB0_233
	j .LBB0_204
.LBB0_114:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 118 7                         # parallel-rne.mlir:118:7
	xfence
	addli r2, zero, 1
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	j .LBB0_116
.LBB0_115:                              # %middle.block97
                                        #   in Loop: Header=BB0_116 Depth=2
	.loc	1 126 9                         # parallel-rne.mlir:126:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli.d r[6:7], r[16:17], 0
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_142
.LBB0_116:                              # %vector.memcheck89
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_139 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[4:5], zero
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 127 11 is_stmt 1              # parallel-rne.mlir:127:11
	beq r3, r11, .LBB0_139
	j .LBB0_118
.LBB0_117:                              # %vector.body93
                                        #   in Loop: Header=BB0_118 Depth=3
	addli.d r[4:5], r[4:5], 4
	.loc	1 142 13                        # parallel-rne.mlir:142:13
	add.s r2, r3, r2
	addli.d r[26:27], r[8:9], 0
	.loc	1 127 11                        # parallel-rne.mlir:127:11
	seteq.d r12, r[4:5], r[16:17]
	.loc	1 142 13                        # parallel-rne.mlir:142:13
	stores.w r10, 12(r2)
	stores.w r28, 8(r2)
	stores.w r15, 4(r2)
	stores.w r1, 0(r2)
	.loc	1 127 11                        # parallel-rne.mlir:127:11
	bneq r12, zero, .LBB0_115
.LBB0_118:                              # %vector.body93
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 128 19                        # parallel-rne.mlir:128:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r2, r1, 2
	add.s r18, r11, r2
	loads.w r20, 12(r18)
	.loc	1 130 19                        # parallel-rne.mlir:130:19
	and r22, r20, r23
	.loc	1 132 19                        # parallel-rne.mlir:132:19
	setlt.u r1, r13, r22
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	bneq r1, zero, .LBB0_120
# %bb.119:                              # %vector.body93
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r20, 0
	j .LBB0_121
.LBB0_120:                              #   in Loop: Header=BB0_118 Depth=3
	lui r1, 1024
	or r10, r20, r1
.LBB0_121:                              # %vector.body93
                                        #   in Loop: Header=BB0_118 Depth=3
	loads.w r26, 8(r18)
	and r21, r26, r23
	setlt.u r1, r13, r21
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	bneq r1, zero, .LBB0_123
# %bb.122:                              # %vector.body93
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r26, 0
	j .LBB0_124
.LBB0_123:                              #   in Loop: Header=BB0_118 Depth=3
	lui r1, 1024
	or r28, r26, r1
.LBB0_124:                              # %vector.body93
                                        #   in Loop: Header=BB0_118 Depth=3
	loads.w r14, 4(r18)
	and r12, r14, r23
	setlt.u r1, r13, r12
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	bneq r1, zero, .LBB0_126
# %bb.125:                              # %vector.body93
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r14, 0
	j .LBB0_127
.LBB0_126:                              #   in Loop: Header=BB0_118 Depth=3
	lui r1, 1024
	or r15, r14, r1
.LBB0_127:                              # %vector.body93
                                        #   in Loop: Header=BB0_118 Depth=3
	loads.w r18, 0(r18)
	and r27, r18, r23
	setlt.u r1, r13, r27
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	bneq r1, zero, .LBB0_129
# %bb.128:                              # %vector.body93
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r18, 0
	.loc	1 139 19 is_stmt 1              # parallel-rne.mlir:139:19
	setlt.u r27, r25, r27
	.loc	1 140 19                        # parallel-rne.mlir:140:19
	beq r27, zero, .LBB0_130
	j .LBB0_131
.LBB0_129:                              #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r18, r1
	.loc	1 139 19 is_stmt 1              # parallel-rne.mlir:139:19
	setlt.u r27, r25, r27
	.loc	1 140 19                        # parallel-rne.mlir:140:19
	bneq r27, zero, .LBB0_131
.LBB0_130:                              # %vector.body93
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r24
	and r1, r1, r19
.LBB0_131:                              # %vector.body93
                                        #   in Loop: Header=BB0_118 Depth=3
	setlt.u r12, r25, r12
	.loc	1 140 19                        # parallel-rne.mlir:140:19
	bneq r12, zero, .LBB0_134
# %bb.132:                              # %vector.body93
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r14, 16
	andi r12, r12, 1
	add.s r12, r14, r12
	add.s r12, r12, r24
	and r15, r12, r19
	setlt.u r12, r25, r21
	.loc	1 140 19                        # parallel-rne.mlir:140:19
	beq r12, zero, .LBB0_135
.LBB0_133:                              # %vector.body93
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r25, r22
	.loc	1 140 19                        # parallel-rne.mlir:140:19
	bneq r12, zero, .LBB0_117
	j .LBB0_136
.LBB0_134:                              # %vector.body93
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r25, r21
	.loc	1 140 19                        # parallel-rne.mlir:140:19
	bneq r12, zero, .LBB0_133
.LBB0_135:                              # %vector.body93
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r26, 16
	andi r12, r12, 1
	add.s r12, r26, r12
	add.s r12, r12, r24
	and r28, r12, r19
	setlt.u r12, r25, r22
	.loc	1 140 19                        # parallel-rne.mlir:140:19
	bneq r12, zero, .LBB0_117
.LBB0_136:                              # %vector.body93
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r20, 16
	andi r10, r10, 1
	add.s r10, r20, r10
	add.s r10, r10, r24
	and r10, r10, r19
	j .LBB0_117
.LBB0_137:                              # %scalar.ph91
                                        #   in Loop: Header=BB0_139 Depth=3
	srli r10, r1, 16
	andi r10, r10, 1
	add.s r1, r1, r10
	add.s r1, r1, r24
	and r10, r1, r19
.LBB0_138:                              # %scalar.ph91
                                        #   in Loop: Header=BB0_139 Depth=3
	.loc	1 127 11 is_stmt 1              # parallel-rne.mlir:127:11
	load.d r[14:15], -8(r30)                # 8-byte Folded Reload
	.loc	1 142 13                        # parallel-rne.mlir:142:13
	add.s r2, r3, r2
	stores.w r10, 0(r2)
	.loc	1 127 11                        # parallel-rne.mlir:127:11
	setlt.ul r1, r[4:5], r[14:15]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_115
.LBB0_139:                              # %scalar.ph91
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 128 19                        # parallel-rne.mlir:128:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r2, r1, 2
	add.s r1, r11, r2
	loads.w r1, 0(r1)
	.loc	1 130 19                        # parallel-rne.mlir:130:19
	and r12, r1, r23
	.loc	1 132 19                        # parallel-rne.mlir:132:19
	setlt.u r10, r13, r12
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	bneq r10, zero, .LBB0_141
# %bb.140:                              # %scalar.ph91
                                        #   in Loop: Header=BB0_139 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r1, 0
	.loc	1 139 19 is_stmt 1              # parallel-rne.mlir:139:19
	setlt.u r12, r25, r12
	.loc	1 140 19                        # parallel-rne.mlir:140:19
	bneq r12, zero, .LBB0_138
	j .LBB0_137
.LBB0_141:                              #   in Loop: Header=BB0_139 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r1, r10
	.loc	1 139 19 is_stmt 1              # parallel-rne.mlir:139:19
	setlt.u r12, r25, r12
	.loc	1 140 19                        # parallel-rne.mlir:140:19
	bneq r12, zero, .LBB0_138
	j .LBB0_137
.LBB0_142:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 27 5                          # parallel-rne.mlir:27:5
	core_id r10
	.loc	1 118 7                         # parallel-rne.mlir:118:7
	mfence { sm }
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	addli r1, zero, 1
	beq r10, r1, .LBB0_21
.LBB0_143:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	loadli.w r1,  -48(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_54
.LBB0_144:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 256
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_146
.LBB0_145:                              # %middle.block79
                                        #   in Loop: Header=BB0_146 Depth=2
	.loc	1 184 9 is_stmt 1               # parallel-rne.mlir:184:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 320
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_172
.LBB0_146:                              # %vector.memcheck71
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_148 Depth 3
                                        #       Child Loop BB0_169 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[4:5], zero
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 185 11 is_stmt 1              # parallel-rne.mlir:185:11
	beq r3, r11, .LBB0_169
	j .LBB0_148
.LBB0_147:                              # %vector.body75
                                        #   in Loop: Header=BB0_148 Depth=3
	addli.d r[4:5], r[4:5], 4
	.loc	1 200 13                        # parallel-rne.mlir:200:13
	add.s r2, r3, r2
	addli.d r[26:27], r[8:9], 0
	.loc	1 185 11                        # parallel-rne.mlir:185:11
	seteq.d r12, r[4:5], r[16:17]
	.loc	1 200 13                        # parallel-rne.mlir:200:13
	stores.w r10, 12(r2)
	stores.w r22, 8(r2)
	stores.w r15, 4(r2)
	stores.w r1, 0(r2)
	.loc	1 185 11                        # parallel-rne.mlir:185:11
	bneq r12, zero, .LBB0_145
.LBB0_148:                              # %vector.body75
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_146 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r2, r1, 2
	add.s r18, r11, r2
	loads.w r12, 12(r18)
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	and r20, r12, r23
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	setlt.u r1, r13, r20
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r1, zero, .LBB0_150
# %bb.149:                              # %vector.body75
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_148 Depth=3
	lui r1, 1024
	or r10, r12, r1
.LBB0_151:                              # %vector.body75
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r26, 8(r18)
	and r21, r26, r23
	setlt.u r1, r13, r21
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r1, zero, .LBB0_153
# %bb.152:                              # %vector.body75
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r26, 0
	j .LBB0_154
.LBB0_153:                              #   in Loop: Header=BB0_148 Depth=3
	lui r1, 1024
	or r22, r26, r1
.LBB0_154:                              # %vector.body75
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r14, 4(r18)
	and r28, r14, r23
	setlt.u r1, r13, r28
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r1, zero, .LBB0_156
# %bb.155:                              # %vector.body75
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r14, 0
	j .LBB0_157
.LBB0_156:                              #   in Loop: Header=BB0_148 Depth=3
	lui r1, 1024
	or r15, r14, r1
.LBB0_157:                              # %vector.body75
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r18, 0(r18)
	and r27, r18, r23
	setlt.u r1, r13, r27
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r1, zero, .LBB0_166
# %bb.158:                              # %vector.body75
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r18, 0
	.loc	1 197 19 is_stmt 1              # parallel-rne.mlir:197:19
	setlt.u r27, r25, r27
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r27, zero, .LBB0_160
.LBB0_159:                              # %vector.body75
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r24
	and r1, r1, r19
.LBB0_160:                              # %vector.body75
                                        #   in Loop: Header=BB0_148 Depth=3
	setlt.u r18, r25, r28
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r18, zero, .LBB0_163
# %bb.161:                              # %vector.body75
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r14, 16
	andi r15, r15, 1
	add.s r14, r14, r15
	add.s r14, r14, r24
	and r15, r14, r19
	setlt.u r14, r25, r21
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	beq r14, zero, .LBB0_164
.LBB0_162:                              # %vector.body75
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r25, r20
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r14, zero, .LBB0_147
	j .LBB0_165
.LBB0_163:                              # %vector.body75
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r25, r21
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r14, zero, .LBB0_162
.LBB0_164:                              # %vector.body75
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r26, 16
	andi r14, r14, 1
	add.s r14, r26, r14
	add.s r14, r14, r24
	and r22, r14, r19
	setlt.u r14, r25, r20
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r14, zero, .LBB0_147
.LBB0_165:                              # %vector.body75
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r12, 16
	andi r10, r10, 1
	add.s r10, r12, r10
	add.s r10, r10, r24
	and r10, r10, r19
	j .LBB0_147
.LBB0_166:                              #   in Loop: Header=BB0_148 Depth=3
	lui r1, 1024
	or r1, r18, r1
	.loc	1 197 19 is_stmt 1              # parallel-rne.mlir:197:19
	setlt.u r27, r25, r27
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	beq r27, zero, .LBB0_159
	j .LBB0_160
.LBB0_167:                              # %scalar.ph73
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r1, 16
	andi r10, r10, 1
	add.s r1, r1, r10
	add.s r1, r1, r24
	and r10, r1, r19
.LBB0_168:                              # %scalar.ph73
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 185 11 is_stmt 1              # parallel-rne.mlir:185:11
	load.d r[14:15], -8(r30)                # 8-byte Folded Reload
	.loc	1 200 13                        # parallel-rne.mlir:200:13
	add.s r2, r3, r2
	stores.w r10, 0(r2)
	.loc	1 185 11                        # parallel-rne.mlir:185:11
	setlt.ul r1, r[4:5], r[14:15]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_145
.LBB0_169:                              # %scalar.ph73
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_146 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r2, r1, 2
	add.s r1, r11, r2
	loads.w r1, 0(r1)
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	and r12, r1, r23
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	setlt.u r10, r13, r12
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r10, zero, .LBB0_171
# %bb.170:                              # %scalar.ph73
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r1, 0
	.loc	1 197 19 is_stmt 1              # parallel-rne.mlir:197:19
	setlt.u r12, r25, r12
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r12, zero, .LBB0_168
	j .LBB0_167
.LBB0_171:                              #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r1, r10
	.loc	1 197 19 is_stmt 1              # parallel-rne.mlir:197:19
	setlt.u r12, r25, r12
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r12, zero, .LBB0_168
	j .LBB0_167
.LBB0_172:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 27 5                          # parallel-rne.mlir:27:5
	core_id r10
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	mfence { sm }
	.loc	1 205 7                         # parallel-rne.mlir:205:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_55
.LBB0_173:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_84
.LBB0_174:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 512
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_176
.LBB0_175:                              # %middle.block61
                                        #   in Loop: Header=BB0_176 Depth=2
	.loc	1 242 9 is_stmt 1               # parallel-rne.mlir:242:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 576
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_202
.LBB0_176:                              # %vector.memcheck53
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_178 Depth 3
                                        #       Child Loop BB0_199 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[4:5], zero
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 243 11 is_stmt 1              # parallel-rne.mlir:243:11
	beq r3, r11, .LBB0_199
	j .LBB0_178
.LBB0_177:                              # %vector.body57
                                        #   in Loop: Header=BB0_178 Depth=3
	addli.d r[4:5], r[4:5], 4
	.loc	1 258 13                        # parallel-rne.mlir:258:13
	add.s r2, r3, r2
	addli.d r[26:27], r[8:9], 0
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	seteq.d r12, r[4:5], r[16:17]
	.loc	1 258 13                        # parallel-rne.mlir:258:13
	stores.w r10, 12(r2)
	stores.w r22, 8(r2)
	stores.w r15, 4(r2)
	stores.w r1, 0(r2)
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	bneq r12, zero, .LBB0_175
.LBB0_178:                              # %vector.body57
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_176 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r2, r1, 2
	add.s r18, r11, r2
	loads.w r12, 12(r18)
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	and r20, r12, r23
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	setlt.u r1, r13, r20
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r1, zero, .LBB0_180
# %bb.179:                              # %vector.body57
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_181
.LBB0_180:                              #   in Loop: Header=BB0_178 Depth=3
	lui r1, 1024
	or r10, r12, r1
.LBB0_181:                              # %vector.body57
                                        #   in Loop: Header=BB0_178 Depth=3
	loads.w r26, 8(r18)
	and r21, r26, r23
	setlt.u r1, r13, r21
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r1, zero, .LBB0_183
# %bb.182:                              # %vector.body57
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r26, 0
	j .LBB0_184
.LBB0_183:                              #   in Loop: Header=BB0_178 Depth=3
	lui r1, 1024
	or r22, r26, r1
.LBB0_184:                              # %vector.body57
                                        #   in Loop: Header=BB0_178 Depth=3
	loads.w r14, 4(r18)
	and r28, r14, r23
	setlt.u r1, r13, r28
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r1, zero, .LBB0_186
# %bb.185:                              # %vector.body57
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r14, 0
	j .LBB0_187
.LBB0_186:                              #   in Loop: Header=BB0_178 Depth=3
	lui r1, 1024
	or r15, r14, r1
.LBB0_187:                              # %vector.body57
                                        #   in Loop: Header=BB0_178 Depth=3
	loads.w r18, 0(r18)
	and r27, r18, r23
	setlt.u r1, r13, r27
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r1, zero, .LBB0_196
# %bb.188:                              # %vector.body57
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r18, 0
	.loc	1 255 19 is_stmt 1              # parallel-rne.mlir:255:19
	setlt.u r27, r25, r27
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r27, zero, .LBB0_190
.LBB0_189:                              # %vector.body57
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r24
	and r1, r1, r19
.LBB0_190:                              # %vector.body57
                                        #   in Loop: Header=BB0_178 Depth=3
	setlt.u r18, r25, r28
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r18, zero, .LBB0_193
# %bb.191:                              # %vector.body57
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r14, 16
	andi r15, r15, 1
	add.s r14, r14, r15
	add.s r14, r14, r24
	and r15, r14, r19
	setlt.u r14, r25, r21
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	beq r14, zero, .LBB0_194
.LBB0_192:                              # %vector.body57
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r25, r20
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r14, zero, .LBB0_177
	j .LBB0_195
.LBB0_193:                              # %vector.body57
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r25, r21
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r14, zero, .LBB0_192
.LBB0_194:                              # %vector.body57
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r26, 16
	andi r14, r14, 1
	add.s r14, r26, r14
	add.s r14, r14, r24
	and r22, r14, r19
	setlt.u r14, r25, r20
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r14, zero, .LBB0_177
.LBB0_195:                              # %vector.body57
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r12, 16
	andi r10, r10, 1
	add.s r10, r12, r10
	add.s r10, r10, r24
	and r10, r10, r19
	j .LBB0_177
.LBB0_196:                              #   in Loop: Header=BB0_178 Depth=3
	lui r1, 1024
	or r1, r18, r1
	.loc	1 255 19 is_stmt 1              # parallel-rne.mlir:255:19
	setlt.u r27, r25, r27
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	beq r27, zero, .LBB0_189
	j .LBB0_190
.LBB0_197:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r1, 16
	andi r10, r10, 1
	add.s r1, r1, r10
	add.s r1, r1, r24
	and r10, r1, r19
.LBB0_198:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 243 11 is_stmt 1              # parallel-rne.mlir:243:11
	load.d r[14:15], -8(r30)                # 8-byte Folded Reload
	.loc	1 258 13                        # parallel-rne.mlir:258:13
	add.s r2, r3, r2
	stores.w r10, 0(r2)
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	setlt.ul r1, r[4:5], r[14:15]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_175
.LBB0_199:                              # %scalar.ph55
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_176 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r2, r1, 2
	add.s r1, r11, r2
	loads.w r1, 0(r1)
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	and r12, r1, r23
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	setlt.u r10, r13, r12
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r10, zero, .LBB0_201
# %bb.200:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r1, 0
	.loc	1 255 19 is_stmt 1              # parallel-rne.mlir:255:19
	setlt.u r12, r25, r12
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r12, zero, .LBB0_198
	j .LBB0_197
.LBB0_201:                              #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r1, r10
	.loc	1 255 19 is_stmt 1              # parallel-rne.mlir:255:19
	setlt.u r12, r25, r12
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r12, zero, .LBB0_198
	j .LBB0_197
.LBB0_202:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 27 5                          # parallel-rne.mlir:27:5
	core_id r10
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	mfence { sm }
	.loc	1 263 7                         # parallel-rne.mlir:263:7
	addli r1, zero, 5
	beq r10, r1, .LBB0_85
.LBB0_203:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 292 7                         # parallel-rne.mlir:292:7
	addli r1, zero, 6
	bneq r10, r1, .LBB0_233
.LBB0_204:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 768
	.loc	1 292 7                         # parallel-rne.mlir:292:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_206
.LBB0_205:                              # %middle.block43
                                        #   in Loop: Header=BB0_206 Depth=2
	.loc	1 300 9 is_stmt 1               # parallel-rne.mlir:300:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 832
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_232
.LBB0_206:                              # %vector.memcheck35
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_208 Depth 3
                                        #       Child Loop BB0_229 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[4:5], zero
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 301 11 is_stmt 1              # parallel-rne.mlir:301:11
	beq r3, r11, .LBB0_229
	j .LBB0_208
.LBB0_207:                              # %vector.body39
                                        #   in Loop: Header=BB0_208 Depth=3
	addli.d r[4:5], r[4:5], 4
	.loc	1 316 13                        # parallel-rne.mlir:316:13
	add.s r2, r3, r2
	addli.d r[26:27], r[8:9], 0
	.loc	1 301 11                        # parallel-rne.mlir:301:11
	seteq.d r12, r[4:5], r[16:17]
	.loc	1 316 13                        # parallel-rne.mlir:316:13
	stores.w r10, 12(r2)
	stores.w r22, 8(r2)
	stores.w r15, 4(r2)
	stores.w r1, 0(r2)
	.loc	1 301 11                        # parallel-rne.mlir:301:11
	bneq r12, zero, .LBB0_205
.LBB0_208:                              # %vector.body39
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_206 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r2, r1, 2
	add.s r18, r11, r2
	loads.w r12, 12(r18)
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	and r20, r12, r23
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	setlt.u r1, r13, r20
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	bneq r1, zero, .LBB0_210
# %bb.209:                              # %vector.body39
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_211
.LBB0_210:                              #   in Loop: Header=BB0_208 Depth=3
	lui r1, 1024
	or r10, r12, r1
.LBB0_211:                              # %vector.body39
                                        #   in Loop: Header=BB0_208 Depth=3
	loads.w r26, 8(r18)
	and r21, r26, r23
	setlt.u r1, r13, r21
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	bneq r1, zero, .LBB0_213
# %bb.212:                              # %vector.body39
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r26, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_208 Depth=3
	lui r1, 1024
	or r22, r26, r1
.LBB0_214:                              # %vector.body39
                                        #   in Loop: Header=BB0_208 Depth=3
	loads.w r14, 4(r18)
	and r28, r14, r23
	setlt.u r1, r13, r28
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	bneq r1, zero, .LBB0_216
# %bb.215:                              # %vector.body39
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r14, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_208 Depth=3
	lui r1, 1024
	or r15, r14, r1
.LBB0_217:                              # %vector.body39
                                        #   in Loop: Header=BB0_208 Depth=3
	loads.w r18, 0(r18)
	and r27, r18, r23
	setlt.u r1, r13, r27
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	bneq r1, zero, .LBB0_226
# %bb.218:                              # %vector.body39
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r18, 0
	.loc	1 313 19 is_stmt 1              # parallel-rne.mlir:313:19
	setlt.u r27, r25, r27
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r27, zero, .LBB0_220
.LBB0_219:                              # %vector.body39
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r24
	and r1, r1, r19
.LBB0_220:                              # %vector.body39
                                        #   in Loop: Header=BB0_208 Depth=3
	setlt.u r18, r25, r28
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r18, zero, .LBB0_223
# %bb.221:                              # %vector.body39
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r14, 16
	andi r15, r15, 1
	add.s r14, r14, r15
	add.s r14, r14, r24
	and r15, r14, r19
	setlt.u r14, r25, r21
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	beq r14, zero, .LBB0_224
.LBB0_222:                              # %vector.body39
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r25, r20
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r14, zero, .LBB0_207
	j .LBB0_225
.LBB0_223:                              # %vector.body39
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r25, r21
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r14, zero, .LBB0_222
.LBB0_224:                              # %vector.body39
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r26, 16
	andi r14, r14, 1
	add.s r14, r26, r14
	add.s r14, r14, r24
	and r22, r14, r19
	setlt.u r14, r25, r20
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r14, zero, .LBB0_207
.LBB0_225:                              # %vector.body39
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r12, 16
	andi r10, r10, 1
	add.s r10, r12, r10
	add.s r10, r10, r24
	and r10, r10, r19
	j .LBB0_207
.LBB0_226:                              #   in Loop: Header=BB0_208 Depth=3
	lui r1, 1024
	or r1, r18, r1
	.loc	1 313 19 is_stmt 1              # parallel-rne.mlir:313:19
	setlt.u r27, r25, r27
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	beq r27, zero, .LBB0_219
	j .LBB0_220
.LBB0_227:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_229 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r1, 16
	andi r10, r10, 1
	add.s r1, r1, r10
	add.s r1, r1, r24
	and r10, r1, r19
.LBB0_228:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_229 Depth=3
	.loc	1 301 11 is_stmt 1              # parallel-rne.mlir:301:11
	load.d r[14:15], -8(r30)                # 8-byte Folded Reload
	.loc	1 316 13                        # parallel-rne.mlir:316:13
	add.s r2, r3, r2
	stores.w r10, 0(r2)
	.loc	1 301 11                        # parallel-rne.mlir:301:11
	setlt.ul r1, r[4:5], r[14:15]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_205
.LBB0_229:                              # %scalar.ph37
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_206 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r2, r1, 2
	add.s r1, r11, r2
	loads.w r1, 0(r1)
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	and r12, r1, r23
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	setlt.u r10, r13, r12
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	bneq r10, zero, .LBB0_231
# %bb.230:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_229 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r1, 0
	.loc	1 313 19 is_stmt 1              # parallel-rne.mlir:313:19
	setlt.u r12, r25, r12
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r12, zero, .LBB0_228
	j .LBB0_227
.LBB0_231:                              #   in Loop: Header=BB0_229 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r1, r10
	.loc	1 313 19 is_stmt 1              # parallel-rne.mlir:313:19
	setlt.u r12, r25, r12
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r12, zero, .LBB0_228
	j .LBB0_227
.LBB0_232:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 27 5                          # parallel-rne.mlir:27:5
	core_id r10
	.loc	1 292 7                         # parallel-rne.mlir:292:7
	mfence { sm }
.LBB0_233:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 321 7 is_stmt 1               # parallel-rne.mlir:321:7
	store.d r[1:2], -24(r30)                # 8-byte Folded Spill
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_265
# %bb.234:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 896
	.loc	1 321 7                         # parallel-rne.mlir:321:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_236
.LBB0_235:                              # %middle.block
                                        #   in Loop: Header=BB0_236 Depth=2
	.loc	1 329 9 is_stmt 1               # parallel-rne.mlir:329:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 960
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_264
.LBB0_236:                              # %vector.memcheck
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_245 Depth 3
                                        #       Child Loop BB0_240 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 330 11 is_stmt 1              # parallel-rne.mlir:330:11
	bneq r3, r11, .LBB0_243
# %bb.237:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_236 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_240
.LBB0_238:                              # %scalar.ph
                                        #   in Loop: Header=BB0_240 Depth=3
	srli r5, r10, 16
	andi r5, r5, 1
	add.s r5, r10, r5
	add.s r5, r5, r24
	and r5, r5, r19
.LBB0_239:                              # %scalar.ph
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 330 11                        # parallel-rne.mlir:330:11
	load.d r[14:15], -8(r30)                # 8-byte Folded Reload
	.loc	1 345 13 is_stmt 1              # parallel-rne.mlir:345:13
	add.s r4, r3, r4
	stores.w r5, 0(r4)
	.loc	1 330 11                        # parallel-rne.mlir:330:11
	setlt.ul r10, r[1:2], r[14:15]
	addli.d r[1:2], r[1:2], 1
	beq r10, zero, .LBB0_235
.LBB0_240:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_236 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	add.ul r[4:5], r[1:2], r[6:7]
	slli r4, r4, 2
	add.s r5, r11, r4
	loads.w r10, 0(r5)
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	and r12, r10, r23
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	setlt.u r5, r13, r12
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r5, zero, .LBB0_242
# %bb.241:                              # %scalar.ph
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r10, 0
	.loc	1 342 19 is_stmt 1              # parallel-rne.mlir:342:19
	setlt.u r12, r25, r12
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r12, zero, .LBB0_239
	j .LBB0_238
.LBB0_242:                              #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r10, r5
	.loc	1 342 19 is_stmt 1              # parallel-rne.mlir:342:19
	setlt.u r12, r25, r12
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r12, zero, .LBB0_239
	j .LBB0_238
.LBB0_243:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_236 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	load.d r[4:5], -24(r30)                 # 8-byte Folded Reload
	j .LBB0_245
.LBB0_244:                              # %vector.body
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 330 11 is_stmt 1              # parallel-rne.mlir:330:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 345 13                        # parallel-rne.mlir:345:13
	add.s r10, r3, r10
	.loc	1 330 11                        # parallel-rne.mlir:330:11
	seteq.d r2, r[4:5], r[16:17]
	.loc	1 345 13                        # parallel-rne.mlir:345:13
	stores.w r22, 12(r10)
	stores.w r18, 8(r10)
	stores.w r1, 4(r10)
	stores.w r21, 0(r10)
	.loc	1 330 11                        # parallel-rne.mlir:330:11
	bneq r2, zero, .LBB0_235
.LBB0_245:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_236 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r10, r1, 2
	add.s r2, r11, r10
	loads.w r20, 12(r2)
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	and r28, r20, r23
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	setlt.u r1, r13, r28
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r1, zero, .LBB0_247
# %bb.246:                              # %vector.body
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r22, r20, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_245 Depth=3
	lui r1, 1024
	or r22, r20, r1
.LBB0_248:                              # %vector.body
                                        #   in Loop: Header=BB0_245 Depth=3
	loads.w r15, 8(r2)
	and r14, r15, r23
	setlt.u r1, r13, r14
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r1, zero, .LBB0_250
# %bb.249:                              # %vector.body
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r15, 0
	j .LBB0_251
.LBB0_250:                              #   in Loop: Header=BB0_245 Depth=3
	lui r1, 1024
	or r18, r15, r1
.LBB0_251:                              # %vector.body
                                        #   in Loop: Header=BB0_245 Depth=3
	loads.w r26, 4(r2)
	and r12, r26, r23
	setlt.u r1, r13, r12
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r1, zero, .LBB0_253
# %bb.252:                              # %vector.body
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r26, 0
	j .LBB0_254
.LBB0_253:                              #   in Loop: Header=BB0_245 Depth=3
	lui r1, 1024
	or r1, r26, r1
.LBB0_254:                              # %vector.body
                                        #   in Loop: Header=BB0_245 Depth=3
	loads.w r2, 0(r2)
	and r27, r2, r23
	setlt.u r21, r13, r27
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r21, zero, .LBB0_263
# %bb.255:                              # %vector.body
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r2, 0
	.loc	1 342 19 is_stmt 1              # parallel-rne.mlir:342:19
	setlt.u r27, r25, r27
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r27, zero, .LBB0_257
.LBB0_256:                              # %vector.body
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r21, r2, 16
	andi r21, r21, 1
	add.s r2, r2, r21
	add.s r2, r2, r24
	and r21, r2, r19
.LBB0_257:                              # %vector.body
                                        #   in Loop: Header=BB0_245 Depth=3
	setlt.u r2, r25, r12
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r2, zero, .LBB0_259
# %bb.258:                              # %vector.body
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r24
	and r1, r1, r19
	setlt.u r2, r25, r14
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	beq r2, zero, .LBB0_260
	j .LBB0_261
.LBB0_259:                              # %vector.body
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r25, r14
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r2, zero, .LBB0_261
.LBB0_260:                              # %vector.body
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r24
	and r18, r2, r19
.LBB0_261:                              # %vector.body
                                        #   in Loop: Header=BB0_245 Depth=3
	setlt.u r2, r25, r28
	addli.d r[26:27], r[8:9], 0
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r2, zero, .LBB0_244
# %bb.262:                              # %vector.body
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r20, 16
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r24
	and r22, r2, r19
	j .LBB0_244
.LBB0_263:                              #   in Loop: Header=BB0_245 Depth=3
	lui r21, 1024
	or r21, r2, r21
	.loc	1 342 19 is_stmt 1              # parallel-rne.mlir:342:19
	setlt.u r27, r25, r27
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	beq r27, zero, .LBB0_256
	j .LBB0_257
.LBB0_264:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 27 5                          # parallel-rne.mlir:27:5
	core_id r10
	.loc	1 321 7                         # parallel-rne.mlir:321:7
	mfence { sm }
.LBB0_265:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 350 7                         # parallel-rne.mlir:350:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 351 7                         # parallel-rne.mlir:351:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.266:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r12, zero, 16
	addli r28, zero, 1
	.loc	1 368 7 is_stmt 1               # parallel-rne.mlir:368:7
	bneq r10, zero, .LBB0_7
# %bb.267:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -68(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -52(r30)                  # 4-byte Folded Reload
	.loc	1 355 13 is_stmt 1              # parallel-rne.mlir:355:13
	load.d r[7:8], -24(r30)                 # 8-byte Folded Reload
	addli r9, zero, 12
	slli r1, r1, 6
	slli r2, r2, 4
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	zext_int2long r[3:4], r1
	.loc	1 353 13                        # parallel-rne.mlir:353:13
	sext_int2long r[1:2], r2
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	min.sl r[14:15], r[1:2], r[7:8]
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	min.ul r[5:6], r[3:4], r[16:17]
	zext_int2long r[7:8], r12
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	addli.d r[14:15], r[14:15], 16
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	addli.d r[5:6], r[5:6], 64
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	max.sl r[14:15], r[14:15], r[1:2]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	max.ul r[5:6], r[5:6], r[3:4]
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	sub.sl r[1:2], r[14:15], r[1:2]
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	load.d r[14:15], 16(r30)
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	sub.sl r[3:4], r[5:6], r[3:4]
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	sll.d r[5:6], r[26:27], r9
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	min.sl r[1:2], r[1:2], r[7:8]
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	load.d r[7:8], -64(r30)                 # 8-byte Folded Reload
	xwait r9, 0
	addli r9, zero, 5
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	min.ul r[3:4], r[3:4], r[16:17]
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	add.ul r[5:6], r[14:15], r[5:6]
	lock zero, r9
	add.ul r[5:6], r[5:6], r[7:8]
	lui r7, 6
	dma_cfg r28, r28, zero, 0
	addli r8, r3, 31
	slli r3, r3, 1
	addli r4, zero, 128
	dma_cfg zero, r28, zero, 1
	ori r7, r7, 64
	dma_cfg r6, zero, zero, 2
	andi r3, r3, 62
	add.s r7, r11, r7
	addli r11, zero, 64
	dma_cfg r5, r7, r11, 3
	srli r5, r8, 5
	dma_cfg r11, r4, r5, 4
	addli r4, zero, 256
	dma_cfg r4, r4, r1, 5
	addli r1, zero, 13
	dma_cfg zero, zero, r3, 8
	dma_run zero
	dma_cfg zero, zero, r28, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	j .LBB0_6
.LBB0_268:                              # %.thread34
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 4
	addli r4, zero, 1
	addli r3, zero, 64
	storeli.w zero, -28(r30)                # 4-byte Folded Spill
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	.loc	1 107 7 is_stmt 1               # parallel-rne.mlir:107:7
	xwait r1, 0
	xwait r16, 0
	xwait r8, 0
	lock zero, r4
	mm_cfg r3, r3, r12, 0
	mm_cfg r1, r5, r4, 2
	addli r1, zero, 1
	mm r11, r11, r2, 8
	storeli.w r1, -24(r30)                  # 4-byte Folded Spill
	addli r1, zero, 5
	unlock r4
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	addli r1, zero, 10
	xsignal r1, 0
	.loc	1 112 7                         # parallel-rne.mlir:112:7
	j .LBB0_19
.LBB0_269:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 113 7                         # parallel-rne.mlir:113:7
	storeli.w r1, -28(r30)                  # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_19
.LBB0_270:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -28(r30)                # 4-byte Folded Spill
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	.loc	1 106 7 is_stmt 1               # parallel-rne.mlir:106:7
	j .LBB0_19
.LBB0_271:                              # %._crit_edge
	.loc	1 370 5                         # parallel-rne.mlir:370:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_273
# %bb.272:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 370 5                         # parallel-rne.mlir:370:5
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
	.loc	1 371 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:371:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-znctp57n" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
