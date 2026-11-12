	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-imesijy4" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -168
	addli r1, zero, 1
.Ltmp0:
	.loc	1 33 5 prologue_end             # parallel-rne.mlir:33:5
	core_id r5
	addli r30, sp, 104
	xsignal_mode_cfg r1
	beq r5, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 33 5                          # parallel-rne.mlir:33:5
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
	.loc	1 35 10 is_stmt 1               # parallel-rne.mlir:35:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	mul.s r1, r2, r1
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	mul.s r3, r1, r3
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	addli r2, r2, -1
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	div.s r2, r2, r4
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	load_param_i r4, 0
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	mul.s r1, r2, r4
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	fmac.s r2, r2, r4
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	min.s r2, r2, r3
	.loc	1 52 5                          # parallel-rne.mlir:52:5
	ble.s r2, r1, .LBB0_289
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 44 11 is_stmt 1               # parallel-rne.mlir:44:11
	sext_int2long r[12:13], r1
	addli r20, zero, 2
	addli r22, zero, 14
	lui r19, 1024
	lui r28, 522240
	lui r4, 1048560
	addli r10, zero, 0
	store.d r[2:3], -88(r30)                # 8-byte Folded Spill
	addli r2, zero, 4095
	lui r1, 1048572
	store.d r[1:2], -96(r30)                # 8-byte Folded Spill
	lui r1, 524287
	lui r2, 522239
	ori r15, r1, 4095
	lui r1, 7
	ori r18, r2, 4095
	ori r9, r1, 4095
	zext_int2long r[1:2], zero
	store.d r[1:2], -104(r30)               # 8-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 357 7                         # parallel-rne.mlir:357:7
	addli r1, zero, 11
	addli r20, zero, 2
	xsignal r1, 0
	.loc	1 358 7                         # parallel-rne.mlir:358:7
	addli r1, zero, 12
	xsignal r1, 0
	load.d r[12:13], -40(r30)               # 8-byte Folded Reload
	loadli.w r10,  -28(r30)                 # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 52 5                          # parallel-rne.mlir:52:5
	load.d r[1:2], -88(r30)                 # 8-byte Folded Reload
	addli.d r[12:13], r[12:13], 1
	addli r10, r10, 1
	addli r22, zero, 14
	setlt.sl r1, r[12:13], r[1:2]
	beq r1, zero, .LBB0_289
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_36 Depth 2
                                        #       Child Loop BB0_45 Depth 3
                                        #       Child Loop BB0_39 Depth 3
                                        #     Child Loop BB0_67 Depth 2
                                        #       Child Loop BB0_76 Depth 3
                                        #       Child Loop BB0_70 Depth 3
                                        #     Child Loop BB0_98 Depth 2
                                        #       Child Loop BB0_107 Depth 3
                                        #       Child Loop BB0_101 Depth 3
                                        #     Child Loop BB0_129 Depth 2
                                        #       Child Loop BB0_138 Depth 3
                                        #       Child Loop BB0_132 Depth 3
                                        #     Child Loop BB0_164 Depth 2
                                        #       Child Loop BB0_173 Depth 3
                                        #       Child Loop BB0_167 Depth 3
                                        #     Child Loop BB0_195 Depth 2
                                        #       Child Loop BB0_204 Depth 3
                                        #       Child Loop BB0_198 Depth 3
                                        #     Child Loop BB0_226 Depth 2
                                        #       Child Loop BB0_235 Depth 3
                                        #       Child Loop BB0_229 Depth 3
                                        #     Child Loop BB0_257 Depth 2
                                        #       Child Loop BB0_266 Depth 3
                                        #       Child Loop BB0_260 Depth 3
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	loadli.w r1,  32(r30)
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	loadli.w r2,  28(r30)
	store.d r[12:13], -40(r30)              # 8-byte Folded Spill
	.loc	1 61 13                         # parallel-rne.mlir:61:13
	addli r7, zero, 8
	addli r3, zero, 5
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	div.s r1, r12, r1
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	div.s r12, r1, r2
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	addli r1, zero, 256
	div.s r6, r12, r1
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	slli r1, r6, 3
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	sub.s r2, r20, r1
	.loc	1 61 13                         # parallel-rne.mlir:61:13
	min.s r7, r2, r7
	.loc	1 62 13                         # parallel-rne.mlir:62:13
	mod.s r2, r12, r7
	.loc	1 63 13                         # parallel-rne.mlir:63:13
	add.s r2, r2, r1
	.loc	1 76 13                         # parallel-rne.mlir:76:13
	addli r1, zero, 1
	setlt.u r1, r1, r2
	.loc	1 71 13                         # parallel-rne.mlir:71:13
	zext_int2long r[13:14], r2
	storeli.w r2, -60(r30)                  # 4-byte Folded Spill
	.loc	1 75 13                         # parallel-rne.mlir:75:13
	addli r2, zero, 13
	store.d r[13:14], -56(r30)              # 8-byte Folded Spill
	sll.d r[13:14], r[13:14], r2
	.loc	1 80 13                         # parallel-rne.mlir:80:13
	bneq r1, zero, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 13 is_stmt 0                # parallel-rne.mlir:0:13
	load.d r[16:17], -104(r30)              # 8-byte Folded Reload
	j .LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	load.d r[1:2], -96(r30)                 # 8-byte Folded Reload
	and.d r[16:17], r[13:14], r[1:2]
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	mod.s r2, r10, r3
	addli r1, zero, 64
	addli r23, r10, 0
	zext_int2long r[24:25], r1
	.loc	1 90 13 is_stmt 1               # parallel-rne.mlir:90:13
	lui r1, 10
	.loc	1 94 7                          # parallel-rne.mlir:94:7
	storeli.w r23, -28(r30)                 # 4-byte Folded Spill
	.loc	1 88 13                         # parallel-rne.mlir:88:13
	slli r11, r2, 15
	.loc	1 90 13                         # parallel-rne.mlir:90:13
	add.s r3, r11, r1
	.loc	1 94 7                          # parallel-rne.mlir:94:7
	addli r1, zero, 1
	bneq r5, r1, .LBB0_14
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.sl r[13:14], r[13:14], r[16:17]
	addli r5, zero, 7
	.loc	1 94 7                          # parallel-rne.mlir:94:7
	load.d r[20:21], -56(r30)               # 8-byte Folded Reload
	addli r1, zero, 2
	addli r10, zero, 7
	addli r8, zero, 1
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	sra.d r[13:14], r[13:14], r5
	addli r5, zero, 3
	.loc	1 94 7                          # parallel-rne.mlir:94:7
	sll.d r[20:21], r[20:21], r22
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	min.sl r[16:17], r[13:14], r[24:25]
	.loc	1 94 7                          # parallel-rne.mlir:94:7
	xwait r5, 0
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	sub.sl r[13:14], r[16:17], r[13:14]
	.loc	1 94 7                          # parallel-rne.mlir:94:7
	load.d r[16:17], 0(r30)
	add.ul r[20:21], r[16:17], r[20:21]
	addli r16, r13, 64
	addli r14, zero, 5
	addli r17, zero, 4
	blt.s r17, r23, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	lock zero, r14
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 6
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 128
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 18
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 21
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 22
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 23
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 24
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 25
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 26
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 27
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 28
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 29
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 30
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 31
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 64
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r1, 3
	dma_cfg r5, zero, r17, 4
	addli r5, zero, 512
	dma_cfg r5, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
.LBB0_13:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r1, 10
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
	addli r5, zero, 64
	addli r23, zero, 512
	addli r13, zero, 3
	.loc	1 94 7                          # parallel-rne.mlir:94:7
	lock zero, r17
	ori r1, r1, 64
	dma_cfg r8, r8, zero, 0
	dma_cfg zero, r21, zero, 2
	add.s r1, r11, r1
	dma_cfg r1, r20, r5, 3
	addli r21, zero, 128
	addli r1, zero, 256
	addli r20, zero, 2
	dma_cfg r21, r5, r17, 4
	dma_cfg r23, r1, r16, 5
	addli r1, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	lock zero, r14
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 14
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 18
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 21
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 22
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 23
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 24
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 25
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 26
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 27
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 28
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 29
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 30
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 31
	dma_cfg zero, zero, r1, 10
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r5, 3
	dma_cfg r21, zero, r17, 4
	dma_cfg r23, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	xsignal r20, 0
	.loc	1 95 7 is_stmt 1                # parallel-rne.mlir:95:7
	j .LBB0_18
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r13, zero, 14
	.loc	1 95 7                          # parallel-rne.mlir:95:7
	bneq r5, r20, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r14, zero, 5
	.loc	1 95 7                          # parallel-rne.mlir:95:7
	xwait r20, 0
	addli r5, zero, 128
	addli r1, zero, 64
	xwait r14, 0
	lock zero, zero
	ds_cfg r20, zero, 0
	ds_cfg r5, zero, 1
	ds_cfg r5, zero, 14
	ds_cfg r1, zero, 13
	addli r1, zero, 3
	shuffle_batch r11, r3, r5, 1
	unlock zero
	xsignal r1, 0
	addli r1, zero, 1
	storeli.w r1, -48(r30)                  # 4-byte Folded Spill
	addli r1, zero, 4
	xsignal r1, 0
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
	addli r14, zero, 5
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	addli r8, zero, 1
	addli r10, zero, 7
.LBB0_18:                               #   in Loop: Header=BB0_7 Depth=1
	slli r1, r6, 8
	slli r22, r2, 13
	.loc	1 103 13 is_stmt 1              # parallel-rne.mlir:103:13
	slli r2, r2, 14
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r1, r12, r1
	addli r12, zero, 6
	div.s r1, r1, r7
	zext_int2long r[5:6], r1
	storeli.w r1, -76(r30)                  # 4-byte Folded Spill
	.loc	1 105 13 is_stmt 1              # parallel-rne.mlir:105:13
	lui r1, 50
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sll.d r[5:6], r[5:6], r14
	.loc	1 105 13                        # parallel-rne.mlir:105:13
	add.s r3, r2, r1
	.loc	1 109 7 is_stmt 1               # parallel-rne.mlir:109:7
	sll.d r[6:7], r[5:6], r8
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r5
	.loc	1 109 7                         # parallel-rne.mlir:109:7
	store.d r[6:7], -72(r30)                # 8-byte Folded Spill
	bneq r5, r12, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli.d r[16:17], r[6:7], 0
	.loc	1 109 7                         # parallel-rne.mlir:109:7
	load.d r[6:7], 8(r30)
	xwait r10, 0
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	addli r11, zero, 4
	add.ul r[6:7], r[6:7], r[16:17]
	blt.s r11, r1, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	lock zero, r14
	addli r1, zero, 3
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 18
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 21
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 22
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 23
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 24
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 25
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 26
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 27
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 28
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 29
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 30
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 31
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 64
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r1, 3
	addli r1, zero, 128
	dma_cfg r1, zero, r8, 4
	dma_cfg r1, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
.LBB0_21:                               # %.thread14
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r1, 50
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	.loc	1 109 7                         # parallel-rne.mlir:109:7
	lock zero, r11
	ori r1, r1, 64
	dma_cfg r8, r8, zero, 0
	dma_cfg zero, r7, zero, 2
	add.s r1, r2, r1
	addli r2, zero, 64
	dma_cfg r1, r6, r2, 3
	addli r6, zero, 128
	addli r1, zero, 2048
	dma_cfg r6, r2, r8, 4
	dma_cfg r6, r1, r6, 5
	addli r1, zero, 3
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	lock zero, r14
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 18
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 21
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 22
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 23
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 24
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 25
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 26
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 27
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 28
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 29
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 30
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 31
	dma_cfg zero, zero, r1, 10
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r2, 3
	dma_cfg r6, zero, r8, 4
	dma_cfg r6, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	xsignal r12, 0
	.loc	1 110 7 is_stmt 1               # parallel-rne.mlir:110:7
	j .LBB0_30
.LBB0_22:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 4
	.loc	1 110 7                         # parallel-rne.mlir:110:7
	beq r5, r1, .LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r5, r10, .LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 9
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	xwait r12, 0
	addli r6, zero, 32
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 128
	ds_cfg r20, zero, 0
	ds_cfg r6, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r6, zero, 13
	shuffle_coa r2, r3, r1, 2
	addli r1, zero, 1
	unlock zero
	xsignal r10, 0
	storeli.w r1, -44(r30)                  # 4-byte Folded Spill
	addli r1, zero, 8
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	xsignal r1, 0
	j .LBB0_29
.LBB0_25:                               #   in Loop: Header=BB0_7 Depth=1
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	.loc	1 111 7 is_stmt 1               # parallel-rne.mlir:111:7
	xwait r1, 0
	addli r1, zero, 8
	addli r3, zero, 11
	addli r10, zero, 1
	addli r6, zero, 128
	addli r7, zero, 32
	xwait r1, 0
	xwait r3, 0
	addli r3, zero, 64
	lock zero, r10
	mm_cfg r7, r6, r3, 0
	mm_cfg r1, r10, r10, 2
	addli r1, zero, 1
	mm r22, r11, r2, 8
	storeli.w r1, -24(r30)                  # 4-byte Folded Spill
	addli r1, zero, 9
	unlock r10
	xsignal r14, 0
	xsignal r1, 0
	addli r1, zero, 10
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
	j .LBB0_29
.LBB0_26:                               # %.thread15
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 118 7 is_stmt 1               # parallel-rne.mlir:118:7
	addli r1, zero, 3
	bneq r5, r1, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	xwait r1, 0
	.loc	1 119 7                         # parallel-rne.mlir:119:7
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
.LBB0_29:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 31
.LBB0_30:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 116 13 is_stmt 1              # parallel-rne.mlir:116:13
	lui r2, 70
	.loc	1 121 7                         # parallel-rne.mlir:121:7
	xfence
	zext_int2long r[11:12], r1
	.loc	1 122 7                         # parallel-rne.mlir:122:7
	mfence { lm, sm, gm }
	.loc	1 116 13                        # parallel-rne.mlir:116:13
	add.s r20, r22, r2
	.loc	1 123 7                         # parallel-rne.mlir:123:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	store.d r[24:25], -8(r30)               # 8-byte Folded Spill
	.loc	1 124 7                         # parallel-rne.mlir:124:7
	beq r5, zero, .LBB0_34
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	beq r5, r8, .LBB0_65
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 182 7                         # parallel-rne.mlir:182:7
	loadli.w r1,  -48(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_96
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 211 7                         # parallel-rne.mlir:211:7
	addli r1, zero, 3
	beq r5, r1, .LBB0_127
	j .LBB0_158
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 124 7                         # parallel-rne.mlir:124:7
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_36
.LBB0_35:                               # %middle.block97
                                        #   in Loop: Header=BB0_36 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 7
	load.d r[5:6], -16(r30)                 # 8-byte Folded Reload
	addli r14, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 132 9 is_stmt 1               # parallel-rne.mlir:132:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	beq r1, zero, .LBB0_64
.LBB0_36:                               # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_45 Depth 3
                                        #       Child Loop BB0_39 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r14
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 133 11 is_stmt 1              # parallel-rne.mlir:133:11
	bneq r20, r22, .LBB0_43
# %bb.37:                               # %scalar.ph91.preheader
                                        #   in Loop: Header=BB0_36 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_39
.LBB0_38:                               # %scalar.ph91
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 133 11                        # parallel-rne.mlir:133:11
	setlt.ul r8, r[1:2], r[11:12]
	.loc	1 148 13 is_stmt 1              # parallel-rne.mlir:148:13
	add.s r3, r20, r3
	.loc	1 133 11                        # parallel-rne.mlir:133:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	stores.w r5, 0(r3)
	.loc	1 133 11                        # parallel-rne.mlir:133:11
	beq r8, zero, .LBB0_35
.LBB0_39:                               # %scalar.ph91
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	add.ul r[13:14], r[1:2], r[6:7]
	slli r3, r13, 2
	add.s r5, r22, r3
	loads.w r8, 0(r5)
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	and r10, r8, r15
	.loc	1 138 19                        # parallel-rne.mlir:138:19
	setlt.u r5, r28, r10
	.loc	1 139 19                        # parallel-rne.mlir:139:19
	bneq r5, zero, .LBB0_41
# %bb.40:                               # %scalar.ph91
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r8, 0
	.loc	1 145 19 is_stmt 1              # parallel-rne.mlir:145:19
	setlt.u r10, r18, r10
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	bneq r10, zero, .LBB0_38
	j .LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r8, r19
	.loc	1 145 19 is_stmt 1              # parallel-rne.mlir:145:19
	setlt.u r10, r18, r10
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	bneq r10, zero, .LBB0_38
.LBB0_42:                               # %scalar.ph91
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r8, 16
	andi r5, r5, 1
	add.s r5, r8, r5
	add.s r5, r5, r9
	and r5, r5, r4
	j .LBB0_38
.LBB0_43:                               # %vector.body93.preheader
                                        #   in Loop: Header=BB0_36 Depth=2
	zext_int2long r[2:3], zero
	j .LBB0_45
.LBB0_44:                               # %vector.body93
                                        #   in Loop: Header=BB0_45 Depth=3
	addli r1, zero, 32
	.loc	1 133 11 is_stmt 1              # parallel-rne.mlir:133:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	add.s r5, r20, r24
	zext_int2long r[13:14], r1
	stores.w r25, 8(r5)
	load.d r[24:25], -8(r30)                # 8-byte Folded Reload
	stores.w r10, 12(r5)
	stores.w r26, 4(r5)
	stores.w r27, 0(r5)
	.loc	1 133 11                        # parallel-rne.mlir:133:11
	seteq.d r1, r[2:3], r[13:14]
	bneq r1, zero, .LBB0_35
.LBB0_45:                               # %vector.body93
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	add.ul r[13:14], r[2:3], r[6:7]
	slli r24, r13, 2
	add.s r5, r22, r24
	loads.w r21, 12(r5)
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	and r13, r21, r15
	.loc	1 138 19                        # parallel-rne.mlir:138:19
	setlt.u r1, r28, r13
	.loc	1 139 19                        # parallel-rne.mlir:139:19
	bneq r1, zero, .LBB0_47
# %bb.46:                               # %vector.body93
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r21, 0
	j .LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_45 Depth=3
	or r10, r21, r19
.LBB0_48:                               # %vector.body93
                                        #   in Loop: Header=BB0_45 Depth=3
	loads.w r1, 8(r5)
	and r14, r1, r15
	setlt.u r8, r28, r14
	.loc	1 139 19                        # parallel-rne.mlir:139:19
	bneq r8, zero, .LBB0_50
# %bb.49:                               # %vector.body93
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r1, 0
	j .LBB0_51
.LBB0_50:                               #   in Loop: Header=BB0_45 Depth=3
	or r25, r1, r19
.LBB0_51:                               # %vector.body93
                                        #   in Loop: Header=BB0_45 Depth=3
	loads.w r8, 4(r5)
	and r23, r8, r15
	setlt.u r16, r28, r23
	.loc	1 139 19                        # parallel-rne.mlir:139:19
	bneq r16, zero, .LBB0_53
# %bb.52:                               # %vector.body93
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r8, 0
	j .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_45 Depth=3
	or r26, r8, r19
.LBB0_54:                               # %vector.body93
                                        #   in Loop: Header=BB0_45 Depth=3
	loads.w r5, 0(r5)
	and r16, r5, r15
	setlt.u r17, r28, r16
	.loc	1 139 19                        # parallel-rne.mlir:139:19
	bneq r17, zero, .LBB0_56
# %bb.55:                               # %vector.body93
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r5, 0
	.loc	1 145 19 is_stmt 1              # parallel-rne.mlir:145:19
	setlt.u r16, r18, r16
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	beq r16, zero, .LBB0_57
	j .LBB0_58
.LBB0_56:                               #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r5, r19
	.loc	1 145 19 is_stmt 1              # parallel-rne.mlir:145:19
	setlt.u r16, r18, r16
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	bneq r16, zero, .LBB0_58
.LBB0_57:                               # %vector.body93
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r5, 16
	andi r16, r16, 1
	add.s r5, r5, r16
	add.s r5, r5, r9
	and r27, r5, r4
.LBB0_58:                               # %vector.body93
                                        #   in Loop: Header=BB0_45 Depth=3
	setlt.u r5, r18, r23
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	beq r5, zero, .LBB0_61
# %bb.59:                               # %vector.body93
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r18, r14
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	beq r5, zero, .LBB0_62
.LBB0_60:                               # %vector.body93
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r13
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	bneq r1, zero, .LBB0_44
	j .LBB0_63
.LBB0_61:                               # %vector.body93
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r8, 16
	andi r5, r5, 1
	add.s r5, r8, r5
	add.s r5, r5, r9
	and r26, r5, r4
	setlt.u r5, r18, r14
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	bneq r5, zero, .LBB0_60
.LBB0_62:                               # %vector.body93
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	add.s r1, r1, r9
	and r25, r1, r4
	setlt.u r1, r18, r13
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	bneq r1, zero, .LBB0_44
.LBB0_63:                               # %vector.body93
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r9
	and r10, r1, r4
	j .LBB0_44
.LBB0_64:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r5
	addli r8, zero, 1
	.loc	1 124 7                         # parallel-rne.mlir:124:7
	mfence { sm }
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	bneq r5, r8, .LBB0_32
.LBB0_65:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_67
.LBB0_66:                               # %middle.block88
                                        #   in Loop: Header=BB0_67 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[5:6], -16(r30)                 # 8-byte Folded Reload
	addli r14, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 161 9 is_stmt 1               # parallel-rne.mlir:161:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	beq r1, zero, .LBB0_95
.LBB0_67:                               # %.preheader21
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_76 Depth 3
                                        #       Child Loop BB0_70 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r14
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 162 11 is_stmt 1              # parallel-rne.mlir:162:11
	bneq r20, r22, .LBB0_74
# %bb.68:                               # %scalar.ph82.preheader
                                        #   in Loop: Header=BB0_67 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_70
.LBB0_69:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 162 11                        # parallel-rne.mlir:162:11
	setlt.ul r8, r[1:2], r[11:12]
	.loc	1 177 13 is_stmt 1              # parallel-rne.mlir:177:13
	add.s r3, r20, r3
	.loc	1 162 11                        # parallel-rne.mlir:162:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 177 13                        # parallel-rne.mlir:177:13
	stores.w r5, 0(r3)
	.loc	1 162 11                        # parallel-rne.mlir:162:11
	beq r8, zero, .LBB0_66
.LBB0_70:                               # %scalar.ph82
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	add.ul r[13:14], r[1:2], r[6:7]
	slli r3, r13, 2
	add.s r5, r22, r3
	loads.w r8, 0(r5)
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	and r10, r8, r15
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	setlt.u r5, r28, r10
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	bneq r5, zero, .LBB0_72
# %bb.71:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r8, 0
	.loc	1 174 19 is_stmt 1              # parallel-rne.mlir:174:19
	setlt.u r10, r18, r10
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r10, zero, .LBB0_69
	j .LBB0_73
.LBB0_72:                               #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r8, r19
	.loc	1 174 19 is_stmt 1              # parallel-rne.mlir:174:19
	setlt.u r10, r18, r10
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r10, zero, .LBB0_69
.LBB0_73:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r8, 16
	andi r5, r5, 1
	add.s r5, r8, r5
	add.s r5, r5, r9
	and r5, r5, r4
	j .LBB0_69
.LBB0_74:                               # %vector.body84.preheader
                                        #   in Loop: Header=BB0_67 Depth=2
	zext_int2long r[2:3], zero
	j .LBB0_76
.LBB0_75:                               # %vector.body84
                                        #   in Loop: Header=BB0_76 Depth=3
	addli r1, zero, 32
	.loc	1 162 11 is_stmt 1              # parallel-rne.mlir:162:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 177 13                        # parallel-rne.mlir:177:13
	add.s r5, r20, r24
	zext_int2long r[13:14], r1
	stores.w r25, 8(r5)
	load.d r[24:25], -8(r30)                # 8-byte Folded Reload
	stores.w r10, 12(r5)
	stores.w r26, 4(r5)
	stores.w r27, 0(r5)
	.loc	1 162 11                        # parallel-rne.mlir:162:11
	seteq.d r1, r[2:3], r[13:14]
	bneq r1, zero, .LBB0_66
.LBB0_76:                               # %vector.body84
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	add.ul r[13:14], r[2:3], r[6:7]
	slli r24, r13, 2
	add.s r5, r22, r24
	loads.w r21, 12(r5)
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	and r13, r21, r15
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	setlt.u r1, r28, r13
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	bneq r1, zero, .LBB0_78
# %bb.77:                               # %vector.body84
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r21, 0
	j .LBB0_79
.LBB0_78:                               #   in Loop: Header=BB0_76 Depth=3
	or r10, r21, r19
.LBB0_79:                               # %vector.body84
                                        #   in Loop: Header=BB0_76 Depth=3
	loads.w r1, 8(r5)
	and r14, r1, r15
	setlt.u r8, r28, r14
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	bneq r8, zero, .LBB0_81
# %bb.80:                               # %vector.body84
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r1, 0
	j .LBB0_82
.LBB0_81:                               #   in Loop: Header=BB0_76 Depth=3
	or r25, r1, r19
.LBB0_82:                               # %vector.body84
                                        #   in Loop: Header=BB0_76 Depth=3
	loads.w r8, 4(r5)
	and r23, r8, r15
	setlt.u r16, r28, r23
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	bneq r16, zero, .LBB0_84
# %bb.83:                               # %vector.body84
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r8, 0
	j .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_76 Depth=3
	or r26, r8, r19
.LBB0_85:                               # %vector.body84
                                        #   in Loop: Header=BB0_76 Depth=3
	loads.w r5, 0(r5)
	and r16, r5, r15
	setlt.u r17, r28, r16
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	bneq r17, zero, .LBB0_91
# %bb.86:                               # %vector.body84
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r5, 0
	.loc	1 174 19 is_stmt 1              # parallel-rne.mlir:174:19
	setlt.u r16, r18, r16
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r16, zero, .LBB0_88
.LBB0_87:                               # %vector.body84
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r5, 16
	andi r16, r16, 1
	add.s r5, r5, r16
	add.s r5, r5, r9
	and r27, r5, r4
.LBB0_88:                               # %vector.body84
                                        #   in Loop: Header=BB0_76 Depth=3
	setlt.u r5, r18, r23
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	beq r5, zero, .LBB0_92
# %bb.89:                               # %vector.body84
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r18, r14
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	beq r5, zero, .LBB0_93
.LBB0_90:                               # %vector.body84
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r13
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r1, zero, .LBB0_75
	j .LBB0_94
.LBB0_91:                               #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r27, r5, r19
	.loc	1 174 19 is_stmt 1              # parallel-rne.mlir:174:19
	setlt.u r16, r18, r16
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	beq r16, zero, .LBB0_87
	j .LBB0_88
.LBB0_92:                               # %vector.body84
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r8, 16
	andi r5, r5, 1
	add.s r5, r8, r5
	add.s r5, r5, r9
	and r26, r5, r4
	setlt.u r5, r18, r14
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r5, zero, .LBB0_90
.LBB0_93:                               # %vector.body84
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	add.s r1, r1, r9
	and r25, r1, r4
	setlt.u r1, r18, r13
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r1, zero, .LBB0_75
.LBB0_94:                               # %vector.body84
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r9
	and r10, r1, r4
	j .LBB0_75
.LBB0_95:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r5
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	mfence { sm }
	.loc	1 182 7                         # parallel-rne.mlir:182:7
	loadli.w r1,  -48(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_33
.LBB0_96:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 182 7                         # parallel-rne.mlir:182:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_98
.LBB0_97:                               # %middle.block79
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[5:6], -16(r30)                 # 8-byte Folded Reload
	addli r14, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 190 9 is_stmt 1               # parallel-rne.mlir:190:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	beq r1, zero, .LBB0_126
.LBB0_98:                               # %.preheader20
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_107 Depth 3
                                        #       Child Loop BB0_101 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r14
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 191 11 is_stmt 1              # parallel-rne.mlir:191:11
	bneq r20, r22, .LBB0_105
# %bb.99:                               # %scalar.ph73.preheader
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_101
.LBB0_100:                              # %scalar.ph73
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 191 11                        # parallel-rne.mlir:191:11
	setlt.ul r8, r[1:2], r[11:12]
	.loc	1 206 13 is_stmt 1              # parallel-rne.mlir:206:13
	add.s r3, r20, r3
	.loc	1 191 11                        # parallel-rne.mlir:191:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 206 13                        # parallel-rne.mlir:206:13
	stores.w r5, 0(r3)
	.loc	1 191 11                        # parallel-rne.mlir:191:11
	beq r8, zero, .LBB0_97
.LBB0_101:                              # %scalar.ph73
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_98 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	add.ul r[13:14], r[1:2], r[6:7]
	slli r3, r13, 2
	add.s r5, r22, r3
	loads.w r8, 0(r5)
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	and r10, r8, r15
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	setlt.u r5, r28, r10
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	bneq r5, zero, .LBB0_103
# %bb.102:                              # %scalar.ph73
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r8, 0
	.loc	1 203 19 is_stmt 1              # parallel-rne.mlir:203:19
	setlt.u r10, r18, r10
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	bneq r10, zero, .LBB0_100
	j .LBB0_104
.LBB0_103:                              #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r8, r19
	.loc	1 203 19 is_stmt 1              # parallel-rne.mlir:203:19
	setlt.u r10, r18, r10
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	bneq r10, zero, .LBB0_100
.LBB0_104:                              # %scalar.ph73
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r8, 16
	andi r5, r5, 1
	add.s r5, r8, r5
	add.s r5, r5, r9
	and r5, r5, r4
	j .LBB0_100
.LBB0_105:                              # %vector.body75.preheader
                                        #   in Loop: Header=BB0_98 Depth=2
	zext_int2long r[2:3], zero
	j .LBB0_107
.LBB0_106:                              # %vector.body75
                                        #   in Loop: Header=BB0_107 Depth=3
	addli r1, zero, 32
	.loc	1 191 11 is_stmt 1              # parallel-rne.mlir:191:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 206 13                        # parallel-rne.mlir:206:13
	add.s r5, r20, r23
	zext_int2long r[13:14], r1
	stores.w r24, 8(r5)
	stores.w r25, 4(r5)
	load.d r[24:25], -8(r30)                # 8-byte Folded Reload
	stores.w r10, 12(r5)
	stores.w r26, 0(r5)
	.loc	1 191 11                        # parallel-rne.mlir:191:11
	seteq.d r1, r[2:3], r[13:14]
	bneq r1, zero, .LBB0_97
.LBB0_107:                              # %vector.body75
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_98 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	add.ul r[13:14], r[2:3], r[6:7]
	slli r23, r13, 2
	add.s r5, r22, r23
	loads.w r21, 12(r5)
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	and r13, r21, r15
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	setlt.u r1, r28, r13
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	bneq r1, zero, .LBB0_109
# %bb.108:                              # %vector.body75
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r21, 0
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_107 Depth=3
	or r10, r21, r19
.LBB0_110:                              # %vector.body75
                                        #   in Loop: Header=BB0_107 Depth=3
	loads.w r1, 8(r5)
	and r14, r1, r15
	setlt.u r8, r28, r14
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	bneq r8, zero, .LBB0_112
# %bb.111:                              # %vector.body75
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r1, 0
	j .LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_107 Depth=3
	or r24, r1, r19
.LBB0_113:                              # %vector.body75
                                        #   in Loop: Header=BB0_107 Depth=3
	loads.w r8, 4(r5)
	and r27, r8, r15
	setlt.u r16, r28, r27
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	bneq r16, zero, .LBB0_115
# %bb.114:                              # %vector.body75
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r8, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_107 Depth=3
	or r25, r8, r19
.LBB0_116:                              # %vector.body75
                                        #   in Loop: Header=BB0_107 Depth=3
	loads.w r5, 0(r5)
	and r16, r5, r15
	setlt.u r17, r28, r16
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	bneq r17, zero, .LBB0_122
# %bb.117:                              # %vector.body75
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r5, 0
	.loc	1 203 19 is_stmt 1              # parallel-rne.mlir:203:19
	setlt.u r16, r18, r16
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	bneq r16, zero, .LBB0_119
.LBB0_118:                              # %vector.body75
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r5, 16
	andi r16, r16, 1
	add.s r5, r5, r16
	add.s r5, r5, r9
	and r26, r5, r4
.LBB0_119:                              # %vector.body75
                                        #   in Loop: Header=BB0_107 Depth=3
	setlt.u r5, r18, r27
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	beq r5, zero, .LBB0_123
# %bb.120:                              # %vector.body75
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r18, r14
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	beq r5, zero, .LBB0_124
.LBB0_121:                              # %vector.body75
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r13
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	bneq r1, zero, .LBB0_106
	j .LBB0_125
.LBB0_122:                              #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r26, r5, r19
	.loc	1 203 19 is_stmt 1              # parallel-rne.mlir:203:19
	setlt.u r16, r18, r16
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	beq r16, zero, .LBB0_118
	j .LBB0_119
.LBB0_123:                              # %vector.body75
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r8, 16
	andi r5, r5, 1
	add.s r5, r8, r5
	add.s r5, r5, r9
	and r25, r5, r4
	setlt.u r5, r18, r14
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	bneq r5, zero, .LBB0_121
.LBB0_124:                              # %vector.body75
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	add.s r1, r1, r9
	and r24, r1, r4
	setlt.u r1, r18, r13
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	bneq r1, zero, .LBB0_106
.LBB0_125:                              # %vector.body75
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r9
	and r10, r1, r4
	j .LBB0_106
.LBB0_126:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r5
	.loc	1 182 7                         # parallel-rne.mlir:182:7
	mfence { sm }
	.loc	1 211 7                         # parallel-rne.mlir:211:7
	addli r1, zero, 3
	bneq r5, r1, .LBB0_158
.LBB0_127:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 211 7                         # parallel-rne.mlir:211:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_129
.LBB0_128:                              # %middle.block70
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[2:3], -16(r30)                 # 8-byte Folded Reload
	addli r14, zero, 5
	.loc	1 219 9 is_stmt 1               # parallel-rne.mlir:219:9
	setlt.ul r1, r[2:3], r[11:12]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_157
.LBB0_129:                              # %.preheader19
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_138 Depth 3
                                        #       Child Loop BB0_132 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r14
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 220 11 is_stmt 1              # parallel-rne.mlir:220:11
	bneq r20, r22, .LBB0_136
# %bb.130:                              # %scalar.ph64.preheader
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_132
.LBB0_131:                              # %scalar.ph64
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 220 11                        # parallel-rne.mlir:220:11
	setlt.ul r8, r[1:2], r[11:12]
	.loc	1 235 13 is_stmt 1              # parallel-rne.mlir:235:13
	add.s r3, r20, r3
	.loc	1 220 11                        # parallel-rne.mlir:220:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 235 13                        # parallel-rne.mlir:235:13
	stores.w r5, 0(r3)
	.loc	1 220 11                        # parallel-rne.mlir:220:11
	beq r8, zero, .LBB0_128
.LBB0_132:                              # %scalar.ph64
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	add.ul r[13:14], r[1:2], r[6:7]
	slli r3, r13, 2
	add.s r5, r22, r3
	loads.w r8, 0(r5)
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	and r10, r8, r15
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	setlt.u r5, r28, r10
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r5, zero, .LBB0_134
# %bb.133:                              # %scalar.ph64
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r8, 0
	.loc	1 232 19 is_stmt 1              # parallel-rne.mlir:232:19
	setlt.u r10, r18, r10
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r10, zero, .LBB0_131
	j .LBB0_135
.LBB0_134:                              #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r8, r19
	.loc	1 232 19 is_stmt 1              # parallel-rne.mlir:232:19
	setlt.u r10, r18, r10
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r10, zero, .LBB0_131
.LBB0_135:                              # %scalar.ph64
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r8, 16
	andi r5, r5, 1
	add.s r5, r8, r5
	add.s r5, r5, r9
	and r5, r5, r4
	j .LBB0_131
.LBB0_136:                              # %vector.body66.preheader
                                        #   in Loop: Header=BB0_129 Depth=2
	zext_int2long r[2:3], zero
	j .LBB0_138
.LBB0_137:                              # %vector.body66
                                        #   in Loop: Header=BB0_138 Depth=3
	addli r1, zero, 32
	.loc	1 220 11 is_stmt 1              # parallel-rne.mlir:220:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 235 13                        # parallel-rne.mlir:235:13
	add.s r5, r20, r23
	zext_int2long r[13:14], r1
	stores.w r24, 8(r5)
	stores.w r25, 4(r5)
	load.d r[24:25], -8(r30)                # 8-byte Folded Reload
	stores.w r10, 12(r5)
	stores.w r26, 0(r5)
	.loc	1 220 11                        # parallel-rne.mlir:220:11
	seteq.d r1, r[2:3], r[13:14]
	bneq r1, zero, .LBB0_128
.LBB0_138:                              # %vector.body66
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	add.ul r[13:14], r[2:3], r[6:7]
	slli r23, r13, 2
	add.s r5, r22, r23
	loads.w r21, 12(r5)
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	and r13, r21, r15
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	setlt.u r1, r28, r13
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r1, zero, .LBB0_140
# %bb.139:                              # %vector.body66
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r21, 0
	j .LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_138 Depth=3
	or r10, r21, r19
.LBB0_141:                              # %vector.body66
                                        #   in Loop: Header=BB0_138 Depth=3
	loads.w r1, 8(r5)
	and r14, r1, r15
	setlt.u r8, r28, r14
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r8, zero, .LBB0_143
# %bb.142:                              # %vector.body66
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r1, 0
	j .LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_138 Depth=3
	or r24, r1, r19
.LBB0_144:                              # %vector.body66
                                        #   in Loop: Header=BB0_138 Depth=3
	loads.w r8, 4(r5)
	and r27, r8, r15
	setlt.u r16, r28, r27
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r16, zero, .LBB0_146
# %bb.145:                              # %vector.body66
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r8, 0
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_138 Depth=3
	or r25, r8, r19
.LBB0_147:                              # %vector.body66
                                        #   in Loop: Header=BB0_138 Depth=3
	loads.w r5, 0(r5)
	and r16, r5, r15
	setlt.u r17, r28, r16
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r17, zero, .LBB0_153
# %bb.148:                              # %vector.body66
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r5, 0
	.loc	1 232 19 is_stmt 1              # parallel-rne.mlir:232:19
	setlt.u r16, r18, r16
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r16, zero, .LBB0_150
.LBB0_149:                              # %vector.body66
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r5, 16
	andi r16, r16, 1
	add.s r5, r5, r16
	add.s r5, r5, r9
	and r26, r5, r4
.LBB0_150:                              # %vector.body66
                                        #   in Loop: Header=BB0_138 Depth=3
	setlt.u r5, r18, r27
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	beq r5, zero, .LBB0_154
# %bb.151:                              # %vector.body66
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r18, r14
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	beq r5, zero, .LBB0_155
.LBB0_152:                              # %vector.body66
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r13
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r1, zero, .LBB0_137
	j .LBB0_156
.LBB0_153:                              #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r26, r5, r19
	.loc	1 232 19 is_stmt 1              # parallel-rne.mlir:232:19
	setlt.u r16, r18, r16
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	beq r16, zero, .LBB0_149
	j .LBB0_150
.LBB0_154:                              # %vector.body66
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r8, 16
	andi r5, r5, 1
	add.s r5, r8, r5
	add.s r5, r5, r9
	and r25, r5, r4
	setlt.u r5, r18, r14
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r5, zero, .LBB0_152
.LBB0_155:                              # %vector.body66
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	add.s r1, r1, r9
	and r24, r1, r4
	setlt.u r1, r18, r13
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r1, zero, .LBB0_137
.LBB0_156:                              # %vector.body66
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r9
	and r10, r1, r4
	j .LBB0_137
.LBB0_157:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r5
	.loc	1 211 7                         # parallel-rne.mlir:211:7
	mfence { sm }
.LBB0_158:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	zext_int2long r[1:2], r1
	.loc	1 240 7 is_stmt 1               # parallel-rne.mlir:240:7
	store.d r[1:2], -16(r30)                # 8-byte Folded Spill
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_162
# %bb.159:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 269 7                         # parallel-rne.mlir:269:7
	beq r5, r14, .LBB0_193
.LBB0_160:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 298 7                         # parallel-rne.mlir:298:7
	addli r1, zero, 6
	beq r5, r1, .LBB0_224
.LBB0_161:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 327 7                         # parallel-rne.mlir:327:7
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_255
	j .LBB0_286
.LBB0_162:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 240 7                         # parallel-rne.mlir:240:7
	xfence
	mfence { lm, sm, gm }
	load.d r[2:3], -16(r30)                 # 8-byte Folded Reload
	j .LBB0_164
.LBB0_163:                              # %middle.block61
                                        #   in Loop: Header=BB0_164 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 39
	load.d r[5:6], -24(r30)                 # 8-byte Folded Reload
	addli r14, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 248 9 is_stmt 1               # parallel-rne.mlir:248:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	beq r1, zero, .LBB0_192
.LBB0_164:                              # %.preheader18
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_173 Depth 3
                                        #       Child Loop BB0_167 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[2:3], -24(r30)                # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r14
	.loc	1 249 11 is_stmt 1              # parallel-rne.mlir:249:11
	bneq r20, r22, .LBB0_171
# %bb.165:                              # %scalar.ph55.preheader
                                        #   in Loop: Header=BB0_164 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[13:14], zero
	j .LBB0_167
.LBB0_166:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 249 11                        # parallel-rne.mlir:249:11
	setlt.ul r6, r[13:14], r[11:12]
	.loc	1 264 13 is_stmt 1              # parallel-rne.mlir:264:13
	add.s r1, r20, r1
	.loc	1 249 11                        # parallel-rne.mlir:249:11
	addli.d r[13:14], r[13:14], 1
	.loc	1 264 13                        # parallel-rne.mlir:264:13
	stores.w r5, 0(r1)
	.loc	1 249 11                        # parallel-rne.mlir:249:11
	beq r6, zero, .LBB0_163
.LBB0_167:                              # %scalar.ph55
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_164 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	add.ul r[5:6], r[13:14], r[2:3]
	slli r1, r5, 2
	add.s r5, r22, r1
	loads.w r6, 0(r5)
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	and r7, r6, r15
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	setlt.u r5, r28, r7
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r5, zero, .LBB0_169
# %bb.168:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 261 19 is_stmt 1              # parallel-rne.mlir:261:19
	setlt.u r7, r18, r7
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r7, zero, .LBB0_166
	j .LBB0_170
.LBB0_169:                              #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r6, r19
	.loc	1 261 19 is_stmt 1              # parallel-rne.mlir:261:19
	setlt.u r7, r18, r7
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r7, zero, .LBB0_166
.LBB0_170:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r9
	and r5, r5, r4
	j .LBB0_166
.LBB0_171:                              # %vector.body57.preheader
                                        #   in Loop: Header=BB0_164 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_173
.LBB0_172:                              # %vector.body57
                                        #   in Loop: Header=BB0_173 Depth=3
	addli r1, zero, 32
	.loc	1 249 11 is_stmt 1              # parallel-rne.mlir:249:11
	addli.d r[23:24], r[23:24], 4
	zext_int2long r[6:7], r1
	seteq.d r1, r[23:24], r[6:7]
	.loc	1 264 13                        # parallel-rne.mlir:264:13
	add.s r6, r20, r10
	stores.w r13, 12(r6)
	stores.w r27, 8(r6)
	stores.w r5, 4(r6)
	stores.w r14, 0(r6)
	.loc	1 249 11                        # parallel-rne.mlir:249:11
	bneq r1, zero, .LBB0_163
.LBB0_173:                              # %vector.body57
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_164 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	add.ul r[5:6], r[23:24], r[2:3]
	slli r10, r5, 2
	add.s r14, r22, r10
	loads.w r21, 12(r14)
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	and r25, r21, r15
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	setlt.u r1, r28, r25
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r1, zero, .LBB0_175
# %bb.174:                              # %vector.body57
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r21, 0
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_173 Depth=3
	or r13, r21, r19
.LBB0_176:                              # %vector.body57
                                        #   in Loop: Header=BB0_173 Depth=3
	loads.w r26, 8(r14)
	and r8, r26, r15
	setlt.u r1, r28, r8
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r1, zero, .LBB0_178
# %bb.177:                              # %vector.body57
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r26, 0
	j .LBB0_179
.LBB0_178:                              #   in Loop: Header=BB0_173 Depth=3
	or r27, r26, r19
.LBB0_179:                              # %vector.body57
                                        #   in Loop: Header=BB0_173 Depth=3
	loads.w r1, 4(r14)
	and r6, r1, r15
	setlt.u r5, r28, r6
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r5, zero, .LBB0_181
# %bb.180:                              # %vector.body57
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r1, 0
	j .LBB0_182
.LBB0_181:                              #   in Loop: Header=BB0_173 Depth=3
	or r5, r1, r19
.LBB0_182:                              # %vector.body57
                                        #   in Loop: Header=BB0_173 Depth=3
	loads.w r7, 0(r14)
	and r16, r7, r15
	setlt.u r14, r28, r16
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r14, zero, .LBB0_188
# %bb.183:                              # %vector.body57
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r7, 0
	.loc	1 261 19 is_stmt 1              # parallel-rne.mlir:261:19
	setlt.u r16, r18, r16
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r16, zero, .LBB0_185
.LBB0_184:                              # %vector.body57
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r7, 16
	andi r14, r14, 1
	add.s r7, r7, r14
	add.s r7, r7, r9
	and r14, r7, r4
.LBB0_185:                              # %vector.body57
                                        #   in Loop: Header=BB0_173 Depth=3
	setlt.u r6, r18, r6
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	beq r6, zero, .LBB0_189
# %bb.186:                              # %vector.body57
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r8
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	beq r1, zero, .LBB0_190
.LBB0_187:                              # %vector.body57
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r25
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r1, zero, .LBB0_172
	j .LBB0_191
.LBB0_188:                              #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r14, r7, r19
	.loc	1 261 19 is_stmt 1              # parallel-rne.mlir:261:19
	setlt.u r16, r18, r16
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	beq r16, zero, .LBB0_184
	j .LBB0_185
.LBB0_189:                              # %vector.body57
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	add.s r1, r1, r9
	and r5, r1, r4
	setlt.u r1, r18, r8
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r1, zero, .LBB0_187
.LBB0_190:                              # %vector.body57
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r9
	and r27, r1, r4
	setlt.u r1, r18, r25
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r1, zero, .LBB0_172
.LBB0_191:                              # %vector.body57
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r9
	and r13, r1, r4
	j .LBB0_172
.LBB0_192:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 240 7 is_stmt 1               # parallel-rne.mlir:240:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r5
	load.d r[24:25], -8(r30)                # 8-byte Folded Reload
	.loc	1 269 7                         # parallel-rne.mlir:269:7
	bneq r5, r14, .LBB0_160
.LBB0_193:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 269 7                         # parallel-rne.mlir:269:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_195
.LBB0_194:                              # %middle.block52
                                        #   in Loop: Header=BB0_195 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[5:6], -24(r30)                 # 8-byte Folded Reload
	addli r14, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 277 9 is_stmt 1               # parallel-rne.mlir:277:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	beq r1, zero, .LBB0_223
.LBB0_195:                              # %.preheader17
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_204 Depth 3
                                        #       Child Loop BB0_198 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[2:3], -24(r30)                # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r14
	.loc	1 278 11 is_stmt 1              # parallel-rne.mlir:278:11
	bneq r20, r22, .LBB0_202
# %bb.196:                              # %scalar.ph46.preheader
                                        #   in Loop: Header=BB0_195 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[13:14], zero
	j .LBB0_198
.LBB0_197:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 278 11                        # parallel-rne.mlir:278:11
	setlt.ul r6, r[13:14], r[11:12]
	.loc	1 293 13 is_stmt 1              # parallel-rne.mlir:293:13
	add.s r1, r20, r1
	.loc	1 278 11                        # parallel-rne.mlir:278:11
	addli.d r[13:14], r[13:14], 1
	.loc	1 293 13                        # parallel-rne.mlir:293:13
	stores.w r5, 0(r1)
	.loc	1 278 11                        # parallel-rne.mlir:278:11
	beq r6, zero, .LBB0_194
.LBB0_198:                              # %scalar.ph46
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_195 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	add.ul r[5:6], r[13:14], r[2:3]
	slli r1, r5, 2
	add.s r5, r22, r1
	loads.w r6, 0(r5)
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	and r7, r6, r15
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	setlt.u r5, r28, r7
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r5, zero, .LBB0_200
# %bb.199:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 290 19 is_stmt 1              # parallel-rne.mlir:290:19
	setlt.u r7, r18, r7
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r7, zero, .LBB0_197
	j .LBB0_201
.LBB0_200:                              #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r6, r19
	.loc	1 290 19 is_stmt 1              # parallel-rne.mlir:290:19
	setlt.u r7, r18, r7
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r7, zero, .LBB0_197
.LBB0_201:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r9
	and r5, r5, r4
	j .LBB0_197
.LBB0_202:                              # %vector.body48.preheader
                                        #   in Loop: Header=BB0_195 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_204
.LBB0_203:                              # %vector.body48
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 278 11 is_stmt 1              # parallel-rne.mlir:278:11
	load.d r[5:6], -16(r30)                 # 8-byte Folded Reload
	addli.d r[23:24], r[23:24], 4
	seteq.d r5, r[23:24], r[5:6]
	.loc	1 293 13                        # parallel-rne.mlir:293:13
	add.s r6, r20, r10
	stores.w r21, 12(r6)
	stores.w r26, 8(r6)
	stores.w r1, 4(r6)
	stores.w r14, 0(r6)
	.loc	1 278 11                        # parallel-rne.mlir:278:11
	bneq r5, zero, .LBB0_194
.LBB0_204:                              # %vector.body48
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_195 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	add.ul r[5:6], r[23:24], r[2:3]
	slli r10, r5, 2
	add.s r14, r22, r10
	loads.w r13, 12(r14)
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	and r25, r13, r15
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	setlt.u r1, r28, r25
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r1, zero, .LBB0_206
# %bb.205:                              # %vector.body48
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r13, 0
	j .LBB0_207
.LBB0_206:                              #   in Loop: Header=BB0_204 Depth=3
	or r21, r13, r19
.LBB0_207:                              # %vector.body48
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r27, 8(r14)
	and r8, r27, r15
	setlt.u r1, r28, r8
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r1, zero, .LBB0_209
# %bb.208:                              # %vector.body48
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_210
.LBB0_209:                              #   in Loop: Header=BB0_204 Depth=3
	or r26, r27, r19
.LBB0_210:                              # %vector.body48
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r5, 4(r14)
	and r6, r5, r15
	setlt.u r1, r28, r6
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r1, zero, .LBB0_212
# %bb.211:                              # %vector.body48
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r5, 0
	j .LBB0_213
.LBB0_212:                              #   in Loop: Header=BB0_204 Depth=3
	or r1, r5, r19
.LBB0_213:                              # %vector.body48
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r7, 0(r14)
	and r16, r7, r15
	setlt.u r14, r28, r16
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r14, zero, .LBB0_219
# %bb.214:                              # %vector.body48
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r7, 0
	.loc	1 290 19 is_stmt 1              # parallel-rne.mlir:290:19
	setlt.u r16, r18, r16
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r16, zero, .LBB0_216
.LBB0_215:                              # %vector.body48
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r7, 16
	andi r14, r14, 1
	add.s r7, r7, r14
	add.s r7, r7, r9
	and r14, r7, r4
.LBB0_216:                              # %vector.body48
                                        #   in Loop: Header=BB0_204 Depth=3
	setlt.u r6, r18, r6
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	beq r6, zero, .LBB0_220
# %bb.217:                              # %vector.body48
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r18, r8
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	beq r5, zero, .LBB0_221
.LBB0_218:                              # %vector.body48
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r18, r25
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r5, zero, .LBB0_203
	j .LBB0_222
.LBB0_219:                              #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r14, r7, r19
	.loc	1 290 19 is_stmt 1              # parallel-rne.mlir:290:19
	setlt.u r16, r18, r16
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	beq r16, zero, .LBB0_215
	j .LBB0_216
.LBB0_220:                              # %vector.body48
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r5, 16
	andi r1, r1, 1
	add.s r1, r5, r1
	add.s r1, r1, r9
	and r1, r1, r4
	setlt.u r5, r18, r8
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r5, zero, .LBB0_218
.LBB0_221:                              # %vector.body48
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r9
	and r26, r5, r4
	setlt.u r5, r18, r25
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r5, zero, .LBB0_203
.LBB0_222:                              # %vector.body48
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r13, 16
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r9
	and r21, r5, r4
	j .LBB0_203
.LBB0_223:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 269 7 is_stmt 1               # parallel-rne.mlir:269:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r5
	load.d r[24:25], -8(r30)                # 8-byte Folded Reload
	.loc	1 298 7                         # parallel-rne.mlir:298:7
	addli r1, zero, 6
	bneq r5, r1, .LBB0_161
.LBB0_224:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 48
	.loc	1 298 7                         # parallel-rne.mlir:298:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_226
.LBB0_225:                              # %middle.block43
                                        #   in Loop: Header=BB0_226 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 55
	load.d r[5:6], -24(r30)                 # 8-byte Folded Reload
	addli r14, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 306 9 is_stmt 1               # parallel-rne.mlir:306:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	beq r1, zero, .LBB0_254
.LBB0_226:                              # %.preheader16
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_235 Depth 3
                                        #       Child Loop BB0_229 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[2:3], -24(r30)                # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r14
	.loc	1 307 11 is_stmt 1              # parallel-rne.mlir:307:11
	bneq r20, r22, .LBB0_233
# %bb.227:                              # %scalar.ph37.preheader
                                        #   in Loop: Header=BB0_226 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[13:14], zero
	j .LBB0_229
.LBB0_228:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_229 Depth=3
	.loc	1 307 11                        # parallel-rne.mlir:307:11
	setlt.ul r6, r[13:14], r[11:12]
	.loc	1 322 13 is_stmt 1              # parallel-rne.mlir:322:13
	add.s r1, r20, r1
	.loc	1 307 11                        # parallel-rne.mlir:307:11
	addli.d r[13:14], r[13:14], 1
	.loc	1 322 13                        # parallel-rne.mlir:322:13
	stores.w r5, 0(r1)
	.loc	1 307 11                        # parallel-rne.mlir:307:11
	beq r6, zero, .LBB0_225
.LBB0_229:                              # %scalar.ph37
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_226 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	add.ul r[5:6], r[13:14], r[2:3]
	slli r1, r5, 2
	add.s r5, r22, r1
	loads.w r6, 0(r5)
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	and r7, r6, r15
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	setlt.u r5, r28, r7
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	bneq r5, zero, .LBB0_231
# %bb.230:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_229 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 319 19 is_stmt 1              # parallel-rne.mlir:319:19
	setlt.u r7, r18, r7
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r7, zero, .LBB0_228
	j .LBB0_232
.LBB0_231:                              #   in Loop: Header=BB0_229 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r6, r19
	.loc	1 319 19 is_stmt 1              # parallel-rne.mlir:319:19
	setlt.u r7, r18, r7
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r7, zero, .LBB0_228
.LBB0_232:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_229 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r9
	and r5, r5, r4
	j .LBB0_228
.LBB0_233:                              # %vector.body39.preheader
                                        #   in Loop: Header=BB0_226 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_235
.LBB0_234:                              # %vector.body39
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 307 11 is_stmt 1              # parallel-rne.mlir:307:11
	load.d r[5:6], -16(r30)                 # 8-byte Folded Reload
	addli.d r[23:24], r[23:24], 4
	seteq.d r5, r[23:24], r[5:6]
	.loc	1 322 13                        # parallel-rne.mlir:322:13
	add.s r6, r20, r10
	stores.w r21, 12(r6)
	stores.w r26, 8(r6)
	stores.w r1, 4(r6)
	stores.w r14, 0(r6)
	.loc	1 307 11                        # parallel-rne.mlir:307:11
	bneq r5, zero, .LBB0_225
.LBB0_235:                              # %vector.body39
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_226 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	add.ul r[5:6], r[23:24], r[2:3]
	slli r10, r5, 2
	add.s r14, r22, r10
	loads.w r13, 12(r14)
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	and r25, r13, r15
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	setlt.u r1, r28, r25
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	bneq r1, zero, .LBB0_237
# %bb.236:                              # %vector.body39
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r13, 0
	j .LBB0_238
.LBB0_237:                              #   in Loop: Header=BB0_235 Depth=3
	or r21, r13, r19
.LBB0_238:                              # %vector.body39
                                        #   in Loop: Header=BB0_235 Depth=3
	loads.w r27, 8(r14)
	and r8, r27, r15
	setlt.u r1, r28, r8
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	bneq r1, zero, .LBB0_240
# %bb.239:                              # %vector.body39
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_241
.LBB0_240:                              #   in Loop: Header=BB0_235 Depth=3
	or r26, r27, r19
.LBB0_241:                              # %vector.body39
                                        #   in Loop: Header=BB0_235 Depth=3
	loads.w r5, 4(r14)
	and r6, r5, r15
	setlt.u r1, r28, r6
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	bneq r1, zero, .LBB0_243
# %bb.242:                              # %vector.body39
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r5, 0
	j .LBB0_244
.LBB0_243:                              #   in Loop: Header=BB0_235 Depth=3
	or r1, r5, r19
.LBB0_244:                              # %vector.body39
                                        #   in Loop: Header=BB0_235 Depth=3
	loads.w r7, 0(r14)
	and r16, r7, r15
	setlt.u r14, r28, r16
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	bneq r14, zero, .LBB0_250
# %bb.245:                              # %vector.body39
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r7, 0
	.loc	1 319 19 is_stmt 1              # parallel-rne.mlir:319:19
	setlt.u r16, r18, r16
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r16, zero, .LBB0_247
.LBB0_246:                              # %vector.body39
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r7, 16
	andi r14, r14, 1
	add.s r7, r7, r14
	add.s r7, r7, r9
	and r14, r7, r4
.LBB0_247:                              # %vector.body39
                                        #   in Loop: Header=BB0_235 Depth=3
	setlt.u r6, r18, r6
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	beq r6, zero, .LBB0_251
# %bb.248:                              # %vector.body39
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r18, r8
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	beq r5, zero, .LBB0_252
.LBB0_249:                              # %vector.body39
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r18, r25
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r5, zero, .LBB0_234
	j .LBB0_253
.LBB0_250:                              #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r14, r7, r19
	.loc	1 319 19 is_stmt 1              # parallel-rne.mlir:319:19
	setlt.u r16, r18, r16
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	beq r16, zero, .LBB0_246
	j .LBB0_247
.LBB0_251:                              # %vector.body39
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r5, 16
	andi r1, r1, 1
	add.s r1, r5, r1
	add.s r1, r1, r9
	and r1, r1, r4
	setlt.u r5, r18, r8
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r5, zero, .LBB0_249
.LBB0_252:                              # %vector.body39
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r9
	and r26, r5, r4
	setlt.u r5, r18, r25
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r5, zero, .LBB0_234
.LBB0_253:                              # %vector.body39
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r13, 16
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r9
	and r21, r5, r4
	j .LBB0_234
.LBB0_254:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 298 7 is_stmt 1               # parallel-rne.mlir:298:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r5
	load.d r[24:25], -8(r30)                # 8-byte Folded Reload
	.loc	1 327 7                         # parallel-rne.mlir:327:7
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_286
.LBB0_255:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 327 7                         # parallel-rne.mlir:327:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_257
.LBB0_256:                              # %middle.block
                                        #   in Loop: Header=BB0_257 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 63
	load.d r[5:6], -24(r30)                 # 8-byte Folded Reload
	addli r14, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 335 9 is_stmt 1               # parallel-rne.mlir:335:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	beq r1, zero, .LBB0_285
.LBB0_257:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_266 Depth 3
                                        #       Child Loop BB0_260 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[2:3], -24(r30)                # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r14
	.loc	1 336 11 is_stmt 1              # parallel-rne.mlir:336:11
	bneq r20, r22, .LBB0_264
# %bb.258:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_257 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[13:14], zero
	j .LBB0_260
.LBB0_259:                              # %scalar.ph
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 336 11                        # parallel-rne.mlir:336:11
	setlt.ul r6, r[13:14], r[11:12]
	.loc	1 351 13 is_stmt 1              # parallel-rne.mlir:351:13
	add.s r1, r20, r1
	.loc	1 336 11                        # parallel-rne.mlir:336:11
	addli.d r[13:14], r[13:14], 1
	.loc	1 351 13                        # parallel-rne.mlir:351:13
	stores.w r5, 0(r1)
	.loc	1 336 11                        # parallel-rne.mlir:336:11
	beq r6, zero, .LBB0_256
.LBB0_260:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_257 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	add.ul r[5:6], r[13:14], r[2:3]
	slli r1, r5, 2
	add.s r5, r22, r1
	loads.w r6, 0(r5)
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	and r7, r6, r15
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	setlt.u r5, r28, r7
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	bneq r5, zero, .LBB0_262
# %bb.261:                              # %scalar.ph
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 348 19 is_stmt 1              # parallel-rne.mlir:348:19
	setlt.u r7, r18, r7
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r7, zero, .LBB0_259
	j .LBB0_263
.LBB0_262:                              #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r6, r19
	.loc	1 348 19 is_stmt 1              # parallel-rne.mlir:348:19
	setlt.u r7, r18, r7
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r7, zero, .LBB0_259
.LBB0_263:                              # %scalar.ph
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r9
	and r5, r5, r4
	j .LBB0_259
.LBB0_264:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_257 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_266
.LBB0_265:                              # %vector.body
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 336 11 is_stmt 1              # parallel-rne.mlir:336:11
	load.d r[5:6], -16(r30)                 # 8-byte Folded Reload
	addli.d r[23:24], r[23:24], 4
	seteq.d r5, r[23:24], r[5:6]
	.loc	1 351 13                        # parallel-rne.mlir:351:13
	add.s r6, r20, r10
	stores.w r21, 12(r6)
	stores.w r26, 8(r6)
	stores.w r1, 4(r6)
	stores.w r14, 0(r6)
	.loc	1 336 11                        # parallel-rne.mlir:336:11
	bneq r5, zero, .LBB0_256
.LBB0_266:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_257 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	add.ul r[5:6], r[23:24], r[2:3]
	slli r10, r5, 2
	add.s r14, r22, r10
	loads.w r13, 12(r14)
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	and r25, r13, r15
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	setlt.u r1, r28, r25
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	bneq r1, zero, .LBB0_268
# %bb.267:                              # %vector.body
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r13, 0
	j .LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_266 Depth=3
	or r21, r13, r19
.LBB0_269:                              # %vector.body
                                        #   in Loop: Header=BB0_266 Depth=3
	loads.w r27, 8(r14)
	and r8, r27, r15
	setlt.u r1, r28, r8
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	bneq r1, zero, .LBB0_271
# %bb.270:                              # %vector.body
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_272
.LBB0_271:                              #   in Loop: Header=BB0_266 Depth=3
	or r26, r27, r19
.LBB0_272:                              # %vector.body
                                        #   in Loop: Header=BB0_266 Depth=3
	loads.w r5, 4(r14)
	and r6, r5, r15
	setlt.u r1, r28, r6
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	bneq r1, zero, .LBB0_274
# %bb.273:                              # %vector.body
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r5, 0
	j .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_266 Depth=3
	or r1, r5, r19
.LBB0_275:                              # %vector.body
                                        #   in Loop: Header=BB0_266 Depth=3
	loads.w r7, 0(r14)
	and r16, r7, r15
	setlt.u r14, r28, r16
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	bneq r14, zero, .LBB0_281
# %bb.276:                              # %vector.body
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r7, 0
	.loc	1 348 19 is_stmt 1              # parallel-rne.mlir:348:19
	setlt.u r16, r18, r16
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r16, zero, .LBB0_278
.LBB0_277:                              # %vector.body
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r7, 16
	andi r14, r14, 1
	add.s r7, r7, r14
	add.s r7, r7, r9
	and r14, r7, r4
.LBB0_278:                              # %vector.body
                                        #   in Loop: Header=BB0_266 Depth=3
	setlt.u r6, r18, r6
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	beq r6, zero, .LBB0_282
# %bb.279:                              # %vector.body
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r18, r8
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	beq r5, zero, .LBB0_283
.LBB0_280:                              # %vector.body
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r18, r25
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r5, zero, .LBB0_265
	j .LBB0_284
.LBB0_281:                              #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r14, r7, r19
	.loc	1 348 19 is_stmt 1              # parallel-rne.mlir:348:19
	setlt.u r16, r18, r16
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	beq r16, zero, .LBB0_277
	j .LBB0_278
.LBB0_282:                              # %vector.body
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r5, 16
	andi r1, r1, 1
	add.s r1, r5, r1
	add.s r1, r1, r9
	and r1, r1, r4
	setlt.u r5, r18, r8
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r5, zero, .LBB0_280
.LBB0_283:                              # %vector.body
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r9
	and r26, r5, r4
	setlt.u r5, r18, r25
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r5, zero, .LBB0_265
.LBB0_284:                              # %vector.body
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r13, 16
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r9
	and r21, r5, r4
	j .LBB0_265
.LBB0_285:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 327 7 is_stmt 1               # parallel-rne.mlir:327:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r5
	load.d r[24:25], -8(r30)                # 8-byte Folded Reload
.LBB0_286:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 356 7                         # parallel-rne.mlir:356:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 357 7                         # parallel-rne.mlir:357:7
	addli r1, zero, 3
	.loc	1 356 7                         # parallel-rne.mlir:356:7
	sync_core
	.loc	1 357 7                         # parallel-rne.mlir:357:7
	beq r5, r1, .LBB0_5
# %bb.287:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[12:13], -40(r30)               # 8-byte Folded Reload
	loadli.w r10,  -28(r30)                 # 4-byte Folded Reload
	addli r20, zero, 2
	.loc	1 374 7 is_stmt 1               # parallel-rne.mlir:374:7
	bneq r5, zero, .LBB0_6
# %bb.288:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -76(r30)                  # 4-byte Folded Reload
	addli r2, zero, 992
	addli r17, r10, 0
	addli r16, zero, 64
	zext_int2long r[2:3], r2
	slli r1, r1, 5
	.loc	1 364 13 is_stmt 1              # parallel-rne.mlir:364:13
	zext_int2long r[5:6], r1
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	min.ul r[1:2], r[5:6], r[2:3]
	loadli.w r3,  -60(r30)                  # 4-byte Folded Reload
	addli.d r[1:2], r[1:2], 32
	slli r3, r3, 6
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	max.ul r[1:2], r[1:2], r[5:6]
	.loc	1 359 13                        # parallel-rne.mlir:359:13
	sext_int2long r[7:8], r3
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	addli r3, zero, 17
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	sub.sl r[1:2], r[1:2], r[5:6]
	.loc	1 361 13                        # parallel-rne.mlir:361:13
	min.sl r[10:11], r[7:8], r[24:25]
	addli.d r[5:6], r[10:11], 64
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	load.d r[10:11], -16(r30)               # 8-byte Folded Reload
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	max.sl r[5:6], r[5:6], r[7:8]
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	min.ul r[1:2], r[1:2], r[10:11]
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	load.d r[10:11], -56(r30)               # 8-byte Folded Reload
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	sub.sl r[5:6], r[5:6], r[7:8]
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	load.d r[7:8], 16(r30)
	sll.d r[10:11], r[10:11], r3
	addli r3, zero, 12
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	min.sl r[5:6], r[5:6], r[24:25]
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	add.ul r[7:8], r[7:8], r[10:11]
	load.d r[10:11], -72(r30)               # 8-byte Folded Reload
	xwait r3, 0
	lui r3, 70
	lock zero, r14
	ori r3, r3, 64
	add.ul r[7:8], r[7:8], r[10:11]
	addli r11, zero, 1
	addli r10, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	add.s r3, r22, r3
	dma_cfg r11, r11, zero, 0
	andi r1, r1, 62
	dma_cfg zero, r11, zero, 1
	dma_cfg r8, zero, zero, 2
	dma_cfg r7, r3, r16, 3
	srli r3, r10, 5
	addli r10, r17, 0
	dma_cfg r16, r2, r3, 4
	addli r3, zero, 2048
	dma_cfg r3, r2, r5, 5
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r5
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r14
	xsignal r1, 0
	j .LBB0_6
.LBB0_289:                              # %._crit_edge
	.loc	1 376 5                         # parallel-rne.mlir:376:5
	xsignal zero, 0
	bneq r5, zero, .LBB0_291
# %bb.290:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 376 5                         # parallel-rne.mlir:376:5
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
.LBB0_291:
	.loc	1 377 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:377:5
	addli sp, sp, 104
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
	.long	168                             # 0xa8
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-imesijy4" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
