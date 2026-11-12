	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/division-3e2b2a7t" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -144
	addli r1, zero, 1
.Ltmp0:
	.loc	1 29 5 prologue_end             # parallel-rne.mlir:29:5
	core_id r7
	addli r30, sp, 80
	xsignal_mode_cfg r1
	beq r7, zero, .LBB0_2
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
	ble.s r2, r1, .LBB0_230
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 40 11 is_stmt 1               # parallel-rne.mlir:40:11
	sext_int2long r[11:12], r1
	lui r1, 524287
	addli r9, zero, 64
	addli r10, zero, 1
	addli r13, zero, 8
	addli r6, zero, 7
	addli r18, zero, 13
	lui r20, 1024
	lui r25, 522240
	lui r4, 1048560
	addli r19, zero, 0
	store.d r[2:3], -80(r30)                # 8-byte Folded Spill
	ori r23, r1, 4095
	lui r1, 7
	lui r2, 522239
	ori r27, r1, 4095
	ori r28, r2, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 354 7                         # parallel-rne.mlir:354:7
	addli r1, zero, 12
	xsignal r1, 0
	load.d r[11:12], -40(r30)               # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 48 5                          # parallel-rne.mlir:48:5
	load.d r[1:2], -80(r30)                 # 8-byte Folded Reload
	addli.d r[11:12], r[11:12], 1
	loadli.w r19,  -32(r30)                 # 4-byte Folded Reload
	addli r9, zero, 64
	addli r10, zero, 1
	addli r13, zero, 8
	addli r18, zero, 13
	setlt.sl r1, r[11:12], r[1:2]
	addli r19, r19, 1
	beq r1, zero, .LBB0_230
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_226 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #       Child Loop BB0_33 Depth 3
                                        #     Child Loop BB0_55 Depth 2
                                        #       Child Loop BB0_57 Depth 3
                                        #     Child Loop BB0_79 Depth 2
                                        #       Child Loop BB0_81 Depth 3
                                        #     Child Loop BB0_103 Depth 2
                                        #       Child Loop BB0_105 Depth 3
                                        #     Child Loop BB0_127 Depth 2
                                        #       Child Loop BB0_129 Depth 3
                                        #     Child Loop BB0_151 Depth 2
                                        #       Child Loop BB0_153 Depth 3
                                        #     Child Loop BB0_175 Depth 2
                                        #       Child Loop BB0_177 Depth 3
                                        #     Child Loop BB0_200 Depth 2
                                        #       Child Loop BB0_202 Depth 3
	.loc	1 50 13                         # parallel-rne.mlir:50:13
	loadli.w r1,  32(r30)
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	loadli.w r2,  28(r30)
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	addli r3, zero, 5
	store.d r[11:12], -40(r30)              # 8-byte Folded Spill
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	storeli.w r19, -32(r30)                 # 4-byte Folded Spill
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	mod.s r16, r19, r3
	.loc	1 50 13                         # parallel-rne.mlir:50:13
	div.s r1, r11, r1
	.loc	1 84 13                         # parallel-rne.mlir:84:13
	slli r11, r16, 14
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	div.s r14, r1, r2
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	div.s r15, r14, r9
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	slli r1, r15, 3
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	sub.s r2, r10, r1
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	min.s r17, r2, r13
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	mod.s r2, r14, r17
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	add.s r1, r2, r1
	.loc	1 67 13                         # parallel-rne.mlir:67:13
	zext_int2long r[21:22], r1
	storeli.w r1, -56(r30)                  # 4-byte Folded Spill
	.loc	1 86 13                         # parallel-rne.mlir:86:13
	lui r1, 40
	add.s r2, r11, r1
	store.d r[21:22], -24(r30)              # 8-byte Folded Spill
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	bneq r7, r10, .LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	sll.d r[5:6], r[21:22], r18
	load.d r[21:22], 0(r30)
	addli r8, zero, 3
	addli r3, zero, 7
	addli r12, zero, 4
	xwait r8, 0
	add.ul r[5:6], r[21:22], r[5:6]
	blt.s r12, r19, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 5
	addli r19, zero, 2
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	addli r21, zero, 6
	lock zero, r1
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 11
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
	dma_cfg zero, zero, r18, 10
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
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r9, 3
	dma_cfg r3, zero, r19, 4
	addli r3, zero, 256
	dma_cfg r3, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r1
.LBB0_10:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r1, 40
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
	addli r3, zero, 2
	addli r19, zero, 128
	addli r21, zero, 256
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	lock zero, r12
	ori r1, r1, 64
	dma_cfg r10, r10, zero, 0
	dma_cfg zero, r6, zero, 2
	add.s r1, r11, r1
	dma_cfg r1, r5, r9, 3
	addli r1, zero, 5
	addli r5, zero, 6
	addli r6, zero, 7
	dma_cfg r19, r9, r3, 4
	dma_cfg r21, r19, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r1
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 2
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 9
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 11
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 12
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 14
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 15
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 16
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 17
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
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r9, 3
	dma_cfg r19, zero, r3, 4
	dma_cfg r21, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r1
	xsignal r3, 0
	load.d r[21:22], -24(r30)               # 8-byte Folded Reload
	.loc	1 91 7 is_stmt 1                # parallel-rne.mlir:91:7
	j .LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 2
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	bneq r7, r1, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	xwait r1, 0
	addli r1, zero, 5
	addli r3, zero, 2
	addli r12, zero, 2
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 3
	ds_cfg r3, zero, 0
	ds_cfg r9, zero, 1
	ds_cfg r9, zero, 14
	ds_cfg r9, zero, 13
	shuffle_batch r11, r2, r9, 1
	unlock zero
	xsignal r1, 0
	addli r1, zero, 1
	storeli.w r1, -52(r30)                  # 4-byte Folded Spill
	addli r1, zero, 4
	xsignal r1, 0
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r12, zero, 2
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	slli r1, r15, 6
	.loc	1 101 13 is_stmt 1              # parallel-rne.mlir:101:13
	lui r3, 60
	addli r15, zero, 6
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r1, r14, r1
	slli r14, r16, 15
	div.s r1, r1, r17
	.loc	1 101 13                        # parallel-rne.mlir:101:13
	add.s r8, r14, r3
	storeli.w r1, -68(r30)                  # 4-byte Folded Spill
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	zext_int2long r[1:2], r1
	sll.d r[1:2], r[1:2], r6
	.loc	1 107 7 is_stmt 1               # parallel-rne.mlir:107:7
	sll.d r[16:17], r[1:2], r10
	store.d r[16:17], -64(r30)              # 8-byte Folded Spill
	bneq r7, r15, .LBB0_25
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[1:2], 8(r30)
	xwait r6, 0
	loadli.w r3,  -32(r30)                  # 4-byte Folded Reload
	addli r5, zero, 3
	addli r11, zero, 4
	add.ul r[1:2], r[1:2], r[16:17]
	addli r17, zero, 128
	blt.s r11, r3, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 5
	.loc	1 107 7                         # parallel-rne.mlir:107:7
	addli r16, zero, 9
	lock zero, r3
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 11
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 12
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 14
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 15
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 16
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 17
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 18
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 19
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 20
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 21
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 22
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 23
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 24
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 25
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 26
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 27
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 28
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 29
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 30
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 31
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 512
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r8, zero, r9, 3
	dma_cfg r17, zero, r11, 4
	dma_cfg r16, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
.LBB0_17:                               # %.thread15
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r3, 60
	storeli.w zero, -28(r30)                # 4-byte Folded Spill
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
	addli r16, zero, 1
	.loc	1 107 7                         # parallel-rne.mlir:107:7
	lock zero, r11
	ori r3, r3, 64
	dma_cfg r10, r10, zero, 0
	dma_cfg zero, r2, zero, 2
	add.s r3, r14, r3
	dma_cfg r3, r1, r9, 3
	addli r3, zero, 512
	addli r1, zero, 2048
	addli r2, zero, 9
	dma_cfg r17, r9, r11, 4
	dma_cfg r3, r1, r9, 5
	addli r1, zero, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	lock zero, r1
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r18, 10
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
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r8, zero, r9, 3
	dma_cfg r17, zero, r11, 4
	dma_cfg r3, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r1
	xsignal r15, 0
.LBB0_18:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 100
	.loc	1 117 7 is_stmt 1               # parallel-rne.mlir:117:7
	xfence
	.loc	1 118 7                         # parallel-rne.mlir:118:7
	mfence { lm, sm, gm }
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r11, r14, r1
	.loc	1 119 7 is_stmt 1               # parallel-rne.mlir:119:7
	addli r1, zero, 255
	csr_set csr5, r1
	addli r1, zero, 128
	sync_core
	zext_int2long r[17:18], r1
	.loc	1 120 7                         # parallel-rne.mlir:120:7
	beq r7, zero, .LBB0_29
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	beq r7, r16, .LBB0_53
.LBB0_20:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	loadli.w r1,  -52(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_77
.LBB0_21:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 207 7                         # parallel-rne.mlir:207:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_101
.LBB0_22:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 236 7                         # parallel-rne.mlir:236:7
	loadli.w r1,  -48(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_125
.LBB0_23:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 265 7                         # parallel-rne.mlir:265:7
	addli r1, zero, 5
	beq r7, r1, .LBB0_149
.LBB0_24:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 294 7                         # parallel-rne.mlir:294:7
	addli r1, zero, 6
	beq r7, r1, .LBB0_173
	j .LBB0_197
.LBB0_25:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	addli r1, zero, 3
	addli r10, zero, 4
	addli r2, zero, 128
	addli r16, zero, 1
	beq r7, r1, .LBB0_228
# %bb.26:                               #   in Loop: Header=BB0_7 Depth=1
	beq r7, r10, .LBB0_225
# %bb.27:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r7, r6, .LBB0_229
# %bb.28:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 9
	storeli.w zero, -28(r30)                # 4-byte Folded Spill
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
	xwait r15, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 1
	ds_cfg r12, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r9, zero, 14
	ds_cfg r2, zero, 13
	shuffle_coa r14, r8, r9, 2
	unlock zero
	xsignal r6, 0
	storeli.w r1, -44(r30)                  # 4-byte Folded Spill
	xsignal r13, 0
	j .LBB0_18
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 120 7 is_stmt 1               # parallel-rne.mlir:120:7
	xfence
	mfence { lm, sm, gm }
	store.d r[1:2], -16(r30)                # 8-byte Folded Spill
	addli.d r[2:3], r[1:2], 0
	j .LBB0_31
.LBB0_30:                               # %middle.block97
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 7
	load.d r[7:8], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r6
	.loc	1 128 9 is_stmt 1               # parallel-rne.mlir:128:9
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[2:3], r[7:8], 1
	beq r1, zero, .LBB0_52
.LBB0_31:                               # %.preheader24
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_33 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	load.d r[8:9], -16(r30)                 # 8-byte Folded Reload
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	sll.d r[6:7], r[2:3], r1
	j .LBB0_33
.LBB0_32:                               # %vector.body93
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 129 11 is_stmt 1              # parallel-rne.mlir:129:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	add.s r5, r11, r26
	.loc	1 129 11                        # parallel-rne.mlir:129:11
	setneq.d r3, r[8:9], r[17:18]
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	stores.w r10, 12(r5)
	stores.w r22, 8(r5)
	stores.w r1, 4(r5)
	stores.w r2, 0(r5)
	.loc	1 129 11                        # parallel-rne.mlir:129:11
	beq r3, zero, .LBB0_30
.LBB0_33:                               # %vector.body93
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 130 19                        # parallel-rne.mlir:130:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r26, r1, 2
	add.s r1, r14, r26
	loads.w r5, 12(r1)
	loads.w r13, 0(r1)
	loads.w r24, 4(r1)
	loads.w r21, 8(r1)
	.loc	1 132 19                        # parallel-rne.mlir:132:19
	and r19, r5, r23
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	setlt.u r1, r25, r19
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	bneq r1, zero, .LBB0_35
# %bb.34:                               # %vector.body93
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r5, 0
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_33 Depth=3
	or r10, r5, r20
.LBB0_36:                               # %vector.body93
                                        #   in Loop: Header=BB0_33 Depth=3
	and r12, r21, r23
	setlt.u r1, r25, r12
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	bneq r1, zero, .LBB0_38
# %bb.37:                               # %vector.body93
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_33 Depth=3
	or r22, r21, r20
.LBB0_39:                               # %vector.body93
                                        #   in Loop: Header=BB0_33 Depth=3
	and r3, r24, r23
	setlt.u r1, r25, r3
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	bneq r1, zero, .LBB0_41
# %bb.40:                               # %vector.body93
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r24, 0
	j .LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_33 Depth=3
	or r1, r24, r20
.LBB0_42:                               # %vector.body93
                                        #   in Loop: Header=BB0_33 Depth=3
	and r15, r13, r23
	setlt.u r2, r25, r15
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	bneq r2, zero, .LBB0_44
# %bb.43:                               # %vector.body93
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r13, 0
	.loc	1 141 19 is_stmt 1              # parallel-rne.mlir:141:19
	setlt.u r15, r28, r15
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	beq r15, zero, .LBB0_45
	j .LBB0_46
.LBB0_44:                               #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r13, r20
	.loc	1 141 19 is_stmt 1              # parallel-rne.mlir:141:19
	setlt.u r15, r28, r15
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	bneq r15, zero, .LBB0_46
.LBB0_45:                               # %vector.body93
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r13, 16
	andi r2, r2, 1
	add.s r2, r13, r2
	add.s r2, r2, r27
	and r2, r2, r4
.LBB0_46:                               # %vector.body93
                                        #   in Loop: Header=BB0_33 Depth=3
	setlt.u r3, r28, r3
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	beq r3, zero, .LBB0_49
# %bb.47:                               # %vector.body93
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r28, r12
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	beq r3, zero, .LBB0_50
.LBB0_48:                               # %vector.body93
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r28, r19
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	bneq r3, zero, .LBB0_32
	j .LBB0_51
.LBB0_49:                               # %vector.body93
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r24, 16
	andi r1, r1, 1
	add.s r1, r24, r1
	add.s r1, r1, r27
	and r1, r1, r4
	setlt.u r3, r28, r12
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	bneq r3, zero, .LBB0_48
.LBB0_50:                               # %vector.body93
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r21, 16
	andi r3, r3, 1
	add.s r3, r21, r3
	add.s r3, r3, r27
	and r22, r3, r4
	setlt.u r3, r28, r19
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	bneq r3, zero, .LBB0_32
.LBB0_51:                               # %vector.body93
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r5, 16
	andi r3, r3, 1
	add.s r3, r5, r3
	add.s r3, r3, r27
	and r10, r3, r4
	j .LBB0_32
.LBB0_52:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 120 7 is_stmt 1               # parallel-rne.mlir:120:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r7
	load.d r[21:22], -24(r30)               # 8-byte Folded Reload
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	bneq r7, r16, .LBB0_20
.LBB0_53:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_55
.LBB0_54:                               # %middle.block88
                                        #   in Loop: Header=BB0_55 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 157 9 is_stmt 1               # parallel-rne.mlir:157:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	addli r6, zero, 7
	beq r1, zero, .LBB0_76
.LBB0_55:                               # %.preheader23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_57 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[2:3], r6
	zext_int2long r[6:7], zero
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_57
.LBB0_56:                               # %vector.body84
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 158 11 is_stmt 1              # parallel-rne.mlir:158:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 173 13                        # parallel-rne.mlir:173:13
	add.s r2, r11, r2
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	setneq.d r1, r[6:7], r[17:18]
	.loc	1 173 13                        # parallel-rne.mlir:173:13
	stores.w r5, 12(r2)
	stores.w r19, 8(r2)
	stores.w r22, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	beq r1, zero, .LBB0_54
.LBB0_57:                               # %vector.body84
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	add.ul r[1:2], r[6:7], r[8:9]
	slli r2, r1, 2
	add.s r5, r14, r2
	loads.w r3, 12(r5)
	loads.w r24, 0(r5)
	loads.w r1, 4(r5)
	loads.w r21, 8(r5)
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	and r10, r3, r23
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	setlt.u r5, r25, r10
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r5, zero, .LBB0_59
# %bb.58:                               # %vector.body84
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r3, 0
	j .LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_57 Depth=3
	or r5, r3, r20
.LBB0_60:                               # %vector.body84
                                        #   in Loop: Header=BB0_57 Depth=3
	and r12, r21, r23
	setlt.u r13, r25, r12
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r13, zero, .LBB0_62
# %bb.61:                               # %vector.body84
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	j .LBB0_63
.LBB0_62:                               #   in Loop: Header=BB0_57 Depth=3
	or r19, r21, r20
.LBB0_63:                               # %vector.body84
                                        #   in Loop: Header=BB0_57 Depth=3
	and r26, r1, r23
	setlt.u r13, r25, r26
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r13, zero, .LBB0_65
# %bb.64:                               # %vector.body84
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r1, 0
	j .LBB0_66
.LBB0_65:                               #   in Loop: Header=BB0_57 Depth=3
	or r22, r1, r20
.LBB0_66:                               # %vector.body84
                                        #   in Loop: Header=BB0_57 Depth=3
	and r15, r24, r23
	setlt.u r13, r25, r15
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r13, zero, .LBB0_68
# %bb.67:                               # %vector.body84
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r24, 0
	.loc	1 170 19 is_stmt 1              # parallel-rne.mlir:170:19
	setlt.u r15, r28, r15
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	beq r15, zero, .LBB0_69
	j .LBB0_70
.LBB0_68:                               #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r24, r20
	.loc	1 170 19 is_stmt 1              # parallel-rne.mlir:170:19
	setlt.u r15, r28, r15
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r15, zero, .LBB0_70
.LBB0_69:                               # %vector.body84
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r24, 16
	andi r13, r13, 1
	add.s r13, r24, r13
	add.s r13, r13, r27
	and r13, r13, r4
.LBB0_70:                               # %vector.body84
                                        #   in Loop: Header=BB0_57 Depth=3
	setlt.u r15, r28, r26
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	beq r15, zero, .LBB0_73
# %bb.71:                               # %vector.body84
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r12
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	beq r1, zero, .LBB0_74
.LBB0_72:                               # %vector.body84
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r10
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r1, zero, .LBB0_56
	j .LBB0_75
.LBB0_73:                               # %vector.body84
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r1, 16
	andi r15, r15, 1
	add.s r1, r1, r15
	add.s r1, r1, r27
	and r22, r1, r4
	setlt.u r1, r28, r12
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r1, zero, .LBB0_72
.LBB0_74:                               # %vector.body84
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r27
	and r19, r1, r4
	setlt.u r1, r28, r10
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r1, zero, .LBB0_56
.LBB0_75:                               # %vector.body84
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r27
	and r5, r1, r4
	j .LBB0_56
.LBB0_76:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 149 7 is_stmt 1               # parallel-rne.mlir:149:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r7
	load.d r[21:22], -24(r30)               # 8-byte Folded Reload
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	loadli.w r1,  -52(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_21
.LBB0_77:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_79
.LBB0_78:                               # %middle.block79
                                        #   in Loop: Header=BB0_79 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 186 9 is_stmt 1               # parallel-rne.mlir:186:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	addli r6, zero, 7
	beq r1, zero, .LBB0_100
.LBB0_79:                               # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_81 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[2:3], r6
	zext_int2long r[6:7], zero
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_81
.LBB0_80:                               # %vector.body75
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 187 11 is_stmt 1              # parallel-rne.mlir:187:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 202 13                        # parallel-rne.mlir:202:13
	add.s r2, r11, r2
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	setneq.d r1, r[6:7], r[17:18]
	.loc	1 202 13                        # parallel-rne.mlir:202:13
	stores.w r5, 12(r2)
	stores.w r19, 8(r2)
	stores.w r22, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	beq r1, zero, .LBB0_78
.LBB0_81:                               # %vector.body75
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_79 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	add.ul r[1:2], r[6:7], r[8:9]
	slli r2, r1, 2
	add.s r5, r14, r2
	loads.w r3, 12(r5)
	loads.w r24, 0(r5)
	loads.w r1, 4(r5)
	loads.w r21, 8(r5)
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	and r10, r3, r23
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	setlt.u r5, r25, r10
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r5, zero, .LBB0_83
# %bb.82:                               # %vector.body75
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r3, 0
	j .LBB0_84
.LBB0_83:                               #   in Loop: Header=BB0_81 Depth=3
	or r5, r3, r20
.LBB0_84:                               # %vector.body75
                                        #   in Loop: Header=BB0_81 Depth=3
	and r12, r21, r23
	setlt.u r13, r25, r12
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r13, zero, .LBB0_86
# %bb.85:                               # %vector.body75
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_81 Depth=3
	or r19, r21, r20
.LBB0_87:                               # %vector.body75
                                        #   in Loop: Header=BB0_81 Depth=3
	and r26, r1, r23
	setlt.u r13, r25, r26
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r13, zero, .LBB0_89
# %bb.88:                               # %vector.body75
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r1, 0
	j .LBB0_90
.LBB0_89:                               #   in Loop: Header=BB0_81 Depth=3
	or r22, r1, r20
.LBB0_90:                               # %vector.body75
                                        #   in Loop: Header=BB0_81 Depth=3
	and r15, r24, r23
	setlt.u r13, r25, r15
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r13, zero, .LBB0_92
# %bb.91:                               # %vector.body75
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r24, 0
	.loc	1 199 19 is_stmt 1              # parallel-rne.mlir:199:19
	setlt.u r15, r28, r15
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	beq r15, zero, .LBB0_93
	j .LBB0_94
.LBB0_92:                               #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r24, r20
	.loc	1 199 19 is_stmt 1              # parallel-rne.mlir:199:19
	setlt.u r15, r28, r15
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r15, zero, .LBB0_94
.LBB0_93:                               # %vector.body75
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r24, 16
	andi r13, r13, 1
	add.s r13, r24, r13
	add.s r13, r13, r27
	and r13, r13, r4
.LBB0_94:                               # %vector.body75
                                        #   in Loop: Header=BB0_81 Depth=3
	setlt.u r15, r28, r26
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	beq r15, zero, .LBB0_97
# %bb.95:                               # %vector.body75
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r12
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	beq r1, zero, .LBB0_98
.LBB0_96:                               # %vector.body75
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r10
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r1, zero, .LBB0_80
	j .LBB0_99
.LBB0_97:                               # %vector.body75
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r1, 16
	andi r15, r15, 1
	add.s r1, r1, r15
	add.s r1, r1, r27
	and r22, r1, r4
	setlt.u r1, r28, r12
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r1, zero, .LBB0_96
.LBB0_98:                               # %vector.body75
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r27
	and r19, r1, r4
	setlt.u r1, r28, r10
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r1, zero, .LBB0_80
.LBB0_99:                               # %vector.body75
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r27
	and r5, r1, r4
	j .LBB0_80
.LBB0_100:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 178 7 is_stmt 1               # parallel-rne.mlir:178:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r7
	load.d r[21:22], -24(r30)               # 8-byte Folded Reload
	.loc	1 207 7                         # parallel-rne.mlir:207:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_22
.LBB0_101:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 207 7                         # parallel-rne.mlir:207:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_103
.LBB0_102:                              # %middle.block70
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 31
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 215 9 is_stmt 1               # parallel-rne.mlir:215:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	addli r6, zero, 7
	beq r1, zero, .LBB0_124
.LBB0_103:                              # %.preheader21
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_105 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[2:3], r6
	zext_int2long r[6:7], zero
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_105
.LBB0_104:                              # %vector.body66
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 216 11 is_stmt 1              # parallel-rne.mlir:216:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 231 13                        # parallel-rne.mlir:231:13
	add.s r2, r11, r2
	.loc	1 216 11                        # parallel-rne.mlir:216:11
	setneq.d r1, r[6:7], r[17:18]
	.loc	1 231 13                        # parallel-rne.mlir:231:13
	stores.w r5, 12(r2)
	stores.w r19, 8(r2)
	stores.w r22, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 216 11                        # parallel-rne.mlir:216:11
	beq r1, zero, .LBB0_102
.LBB0_105:                              # %vector.body66
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	add.ul r[1:2], r[6:7], r[8:9]
	slli r2, r1, 2
	add.s r5, r14, r2
	loads.w r3, 12(r5)
	loads.w r24, 0(r5)
	loads.w r1, 4(r5)
	loads.w r21, 8(r5)
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	and r10, r3, r23
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	setlt.u r5, r25, r10
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r5, zero, .LBB0_107
# %bb.106:                              # %vector.body66
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r3, 0
	j .LBB0_108
.LBB0_107:                              #   in Loop: Header=BB0_105 Depth=3
	or r5, r3, r20
.LBB0_108:                              # %vector.body66
                                        #   in Loop: Header=BB0_105 Depth=3
	and r12, r21, r23
	setlt.u r13, r25, r12
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r13, zero, .LBB0_110
# %bb.109:                              # %vector.body66
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_105 Depth=3
	or r19, r21, r20
.LBB0_111:                              # %vector.body66
                                        #   in Loop: Header=BB0_105 Depth=3
	and r26, r1, r23
	setlt.u r13, r25, r26
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r13, zero, .LBB0_113
# %bb.112:                              # %vector.body66
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r1, 0
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_105 Depth=3
	or r22, r1, r20
.LBB0_114:                              # %vector.body66
                                        #   in Loop: Header=BB0_105 Depth=3
	and r15, r24, r23
	setlt.u r13, r25, r15
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r13, zero, .LBB0_116
# %bb.115:                              # %vector.body66
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r24, 0
	.loc	1 228 19 is_stmt 1              # parallel-rne.mlir:228:19
	setlt.u r15, r28, r15
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	beq r15, zero, .LBB0_117
	j .LBB0_118
.LBB0_116:                              #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r24, r20
	.loc	1 228 19 is_stmt 1              # parallel-rne.mlir:228:19
	setlt.u r15, r28, r15
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r15, zero, .LBB0_118
.LBB0_117:                              # %vector.body66
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r24, 16
	andi r13, r13, 1
	add.s r13, r24, r13
	add.s r13, r13, r27
	and r13, r13, r4
.LBB0_118:                              # %vector.body66
                                        #   in Loop: Header=BB0_105 Depth=3
	setlt.u r15, r28, r26
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	beq r15, zero, .LBB0_121
# %bb.119:                              # %vector.body66
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r12
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	beq r1, zero, .LBB0_122
.LBB0_120:                              # %vector.body66
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r10
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r1, zero, .LBB0_104
	j .LBB0_123
.LBB0_121:                              # %vector.body66
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r1, 16
	andi r15, r15, 1
	add.s r1, r1, r15
	add.s r1, r1, r27
	and r22, r1, r4
	setlt.u r1, r28, r12
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r1, zero, .LBB0_120
.LBB0_122:                              # %vector.body66
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r27
	and r19, r1, r4
	setlt.u r1, r28, r10
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r1, zero, .LBB0_104
.LBB0_123:                              # %vector.body66
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r27
	and r5, r1, r4
	j .LBB0_104
.LBB0_124:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 207 7 is_stmt 1               # parallel-rne.mlir:207:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r7
	load.d r[21:22], -24(r30)               # 8-byte Folded Reload
	.loc	1 236 7                         # parallel-rne.mlir:236:7
	loadli.w r1,  -48(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_23
.LBB0_125:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 236 7                         # parallel-rne.mlir:236:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_127
.LBB0_126:                              # %middle.block61
                                        #   in Loop: Header=BB0_127 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 39
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 244 9 is_stmt 1               # parallel-rne.mlir:244:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	addli r6, zero, 7
	beq r1, zero, .LBB0_148
.LBB0_127:                              # %.preheader20
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_129 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[2:3], r6
	zext_int2long r[6:7], zero
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_129
.LBB0_128:                              # %vector.body57
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 245 11 is_stmt 1              # parallel-rne.mlir:245:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 260 13                        # parallel-rne.mlir:260:13
	add.s r2, r11, r2
	.loc	1 245 11                        # parallel-rne.mlir:245:11
	setneq.d r1, r[6:7], r[17:18]
	.loc	1 260 13                        # parallel-rne.mlir:260:13
	stores.w r5, 12(r2)
	stores.w r19, 8(r2)
	stores.w r22, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 245 11                        # parallel-rne.mlir:245:11
	beq r1, zero, .LBB0_126
.LBB0_129:                              # %vector.body57
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_127 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	add.ul r[1:2], r[6:7], r[8:9]
	slli r2, r1, 2
	add.s r5, r14, r2
	loads.w r3, 12(r5)
	loads.w r24, 0(r5)
	loads.w r1, 4(r5)
	loads.w r21, 8(r5)
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	and r10, r3, r23
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	setlt.u r5, r25, r10
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r5, zero, .LBB0_131
# %bb.130:                              # %vector.body57
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r3, 0
	j .LBB0_132
.LBB0_131:                              #   in Loop: Header=BB0_129 Depth=3
	or r5, r3, r20
.LBB0_132:                              # %vector.body57
                                        #   in Loop: Header=BB0_129 Depth=3
	and r12, r21, r23
	setlt.u r13, r25, r12
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r13, zero, .LBB0_134
# %bb.133:                              # %vector.body57
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	j .LBB0_135
.LBB0_134:                              #   in Loop: Header=BB0_129 Depth=3
	or r19, r21, r20
.LBB0_135:                              # %vector.body57
                                        #   in Loop: Header=BB0_129 Depth=3
	and r26, r1, r23
	setlt.u r13, r25, r26
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r13, zero, .LBB0_137
# %bb.136:                              # %vector.body57
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r1, 0
	j .LBB0_138
.LBB0_137:                              #   in Loop: Header=BB0_129 Depth=3
	or r22, r1, r20
.LBB0_138:                              # %vector.body57
                                        #   in Loop: Header=BB0_129 Depth=3
	and r15, r24, r23
	setlt.u r13, r25, r15
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r13, zero, .LBB0_140
# %bb.139:                              # %vector.body57
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r24, 0
	.loc	1 257 19 is_stmt 1              # parallel-rne.mlir:257:19
	setlt.u r15, r28, r15
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	beq r15, zero, .LBB0_141
	j .LBB0_142
.LBB0_140:                              #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r24, r20
	.loc	1 257 19 is_stmt 1              # parallel-rne.mlir:257:19
	setlt.u r15, r28, r15
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r15, zero, .LBB0_142
.LBB0_141:                              # %vector.body57
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r24, 16
	andi r13, r13, 1
	add.s r13, r24, r13
	add.s r13, r13, r27
	and r13, r13, r4
.LBB0_142:                              # %vector.body57
                                        #   in Loop: Header=BB0_129 Depth=3
	setlt.u r15, r28, r26
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	beq r15, zero, .LBB0_145
# %bb.143:                              # %vector.body57
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r12
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	beq r1, zero, .LBB0_146
.LBB0_144:                              # %vector.body57
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r10
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r1, zero, .LBB0_128
	j .LBB0_147
.LBB0_145:                              # %vector.body57
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r1, 16
	andi r15, r15, 1
	add.s r1, r1, r15
	add.s r1, r1, r27
	and r22, r1, r4
	setlt.u r1, r28, r12
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r1, zero, .LBB0_144
.LBB0_146:                              # %vector.body57
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r27
	and r19, r1, r4
	setlt.u r1, r28, r10
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r1, zero, .LBB0_128
.LBB0_147:                              # %vector.body57
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r27
	and r5, r1, r4
	j .LBB0_128
.LBB0_148:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 236 7 is_stmt 1               # parallel-rne.mlir:236:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r7
	load.d r[21:22], -24(r30)               # 8-byte Folded Reload
	.loc	1 265 7                         # parallel-rne.mlir:265:7
	addli r1, zero, 5
	bneq r7, r1, .LBB0_24
.LBB0_149:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 265 7                         # parallel-rne.mlir:265:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_151
.LBB0_150:                              # %middle.block52
                                        #   in Loop: Header=BB0_151 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 273 9 is_stmt 1               # parallel-rne.mlir:273:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	addli r6, zero, 7
	beq r1, zero, .LBB0_172
.LBB0_151:                              # %.preheader19
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_153 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[2:3], r6
	zext_int2long r[6:7], zero
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_153
.LBB0_152:                              # %vector.body48
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 274 11 is_stmt 1              # parallel-rne.mlir:274:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 289 13                        # parallel-rne.mlir:289:13
	add.s r2, r11, r2
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	setneq.d r1, r[6:7], r[17:18]
	.loc	1 289 13                        # parallel-rne.mlir:289:13
	stores.w r5, 12(r2)
	stores.w r19, 8(r2)
	stores.w r22, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	beq r1, zero, .LBB0_150
.LBB0_153:                              # %vector.body48
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_151 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	add.ul r[1:2], r[6:7], r[8:9]
	slli r2, r1, 2
	add.s r5, r14, r2
	loads.w r3, 12(r5)
	loads.w r24, 0(r5)
	loads.w r1, 4(r5)
	loads.w r21, 8(r5)
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	and r10, r3, r23
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	setlt.u r5, r25, r10
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r5, zero, .LBB0_155
# %bb.154:                              # %vector.body48
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r3, 0
	j .LBB0_156
.LBB0_155:                              #   in Loop: Header=BB0_153 Depth=3
	or r5, r3, r20
.LBB0_156:                              # %vector.body48
                                        #   in Loop: Header=BB0_153 Depth=3
	and r12, r21, r23
	setlt.u r13, r25, r12
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r13, zero, .LBB0_158
# %bb.157:                              # %vector.body48
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	j .LBB0_159
.LBB0_158:                              #   in Loop: Header=BB0_153 Depth=3
	or r19, r21, r20
.LBB0_159:                              # %vector.body48
                                        #   in Loop: Header=BB0_153 Depth=3
	and r26, r1, r23
	setlt.u r13, r25, r26
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r13, zero, .LBB0_161
# %bb.160:                              # %vector.body48
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r1, 0
	j .LBB0_162
.LBB0_161:                              #   in Loop: Header=BB0_153 Depth=3
	or r22, r1, r20
.LBB0_162:                              # %vector.body48
                                        #   in Loop: Header=BB0_153 Depth=3
	and r15, r24, r23
	setlt.u r13, r25, r15
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r13, zero, .LBB0_164
# %bb.163:                              # %vector.body48
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r24, 0
	.loc	1 286 19 is_stmt 1              # parallel-rne.mlir:286:19
	setlt.u r15, r28, r15
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	beq r15, zero, .LBB0_165
	j .LBB0_166
.LBB0_164:                              #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r24, r20
	.loc	1 286 19 is_stmt 1              # parallel-rne.mlir:286:19
	setlt.u r15, r28, r15
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r15, zero, .LBB0_166
.LBB0_165:                              # %vector.body48
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r24, 16
	andi r13, r13, 1
	add.s r13, r24, r13
	add.s r13, r13, r27
	and r13, r13, r4
.LBB0_166:                              # %vector.body48
                                        #   in Loop: Header=BB0_153 Depth=3
	setlt.u r15, r28, r26
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	beq r15, zero, .LBB0_169
# %bb.167:                              # %vector.body48
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r12
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	beq r1, zero, .LBB0_170
.LBB0_168:                              # %vector.body48
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r10
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r1, zero, .LBB0_152
	j .LBB0_171
.LBB0_169:                              # %vector.body48
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r1, 16
	andi r15, r15, 1
	add.s r1, r1, r15
	add.s r1, r1, r27
	and r22, r1, r4
	setlt.u r1, r28, r12
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r1, zero, .LBB0_168
.LBB0_170:                              # %vector.body48
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r27
	and r19, r1, r4
	setlt.u r1, r28, r10
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r1, zero, .LBB0_152
.LBB0_171:                              # %vector.body48
                                        #   in Loop: Header=BB0_153 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r27
	and r5, r1, r4
	j .LBB0_152
.LBB0_172:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 265 7 is_stmt 1               # parallel-rne.mlir:265:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r7
	load.d r[21:22], -24(r30)               # 8-byte Folded Reload
	.loc	1 294 7                         # parallel-rne.mlir:294:7
	addli r1, zero, 6
	bneq r7, r1, .LBB0_197
.LBB0_173:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 48
	.loc	1 294 7                         # parallel-rne.mlir:294:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_175
.LBB0_174:                              # %middle.block43
                                        #   in Loop: Header=BB0_175 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 55
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 302 9 is_stmt 1               # parallel-rne.mlir:302:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	addli r6, zero, 7
	beq r1, zero, .LBB0_196
.LBB0_175:                              # %.preheader18
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_177 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[2:3], r6
	zext_int2long r[6:7], zero
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_177
.LBB0_176:                              # %vector.body39
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 303 11 is_stmt 1              # parallel-rne.mlir:303:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 318 13                        # parallel-rne.mlir:318:13
	add.s r2, r11, r2
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	setneq.d r1, r[6:7], r[17:18]
	.loc	1 318 13                        # parallel-rne.mlir:318:13
	stores.w r5, 12(r2)
	stores.w r19, 8(r2)
	stores.w r22, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	beq r1, zero, .LBB0_174
.LBB0_177:                              # %vector.body39
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_175 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	add.ul r[1:2], r[6:7], r[8:9]
	slli r2, r1, 2
	add.s r5, r14, r2
	loads.w r3, 12(r5)
	loads.w r24, 0(r5)
	loads.w r1, 4(r5)
	loads.w r21, 8(r5)
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	and r10, r3, r23
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	setlt.u r5, r25, r10
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r5, zero, .LBB0_179
# %bb.178:                              # %vector.body39
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r3, 0
	j .LBB0_180
.LBB0_179:                              #   in Loop: Header=BB0_177 Depth=3
	or r5, r3, r20
.LBB0_180:                              # %vector.body39
                                        #   in Loop: Header=BB0_177 Depth=3
	and r12, r21, r23
	setlt.u r13, r25, r12
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r13, zero, .LBB0_182
# %bb.181:                              # %vector.body39
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	j .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_177 Depth=3
	or r19, r21, r20
.LBB0_183:                              # %vector.body39
                                        #   in Loop: Header=BB0_177 Depth=3
	and r26, r1, r23
	setlt.u r13, r25, r26
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r13, zero, .LBB0_185
# %bb.184:                              # %vector.body39
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r1, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_177 Depth=3
	or r22, r1, r20
.LBB0_186:                              # %vector.body39
                                        #   in Loop: Header=BB0_177 Depth=3
	and r15, r24, r23
	setlt.u r13, r25, r15
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r13, zero, .LBB0_188
# %bb.187:                              # %vector.body39
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r24, 0
	.loc	1 315 19 is_stmt 1              # parallel-rne.mlir:315:19
	setlt.u r15, r28, r15
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	beq r15, zero, .LBB0_189
	j .LBB0_190
.LBB0_188:                              #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r24, r20
	.loc	1 315 19 is_stmt 1              # parallel-rne.mlir:315:19
	setlt.u r15, r28, r15
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r15, zero, .LBB0_190
.LBB0_189:                              # %vector.body39
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r24, 16
	andi r13, r13, 1
	add.s r13, r24, r13
	add.s r13, r13, r27
	and r13, r13, r4
.LBB0_190:                              # %vector.body39
                                        #   in Loop: Header=BB0_177 Depth=3
	setlt.u r15, r28, r26
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	beq r15, zero, .LBB0_193
# %bb.191:                              # %vector.body39
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r12
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	beq r1, zero, .LBB0_194
.LBB0_192:                              # %vector.body39
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r10
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r1, zero, .LBB0_176
	j .LBB0_195
.LBB0_193:                              # %vector.body39
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r1, 16
	andi r15, r15, 1
	add.s r1, r1, r15
	add.s r1, r1, r27
	and r22, r1, r4
	setlt.u r1, r28, r12
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r1, zero, .LBB0_192
.LBB0_194:                              # %vector.body39
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r27
	and r19, r1, r4
	setlt.u r1, r28, r10
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r1, zero, .LBB0_176
.LBB0_195:                              # %vector.body39
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r27
	and r5, r1, r4
	j .LBB0_176
.LBB0_196:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 294 7 is_stmt 1               # parallel-rne.mlir:294:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r7
	load.d r[21:22], -24(r30)               # 8-byte Folded Reload
.LBB0_197:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	zext_int2long r[1:2], zero
	.loc	1 323 7 is_stmt 1               # parallel-rne.mlir:323:7
	store.d r[1:2], -16(r30)                # 8-byte Folded Spill
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_222
# %bb.198:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 323 7                         # parallel-rne.mlir:323:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_200
.LBB0_199:                              # %middle.block
                                        #   in Loop: Header=BB0_200 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 63
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 331 9 is_stmt 1               # parallel-rne.mlir:331:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[2:3], r[5:6], 1
	addli r6, zero, 7
	beq r1, zero, .LBB0_221
.LBB0_200:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_202 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	sll.d r[6:7], r[2:3], r1
	load.d r[2:3], -16(r30)                 # 8-byte Folded Reload
	j .LBB0_202
.LBB0_201:                              # %vector.body
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 332 11 is_stmt 1              # parallel-rne.mlir:332:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 347 13                        # parallel-rne.mlir:347:13
	add.s r5, r11, r26
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	setneq.d r1, r[2:3], r[17:18]
	.loc	1 347 13                        # parallel-rne.mlir:347:13
	stores.w r10, 12(r5)
	stores.w r21, 8(r5)
	stores.w r24, 4(r5)
	stores.w r15, 0(r5)
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	beq r1, zero, .LBB0_199
.LBB0_202:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_200 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	add.ul r[8:9], r[2:3], r[6:7]
	slli r26, r8, 2
	add.s r8, r14, r26
	loads.w r5, 12(r8)
	loads.w r13, 0(r8)
	loads.w r1, 4(r8)
	loads.w r22, 8(r8)
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	and r19, r5, r23
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	setlt.u r8, r25, r19
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r8, zero, .LBB0_204
# %bb.203:                              # %vector.body
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r5, 0
	j .LBB0_205
.LBB0_204:                              #   in Loop: Header=BB0_202 Depth=3
	or r10, r5, r20
.LBB0_205:                              # %vector.body
                                        #   in Loop: Header=BB0_202 Depth=3
	and r12, r22, r23
	setlt.u r8, r25, r12
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r8, zero, .LBB0_207
# %bb.206:                              # %vector.body
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_202 Depth=3
	or r21, r22, r20
.LBB0_208:                              # %vector.body
                                        #   in Loop: Header=BB0_202 Depth=3
	and r16, r1, r23
	setlt.u r8, r25, r16
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r8, zero, .LBB0_210
# %bb.209:                              # %vector.body
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r1, 0
	j .LBB0_211
.LBB0_210:                              #   in Loop: Header=BB0_202 Depth=3
	or r24, r1, r20
.LBB0_211:                              # %vector.body
                                        #   in Loop: Header=BB0_202 Depth=3
	and r8, r13, r23
	setlt.u r9, r25, r8
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r9, zero, .LBB0_213
# %bb.212:                              # %vector.body
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r13, 0
	.loc	1 344 19 is_stmt 1              # parallel-rne.mlir:344:19
	setlt.u r8, r28, r8
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	beq r8, zero, .LBB0_214
	j .LBB0_215
.LBB0_213:                              #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r15, r13, r20
	.loc	1 344 19 is_stmt 1              # parallel-rne.mlir:344:19
	setlt.u r8, r28, r8
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r8, zero, .LBB0_215
.LBB0_214:                              # %vector.body
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r13, 16
	andi r8, r8, 1
	add.s r8, r13, r8
	add.s r8, r8, r27
	and r15, r8, r4
.LBB0_215:                              # %vector.body
                                        #   in Loop: Header=BB0_202 Depth=3
	setlt.u r8, r28, r16
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	beq r8, zero, .LBB0_218
# %bb.216:                              # %vector.body
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r12
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	beq r1, zero, .LBB0_219
.LBB0_217:                              # %vector.body
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r19
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r1, zero, .LBB0_201
	j .LBB0_220
.LBB0_218:                              # %vector.body
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r1, 16
	andi r8, r8, 1
	add.s r1, r1, r8
	add.s r1, r1, r27
	and r24, r1, r4
	setlt.u r1, r28, r12
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r1, zero, .LBB0_217
.LBB0_219:                              # %vector.body
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r27
	and r21, r1, r4
	setlt.u r1, r28, r19
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r1, zero, .LBB0_201
.LBB0_220:                              # %vector.body
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r5, 16
	andi r1, r1, 1
	add.s r1, r5, r1
	add.s r1, r1, r27
	and r10, r1, r4
	j .LBB0_201
.LBB0_221:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 323 7 is_stmt 1               # parallel-rne.mlir:323:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r7
	load.d r[21:22], -24(r30)               # 8-byte Folded Reload
.LBB0_222:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 352 7                         # parallel-rne.mlir:352:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.223:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[11:12], -40(r30)               # 8-byte Folded Reload
	.loc	1 370 7 is_stmt 1               # parallel-rne.mlir:370:7
	bneq r7, zero, .LBB0_6
# %bb.224:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -68(r30)                  # 4-byte Folded Reload
	addli r2, zero, 896
	.loc	1 357 13 is_stmt 1              # parallel-rne.mlir:357:13
	load.d r[9:10], -16(r30)                # 8-byte Folded Reload
	addli r13, zero, 64
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	load.d r[15:16], 16(r30)
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
	zext_int2long r[9:10], r13
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	min.ul r[1:2], r[1:2], r[17:18]
	.loc	1 359 13                        # parallel-rne.mlir:359:13
	sub.sl r[5:6], r[5:6], r[7:8]
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	sll.d r[7:8], r[21:22], r3
	addli r3, zero, 12
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	min.sl r[5:6], r[5:6], r[9:10]
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	load.d r[9:10], -64(r30)                # 8-byte Folded Reload
	add.ul r[7:8], r[15:16], r[7:8]
	xwait r3, 0
	lui r3, 100
	addli r15, zero, 1
	ori r3, r3, 64
	add.ul r[7:8], r[7:8], r[9:10]
	addli r10, zero, 5
	addli r9, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	add.s r3, r14, r3
	lock zero, r10
	andi r1, r1, 62
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r15, zero, 1
	dma_cfg r8, zero, zero, 2
	dma_cfg r7, r3, r13, 3
	srli r3, r9, 5
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r7
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	dma_cfg r13, r2, r3, 4
	addli r2, zero, 512
	addli r3, zero, 2048
	dma_cfg r3, r2, r5, 5
	addli r6, zero, 7
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r1, 0
	j .LBB0_6
.LBB0_225:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 0
	addli r1, zero, 1
	addli r2, zero, 1
	.loc	1 109 7 is_stmt 1               # parallel-rne.mlir:109:7
	addli r5, zero, 11
	xwait r10, 0
	xwait r13, 0
	xwait r5, 0
.LBB0_226:                              #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r5, r3, 14
	slli r3, r3, 8
	lock zero, r1
	mm_cfg r9, r9, r9, 0
	or r5, r5, r14
	or r3, r3, r14
	mm_cfg r10, r10, r1, 2
	mm r3, r11, r5, 8
	andi r5, r2, 1
	addli r3, zero, 1
	addli r2, zero, 0
	unlock r1
	bneq r5, zero, .LBB0_226
# %bb.227:                              # %.thread34
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 5
	storeli.w zero, -28(r30)                # 4-byte Folded Spill
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	addli r1, zero, 1
	storeli.w r1, -48(r30)                  # 4-byte Folded Spill
	addli r1, zero, 10
	xsignal r1, 0
	.loc	1 114 7                         # parallel-rne.mlir:114:7
	j .LBB0_18
.LBB0_228:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 115 7                         # parallel-rne.mlir:115:7
	storeli.w r1, -28(r30)                  # 4-byte Folded Spill
	xwait r18, 0
	j .LBB0_18
.LBB0_229:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -28(r30)                # 4-byte Folded Spill
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
	.loc	1 108 7 is_stmt 1               # parallel-rne.mlir:108:7
	j .LBB0_18
.LBB0_230:                              # %._crit_edge
	.loc	1 372 5                         # parallel-rne.mlir:372:5
	xsignal zero, 0
	bneq r7, zero, .LBB0_232
# %bb.231:
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
.LBB0_232:
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/division-3e2b2a7t" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
