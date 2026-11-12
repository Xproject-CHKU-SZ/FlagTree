	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/division-fkyj5opr" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -152
	addli r1, zero, 1
.Ltmp0:
	.loc	1 29 5 prologue_end             # parallel-rne.mlir:29:5
	core_id r9
	addli r30, sp, 88
	xsignal_mode_cfg r1
	beq r9, zero, .LBB0_2
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
	ble.s r2, r1, .LBB0_285
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 40 11 is_stmt 1               # parallel-rne.mlir:40:11
	sext_int2long r[13:14], r1
	lui r1, 524287
	addli r15, zero, 5
	addli r16, zero, 1
	addli r10, zero, 11
	addli r17, zero, 3
	lui r18, 522240
	lui r4, 1048560
	addli r8, zero, 0
	store.d r[2:3], -80(r30)                # 8-byte Folded Spill
	lui r2, 522239
	ori r25, r1, 4095
	lui r1, 7
	ori r26, r2, 4095
	ori r1, r1, 2048
	lui r2, 17
	storeli.w r1, -84(r30)                  # 4-byte Folded Spill
	ori r1, r2, 2048
	storeli.w r1, -88(r30)                  # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	addli r1, zero, 11
	addli r15, zero, 5
	addli r16, zero, 1
	xsignal r1, 0
	.loc	1 354 7                         # parallel-rne.mlir:354:7
	addli r1, zero, 12
	xsignal r1, 0
	load.d r[13:14], -56(r30)               # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 48 5                          # parallel-rne.mlir:48:5
	load.d r[1:2], -80(r30)                 # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 1
	loadli.w r8,  -44(r30)                  # 4-byte Folded Reload
	addli r10, zero, 11
	addli r17, zero, 3
	setlt.sl r1, r[13:14], r[1:2]
	addli r8, r8, 1
	beq r1, zero, .LBB0_285
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_29 Depth 2
                                        #       Child Loop BB0_38 Depth 3
                                        #       Child Loop BB0_32 Depth 3
                                        #     Child Loop BB0_66 Depth 2
                                        #       Child Loop BB0_75 Depth 3
                                        #       Child Loop BB0_69 Depth 3
                                        #     Child Loop BB0_97 Depth 2
                                        #       Child Loop BB0_106 Depth 3
                                        #       Child Loop BB0_100 Depth 3
                                        #     Child Loop BB0_128 Depth 2
                                        #       Child Loop BB0_137 Depth 3
                                        #       Child Loop BB0_131 Depth 3
                                        #     Child Loop BB0_159 Depth 2
                                        #       Child Loop BB0_168 Depth 3
                                        #       Child Loop BB0_162 Depth 3
                                        #     Child Loop BB0_190 Depth 2
                                        #       Child Loop BB0_199 Depth 3
                                        #       Child Loop BB0_193 Depth 3
                                        #     Child Loop BB0_221 Depth 2
                                        #       Child Loop BB0_230 Depth 3
                                        #       Child Loop BB0_224 Depth 3
                                        #     Child Loop BB0_253 Depth 2
                                        #       Child Loop BB0_262 Depth 3
                                        #       Child Loop BB0_256 Depth 3
	.loc	1 50 13                         # parallel-rne.mlir:50:13
	loadli.w r1,  32(r30)
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	loadli.w r2,  28(r30)
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	addli r5, zero, 8
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	mod.s r6, r8, r15
	.loc	1 50 13                         # parallel-rne.mlir:50:13
	div.s r1, r13, r1
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	div.s r1, r1, r2
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	addli r2, zero, 32
	div.s r7, r1, r2
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	slli r2, r7, 3
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	sub.s r3, r16, r2
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	min.s r11, r3, r5
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	mod.s r3, r1, r11
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	add.s r3, r3, r2
	.loc	1 84 13                         # parallel-rne.mlir:84:13
	slli r2, r6, 12
	storeli.w r3, -68(r30)                  # 4-byte Folded Spill
	.loc	1 67 13                         # parallel-rne.mlir:67:13
	zext_int2long r[23:24], r3
	addli r3, r8, 0
	.loc	1 86 13                         # parallel-rne.mlir:86:13
	addli r12, r2, 10240
	storeli.w r3, -44(r30)                  # 4-byte Folded Spill
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	bneq r9, r16, .LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	load.d r[19:20], 0(r30)
	sll.d r[8:9], r[23:24], r10
	addli r5, zero, 4
	xwait r17, 0
	add.ul r[8:9], r[19:20], r[8:9]
	blt.s r5, r3, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	lock zero, r15
	addli r19, zero, 2
	addli r3, zero, 6
	addli r20, zero, 17
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 7
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r10, 10
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
	dma_cfg r12, zero, r20, 3
	addli r20, zero, 128
	dma_cfg r20, zero, r19, 4
	addli r19, zero, 256
	dma_cfg r19, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
.LBB0_10:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -64(r30)                # 4-byte Folded Spill
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	addli r3, r2, 10304
	addli r19, zero, 64
	addli r20, zero, 256
	lock zero, r5
	dma_cfg r16, r16, zero, 0
	dma_cfg zero, r9, zero, 2
	dma_cfg r3, r8, r19, 3
	addli r3, zero, 2
	addli r9, zero, 128
	addli r8, zero, 16
	dma_cfg r9, r19, r3, 4
	dma_cfg r20, r9, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r5
	lock zero, r15
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 6
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 7
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 2
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
	dma_cfg r12, zero, r19, 3
	dma_cfg r9, zero, r10, 4
	.loc	1 29 5 is_stmt 1                # parallel-rne.mlir:29:5
	core_id r9
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	dma_cfg r20, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	xsignal r10, 0
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 2
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	bneq r9, r3, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	xwait r3, 0
	xwait r15, 0
	lock zero, zero
	addli r5, zero, 64
	ds_cfg r3, zero, 0
	addli r3, zero, 16
	ds_cfg r5, zero, 1
	ds_cfg r5, zero, 14
	ds_cfg r3, zero, 13
	addli r3, zero, 1
	shuffle_batch r2, r12, r5, 1
	unlock zero
	xsignal r17, 0
	storeli.w r3, -64(r30)                  # 4-byte Folded Spill
	addli r3, zero, 4
	xsignal r3, 0
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -64(r30)                # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	addli r10, zero, 2
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	slli r3, r7, 5
	.loc	1 99 13 is_stmt 1               # parallel-rne.mlir:99:13
	slli r5, r6, 13
	loadli.w r12,  -44(r30)                 # 4-byte Folded Reload
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	slli r17, r6, 11
	.loc	1 105 7 is_stmt 1               # parallel-rne.mlir:105:7
	store.d r[13:14], -56(r30)              # 8-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r1, r1, r3
	div.s r11, r1, r11
	.loc	1 101 13 is_stmt 1              # parallel-rne.mlir:101:13
	loadli.w r1,  -84(r30)                  # 4-byte Folded Reload
	add.s r6, r5, r1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[7:8], r11
	.loc	1 105 7 is_stmt 1               # parallel-rne.mlir:105:7
	storeli.w r11, -72(r30)                 # 4-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sll.d r[7:8], r[7:8], r15
	.loc	1 105 7                         # parallel-rne.mlir:105:7
	sll.d r[27:28], r[7:8], r16
	addli r8, zero, 6
	bneq r9, r8, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[1:2], 8(r30)
	addli r11, zero, 7
	addli r7, zero, 4
	xwait r11, 0
	add.ul r[2:3], r[1:2], r[27:28]
	blt.s r7, r12, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_7 Depth=1
	lock zero, r15
	addli r1, zero, 3
	addli r12, zero, 128
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r11, 10
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
	dma_cfg r6, zero, r1, 3
	dma_cfg r12, zero, r16, 4
	dma_cfg r12, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
.LBB0_18:                               # %.thread15
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r1, 7
	storeli.w zero, -60(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	.loc	1 105 7                         # parallel-rne.mlir:105:7
	lock zero, r7
	ori r1, r1, 2112
	dma_cfg r16, r16, zero, 0
	dma_cfg zero, r3, zero, 2
	add.s r1, r5, r1
	addli r5, zero, 64
	dma_cfg r1, r2, r5, 3
	addli r2, zero, 128
	addli r1, zero, 256
	dma_cfg r2, r5, r16, 4
	dma_cfg r2, r1, r5, 5
	addli r1, zero, 3
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	lock zero, r15
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r11, 10
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
	dma_cfg r6, zero, r5, 3
	dma_cfg r2, zero, r16, 4
	dma_cfg r2, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	xsignal r8, 0
	.loc	1 106 7 is_stmt 1               # parallel-rne.mlir:106:7
	j .LBB0_26
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 4
	addli r7, zero, 7
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	beq r9, r3, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r9, r7, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 9
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	xwait r8, 0
	addli r2, zero, 64
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 32
	ds_cfg r10, zero, 0
	ds_cfg r1, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r1, zero, 13
	addli r1, zero, 1
	shuffle_coa r5, r6, r2, 2
	unlock zero
	xsignal r7, 0
	storeli.w r1, -60(r30)                  # 4-byte Folded Spill
	addli r1, zero, 8
	xsignal r1, 0
	.loc	1 107 7 is_stmt 1               # parallel-rne.mlir:107:7
	j .LBB0_26
.LBB0_22:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 8
	storeli.w zero, -60(r30)                # 4-byte Folded Spill
	xwait r3, 0
	addli r8, zero, 1
	addli r6, zero, 16
	addli r7, zero, 64
	xwait r1, 0
	addli r1, zero, 11
	xwait r1, 0
	addli r1, zero, 32
	lock zero, r8
	mm_cfg r1, r7, r6, 0
	addli r1, zero, 1
	mm_cfg r3, r8, r8, 2
	mm r17, r2, r5, 8
	storeli.w r1, -40(r30)                  # 4-byte Folded Spill
	addli r1, zero, 9
	unlock r8
	xsignal r15, 0
	xsignal r1, 0
	addli r1, zero, 10
	xsignal r1, 0
	j .LBB0_26
.LBB0_23:                               # %.thread16
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 114 7                         # parallel-rne.mlir:114:7
	addli r1, zero, 3
	bneq r9, r1, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	storeli.w zero, -60(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	xwait r1, 0
	.loc	1 115 7                         # parallel-rne.mlir:115:7
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -60(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
.LBB0_26:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 112 13 is_stmt 1              # parallel-rne.mlir:112:13
	loadli.w r1,  -88(r30)                  # 4-byte Folded Reload
	.loc	1 117 7                         # parallel-rne.mlir:117:7
	xfence
	.loc	1 118 7                         # parallel-rne.mlir:118:7
	mfence { lm, sm, gm }
	.loc	1 112 13                        # parallel-rne.mlir:112:13
	add.s r16, r17, r1
	.loc	1 119 7                         # parallel-rne.mlir:119:7
	addli r1, zero, 255
	csr_set csr5, r1
	lui r1, 7
	sync_core
	store.d r[23:24], -16(r30)              # 8-byte Folded Spill
	store.d r[27:28], -8(r30)               # 8-byte Folded Spill
	ori r13, r1, 4095
	addli r1, zero, 32
	zext_int2long r[11:12], r1
	addli r1, zero, 31
	zext_int2long r[14:15], r1
	.loc	1 120 7                         # parallel-rne.mlir:120:7
	bneq r9, zero, .LBB0_58
# %bb.27:                               #   in Loop: Header=BB0_7 Depth=1
	xfence
	addli r2, zero, 1
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	j .LBB0_29
.LBB0_28:                               # %middle.block98
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 128 9                         # parallel-rne.mlir:128:9
	loadli.w r1,  -20(r30)                  # 4-byte Folded Reload
	addli.d r[6:7], r[11:12], 0
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_57
.LBB0_29:                               # %vector.memcheck90
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_38 Depth 3
                                        #       Child Loop BB0_32 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -20(r30)                  # 4-byte Folded Spill
	.loc	1 129 11 is_stmt 1              # parallel-rne.mlir:129:11
	bneq r16, r17, .LBB0_36
# %bb.30:                               # %scalar.ph92.preheader
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_32
.LBB0_31:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 129 11                        # parallel-rne.mlir:129:11
	setlt.ul r2, r[8:9], r[14:15]
	.loc	1 144 13 is_stmt 1              # parallel-rne.mlir:144:13
	add.s r1, r16, r1
	.loc	1 129 11                        # parallel-rne.mlir:129:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	stores.w r3, 0(r1)
	.loc	1 129 11                        # parallel-rne.mlir:129:11
	beq r2, zero, .LBB0_28
.LBB0_32:                               # %scalar.ph92
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 130 19                        # parallel-rne.mlir:130:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r1, r1, 2
	add.s r2, r17, r1
	loads.w r2, 0(r2)
	.loc	1 132 19                        # parallel-rne.mlir:132:19
	and r5, r2, r25
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	setlt.u r3, r18, r5
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	bneq r3, zero, .LBB0_34
# %bb.33:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r3, r2, 0
	.loc	1 141 19 is_stmt 1              # parallel-rne.mlir:141:19
	setlt.u r5, r26, r5
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	bneq r5, zero, .LBB0_31
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r3, 1024
	or r3, r2, r3
	.loc	1 141 19 is_stmt 1              # parallel-rne.mlir:141:19
	setlt.u r5, r26, r5
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	bneq r5, zero, .LBB0_31
.LBB0_35:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r13
	and r3, r2, r4
	j .LBB0_31
.LBB0_36:                               # %vector.body94.preheader
                                        #   in Loop: Header=BB0_29 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_38
.LBB0_37:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 129 11 is_stmt 1              # parallel-rne.mlir:129:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	add.s r3, r16, r22
	.loc	1 129 11                        # parallel-rne.mlir:129:11
	seteq.d r1, r[27:28], r[11:12]
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	stores.w r5, 12(r3)
	stores.w r10, 8(r3)
	stores.w r20, 4(r3)
	stores.w r2, 0(r3)
	.loc	1 129 11                        # parallel-rne.mlir:129:11
	bneq r1, zero, .LBB0_28
.LBB0_38:                               # %vector.body94
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 130 19                        # parallel-rne.mlir:130:19
	add.ul r[1:2], r[27:28], r[6:7]
	slli r22, r1, 2
	add.s r3, r17, r22
	loads.w r19, 12(r3)
	.loc	1 132 19                        # parallel-rne.mlir:132:19
	and r8, r19, r25
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	setlt.u r1, r18, r8
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	bneq r1, zero, .LBB0_40
# %bb.39:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r19, 0
	j .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_38 Depth=3
	lui r1, 1024
	or r5, r19, r1
.LBB0_41:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	loads.w r9, 8(r3)
	and r23, r9, r25
	setlt.u r1, r18, r23
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	bneq r1, zero, .LBB0_43
# %bb.42:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
	j .LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_38 Depth=3
	lui r1, 1024
	or r10, r9, r1
.LBB0_44:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	loads.w r24, 4(r3)
	and r1, r24, r25
	setlt.u r2, r18, r1
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	bneq r2, zero, .LBB0_46
# %bb.45:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r24, 0
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_38 Depth=3
	lui r2, 1024
	or r20, r24, r2
.LBB0_47:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	loads.w r3, 0(r3)
	and r21, r3, r25
	setlt.u r2, r18, r21
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	bneq r2, zero, .LBB0_49
# %bb.48:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r3, 0
	.loc	1 141 19 is_stmt 1              # parallel-rne.mlir:141:19
	setlt.u r21, r26, r21
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	beq r21, zero, .LBB0_50
	j .LBB0_51
.LBB0_49:                               #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r3, r2
	.loc	1 141 19 is_stmt 1              # parallel-rne.mlir:141:19
	setlt.u r21, r26, r21
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	bneq r21, zero, .LBB0_51
.LBB0_50:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r13
	and r2, r2, r4
.LBB0_51:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	setlt.u r1, r26, r1
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	beq r1, zero, .LBB0_56
# %bb.52:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r26, r23
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	bneq r1, zero, .LBB0_54
.LBB0_53:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r13
	and r10, r1, r4
.LBB0_54:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	setlt.u r1, r26, r8
	load.d r[23:24], -16(r30)               # 8-byte Folded Reload
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	bneq r1, zero, .LBB0_37
# %bb.55:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r13
	and r5, r1, r4
	j .LBB0_37
.LBB0_56:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	srli r1, r24, 16
	andi r1, r1, 1
	add.s r1, r24, r1
	add.s r1, r1, r13
	and r20, r1, r4
	setlt.u r1, r26, r23
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	beq r1, zero, .LBB0_53
	j .LBB0_54
.LBB0_57:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 120 7 is_stmt 1               # parallel-rne.mlir:120:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r9
	load.d r[27:28], -8(r30)                # 8-byte Folded Reload
.LBB0_58:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 96
	zext_int2long r[1:2], r1
	.loc	1 149 7 is_stmt 1               # parallel-rne.mlir:149:7
	store.d r[1:2], -32(r30)                # 8-byte Folded Spill
	addli r1, zero, 1
	beq r9, r1, .LBB0_64
# %bb.59:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	loadli.w r1,  -64(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_95
.LBB0_60:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 207 7                         # parallel-rne.mlir:207:7
	addli r1, zero, 3
	beq r9, r1, .LBB0_126
.LBB0_61:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 236 7                         # parallel-rne.mlir:236:7
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_157
.LBB0_62:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 265 7                         # parallel-rne.mlir:265:7
	addli r1, zero, 5
	beq r9, r1, .LBB0_188
.LBB0_63:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 294 7                         # parallel-rne.mlir:294:7
	addli r1, zero, 6
	beq r9, r1, .LBB0_219
	j .LBB0_250
.LBB0_64:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 64
	.loc	1 149 7 is_stmt 1               # parallel-rne.mlir:149:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_66
.LBB0_65:                               # %middle.block89
                                        #   in Loop: Header=BB0_66 Depth=2
	.loc	1 157 9                         # parallel-rne.mlir:157:9
	loadli.w r1,  -20(r30)                  # 4-byte Folded Reload
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_94
.LBB0_66:                               # %vector.memcheck81
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_75 Depth 3
                                        #       Child Loop BB0_69 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -20(r30)                  # 4-byte Folded Spill
	.loc	1 158 11 is_stmt 1              # parallel-rne.mlir:158:11
	bneq r16, r17, .LBB0_73
# %bb.67:                               # %scalar.ph83.preheader
                                        #   in Loop: Header=BB0_66 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_69
.LBB0_68:                               # %scalar.ph83
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	setlt.ul r2, r[8:9], r[14:15]
	.loc	1 173 13 is_stmt 1              # parallel-rne.mlir:173:13
	add.s r1, r16, r1
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 173 13                        # parallel-rne.mlir:173:13
	stores.w r3, 0(r1)
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	beq r2, zero, .LBB0_65
.LBB0_69:                               # %scalar.ph83
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r1, r1, 2
	add.s r2, r17, r1
	loads.w r2, 0(r2)
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	and r5, r2, r25
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	setlt.u r3, r18, r5
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r3, zero, .LBB0_71
# %bb.70:                               # %scalar.ph83
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r3, r2, 0
	.loc	1 170 19 is_stmt 1              # parallel-rne.mlir:170:19
	setlt.u r5, r26, r5
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r5, zero, .LBB0_68
	j .LBB0_72
.LBB0_71:                               #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r3, 1024
	or r3, r2, r3
	.loc	1 170 19 is_stmt 1              # parallel-rne.mlir:170:19
	setlt.u r5, r26, r5
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r5, zero, .LBB0_68
.LBB0_72:                               # %scalar.ph83
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r13
	and r3, r2, r4
	j .LBB0_68
.LBB0_73:                               # %vector.body85.preheader
                                        #   in Loop: Header=BB0_66 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_75
.LBB0_74:                               # %vector.body85
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 158 11 is_stmt 1              # parallel-rne.mlir:158:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 173 13                        # parallel-rne.mlir:173:13
	add.s r3, r16, r22
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	seteq.d r1, r[23:24], r[11:12]
	.loc	1 173 13                        # parallel-rne.mlir:173:13
	stores.w r5, 12(r3)
	stores.w r10, 8(r3)
	stores.w r20, 4(r3)
	stores.w r2, 0(r3)
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	bneq r1, zero, .LBB0_65
.LBB0_75:                               # %vector.body85
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	add.ul r[1:2], r[23:24], r[6:7]
	slli r22, r1, 2
	add.s r3, r17, r22
	loads.w r19, 12(r3)
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	and r8, r19, r25
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	setlt.u r1, r18, r8
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r1, zero, .LBB0_77
# %bb.76:                               # %vector.body85
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r19, 0
	j .LBB0_78
.LBB0_77:                               #   in Loop: Header=BB0_75 Depth=3
	lui r1, 1024
	or r5, r19, r1
.LBB0_78:                               # %vector.body85
                                        #   in Loop: Header=BB0_75 Depth=3
	loads.w r9, 8(r3)
	and r27, r9, r25
	setlt.u r1, r18, r27
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r1, zero, .LBB0_80
# %bb.79:                               # %vector.body85
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
	j .LBB0_81
.LBB0_80:                               #   in Loop: Header=BB0_75 Depth=3
	lui r1, 1024
	or r10, r9, r1
.LBB0_81:                               # %vector.body85
                                        #   in Loop: Header=BB0_75 Depth=3
	loads.w r28, 4(r3)
	and r1, r28, r25
	setlt.u r2, r18, r1
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r2, zero, .LBB0_83
# %bb.82:                               # %vector.body85
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r28, 0
	j .LBB0_84
.LBB0_83:                               #   in Loop: Header=BB0_75 Depth=3
	lui r2, 1024
	or r20, r28, r2
.LBB0_84:                               # %vector.body85
                                        #   in Loop: Header=BB0_75 Depth=3
	loads.w r3, 0(r3)
	and r21, r3, r25
	setlt.u r2, r18, r21
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r2, zero, .LBB0_92
# %bb.85:                               # %vector.body85
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r3, 0
	.loc	1 170 19 is_stmt 1              # parallel-rne.mlir:170:19
	setlt.u r21, r26, r21
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r21, zero, .LBB0_87
.LBB0_86:                               # %vector.body85
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r13
	and r2, r2, r4
.LBB0_87:                               # %vector.body85
                                        #   in Loop: Header=BB0_75 Depth=3
	setlt.u r1, r26, r1
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	beq r1, zero, .LBB0_93
# %bb.88:                               # %vector.body85
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r26, r27
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r1, zero, .LBB0_90
.LBB0_89:                               # %vector.body85
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r13
	and r10, r1, r4
.LBB0_90:                               # %vector.body85
                                        #   in Loop: Header=BB0_75 Depth=3
	setlt.u r1, r26, r8
	load.d r[27:28], -8(r30)                # 8-byte Folded Reload
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r1, zero, .LBB0_74
# %bb.91:                               # %vector.body85
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r13
	and r5, r1, r4
	j .LBB0_74
.LBB0_92:                               #   in Loop: Header=BB0_75 Depth=3
	lui r2, 1024
	or r2, r3, r2
	.loc	1 170 19 is_stmt 1              # parallel-rne.mlir:170:19
	setlt.u r21, r26, r21
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	beq r21, zero, .LBB0_86
	j .LBB0_87
.LBB0_93:                               # %vector.body85
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r13
	and r20, r1, r4
	setlt.u r1, r26, r27
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	beq r1, zero, .LBB0_89
	j .LBB0_90
.LBB0_94:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 149 7 is_stmt 1               # parallel-rne.mlir:149:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r9
	load.d r[23:24], -16(r30)               # 8-byte Folded Reload
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	loadli.w r1,  -64(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_60
.LBB0_95:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 128
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_97
.LBB0_96:                               # %middle.block80
                                        #   in Loop: Header=BB0_97 Depth=2
	.loc	1 186 9 is_stmt 1               # parallel-rne.mlir:186:9
	loadli.w r1,  -20(r30)                  # 4-byte Folded Reload
	addli r2, zero, 160
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_125
.LBB0_97:                               # %vector.memcheck72
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_106 Depth 3
                                        #       Child Loop BB0_100 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -20(r30)                  # 4-byte Folded Spill
	.loc	1 187 11 is_stmt 1              # parallel-rne.mlir:187:11
	bneq r16, r17, .LBB0_104
# %bb.98:                               # %scalar.ph74.preheader
                                        #   in Loop: Header=BB0_97 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_100
.LBB0_99:                               # %scalar.ph74
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	setlt.ul r2, r[8:9], r[14:15]
	.loc	1 202 13 is_stmt 1              # parallel-rne.mlir:202:13
	add.s r1, r16, r1
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 202 13                        # parallel-rne.mlir:202:13
	stores.w r3, 0(r1)
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	beq r2, zero, .LBB0_96
.LBB0_100:                              # %scalar.ph74
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_97 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r1, r1, 2
	add.s r2, r17, r1
	loads.w r2, 0(r2)
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	and r5, r2, r25
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	setlt.u r3, r18, r5
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r3, zero, .LBB0_102
# %bb.101:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r3, r2, 0
	.loc	1 199 19 is_stmt 1              # parallel-rne.mlir:199:19
	setlt.u r5, r26, r5
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r5, zero, .LBB0_99
	j .LBB0_103
.LBB0_102:                              #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r3, 1024
	or r3, r2, r3
	.loc	1 199 19 is_stmt 1              # parallel-rne.mlir:199:19
	setlt.u r5, r26, r5
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r5, zero, .LBB0_99
.LBB0_103:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r13
	and r3, r2, r4
	j .LBB0_99
.LBB0_104:                              # %vector.body76.preheader
                                        #   in Loop: Header=BB0_97 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_106
.LBB0_105:                              # %vector.body76
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 187 11 is_stmt 1              # parallel-rne.mlir:187:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 202 13                        # parallel-rne.mlir:202:13
	add.s r3, r16, r22
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	seteq.d r1, r[23:24], r[11:12]
	.loc	1 202 13                        # parallel-rne.mlir:202:13
	stores.w r5, 12(r3)
	stores.w r10, 8(r3)
	stores.w r20, 4(r3)
	stores.w r2, 0(r3)
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	bneq r1, zero, .LBB0_96
.LBB0_106:                              # %vector.body76
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_97 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	add.ul r[1:2], r[23:24], r[6:7]
	slli r22, r1, 2
	add.s r3, r17, r22
	loads.w r19, 12(r3)
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	and r8, r19, r25
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	setlt.u r1, r18, r8
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r1, zero, .LBB0_108
# %bb.107:                              # %vector.body76
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r19, 0
	j .LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_106 Depth=3
	lui r1, 1024
	or r5, r19, r1
.LBB0_109:                              # %vector.body76
                                        #   in Loop: Header=BB0_106 Depth=3
	loads.w r9, 8(r3)
	and r27, r9, r25
	setlt.u r1, r18, r27
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r1, zero, .LBB0_111
# %bb.110:                              # %vector.body76
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
	j .LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_106 Depth=3
	lui r1, 1024
	or r10, r9, r1
.LBB0_112:                              # %vector.body76
                                        #   in Loop: Header=BB0_106 Depth=3
	loads.w r28, 4(r3)
	and r1, r28, r25
	setlt.u r2, r18, r1
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r2, zero, .LBB0_114
# %bb.113:                              # %vector.body76
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r28, 0
	j .LBB0_115
.LBB0_114:                              #   in Loop: Header=BB0_106 Depth=3
	lui r2, 1024
	or r20, r28, r2
.LBB0_115:                              # %vector.body76
                                        #   in Loop: Header=BB0_106 Depth=3
	loads.w r3, 0(r3)
	and r21, r3, r25
	setlt.u r2, r18, r21
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r2, zero, .LBB0_123
# %bb.116:                              # %vector.body76
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r3, 0
	.loc	1 199 19 is_stmt 1              # parallel-rne.mlir:199:19
	setlt.u r21, r26, r21
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r21, zero, .LBB0_118
.LBB0_117:                              # %vector.body76
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r13
	and r2, r2, r4
.LBB0_118:                              # %vector.body76
                                        #   in Loop: Header=BB0_106 Depth=3
	setlt.u r1, r26, r1
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	beq r1, zero, .LBB0_124
# %bb.119:                              # %vector.body76
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r26, r27
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r1, zero, .LBB0_121
.LBB0_120:                              # %vector.body76
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r13
	and r10, r1, r4
.LBB0_121:                              # %vector.body76
                                        #   in Loop: Header=BB0_106 Depth=3
	setlt.u r1, r26, r8
	load.d r[27:28], -8(r30)                # 8-byte Folded Reload
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r1, zero, .LBB0_105
# %bb.122:                              # %vector.body76
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r13
	and r5, r1, r4
	j .LBB0_105
.LBB0_123:                              #   in Loop: Header=BB0_106 Depth=3
	lui r2, 1024
	or r2, r3, r2
	.loc	1 199 19 is_stmt 1              # parallel-rne.mlir:199:19
	setlt.u r21, r26, r21
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	beq r21, zero, .LBB0_117
	j .LBB0_118
.LBB0_124:                              # %vector.body76
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r13
	and r20, r1, r4
	setlt.u r1, r26, r27
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	beq r1, zero, .LBB0_120
	j .LBB0_121
.LBB0_125:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 178 7 is_stmt 1               # parallel-rne.mlir:178:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r9
	load.d r[23:24], -16(r30)               # 8-byte Folded Reload
	.loc	1 207 7                         # parallel-rne.mlir:207:7
	addli r1, zero, 3
	bneq r9, r1, .LBB0_61
.LBB0_126:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 192
	.loc	1 207 7                         # parallel-rne.mlir:207:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_128
.LBB0_127:                              # %middle.block71
                                        #   in Loop: Header=BB0_128 Depth=2
	.loc	1 215 9 is_stmt 1               # parallel-rne.mlir:215:9
	loadli.w r1,  -20(r30)                  # 4-byte Folded Reload
	addli r2, zero, 224
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_156
.LBB0_128:                              # %vector.memcheck63
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_137 Depth 3
                                        #       Child Loop BB0_131 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -20(r30)                  # 4-byte Folded Spill
	.loc	1 216 11 is_stmt 1              # parallel-rne.mlir:216:11
	bneq r16, r17, .LBB0_135
# %bb.129:                              # %scalar.ph65.preheader
                                        #   in Loop: Header=BB0_128 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_131
.LBB0_130:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 216 11                        # parallel-rne.mlir:216:11
	setlt.ul r2, r[8:9], r[14:15]
	.loc	1 231 13 is_stmt 1              # parallel-rne.mlir:231:13
	add.s r1, r16, r1
	.loc	1 216 11                        # parallel-rne.mlir:216:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 231 13                        # parallel-rne.mlir:231:13
	stores.w r3, 0(r1)
	.loc	1 216 11                        # parallel-rne.mlir:216:11
	beq r2, zero, .LBB0_127
.LBB0_131:                              # %scalar.ph65
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r1, r1, 2
	add.s r2, r17, r1
	loads.w r2, 0(r2)
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	and r5, r2, r25
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	setlt.u r3, r18, r5
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r3, zero, .LBB0_133
# %bb.132:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r3, r2, 0
	.loc	1 228 19 is_stmt 1              # parallel-rne.mlir:228:19
	setlt.u r5, r26, r5
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r5, zero, .LBB0_130
	j .LBB0_134
.LBB0_133:                              #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r3, 1024
	or r3, r2, r3
	.loc	1 228 19 is_stmt 1              # parallel-rne.mlir:228:19
	setlt.u r5, r26, r5
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r5, zero, .LBB0_130
.LBB0_134:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r13
	and r3, r2, r4
	j .LBB0_130
.LBB0_135:                              # %vector.body67.preheader
                                        #   in Loop: Header=BB0_128 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_137
.LBB0_136:                              # %vector.body67
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 216 11 is_stmt 1              # parallel-rne.mlir:216:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 231 13                        # parallel-rne.mlir:231:13
	add.s r3, r16, r22
	.loc	1 216 11                        # parallel-rne.mlir:216:11
	seteq.d r1, r[23:24], r[11:12]
	.loc	1 231 13                        # parallel-rne.mlir:231:13
	stores.w r5, 12(r3)
	stores.w r10, 8(r3)
	stores.w r20, 4(r3)
	stores.w r2, 0(r3)
	.loc	1 216 11                        # parallel-rne.mlir:216:11
	bneq r1, zero, .LBB0_127
.LBB0_137:                              # %vector.body67
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	add.ul r[1:2], r[23:24], r[6:7]
	slli r22, r1, 2
	add.s r3, r17, r22
	loads.w r19, 12(r3)
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	and r8, r19, r25
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	setlt.u r1, r18, r8
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r1, zero, .LBB0_139
# %bb.138:                              # %vector.body67
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r19, 0
	j .LBB0_140
.LBB0_139:                              #   in Loop: Header=BB0_137 Depth=3
	lui r1, 1024
	or r5, r19, r1
.LBB0_140:                              # %vector.body67
                                        #   in Loop: Header=BB0_137 Depth=3
	loads.w r9, 8(r3)
	and r27, r9, r25
	setlt.u r1, r18, r27
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r1, zero, .LBB0_142
# %bb.141:                              # %vector.body67
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
	j .LBB0_143
.LBB0_142:                              #   in Loop: Header=BB0_137 Depth=3
	lui r1, 1024
	or r10, r9, r1
.LBB0_143:                              # %vector.body67
                                        #   in Loop: Header=BB0_137 Depth=3
	loads.w r28, 4(r3)
	and r1, r28, r25
	setlt.u r2, r18, r1
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r2, zero, .LBB0_145
# %bb.144:                              # %vector.body67
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r28, 0
	j .LBB0_146
.LBB0_145:                              #   in Loop: Header=BB0_137 Depth=3
	lui r2, 1024
	or r20, r28, r2
.LBB0_146:                              # %vector.body67
                                        #   in Loop: Header=BB0_137 Depth=3
	loads.w r3, 0(r3)
	and r21, r3, r25
	setlt.u r2, r18, r21
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r2, zero, .LBB0_154
# %bb.147:                              # %vector.body67
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r3, 0
	.loc	1 228 19 is_stmt 1              # parallel-rne.mlir:228:19
	setlt.u r21, r26, r21
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r21, zero, .LBB0_149
.LBB0_148:                              # %vector.body67
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r13
	and r2, r2, r4
.LBB0_149:                              # %vector.body67
                                        #   in Loop: Header=BB0_137 Depth=3
	setlt.u r1, r26, r1
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	beq r1, zero, .LBB0_155
# %bb.150:                              # %vector.body67
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r26, r27
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r1, zero, .LBB0_152
.LBB0_151:                              # %vector.body67
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r13
	and r10, r1, r4
.LBB0_152:                              # %vector.body67
                                        #   in Loop: Header=BB0_137 Depth=3
	setlt.u r1, r26, r8
	load.d r[27:28], -8(r30)                # 8-byte Folded Reload
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r1, zero, .LBB0_136
# %bb.153:                              # %vector.body67
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r13
	and r5, r1, r4
	j .LBB0_136
.LBB0_154:                              #   in Loop: Header=BB0_137 Depth=3
	lui r2, 1024
	or r2, r3, r2
	.loc	1 228 19 is_stmt 1              # parallel-rne.mlir:228:19
	setlt.u r21, r26, r21
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	beq r21, zero, .LBB0_148
	j .LBB0_149
.LBB0_155:                              # %vector.body67
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r13
	and r20, r1, r4
	setlt.u r1, r26, r27
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	beq r1, zero, .LBB0_151
	j .LBB0_152
.LBB0_156:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 207 7 is_stmt 1               # parallel-rne.mlir:207:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r9
	load.d r[23:24], -16(r30)               # 8-byte Folded Reload
	.loc	1 236 7                         # parallel-rne.mlir:236:7
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_62
.LBB0_157:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 256
	.loc	1 236 7                         # parallel-rne.mlir:236:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_159
.LBB0_158:                              # %middle.block62
                                        #   in Loop: Header=BB0_159 Depth=2
	.loc	1 244 9 is_stmt 1               # parallel-rne.mlir:244:9
	loadli.w r1,  -20(r30)                  # 4-byte Folded Reload
	addli r2, zero, 288
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_187
.LBB0_159:                              # %vector.memcheck54
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_168 Depth 3
                                        #       Child Loop BB0_162 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -20(r30)                  # 4-byte Folded Spill
	.loc	1 245 11 is_stmt 1              # parallel-rne.mlir:245:11
	bneq r16, r17, .LBB0_166
# %bb.160:                              # %scalar.ph56.preheader
                                        #   in Loop: Header=BB0_159 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_162
.LBB0_161:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 245 11                        # parallel-rne.mlir:245:11
	setlt.ul r1, r[2:3], r[14:15]
	.loc	1 260 13 is_stmt 1              # parallel-rne.mlir:260:13
	add.s r5, r16, r5
	.loc	1 245 11                        # parallel-rne.mlir:245:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 260 13                        # parallel-rne.mlir:260:13
	stores.w r8, 0(r5)
	.loc	1 245 11                        # parallel-rne.mlir:245:11
	beq r1, zero, .LBB0_158
.LBB0_162:                              # %scalar.ph56
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_159 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	add.ul r[8:9], r[2:3], r[6:7]
	slli r5, r8, 2
	add.s r1, r17, r5
	loads.w r1, 0(r1)
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	and r9, r1, r25
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	setlt.u r8, r18, r9
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r8, zero, .LBB0_164
# %bb.163:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r1, 0
	.loc	1 257 19 is_stmt 1              # parallel-rne.mlir:257:19
	setlt.u r9, r26, r9
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r9, zero, .LBB0_161
	j .LBB0_165
.LBB0_164:                              #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r1, r8
	.loc	1 257 19 is_stmt 1              # parallel-rne.mlir:257:19
	setlt.u r9, r26, r9
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r9, zero, .LBB0_161
.LBB0_165:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r1, 16
	andi r8, r8, 1
	add.s r1, r1, r8
	add.s r1, r1, r13
	and r8, r1, r4
	j .LBB0_161
.LBB0_166:                              # %vector.body58.preheader
                                        #   in Loop: Header=BB0_159 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_168
.LBB0_167:                              # %vector.body58
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 245 11 is_stmt 1              # parallel-rne.mlir:245:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 260 13                        # parallel-rne.mlir:260:13
	add.s r2, r16, r2
	.loc	1 245 11                        # parallel-rne.mlir:245:11
	seteq.d r3, r[23:24], r[11:12]
	.loc	1 260 13                        # parallel-rne.mlir:260:13
	stores.w r5, 12(r2)
	stores.w r10, 8(r2)
	stores.w r20, 4(r2)
	stores.w r1, 0(r2)
	.loc	1 245 11                        # parallel-rne.mlir:245:11
	bneq r3, zero, .LBB0_158
.LBB0_168:                              # %vector.body58
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_159 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	add.ul r[1:2], r[23:24], r[6:7]
	slli r2, r1, 2
	add.s r3, r17, r2
	loads.w r19, 12(r3)
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	and r8, r19, r25
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	setlt.u r1, r18, r8
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r1, zero, .LBB0_170
# %bb.169:                              # %vector.body58
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r19, 0
	j .LBB0_171
.LBB0_170:                              #   in Loop: Header=BB0_168 Depth=3
	lui r1, 1024
	or r5, r19, r1
.LBB0_171:                              # %vector.body58
                                        #   in Loop: Header=BB0_168 Depth=3
	loads.w r9, 8(r3)
	and r22, r9, r25
	setlt.u r1, r18, r22
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r1, zero, .LBB0_173
# %bb.172:                              # %vector.body58
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
	j .LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_168 Depth=3
	lui r1, 1024
	or r10, r9, r1
.LBB0_174:                              # %vector.body58
                                        #   in Loop: Header=BB0_168 Depth=3
	loads.w r27, 4(r3)
	and r28, r27, r25
	setlt.u r1, r18, r28
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r1, zero, .LBB0_176
# %bb.175:                              # %vector.body58
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r27, 0
	j .LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_168 Depth=3
	lui r1, 1024
	or r20, r27, r1
.LBB0_177:                              # %vector.body58
                                        #   in Loop: Header=BB0_168 Depth=3
	loads.w r3, 0(r3)
	and r21, r3, r25
	setlt.u r1, r18, r21
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r1, zero, .LBB0_185
# %bb.178:                              # %vector.body58
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r3, 0
	.loc	1 257 19 is_stmt 1              # parallel-rne.mlir:257:19
	setlt.u r21, r26, r21
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r21, zero, .LBB0_180
.LBB0_179:                              # %vector.body58
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r13
	and r1, r1, r4
.LBB0_180:                              # %vector.body58
                                        #   in Loop: Header=BB0_168 Depth=3
	setlt.u r3, r26, r28
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	beq r3, zero, .LBB0_186
# %bb.181:                              # %vector.body58
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r26, r22
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r3, zero, .LBB0_183
.LBB0_182:                              # %vector.body58
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r9, 16
	andi r3, r3, 1
	add.s r3, r9, r3
	add.s r3, r3, r13
	and r10, r3, r4
.LBB0_183:                              # %vector.body58
                                        #   in Loop: Header=BB0_168 Depth=3
	setlt.u r3, r26, r8
	load.d r[27:28], -8(r30)                # 8-byte Folded Reload
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r3, zero, .LBB0_167
# %bb.184:                              # %vector.body58
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r13
	and r5, r3, r4
	j .LBB0_167
.LBB0_185:                              #   in Loop: Header=BB0_168 Depth=3
	lui r1, 1024
	or r1, r3, r1
	.loc	1 257 19 is_stmt 1              # parallel-rne.mlir:257:19
	setlt.u r21, r26, r21
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	beq r21, zero, .LBB0_179
	j .LBB0_180
.LBB0_186:                              # %vector.body58
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r27, 16
	andi r3, r3, 1
	add.s r3, r27, r3
	add.s r3, r3, r13
	and r20, r3, r4
	setlt.u r3, r26, r22
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	beq r3, zero, .LBB0_182
	j .LBB0_183
.LBB0_187:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 236 7 is_stmt 1               # parallel-rne.mlir:236:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r9
	load.d r[23:24], -16(r30)               # 8-byte Folded Reload
	.loc	1 265 7                         # parallel-rne.mlir:265:7
	addli r1, zero, 5
	bneq r9, r1, .LBB0_63
.LBB0_188:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 320
	.loc	1 265 7                         # parallel-rne.mlir:265:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_190
.LBB0_189:                              # %middle.block53
                                        #   in Loop: Header=BB0_190 Depth=2
	.loc	1 273 9 is_stmt 1               # parallel-rne.mlir:273:9
	loadli.w r1,  -20(r30)                  # 4-byte Folded Reload
	addli r2, zero, 352
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_218
.LBB0_190:                              # %vector.memcheck45
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_199 Depth 3
                                        #       Child Loop BB0_193 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -20(r30)                  # 4-byte Folded Spill
	.loc	1 274 11 is_stmt 1              # parallel-rne.mlir:274:11
	bneq r16, r17, .LBB0_197
# %bb.191:                              # %scalar.ph47.preheader
                                        #   in Loop: Header=BB0_190 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_193
.LBB0_192:                              # %scalar.ph47
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	setlt.ul r1, r[2:3], r[14:15]
	.loc	1 289 13 is_stmt 1              # parallel-rne.mlir:289:13
	add.s r5, r16, r5
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 289 13                        # parallel-rne.mlir:289:13
	stores.w r8, 0(r5)
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	beq r1, zero, .LBB0_189
.LBB0_193:                              # %scalar.ph47
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_190 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	add.ul r[8:9], r[2:3], r[6:7]
	slli r5, r8, 2
	add.s r1, r17, r5
	loads.w r1, 0(r1)
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	and r9, r1, r25
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	setlt.u r8, r18, r9
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r8, zero, .LBB0_195
# %bb.194:                              # %scalar.ph47
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r1, 0
	.loc	1 286 19 is_stmt 1              # parallel-rne.mlir:286:19
	setlt.u r9, r26, r9
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r9, zero, .LBB0_192
	j .LBB0_196
.LBB0_195:                              #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r1, r8
	.loc	1 286 19 is_stmt 1              # parallel-rne.mlir:286:19
	setlt.u r9, r26, r9
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r9, zero, .LBB0_192
.LBB0_196:                              # %scalar.ph47
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r1, 16
	andi r8, r8, 1
	add.s r1, r1, r8
	add.s r1, r1, r13
	and r8, r1, r4
	j .LBB0_192
.LBB0_197:                              # %vector.body49.preheader
                                        #   in Loop: Header=BB0_190 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_199
.LBB0_198:                              # %vector.body49
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 274 11 is_stmt 1              # parallel-rne.mlir:274:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 289 13                        # parallel-rne.mlir:289:13
	add.s r2, r16, r2
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	seteq.d r3, r[23:24], r[11:12]
	.loc	1 289 13                        # parallel-rne.mlir:289:13
	stores.w r5, 12(r2)
	stores.w r10, 8(r2)
	stores.w r20, 4(r2)
	stores.w r1, 0(r2)
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	bneq r3, zero, .LBB0_189
.LBB0_199:                              # %vector.body49
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_190 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	add.ul r[1:2], r[23:24], r[6:7]
	slli r2, r1, 2
	add.s r3, r17, r2
	loads.w r19, 12(r3)
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	and r8, r19, r25
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	setlt.u r1, r18, r8
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r1, zero, .LBB0_201
# %bb.200:                              # %vector.body49
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r19, 0
	j .LBB0_202
.LBB0_201:                              #   in Loop: Header=BB0_199 Depth=3
	lui r1, 1024
	or r5, r19, r1
.LBB0_202:                              # %vector.body49
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r9, 8(r3)
	and r22, r9, r25
	setlt.u r1, r18, r22
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r1, zero, .LBB0_204
# %bb.203:                              # %vector.body49
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
	j .LBB0_205
.LBB0_204:                              #   in Loop: Header=BB0_199 Depth=3
	lui r1, 1024
	or r10, r9, r1
.LBB0_205:                              # %vector.body49
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r27, 4(r3)
	and r28, r27, r25
	setlt.u r1, r18, r28
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r1, zero, .LBB0_207
# %bb.206:                              # %vector.body49
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r27, 0
	j .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_199 Depth=3
	lui r1, 1024
	or r20, r27, r1
.LBB0_208:                              # %vector.body49
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r3, 0(r3)
	and r21, r3, r25
	setlt.u r1, r18, r21
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r1, zero, .LBB0_216
# %bb.209:                              # %vector.body49
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r3, 0
	.loc	1 286 19 is_stmt 1              # parallel-rne.mlir:286:19
	setlt.u r21, r26, r21
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r21, zero, .LBB0_211
.LBB0_210:                              # %vector.body49
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r13
	and r1, r1, r4
.LBB0_211:                              # %vector.body49
                                        #   in Loop: Header=BB0_199 Depth=3
	setlt.u r3, r26, r28
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	beq r3, zero, .LBB0_217
# %bb.212:                              # %vector.body49
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r26, r22
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r3, zero, .LBB0_214
.LBB0_213:                              # %vector.body49
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r9, 16
	andi r3, r3, 1
	add.s r3, r9, r3
	add.s r3, r3, r13
	and r10, r3, r4
.LBB0_214:                              # %vector.body49
                                        #   in Loop: Header=BB0_199 Depth=3
	setlt.u r3, r26, r8
	load.d r[27:28], -8(r30)                # 8-byte Folded Reload
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r3, zero, .LBB0_198
# %bb.215:                              # %vector.body49
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r13
	and r5, r3, r4
	j .LBB0_198
.LBB0_216:                              #   in Loop: Header=BB0_199 Depth=3
	lui r1, 1024
	or r1, r3, r1
	.loc	1 286 19 is_stmt 1              # parallel-rne.mlir:286:19
	setlt.u r21, r26, r21
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	beq r21, zero, .LBB0_210
	j .LBB0_211
.LBB0_217:                              # %vector.body49
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r27, 16
	andi r3, r3, 1
	add.s r3, r27, r3
	add.s r3, r3, r13
	and r20, r3, r4
	setlt.u r3, r26, r22
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	beq r3, zero, .LBB0_213
	j .LBB0_214
.LBB0_218:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 265 7 is_stmt 1               # parallel-rne.mlir:265:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r9
	load.d r[23:24], -16(r30)               # 8-byte Folded Reload
	.loc	1 294 7                         # parallel-rne.mlir:294:7
	addli r1, zero, 6
	bneq r9, r1, .LBB0_250
.LBB0_219:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 384
	.loc	1 294 7                         # parallel-rne.mlir:294:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_221
.LBB0_220:                              # %middle.block44
                                        #   in Loop: Header=BB0_221 Depth=2
	.loc	1 302 9 is_stmt 1               # parallel-rne.mlir:302:9
	loadli.w r1,  -20(r30)                  # 4-byte Folded Reload
	addli r2, zero, 416
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_249
.LBB0_221:                              # %vector.memcheck36
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_230 Depth 3
                                        #       Child Loop BB0_224 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -20(r30)                  # 4-byte Folded Spill
	.loc	1 303 11 is_stmt 1              # parallel-rne.mlir:303:11
	bneq r16, r17, .LBB0_228
# %bb.222:                              # %scalar.ph38.preheader
                                        #   in Loop: Header=BB0_221 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_224
.LBB0_223:                              # %scalar.ph38
                                        #   in Loop: Header=BB0_224 Depth=3
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	setlt.ul r1, r[2:3], r[14:15]
	.loc	1 318 13 is_stmt 1              # parallel-rne.mlir:318:13
	add.s r5, r16, r5
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 318 13                        # parallel-rne.mlir:318:13
	stores.w r8, 0(r5)
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	beq r1, zero, .LBB0_220
.LBB0_224:                              # %scalar.ph38
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_221 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	add.ul r[8:9], r[2:3], r[6:7]
	slli r5, r8, 2
	add.s r1, r17, r5
	loads.w r1, 0(r1)
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	and r9, r1, r25
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	setlt.u r8, r18, r9
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r8, zero, .LBB0_226
# %bb.225:                              # %scalar.ph38
                                        #   in Loop: Header=BB0_224 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r1, 0
	.loc	1 315 19 is_stmt 1              # parallel-rne.mlir:315:19
	setlt.u r9, r26, r9
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r9, zero, .LBB0_223
	j .LBB0_227
.LBB0_226:                              #   in Loop: Header=BB0_224 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r1, r8
	.loc	1 315 19 is_stmt 1              # parallel-rne.mlir:315:19
	setlt.u r9, r26, r9
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r9, zero, .LBB0_223
.LBB0_227:                              # %scalar.ph38
                                        #   in Loop: Header=BB0_224 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r1, 16
	andi r8, r8, 1
	add.s r1, r1, r8
	add.s r1, r1, r13
	and r8, r1, r4
	j .LBB0_223
.LBB0_228:                              # %vector.body40.preheader
                                        #   in Loop: Header=BB0_221 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_230
.LBB0_229:                              # %vector.body40
                                        #   in Loop: Header=BB0_230 Depth=3
	.loc	1 303 11 is_stmt 1              # parallel-rne.mlir:303:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 318 13                        # parallel-rne.mlir:318:13
	add.s r2, r16, r2
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	seteq.d r3, r[23:24], r[11:12]
	.loc	1 318 13                        # parallel-rne.mlir:318:13
	stores.w r5, 12(r2)
	stores.w r10, 8(r2)
	stores.w r20, 4(r2)
	stores.w r1, 0(r2)
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	bneq r3, zero, .LBB0_220
.LBB0_230:                              # %vector.body40
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_221 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	add.ul r[1:2], r[23:24], r[6:7]
	slli r2, r1, 2
	add.s r3, r17, r2
	loads.w r19, 12(r3)
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	and r8, r19, r25
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	setlt.u r1, r18, r8
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r1, zero, .LBB0_232
# %bb.231:                              # %vector.body40
                                        #   in Loop: Header=BB0_230 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r19, 0
	j .LBB0_233
.LBB0_232:                              #   in Loop: Header=BB0_230 Depth=3
	lui r1, 1024
	or r5, r19, r1
.LBB0_233:                              # %vector.body40
                                        #   in Loop: Header=BB0_230 Depth=3
	loads.w r9, 8(r3)
	and r22, r9, r25
	setlt.u r1, r18, r22
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r1, zero, .LBB0_235
# %bb.234:                              # %vector.body40
                                        #   in Loop: Header=BB0_230 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
	j .LBB0_236
.LBB0_235:                              #   in Loop: Header=BB0_230 Depth=3
	lui r1, 1024
	or r10, r9, r1
.LBB0_236:                              # %vector.body40
                                        #   in Loop: Header=BB0_230 Depth=3
	loads.w r27, 4(r3)
	and r28, r27, r25
	setlt.u r1, r18, r28
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r1, zero, .LBB0_238
# %bb.237:                              # %vector.body40
                                        #   in Loop: Header=BB0_230 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r27, 0
	j .LBB0_239
.LBB0_238:                              #   in Loop: Header=BB0_230 Depth=3
	lui r1, 1024
	or r20, r27, r1
.LBB0_239:                              # %vector.body40
                                        #   in Loop: Header=BB0_230 Depth=3
	loads.w r3, 0(r3)
	and r21, r3, r25
	setlt.u r1, r18, r21
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r1, zero, .LBB0_247
# %bb.240:                              # %vector.body40
                                        #   in Loop: Header=BB0_230 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r3, 0
	.loc	1 315 19 is_stmt 1              # parallel-rne.mlir:315:19
	setlt.u r21, r26, r21
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r21, zero, .LBB0_242
.LBB0_241:                              # %vector.body40
                                        #   in Loop: Header=BB0_230 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r13
	and r1, r1, r4
.LBB0_242:                              # %vector.body40
                                        #   in Loop: Header=BB0_230 Depth=3
	setlt.u r3, r26, r28
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	beq r3, zero, .LBB0_248
# %bb.243:                              # %vector.body40
                                        #   in Loop: Header=BB0_230 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r26, r22
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r3, zero, .LBB0_245
.LBB0_244:                              # %vector.body40
                                        #   in Loop: Header=BB0_230 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r9, 16
	andi r3, r3, 1
	add.s r3, r9, r3
	add.s r3, r3, r13
	and r10, r3, r4
.LBB0_245:                              # %vector.body40
                                        #   in Loop: Header=BB0_230 Depth=3
	setlt.u r3, r26, r8
	load.d r[27:28], -8(r30)                # 8-byte Folded Reload
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r3, zero, .LBB0_229
# %bb.246:                              # %vector.body40
                                        #   in Loop: Header=BB0_230 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r13
	and r5, r3, r4
	j .LBB0_229
.LBB0_247:                              #   in Loop: Header=BB0_230 Depth=3
	lui r1, 1024
	or r1, r3, r1
	.loc	1 315 19 is_stmt 1              # parallel-rne.mlir:315:19
	setlt.u r21, r26, r21
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	beq r21, zero, .LBB0_241
	j .LBB0_242
.LBB0_248:                              # %vector.body40
                                        #   in Loop: Header=BB0_230 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r27, 16
	andi r3, r3, 1
	add.s r3, r27, r3
	add.s r3, r3, r13
	and r20, r3, r4
	setlt.u r3, r26, r22
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	beq r3, zero, .LBB0_244
	j .LBB0_245
.LBB0_249:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 294 7 is_stmt 1               # parallel-rne.mlir:294:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r9
	load.d r[23:24], -16(r30)               # 8-byte Folded Reload
.LBB0_250:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	zext_int2long r[1:2], zero
	.loc	1 323 7 is_stmt 1               # parallel-rne.mlir:323:7
	store.d r[1:2], -40(r30)                # 8-byte Folded Spill
	loadli.w r1,  -60(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_282
# %bb.251:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 448
	.loc	1 323 7                         # parallel-rne.mlir:323:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_253
.LBB0_252:                              # %middle.block
                                        #   in Loop: Header=BB0_253 Depth=2
	.loc	1 331 9 is_stmt 1               # parallel-rne.mlir:331:9
	loadli.w r1,  -20(r30)                  # 4-byte Folded Reload
	addli r2, zero, 480
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_281
.LBB0_253:                              # %vector.memcheck
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_262 Depth 3
                                        #       Child Loop BB0_256 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -20(r30)                  # 4-byte Folded Spill
	.loc	1 332 11 is_stmt 1              # parallel-rne.mlir:332:11
	bneq r16, r17, .LBB0_260
# %bb.254:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_253 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_256
.LBB0_255:                              # %scalar.ph
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	setlt.ul r8, r[1:2], r[14:15]
	.loc	1 347 13 is_stmt 1              # parallel-rne.mlir:347:13
	add.s r3, r16, r3
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 347 13                        # parallel-rne.mlir:347:13
	stores.w r5, 0(r3)
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	beq r8, zero, .LBB0_252
.LBB0_256:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_253 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r3, r8, 2
	add.s r5, r17, r3
	loads.w r8, 0(r5)
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	and r9, r8, r25
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	setlt.u r5, r18, r9
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r5, zero, .LBB0_258
# %bb.257:                              # %scalar.ph
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r8, 0
	.loc	1 344 19 is_stmt 1              # parallel-rne.mlir:344:19
	setlt.u r9, r26, r9
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r9, zero, .LBB0_255
	j .LBB0_259
.LBB0_258:                              #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r8, r5
	.loc	1 344 19 is_stmt 1              # parallel-rne.mlir:344:19
	setlt.u r9, r26, r9
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r9, zero, .LBB0_255
.LBB0_259:                              # %scalar.ph
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r8, 16
	andi r5, r5, 1
	add.s r5, r8, r5
	add.s r5, r5, r13
	and r5, r5, r4
	j .LBB0_255
.LBB0_260:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_253 Depth=2
	load.d r[1:2], -40(r30)                 # 8-byte Folded Reload
	j .LBB0_262
.LBB0_261:                              # %vector.body
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 332 11 is_stmt 1              # parallel-rne.mlir:332:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 347 13                        # parallel-rne.mlir:347:13
	add.s r5, r16, r5
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	seteq.d r9, r[1:2], r[11:12]
	.loc	1 347 13                        # parallel-rne.mlir:347:13
	stores.w r27, 0(r5)
	load.d r[27:28], -8(r30)                # 8-byte Folded Reload
	stores.w r8, 12(r5)
	stores.w r3, 8(r5)
	stores.w r22, 4(r5)
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	bneq r9, zero, .LBB0_252
.LBB0_262:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_253 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r5, r8, 2
	add.s r23, r17, r5
	loads.w r19, 12(r23)
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	and r10, r19, r25
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	setlt.u r3, r18, r10
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r3, zero, .LBB0_264
# %bb.263:                              # %vector.body
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r19, 0
	j .LBB0_265
.LBB0_264:                              #   in Loop: Header=BB0_262 Depth=3
	lui r3, 1024
	or r8, r19, r3
.LBB0_265:                              # %vector.body
                                        #   in Loop: Header=BB0_262 Depth=3
	loads.w r20, 8(r23)
	and r28, r20, r25
	setlt.u r3, r18, r28
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r3, zero, .LBB0_267
# %bb.266:                              # %vector.body
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r20, 0
	j .LBB0_268
.LBB0_267:                              #   in Loop: Header=BB0_262 Depth=3
	lui r3, 1024
	or r3, r20, r3
.LBB0_268:                              # %vector.body
                                        #   in Loop: Header=BB0_262 Depth=3
	loads.w r9, 4(r23)
	and r24, r9, r25
	setlt.u r21, r18, r24
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r21, zero, .LBB0_270
# %bb.269:                              # %vector.body
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r9, 0
	j .LBB0_271
.LBB0_270:                              #   in Loop: Header=BB0_262 Depth=3
	lui r21, 1024
	or r22, r9, r21
.LBB0_271:                              # %vector.body
                                        #   in Loop: Header=BB0_262 Depth=3
	loads.w r23, 0(r23)
	and r21, r23, r25
	setlt.u r27, r18, r21
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r27, zero, .LBB0_280
# %bb.272:                              # %vector.body
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r23, 0
	.loc	1 344 19 is_stmt 1              # parallel-rne.mlir:344:19
	setlt.u r21, r26, r21
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r21, zero, .LBB0_274
.LBB0_273:                              # %vector.body
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r21, r23, 16
	andi r21, r21, 1
	add.s r21, r23, r21
	add.s r21, r21, r13
	and r27, r21, r4
.LBB0_274:                              # %vector.body
                                        #   in Loop: Header=BB0_262 Depth=3
	setlt.u r21, r26, r24
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r21, zero, .LBB0_276
# %bb.275:                              # %vector.body
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r21, r9, 16
	andi r21, r21, 1
	add.s r9, r9, r21
	add.s r9, r9, r13
	and r22, r9, r4
.LBB0_276:                              # %vector.body
                                        #   in Loop: Header=BB0_262 Depth=3
	setlt.u r9, r26, r28
	load.d r[23:24], -16(r30)               # 8-byte Folded Reload
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r9, zero, .LBB0_278
# %bb.277:                              # %vector.body
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r20, 16
	andi r3, r3, 1
	add.s r3, r20, r3
	add.s r3, r3, r13
	and r3, r3, r4
.LBB0_278:                              # %vector.body
                                        #   in Loop: Header=BB0_262 Depth=3
	setlt.u r9, r26, r10
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r9, zero, .LBB0_261
# %bb.279:                              # %vector.body
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r13
	and r8, r8, r4
	j .LBB0_261
.LBB0_280:                              #   in Loop: Header=BB0_262 Depth=3
	lui r27, 1024
	or r27, r23, r27
	.loc	1 344 19 is_stmt 1              # parallel-rne.mlir:344:19
	setlt.u r21, r26, r21
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	beq r21, zero, .LBB0_273
	j .LBB0_274
.LBB0_281:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r9
	.loc	1 323 7                         # parallel-rne.mlir:323:7
	mfence { sm }
.LBB0_282:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 352 7                         # parallel-rne.mlir:352:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	addli r1, zero, 3
	.loc	1 352 7                         # parallel-rne.mlir:352:7
	sync_core
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	beq r9, r1, .LBB0_5
# %bb.283:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[13:14], -56(r30)               # 8-byte Folded Reload
	addli r15, zero, 5
	addli r16, zero, 1
	.loc	1 370 7 is_stmt 1               # parallel-rne.mlir:370:7
	bneq r9, zero, .LBB0_6
# %bb.284:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -72(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -68(r30)                  # 4-byte Folded Reload
	.loc	1 362 13 is_stmt 1              # parallel-rne.mlir:362:13
	load.d r[7:8], -32(r30)                 # 8-byte Folded Reload
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	load.d r[9:10], -40(r30)                # 8-byte Folded Reload
	addli r3, zero, 12
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	xwait r3, 0
	lock zero, r15
	slli r1, r1, 5
	slli r2, r2, 4
	dma_cfg r16, r16, zero, 0
	dma_cfg zero, r16, zero, 1
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	zext_int2long r[5:6], r1
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	sext_int2long r[1:2], r2
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	min.ul r[7:8], r[5:6], r[7:8]
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	min.sl r[9:10], r[1:2], r[9:10]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	addli.d r[7:8], r[7:8], 32
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	addli.d r[9:10], r[9:10], 16
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	max.ul r[7:8], r[7:8], r[5:6]
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	max.sl r[9:10], r[9:10], r[1:2]
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	sub.sl r[5:6], r[7:8], r[5:6]
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	sll.d r[7:8], r[23:24], r3
	lui r3, 17
	.loc	1 359 13                        # parallel-rne.mlir:359:13
	sub.sl r[1:2], r[9:10], r[1:2]
	addli r9, zero, 16
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	min.ul r[5:6], r[5:6], r[11:12]
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	load.d r[11:12], 16(r30)
	ori r3, r3, 2112
	zext_int2long r[9:10], r9
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	min.sl r[1:2], r[1:2], r[9:10]
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	addli r9, r5, 31
	add.s r3, r17, r3
	addli r10, zero, 64
	slli r5, r5, 1
	addli r6, zero, 128
	add.ul r[7:8], r[11:12], r[7:8]
	add.ul r[7:8], r[7:8], r[27:28]
	dma_cfg r8, zero, zero, 2
	dma_cfg r7, r3, r10, 3
	srli r3, r9, 5
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r9
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	dma_cfg r10, r6, r3, 4
	andi r3, r5, 62
	addli r5, zero, 256
	dma_cfg r5, r6, r1, 5
	addli r1, zero, 13
	dma_cfg zero, zero, r3, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	xsignal r1, 0
	j .LBB0_6
.LBB0_285:                              # %._crit_edge
	.loc	1 372 5                         # parallel-rne.mlir:372:5
	xsignal zero, 0
	bneq r9, zero, .LBB0_287
# %bb.286:
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
.LBB0_287:
	.loc	1 373 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:373:5
	addli sp, sp, 88
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
	.long	152                             # 0x98
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/division-fkyj5opr" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
