	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-4bxnybah" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -144
	addli r1, zero, 1
.Ltmp0:
	.loc	1 29 5 prologue_end             # parallel-rne.mlir:29:5
	core_id r18
	addli r30, sp, 80
	xsignal_mode_cfg r1
	beq r18, zero, .LBB0_2
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
	ble.s r2, r1, .LBB0_232
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 40 11 is_stmt 1               # parallel-rne.mlir:40:11
	sext_int2long r[5:6], r1
	lui r1, 524287
	addli r9, zero, 7
	lui r20, 1024
	lui r25, 522240
	lui r4, 1048560
	addli r7, zero, 0
	store.d r[2:3], -80(r30)                # 8-byte Folded Spill
	ori r23, r1, 4095
	lui r1, 7
	lui r2, 522239
	ori r27, r1, 4095
	ori r28, r2, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 354 7                         # parallel-rne.mlir:354:7
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[5:6], -40(r30)                 # 8-byte Folded Reload
	.loc	1 48 5 is_stmt 1                # parallel-rne.mlir:48:5
	load.d r[1:2], -80(r30)                 # 8-byte Folded Reload
	loadli.w r7,  -32(r30)                  # 4-byte Folded Reload
	addli.d r[5:6], r[5:6], 1
	addli r7, r7, 1
	setlt.sl r1, r[5:6], r[1:2]
	beq r1, zero, .LBB0_232
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_228 Depth 2
                                        #     Child Loop BB0_33 Depth 2
                                        #       Child Loop BB0_35 Depth 3
                                        #     Child Loop BB0_57 Depth 2
                                        #       Child Loop BB0_59 Depth 3
                                        #     Child Loop BB0_81 Depth 2
                                        #       Child Loop BB0_83 Depth 3
                                        #     Child Loop BB0_105 Depth 2
                                        #       Child Loop BB0_107 Depth 3
                                        #     Child Loop BB0_129 Depth 2
                                        #       Child Loop BB0_131 Depth 3
                                        #     Child Loop BB0_153 Depth 2
                                        #       Child Loop BB0_155 Depth 3
                                        #     Child Loop BB0_177 Depth 2
                                        #       Child Loop BB0_179 Depth 3
                                        #     Child Loop BB0_202 Depth 2
                                        #       Child Loop BB0_204 Depth 3
	.loc	1 50 13                         # parallel-rne.mlir:50:13
	loadli.w r1,  32(r30)
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	loadli.w r2,  28(r30)
	store.d r[5:6], -40(r30)                # 8-byte Folded Spill
	addli r3, zero, 1
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	storeli.w r7, -32(r30)                  # 4-byte Folded Spill
	.loc	1 50 13                         # parallel-rne.mlir:50:13
	div.s r1, r5, r1
	addli r6, zero, 64
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	addli r5, zero, 8
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	div.s r11, r1, r2
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	div.s r14, r11, r6
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	slli r1, r14, 3
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	sub.s r2, r3, r1
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	min.s r17, r2, r5
	addli r5, zero, 3
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	mod.s r2, r11, r17
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	mod.s r15, r7, r5
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	add.s r1, r2, r1
	.loc	1 84 13                         # parallel-rne.mlir:84:13
	slli r8, r15, 14
	.loc	1 67 13                         # parallel-rne.mlir:67:13
	zext_int2long r[21:22], r1
	storeli.w r1, -56(r30)                  # 4-byte Folded Spill
	.loc	1 86 13                         # parallel-rne.mlir:86:13
	lui r1, 24
	add.s r2, r8, r1
	store.d r[21:22], -24(r30)              # 8-byte Folded Spill
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	bneq r18, r3, .LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r12, zero, 13
	addli r3, zero, 3
	addli r13, zero, 2
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	sll.d r[5:6], r[21:22], r12
	load.d r[21:22], 0(r30)
	xwait r3, 0
	add.ul r[5:6], r[21:22], r[5:6]
	blt.s r13, r7, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r10, zero, 5
	addli r7, zero, 1
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	addli r1, zero, 4
	addli r16, zero, 128
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 6
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r12, 10
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
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r1, 3
	dma_cfg r16, zero, r13, 4
	addli r16, zero, 256
	dma_cfg r16, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r1, 24
	addli r16, zero, 4
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
	addli r10, zero, 1
	addli r7, zero, 64
	addli r19, zero, 256
	ori r1, r1, 64
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	lock zero, r16
	dma_cfg r10, r10, zero, 0
	add.s r1, r8, r1
	dma_cfg zero, r6, zero, 2
	dma_cfg r1, r5, r7, 3
	addli r6, zero, 64
	addli r7, zero, 128
	addli r5, zero, 5
	addli r1, zero, 6
	dma_cfg r7, r6, r13, 4
	dma_cfg r19, r7, r6, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r16
	lock zero, r5
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r12, 10
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
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r6, 3
	dma_cfg r7, zero, r13, 4
	dma_cfg r19, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r5
	xsignal r13, 0
	load.d r[21:22], -24(r30)               # 8-byte Folded Reload
	addli r5, zero, 3
	.loc	1 91 7 is_stmt 1                # parallel-rne.mlir:91:7
	j .LBB0_16
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 2
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	bneq r18, r1, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 5
	xwait r1, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r1, zero, 0
	addli r1, zero, 1
	ds_cfg r6, zero, 1
	ds_cfg r6, zero, 14
	ds_cfg r6, zero, 13
	shuffle_batch r8, r2, r6, 1
	unlock zero
	xsignal r5, 0
	storeli.w r1, -52(r30)                  # 4-byte Folded Spill
	addli r1, zero, 4
	xsignal r1, 0
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	addli r10, zero, 1
.LBB0_16:                               #   in Loop: Header=BB0_8 Depth=1
	slli r1, r14, 6
	.loc	1 101 13 is_stmt 1              # parallel-rne.mlir:101:13
	lui r3, 36
	addli r12, zero, 7
	addli r7, zero, 1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r1, r11, r1
	slli r11, r15, 15
	addli r15, zero, 6
	div.s r1, r1, r17
	storeli.w r1, -68(r30)                  # 4-byte Folded Spill
	zext_int2long r[1:2], r1
	sll.d r[1:2], r[1:2], r9
	.loc	1 101 13                        # parallel-rne.mlir:101:13
	add.s r9, r11, r3
	.loc	1 107 7 is_stmt 1               # parallel-rne.mlir:107:7
	sll.d r[13:14], r[1:2], r10
	store.d r[13:14], -64(r30)              # 8-byte Folded Spill
	bneq r18, r15, .LBB0_27
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	load.d r[1:2], 8(r30)
	xwait r12, 0
	loadli.w r3,  -32(r30)                  # 4-byte Folded Reload
	addli r8, zero, 13
	addli r10, zero, 2
	add.ul r[1:2], r[1:2], r[13:14]
	addli r14, zero, 4
	blt.s r10, r3, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r13, zero, 5
	.loc	1 107 7                         # parallel-rne.mlir:107:7
	addli r3, zero, 8
	lock zero, r13
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 11
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
	dma_cfg zero, zero, r8, 10
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
	addli r3, zero, 128
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r6, 3
	dma_cfg r3, zero, r14, 4
	addli r3, zero, 512
	dma_cfg r3, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
.LBB0_19:                               # %.thread15
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r3, 36
	storeli.w zero, -28(r30)                # 4-byte Folded Spill
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
	addli r13, zero, 512
	.loc	1 107 7                         # parallel-rne.mlir:107:7
	lock zero, r14
	ori r3, r3, 64
	dma_cfg r7, r7, zero, 0
	dma_cfg zero, r2, zero, 2
	add.s r3, r11, r3
	dma_cfg r3, r1, r6, 3
	addli r3, zero, 128
	addli r1, zero, 2048
	addli r2, zero, 5
	dma_cfg r3, r6, r14, 4
	dma_cfg r13, r1, r6, 5
	addli r1, zero, 8
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r8, 10
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
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r6, 3
	dma_cfg r3, zero, r14, 4
	dma_cfg r13, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
	xsignal r15, 0
.LBB0_20:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 60
	.loc	1 117 7 is_stmt 1               # parallel-rne.mlir:117:7
	xfence
	addli r9, zero, 7
	.loc	1 118 7                         # parallel-rne.mlir:118:7
	mfence { lm, sm, gm }
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r8, r11, r1
	.loc	1 119 7 is_stmt 1               # parallel-rne.mlir:119:7
	addli r1, zero, 255
	csr_set csr5, r1
	addli r1, zero, 128
	sync_core
	zext_int2long r[14:15], r1
	.loc	1 120 7                         # parallel-rne.mlir:120:7
	beq r18, zero, .LBB0_31
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	addli r1, zero, 1
	beq r18, r1, .LBB0_55
.LBB0_22:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	loadli.w r1,  -52(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_79
.LBB0_23:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 207 7                         # parallel-rne.mlir:207:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_103
.LBB0_24:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 236 7                         # parallel-rne.mlir:236:7
	loadli.w r1,  -48(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_127
.LBB0_25:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 265 7                         # parallel-rne.mlir:265:7
	addli r1, zero, 5
	beq r18, r1, .LBB0_151
.LBB0_26:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 294 7                         # parallel-rne.mlir:294:7
	addli r1, zero, 6
	beq r18, r1, .LBB0_175
	j .LBB0_199
.LBB0_27:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 13
	addli r2, zero, 2
	addli r7, zero, 4
	.loc	1 108 7 is_stmt 1               # parallel-rne.mlir:108:7
	beq r18, r5, .LBB0_230
# %bb.28:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 128
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	beq r18, r7, .LBB0_227
# %bb.29:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 7
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	bneq r18, r1, .LBB0_231
# %bb.30:                               #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 9
	storeli.w zero, -28(r30)                # 4-byte Folded Spill
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
	xwait r15, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r2, zero, 0
	ds_cfg r5, zero, 1
	ds_cfg r6, zero, 14
	ds_cfg r5, zero, 13
	shuffle_coa r11, r9, r6, 2
	unlock zero
	xsignal r1, 0
	addli r1, zero, 1
	storeli.w r1, -44(r30)                  # 4-byte Folded Spill
	addli r1, zero, 8
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	xsignal r1, 0
	j .LBB0_20
.LBB0_31:                               #   in Loop: Header=BB0_8 Depth=1
	zext_int2long r[1:2], zero
	.loc	1 120 7 is_stmt 1               # parallel-rne.mlir:120:7
	xfence
	mfence { lm, sm, gm }
	store.d r[1:2], -16(r30)                # 8-byte Folded Spill
	addli.d r[2:3], r[1:2], 0
	j .LBB0_33
.LBB0_32:                               # %middle.block97
                                        #   in Loop: Header=BB0_33 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, zero, 7
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r9
	.loc	1 128 9 is_stmt 1               # parallel-rne.mlir:128:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	beq r1, zero, .LBB0_54
.LBB0_33:                               # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_35 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r9
	load.d r[9:10], -16(r30)                # 8-byte Folded Reload
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_35
.LBB0_34:                               # %vector.body93
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 129 11 is_stmt 1              # parallel-rne.mlir:129:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	add.s r12, r8, r16
	.loc	1 129 11                        # parallel-rne.mlir:129:11
	setneq.d r3, r[9:10], r[14:15]
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	stores.w r5, 12(r12)
	stores.w r22, 8(r12)
	stores.w r1, 4(r12)
	stores.w r2, 0(r12)
	.loc	1 129 11                        # parallel-rne.mlir:129:11
	beq r3, zero, .LBB0_32
.LBB0_35:                               # %vector.body93
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 130 19                        # parallel-rne.mlir:130:19
	add.ul r[1:2], r[9:10], r[6:7]
	slli r16, r1, 2
	add.s r1, r11, r16
	loads.w r26, 12(r1)
	loads.w r13, 0(r1)
	loads.w r24, 4(r1)
	loads.w r21, 8(r1)
	.loc	1 132 19                        # parallel-rne.mlir:132:19
	and r19, r26, r23
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	setlt.u r1, r25, r19
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	bneq r1, zero, .LBB0_37
# %bb.36:                               # %vector.body93
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r26, 0
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_35 Depth=3
	or r5, r26, r20
.LBB0_38:                               # %vector.body93
                                        #   in Loop: Header=BB0_35 Depth=3
	and r12, r21, r23
	setlt.u r1, r25, r12
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	bneq r1, zero, .LBB0_40
# %bb.39:                               # %vector.body93
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	j .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_35 Depth=3
	or r22, r21, r20
.LBB0_41:                               # %vector.body93
                                        #   in Loop: Header=BB0_35 Depth=3
	and r3, r24, r23
	setlt.u r1, r25, r3
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	bneq r1, zero, .LBB0_43
# %bb.42:                               # %vector.body93
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r24, 0
	j .LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_35 Depth=3
	or r1, r24, r20
.LBB0_44:                               # %vector.body93
                                        #   in Loop: Header=BB0_35 Depth=3
	and r17, r13, r23
	setlt.u r2, r25, r17
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	bneq r2, zero, .LBB0_46
# %bb.45:                               # %vector.body93
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r13, 0
	.loc	1 141 19 is_stmt 1              # parallel-rne.mlir:141:19
	setlt.u r17, r28, r17
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	beq r17, zero, .LBB0_47
	j .LBB0_48
.LBB0_46:                               #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r13, r20
	.loc	1 141 19 is_stmt 1              # parallel-rne.mlir:141:19
	setlt.u r17, r28, r17
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	bneq r17, zero, .LBB0_48
.LBB0_47:                               # %vector.body93
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r13, 16
	andi r2, r2, 1
	add.s r2, r13, r2
	add.s r2, r2, r27
	and r2, r2, r4
.LBB0_48:                               # %vector.body93
                                        #   in Loop: Header=BB0_35 Depth=3
	setlt.u r3, r28, r3
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	beq r3, zero, .LBB0_51
# %bb.49:                               # %vector.body93
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r28, r12
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	beq r3, zero, .LBB0_52
.LBB0_50:                               # %vector.body93
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r28, r19
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	bneq r3, zero, .LBB0_34
	j .LBB0_53
.LBB0_51:                               # %vector.body93
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r24, 16
	andi r1, r1, 1
	add.s r1, r24, r1
	add.s r1, r1, r27
	and r1, r1, r4
	setlt.u r3, r28, r12
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	bneq r3, zero, .LBB0_50
.LBB0_52:                               # %vector.body93
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r21, 16
	andi r3, r3, 1
	add.s r3, r21, r3
	add.s r3, r3, r27
	and r22, r3, r4
	setlt.u r3, r28, r19
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	bneq r3, zero, .LBB0_34
.LBB0_53:                               # %vector.body93
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r26, 16
	andi r3, r3, 1
	add.s r3, r26, r3
	add.s r3, r3, r27
	and r5, r3, r4
	j .LBB0_34
.LBB0_54:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 120 7 is_stmt 1               # parallel-rne.mlir:120:7
	mfence { sm }
	load.d r[21:22], -24(r30)               # 8-byte Folded Reload
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	addli r1, zero, 1
	bneq r18, r1, .LBB0_22
.LBB0_55:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_57
.LBB0_56:                               # %middle.block88
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	addli r9, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 157 9 is_stmt 1               # parallel-rne.mlir:157:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	beq r1, zero, .LBB0_78
.LBB0_57:                               # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_59 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[6:7], zero
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	sll.d r[9:10], r[2:3], r1
	j .LBB0_59
.LBB0_58:                               # %vector.body84
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 158 11 is_stmt 1              # parallel-rne.mlir:158:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 173 13                        # parallel-rne.mlir:173:13
	add.s r2, r8, r2
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	setneq.d r1, r[6:7], r[14:15]
	.loc	1 173 13                        # parallel-rne.mlir:173:13
	stores.w r5, 12(r2)
	stores.w r19, 8(r2)
	stores.w r22, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	beq r1, zero, .LBB0_56
.LBB0_59:                               # %vector.body84
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	add.ul r[1:2], r[6:7], r[9:10]
	slli r2, r1, 2
	add.s r5, r11, r2
	loads.w r3, 12(r5)
	loads.w r24, 0(r5)
	loads.w r1, 4(r5)
	loads.w r21, 8(r5)
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	and r16, r3, r23
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	setlt.u r5, r25, r16
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r5, zero, .LBB0_61
# %bb.60:                               # %vector.body84
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r3, 0
	j .LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_59 Depth=3
	or r5, r3, r20
.LBB0_62:                               # %vector.body84
                                        #   in Loop: Header=BB0_59 Depth=3
	and r12, r21, r23
	setlt.u r13, r25, r12
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r13, zero, .LBB0_64
# %bb.63:                               # %vector.body84
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	j .LBB0_65
.LBB0_64:                               #   in Loop: Header=BB0_59 Depth=3
	or r19, r21, r20
.LBB0_65:                               # %vector.body84
                                        #   in Loop: Header=BB0_59 Depth=3
	and r26, r1, r23
	setlt.u r13, r25, r26
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r13, zero, .LBB0_67
# %bb.66:                               # %vector.body84
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r1, 0
	j .LBB0_68
.LBB0_67:                               #   in Loop: Header=BB0_59 Depth=3
	or r22, r1, r20
.LBB0_68:                               # %vector.body84
                                        #   in Loop: Header=BB0_59 Depth=3
	and r17, r24, r23
	setlt.u r13, r25, r17
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r13, zero, .LBB0_70
# %bb.69:                               # %vector.body84
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r24, 0
	.loc	1 170 19 is_stmt 1              # parallel-rne.mlir:170:19
	setlt.u r17, r28, r17
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	beq r17, zero, .LBB0_71
	j .LBB0_72
.LBB0_70:                               #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r24, r20
	.loc	1 170 19 is_stmt 1              # parallel-rne.mlir:170:19
	setlt.u r17, r28, r17
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r17, zero, .LBB0_72
.LBB0_71:                               # %vector.body84
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r24, 16
	andi r13, r13, 1
	add.s r13, r24, r13
	add.s r13, r13, r27
	and r13, r13, r4
.LBB0_72:                               # %vector.body84
                                        #   in Loop: Header=BB0_59 Depth=3
	setlt.u r17, r28, r26
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	beq r17, zero, .LBB0_75
# %bb.73:                               # %vector.body84
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r12
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	beq r1, zero, .LBB0_76
.LBB0_74:                               # %vector.body84
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r16
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r1, zero, .LBB0_58
	j .LBB0_77
.LBB0_75:                               # %vector.body84
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r17, r1, 16
	andi r17, r17, 1
	add.s r1, r1, r17
	add.s r1, r1, r27
	and r22, r1, r4
	setlt.u r1, r28, r12
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r1, zero, .LBB0_74
.LBB0_76:                               # %vector.body84
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r27
	and r19, r1, r4
	setlt.u r1, r28, r16
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r1, zero, .LBB0_58
.LBB0_77:                               # %vector.body84
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r27
	and r5, r1, r4
	j .LBB0_58
.LBB0_78:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 149 7 is_stmt 1               # parallel-rne.mlir:149:7
	mfence { sm }
	load.d r[21:22], -24(r30)               # 8-byte Folded Reload
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	loadli.w r1,  -52(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_23
.LBB0_79:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_81
.LBB0_80:                               # %middle.block79
                                        #   in Loop: Header=BB0_81 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	addli r9, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 186 9 is_stmt 1               # parallel-rne.mlir:186:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	beq r1, zero, .LBB0_102
.LBB0_81:                               # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[6:7], zero
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	sll.d r[9:10], r[2:3], r1
	j .LBB0_83
.LBB0_82:                               # %vector.body75
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 187 11 is_stmt 1              # parallel-rne.mlir:187:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 202 13                        # parallel-rne.mlir:202:13
	add.s r2, r8, r2
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	setneq.d r1, r[6:7], r[14:15]
	.loc	1 202 13                        # parallel-rne.mlir:202:13
	stores.w r5, 12(r2)
	stores.w r19, 8(r2)
	stores.w r22, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	beq r1, zero, .LBB0_80
.LBB0_83:                               # %vector.body75
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_81 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	add.ul r[1:2], r[6:7], r[9:10]
	slli r2, r1, 2
	add.s r5, r11, r2
	loads.w r3, 12(r5)
	loads.w r24, 0(r5)
	loads.w r1, 4(r5)
	loads.w r21, 8(r5)
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	and r18, r3, r23
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	setlt.u r5, r25, r18
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r5, zero, .LBB0_85
# %bb.84:                               # %vector.body75
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r3, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_83 Depth=3
	or r5, r3, r20
.LBB0_86:                               # %vector.body75
                                        #   in Loop: Header=BB0_83 Depth=3
	and r12, r21, r23
	setlt.u r13, r25, r12
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r13, zero, .LBB0_88
# %bb.87:                               # %vector.body75
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_83 Depth=3
	or r19, r21, r20
.LBB0_89:                               # %vector.body75
                                        #   in Loop: Header=BB0_83 Depth=3
	and r26, r1, r23
	setlt.u r13, r25, r26
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r13, zero, .LBB0_91
# %bb.90:                               # %vector.body75
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r1, 0
	j .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_83 Depth=3
	or r22, r1, r20
.LBB0_92:                               # %vector.body75
                                        #   in Loop: Header=BB0_83 Depth=3
	and r16, r24, r23
	setlt.u r13, r25, r16
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r13, zero, .LBB0_94
# %bb.93:                               # %vector.body75
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r24, 0
	.loc	1 199 19 is_stmt 1              # parallel-rne.mlir:199:19
	setlt.u r16, r28, r16
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	beq r16, zero, .LBB0_95
	j .LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r24, r20
	.loc	1 199 19 is_stmt 1              # parallel-rne.mlir:199:19
	setlt.u r16, r28, r16
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r16, zero, .LBB0_96
.LBB0_95:                               # %vector.body75
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r24, 16
	andi r13, r13, 1
	add.s r13, r24, r13
	add.s r13, r13, r27
	and r13, r13, r4
.LBB0_96:                               # %vector.body75
                                        #   in Loop: Header=BB0_83 Depth=3
	setlt.u r16, r28, r26
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	beq r16, zero, .LBB0_99
# %bb.97:                               # %vector.body75
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r12
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	beq r1, zero, .LBB0_100
.LBB0_98:                               # %vector.body75
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r18
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r1, zero, .LBB0_82
	j .LBB0_101
.LBB0_99:                               # %vector.body75
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r1, 16
	andi r16, r16, 1
	add.s r1, r1, r16
	add.s r1, r1, r27
	and r22, r1, r4
	setlt.u r1, r28, r12
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r1, zero, .LBB0_98
.LBB0_100:                              # %vector.body75
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r27
	and r19, r1, r4
	setlt.u r1, r28, r18
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r1, zero, .LBB0_82
.LBB0_101:                              # %vector.body75
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r27
	and r5, r1, r4
	j .LBB0_82
.LBB0_102:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 178 7 is_stmt 1               # parallel-rne.mlir:178:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r18
	load.d r[21:22], -24(r30)               # 8-byte Folded Reload
	.loc	1 207 7                         # parallel-rne.mlir:207:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_24
.LBB0_103:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 207 7                         # parallel-rne.mlir:207:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_105
.LBB0_104:                              # %middle.block70
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 31
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	addli r9, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 215 9 is_stmt 1               # parallel-rne.mlir:215:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	beq r1, zero, .LBB0_126
.LBB0_105:                              # %.preheader21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_107 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[6:7], zero
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	sll.d r[9:10], r[2:3], r1
	j .LBB0_107
.LBB0_106:                              # %vector.body66
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 216 11 is_stmt 1              # parallel-rne.mlir:216:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 231 13                        # parallel-rne.mlir:231:13
	add.s r2, r8, r2
	.loc	1 216 11                        # parallel-rne.mlir:216:11
	setneq.d r1, r[6:7], r[14:15]
	.loc	1 231 13                        # parallel-rne.mlir:231:13
	stores.w r5, 12(r2)
	stores.w r19, 8(r2)
	stores.w r22, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 216 11                        # parallel-rne.mlir:216:11
	beq r1, zero, .LBB0_104
.LBB0_107:                              # %vector.body66
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	add.ul r[1:2], r[6:7], r[9:10]
	slli r2, r1, 2
	add.s r5, r11, r2
	loads.w r3, 12(r5)
	loads.w r24, 0(r5)
	loads.w r1, 4(r5)
	loads.w r21, 8(r5)
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	and r18, r3, r23
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	setlt.u r5, r25, r18
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r5, zero, .LBB0_109
# %bb.108:                              # %vector.body66
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r3, 0
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_107 Depth=3
	or r5, r3, r20
.LBB0_110:                              # %vector.body66
                                        #   in Loop: Header=BB0_107 Depth=3
	and r12, r21, r23
	setlt.u r13, r25, r12
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r13, zero, .LBB0_112
# %bb.111:                              # %vector.body66
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	j .LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_107 Depth=3
	or r19, r21, r20
.LBB0_113:                              # %vector.body66
                                        #   in Loop: Header=BB0_107 Depth=3
	and r26, r1, r23
	setlt.u r13, r25, r26
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r13, zero, .LBB0_115
# %bb.114:                              # %vector.body66
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r1, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_107 Depth=3
	or r22, r1, r20
.LBB0_116:                              # %vector.body66
                                        #   in Loop: Header=BB0_107 Depth=3
	and r16, r24, r23
	setlt.u r13, r25, r16
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r13, zero, .LBB0_118
# %bb.117:                              # %vector.body66
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r24, 0
	.loc	1 228 19 is_stmt 1              # parallel-rne.mlir:228:19
	setlt.u r16, r28, r16
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	beq r16, zero, .LBB0_119
	j .LBB0_120
.LBB0_118:                              #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r24, r20
	.loc	1 228 19 is_stmt 1              # parallel-rne.mlir:228:19
	setlt.u r16, r28, r16
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r16, zero, .LBB0_120
.LBB0_119:                              # %vector.body66
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r24, 16
	andi r13, r13, 1
	add.s r13, r24, r13
	add.s r13, r13, r27
	and r13, r13, r4
.LBB0_120:                              # %vector.body66
                                        #   in Loop: Header=BB0_107 Depth=3
	setlt.u r16, r28, r26
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	beq r16, zero, .LBB0_123
# %bb.121:                              # %vector.body66
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r12
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	beq r1, zero, .LBB0_124
.LBB0_122:                              # %vector.body66
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r18
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r1, zero, .LBB0_106
	j .LBB0_125
.LBB0_123:                              # %vector.body66
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r1, 16
	andi r16, r16, 1
	add.s r1, r1, r16
	add.s r1, r1, r27
	and r22, r1, r4
	setlt.u r1, r28, r12
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r1, zero, .LBB0_122
.LBB0_124:                              # %vector.body66
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r27
	and r19, r1, r4
	setlt.u r1, r28, r18
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r1, zero, .LBB0_106
.LBB0_125:                              # %vector.body66
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r27
	and r5, r1, r4
	j .LBB0_106
.LBB0_126:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 207 7 is_stmt 1               # parallel-rne.mlir:207:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r18
	load.d r[21:22], -24(r30)               # 8-byte Folded Reload
	.loc	1 236 7                         # parallel-rne.mlir:236:7
	loadli.w r1,  -48(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_25
.LBB0_127:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 236 7                         # parallel-rne.mlir:236:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_129
.LBB0_128:                              # %middle.block61
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 39
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	addli r9, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 244 9 is_stmt 1               # parallel-rne.mlir:244:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	beq r1, zero, .LBB0_150
.LBB0_129:                              # %.preheader20
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_131 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[6:7], zero
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	sll.d r[9:10], r[2:3], r1
	j .LBB0_131
.LBB0_130:                              # %vector.body57
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 245 11 is_stmt 1              # parallel-rne.mlir:245:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 260 13                        # parallel-rne.mlir:260:13
	add.s r2, r8, r2
	.loc	1 245 11                        # parallel-rne.mlir:245:11
	setneq.d r1, r[6:7], r[14:15]
	.loc	1 260 13                        # parallel-rne.mlir:260:13
	stores.w r5, 12(r2)
	stores.w r19, 8(r2)
	stores.w r22, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 245 11                        # parallel-rne.mlir:245:11
	beq r1, zero, .LBB0_128
.LBB0_131:                              # %vector.body57
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	add.ul r[1:2], r[6:7], r[9:10]
	slli r2, r1, 2
	add.s r5, r11, r2
	loads.w r3, 12(r5)
	loads.w r24, 0(r5)
	loads.w r1, 4(r5)
	loads.w r21, 8(r5)
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	and r18, r3, r23
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	setlt.u r5, r25, r18
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r5, zero, .LBB0_133
# %bb.132:                              # %vector.body57
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r3, 0
	j .LBB0_134
.LBB0_133:                              #   in Loop: Header=BB0_131 Depth=3
	or r5, r3, r20
.LBB0_134:                              # %vector.body57
                                        #   in Loop: Header=BB0_131 Depth=3
	and r12, r21, r23
	setlt.u r13, r25, r12
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r13, zero, .LBB0_136
# %bb.135:                              # %vector.body57
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	j .LBB0_137
.LBB0_136:                              #   in Loop: Header=BB0_131 Depth=3
	or r19, r21, r20
.LBB0_137:                              # %vector.body57
                                        #   in Loop: Header=BB0_131 Depth=3
	and r26, r1, r23
	setlt.u r13, r25, r26
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r13, zero, .LBB0_139
# %bb.138:                              # %vector.body57
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r1, 0
	j .LBB0_140
.LBB0_139:                              #   in Loop: Header=BB0_131 Depth=3
	or r22, r1, r20
.LBB0_140:                              # %vector.body57
                                        #   in Loop: Header=BB0_131 Depth=3
	and r16, r24, r23
	setlt.u r13, r25, r16
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r13, zero, .LBB0_142
# %bb.141:                              # %vector.body57
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r24, 0
	.loc	1 257 19 is_stmt 1              # parallel-rne.mlir:257:19
	setlt.u r16, r28, r16
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	beq r16, zero, .LBB0_143
	j .LBB0_144
.LBB0_142:                              #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r24, r20
	.loc	1 257 19 is_stmt 1              # parallel-rne.mlir:257:19
	setlt.u r16, r28, r16
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r16, zero, .LBB0_144
.LBB0_143:                              # %vector.body57
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r24, 16
	andi r13, r13, 1
	add.s r13, r24, r13
	add.s r13, r13, r27
	and r13, r13, r4
.LBB0_144:                              # %vector.body57
                                        #   in Loop: Header=BB0_131 Depth=3
	setlt.u r16, r28, r26
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	beq r16, zero, .LBB0_147
# %bb.145:                              # %vector.body57
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r12
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	beq r1, zero, .LBB0_148
.LBB0_146:                              # %vector.body57
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r18
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r1, zero, .LBB0_130
	j .LBB0_149
.LBB0_147:                              # %vector.body57
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r1, 16
	andi r16, r16, 1
	add.s r1, r1, r16
	add.s r1, r1, r27
	and r22, r1, r4
	setlt.u r1, r28, r12
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r1, zero, .LBB0_146
.LBB0_148:                              # %vector.body57
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r27
	and r19, r1, r4
	setlt.u r1, r28, r18
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r1, zero, .LBB0_130
.LBB0_149:                              # %vector.body57
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r27
	and r5, r1, r4
	j .LBB0_130
.LBB0_150:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 236 7 is_stmt 1               # parallel-rne.mlir:236:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r18
	load.d r[21:22], -24(r30)               # 8-byte Folded Reload
	.loc	1 265 7                         # parallel-rne.mlir:265:7
	addli r1, zero, 5
	bneq r18, r1, .LBB0_26
.LBB0_151:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 265 7                         # parallel-rne.mlir:265:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_153
.LBB0_152:                              # %middle.block52
                                        #   in Loop: Header=BB0_153 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	addli r9, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 273 9 is_stmt 1               # parallel-rne.mlir:273:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	beq r1, zero, .LBB0_174
.LBB0_153:                              # %.preheader19
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_155 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[6:7], zero
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	sll.d r[9:10], r[2:3], r1
	j .LBB0_155
.LBB0_154:                              # %vector.body48
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 274 11 is_stmt 1              # parallel-rne.mlir:274:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 289 13                        # parallel-rne.mlir:289:13
	add.s r2, r8, r2
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	setneq.d r1, r[6:7], r[14:15]
	.loc	1 289 13                        # parallel-rne.mlir:289:13
	stores.w r5, 12(r2)
	stores.w r19, 8(r2)
	stores.w r22, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	beq r1, zero, .LBB0_152
.LBB0_155:                              # %vector.body48
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	add.ul r[1:2], r[6:7], r[9:10]
	slli r2, r1, 2
	add.s r5, r11, r2
	loads.w r3, 12(r5)
	loads.w r24, 0(r5)
	loads.w r1, 4(r5)
	loads.w r21, 8(r5)
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	and r18, r3, r23
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	setlt.u r5, r25, r18
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r5, zero, .LBB0_157
# %bb.156:                              # %vector.body48
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r3, 0
	j .LBB0_158
.LBB0_157:                              #   in Loop: Header=BB0_155 Depth=3
	or r5, r3, r20
.LBB0_158:                              # %vector.body48
                                        #   in Loop: Header=BB0_155 Depth=3
	and r12, r21, r23
	setlt.u r13, r25, r12
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r13, zero, .LBB0_160
# %bb.159:                              # %vector.body48
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	j .LBB0_161
.LBB0_160:                              #   in Loop: Header=BB0_155 Depth=3
	or r19, r21, r20
.LBB0_161:                              # %vector.body48
                                        #   in Loop: Header=BB0_155 Depth=3
	and r26, r1, r23
	setlt.u r13, r25, r26
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r13, zero, .LBB0_163
# %bb.162:                              # %vector.body48
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r1, 0
	j .LBB0_164
.LBB0_163:                              #   in Loop: Header=BB0_155 Depth=3
	or r22, r1, r20
.LBB0_164:                              # %vector.body48
                                        #   in Loop: Header=BB0_155 Depth=3
	and r16, r24, r23
	setlt.u r13, r25, r16
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r13, zero, .LBB0_166
# %bb.165:                              # %vector.body48
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r24, 0
	.loc	1 286 19 is_stmt 1              # parallel-rne.mlir:286:19
	setlt.u r16, r28, r16
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	beq r16, zero, .LBB0_167
	j .LBB0_168
.LBB0_166:                              #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r24, r20
	.loc	1 286 19 is_stmt 1              # parallel-rne.mlir:286:19
	setlt.u r16, r28, r16
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r16, zero, .LBB0_168
.LBB0_167:                              # %vector.body48
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r24, 16
	andi r13, r13, 1
	add.s r13, r24, r13
	add.s r13, r13, r27
	and r13, r13, r4
.LBB0_168:                              # %vector.body48
                                        #   in Loop: Header=BB0_155 Depth=3
	setlt.u r16, r28, r26
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	beq r16, zero, .LBB0_171
# %bb.169:                              # %vector.body48
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r12
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	beq r1, zero, .LBB0_172
.LBB0_170:                              # %vector.body48
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r18
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r1, zero, .LBB0_154
	j .LBB0_173
.LBB0_171:                              # %vector.body48
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r1, 16
	andi r16, r16, 1
	add.s r1, r1, r16
	add.s r1, r1, r27
	and r22, r1, r4
	setlt.u r1, r28, r12
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r1, zero, .LBB0_170
.LBB0_172:                              # %vector.body48
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r27
	and r19, r1, r4
	setlt.u r1, r28, r18
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r1, zero, .LBB0_154
.LBB0_173:                              # %vector.body48
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r27
	and r5, r1, r4
	j .LBB0_154
.LBB0_174:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 265 7 is_stmt 1               # parallel-rne.mlir:265:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r18
	load.d r[21:22], -24(r30)               # 8-byte Folded Reload
	.loc	1 294 7                         # parallel-rne.mlir:294:7
	addli r1, zero, 6
	bneq r18, r1, .LBB0_199
.LBB0_175:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 48
	.loc	1 294 7                         # parallel-rne.mlir:294:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_177
.LBB0_176:                              # %middle.block43
                                        #   in Loop: Header=BB0_177 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 55
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	addli r9, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 302 9 is_stmt 1               # parallel-rne.mlir:302:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	beq r1, zero, .LBB0_198
.LBB0_177:                              # %.preheader18
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_179 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[6:7], zero
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	sll.d r[9:10], r[2:3], r1
	j .LBB0_179
.LBB0_178:                              # %vector.body39
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 303 11 is_stmt 1              # parallel-rne.mlir:303:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 318 13                        # parallel-rne.mlir:318:13
	add.s r2, r8, r2
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	setneq.d r1, r[6:7], r[14:15]
	.loc	1 318 13                        # parallel-rne.mlir:318:13
	stores.w r5, 12(r2)
	stores.w r19, 8(r2)
	stores.w r22, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	beq r1, zero, .LBB0_176
.LBB0_179:                              # %vector.body39
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_177 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	add.ul r[1:2], r[6:7], r[9:10]
	slli r2, r1, 2
	add.s r5, r11, r2
	loads.w r3, 12(r5)
	loads.w r24, 0(r5)
	loads.w r1, 4(r5)
	loads.w r21, 8(r5)
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	and r18, r3, r23
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	setlt.u r5, r25, r18
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r5, zero, .LBB0_181
# %bb.180:                              # %vector.body39
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r3, 0
	j .LBB0_182
.LBB0_181:                              #   in Loop: Header=BB0_179 Depth=3
	or r5, r3, r20
.LBB0_182:                              # %vector.body39
                                        #   in Loop: Header=BB0_179 Depth=3
	and r12, r21, r23
	setlt.u r13, r25, r12
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r13, zero, .LBB0_184
# %bb.183:                              # %vector.body39
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	j .LBB0_185
.LBB0_184:                              #   in Loop: Header=BB0_179 Depth=3
	or r19, r21, r20
.LBB0_185:                              # %vector.body39
                                        #   in Loop: Header=BB0_179 Depth=3
	and r26, r1, r23
	setlt.u r13, r25, r26
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r13, zero, .LBB0_187
# %bb.186:                              # %vector.body39
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r1, 0
	j .LBB0_188
.LBB0_187:                              #   in Loop: Header=BB0_179 Depth=3
	or r22, r1, r20
.LBB0_188:                              # %vector.body39
                                        #   in Loop: Header=BB0_179 Depth=3
	and r16, r24, r23
	setlt.u r13, r25, r16
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r13, zero, .LBB0_190
# %bb.189:                              # %vector.body39
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r24, 0
	.loc	1 315 19 is_stmt 1              # parallel-rne.mlir:315:19
	setlt.u r16, r28, r16
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	beq r16, zero, .LBB0_191
	j .LBB0_192
.LBB0_190:                              #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r24, r20
	.loc	1 315 19 is_stmt 1              # parallel-rne.mlir:315:19
	setlt.u r16, r28, r16
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r16, zero, .LBB0_192
.LBB0_191:                              # %vector.body39
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r24, 16
	andi r13, r13, 1
	add.s r13, r24, r13
	add.s r13, r13, r27
	and r13, r13, r4
.LBB0_192:                              # %vector.body39
                                        #   in Loop: Header=BB0_179 Depth=3
	setlt.u r16, r28, r26
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	beq r16, zero, .LBB0_195
# %bb.193:                              # %vector.body39
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r12
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	beq r1, zero, .LBB0_196
.LBB0_194:                              # %vector.body39
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r18
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r1, zero, .LBB0_178
	j .LBB0_197
.LBB0_195:                              # %vector.body39
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r1, 16
	andi r16, r16, 1
	add.s r1, r1, r16
	add.s r1, r1, r27
	and r22, r1, r4
	setlt.u r1, r28, r12
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r1, zero, .LBB0_194
.LBB0_196:                              # %vector.body39
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r27
	and r19, r1, r4
	setlt.u r1, r28, r18
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r1, zero, .LBB0_178
.LBB0_197:                              # %vector.body39
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r27
	and r5, r1, r4
	j .LBB0_178
.LBB0_198:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 294 7 is_stmt 1               # parallel-rne.mlir:294:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r18
	load.d r[21:22], -24(r30)               # 8-byte Folded Reload
.LBB0_199:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	zext_int2long r[1:2], zero
	.loc	1 323 7 is_stmt 1               # parallel-rne.mlir:323:7
	store.d r[1:2], -16(r30)                # 8-byte Folded Spill
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_224
# %bb.200:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 323 7                         # parallel-rne.mlir:323:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_202
.LBB0_201:                              # %middle.block
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 63
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	addli r9, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 331 9 is_stmt 1               # parallel-rne.mlir:331:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	beq r1, zero, .LBB0_223
.LBB0_202:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_204 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	sll.d r[6:7], r[2:3], r9
	load.d r[2:3], -16(r30)                 # 8-byte Folded Reload
	j .LBB0_204
.LBB0_203:                              # %vector.body
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 332 11 is_stmt 1              # parallel-rne.mlir:332:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 347 13                        # parallel-rne.mlir:347:13
	add.s r9, r8, r18
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	setneq.d r1, r[2:3], r[14:15]
	.loc	1 347 13                        # parallel-rne.mlir:347:13
	stores.w r5, 12(r9)
	stores.w r21, 8(r9)
	stores.w r24, 4(r9)
	stores.w r16, 0(r9)
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	beq r1, zero, .LBB0_201
.LBB0_204:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	add.ul r[9:10], r[2:3], r[6:7]
	slli r18, r9, 2
	add.s r5, r11, r18
	loads.w r26, 12(r5)
	loads.w r13, 0(r5)
	loads.w r1, 4(r5)
	loads.w r22, 8(r5)
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	and r19, r26, r23
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	setlt.u r5, r25, r19
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r5, zero, .LBB0_206
# %bb.205:                              # %vector.body
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r26, 0
	j .LBB0_207
.LBB0_206:                              #   in Loop: Header=BB0_204 Depth=3
	or r5, r26, r20
.LBB0_207:                              # %vector.body
                                        #   in Loop: Header=BB0_204 Depth=3
	and r12, r22, r23
	setlt.u r9, r25, r12
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r9, zero, .LBB0_209
# %bb.208:                              # %vector.body
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_210
.LBB0_209:                              #   in Loop: Header=BB0_204 Depth=3
	or r21, r22, r20
.LBB0_210:                              # %vector.body
                                        #   in Loop: Header=BB0_204 Depth=3
	and r17, r1, r23
	setlt.u r9, r25, r17
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r9, zero, .LBB0_212
# %bb.211:                              # %vector.body
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r1, 0
	j .LBB0_213
.LBB0_212:                              #   in Loop: Header=BB0_204 Depth=3
	or r24, r1, r20
.LBB0_213:                              # %vector.body
                                        #   in Loop: Header=BB0_204 Depth=3
	and r9, r13, r23
	setlt.u r10, r25, r9
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r10, zero, .LBB0_215
# %bb.214:                              # %vector.body
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r13, 0
	.loc	1 344 19 is_stmt 1              # parallel-rne.mlir:344:19
	setlt.u r9, r28, r9
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	beq r9, zero, .LBB0_216
	j .LBB0_217
.LBB0_215:                              #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r13, r20
	.loc	1 344 19 is_stmt 1              # parallel-rne.mlir:344:19
	setlt.u r9, r28, r9
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r9, zero, .LBB0_217
.LBB0_216:                              # %vector.body
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r13, 16
	andi r9, r9, 1
	add.s r9, r13, r9
	add.s r9, r9, r27
	and r16, r9, r4
.LBB0_217:                              # %vector.body
                                        #   in Loop: Header=BB0_204 Depth=3
	setlt.u r9, r28, r17
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	beq r9, zero, .LBB0_220
# %bb.218:                              # %vector.body
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r12
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	beq r1, zero, .LBB0_221
.LBB0_219:                              # %vector.body
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r19
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r1, zero, .LBB0_203
	j .LBB0_222
.LBB0_220:                              # %vector.body
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r1, 16
	andi r9, r9, 1
	add.s r1, r1, r9
	add.s r1, r1, r27
	and r24, r1, r4
	setlt.u r1, r28, r12
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r1, zero, .LBB0_219
.LBB0_221:                              # %vector.body
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r27
	and r21, r1, r4
	setlt.u r1, r28, r19
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r1, zero, .LBB0_203
.LBB0_222:                              # %vector.body
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r27
	and r5, r1, r4
	j .LBB0_203
.LBB0_223:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 323 7 is_stmt 1               # parallel-rne.mlir:323:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r18
	load.d r[21:22], -24(r30)               # 8-byte Folded Reload
.LBB0_224:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 352 7                         # parallel-rne.mlir:352:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.225:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	bneq r18, zero, .LBB0_7
# %bb.226:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -68(r30)                  # 4-byte Folded Reload
	addli r2, zero, 896
	.loc	1 357 13 is_stmt 1              # parallel-rne.mlir:357:13
	load.d r[9:10], -16(r30)                # 8-byte Folded Reload
	addli r12, zero, 64
	zext_int2long r[2:3], r2
	slli r1, r1, 7
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	zext_int2long r[5:6], r1
	loadli.w r1,  -56(r30)                  # 4-byte Folded Reload
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	min.ul r[2:3], r[5:6], r[2:3]
	slli r1, r1, 6
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	sext_int2long r[7:8], r1
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	addli.d r[1:2], r[2:3], 128
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	addli r3, zero, 17
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	min.sl r[9:10], r[7:8], r[9:10]
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	max.ul r[1:2], r[1:2], r[5:6]
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	addli.d r[9:10], r[9:10], 64
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	sub.sl r[1:2], r[1:2], r[5:6]
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	max.sl r[5:6], r[9:10], r[7:8]
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	min.ul r[1:2], r[1:2], r[14:15]
	zext_int2long r[9:10], r12
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	load.d r[13:14], 16(r30)
	.loc	1 359 13                        # parallel-rne.mlir:359:13
	sub.sl r[5:6], r[5:6], r[7:8]
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	sll.d r[7:8], r[21:22], r3
	addli r3, zero, 12
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	min.sl r[5:6], r[5:6], r[9:10]
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	load.d r[9:10], -64(r30)                # 8-byte Folded Reload
	add.ul r[7:8], r[13:14], r[7:8]
	xwait r3, 0
	lui r3, 60
	addli r13, zero, 5
	ori r3, r3, 64
	lock zero, r13
	add.ul r[7:8], r[7:8], r[9:10]
	addli r10, zero, 1
	addli r9, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	add.s r3, r11, r3
	dma_cfg r10, r10, zero, 0
	andi r1, r1, 62
	dma_cfg zero, r10, zero, 1
	dma_cfg r8, zero, zero, 2
	dma_cfg r7, r3, r12, 3
	srli r3, r9, 5
	addli r9, zero, 7
	dma_cfg r12, r2, r3, 4
	addli r2, zero, 512
	addli r3, zero, 2048
	dma_cfg r3, r2, r5, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r13
	j .LBB0_6
.LBB0_227:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 109 7                         # parallel-rne.mlir:109:7
	addli r1, zero, 8
	xwait r7, 0
	addli r3, zero, 0
	addli r2, zero, 1
	addli r5, zero, 11
	xwait r1, 0
	addli r1, zero, 1
	xwait r5, 0
.LBB0_228:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r5, r3, 14
	slli r3, r3, 8
	lock zero, r1
	mm_cfg r6, r6, r6, 0
	or r5, r5, r11
	or r3, r3, r11
	mm_cfg r7, r7, r1, 2
	mm r3, r8, r5, 8
	andi r5, r2, 1
	addli r3, zero, 1
	addli r2, zero, 0
	unlock r1
	bneq r5, zero, .LBB0_228
# %bb.229:                              # %.thread34
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 5
	storeli.w zero, -28(r30)                # 4-byte Folded Spill
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	addli r1, zero, 1
	storeli.w r1, -48(r30)                  # 4-byte Folded Spill
	addli r1, zero, 10
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
	j .LBB0_20
.LBB0_230:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 114 7 is_stmt 1               # parallel-rne.mlir:114:7
	addli r2, zero, 10
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 115 7                         # parallel-rne.mlir:115:7
	storeli.w r2, -28(r30)                  # 4-byte Folded Spill
	xwait r1, 0
	j .LBB0_20
.LBB0_231:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -28(r30)                # 4-byte Folded Spill
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
	j .LBB0_20
.LBB0_232:                              # %._crit_edge
	.loc	1 372 5 is_stmt 1               # parallel-rne.mlir:372:5
	xsignal zero, 0
	bneq r18, zero, .LBB0_234
# %bb.233:
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
.LBB0_234:
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-4bxnybah" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
