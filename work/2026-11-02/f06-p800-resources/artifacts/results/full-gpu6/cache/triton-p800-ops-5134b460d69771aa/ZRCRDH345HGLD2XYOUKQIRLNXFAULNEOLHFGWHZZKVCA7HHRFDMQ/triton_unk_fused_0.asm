	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-tw13t78t" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -160
	addli r1, zero, 1
.Ltmp0:
	.loc	1 28 5 prologue_end             # parallel-rne.mlir:28:5
	core_id r10
	addli r30, sp, 96
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
	addli r2, zero, 18
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
	addli r1, zero, 9
	addli r2, zero, 7
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
	addli r1, zero, 16
	addli r2, zero, 14
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
	loadli.w r1,  32(r30)
	loadli.w r2,  36(r30)
	.loc	1 30 10 is_stmt 1               # parallel-rne.mlir:30:10
	load_param_i r4, 1
	loadli.w r3,  40(r30)
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
	.loc	1 49 5                          # parallel-rne.mlir:49:5
	ble.s r2, r1, .LBB0_440
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 39 11 is_stmt 1               # parallel-rne.mlir:39:11
	sext_int2long r[4:5], r1
	lui r1, 524287
	addli r12, zero, 16
	addli r17, zero, 1
	addli r14, zero, 11
	addli r15, zero, 3
	addli r11, zero, 64
	lui r20, 1024
	lui r25, 522240
	lui r23, 1048560
	addli r19, zero, 4096
	addli r21, zero, 0
	store.d r[2:3], -96(r30)                # 8-byte Folded Spill
	ori r13, r1, 4095
	lui r1, 7
	lui r2, 522239
	ori r28, r1, 4095
	ori r1, r2, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 613 7                         # parallel-rne.mlir:613:7
	addli r2, zero, 14
	addli r12, zero, 16
	addli r17, zero, 1
	xsignal r2, 0
	.loc	1 614 7                         # parallel-rne.mlir:614:7
	addli r2, zero, 17
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[4:5], -64(r30)                 # 8-byte Folded Reload
	.loc	1 49 5 is_stmt 1                # parallel-rne.mlir:49:5
	load.d r[2:3], -96(r30)                 # 8-byte Folded Reload
	loadli.w r21,  -52(r30)                 # 4-byte Folded Reload
	addli.d r[4:5], r[4:5], 1
	addli r21, r21, 1
	setlt.sl r2, r[4:5], r[2:3]
	beq r2, zero, .LBB0_440
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_105 Depth 2
                                        #       Child Loop BB0_107 Depth 3
                                        #     Child Loop BB0_30 Depth 2
                                        #       Child Loop BB0_32 Depth 3
                                        #     Child Loop BB0_130 Depth 2
                                        #       Child Loop BB0_132 Depth 3
                                        #     Child Loop BB0_55 Depth 2
                                        #       Child Loop BB0_57 Depth 3
                                        #     Child Loop BB0_155 Depth 2
                                        #       Child Loop BB0_157 Depth 3
                                        #     Child Loop BB0_80 Depth 2
                                        #       Child Loop BB0_82 Depth 3
                                        #     Child Loop BB0_180 Depth 2
                                        #       Child Loop BB0_182 Depth 3
                                        #     Child Loop BB0_204 Depth 2
                                        #       Child Loop BB0_206 Depth 3
                                        #     Child Loop BB0_234 Depth 2
                                        #     Child Loop BB0_314 Depth 2
                                        #       Child Loop BB0_316 Depth 3
                                        #     Child Loop BB0_240 Depth 2
                                        #       Child Loop BB0_242 Depth 3
                                        #     Child Loop BB0_339 Depth 2
                                        #       Child Loop BB0_341 Depth 3
                                        #     Child Loop BB0_265 Depth 2
                                        #       Child Loop BB0_267 Depth 3
                                        #     Child Loop BB0_364 Depth 2
                                        #       Child Loop BB0_366 Depth 3
                                        #     Child Loop BB0_290 Depth 2
                                        #       Child Loop BB0_292 Depth 3
                                        #     Child Loop BB0_389 Depth 2
                                        #       Child Loop BB0_391 Depth 3
                                        #     Child Loop BB0_414 Depth 2
                                        #       Child Loop BB0_416 Depth 3
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	loadli.w r2,  40(r30)
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	loadli.w r3,  36(r30)
	store.d r[4:5], -64(r30)                # 8-byte Folded Spill
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	addli r6, zero, 8
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	storeli.w r21, -52(r30)                 # 4-byte Folded Spill
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	div.s r2, r4, r2
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	div.s r3, r2, r3
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	div.s r4, r3, r12
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	slli r2, r4, 3
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	sub.s r5, r17, r2
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	min.s r9, r5, r6
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	addli r6, zero, 5
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	mod.s r5, r3, r9
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	mod.s r6, r21, r6
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	add.s r2, r5, r2
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	slli r5, r6, 12
	storeli.w r6, -32(r30)                  # 4-byte Folded Spill
	.loc	1 68 13                         # parallel-rne.mlir:68:13
	zext_int2long r[7:8], r2
	storeli.w r2, -84(r30)                  # 4-byte Folded Spill
	.loc	1 87 13                         # parallel-rne.mlir:87:13
	lui r2, 5
	storeli.w r5, -4(r30)                   # 4-byte Folded Spill
	add.s r6, r5, r2
	store.d r[7:8], -16(r30)                # 8-byte Folded Spill
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	bneq r10, r17, .LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[18:19], 0(r30)
	sll.d r[7:8], r[7:8], r14
	addli r16, zero, 4
	xwait r15, 0
	add.ul r[7:8], r[18:19], r[7:8]
	blt.s r16, r21, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 5
	addli r18, zero, 2
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	addli r5, zero, 6
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 7
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 8
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 9
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
	addli r5, zero, 128
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r11, 3
	dma_cfg r5, zero, r18, 4
	addli r5, zero, 256
	dma_cfg r5, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
	lui r2, 5
	addli r18, zero, 64
	addli r19, zero, 128
	addli r21, zero, 256
	addli r11, zero, 64
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	lock zero, r16
	dma_cfg r17, r17, zero, 0
	ori r2, r2, 64
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	dma_cfg zero, r8, zero, 2
	add.s r2, r5, r2
	addli r5, zero, 7
	dma_cfg r2, r7, r18, 3
	addli r8, zero, 2
	addli r2, zero, 5
	addli r7, zero, 6
	dma_cfg r19, r18, r8, 4
	dma_cfg r21, r19, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r16
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 8
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 9
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
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r18, 3
	dma_cfg r19, zero, r8, 4
	addli r19, zero, 4096
	dma_cfg r21, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
	xsignal r8, 0
	.loc	1 94 7 is_stmt 1                # parallel-rne.mlir:94:7
	j .LBB0_16
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 2
	.loc	1 94 7                          # parallel-rne.mlir:94:7
	bneq r10, r2, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	xwait r2, 0
	addli r2, zero, 5
	addli r5, zero, 2
	addli r11, zero, 64
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 64
	ds_cfg r5, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r12, zero, 13
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	shuffle_batch r5, r6, r2, 1
	addli r2, zero, 1
	unlock zero
	xsignal r15, 0
	storeli.w r2, -48(r30)                  # 4-byte Folded Spill
	addli r2, zero, 4
	xsignal r2, 0
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	addli r7, zero, 6
.LBB0_16:                               #   in Loop: Header=BB0_8 Depth=1
	slli r2, r4, 4
	.loc	1 102 13 is_stmt 1              # parallel-rne.mlir:102:13
	loadli.w r4,  -32(r30)                  # 4-byte Folded Reload
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r2, r3, r2
	.loc	1 102 13                        # parallel-rne.mlir:102:13
	slli r6, r4, 14
	.loc	1 104 13 is_stmt 1              # parallel-rne.mlir:104:13
	lui r4, 15
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.s r2, r2, r9
	.loc	1 104 13                        # parallel-rne.mlir:104:13
	add.s r4, r6, r4
	storeli.w r2, -72(r30)                  # 4-byte Folded Spill
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	zext_int2long r[2:3], r2
	sll.d r[2:3], r[2:3], r7
	.loc	1 108 7 is_stmt 1               # parallel-rne.mlir:108:7
	sll.d r[7:8], r[2:3], r17
	addli r2, zero, 6
	store.d r[7:8], -80(r30)                # 8-byte Folded Spill
	bneq r10, r2, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli.d r[21:22], r[7:8], 0
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	load.d r[7:8], 8(r30)
	addli r16, zero, 7
	addli r3, zero, 6
	addli r5, zero, 4
	xwait r16, 0
	loadli.w r2,  -52(r30)                  # 4-byte Folded Reload
	add.ul r[7:8], r[7:8], r[21:22]
	blt.s r5, r2, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 5
	addli r9, zero, 2
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	addli r11, zero, 128
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r14, 10
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
	addli r3, zero, 64
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r4, zero, r3, 3
	dma_cfg r11, zero, r9, 4
	addli r9, zero, 256
	dma_cfg r9, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
.LBB0_19:                               # %.thread29
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r2, 15
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	addli r9, zero, 64
	addli r3, zero, 6
	addli r11, zero, 64
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	lock zero, r5
	ori r2, r2, 64
	dma_cfg r17, r17, zero, 0
	dma_cfg zero, r8, zero, 2
	add.s r2, r6, r2
	addli r6, zero, 2
	dma_cfg r2, r7, r9, 3
	addli r7, zero, 128
	addli r8, zero, 256
	addli r2, zero, 5
	dma_cfg r7, r9, r6, 4
	dma_cfg r8, r8, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r5
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r14, 10
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
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r4, zero, r9, 3
	dma_cfg r7, zero, r6, 4
	dma_cfg r8, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
	addli r2, zero, 6
	j .LBB0_24
.LBB0_20:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 4
	.loc	1 109 7 is_stmt 1               # parallel-rne.mlir:109:7
	beq r10, r3, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[7:8], -16(r30)                 # 8-byte Folded Reload
	addli r3, zero, 7
	.loc	1 109 7                         # parallel-rne.mlir:109:7
	bneq r10, r3, .LBB0_439
# %bb.22:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	.loc	1 109 7                         # parallel-rne.mlir:109:7
	xwait r2, 0
	addli r2, zero, 9
	addli r11, zero, 64
	xwait r2, 0
	addli r2, zero, 2
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 64
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r2, zero, 13
	shuffle_coa r6, r4, r2, 2
	addli r2, zero, 1
	unlock zero
	xsignal r3, 0
	storeli.w r2, -40(r30)                  # 4-byte Folded Spill
	addli r2, zero, 8
	xsignal r2, 0
	.loc	1 129 7 is_stmt 1               # parallel-rne.mlir:129:7
	beq r10, r15, .LBB0_25
	j .LBB0_26
.LBB0_23:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 110 7                         # parallel-rne.mlir:110:7
	addli r2, zero, 8
	addli r4, zero, 1
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	xwait r3, 0
	xwait r2, 0
	xwait r14, 0
	lock zero, r4
	addli r2, zero, 2
	mm_cfg r11, r11, r12, 0
	mm_cfg r3, r2, r4, 2
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	mm r2, r2, r6, 8
	addli r2, zero, 1
	storeli.w r2, -44(r30)                  # 4-byte Folded Spill
	addli r2, zero, 5
	unlock r4
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	addli r2, zero, 10
.LBB0_24:                               # %.thread30
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
	load.d r[7:8], -16(r30)                 # 8-byte Folded Reload
	.loc	1 129 7 is_stmt 1               # parallel-rne.mlir:129:7
	bneq r10, r15, .LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	addli r2, zero, 14
	xwait r2, 0
.LBB0_26:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r2, 35
	.loc	1 132 7 is_stmt 1               # parallel-rne.mlir:132:7
	xfence
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	loadli.w r3,  -4(r30)                   # 4-byte Folded Reload
	.loc	1 133 7 is_stmt 1               # parallel-rne.mlir:133:7
	mfence { lm, sm, gm }
	ori r2, r2, 1280
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r4, r3, r2
	.loc	1 134 7 is_stmt 1               # parallel-rne.mlir:134:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	beq r10, zero, .LBB0_103
# %bb.27:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r24, zero, 16
	.loc	1 164 7 is_stmt 1               # parallel-rne.mlir:164:7
	bneq r10, r17, .LBB0_127
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 128
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_30
.LBB0_29:                               # %middle.block194
                                        #   in Loop: Header=BB0_30 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 192
	.loc	1 172 9 is_stmt 1               # parallel-rne.mlir:172:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r3
	beq r2, zero, .LBB0_51
.LBB0_30:                               # %vector.ph189
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_32 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[26:27], zero
	j .LBB0_32
.LBB0_31:                               # %vector.body190
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	addli.d r[26:27], r[26:27], 4
	zext_int2long r[2:3], r11
	setneq.d r2, r[26:27], r[2:3]
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	add.s r3, r4, r16
	stores.w r10, 12(r3)
	stores.w r12, 8(r3)
	stores.w r5, 4(r3)
	stores.w r21, 0(r3)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	beq r2, zero, .LBB0_29
.LBB0_32:                               # %vector.body190
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[2:3], r[26:27], r[7:8]
	slli r16, r2, 2
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	add.s r3, r2, r16
	loads.w r17, 12(r3)
	loads.w r9, 0(r3)
	loads.w r2, 4(r3)
	loads.w r15, 8(r3)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r19, r17, r13
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r3, r25, r19
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r3, zero, .LBB0_34
# %bb.33:                               # %vector.body190
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r17, 0
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_32 Depth=3
	or r10, r17, r20
.LBB0_35:                               # %vector.body190
                                        #   in Loop: Header=BB0_32 Depth=3
	and r3, r15, r13
	setlt.u r5, r25, r3
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r5, zero, .LBB0_37
# %bb.36:                               # %vector.body190
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r15, 0
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_32 Depth=3
	or r12, r15, r20
.LBB0_38:                               # %vector.body190
                                        #   in Loop: Header=BB0_32 Depth=3
	and r18, r2, r13
	setlt.u r5, r25, r18
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r5, zero, .LBB0_40
# %bb.39:                               # %vector.body190
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r2, 0
	j .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_32 Depth=3
	or r5, r2, r20
.LBB0_41:                               # %vector.body190
                                        #   in Loop: Header=BB0_32 Depth=3
	and r22, r9, r13
	setlt.u r14, r25, r22
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r14, zero, .LBB0_43
# %bb.42:                               # %vector.body190
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r9, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r14, r1, r22
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r14, zero, .LBB0_44
	j .LBB0_45
.LBB0_43:                               #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r9, r20
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r14, r1, r22
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r14, zero, .LBB0_45
.LBB0_44:                               # %vector.body190
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r28
	and r21, r9, r23
.LBB0_45:                               # %vector.body190
                                        #   in Loop: Header=BB0_32 Depth=3
	setlt.u r9, r1, r18
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r9, zero, .LBB0_48
# %bb.46:                               # %vector.body190
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r28
	and r5, r2, r23
	setlt.u r2, r1, r3
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r2, zero, .LBB0_49
.LBB0_47:                               # %vector.body190
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r19
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r2, zero, .LBB0_31
	j .LBB0_50
.LBB0_48:                               # %vector.body190
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r3
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r2, zero, .LBB0_47
.LBB0_49:                               # %vector.body190
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r28
	and r12, r2, r23
	setlt.u r2, r1, r19
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r2, zero, .LBB0_31
.LBB0_50:                               # %vector.body190
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r17, 16
	andi r2, r2, 1
	add.s r2, r17, r2
	add.s r2, r2, r28
	and r10, r2, r23
	j .LBB0_31
.LBB0_51:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 164 7 is_stmt 1               # parallel-rne.mlir:164:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 11
	addli r15, zero, 3
	addli r19, zero, 4096
	load.d r[7:8], -16(r30)                 # 8-byte Folded Reload
	.loc	1 193 7                         # parallel-rne.mlir:193:7
	loadli.w r2,  -48(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_128
.LBB0_52:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 222 7                         # parallel-rne.mlir:222:7
	bneq r10, r15, .LBB0_152
.LBB0_53:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 384
	.loc	1 222 7                         # parallel-rne.mlir:222:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_55
.LBB0_54:                               # %middle.block176
                                        #   in Loop: Header=BB0_55 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 448
	.loc	1 230 9 is_stmt 1               # parallel-rne.mlir:230:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r3
	beq r2, zero, .LBB0_76
.LBB0_55:                               # %vector.ph171
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_57 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[26:27], zero
	j .LBB0_57
.LBB0_56:                               # %vector.body172
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 231 11 is_stmt 1              # parallel-rne.mlir:231:11
	addli.d r[26:27], r[26:27], 4
	zext_int2long r[2:3], r11
	setneq.d r2, r[26:27], r[2:3]
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	add.s r3, r4, r16
	stores.w r10, 12(r3)
	stores.w r12, 8(r3)
	stores.w r5, 4(r3)
	stores.w r21, 0(r3)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	beq r2, zero, .LBB0_54
.LBB0_57:                               # %vector.body172
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[2:3], r[26:27], r[7:8]
	slli r16, r2, 2
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	add.s r3, r2, r16
	loads.w r17, 12(r3)
	loads.w r9, 0(r3)
	loads.w r2, 4(r3)
	loads.w r15, 8(r3)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r19, r17, r13
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	setlt.u r3, r25, r19
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r3, zero, .LBB0_59
# %bb.58:                               # %vector.body172
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r17, 0
	j .LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_57 Depth=3
	or r10, r17, r20
.LBB0_60:                               # %vector.body172
                                        #   in Loop: Header=BB0_57 Depth=3
	and r3, r15, r13
	setlt.u r5, r25, r3
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r5, zero, .LBB0_62
# %bb.61:                               # %vector.body172
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r15, 0
	j .LBB0_63
.LBB0_62:                               #   in Loop: Header=BB0_57 Depth=3
	or r12, r15, r20
.LBB0_63:                               # %vector.body172
                                        #   in Loop: Header=BB0_57 Depth=3
	and r18, r2, r13
	setlt.u r5, r25, r18
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r5, zero, .LBB0_65
# %bb.64:                               # %vector.body172
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r2, 0
	j .LBB0_66
.LBB0_65:                               #   in Loop: Header=BB0_57 Depth=3
	or r5, r2, r20
.LBB0_66:                               # %vector.body172
                                        #   in Loop: Header=BB0_57 Depth=3
	and r22, r9, r13
	setlt.u r14, r25, r22
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r14, zero, .LBB0_68
# %bb.67:                               # %vector.body172
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r9, 0
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r14, r1, r22
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r14, zero, .LBB0_69
	j .LBB0_70
.LBB0_68:                               #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r9, r20
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r14, r1, r22
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r14, zero, .LBB0_70
.LBB0_69:                               # %vector.body172
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r28
	and r21, r9, r23
.LBB0_70:                               # %vector.body172
                                        #   in Loop: Header=BB0_57 Depth=3
	setlt.u r9, r1, r18
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r9, zero, .LBB0_73
# %bb.71:                               # %vector.body172
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r28
	and r5, r2, r23
	setlt.u r2, r1, r3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r2, zero, .LBB0_74
.LBB0_72:                               # %vector.body172
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r19
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r2, zero, .LBB0_56
	j .LBB0_75
.LBB0_73:                               # %vector.body172
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r2, zero, .LBB0_72
.LBB0_74:                               # %vector.body172
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r28
	and r12, r2, r23
	setlt.u r2, r1, r19
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r2, zero, .LBB0_56
.LBB0_75:                               # %vector.body172
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r17, 16
	andi r2, r2, 1
	add.s r2, r17, r2
	add.s r2, r2, r28
	and r10, r2, r23
	j .LBB0_56
.LBB0_76:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 222 7 is_stmt 1               # parallel-rne.mlir:222:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 11
	addli r15, zero, 3
	addli r19, zero, 4096
	load.d r[7:8], -16(r30)                 # 8-byte Folded Reload
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	loadli.w r2,  -44(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_153
.LBB0_77:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	addli r2, zero, 5
	bneq r10, r2, .LBB0_177
.LBB0_78:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 640
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_80
.LBB0_79:                               # %middle.block158
                                        #   in Loop: Header=BB0_80 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 704
	.loc	1 288 9 is_stmt 1               # parallel-rne.mlir:288:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r3
	beq r2, zero, .LBB0_101
.LBB0_80:                               # %vector.ph153
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_82 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[26:27], zero
	j .LBB0_82
.LBB0_81:                               # %vector.body154
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 289 11 is_stmt 1              # parallel-rne.mlir:289:11
	addli.d r[26:27], r[26:27], 4
	zext_int2long r[2:3], r11
	setneq.d r2, r[26:27], r[2:3]
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	add.s r3, r4, r16
	stores.w r10, 12(r3)
	stores.w r12, 8(r3)
	stores.w r5, 4(r3)
	stores.w r21, 0(r3)
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	beq r2, zero, .LBB0_79
.LBB0_82:                               # %vector.body154
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	add.ul r[2:3], r[26:27], r[7:8]
	slli r16, r2, 2
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	add.s r3, r2, r16
	loads.w r17, 12(r3)
	loads.w r9, 0(r3)
	loads.w r2, 4(r3)
	loads.w r15, 8(r3)
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	and r19, r17, r13
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	setlt.u r3, r25, r19
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r3, zero, .LBB0_84
# %bb.83:                               # %vector.body154
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r17, 0
	j .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_82 Depth=3
	or r10, r17, r20
.LBB0_85:                               # %vector.body154
                                        #   in Loop: Header=BB0_82 Depth=3
	and r3, r15, r13
	setlt.u r5, r25, r3
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r5, zero, .LBB0_87
# %bb.86:                               # %vector.body154
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r15, 0
	j .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_82 Depth=3
	or r12, r15, r20
.LBB0_88:                               # %vector.body154
                                        #   in Loop: Header=BB0_82 Depth=3
	and r18, r2, r13
	setlt.u r5, r25, r18
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r5, zero, .LBB0_90
# %bb.89:                               # %vector.body154
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r2, 0
	j .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_82 Depth=3
	or r5, r2, r20
.LBB0_91:                               # %vector.body154
                                        #   in Loop: Header=BB0_82 Depth=3
	and r22, r9, r13
	setlt.u r14, r25, r22
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r14, zero, .LBB0_93
# %bb.92:                               # %vector.body154
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r9, 0
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r14, r1, r22
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r14, zero, .LBB0_94
	j .LBB0_95
.LBB0_93:                               #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r9, r20
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r14, r1, r22
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r14, zero, .LBB0_95
.LBB0_94:                               # %vector.body154
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r28
	and r21, r9, r23
.LBB0_95:                               # %vector.body154
                                        #   in Loop: Header=BB0_82 Depth=3
	setlt.u r9, r1, r18
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r9, zero, .LBB0_98
# %bb.96:                               # %vector.body154
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r28
	and r5, r2, r23
	setlt.u r2, r1, r3
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r2, zero, .LBB0_99
.LBB0_97:                               # %vector.body154
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r19
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r2, zero, .LBB0_81
	j .LBB0_100
.LBB0_98:                               # %vector.body154
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r3
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r2, zero, .LBB0_97
.LBB0_99:                               # %vector.body154
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r28
	and r12, r2, r23
	setlt.u r2, r1, r19
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r2, zero, .LBB0_81
.LBB0_100:                              # %vector.body154
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r17, 16
	andi r2, r2, 1
	add.s r2, r17, r2
	add.s r2, r2, r28
	and r10, r2, r23
	j .LBB0_81
.LBB0_101:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 280 7 is_stmt 1               # parallel-rne.mlir:280:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 11
	addli r15, zero, 3
	addli r19, zero, 4096
	load.d r[7:8], -16(r30)                 # 8-byte Folded Reload
	.loc	1 309 7                         # parallel-rne.mlir:309:7
	addli r2, zero, 6
	beq r10, r2, .LBB0_178
.LBB0_102:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 338 7                         # parallel-rne.mlir:338:7
	loadli.w r2,  -40(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_202
	j .LBB0_226
.LBB0_103:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	xfence
	zext_int2long r[26:27], zero
	addli r8, zero, 1
	mfence { lm, sm, gm }
	store.d r[26:27], -24(r30)              # 8-byte Folded Spill
	j .LBB0_105
.LBB0_104:                              # %middle.block203
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 143 9                         # parallel-rne.mlir:143:9
	andi r5, r8, 1
	addli.d r[26:27], r[2:3], 0
	addli r8, zero, 0
	beq r5, zero, .LBB0_126
.LBB0_105:                              # %vector.ph198
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_107 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	load.d r[6:7], -24(r30)                 # 8-byte Folded Reload
	j .LBB0_107
.LBB0_106:                              # %vector.body199
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	addli.d r[6:7], r[6:7], 4
	zext_int2long r[2:3], r11
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r15, r4, r21
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	setneq.d r14, r[6:7], r[2:3]
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r10, 12(r15)
	stores.w r12, 8(r15)
	stores.w r5, 4(r15)
	stores.w r9, 0(r15)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	beq r14, zero, .LBB0_104
.LBB0_107:                              # %vector.body199
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[2:3], r[6:7], r[26:27]
	slli r21, r2, 2
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	add.s r3, r2, r21
	loads.w r22, 12(r3)
	loads.w r24, 0(r3)
	loads.w r2, 4(r3)
	loads.w r15, 8(r3)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r19, r22, r13
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r3, r25, r19
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r3, zero, .LBB0_109
# %bb.108:                              # %vector.body199
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r22, 0
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_107 Depth=3
	or r10, r22, r20
.LBB0_110:                              # %vector.body199
                                        #   in Loop: Header=BB0_107 Depth=3
	and r3, r15, r13
	setlt.u r5, r25, r3
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r5, zero, .LBB0_112
# %bb.111:                              # %vector.body199
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r15, 0
	j .LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_107 Depth=3
	or r12, r15, r20
.LBB0_113:                              # %vector.body199
                                        #   in Loop: Header=BB0_107 Depth=3
	and r18, r2, r13
	setlt.u r5, r25, r18
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r5, zero, .LBB0_115
# %bb.114:                              # %vector.body199
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r2, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_107 Depth=3
	or r5, r2, r20
.LBB0_116:                              # %vector.body199
                                        #   in Loop: Header=BB0_107 Depth=3
	and r16, r24, r13
	setlt.u r9, r25, r16
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r9, zero, .LBB0_118
# %bb.117:                              # %vector.body199
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r24, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r14, r1, r16
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r14, zero, .LBB0_119
	j .LBB0_120
.LBB0_118:                              #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r24, r20
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r14, r1, r16
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r14, zero, .LBB0_120
.LBB0_119:                              # %vector.body199
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r28
	and r9, r9, r23
.LBB0_120:                              # %vector.body199
                                        #   in Loop: Header=BB0_107 Depth=3
	setlt.u r14, r1, r18
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r14, zero, .LBB0_123
# %bb.121:                              # %vector.body199
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r28
	and r5, r2, r23
	setlt.u r2, r1, r3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r2, zero, .LBB0_124
.LBB0_122:                              # %vector.body199
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r19
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r2, zero, .LBB0_106
	j .LBB0_125
.LBB0_123:                              # %vector.body199
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r2, zero, .LBB0_122
.LBB0_124:                              # %vector.body199
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r28
	and r12, r2, r23
	setlt.u r2, r1, r19
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r2, zero, .LBB0_106
.LBB0_125:                              # %vector.body199
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r28
	and r10, r2, r23
	j .LBB0_106
.LBB0_126:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 11
	addli r15, zero, 3
	addli r19, zero, 4096
	load.d r[7:8], -16(r30)                 # 8-byte Folded Reload
	addli r24, zero, 16
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	beq r10, r17, .LBB0_28
.LBB0_127:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 193 7                         # parallel-rne.mlir:193:7
	loadli.w r2,  -48(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_52
.LBB0_128:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 256
	.loc	1 193 7                         # parallel-rne.mlir:193:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_130
.LBB0_129:                              # %middle.block185
                                        #   in Loop: Header=BB0_130 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 320
	.loc	1 201 9 is_stmt 1               # parallel-rne.mlir:201:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r3
	beq r2, zero, .LBB0_151
.LBB0_130:                              # %vector.ph180
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_132 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[26:27], zero
	j .LBB0_132
.LBB0_131:                              # %vector.body181
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 202 11 is_stmt 1              # parallel-rne.mlir:202:11
	addli.d r[26:27], r[26:27], 4
	zext_int2long r[2:3], r11
	setneq.d r2, r[26:27], r[2:3]
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	add.s r3, r4, r16
	stores.w r10, 12(r3)
	stores.w r12, 8(r3)
	stores.w r5, 4(r3)
	stores.w r21, 0(r3)
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	beq r2, zero, .LBB0_129
.LBB0_132:                              # %vector.body181
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	add.ul r[2:3], r[26:27], r[7:8]
	slli r16, r2, 2
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	add.s r3, r2, r16
	loads.w r17, 12(r3)
	loads.w r9, 0(r3)
	loads.w r2, 4(r3)
	loads.w r15, 8(r3)
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	and r19, r17, r13
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	setlt.u r3, r25, r19
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r3, zero, .LBB0_134
# %bb.133:                              # %vector.body181
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r17, 0
	j .LBB0_135
.LBB0_134:                              #   in Loop: Header=BB0_132 Depth=3
	or r10, r17, r20
.LBB0_135:                              # %vector.body181
                                        #   in Loop: Header=BB0_132 Depth=3
	and r3, r15, r13
	setlt.u r5, r25, r3
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r5, zero, .LBB0_137
# %bb.136:                              # %vector.body181
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r15, 0
	j .LBB0_138
.LBB0_137:                              #   in Loop: Header=BB0_132 Depth=3
	or r12, r15, r20
.LBB0_138:                              # %vector.body181
                                        #   in Loop: Header=BB0_132 Depth=3
	and r18, r2, r13
	setlt.u r5, r25, r18
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r5, zero, .LBB0_140
# %bb.139:                              # %vector.body181
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r2, 0
	j .LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_132 Depth=3
	or r5, r2, r20
.LBB0_141:                              # %vector.body181
                                        #   in Loop: Header=BB0_132 Depth=3
	and r22, r9, r13
	setlt.u r14, r25, r22
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r14, zero, .LBB0_143
# %bb.142:                              # %vector.body181
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r9, 0
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r14, r1, r22
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r14, zero, .LBB0_144
	j .LBB0_145
.LBB0_143:                              #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r9, r20
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r14, r1, r22
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r14, zero, .LBB0_145
.LBB0_144:                              # %vector.body181
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r28
	and r21, r9, r23
.LBB0_145:                              # %vector.body181
                                        #   in Loop: Header=BB0_132 Depth=3
	setlt.u r9, r1, r18
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r9, zero, .LBB0_148
# %bb.146:                              # %vector.body181
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r28
	and r5, r2, r23
	setlt.u r2, r1, r3
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r2, zero, .LBB0_149
.LBB0_147:                              # %vector.body181
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r19
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r2, zero, .LBB0_131
	j .LBB0_150
.LBB0_148:                              # %vector.body181
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r3
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r2, zero, .LBB0_147
.LBB0_149:                              # %vector.body181
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r28
	and r12, r2, r23
	setlt.u r2, r1, r19
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r2, zero, .LBB0_131
.LBB0_150:                              # %vector.body181
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r17, 16
	andi r2, r2, 1
	add.s r2, r17, r2
	add.s r2, r2, r28
	and r10, r2, r23
	j .LBB0_131
.LBB0_151:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 193 7 is_stmt 1               # parallel-rne.mlir:193:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 11
	addli r15, zero, 3
	addli r19, zero, 4096
	load.d r[7:8], -16(r30)                 # 8-byte Folded Reload
	.loc	1 222 7                         # parallel-rne.mlir:222:7
	beq r10, r15, .LBB0_53
.LBB0_152:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	loadli.w r2,  -44(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_77
.LBB0_153:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 512
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_155
.LBB0_154:                              # %middle.block167
                                        #   in Loop: Header=BB0_155 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 576
	.loc	1 259 9 is_stmt 1               # parallel-rne.mlir:259:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r3
	beq r2, zero, .LBB0_176
.LBB0_155:                              # %vector.ph162
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_157 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[26:27], zero
	j .LBB0_157
.LBB0_156:                              # %vector.body163
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 260 11 is_stmt 1              # parallel-rne.mlir:260:11
	addli.d r[26:27], r[26:27], 4
	zext_int2long r[2:3], r11
	setneq.d r2, r[26:27], r[2:3]
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	add.s r3, r4, r16
	stores.w r10, 12(r3)
	stores.w r12, 8(r3)
	stores.w r5, 4(r3)
	stores.w r21, 0(r3)
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	beq r2, zero, .LBB0_154
.LBB0_157:                              # %vector.body163
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_155 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.ul r[2:3], r[26:27], r[7:8]
	slli r16, r2, 2
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	add.s r3, r2, r16
	loads.w r17, 12(r3)
	loads.w r9, 0(r3)
	loads.w r2, 4(r3)
	loads.w r15, 8(r3)
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	and r19, r17, r13
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	setlt.u r3, r25, r19
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r3, zero, .LBB0_159
# %bb.158:                              # %vector.body163
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r17, 0
	j .LBB0_160
.LBB0_159:                              #   in Loop: Header=BB0_157 Depth=3
	or r10, r17, r20
.LBB0_160:                              # %vector.body163
                                        #   in Loop: Header=BB0_157 Depth=3
	and r3, r15, r13
	setlt.u r5, r25, r3
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r5, zero, .LBB0_162
# %bb.161:                              # %vector.body163
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r15, 0
	j .LBB0_163
.LBB0_162:                              #   in Loop: Header=BB0_157 Depth=3
	or r12, r15, r20
.LBB0_163:                              # %vector.body163
                                        #   in Loop: Header=BB0_157 Depth=3
	and r18, r2, r13
	setlt.u r5, r25, r18
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r5, zero, .LBB0_165
# %bb.164:                              # %vector.body163
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r2, 0
	j .LBB0_166
.LBB0_165:                              #   in Loop: Header=BB0_157 Depth=3
	or r5, r2, r20
.LBB0_166:                              # %vector.body163
                                        #   in Loop: Header=BB0_157 Depth=3
	and r22, r9, r13
	setlt.u r14, r25, r22
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r14, zero, .LBB0_168
# %bb.167:                              # %vector.body163
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r9, 0
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r14, r1, r22
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r14, zero, .LBB0_169
	j .LBB0_170
.LBB0_168:                              #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r9, r20
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r14, r1, r22
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r14, zero, .LBB0_170
.LBB0_169:                              # %vector.body163
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r28
	and r21, r9, r23
.LBB0_170:                              # %vector.body163
                                        #   in Loop: Header=BB0_157 Depth=3
	setlt.u r9, r1, r18
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r9, zero, .LBB0_173
# %bb.171:                              # %vector.body163
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r28
	and r5, r2, r23
	setlt.u r2, r1, r3
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r2, zero, .LBB0_174
.LBB0_172:                              # %vector.body163
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r19
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r2, zero, .LBB0_156
	j .LBB0_175
.LBB0_173:                              # %vector.body163
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r3
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r2, zero, .LBB0_172
.LBB0_174:                              # %vector.body163
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r28
	and r12, r2, r23
	setlt.u r2, r1, r19
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r2, zero, .LBB0_156
.LBB0_175:                              # %vector.body163
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r17, 16
	andi r2, r2, 1
	add.s r2, r17, r2
	add.s r2, r2, r28
	and r10, r2, r23
	j .LBB0_156
.LBB0_176:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 251 7 is_stmt 1               # parallel-rne.mlir:251:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 11
	addli r15, zero, 3
	addli r19, zero, 4096
	load.d r[7:8], -16(r30)                 # 8-byte Folded Reload
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	addli r2, zero, 5
	beq r10, r2, .LBB0_78
.LBB0_177:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 309 7                         # parallel-rne.mlir:309:7
	addli r2, zero, 6
	bneq r10, r2, .LBB0_102
.LBB0_178:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 768
	.loc	1 309 7                         # parallel-rne.mlir:309:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_180
.LBB0_179:                              # %middle.block149
                                        #   in Loop: Header=BB0_180 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 832
	.loc	1 317 9 is_stmt 1               # parallel-rne.mlir:317:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r3
	beq r2, zero, .LBB0_201
.LBB0_180:                              # %vector.ph144
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_182 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[26:27], zero
	j .LBB0_182
.LBB0_181:                              # %vector.body145
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 318 11 is_stmt 1              # parallel-rne.mlir:318:11
	addli.d r[26:27], r[26:27], 4
	zext_int2long r[2:3], r11
	setneq.d r2, r[26:27], r[2:3]
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	add.s r3, r4, r16
	stores.w r10, 12(r3)
	stores.w r12, 8(r3)
	stores.w r5, 4(r3)
	stores.w r21, 0(r3)
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	beq r2, zero, .LBB0_179
.LBB0_182:                              # %vector.body145
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_180 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	add.ul r[2:3], r[26:27], r[7:8]
	slli r16, r2, 2
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	add.s r3, r2, r16
	loads.w r17, 12(r3)
	loads.w r9, 0(r3)
	loads.w r2, 4(r3)
	loads.w r15, 8(r3)
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	and r19, r17, r13
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	setlt.u r3, r25, r19
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r3, zero, .LBB0_184
# %bb.183:                              # %vector.body145
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r17, 0
	j .LBB0_185
.LBB0_184:                              #   in Loop: Header=BB0_182 Depth=3
	or r10, r17, r20
.LBB0_185:                              # %vector.body145
                                        #   in Loop: Header=BB0_182 Depth=3
	and r3, r15, r13
	setlt.u r5, r25, r3
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r5, zero, .LBB0_187
# %bb.186:                              # %vector.body145
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r15, 0
	j .LBB0_188
.LBB0_187:                              #   in Loop: Header=BB0_182 Depth=3
	or r12, r15, r20
.LBB0_188:                              # %vector.body145
                                        #   in Loop: Header=BB0_182 Depth=3
	and r18, r2, r13
	setlt.u r5, r25, r18
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r5, zero, .LBB0_190
# %bb.189:                              # %vector.body145
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r2, 0
	j .LBB0_191
.LBB0_190:                              #   in Loop: Header=BB0_182 Depth=3
	or r5, r2, r20
.LBB0_191:                              # %vector.body145
                                        #   in Loop: Header=BB0_182 Depth=3
	and r22, r9, r13
	setlt.u r14, r25, r22
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r14, zero, .LBB0_193
# %bb.192:                              # %vector.body145
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r9, 0
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r14, r1, r22
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r14, zero, .LBB0_194
	j .LBB0_195
.LBB0_193:                              #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r9, r20
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r14, r1, r22
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r14, zero, .LBB0_195
.LBB0_194:                              # %vector.body145
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r28
	and r21, r9, r23
.LBB0_195:                              # %vector.body145
                                        #   in Loop: Header=BB0_182 Depth=3
	setlt.u r9, r1, r18
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r9, zero, .LBB0_198
# %bb.196:                              # %vector.body145
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r28
	and r5, r2, r23
	setlt.u r2, r1, r3
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r2, zero, .LBB0_199
.LBB0_197:                              # %vector.body145
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r19
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r2, zero, .LBB0_181
	j .LBB0_200
.LBB0_198:                              # %vector.body145
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r3
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r2, zero, .LBB0_197
.LBB0_199:                              # %vector.body145
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r28
	and r12, r2, r23
	setlt.u r2, r1, r19
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r2, zero, .LBB0_181
.LBB0_200:                              # %vector.body145
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r17, 16
	andi r2, r2, 1
	add.s r2, r17, r2
	add.s r2, r2, r28
	and r10, r2, r23
	j .LBB0_181
.LBB0_201:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 309 7 is_stmt 1               # parallel-rne.mlir:309:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 11
	addli r15, zero, 3
	addli r19, zero, 4096
	load.d r[7:8], -16(r30)                 # 8-byte Folded Reload
	.loc	1 338 7                         # parallel-rne.mlir:338:7
	loadli.w r2,  -40(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_226
.LBB0_202:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 896
	.loc	1 338 7                         # parallel-rne.mlir:338:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_204
.LBB0_203:                              # %middle.block140
                                        #   in Loop: Header=BB0_204 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 960
	.loc	1 346 9 is_stmt 1               # parallel-rne.mlir:346:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r3
	beq r2, zero, .LBB0_225
.LBB0_204:                              # %vector.ph135
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_206 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[26:27], zero
	j .LBB0_206
.LBB0_205:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 347 11 is_stmt 1              # parallel-rne.mlir:347:11
	addli.d r[26:27], r[26:27], 4
	zext_int2long r[2:3], r11
	setneq.d r2, r[26:27], r[2:3]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	add.s r3, r4, r16
	stores.w r10, 12(r3)
	stores.w r12, 8(r3)
	stores.w r5, 4(r3)
	stores.w r21, 0(r3)
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	beq r2, zero, .LBB0_203
.LBB0_206:                              # %vector.body136
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_204 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	add.ul r[2:3], r[26:27], r[7:8]
	slli r16, r2, 2
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	add.s r3, r2, r16
	loads.w r17, 12(r3)
	loads.w r9, 0(r3)
	loads.w r2, 4(r3)
	loads.w r15, 8(r3)
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r19, r17, r13
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	setlt.u r3, r25, r19
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r3, zero, .LBB0_208
# %bb.207:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r17, 0
	j .LBB0_209
.LBB0_208:                              #   in Loop: Header=BB0_206 Depth=3
	or r10, r17, r20
.LBB0_209:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	and r3, r15, r13
	setlt.u r5, r25, r3
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r5, zero, .LBB0_211
# %bb.210:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r15, 0
	j .LBB0_212
.LBB0_211:                              #   in Loop: Header=BB0_206 Depth=3
	or r12, r15, r20
.LBB0_212:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	and r18, r2, r13
	setlt.u r5, r25, r18
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r5, zero, .LBB0_214
# %bb.213:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r2, 0
	j .LBB0_215
.LBB0_214:                              #   in Loop: Header=BB0_206 Depth=3
	or r5, r2, r20
.LBB0_215:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	and r22, r9, r13
	setlt.u r14, r25, r22
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r14, zero, .LBB0_217
# %bb.216:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r9, 0
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r14, r1, r22
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r14, zero, .LBB0_218
	j .LBB0_219
.LBB0_217:                              #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r9, r20
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r14, r1, r22
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r14, zero, .LBB0_219
.LBB0_218:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r28
	and r21, r9, r23
.LBB0_219:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	setlt.u r9, r1, r18
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r9, zero, .LBB0_222
# %bb.220:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r28
	and r5, r2, r23
	setlt.u r2, r1, r3
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r2, zero, .LBB0_223
.LBB0_221:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r19
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r2, zero, .LBB0_205
	j .LBB0_224
.LBB0_222:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r3
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r2, zero, .LBB0_221
.LBB0_223:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r28
	and r12, r2, r23
	setlt.u r2, r1, r19
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r2, zero, .LBB0_205
.LBB0_224:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r17, 16
	andi r2, r2, 1
	add.s r2, r17, r2
	add.s r2, r2, r28
	and r10, r2, r23
	j .LBB0_205
.LBB0_225:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 338 7 is_stmt 1               # parallel-rne.mlir:338:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 11
	addli r15, zero, 3
	addli r19, zero, 4096
	load.d r[7:8], -16(r30)                 # 8-byte Folded Reload
.LBB0_226:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	loadli.w r2,  -72(r30)                  # 4-byte Folded Reload
	zext_int2long r[16:17], r11
	slli r2, r2, 6
	zext_int2long r[2:3], r2
	min.ul r[5:6], r[2:3], r[16:17]
	addli.d r[5:6], r[5:6], 64
	max.ul r[5:6], r[5:6], r[2:3]
	sub.sl r[2:3], r[5:6], r[2:3]
	min.ul r[2:3], r[2:3], r[16:17]
	.loc	1 367 7 is_stmt 1               # parallel-rne.mlir:367:7
	store.d r[2:3], -72(r30)                # 8-byte Folded Spill
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	bneq r10, r15, .LBB0_228
# %bb.227:                              # %.thread33.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	addli r2, zero, 12
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	xsignal r14, 0
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	xsignal r2, 0
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	addli r2, zero, 13
	xwait r2, 0
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	addli r2, zero, 18
	xwait r2, 0
	j .LBB0_236
.LBB0_228:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -32(r30)                  # 4-byte Folded Reload
	lui r3, 35
	slli r2, r2, 8
	add.s r6, r2, r3
	.loc	1 371 7 is_stmt 1               # parallel-rne.mlir:371:7
	addli r3, zero, 1
	bneq r10, r3, .LBB0_232
# %bb.229:                              #   in Loop: Header=BB0_8 Depth=1
	load.d r[7:8], 16(r30)
	load.d r[18:19], -80(r30)               # 8-byte Folded Reload
	addli r9, zero, 16
	addli r3, zero, 4
	xwait r9, 0
	loadli.w r5,  -52(r30)                  # 4-byte Folded Reload
	add.ul r[7:8], r[7:8], r[18:19]
	blt.s r3, r5, .LBB0_231
# %bb.230:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 5
	addli r5, zero, 1
	addli r18, zero, 2
	addli r12, zero, 4
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	lock zero, r3
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 6
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 7
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 8
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 9
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 12
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 13
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 14
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 15
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 17
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 18
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 19
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 20
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 21
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 22
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 23
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 24
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 25
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 26
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 27
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 28
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 29
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 30
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 31
	dma_cfg zero, zero, r12, 10
	dma_cfg r5, r5, zero, 0
	dma_cfg r5, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r11, 3
	addli r11, zero, 128
	dma_cfg r11, zero, r18, 4
	addli r11, zero, 256
	dma_cfg r11, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	addli r3, zero, 4
.LBB0_231:                              # %.thread33.thread35
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r12, zero, 1
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	lock zero, r3
	lui r3, 35
	addli r19, zero, 64
	addli r18, zero, 4
	addli r5, zero, 5
	addli r11, zero, 64
	dma_cfg r12, r12, zero, 0
	ori r3, r3, 64
	dma_cfg zero, r8, zero, 2
	load.d r[21:22], -72(r30)               # 8-byte Folded Reload
	add.s r2, r2, r3
	dma_cfg r2, r7, r19, 3
	addli r7, zero, 2
	addli r8, zero, 17
	addli r3, r21, 31
	srli r2, r3, 5
	slli r3, r21, 1
	addli r21, zero, 128
	addli r22, zero, 256
	dma_cfg r21, r19, r2, 4
	andi r3, r3, 62
	dma_cfg r22, r21, r12, 5
	dma_cfg zero, zero, r3, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	lock zero, r5
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 6
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 7
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 8
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 9
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 12
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 13
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 14
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 15
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r9, 10
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
	dma_cfg r12, r12, zero, 0
	dma_cfg r12, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r19, 3
	addli r19, zero, 4096
	dma_cfg r21, zero, r2, 4
	dma_cfg r22, zero, r12, 5
	dma_cfg zero, zero, r3, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r5
	xsignal r7, 0
	load.d r[7:8], -16(r30)                 # 8-byte Folded Reload
	.loc	1 374 7 is_stmt 1               # parallel-rne.mlir:374:7
	j .LBB0_236
.LBB0_232:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 372 7                         # parallel-rne.mlir:372:7
	addli r2, zero, 5
	bneq r10, r2, .LBB0_236
# %bb.233:                              #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 12
	addli r2, zero, 0
	xwait r3, 0
	addli r3, zero, 15
	xwait r3, 0
	addli r3, zero, 2
	lock zero, r3
	lui r3, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r3, r3, zero, 0
	addli r3, zero, 63
	ew_cfg zero, r3, zero, 2
	addli r3, zero, 1
	ew_cfg r3, zero, zero, 3
.LBB0_234:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r3, r4, r2
	addli r2, r2, 256
	dsmadd r3, r3, r6, 0
	bneq r2, r19, .LBB0_234
# %bb.235:                              # %.thread33
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 2
	unlock r2
	addli r2, zero, 13
	xsignal r2, 0
	xsignal r24, 0
.LBB0_236:                              # %.critedge6
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -4(r30)                   # 4-byte Folded Reload
	lui r2, 10
	.loc	1 377 7 is_stmt 1               # parallel-rne.mlir:377:7
	xfence
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	mfence { lm, sm, gm }
	add.s r18, r3, r2
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	beq r10, zero, .LBB0_312
# %bb.237:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 409 7                         # parallel-rne.mlir:409:7
	addli r2, zero, 1
	bneq r10, r2, .LBB0_336
.LBB0_238:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 128
	zext_int2long r[6:7], r2
	addli r2, zero, 192
	zext_int2long r[2:3], r2
	.loc	1 409 7                         # parallel-rne.mlir:409:7
	store.d r[2:3], -32(r30)                # 8-byte Folded Spill
	addli r3, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_240
.LBB0_239:                              # %middle.block122
                                        #   in Loop: Header=BB0_240 Depth=2
	.loc	1 417 9 is_stmt 1               # parallel-rne.mlir:417:9
	loadli.w r2,  -24(r30)                  # 4-byte Folded Reload
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	addli r3, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_261
.LBB0_240:                              # %vector.ph117
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_242 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[21:22], zero
	storeli.w r3, -24(r30)                  # 4-byte Folded Spill
	j .LBB0_242
.LBB0_241:                              # %vector.body118
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 418 11 is_stmt 1              # parallel-rne.mlir:418:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 433 13                        # parallel-rne.mlir:433:13
	add.s r8, r18, r27
	.loc	1 418 11                        # parallel-rne.mlir:418:11
	setneq.d r2, r[21:22], r[16:17]
	.loc	1 433 13                        # parallel-rne.mlir:433:13
	stores.w r12, 12(r8)
	stores.w r24, 8(r8)
	stores.w r5, 4(r8)
	stores.w r3, 0(r8)
	.loc	1 418 11                        # parallel-rne.mlir:418:11
	beq r2, zero, .LBB0_239
.LBB0_242:                              # %vector.body118
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_240 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	add.ul r[2:3], r[21:22], r[6:7]
	slli r27, r2, 2
	add.s r3, r4, r27
	loads.w r10, 12(r3)
	loads.w r9, 0(r3)
	loads.w r2, 4(r3)
	loads.w r15, 8(r3)
	.loc	1 421 19                        # parallel-rne.mlir:421:19
	and r19, r10, r13
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	setlt.u r3, r25, r19
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r3, zero, .LBB0_244
# %bb.243:                              # %vector.body118
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_245
.LBB0_244:                              #   in Loop: Header=BB0_242 Depth=3
	or r12, r10, r20
.LBB0_245:                              # %vector.body118
                                        #   in Loop: Header=BB0_242 Depth=3
	and r8, r15, r13
	setlt.u r3, r25, r8
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r3, zero, .LBB0_247
# %bb.246:                              # %vector.body118
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r15, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_242 Depth=3
	or r24, r15, r20
.LBB0_248:                              # %vector.body118
                                        #   in Loop: Header=BB0_242 Depth=3
	and r26, r2, r13
	setlt.u r3, r25, r26
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r3, zero, .LBB0_250
# %bb.249:                              # %vector.body118
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r2, 0
	j .LBB0_251
.LBB0_250:                              #   in Loop: Header=BB0_242 Depth=3
	or r5, r2, r20
.LBB0_251:                              # %vector.body118
                                        #   in Loop: Header=BB0_242 Depth=3
	and r14, r9, r13
	setlt.u r3, r25, r14
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r3, zero, .LBB0_253
# %bb.252:                              # %vector.body118
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r9, 0
	.loc	1 430 19 is_stmt 1              # parallel-rne.mlir:430:19
	setlt.u r14, r1, r14
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	beq r14, zero, .LBB0_254
	j .LBB0_255
.LBB0_253:                              #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r3, r9, r20
	.loc	1 430 19 is_stmt 1              # parallel-rne.mlir:430:19
	setlt.u r14, r1, r14
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r14, zero, .LBB0_255
.LBB0_254:                              # %vector.body118
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r9, 16
	andi r3, r3, 1
	add.s r3, r9, r3
	add.s r3, r3, r28
	and r3, r3, r23
.LBB0_255:                              # %vector.body118
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r9, r1, r26
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r9, zero, .LBB0_258
# %bb.256:                              # %vector.body118
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r28
	and r5, r2, r23
	setlt.u r2, r1, r8
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	beq r2, zero, .LBB0_259
.LBB0_257:                              # %vector.body118
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r19
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r2, zero, .LBB0_241
	j .LBB0_260
.LBB0_258:                              # %vector.body118
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r8
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r2, zero, .LBB0_257
.LBB0_259:                              # %vector.body118
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r28
	and r24, r2, r23
	setlt.u r2, r1, r19
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r2, zero, .LBB0_241
.LBB0_260:                              # %vector.body118
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r28
	and r12, r2, r23
	j .LBB0_241
.LBB0_261:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 409 7 is_stmt 1               # parallel-rne.mlir:409:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 11
	addli r15, zero, 3
	addli r19, zero, 4096
	load.d r[7:8], -16(r30)                 # 8-byte Folded Reload
	.loc	1 438 7                         # parallel-rne.mlir:438:7
	loadli.w r2,  -48(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_337
.LBB0_262:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 467 7                         # parallel-rne.mlir:467:7
	bneq r10, r15, .LBB0_361
.LBB0_263:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 384
	zext_int2long r[6:7], r2
	addli r2, zero, 448
	zext_int2long r[2:3], r2
	.loc	1 467 7                         # parallel-rne.mlir:467:7
	store.d r[2:3], -32(r30)                # 8-byte Folded Spill
	addli r3, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_265
.LBB0_264:                              # %middle.block104
                                        #   in Loop: Header=BB0_265 Depth=2
	.loc	1 475 9 is_stmt 1               # parallel-rne.mlir:475:9
	loadli.w r2,  -24(r30)                  # 4-byte Folded Reload
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	addli r3, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_286
.LBB0_265:                              # %vector.ph99
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_267 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[21:22], zero
	storeli.w r3, -24(r30)                  # 4-byte Folded Spill
	j .LBB0_267
.LBB0_266:                              # %vector.body100
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 476 11 is_stmt 1              # parallel-rne.mlir:476:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 491 13                        # parallel-rne.mlir:491:13
	add.s r8, r18, r27
	.loc	1 476 11                        # parallel-rne.mlir:476:11
	setneq.d r2, r[21:22], r[16:17]
	.loc	1 491 13                        # parallel-rne.mlir:491:13
	stores.w r12, 12(r8)
	stores.w r24, 8(r8)
	stores.w r5, 4(r8)
	stores.w r3, 0(r8)
	.loc	1 476 11                        # parallel-rne.mlir:476:11
	beq r2, zero, .LBB0_264
.LBB0_267:                              # %vector.body100
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_265 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 477 19                        # parallel-rne.mlir:477:19
	add.ul r[2:3], r[21:22], r[6:7]
	slli r27, r2, 2
	add.s r3, r4, r27
	loads.w r10, 12(r3)
	loads.w r9, 0(r3)
	loads.w r2, 4(r3)
	loads.w r15, 8(r3)
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	and r19, r10, r13
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	setlt.u r3, r25, r19
	.loc	1 482 19                        # parallel-rne.mlir:482:19
	bneq r3, zero, .LBB0_269
# %bb.268:                              # %vector.body100
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_270
.LBB0_269:                              #   in Loop: Header=BB0_267 Depth=3
	or r12, r10, r20
.LBB0_270:                              # %vector.body100
                                        #   in Loop: Header=BB0_267 Depth=3
	and r8, r15, r13
	setlt.u r3, r25, r8
	.loc	1 482 19                        # parallel-rne.mlir:482:19
	bneq r3, zero, .LBB0_272
# %bb.271:                              # %vector.body100
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r15, 0
	j .LBB0_273
.LBB0_272:                              #   in Loop: Header=BB0_267 Depth=3
	or r24, r15, r20
.LBB0_273:                              # %vector.body100
                                        #   in Loop: Header=BB0_267 Depth=3
	and r26, r2, r13
	setlt.u r3, r25, r26
	.loc	1 482 19                        # parallel-rne.mlir:482:19
	bneq r3, zero, .LBB0_275
# %bb.274:                              # %vector.body100
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r2, 0
	j .LBB0_276
.LBB0_275:                              #   in Loop: Header=BB0_267 Depth=3
	or r5, r2, r20
.LBB0_276:                              # %vector.body100
                                        #   in Loop: Header=BB0_267 Depth=3
	and r14, r9, r13
	setlt.u r3, r25, r14
	.loc	1 482 19                        # parallel-rne.mlir:482:19
	bneq r3, zero, .LBB0_278
# %bb.277:                              # %vector.body100
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r9, 0
	.loc	1 488 19 is_stmt 1              # parallel-rne.mlir:488:19
	setlt.u r14, r1, r14
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	beq r14, zero, .LBB0_279
	j .LBB0_280
.LBB0_278:                              #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r3, r9, r20
	.loc	1 488 19 is_stmt 1              # parallel-rne.mlir:488:19
	setlt.u r14, r1, r14
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	bneq r14, zero, .LBB0_280
.LBB0_279:                              # %vector.body100
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r9, 16
	andi r3, r3, 1
	add.s r3, r9, r3
	add.s r3, r3, r28
	and r3, r3, r23
.LBB0_280:                              # %vector.body100
                                        #   in Loop: Header=BB0_267 Depth=3
	setlt.u r9, r1, r26
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	bneq r9, zero, .LBB0_283
# %bb.281:                              # %vector.body100
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r28
	and r5, r2, r23
	setlt.u r2, r1, r8
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	beq r2, zero, .LBB0_284
.LBB0_282:                              # %vector.body100
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r19
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	bneq r2, zero, .LBB0_266
	j .LBB0_285
.LBB0_283:                              # %vector.body100
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r8
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	bneq r2, zero, .LBB0_282
.LBB0_284:                              # %vector.body100
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r28
	and r24, r2, r23
	setlt.u r2, r1, r19
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	bneq r2, zero, .LBB0_266
.LBB0_285:                              # %vector.body100
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r28
	and r12, r2, r23
	j .LBB0_266
.LBB0_286:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 467 7 is_stmt 1               # parallel-rne.mlir:467:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 11
	addli r15, zero, 3
	addli r19, zero, 4096
	load.d r[7:8], -16(r30)                 # 8-byte Folded Reload
	.loc	1 496 7                         # parallel-rne.mlir:496:7
	loadli.w r2,  -44(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_362
.LBB0_287:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 525 7                         # parallel-rne.mlir:525:7
	addli r2, zero, 5
	bneq r10, r2, .LBB0_386
.LBB0_288:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 640
	zext_int2long r[6:7], r2
	addli r2, zero, 704
	zext_int2long r[2:3], r2
	.loc	1 525 7                         # parallel-rne.mlir:525:7
	store.d r[2:3], -32(r30)                # 8-byte Folded Spill
	addli r3, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_290
.LBB0_289:                              # %middle.block86
                                        #   in Loop: Header=BB0_290 Depth=2
	.loc	1 533 9 is_stmt 1               # parallel-rne.mlir:533:9
	loadli.w r2,  -24(r30)                  # 4-byte Folded Reload
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	addli r3, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_311
.LBB0_290:                              # %vector.ph81
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_292 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[21:22], zero
	storeli.w r3, -24(r30)                  # 4-byte Folded Spill
	j .LBB0_292
.LBB0_291:                              # %vector.body82
                                        #   in Loop: Header=BB0_292 Depth=3
	.loc	1 534 11 is_stmt 1              # parallel-rne.mlir:534:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	add.s r3, r18, r26
	.loc	1 534 11                        # parallel-rne.mlir:534:11
	setneq.d r2, r[21:22], r[16:17]
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	stores.w r12, 12(r3)
	stores.w r24, 8(r3)
	stores.w r5, 4(r3)
	stores.w r27, 0(r3)
	.loc	1 534 11                        # parallel-rne.mlir:534:11
	beq r2, zero, .LBB0_289
.LBB0_292:                              # %vector.body82
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_290 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	add.ul r[2:3], r[21:22], r[6:7]
	slli r26, r2, 2
	add.s r3, r4, r26
	loads.w r10, 12(r3)
	loads.w r9, 0(r3)
	loads.w r2, 4(r3)
	loads.w r15, 8(r3)
	.loc	1 537 19                        # parallel-rne.mlir:537:19
	and r19, r10, r13
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	setlt.u r3, r25, r19
	.loc	1 540 19                        # parallel-rne.mlir:540:19
	bneq r3, zero, .LBB0_294
# %bb.293:                              # %vector.body82
                                        #   in Loop: Header=BB0_292 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_295
.LBB0_294:                              #   in Loop: Header=BB0_292 Depth=3
	or r12, r10, r20
.LBB0_295:                              # %vector.body82
                                        #   in Loop: Header=BB0_292 Depth=3
	and r8, r15, r13
	setlt.u r3, r25, r8
	.loc	1 540 19                        # parallel-rne.mlir:540:19
	bneq r3, zero, .LBB0_297
# %bb.296:                              # %vector.body82
                                        #   in Loop: Header=BB0_292 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r15, 0
	j .LBB0_298
.LBB0_297:                              #   in Loop: Header=BB0_292 Depth=3
	or r24, r15, r20
.LBB0_298:                              # %vector.body82
                                        #   in Loop: Header=BB0_292 Depth=3
	and r3, r2, r13
	setlt.u r5, r25, r3
	.loc	1 540 19                        # parallel-rne.mlir:540:19
	bneq r5, zero, .LBB0_300
# %bb.299:                              # %vector.body82
                                        #   in Loop: Header=BB0_292 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r2, 0
	j .LBB0_301
.LBB0_300:                              #   in Loop: Header=BB0_292 Depth=3
	or r5, r2, r20
.LBB0_301:                              # %vector.body82
                                        #   in Loop: Header=BB0_292 Depth=3
	and r14, r9, r13
	setlt.u r27, r25, r14
	.loc	1 540 19                        # parallel-rne.mlir:540:19
	bneq r27, zero, .LBB0_303
# %bb.302:                              # %vector.body82
                                        #   in Loop: Header=BB0_292 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r9, 0
	.loc	1 546 19 is_stmt 1              # parallel-rne.mlir:546:19
	setlt.u r14, r1, r14
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	beq r14, zero, .LBB0_304
	j .LBB0_305
.LBB0_303:                              #   in Loop: Header=BB0_292 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r9, r20
	.loc	1 546 19 is_stmt 1              # parallel-rne.mlir:546:19
	setlt.u r14, r1, r14
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r14, zero, .LBB0_305
.LBB0_304:                              # %vector.body82
                                        #   in Loop: Header=BB0_292 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r28
	and r27, r9, r23
.LBB0_305:                              # %vector.body82
                                        #   in Loop: Header=BB0_292 Depth=3
	setlt.u r3, r1, r3
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r3, zero, .LBB0_308
# %bb.306:                              # %vector.body82
                                        #   in Loop: Header=BB0_292 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r28
	and r5, r2, r23
	setlt.u r2, r1, r8
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	beq r2, zero, .LBB0_309
.LBB0_307:                              # %vector.body82
                                        #   in Loop: Header=BB0_292 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r19
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r2, zero, .LBB0_291
	j .LBB0_310
.LBB0_308:                              # %vector.body82
                                        #   in Loop: Header=BB0_292 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r8
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r2, zero, .LBB0_307
.LBB0_309:                              # %vector.body82
                                        #   in Loop: Header=BB0_292 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r28
	and r24, r2, r23
	setlt.u r2, r1, r19
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r2, zero, .LBB0_291
.LBB0_310:                              # %vector.body82
                                        #   in Loop: Header=BB0_292 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r28
	and r12, r2, r23
	j .LBB0_291
.LBB0_311:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 525 7 is_stmt 1               # parallel-rne.mlir:525:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 11
	addli r15, zero, 3
	addli r19, zero, 4096
	load.d r[7:8], -16(r30)                 # 8-byte Folded Reload
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	addli r2, zero, 6
	bneq r10, r2, .LBB0_411
	j .LBB0_387
.LBB0_312:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	xfence
	zext_int2long r[26:27], zero
	addli r3, zero, 1
	mfence { lm, sm, gm }
	store.d r[26:27], -32(r30)              # 8-byte Folded Spill
	j .LBB0_314
.LBB0_313:                              # %middle.block131
                                        #   in Loop: Header=BB0_314 Depth=2
	.loc	1 388 9                         # parallel-rne.mlir:388:9
	loadli.w r2,  -24(r30)                  # 4-byte Folded Reload
	addli.d r[26:27], r[16:17], 0
	addli r3, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_335
.LBB0_314:                              # %vector.ph126
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_316 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	load.d r[21:22], -32(r30)               # 8-byte Folded Reload
	storeli.w r3, -24(r30)                  # 4-byte Folded Spill
	j .LBB0_316
.LBB0_315:                              # %vector.body127
                                        #   in Loop: Header=BB0_316 Depth=3
	.loc	1 389 11 is_stmt 1              # parallel-rne.mlir:389:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 404 13                        # parallel-rne.mlir:404:13
	add.s r6, r18, r9
	.loc	1 389 11                        # parallel-rne.mlir:389:11
	setneq.d r2, r[21:22], r[16:17]
	.loc	1 404 13                        # parallel-rne.mlir:404:13
	stores.w r12, 12(r6)
	stores.w r24, 8(r6)
	stores.w r5, 4(r6)
	stores.w r3, 0(r6)
	.loc	1 389 11                        # parallel-rne.mlir:389:11
	beq r2, zero, .LBB0_313
.LBB0_316:                              # %vector.body127
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_314 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	add.ul r[2:3], r[21:22], r[26:27]
	slli r9, r2, 2
	add.s r3, r4, r9
	loads.w r10, 12(r3)
	loads.w r7, 0(r3)
	loads.w r2, 4(r3)
	loads.w r15, 8(r3)
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	and r19, r10, r13
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	setlt.u r3, r25, r19
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r3, zero, .LBB0_318
# %bb.317:                              # %vector.body127
                                        #   in Loop: Header=BB0_316 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_319
.LBB0_318:                              #   in Loop: Header=BB0_316 Depth=3
	or r12, r10, r20
.LBB0_319:                              # %vector.body127
                                        #   in Loop: Header=BB0_316 Depth=3
	and r6, r15, r13
	setlt.u r3, r25, r6
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r3, zero, .LBB0_321
# %bb.320:                              # %vector.body127
                                        #   in Loop: Header=BB0_316 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r15, 0
	j .LBB0_322
.LBB0_321:                              #   in Loop: Header=BB0_316 Depth=3
	or r24, r15, r20
.LBB0_322:                              # %vector.body127
                                        #   in Loop: Header=BB0_316 Depth=3
	and r8, r2, r13
	setlt.u r3, r25, r8
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r3, zero, .LBB0_324
# %bb.323:                              # %vector.body127
                                        #   in Loop: Header=BB0_316 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r2, 0
	j .LBB0_325
.LBB0_324:                              #   in Loop: Header=BB0_316 Depth=3
	or r5, r2, r20
.LBB0_325:                              # %vector.body127
                                        #   in Loop: Header=BB0_316 Depth=3
	and r14, r7, r13
	setlt.u r3, r25, r14
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r3, zero, .LBB0_327
# %bb.326:                              # %vector.body127
                                        #   in Loop: Header=BB0_316 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r7, 0
	.loc	1 401 19 is_stmt 1              # parallel-rne.mlir:401:19
	setlt.u r14, r1, r14
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	beq r14, zero, .LBB0_328
	j .LBB0_329
.LBB0_327:                              #   in Loop: Header=BB0_316 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r3, r7, r20
	.loc	1 401 19 is_stmt 1              # parallel-rne.mlir:401:19
	setlt.u r14, r1, r14
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	bneq r14, zero, .LBB0_329
.LBB0_328:                              # %vector.body127
                                        #   in Loop: Header=BB0_316 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r7, 16
	andi r3, r3, 1
	add.s r3, r7, r3
	add.s r3, r3, r28
	and r3, r3, r23
.LBB0_329:                              # %vector.body127
                                        #   in Loop: Header=BB0_316 Depth=3
	setlt.u r7, r1, r8
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	bneq r7, zero, .LBB0_331
# %bb.330:                              # %vector.body127
                                        #   in Loop: Header=BB0_316 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r28
	and r5, r2, r23
	setlt.u r2, r1, r6
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	beq r2, zero, .LBB0_332
	j .LBB0_333
.LBB0_331:                              # %vector.body127
                                        #   in Loop: Header=BB0_316 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r6
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	bneq r2, zero, .LBB0_333
.LBB0_332:                              # %vector.body127
                                        #   in Loop: Header=BB0_316 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r28
	and r24, r2, r23
.LBB0_333:                              # %vector.body127
                                        #   in Loop: Header=BB0_316 Depth=3
	setlt.u r2, r1, r19
	load.d r[7:8], -16(r30)                 # 8-byte Folded Reload
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	bneq r2, zero, .LBB0_315
# %bb.334:                              # %vector.body127
                                        #   in Loop: Header=BB0_316 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r28
	and r12, r2, r23
	j .LBB0_315
.LBB0_335:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 11
	addli r15, zero, 3
	addli r19, zero, 4096
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	mfence { sm }
	.loc	1 409 7                         # parallel-rne.mlir:409:7
	addli r2, zero, 1
	beq r10, r2, .LBB0_238
.LBB0_336:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 438 7                         # parallel-rne.mlir:438:7
	loadli.w r2,  -48(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_262
.LBB0_337:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 256
	zext_int2long r[6:7], r2
	addli r2, zero, 320
	zext_int2long r[2:3], r2
	.loc	1 438 7                         # parallel-rne.mlir:438:7
	store.d r[2:3], -32(r30)                # 8-byte Folded Spill
	addli r3, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_339
.LBB0_338:                              # %middle.block113
                                        #   in Loop: Header=BB0_339 Depth=2
	.loc	1 446 9 is_stmt 1               # parallel-rne.mlir:446:9
	loadli.w r2,  -24(r30)                  # 4-byte Folded Reload
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	addli r3, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_360
.LBB0_339:                              # %vector.ph108
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_341 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[21:22], zero
	storeli.w r3, -24(r30)                  # 4-byte Folded Spill
	j .LBB0_341
.LBB0_340:                              # %vector.body109
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 447 11 is_stmt 1              # parallel-rne.mlir:447:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 462 13                        # parallel-rne.mlir:462:13
	add.s r8, r18, r27
	.loc	1 447 11                        # parallel-rne.mlir:447:11
	setneq.d r2, r[21:22], r[16:17]
	.loc	1 462 13                        # parallel-rne.mlir:462:13
	stores.w r12, 12(r8)
	stores.w r24, 8(r8)
	stores.w r5, 4(r8)
	stores.w r3, 0(r8)
	.loc	1 447 11                        # parallel-rne.mlir:447:11
	beq r2, zero, .LBB0_338
.LBB0_341:                              # %vector.body109
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_339 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 448 19                        # parallel-rne.mlir:448:19
	add.ul r[2:3], r[21:22], r[6:7]
	slli r27, r2, 2
	add.s r3, r4, r27
	loads.w r10, 12(r3)
	loads.w r9, 0(r3)
	loads.w r2, 4(r3)
	loads.w r15, 8(r3)
	.loc	1 450 19                        # parallel-rne.mlir:450:19
	and r19, r10, r13
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	setlt.u r3, r25, r19
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	bneq r3, zero, .LBB0_343
# %bb.342:                              # %vector.body109
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_344
.LBB0_343:                              #   in Loop: Header=BB0_341 Depth=3
	or r12, r10, r20
.LBB0_344:                              # %vector.body109
                                        #   in Loop: Header=BB0_341 Depth=3
	and r8, r15, r13
	setlt.u r3, r25, r8
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	bneq r3, zero, .LBB0_346
# %bb.345:                              # %vector.body109
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r15, 0
	j .LBB0_347
.LBB0_346:                              #   in Loop: Header=BB0_341 Depth=3
	or r24, r15, r20
.LBB0_347:                              # %vector.body109
                                        #   in Loop: Header=BB0_341 Depth=3
	and r26, r2, r13
	setlt.u r3, r25, r26
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	bneq r3, zero, .LBB0_349
# %bb.348:                              # %vector.body109
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r2, 0
	j .LBB0_350
.LBB0_349:                              #   in Loop: Header=BB0_341 Depth=3
	or r5, r2, r20
.LBB0_350:                              # %vector.body109
                                        #   in Loop: Header=BB0_341 Depth=3
	and r14, r9, r13
	setlt.u r3, r25, r14
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	bneq r3, zero, .LBB0_352
# %bb.351:                              # %vector.body109
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r9, 0
	.loc	1 459 19 is_stmt 1              # parallel-rne.mlir:459:19
	setlt.u r14, r1, r14
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	beq r14, zero, .LBB0_353
	j .LBB0_354
.LBB0_352:                              #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r3, r9, r20
	.loc	1 459 19 is_stmt 1              # parallel-rne.mlir:459:19
	setlt.u r14, r1, r14
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r14, zero, .LBB0_354
.LBB0_353:                              # %vector.body109
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r9, 16
	andi r3, r3, 1
	add.s r3, r9, r3
	add.s r3, r3, r28
	and r3, r3, r23
.LBB0_354:                              # %vector.body109
                                        #   in Loop: Header=BB0_341 Depth=3
	setlt.u r9, r1, r26
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r9, zero, .LBB0_357
# %bb.355:                              # %vector.body109
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r28
	and r5, r2, r23
	setlt.u r2, r1, r8
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	beq r2, zero, .LBB0_358
.LBB0_356:                              # %vector.body109
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r19
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r2, zero, .LBB0_340
	j .LBB0_359
.LBB0_357:                              # %vector.body109
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r8
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r2, zero, .LBB0_356
.LBB0_358:                              # %vector.body109
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r28
	and r24, r2, r23
	setlt.u r2, r1, r19
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r2, zero, .LBB0_340
.LBB0_359:                              # %vector.body109
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r28
	and r12, r2, r23
	j .LBB0_340
.LBB0_360:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 438 7 is_stmt 1               # parallel-rne.mlir:438:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 11
	addli r15, zero, 3
	addli r19, zero, 4096
	load.d r[7:8], -16(r30)                 # 8-byte Folded Reload
	.loc	1 467 7                         # parallel-rne.mlir:467:7
	beq r10, r15, .LBB0_263
.LBB0_361:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 496 7                         # parallel-rne.mlir:496:7
	loadli.w r2,  -44(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_287
.LBB0_362:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 512
	zext_int2long r[6:7], r2
	addli r2, zero, 576
	zext_int2long r[2:3], r2
	.loc	1 496 7                         # parallel-rne.mlir:496:7
	store.d r[2:3], -32(r30)                # 8-byte Folded Spill
	addli r3, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_364
.LBB0_363:                              # %middle.block95
                                        #   in Loop: Header=BB0_364 Depth=2
	.loc	1 504 9 is_stmt 1               # parallel-rne.mlir:504:9
	loadli.w r2,  -24(r30)                  # 4-byte Folded Reload
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	addli r3, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_385
.LBB0_364:                              # %vector.ph90
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_366 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[21:22], zero
	storeli.w r3, -24(r30)                  # 4-byte Folded Spill
	j .LBB0_366
.LBB0_365:                              # %vector.body91
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 505 11 is_stmt 1              # parallel-rne.mlir:505:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 520 13                        # parallel-rne.mlir:520:13
	add.s r3, r18, r26
	.loc	1 505 11                        # parallel-rne.mlir:505:11
	setneq.d r2, r[21:22], r[16:17]
	.loc	1 520 13                        # parallel-rne.mlir:520:13
	stores.w r12, 12(r3)
	stores.w r24, 8(r3)
	stores.w r5, 4(r3)
	stores.w r27, 0(r3)
	.loc	1 505 11                        # parallel-rne.mlir:505:11
	beq r2, zero, .LBB0_363
.LBB0_366:                              # %vector.body91
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_364 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 506 19                        # parallel-rne.mlir:506:19
	add.ul r[2:3], r[21:22], r[6:7]
	slli r26, r2, 2
	add.s r3, r4, r26
	loads.w r10, 12(r3)
	loads.w r9, 0(r3)
	loads.w r2, 4(r3)
	loads.w r15, 8(r3)
	.loc	1 508 19                        # parallel-rne.mlir:508:19
	and r19, r10, r13
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	setlt.u r3, r25, r19
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r3, zero, .LBB0_368
# %bb.367:                              # %vector.body91
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_369
.LBB0_368:                              #   in Loop: Header=BB0_366 Depth=3
	or r12, r10, r20
.LBB0_369:                              # %vector.body91
                                        #   in Loop: Header=BB0_366 Depth=3
	and r8, r15, r13
	setlt.u r3, r25, r8
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r3, zero, .LBB0_371
# %bb.370:                              # %vector.body91
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r15, 0
	j .LBB0_372
.LBB0_371:                              #   in Loop: Header=BB0_366 Depth=3
	or r24, r15, r20
.LBB0_372:                              # %vector.body91
                                        #   in Loop: Header=BB0_366 Depth=3
	and r3, r2, r13
	setlt.u r5, r25, r3
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r5, zero, .LBB0_374
# %bb.373:                              # %vector.body91
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r2, 0
	j .LBB0_375
.LBB0_374:                              #   in Loop: Header=BB0_366 Depth=3
	or r5, r2, r20
.LBB0_375:                              # %vector.body91
                                        #   in Loop: Header=BB0_366 Depth=3
	and r14, r9, r13
	setlt.u r27, r25, r14
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r27, zero, .LBB0_377
# %bb.376:                              # %vector.body91
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r9, 0
	.loc	1 517 19 is_stmt 1              # parallel-rne.mlir:517:19
	setlt.u r14, r1, r14
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	beq r14, zero, .LBB0_378
	j .LBB0_379
.LBB0_377:                              #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r9, r20
	.loc	1 517 19 is_stmt 1              # parallel-rne.mlir:517:19
	setlt.u r14, r1, r14
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r14, zero, .LBB0_379
.LBB0_378:                              # %vector.body91
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r28
	and r27, r9, r23
.LBB0_379:                              # %vector.body91
                                        #   in Loop: Header=BB0_366 Depth=3
	setlt.u r3, r1, r3
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r3, zero, .LBB0_382
# %bb.380:                              # %vector.body91
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r28
	and r5, r2, r23
	setlt.u r2, r1, r8
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	beq r2, zero, .LBB0_383
.LBB0_381:                              # %vector.body91
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r19
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r2, zero, .LBB0_365
	j .LBB0_384
.LBB0_382:                              # %vector.body91
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r8
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r2, zero, .LBB0_381
.LBB0_383:                              # %vector.body91
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r28
	and r24, r2, r23
	setlt.u r2, r1, r19
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r2, zero, .LBB0_365
.LBB0_384:                              # %vector.body91
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r28
	and r12, r2, r23
	j .LBB0_365
.LBB0_385:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 496 7 is_stmt 1               # parallel-rne.mlir:496:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 11
	addli r15, zero, 3
	addli r19, zero, 4096
	load.d r[7:8], -16(r30)                 # 8-byte Folded Reload
	.loc	1 525 7                         # parallel-rne.mlir:525:7
	addli r2, zero, 5
	beq r10, r2, .LBB0_288
.LBB0_386:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	addli r2, zero, 6
	bneq r10, r2, .LBB0_411
.LBB0_387:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 768
	zext_int2long r[6:7], r2
	addli r2, zero, 832
	zext_int2long r[2:3], r2
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	store.d r[2:3], -32(r30)                # 8-byte Folded Spill
	addli r3, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_389
.LBB0_388:                              # %middle.block77
                                        #   in Loop: Header=BB0_389 Depth=2
	.loc	1 562 9 is_stmt 1               # parallel-rne.mlir:562:9
	loadli.w r2,  -24(r30)                  # 4-byte Folded Reload
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	addli r3, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_410
.LBB0_389:                              # %vector.ph72
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_391 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[21:22], zero
	storeli.w r3, -24(r30)                  # 4-byte Folded Spill
	j .LBB0_391
.LBB0_390:                              # %vector.body73
                                        #   in Loop: Header=BB0_391 Depth=3
	.loc	1 563 11 is_stmt 1              # parallel-rne.mlir:563:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 578 13                        # parallel-rne.mlir:578:13
	add.s r3, r18, r26
	.loc	1 563 11                        # parallel-rne.mlir:563:11
	setneq.d r2, r[21:22], r[16:17]
	.loc	1 578 13                        # parallel-rne.mlir:578:13
	stores.w r12, 12(r3)
	stores.w r24, 8(r3)
	stores.w r5, 4(r3)
	stores.w r27, 0(r3)
	.loc	1 563 11                        # parallel-rne.mlir:563:11
	beq r2, zero, .LBB0_388
.LBB0_391:                              # %vector.body73
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_389 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 564 19                        # parallel-rne.mlir:564:19
	add.ul r[2:3], r[21:22], r[6:7]
	slli r26, r2, 2
	add.s r3, r4, r26
	loads.w r10, 12(r3)
	loads.w r9, 0(r3)
	loads.w r2, 4(r3)
	loads.w r15, 8(r3)
	.loc	1 566 19                        # parallel-rne.mlir:566:19
	and r19, r10, r13
	.loc	1 568 19                        # parallel-rne.mlir:568:19
	setlt.u r3, r25, r19
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	bneq r3, zero, .LBB0_393
# %bb.392:                              # %vector.body73
                                        #   in Loop: Header=BB0_391 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_394
.LBB0_393:                              #   in Loop: Header=BB0_391 Depth=3
	or r12, r10, r20
.LBB0_394:                              # %vector.body73
                                        #   in Loop: Header=BB0_391 Depth=3
	and r8, r15, r13
	setlt.u r3, r25, r8
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	bneq r3, zero, .LBB0_396
# %bb.395:                              # %vector.body73
                                        #   in Loop: Header=BB0_391 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r15, 0
	j .LBB0_397
.LBB0_396:                              #   in Loop: Header=BB0_391 Depth=3
	or r24, r15, r20
.LBB0_397:                              # %vector.body73
                                        #   in Loop: Header=BB0_391 Depth=3
	and r3, r2, r13
	setlt.u r5, r25, r3
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	bneq r5, zero, .LBB0_399
# %bb.398:                              # %vector.body73
                                        #   in Loop: Header=BB0_391 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r2, 0
	j .LBB0_400
.LBB0_399:                              #   in Loop: Header=BB0_391 Depth=3
	or r5, r2, r20
.LBB0_400:                              # %vector.body73
                                        #   in Loop: Header=BB0_391 Depth=3
	and r14, r9, r13
	setlt.u r27, r25, r14
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	bneq r27, zero, .LBB0_402
# %bb.401:                              # %vector.body73
                                        #   in Loop: Header=BB0_391 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r9, 0
	.loc	1 575 19 is_stmt 1              # parallel-rne.mlir:575:19
	setlt.u r14, r1, r14
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	beq r14, zero, .LBB0_403
	j .LBB0_404
.LBB0_402:                              #   in Loop: Header=BB0_391 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r9, r20
	.loc	1 575 19 is_stmt 1              # parallel-rne.mlir:575:19
	setlt.u r14, r1, r14
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	bneq r14, zero, .LBB0_404
.LBB0_403:                              # %vector.body73
                                        #   in Loop: Header=BB0_391 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r28
	and r27, r9, r23
.LBB0_404:                              # %vector.body73
                                        #   in Loop: Header=BB0_391 Depth=3
	setlt.u r3, r1, r3
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	bneq r3, zero, .LBB0_407
# %bb.405:                              # %vector.body73
                                        #   in Loop: Header=BB0_391 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r28
	and r5, r2, r23
	setlt.u r2, r1, r8
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	beq r2, zero, .LBB0_408
.LBB0_406:                              # %vector.body73
                                        #   in Loop: Header=BB0_391 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r19
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	bneq r2, zero, .LBB0_390
	j .LBB0_409
.LBB0_407:                              # %vector.body73
                                        #   in Loop: Header=BB0_391 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r8
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	bneq r2, zero, .LBB0_406
.LBB0_408:                              # %vector.body73
                                        #   in Loop: Header=BB0_391 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r28
	and r24, r2, r23
	setlt.u r2, r1, r19
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	bneq r2, zero, .LBB0_390
.LBB0_409:                              # %vector.body73
                                        #   in Loop: Header=BB0_391 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r28
	and r12, r2, r23
	j .LBB0_390
.LBB0_410:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 554 7 is_stmt 1               # parallel-rne.mlir:554:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 11
	addli r15, zero, 3
	addli r19, zero, 4096
	load.d r[7:8], -16(r30)                 # 8-byte Folded Reload
.LBB0_411:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	zext_int2long r[2:3], zero
	.loc	1 583 7 is_stmt 1               # parallel-rne.mlir:583:7
	store.d r[2:3], -32(r30)                # 8-byte Folded Spill
	loadli.w r2,  -40(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_436
# %bb.412:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 896
	zext_int2long r[6:7], r2
	addli r2, zero, 960
	zext_int2long r[2:3], r2
	.loc	1 583 7                         # parallel-rne.mlir:583:7
	store.d r[2:3], -40(r30)                # 8-byte Folded Spill
	addli r3, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_414
.LBB0_413:                              # %middle.block
                                        #   in Loop: Header=BB0_414 Depth=2
	.loc	1 591 9 is_stmt 1               # parallel-rne.mlir:591:9
	loadli.w r2,  -24(r30)                  # 4-byte Folded Reload
	load.d r[6:7], -40(r30)                 # 8-byte Folded Reload
	addli r3, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_435
.LBB0_414:                              # %vector.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_416 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	load.d r[21:22], -32(r30)               # 8-byte Folded Reload
	storeli.w r3, -24(r30)                  # 4-byte Folded Spill
	j .LBB0_416
.LBB0_415:                              # %vector.body
                                        #   in Loop: Header=BB0_416 Depth=3
	.loc	1 592 11 is_stmt 1              # parallel-rne.mlir:592:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 607 13                        # parallel-rne.mlir:607:13
	add.s r3, r18, r10
	.loc	1 592 11                        # parallel-rne.mlir:592:11
	setneq.d r2, r[21:22], r[16:17]
	.loc	1 607 13                        # parallel-rne.mlir:607:13
	stores.w r19, 12(r3)
	stores.w r5, 8(r3)
	stores.w r8, 4(r3)
	stores.w r9, 0(r3)
	.loc	1 592 11                        # parallel-rne.mlir:592:11
	beq r2, zero, .LBB0_413
.LBB0_416:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_414 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 593 19                        # parallel-rne.mlir:593:19
	add.ul r[2:3], r[21:22], r[6:7]
	slli r10, r2, 2
	add.s r3, r4, r10
	loads.w r12, 12(r3)
	loads.w r27, 0(r3)
	loads.w r2, 4(r3)
	loads.w r15, 8(r3)
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	and r24, r12, r13
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	setlt.u r3, r25, r24
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	bneq r3, zero, .LBB0_418
# %bb.417:                              # %vector.body
                                        #   in Loop: Header=BB0_416 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r12, 0
	j .LBB0_419
.LBB0_418:                              #   in Loop: Header=BB0_416 Depth=3
	or r19, r12, r20
.LBB0_419:                              # %vector.body
                                        #   in Loop: Header=BB0_416 Depth=3
	and r26, r15, r13
	setlt.u r3, r25, r26
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	bneq r3, zero, .LBB0_421
# %bb.420:                              # %vector.body
                                        #   in Loop: Header=BB0_416 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r15, 0
	j .LBB0_422
.LBB0_421:                              #   in Loop: Header=BB0_416 Depth=3
	or r5, r15, r20
.LBB0_422:                              # %vector.body
                                        #   in Loop: Header=BB0_416 Depth=3
	and r3, r2, r13
	setlt.u r8, r25, r3
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	bneq r8, zero, .LBB0_424
# %bb.423:                              # %vector.body
                                        #   in Loop: Header=BB0_416 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r2, 0
	j .LBB0_425
.LBB0_424:                              #   in Loop: Header=BB0_416 Depth=3
	or r8, r2, r20
.LBB0_425:                              # %vector.body
                                        #   in Loop: Header=BB0_416 Depth=3
	and r14, r27, r13
	setlt.u r9, r25, r14
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	bneq r9, zero, .LBB0_427
# %bb.426:                              # %vector.body
                                        #   in Loop: Header=BB0_416 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r27, 0
	.loc	1 604 19 is_stmt 1              # parallel-rne.mlir:604:19
	setlt.u r14, r1, r14
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	beq r14, zero, .LBB0_428
	j .LBB0_429
.LBB0_427:                              #   in Loop: Header=BB0_416 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r27, r20
	.loc	1 604 19 is_stmt 1              # parallel-rne.mlir:604:19
	setlt.u r14, r1, r14
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	bneq r14, zero, .LBB0_429
.LBB0_428:                              # %vector.body
                                        #   in Loop: Header=BB0_416 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r27, 16
	andi r9, r9, 1
	add.s r9, r27, r9
	add.s r9, r9, r28
	and r9, r9, r23
.LBB0_429:                              # %vector.body
                                        #   in Loop: Header=BB0_416 Depth=3
	setlt.u r3, r1, r3
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	bneq r3, zero, .LBB0_432
# %bb.430:                              # %vector.body
                                        #   in Loop: Header=BB0_416 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r28
	and r8, r2, r23
	setlt.u r2, r1, r26
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	beq r2, zero, .LBB0_433
.LBB0_431:                              # %vector.body
                                        #   in Loop: Header=BB0_416 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r24
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	bneq r2, zero, .LBB0_415
	j .LBB0_434
.LBB0_432:                              # %vector.body
                                        #   in Loop: Header=BB0_416 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r1, r26
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	bneq r2, zero, .LBB0_431
.LBB0_433:                              # %vector.body
                                        #   in Loop: Header=BB0_416 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r28
	and r5, r2, r23
	setlt.u r2, r1, r24
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	bneq r2, zero, .LBB0_415
.LBB0_434:                              # %vector.body
                                        #   in Loop: Header=BB0_416 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r28
	and r19, r2, r23
	j .LBB0_415
.LBB0_435:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 583 7 is_stmt 1               # parallel-rne.mlir:583:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 11
	addli r15, zero, 3
	addli r19, zero, 4096
	load.d r[7:8], -16(r30)                 # 8-byte Folded Reload
.LBB0_436:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 612 7                         # parallel-rne.mlir:612:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 613 7                         # parallel-rne.mlir:613:7
	beq r10, r15, .LBB0_5
# %bb.437:                              # %.critedge8
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r12, zero, 16
	addli r17, zero, 1
	.loc	1 622 7 is_stmt 1               # parallel-rne.mlir:622:7
	bneq r10, zero, .LBB0_7
# %bb.438:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -84(r30)                  # 4-byte Folded Reload
	.loc	1 622 7                         # parallel-rne.mlir:622:7
	addli r6, zero, 12
	load.d r[4:5], -32(r30)                 # 8-byte Folded Reload
	addli r11, zero, 64
	sll.d r[6:7], r[7:8], r6
	addli r8, zero, 17
	slli r2, r2, 4
	xwait r8, 0
	load.d r[8:9], 24(r30)
	sext_int2long r[2:3], r2
	min.sl r[4:5], r[2:3], r[4:5]
	add.ul r[6:7], r[8:9], r[6:7]
	addli r8, zero, 5
	addli r9, zero, 64
	addli.d r[4:5], r[4:5], 16
	lock zero, r8
	load.d r[21:22], -80(r30)               # 8-byte Folded Reload
	dma_cfg r17, r17, zero, 0
	max.sl r[4:5], r[4:5], r[2:3]
	dma_cfg zero, r17, zero, 1
	sub.sl r[2:3], r[4:5], r[2:3]
	zext_int2long r[4:5], r12
	add.ul r[6:7], r[6:7], r[21:22]
	.loc	1 618 13 is_stmt 1              # parallel-rne.mlir:618:13
	min.sl r[2:3], r[2:3], r[4:5]
	lui r4, 10
	.loc	1 622 7                         # parallel-rne.mlir:622:7
	dma_cfg r7, zero, zero, 2
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	load.d r[21:22], -72(r30)               # 8-byte Folded Reload
	ori r4, r4, 64
	add.s r4, r5, r4
	addli r5, r21, 31
	dma_cfg r6, r4, r9, 3
	srli r4, r5, 5
	addli r6, zero, 128
	slli r5, r21, 1
	dma_cfg r9, r6, r4, 4
	andi r4, r5, 62
	addli r5, zero, 256
	dma_cfg r5, r5, r2, 5
	addli r2, zero, 18
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	j .LBB0_6
.LBB0_439:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	.loc	1 129 7 is_stmt 1               # parallel-rne.mlir:129:7
	beq r10, r15, .LBB0_25
	j .LBB0_26
.LBB0_440:                              # %._crit_edge
	.loc	1 624 5                         # parallel-rne.mlir:624:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_442
# %bb.441:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 624 5                         # parallel-rne.mlir:624:5
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
.LBB0_442:
	.loc	1 625 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:625:5
	addli sp, sp, 96
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
	.long	44                              # 0x2c
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	160                             # 0xa0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-tw13t78t" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
