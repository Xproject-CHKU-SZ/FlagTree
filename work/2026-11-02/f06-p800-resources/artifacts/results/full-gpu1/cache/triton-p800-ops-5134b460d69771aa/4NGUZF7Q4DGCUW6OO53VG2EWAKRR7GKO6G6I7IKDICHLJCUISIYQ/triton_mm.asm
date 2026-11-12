	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/division-uoh541oc" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -144
	addli r1, zero, 1
.Ltmp0:
	.loc	1 29 5 prologue_end             # parallel-rne.mlir:29:5
	core_id r8
	addli r30, sp, 80
	xsignal_mode_cfg r1
	beq r8, zero, .LBB0_2
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
	sext_int2long r[10:11], r1
	lui r1, 524287
	addli r12, zero, 2
	addli r13, zero, 32
	addli r16, zero, 1
	addli r14, zero, 8
	addli r15, zero, 5
	addli r17, zero, 11
	addli r19, zero, 3
	addli r22, zero, 6
	lui r21, 522240
	lui r18, 1048560
	addli r27, zero, 0
	store.d r[2:3], -80(r30)                # 8-byte Folded Spill
	lui r2, 522239
	ori r25, r1, 4095
	ori r26, r2, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	addli r1, zero, 11
	addli r12, zero, 2
	addli r13, zero, 32
	addli r16, zero, 1
	xsignal r1, 0
	.loc	1 354 7                         # parallel-rne.mlir:354:7
	addli r1, zero, 12
	xsignal r1, 0
	load.d r[10:11], -56(r30)               # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 48 5                          # parallel-rne.mlir:48:5
	load.d r[1:2], -80(r30)                 # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 1
	loadli.w r27,  -44(r30)                 # 4-byte Folded Reload
	addli r14, zero, 8
	addli r15, zero, 5
	addli r17, zero, 11
	addli r19, zero, 3
	addli r22, zero, 6
	setlt.sl r1, r[10:11], r[1:2]
	addli r27, r27, 1
	beq r1, zero, .LBB0_286
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_30 Depth 2
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #     Child Loop BB0_67 Depth 2
                                        #       Child Loop BB0_76 Depth 3
                                        #       Child Loop BB0_70 Depth 3
                                        #     Child Loop BB0_98 Depth 2
                                        #       Child Loop BB0_107 Depth 3
                                        #       Child Loop BB0_101 Depth 3
                                        #     Child Loop BB0_129 Depth 2
                                        #       Child Loop BB0_138 Depth 3
                                        #       Child Loop BB0_132 Depth 3
                                        #     Child Loop BB0_160 Depth 2
                                        #       Child Loop BB0_169 Depth 3
                                        #       Child Loop BB0_163 Depth 3
                                        #     Child Loop BB0_191 Depth 2
                                        #       Child Loop BB0_200 Depth 3
                                        #       Child Loop BB0_194 Depth 3
                                        #     Child Loop BB0_222 Depth 2
                                        #       Child Loop BB0_231 Depth 3
                                        #       Child Loop BB0_225 Depth 3
                                        #     Child Loop BB0_254 Depth 2
                                        #       Child Loop BB0_263 Depth 3
                                        #       Child Loop BB0_257 Depth 3
	.loc	1 50 13                         # parallel-rne.mlir:50:13
	loadli.w r1,  32(r30)
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	loadli.w r2,  28(r30)
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	mod.s r5, r27, r12
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	storeli.w r27, -44(r30)                 # 4-byte Folded Spill
	.loc	1 50 13                         # parallel-rne.mlir:50:13
	div.s r1, r10, r1
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	div.s r2, r1, r2
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	div.s r6, r2, r13
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	slli r1, r6, 3
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	sub.s r3, r16, r1
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	min.s r7, r3, r14
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	mod.s r3, r2, r7
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	add.s r3, r3, r1
	.loc	1 84 13                         # parallel-rne.mlir:84:13
	slli r1, r5, 12
	.loc	1 67 13                         # parallel-rne.mlir:67:13
	zext_int2long r[23:24], r3
	.loc	1 86 13                         # parallel-rne.mlir:86:13
	addli r4, r1, 4096
	storeli.w r3, -68(r30)                  # 4-byte Folded Spill
	store.d r[23:24], -8(r30)               # 8-byte Folded Spill
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	bneq r8, r16, .LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	sll.d r[8:9], r[23:24], r17
	load.d r[23:24], 0(r30)
	xwait r19, 0
	add.ul r[8:9], r[23:24], r[8:9]
	blt.s r16, r27, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	lock zero, r15
	addli r3, zero, 4
	addli r20, zero, 17
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 7
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 13
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 15
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 16
	dma_cfg zero, zero, r3, 10
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
	dma_cfg r16, r16, zero, 0
	dma_cfg r16, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r4, zero, r20, 3
	addli r20, zero, 128
	dma_cfg r20, zero, r12, 4
	addli r20, zero, 256
	dma_cfg r20, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
.LBB0_10:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r20, zero, 4
	storeli.w zero, -64(r30)                # 4-byte Folded Spill
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	addli r3, r1, 4160
	addli r23, zero, 64
	addli r24, zero, 256
	lock zero, r20
	dma_cfg r16, r16, zero, 0
	dma_cfg zero, r9, zero, 2
	dma_cfg r3, r8, r23, 3
	addli r9, zero, 128
	addli r8, zero, 16
	addli r3, zero, 7
	dma_cfg r9, r23, r12, 4
	dma_cfg r24, r9, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r20
	lock zero, r15
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 13
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 15
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 17
	dma_cfg zero, zero, r8, 10
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
	dma_cfg r16, r16, zero, 0
	dma_cfg r16, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r4, zero, r23, 3
	dma_cfg r9, zero, r12, 4
	addli r9, zero, 6
	dma_cfg r24, zero, r8, 5
	.loc	1 29 5 is_stmt 1                # parallel-rne.mlir:29:5
	core_id r8
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	xsignal r12, 0
	load.d r[23:24], -8(r30)                # 8-byte Folded Reload
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r8, r12, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	xwait r12, 0
	xwait r15, 0
	lock zero, zero
	addli r9, zero, 64
	addli r3, zero, 16
	ds_cfg r12, zero, 0
	ds_cfg r9, zero, 1
	ds_cfg r9, zero, 14
	ds_cfg r3, zero, 13
	addli r3, zero, 1
	shuffle_batch r1, r4, r9, 1
	unlock zero
	xsignal r19, 0
	storeli.w r3, -64(r30)                  # 4-byte Folded Spill
	addli r3, zero, 4
	xsignal r3, 0
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -64(r30)                # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	addli r9, zero, 6
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	slli r3, r6, 5
	slli r27, r5, 11
	.loc	1 99 13 is_stmt 1               # parallel-rne.mlir:99:13
	slli r4, r5, 13
	.loc	1 105 7                         # parallel-rne.mlir:105:7
	store.d r[10:11], -56(r30)              # 8-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r2, r2, r3
	div.s r2, r2, r7
	storeli.w r2, -72(r30)                  # 4-byte Folded Spill
	zext_int2long r[2:3], r2
	sll.d r[5:6], r[2:3], r15
	.loc	1 101 13 is_stmt 1              # parallel-rne.mlir:101:13
	addli r2, r4, 12288
	.loc	1 105 7                         # parallel-rne.mlir:105:7
	sll.d r[6:7], r[5:6], r16
	store.d r[6:7], -40(r30)                # 8-byte Folded Spill
	bneq r8, r9, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli.d r[19:20], r[6:7], 0
	.loc	1 105 7                         # parallel-rne.mlir:105:7
	load.d r[5:6], 8(r30)
	addli r7, zero, 7
	xwait r7, 0
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	add.ul r[5:6], r[5:6], r[19:20]
	blt.s r16, r1, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_7 Depth=1
	lock zero, r15
	addli r1, zero, 3
	addli r3, zero, 128
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 4
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 6
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
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
	dma_cfg r16, r16, zero, 0
	dma_cfg r16, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r1, 3
	dma_cfg r3, zero, r16, 4
	dma_cfg r3, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
.LBB0_18:                               # %.thread15
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 4
	storeli.w zero, -60(r30)                # 4-byte Folded Spill
	storeli.w zero, -32(r30)                # 4-byte Folded Spill
	.loc	1 105 7                         # parallel-rne.mlir:105:7
	addli r1, r4, 12352
	addli r4, zero, 64
	lock zero, r3
	dma_cfg r16, r16, zero, 0
	dma_cfg zero, r6, zero, 2
	dma_cfg r1, r5, r4, 3
	addli r5, zero, 128
	addli r1, zero, 256
	dma_cfg r5, r4, r16, 4
	dma_cfg r5, r1, r4, 5
	addli r1, zero, 3
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	lock zero, r15
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 6
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
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
	dma_cfg r16, r16, zero, 0
	dma_cfg r16, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r4, 3
	dma_cfg r5, zero, r16, 4
	dma_cfg r5, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	xsignal r3, 0
	load.d r[6:7], -40(r30)                 # 8-byte Folded Reload
	.loc	1 106 7 is_stmt 1               # parallel-rne.mlir:106:7
	j .LBB0_27
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 4
	beq r8, r3, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 7
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	bneq r8, r3, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 6
	storeli.w zero, -32(r30)                # 4-byte Folded Spill
	xwait r1, 0
	addli r1, zero, 9
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 64
	ds_cfg r12, zero, 0
	ds_cfg r13, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r13, zero, 13
	shuffle_coa r4, r2, r1, 2
	addli r1, zero, 1
	unlock zero
	xsignal r3, 0
	storeli.w r1, -60(r30)                  # 4-byte Folded Spill
	xsignal r14, 0
	j .LBB0_26
.LBB0_22:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 4
	.loc	1 107 7 is_stmt 1               # parallel-rne.mlir:107:7
	addli r2, zero, 11
	addli r9, zero, 1
	storeli.w zero, -60(r30)                # 4-byte Folded Spill
	addli r5, zero, 64
	xwait r3, 0
	xwait r14, 0
	xwait r2, 0
	addli r2, zero, 16
	lock zero, r9
	mm_cfg r13, r5, r2, 0
	mm_cfg r3, r9, r9, 2
	mm r27, r1, r4, 8
	addli r1, zero, 1
	storeli.w r1, -32(r30)                  # 4-byte Folded Spill
	addli r1, zero, 9
	unlock r9
	xsignal r15, 0
	xsignal r1, 0
	addli r1, zero, 10
	xsignal r1, 0
	j .LBB0_26
.LBB0_23:                               # %.thread16
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 114 7                         # parallel-rne.mlir:114:7
	addli r1, zero, 3
	bneq r8, r1, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	storeli.w zero, -60(r30)                # 4-byte Folded Spill
	storeli.w zero, -32(r30)                # 4-byte Folded Spill
	xwait r1, 0
	.loc	1 115 7                         # parallel-rne.mlir:115:7
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -60(r30)                # 4-byte Folded Spill
	storeli.w zero, -32(r30)                # 4-byte Folded Spill
.LBB0_26:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 31
.LBB0_27:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	lui r2, 7
	.loc	1 117 7 is_stmt 1               # parallel-rne.mlir:117:7
	xfence
	zext_int2long r[14:15], r13
	.loc	1 119 7                         # parallel-rne.mlir:119:7
	addli r3, zero, 255
	zext_int2long r[12:13], r1
	.loc	1 118 7                         # parallel-rne.mlir:118:7
	mfence { lm, sm, gm }
	.loc	1 112 13                        # parallel-rne.mlir:112:13
	add.s r16, r27, r2
	ori r11, r2, 4095
	.loc	1 119 7                         # parallel-rne.mlir:119:7
	csr_set csr5, r3
	sync_core
	.loc	1 120 7                         # parallel-rne.mlir:120:7
	bneq r8, zero, .LBB0_59
# %bb.28:                               #   in Loop: Header=BB0_7 Depth=1
	xfence
	addli r2, zero, 1
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	j .LBB0_30
.LBB0_29:                               # %middle.block98
                                        #   in Loop: Header=BB0_30 Depth=2
	.loc	1 128 9                         # parallel-rne.mlir:128:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli.d r[6:7], r[14:15], 0
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_58
.LBB0_30:                               # %vector.memcheck90
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_33 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 129 11 is_stmt 1              # parallel-rne.mlir:129:11
	bneq r16, r27, .LBB0_37
# %bb.31:                               # %scalar.ph92.preheader
                                        #   in Loop: Header=BB0_30 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_33
.LBB0_32:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 129 11                        # parallel-rne.mlir:129:11
	setlt.ul r1, r[2:3], r[12:13]
	.loc	1 144 13 is_stmt 1              # parallel-rne.mlir:144:13
	add.s r4, r16, r4
	.loc	1 129 11                        # parallel-rne.mlir:129:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	stores.w r5, 0(r4)
	.loc	1 129 11                        # parallel-rne.mlir:129:11
	beq r1, zero, .LBB0_29
.LBB0_33:                               # %scalar.ph92
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 130 19                        # parallel-rne.mlir:130:19
	add.ul r[4:5], r[2:3], r[6:7]
	slli r4, r4, 2
	add.s r1, r27, r4
	loads.w r1, 0(r1)
	.loc	1 132 19                        # parallel-rne.mlir:132:19
	and r8, r1, r25
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	setlt.u r5, r21, r8
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	bneq r5, zero, .LBB0_35
# %bb.34:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r1, 0
	.loc	1 141 19 is_stmt 1              # parallel-rne.mlir:141:19
	setlt.u r8, r26, r8
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	bneq r8, zero, .LBB0_32
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r1, r5
	.loc	1 141 19 is_stmt 1              # parallel-rne.mlir:141:19
	setlt.u r8, r26, r8
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	bneq r8, zero, .LBB0_32
.LBB0_36:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	add.s r1, r1, r11
	and r5, r1, r18
	j .LBB0_32
.LBB0_37:                               # %vector.body94.preheader
                                        #   in Loop: Header=BB0_30 Depth=2
	zext_int2long r[4:5], zero
	j .LBB0_39
.LBB0_38:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 129 11 is_stmt 1              # parallel-rne.mlir:129:11
	addli.d r[4:5], r[4:5], 4
	load.d r[23:24], -8(r30)                # 8-byte Folded Reload
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	add.s r2, r16, r2
	.loc	1 129 11                        # parallel-rne.mlir:129:11
	seteq.d r3, r[4:5], r[14:15]
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	stores.w r8, 12(r2)
	stores.w r22, 8(r2)
	stores.w r20, 4(r2)
	stores.w r1, 0(r2)
	.loc	1 129 11                        # parallel-rne.mlir:129:11
	bneq r3, zero, .LBB0_29
.LBB0_39:                               # %vector.body94
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 130 19                        # parallel-rne.mlir:130:19
	add.ul r[1:2], r[4:5], r[6:7]
	slli r2, r1, 2
	add.s r3, r27, r2
	loads.w r10, 12(r3)
	.loc	1 132 19                        # parallel-rne.mlir:132:19
	and r23, r10, r25
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	setlt.u r1, r21, r23
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	bneq r1, zero, .LBB0_41
# %bb.40:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r10, 0
	j .LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_39 Depth=3
	lui r1, 1024
	or r8, r10, r1
.LBB0_42:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	loads.w r9, 8(r3)
	and r24, r9, r25
	setlt.u r1, r21, r24
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	bneq r1, zero, .LBB0_44
# %bb.43:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r9, 0
	j .LBB0_45
.LBB0_44:                               #   in Loop: Header=BB0_39 Depth=3
	lui r1, 1024
	or r22, r9, r1
.LBB0_45:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	loads.w r28, 4(r3)
	and r17, r28, r25
	setlt.u r1, r21, r17
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	bneq r1, zero, .LBB0_47
# %bb.46:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r28, 0
	j .LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_39 Depth=3
	lui r1, 1024
	or r20, r28, r1
.LBB0_48:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	loads.w r3, 0(r3)
	and r19, r3, r25
	setlt.u r1, r21, r19
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	bneq r1, zero, .LBB0_50
# %bb.49:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r3, 0
	.loc	1 141 19 is_stmt 1              # parallel-rne.mlir:141:19
	setlt.u r19, r26, r19
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	beq r19, zero, .LBB0_51
	j .LBB0_52
.LBB0_50:                               #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r3, r1
	.loc	1 141 19 is_stmt 1              # parallel-rne.mlir:141:19
	setlt.u r19, r26, r19
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	bneq r19, zero, .LBB0_52
.LBB0_51:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r11
	and r1, r1, r18
.LBB0_52:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	setlt.u r3, r26, r17
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	beq r3, zero, .LBB0_55
# %bb.53:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r26, r24
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	beq r3, zero, .LBB0_56
.LBB0_54:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r26, r23
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	bneq r3, zero, .LBB0_38
	j .LBB0_57
.LBB0_55:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r28, 16
	andi r3, r3, 1
	add.s r3, r28, r3
	add.s r3, r3, r11
	and r20, r3, r18
	setlt.u r3, r26, r24
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	bneq r3, zero, .LBB0_54
.LBB0_56:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r9, 16
	andi r3, r3, 1
	add.s r3, r9, r3
	add.s r3, r3, r11
	and r22, r3, r18
	setlt.u r3, r26, r23
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	bneq r3, zero, .LBB0_38
.LBB0_57:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r11
	and r8, r3, r18
	j .LBB0_38
.LBB0_58:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 120 7 is_stmt 1               # parallel-rne.mlir:120:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r8
	load.d r[6:7], -40(r30)                 # 8-byte Folded Reload
.LBB0_59:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 96
	zext_int2long r[1:2], r1
	.loc	1 149 7 is_stmt 1               # parallel-rne.mlir:149:7
	store.d r[1:2], -24(r30)                # 8-byte Folded Spill
	addli r1, zero, 1
	beq r8, r1, .LBB0_65
# %bb.60:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	loadli.w r1,  -64(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_96
.LBB0_61:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 207 7                         # parallel-rne.mlir:207:7
	addli r1, zero, 3
	beq r8, r1, .LBB0_127
.LBB0_62:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 236 7                         # parallel-rne.mlir:236:7
	loadli.w r1,  -32(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_158
.LBB0_63:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 265 7                         # parallel-rne.mlir:265:7
	addli r1, zero, 5
	beq r8, r1, .LBB0_189
.LBB0_64:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 294 7                         # parallel-rne.mlir:294:7
	addli r1, zero, 6
	beq r8, r1, .LBB0_220
	j .LBB0_251
.LBB0_65:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 64
	.loc	1 149 7 is_stmt 1               # parallel-rne.mlir:149:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r1
	j .LBB0_67
.LBB0_66:                               # %middle.block89
                                        #   in Loop: Header=BB0_67 Depth=2
	.loc	1 157 9                         # parallel-rne.mlir:157:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	load.d r[7:8], -24(r30)                 # 8-byte Folded Reload
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_95
.LBB0_67:                               # %vector.memcheck81
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_76 Depth 3
                                        #       Child Loop BB0_70 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 158 11 is_stmt 1              # parallel-rne.mlir:158:11
	bneq r16, r27, .LBB0_74
# %bb.68:                               # %scalar.ph83.preheader
                                        #   in Loop: Header=BB0_67 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_70
.LBB0_69:                               # %scalar.ph83
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	setlt.ul r5, r[1:2], r[12:13]
	.loc	1 173 13 is_stmt 1              # parallel-rne.mlir:173:13
	add.s r3, r16, r3
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 173 13                        # parallel-rne.mlir:173:13
	stores.w r4, 0(r3)
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	beq r5, zero, .LBB0_66
.LBB0_70:                               # %scalar.ph83
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	add.ul r[3:4], r[1:2], r[7:8]
	slli r3, r3, 2
	add.s r4, r27, r3
	loads.w r5, 0(r4)
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	and r6, r5, r25
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	setlt.u r4, r21, r6
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r4, zero, .LBB0_72
# %bb.71:                               # %scalar.ph83
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r5, 0
	.loc	1 170 19 is_stmt 1              # parallel-rne.mlir:170:19
	setlt.u r6, r26, r6
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r6, zero, .LBB0_69
	j .LBB0_73
.LBB0_72:                               #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r5, r4
	.loc	1 170 19 is_stmt 1              # parallel-rne.mlir:170:19
	setlt.u r6, r26, r6
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r6, zero, .LBB0_69
.LBB0_73:                               # %scalar.ph83
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	add.s r4, r4, r11
	and r4, r4, r18
	j .LBB0_69
.LBB0_74:                               # %vector.body85.preheader
                                        #   in Loop: Header=BB0_67 Depth=2
	zext_int2long r[4:5], zero
	j .LBB0_76
.LBB0_75:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 158 11 is_stmt 1              # parallel-rne.mlir:158:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 173 13                        # parallel-rne.mlir:173:13
	add.s r2, r16, r23
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	seteq.d r1, r[4:5], r[14:15]
	.loc	1 173 13                        # parallel-rne.mlir:173:13
	stores.w r24, 12(r2)
	load.d r[23:24], -8(r30)                # 8-byte Folded Reload
	stores.w r22, 8(r2)
	stores.w r20, 4(r2)
	stores.w r6, 0(r2)
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	bneq r1, zero, .LBB0_66
.LBB0_76:                               # %vector.body85
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	add.ul r[1:2], r[4:5], r[7:8]
	slli r23, r1, 2
	add.s r3, r27, r23
	loads.w r10, 12(r3)
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	and r28, r10, r25
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	setlt.u r1, r21, r28
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r1, zero, .LBB0_78
# %bb.77:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r24, r10, 0
	j .LBB0_79
.LBB0_78:                               #   in Loop: Header=BB0_76 Depth=3
	lui r1, 1024
	or r24, r10, r1
.LBB0_79:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	loads.w r9, 8(r3)
	and r1, r9, r25
	setlt.u r2, r21, r1
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r2, zero, .LBB0_81
# %bb.80:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r9, 0
	j .LBB0_82
.LBB0_81:                               #   in Loop: Header=BB0_76 Depth=3
	lui r2, 1024
	or r22, r9, r2
.LBB0_82:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	loads.w r2, 4(r3)
	and r17, r2, r25
	setlt.u r6, r21, r17
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r6, zero, .LBB0_84
# %bb.83:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	j .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_76 Depth=3
	lui r6, 1024
	or r20, r2, r6
.LBB0_85:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	loads.w r3, 0(r3)
	and r19, r3, r25
	setlt.u r6, r21, r19
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r6, zero, .LBB0_91
# %bb.86:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r3, 0
	.loc	1 170 19 is_stmt 1              # parallel-rne.mlir:170:19
	setlt.u r19, r26, r19
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r19, zero, .LBB0_88
.LBB0_87:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r3, 16
	andi r6, r6, 1
	add.s r3, r3, r6
	add.s r3, r3, r11
	and r6, r3, r18
.LBB0_88:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	setlt.u r3, r26, r17
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	beq r3, zero, .LBB0_92
# %bb.89:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r26, r1
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	beq r1, zero, .LBB0_93
.LBB0_90:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r26, r28
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r1, zero, .LBB0_75
	j .LBB0_94
.LBB0_91:                               #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r3, r6
	.loc	1 170 19 is_stmt 1              # parallel-rne.mlir:170:19
	setlt.u r19, r26, r19
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	beq r19, zero, .LBB0_87
	j .LBB0_88
.LBB0_92:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r11
	and r20, r2, r18
	setlt.u r1, r26, r1
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r1, zero, .LBB0_90
.LBB0_93:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r11
	and r22, r1, r18
	setlt.u r1, r26, r28
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r1, zero, .LBB0_75
.LBB0_94:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r11
	and r24, r1, r18
	j .LBB0_75
.LBB0_95:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 149 7 is_stmt 1               # parallel-rne.mlir:149:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r8
	load.d r[6:7], -40(r30)                 # 8-byte Folded Reload
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	loadli.w r1,  -64(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_61
.LBB0_96:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 128
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r1
	j .LBB0_98
.LBB0_97:                               # %middle.block80
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 186 9 is_stmt 1               # parallel-rne.mlir:186:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 160
	zext_int2long r[7:8], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_126
.LBB0_98:                               # %vector.memcheck72
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_107 Depth 3
                                        #       Child Loop BB0_101 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 187 11 is_stmt 1              # parallel-rne.mlir:187:11
	bneq r16, r27, .LBB0_105
# %bb.99:                               # %scalar.ph74.preheader
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_101
.LBB0_100:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	setlt.ul r5, r[1:2], r[12:13]
	.loc	1 202 13 is_stmt 1              # parallel-rne.mlir:202:13
	add.s r3, r16, r3
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 202 13                        # parallel-rne.mlir:202:13
	stores.w r4, 0(r3)
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	beq r5, zero, .LBB0_97
.LBB0_101:                              # %scalar.ph74
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_98 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	add.ul r[3:4], r[1:2], r[7:8]
	slli r3, r3, 2
	add.s r4, r27, r3
	loads.w r5, 0(r4)
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	and r6, r5, r25
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	setlt.u r4, r21, r6
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r4, zero, .LBB0_103
# %bb.102:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r5, 0
	.loc	1 199 19 is_stmt 1              # parallel-rne.mlir:199:19
	setlt.u r6, r26, r6
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r6, zero, .LBB0_100
	j .LBB0_104
.LBB0_103:                              #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r5, r4
	.loc	1 199 19 is_stmt 1              # parallel-rne.mlir:199:19
	setlt.u r6, r26, r6
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r6, zero, .LBB0_100
.LBB0_104:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	add.s r4, r4, r11
	and r4, r4, r18
	j .LBB0_100
.LBB0_105:                              # %vector.body76.preheader
                                        #   in Loop: Header=BB0_98 Depth=2
	zext_int2long r[4:5], zero
	j .LBB0_107
.LBB0_106:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 187 11 is_stmt 1              # parallel-rne.mlir:187:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 202 13                        # parallel-rne.mlir:202:13
	add.s r2, r16, r17
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	seteq.d r1, r[4:5], r[14:15]
	.loc	1 202 13                        # parallel-rne.mlir:202:13
	stores.w r23, 12(r2)
	load.d r[23:24], -8(r30)                # 8-byte Folded Reload
	stores.w r22, 8(r2)
	stores.w r20, 4(r2)
	stores.w r6, 0(r2)
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	bneq r1, zero, .LBB0_97
.LBB0_107:                              # %vector.body76
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_98 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	add.ul r[1:2], r[4:5], r[7:8]
	slli r17, r1, 2
	add.s r3, r27, r17
	loads.w r10, 12(r3)
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	and r24, r10, r25
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	setlt.u r1, r21, r24
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r1, zero, .LBB0_109
# %bb.108:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r10, 0
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_107 Depth=3
	lui r1, 1024
	or r23, r10, r1
.LBB0_110:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	loads.w r9, 8(r3)
	and r1, r9, r25
	setlt.u r2, r21, r1
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r2, zero, .LBB0_112
# %bb.111:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r9, 0
	j .LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_107 Depth=3
	lui r2, 1024
	or r22, r9, r2
.LBB0_113:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	loads.w r2, 4(r3)
	and r28, r2, r25
	setlt.u r6, r21, r28
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r6, zero, .LBB0_115
# %bb.114:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_107 Depth=3
	lui r6, 1024
	or r20, r2, r6
.LBB0_116:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	loads.w r3, 0(r3)
	and r19, r3, r25
	setlt.u r6, r21, r19
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r6, zero, .LBB0_122
# %bb.117:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r3, 0
	.loc	1 199 19 is_stmt 1              # parallel-rne.mlir:199:19
	setlt.u r19, r26, r19
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r19, zero, .LBB0_119
.LBB0_118:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r3, 16
	andi r6, r6, 1
	add.s r3, r3, r6
	add.s r3, r3, r11
	and r6, r3, r18
.LBB0_119:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	setlt.u r3, r26, r28
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	beq r3, zero, .LBB0_123
# %bb.120:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r26, r1
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	beq r1, zero, .LBB0_124
.LBB0_121:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r26, r24
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r1, zero, .LBB0_106
	j .LBB0_125
.LBB0_122:                              #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r3, r6
	.loc	1 199 19 is_stmt 1              # parallel-rne.mlir:199:19
	setlt.u r19, r26, r19
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	beq r19, zero, .LBB0_118
	j .LBB0_119
.LBB0_123:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r11
	and r20, r2, r18
	setlt.u r1, r26, r1
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r1, zero, .LBB0_121
.LBB0_124:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r11
	and r22, r1, r18
	setlt.u r1, r26, r24
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r1, zero, .LBB0_106
.LBB0_125:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r11
	and r23, r1, r18
	j .LBB0_106
.LBB0_126:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 178 7 is_stmt 1               # parallel-rne.mlir:178:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r8
	load.d r[6:7], -40(r30)                 # 8-byte Folded Reload
	.loc	1 207 7                         # parallel-rne.mlir:207:7
	addli r1, zero, 3
	bneq r8, r1, .LBB0_62
.LBB0_127:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 192
	.loc	1 207 7                         # parallel-rne.mlir:207:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r1
	j .LBB0_129
.LBB0_128:                              # %middle.block71
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 215 9 is_stmt 1               # parallel-rne.mlir:215:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 224
	zext_int2long r[7:8], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_157
.LBB0_129:                              # %vector.memcheck63
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_138 Depth 3
                                        #       Child Loop BB0_132 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 216 11 is_stmt 1              # parallel-rne.mlir:216:11
	bneq r16, r27, .LBB0_136
# %bb.130:                              # %scalar.ph65.preheader
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_132
.LBB0_131:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 216 11                        # parallel-rne.mlir:216:11
	setlt.ul r5, r[1:2], r[12:13]
	.loc	1 231 13 is_stmt 1              # parallel-rne.mlir:231:13
	add.s r3, r16, r3
	.loc	1 216 11                        # parallel-rne.mlir:216:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 231 13                        # parallel-rne.mlir:231:13
	stores.w r4, 0(r3)
	.loc	1 216 11                        # parallel-rne.mlir:216:11
	beq r5, zero, .LBB0_128
.LBB0_132:                              # %scalar.ph65
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	add.ul r[3:4], r[1:2], r[7:8]
	slli r3, r3, 2
	add.s r4, r27, r3
	loads.w r5, 0(r4)
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	and r6, r5, r25
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	setlt.u r4, r21, r6
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r4, zero, .LBB0_134
# %bb.133:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r5, 0
	.loc	1 228 19 is_stmt 1              # parallel-rne.mlir:228:19
	setlt.u r6, r26, r6
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r6, zero, .LBB0_131
	j .LBB0_135
.LBB0_134:                              #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r5, r4
	.loc	1 228 19 is_stmt 1              # parallel-rne.mlir:228:19
	setlt.u r6, r26, r6
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r6, zero, .LBB0_131
.LBB0_135:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	add.s r4, r4, r11
	and r4, r4, r18
	j .LBB0_131
.LBB0_136:                              # %vector.body67.preheader
                                        #   in Loop: Header=BB0_129 Depth=2
	zext_int2long r[4:5], zero
	j .LBB0_138
.LBB0_137:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 216 11 is_stmt 1              # parallel-rne.mlir:216:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 231 13                        # parallel-rne.mlir:231:13
	add.s r2, r16, r17
	.loc	1 216 11                        # parallel-rne.mlir:216:11
	seteq.d r1, r[4:5], r[14:15]
	.loc	1 231 13                        # parallel-rne.mlir:231:13
	stores.w r23, 12(r2)
	load.d r[23:24], -8(r30)                # 8-byte Folded Reload
	stores.w r22, 8(r2)
	stores.w r20, 4(r2)
	stores.w r6, 0(r2)
	.loc	1 216 11                        # parallel-rne.mlir:216:11
	bneq r1, zero, .LBB0_128
.LBB0_138:                              # %vector.body67
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	add.ul r[1:2], r[4:5], r[7:8]
	slli r17, r1, 2
	add.s r3, r27, r17
	loads.w r10, 12(r3)
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	and r24, r10, r25
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	setlt.u r1, r21, r24
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r1, zero, .LBB0_140
# %bb.139:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r10, 0
	j .LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_138 Depth=3
	lui r1, 1024
	or r23, r10, r1
.LBB0_141:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	loads.w r9, 8(r3)
	and r1, r9, r25
	setlt.u r2, r21, r1
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r2, zero, .LBB0_143
# %bb.142:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r9, 0
	j .LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_138 Depth=3
	lui r2, 1024
	or r22, r9, r2
.LBB0_144:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	loads.w r2, 4(r3)
	and r28, r2, r25
	setlt.u r6, r21, r28
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r6, zero, .LBB0_146
# %bb.145:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_138 Depth=3
	lui r6, 1024
	or r20, r2, r6
.LBB0_147:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	loads.w r3, 0(r3)
	and r19, r3, r25
	setlt.u r6, r21, r19
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r6, zero, .LBB0_153
# %bb.148:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r3, 0
	.loc	1 228 19 is_stmt 1              # parallel-rne.mlir:228:19
	setlt.u r19, r26, r19
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r19, zero, .LBB0_150
.LBB0_149:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r3, 16
	andi r6, r6, 1
	add.s r3, r3, r6
	add.s r3, r3, r11
	and r6, r3, r18
.LBB0_150:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	setlt.u r3, r26, r28
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	beq r3, zero, .LBB0_154
# %bb.151:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r26, r1
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	beq r1, zero, .LBB0_155
.LBB0_152:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r26, r24
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r1, zero, .LBB0_137
	j .LBB0_156
.LBB0_153:                              #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r3, r6
	.loc	1 228 19 is_stmt 1              # parallel-rne.mlir:228:19
	setlt.u r19, r26, r19
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	beq r19, zero, .LBB0_149
	j .LBB0_150
.LBB0_154:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r11
	and r20, r2, r18
	setlt.u r1, r26, r1
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r1, zero, .LBB0_152
.LBB0_155:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r11
	and r22, r1, r18
	setlt.u r1, r26, r24
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r1, zero, .LBB0_137
.LBB0_156:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r11
	and r23, r1, r18
	j .LBB0_137
.LBB0_157:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 207 7 is_stmt 1               # parallel-rne.mlir:207:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r8
	load.d r[6:7], -40(r30)                 # 8-byte Folded Reload
	.loc	1 236 7                         # parallel-rne.mlir:236:7
	loadli.w r1,  -32(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_63
.LBB0_158:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 256
	.loc	1 236 7                         # parallel-rne.mlir:236:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r1
	j .LBB0_160
.LBB0_159:                              # %middle.block62
                                        #   in Loop: Header=BB0_160 Depth=2
	.loc	1 244 9 is_stmt 1               # parallel-rne.mlir:244:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 288
	zext_int2long r[7:8], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_188
.LBB0_160:                              # %vector.memcheck54
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_169 Depth 3
                                        #       Child Loop BB0_163 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 245 11 is_stmt 1              # parallel-rne.mlir:245:11
	bneq r16, r27, .LBB0_167
# %bb.161:                              # %scalar.ph56.preheader
                                        #   in Loop: Header=BB0_160 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_163
.LBB0_162:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 245 11                        # parallel-rne.mlir:245:11
	setlt.ul r5, r[1:2], r[12:13]
	.loc	1 260 13 is_stmt 1              # parallel-rne.mlir:260:13
	add.s r3, r16, r3
	.loc	1 245 11                        # parallel-rne.mlir:245:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 260 13                        # parallel-rne.mlir:260:13
	stores.w r4, 0(r3)
	.loc	1 245 11                        # parallel-rne.mlir:245:11
	beq r5, zero, .LBB0_159
.LBB0_163:                              # %scalar.ph56
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_160 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	add.ul r[3:4], r[1:2], r[7:8]
	slli r3, r3, 2
	add.s r4, r27, r3
	loads.w r5, 0(r4)
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	and r6, r5, r25
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	setlt.u r4, r21, r6
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r4, zero, .LBB0_165
# %bb.164:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r5, 0
	.loc	1 257 19 is_stmt 1              # parallel-rne.mlir:257:19
	setlt.u r6, r26, r6
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r6, zero, .LBB0_162
	j .LBB0_166
.LBB0_165:                              #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r5, r4
	.loc	1 257 19 is_stmt 1              # parallel-rne.mlir:257:19
	setlt.u r6, r26, r6
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r6, zero, .LBB0_162
.LBB0_166:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	add.s r4, r4, r11
	and r4, r4, r18
	j .LBB0_162
.LBB0_167:                              # %vector.body58.preheader
                                        #   in Loop: Header=BB0_160 Depth=2
	zext_int2long r[4:5], zero
	j .LBB0_169
.LBB0_168:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 245 11 is_stmt 1              # parallel-rne.mlir:245:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 260 13                        # parallel-rne.mlir:260:13
	add.s r2, r16, r17
	.loc	1 245 11                        # parallel-rne.mlir:245:11
	seteq.d r1, r[4:5], r[14:15]
	.loc	1 260 13                        # parallel-rne.mlir:260:13
	stores.w r23, 12(r2)
	load.d r[23:24], -8(r30)                # 8-byte Folded Reload
	stores.w r22, 8(r2)
	stores.w r20, 4(r2)
	stores.w r6, 0(r2)
	.loc	1 245 11                        # parallel-rne.mlir:245:11
	bneq r1, zero, .LBB0_159
.LBB0_169:                              # %vector.body58
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_160 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	add.ul r[1:2], r[4:5], r[7:8]
	slli r17, r1, 2
	add.s r3, r27, r17
	loads.w r10, 12(r3)
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	and r24, r10, r25
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	setlt.u r1, r21, r24
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r1, zero, .LBB0_171
# %bb.170:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r10, 0
	j .LBB0_172
.LBB0_171:                              #   in Loop: Header=BB0_169 Depth=3
	lui r1, 1024
	or r23, r10, r1
.LBB0_172:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	loads.w r9, 8(r3)
	and r1, r9, r25
	setlt.u r2, r21, r1
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r2, zero, .LBB0_174
# %bb.173:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r9, 0
	j .LBB0_175
.LBB0_174:                              #   in Loop: Header=BB0_169 Depth=3
	lui r2, 1024
	or r22, r9, r2
.LBB0_175:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	loads.w r2, 4(r3)
	and r28, r2, r25
	setlt.u r6, r21, r28
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r6, zero, .LBB0_177
# %bb.176:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	j .LBB0_178
.LBB0_177:                              #   in Loop: Header=BB0_169 Depth=3
	lui r6, 1024
	or r20, r2, r6
.LBB0_178:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	loads.w r3, 0(r3)
	and r19, r3, r25
	setlt.u r6, r21, r19
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r6, zero, .LBB0_184
# %bb.179:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r3, 0
	.loc	1 257 19 is_stmt 1              # parallel-rne.mlir:257:19
	setlt.u r19, r26, r19
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r19, zero, .LBB0_181
.LBB0_180:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r3, 16
	andi r6, r6, 1
	add.s r3, r3, r6
	add.s r3, r3, r11
	and r6, r3, r18
.LBB0_181:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	setlt.u r3, r26, r28
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	beq r3, zero, .LBB0_185
# %bb.182:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r26, r1
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	beq r1, zero, .LBB0_186
.LBB0_183:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r26, r24
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r1, zero, .LBB0_168
	j .LBB0_187
.LBB0_184:                              #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r3, r6
	.loc	1 257 19 is_stmt 1              # parallel-rne.mlir:257:19
	setlt.u r19, r26, r19
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	beq r19, zero, .LBB0_180
	j .LBB0_181
.LBB0_185:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r11
	and r20, r2, r18
	setlt.u r1, r26, r1
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r1, zero, .LBB0_183
.LBB0_186:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r11
	and r22, r1, r18
	setlt.u r1, r26, r24
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r1, zero, .LBB0_168
.LBB0_187:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r11
	and r23, r1, r18
	j .LBB0_168
.LBB0_188:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 236 7 is_stmt 1               # parallel-rne.mlir:236:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r8
	load.d r[6:7], -40(r30)                 # 8-byte Folded Reload
	.loc	1 265 7                         # parallel-rne.mlir:265:7
	addli r1, zero, 5
	bneq r8, r1, .LBB0_64
.LBB0_189:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 320
	.loc	1 265 7                         # parallel-rne.mlir:265:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r1
	j .LBB0_191
.LBB0_190:                              # %middle.block53
                                        #   in Loop: Header=BB0_191 Depth=2
	.loc	1 273 9 is_stmt 1               # parallel-rne.mlir:273:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 352
	zext_int2long r[7:8], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_219
.LBB0_191:                              # %vector.memcheck45
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_200 Depth 3
                                        #       Child Loop BB0_194 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 274 11 is_stmt 1              # parallel-rne.mlir:274:11
	bneq r16, r27, .LBB0_198
# %bb.192:                              # %scalar.ph47.preheader
                                        #   in Loop: Header=BB0_191 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_194
.LBB0_193:                              # %scalar.ph47
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	setlt.ul r5, r[1:2], r[12:13]
	.loc	1 289 13 is_stmt 1              # parallel-rne.mlir:289:13
	add.s r3, r16, r3
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 289 13                        # parallel-rne.mlir:289:13
	stores.w r4, 0(r3)
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	beq r5, zero, .LBB0_190
.LBB0_194:                              # %scalar.ph47
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_191 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	add.ul r[3:4], r[1:2], r[7:8]
	slli r3, r3, 2
	add.s r4, r27, r3
	loads.w r5, 0(r4)
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	and r6, r5, r25
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	setlt.u r4, r21, r6
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r4, zero, .LBB0_196
# %bb.195:                              # %scalar.ph47
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r5, 0
	.loc	1 286 19 is_stmt 1              # parallel-rne.mlir:286:19
	setlt.u r6, r26, r6
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r6, zero, .LBB0_193
	j .LBB0_197
.LBB0_196:                              #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r5, r4
	.loc	1 286 19 is_stmt 1              # parallel-rne.mlir:286:19
	setlt.u r6, r26, r6
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r6, zero, .LBB0_193
.LBB0_197:                              # %scalar.ph47
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	add.s r4, r4, r11
	and r4, r4, r18
	j .LBB0_193
.LBB0_198:                              # %vector.body49.preheader
                                        #   in Loop: Header=BB0_191 Depth=2
	zext_int2long r[4:5], zero
	j .LBB0_200
.LBB0_199:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 274 11 is_stmt 1              # parallel-rne.mlir:274:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 289 13                        # parallel-rne.mlir:289:13
	add.s r2, r16, r17
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	seteq.d r1, r[4:5], r[14:15]
	.loc	1 289 13                        # parallel-rne.mlir:289:13
	stores.w r23, 12(r2)
	load.d r[23:24], -8(r30)                # 8-byte Folded Reload
	stores.w r22, 8(r2)
	stores.w r20, 4(r2)
	stores.w r6, 0(r2)
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	bneq r1, zero, .LBB0_190
.LBB0_200:                              # %vector.body49
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_191 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	add.ul r[1:2], r[4:5], r[7:8]
	slli r17, r1, 2
	add.s r3, r27, r17
	loads.w r10, 12(r3)
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	and r24, r10, r25
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	setlt.u r1, r21, r24
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r1, zero, .LBB0_202
# %bb.201:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r10, 0
	j .LBB0_203
.LBB0_202:                              #   in Loop: Header=BB0_200 Depth=3
	lui r1, 1024
	or r23, r10, r1
.LBB0_203:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	loads.w r9, 8(r3)
	and r1, r9, r25
	setlt.u r2, r21, r1
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r2, zero, .LBB0_205
# %bb.204:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r9, 0
	j .LBB0_206
.LBB0_205:                              #   in Loop: Header=BB0_200 Depth=3
	lui r2, 1024
	or r22, r9, r2
.LBB0_206:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	loads.w r2, 4(r3)
	and r28, r2, r25
	setlt.u r6, r21, r28
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r6, zero, .LBB0_208
# %bb.207:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	j .LBB0_209
.LBB0_208:                              #   in Loop: Header=BB0_200 Depth=3
	lui r6, 1024
	or r20, r2, r6
.LBB0_209:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	loads.w r3, 0(r3)
	and r19, r3, r25
	setlt.u r6, r21, r19
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r6, zero, .LBB0_215
# %bb.210:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r3, 0
	.loc	1 286 19 is_stmt 1              # parallel-rne.mlir:286:19
	setlt.u r19, r26, r19
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r19, zero, .LBB0_212
.LBB0_211:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r3, 16
	andi r6, r6, 1
	add.s r3, r3, r6
	add.s r3, r3, r11
	and r6, r3, r18
.LBB0_212:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	setlt.u r3, r26, r28
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	beq r3, zero, .LBB0_216
# %bb.213:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r26, r1
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	beq r1, zero, .LBB0_217
.LBB0_214:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r26, r24
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r1, zero, .LBB0_199
	j .LBB0_218
.LBB0_215:                              #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r3, r6
	.loc	1 286 19 is_stmt 1              # parallel-rne.mlir:286:19
	setlt.u r19, r26, r19
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	beq r19, zero, .LBB0_211
	j .LBB0_212
.LBB0_216:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r11
	and r20, r2, r18
	setlt.u r1, r26, r1
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r1, zero, .LBB0_214
.LBB0_217:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r11
	and r22, r1, r18
	setlt.u r1, r26, r24
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r1, zero, .LBB0_199
.LBB0_218:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r11
	and r23, r1, r18
	j .LBB0_199
.LBB0_219:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 265 7 is_stmt 1               # parallel-rne.mlir:265:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r8
	load.d r[6:7], -40(r30)                 # 8-byte Folded Reload
	.loc	1 294 7                         # parallel-rne.mlir:294:7
	addli r1, zero, 6
	bneq r8, r1, .LBB0_251
.LBB0_220:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 384
	.loc	1 294 7                         # parallel-rne.mlir:294:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r1
	j .LBB0_222
.LBB0_221:                              # %middle.block44
                                        #   in Loop: Header=BB0_222 Depth=2
	.loc	1 302 9 is_stmt 1               # parallel-rne.mlir:302:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 416
	zext_int2long r[7:8], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_250
.LBB0_222:                              # %vector.memcheck36
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_231 Depth 3
                                        #       Child Loop BB0_225 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 303 11 is_stmt 1              # parallel-rne.mlir:303:11
	bneq r16, r27, .LBB0_229
# %bb.223:                              # %scalar.ph38.preheader
                                        #   in Loop: Header=BB0_222 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_225
.LBB0_224:                              # %scalar.ph38
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	setlt.ul r5, r[1:2], r[12:13]
	.loc	1 318 13 is_stmt 1              # parallel-rne.mlir:318:13
	add.s r3, r16, r3
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 318 13                        # parallel-rne.mlir:318:13
	stores.w r4, 0(r3)
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	beq r5, zero, .LBB0_221
.LBB0_225:                              # %scalar.ph38
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_222 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	add.ul r[3:4], r[1:2], r[7:8]
	slli r3, r3, 2
	add.s r4, r27, r3
	loads.w r5, 0(r4)
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	and r6, r5, r25
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	setlt.u r4, r21, r6
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r4, zero, .LBB0_227
# %bb.226:                              # %scalar.ph38
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r5, 0
	.loc	1 315 19 is_stmt 1              # parallel-rne.mlir:315:19
	setlt.u r6, r26, r6
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r6, zero, .LBB0_224
	j .LBB0_228
.LBB0_227:                              #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r5, r4
	.loc	1 315 19 is_stmt 1              # parallel-rne.mlir:315:19
	setlt.u r6, r26, r6
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r6, zero, .LBB0_224
.LBB0_228:                              # %scalar.ph38
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	add.s r4, r4, r11
	and r4, r4, r18
	j .LBB0_224
.LBB0_229:                              # %vector.body40.preheader
                                        #   in Loop: Header=BB0_222 Depth=2
	zext_int2long r[4:5], zero
	j .LBB0_231
.LBB0_230:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 303 11 is_stmt 1              # parallel-rne.mlir:303:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 318 13                        # parallel-rne.mlir:318:13
	add.s r2, r16, r17
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	seteq.d r1, r[4:5], r[14:15]
	.loc	1 318 13                        # parallel-rne.mlir:318:13
	stores.w r23, 12(r2)
	load.d r[23:24], -8(r30)                # 8-byte Folded Reload
	stores.w r22, 8(r2)
	stores.w r20, 4(r2)
	stores.w r6, 0(r2)
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	bneq r1, zero, .LBB0_221
.LBB0_231:                              # %vector.body40
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_222 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	add.ul r[1:2], r[4:5], r[7:8]
	slli r17, r1, 2
	add.s r3, r27, r17
	loads.w r10, 12(r3)
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	and r24, r10, r25
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	setlt.u r1, r21, r24
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r1, zero, .LBB0_233
# %bb.232:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r10, 0
	j .LBB0_234
.LBB0_233:                              #   in Loop: Header=BB0_231 Depth=3
	lui r1, 1024
	or r23, r10, r1
.LBB0_234:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r9, 8(r3)
	and r1, r9, r25
	setlt.u r2, r21, r1
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r2, zero, .LBB0_236
# %bb.235:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r9, 0
	j .LBB0_237
.LBB0_236:                              #   in Loop: Header=BB0_231 Depth=3
	lui r2, 1024
	or r22, r9, r2
.LBB0_237:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r2, 4(r3)
	and r28, r2, r25
	setlt.u r6, r21, r28
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r6, zero, .LBB0_239
# %bb.238:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	j .LBB0_240
.LBB0_239:                              #   in Loop: Header=BB0_231 Depth=3
	lui r6, 1024
	or r20, r2, r6
.LBB0_240:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r3, 0(r3)
	and r19, r3, r25
	setlt.u r6, r21, r19
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r6, zero, .LBB0_246
# %bb.241:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r3, 0
	.loc	1 315 19 is_stmt 1              # parallel-rne.mlir:315:19
	setlt.u r19, r26, r19
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r19, zero, .LBB0_243
.LBB0_242:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r3, 16
	andi r6, r6, 1
	add.s r3, r3, r6
	add.s r3, r3, r11
	and r6, r3, r18
.LBB0_243:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	setlt.u r3, r26, r28
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	beq r3, zero, .LBB0_247
# %bb.244:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r26, r1
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	beq r1, zero, .LBB0_248
.LBB0_245:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r26, r24
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r1, zero, .LBB0_230
	j .LBB0_249
.LBB0_246:                              #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r3, r6
	.loc	1 315 19 is_stmt 1              # parallel-rne.mlir:315:19
	setlt.u r19, r26, r19
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	beq r19, zero, .LBB0_242
	j .LBB0_243
.LBB0_247:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r11
	and r20, r2, r18
	setlt.u r1, r26, r1
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r1, zero, .LBB0_245
.LBB0_248:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r11
	and r22, r1, r18
	setlt.u r1, r26, r24
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r1, zero, .LBB0_230
.LBB0_249:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r11
	and r23, r1, r18
	j .LBB0_230
.LBB0_250:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 294 7 is_stmt 1               # parallel-rne.mlir:294:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r8
	load.d r[6:7], -40(r30)                 # 8-byte Folded Reload
.LBB0_251:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	zext_int2long r[1:2], zero
	.loc	1 323 7 is_stmt 1               # parallel-rne.mlir:323:7
	store.d r[1:2], -32(r30)                # 8-byte Folded Spill
	loadli.w r1,  -60(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_283
# %bb.252:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 448
	.loc	1 323 7                         # parallel-rne.mlir:323:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_254
.LBB0_253:                              # %middle.block
                                        #   in Loop: Header=BB0_254 Depth=2
	.loc	1 331 9 is_stmt 1               # parallel-rne.mlir:331:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 480
	zext_int2long r[4:5], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_282
.LBB0_254:                              # %vector.memcheck
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_263 Depth 3
                                        #       Child Loop BB0_257 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 332 11 is_stmt 1              # parallel-rne.mlir:332:11
	bneq r16, r27, .LBB0_261
# %bb.255:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_254 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_257
.LBB0_256:                              # %scalar.ph
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	setlt.ul r7, r[1:2], r[12:13]
	.loc	1 347 13 is_stmt 1              # parallel-rne.mlir:347:13
	add.s r3, r16, r3
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 347 13                        # parallel-rne.mlir:347:13
	stores.w r6, 0(r3)
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	beq r7, zero, .LBB0_253
.LBB0_257:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_254 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	add.ul r[6:7], r[1:2], r[4:5]
	slli r3, r6, 2
	add.s r6, r27, r3
	loads.w r7, 0(r6)
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	and r8, r7, r25
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	setlt.u r6, r21, r8
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r6, zero, .LBB0_259
# %bb.258:                              # %scalar.ph
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	.loc	1 344 19 is_stmt 1              # parallel-rne.mlir:344:19
	setlt.u r8, r26, r8
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r8, zero, .LBB0_256
	j .LBB0_260
.LBB0_259:                              #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r7, r6
	.loc	1 344 19 is_stmt 1              # parallel-rne.mlir:344:19
	setlt.u r8, r26, r8
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r8, zero, .LBB0_256
.LBB0_260:                              # %scalar.ph
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r11
	and r6, r6, r18
	j .LBB0_256
.LBB0_261:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_254 Depth=2
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	j .LBB0_263
.LBB0_262:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 332 11 is_stmt 1              # parallel-rne.mlir:332:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 347 13                        # parallel-rne.mlir:347:13
	add.s r2, r16, r8
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	seteq.d r1, r[6:7], r[14:15]
	.loc	1 347 13                        # parallel-rne.mlir:347:13
	stores.w r23, 4(r2)
	load.d r[23:24], -8(r30)                # 8-byte Folded Reload
	stores.w r28, 12(r2)
	stores.w r3, 8(r2)
	stores.w r17, 0(r2)
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	bneq r1, zero, .LBB0_253
.LBB0_263:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_254 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	add.ul r[1:2], r[6:7], r[4:5]
	slli r8, r1, 2
	add.s r1, r27, r8
	loads.w r10, 12(r1)
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	and r22, r10, r25
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	setlt.u r2, r21, r22
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r2, zero, .LBB0_265
# %bb.264:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r10, 0
	j .LBB0_266
.LBB0_265:                              #   in Loop: Header=BB0_263 Depth=3
	lui r2, 1024
	or r28, r10, r2
.LBB0_266:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	loads.w r20, 8(r1)
	and r2, r20, r25
	setlt.u r3, r21, r2
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r3, zero, .LBB0_268
# %bb.267:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r20, 0
	j .LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_263 Depth=3
	lui r3, 1024
	or r3, r20, r3
.LBB0_269:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	loads.w r9, 4(r1)
	and r24, r9, r25
	setlt.u r17, r21, r24
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r17, zero, .LBB0_271
# %bb.270:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r9, 0
	j .LBB0_272
.LBB0_271:                              #   in Loop: Header=BB0_263 Depth=3
	lui r17, 1024
	or r23, r9, r17
.LBB0_272:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	loads.w r1, 0(r1)
	and r19, r1, r25
	setlt.u r17, r21, r19
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r17, zero, .LBB0_278
# %bb.273:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r1, 0
	.loc	1 344 19 is_stmt 1              # parallel-rne.mlir:344:19
	setlt.u r19, r26, r19
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r19, zero, .LBB0_275
.LBB0_274:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r17, r1, 16
	andi r17, r17, 1
	add.s r1, r1, r17
	add.s r1, r1, r11
	and r17, r1, r18
.LBB0_275:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	setlt.u r1, r26, r24
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	beq r1, zero, .LBB0_279
# %bb.276:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r26, r2
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	beq r1, zero, .LBB0_280
.LBB0_277:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r26, r22
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r1, zero, .LBB0_262
	j .LBB0_281
.LBB0_278:                              #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r17, 1024
	or r17, r1, r17
	.loc	1 344 19 is_stmt 1              # parallel-rne.mlir:344:19
	setlt.u r19, r26, r19
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	beq r19, zero, .LBB0_274
	j .LBB0_275
.LBB0_279:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r11
	and r23, r1, r18
	setlt.u r1, r26, r2
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r1, zero, .LBB0_277
.LBB0_280:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r20, 16
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r11
	and r3, r1, r18
	setlt.u r1, r26, r22
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r1, zero, .LBB0_262
.LBB0_281:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r11
	and r28, r1, r18
	j .LBB0_262
.LBB0_282:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 323 7 is_stmt 1               # parallel-rne.mlir:323:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r8
	load.d r[6:7], -40(r30)                 # 8-byte Folded Reload
.LBB0_283:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 352 7                         # parallel-rne.mlir:352:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	addli r1, zero, 3
	.loc	1 352 7                         # parallel-rne.mlir:352:7
	sync_core
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	beq r8, r1, .LBB0_5
# %bb.284:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[10:11], -56(r30)               # 8-byte Folded Reload
	addli r12, zero, 2
	addli r13, zero, 32
	addli r16, zero, 1
	.loc	1 370 7 is_stmt 1               # parallel-rne.mlir:370:7
	bneq r8, zero, .LBB0_6
# %bb.285:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -72(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -68(r30)                  # 4-byte Folded Reload
	addli.d r[19:20], r[6:7], 0
	.loc	1 362 13 is_stmt 1              # parallel-rne.mlir:362:13
	load.d r[5:6], -24(r30)                 # 8-byte Folded Reload
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	load.d r[7:8], -32(r30)                 # 8-byte Folded Reload
	addli r9, zero, 12
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	xwait r9, 0
	slli r1, r1, 5
	slli r2, r2, 4
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	zext_int2long r[3:4], r1
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	sext_int2long r[1:2], r2
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	min.ul r[5:6], r[3:4], r[5:6]
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	min.sl r[7:8], r[1:2], r[7:8]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	addli.d r[5:6], r[5:6], 32
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	addli.d r[7:8], r[7:8], 16
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	max.ul r[5:6], r[5:6], r[3:4]
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	max.sl r[7:8], r[7:8], r[1:2]
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	sub.sl r[3:4], r[5:6], r[3:4]
	.loc	1 359 13                        # parallel-rne.mlir:359:13
	sub.sl r[1:2], r[7:8], r[1:2]
	addli r7, zero, 16
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	sll.d r[5:6], r[23:24], r9
	addli r9, zero, 5
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	min.ul r[3:4], r[3:4], r[14:15]
	zext_int2long r[7:8], r7
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	load.d r[14:15], 16(r30)
	lock zero, r9
	dma_cfg r16, r16, zero, 0
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	min.sl r[1:2], r[1:2], r[7:8]
	lui r7, 7
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	addli r8, r3, 31
	dma_cfg zero, r16, zero, 1
	slli r3, r3, 1
	addli r4, zero, 128
	add.ul r[5:6], r[14:15], r[5:6]
	addli r14, zero, 64
	ori r7, r7, 64
	andi r3, r3, 62
	add.ul r[5:6], r[5:6], r[19:20]
	add.s r7, r27, r7
	dma_cfg r6, zero, zero, 2
	dma_cfg r5, r7, r14, 3
	srli r5, r8, 5
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r8
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	dma_cfg r14, r4, r5, 4
	addli r5, zero, 256
	dma_cfg r5, r4, r1, 5
	addli r1, zero, 13
	dma_cfg zero, zero, r3, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r1, 0
	j .LBB0_6
.LBB0_286:                              # %._crit_edge
	.loc	1 372 5                         # parallel-rne.mlir:372:5
	xsignal zero, 0
	bneq r8, zero, .LBB0_288
# %bb.287:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 372 5                         # parallel-rne.mlir:372:5
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
	.loc	1 373 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:373:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/division-uoh541oc" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
