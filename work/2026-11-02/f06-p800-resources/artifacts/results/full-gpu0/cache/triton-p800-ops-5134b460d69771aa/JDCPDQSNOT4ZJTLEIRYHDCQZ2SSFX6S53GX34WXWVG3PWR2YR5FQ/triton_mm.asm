	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-m0thzrdl" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -144
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r16
	addli r30, sp, 80
	xsignal_mode_cfg r1
	beq r16, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 30 5                          # parallel-rne.mlir:30:5
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
	.loc	1 32 10 is_stmt 1               # parallel-rne.mlir:32:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	mul.s r1, r2, r1
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r3, r1, r3
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r2, -1
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	div.s r2, r2, r4
	.loc	1 31 10                         # parallel-rne.mlir:31:10
	load_param_i r4, 0
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r1, r2, r4
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	fmac.s r2, r2, r4
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	min.s r2, r2, r3
	.loc	1 49 5                          # parallel-rne.mlir:49:5
	ble.s r2, r1, .LBB0_230
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 41 11 is_stmt 1               # parallel-rne.mlir:41:11
	sext_int2long r[12:13], r1
	lui r1, 524287
	addli r15, zero, 16
	addli r18, zero, 1
	addli r19, zero, 7
	addli r22, zero, 3
	lui r20, 522240
	lui r5, 1048560
	addli r14, zero, 0
	store.d r[2:3], -80(r30)                # 8-byte Folded Spill
	ori r25, r1, 4095
	lui r1, 7
	lui r2, 522239
	lui r3, 1024
	ori r26, r1, 4095
	ori r1, r2, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 354 7                         # parallel-rne.mlir:354:7
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 355 7                         # parallel-rne.mlir:355:7
	addli r2, zero, 12
	xsignal r2, 0
	loadli.w r14,  -28(r30)                 # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[12:13], -40(r30)               # 8-byte Folded Reload
	.loc	1 49 5 is_stmt 1                # parallel-rne.mlir:49:5
	load.d r[6:7], -80(r30)                 # 8-byte Folded Reload
	addli r14, r14, 1
	addli r15, zero, 16
	addli r18, zero, 1
	addli.d r[12:13], r[12:13], 1
	setlt.sl r2, r[12:13], r[6:7]
	beq r2, zero, .LBB0_230
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
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	loadli.w r2,  32(r30)
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	loadli.w r4,  28(r30)
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	addli r7, zero, 8
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	div.s r2, r12, r2
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	div.s r6, r2, r4
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	div.s r11, r6, r15
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	slli r2, r11, 3
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	sub.s r4, r18, r2
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	min.s r17, r4, r7
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	addli r7, zero, 5
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	mod.s r4, r6, r17
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	mod.s r7, r14, r7
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	add.s r2, r4, r2
	addli r4, r14, 0
	.loc	1 85 13                         # parallel-rne.mlir:85:13
	slli r14, r7, 13
	.loc	1 68 13                         # parallel-rne.mlir:68:13
	zext_int2long r[9:10], r2
	storeli.w r2, -68(r30)                  # 4-byte Folded Spill
	.loc	1 87 13                         # parallel-rne.mlir:87:13
	lui r2, 20
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	storeli.w r4, -28(r30)                  # 4-byte Folded Spill
	.loc	1 87 13                         # parallel-rne.mlir:87:13
	add.s r8, r14, r2
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	store.d r[9:10], -64(r30)               # 8-byte Folded Spill
	bneq r16, r18, .LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r21, zero, 12
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	load.d r[23:24], 0(r30)
	xwait r22, 0
	sll.d r[9:10], r[9:10], r21
	add.ul r[9:10], r[23:24], r[9:10]
	addli r23, zero, 4
	blt.s r23, r4, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 5
	addli r24, zero, 2
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	addli r4, zero, 6
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 13
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r15, 10
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
	addli r4, zero, 64
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r8, zero, r4, 3
	addli r4, zero, 128
	dma_cfg r4, zero, r24, 4
	addli r4, zero, 32
	addli r24, zero, 256
	dma_cfg r24, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
.LBB0_10:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r2, 20
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
	addli r24, zero, 64
	addli r27, zero, 32
	addli r28, zero, 256
	addli r4, zero, 6
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	lock zero, r23
	ori r2, r2, 64
	dma_cfg r18, r18, zero, 0
	dma_cfg zero, r10, zero, 2
	add.s r2, r14, r2
	dma_cfg r2, r9, r24, 3
	addli r9, zero, 2
	addli r10, zero, 128
	addli r2, zero, 5
	dma_cfg r10, r24, r9, 4
	dma_cfg r28, r10, r27, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r23
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 13
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r15, 10
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
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r8, zero, r24, 3
	dma_cfg r10, zero, r9, 4
	dma_cfg r28, zero, r27, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
	xsignal r9, 0
	.loc	1 92 7 is_stmt 1                # parallel-rne.mlir:92:7
	j .LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 2
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	bneq r16, r4, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 5
	xwait r4, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 64
	ds_cfg r4, zero, 0
	addli r4, zero, 32
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r4, zero, 13
	shuffle_batch r14, r8, r2, 1
	addli r2, zero, 1
	unlock zero
	xsignal r22, 0
	storeli.w r2, -52(r30)                  # 4-byte Folded Spill
	addli r2, zero, 4
	xsignal r2, 0
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	slli r2, r11, 4
	slli r11, r7, 14
	.loc	1 100 13 is_stmt 1              # parallel-rne.mlir:100:13
	slli r7, r7, 15
	addli r4, zero, 6
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	store.d r[12:13], -40(r30)              # 8-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r2, r6, r2
	div.s r10, r2, r17
	.loc	1 102 13 is_stmt 1              # parallel-rne.mlir:102:13
	lui r2, 30
	add.s r6, r7, r2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[8:9], r10
	.loc	1 106 7 is_stmt 1               # parallel-rne.mlir:106:7
	storeli.w r10, -72(r30)                 # 4-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sll.d r[8:9], r[8:9], r19
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	sll.d r[23:24], r[8:9], r18
	bneq r16, r4, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[8:9], 8(r30)
	xwait r19, 0
	loadli.w r2,  -28(r30)                  # 4-byte Folded Reload
	addli r4, zero, 6
	addli r10, zero, 12
	addli r14, zero, 4
	addli r17, zero, 2
	add.ul r[8:9], r[8:9], r[23:24]
	blt.s r14, r2, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 5
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	addli r21, zero, 128
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 13
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r15, 10
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
	addli r4, zero, 64
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r4, 3
	dma_cfg r21, zero, r14, 4
	addli r21, zero, 512
	dma_cfg r21, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
.LBB0_17:                               # %.thread15
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r2, 30
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
	addli r12, zero, 64
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	addli r4, zero, 8
	lock zero, r14
	ori r2, r2, 64
	dma_cfg r18, r18, zero, 0
	dma_cfg zero, r9, zero, 2
	add.s r2, r7, r2
	addli r7, zero, 6
	dma_cfg r2, r8, r12, 3
	addli r2, zero, 128
	addli r9, zero, 512
	addli r8, zero, 128
	dma_cfg r2, r12, r14, 4
	addli r2, zero, 5
	dma_cfg r9, r9, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 13
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r15, 10
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
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r12, 3
	dma_cfg r8, zero, r14, 4
	dma_cfg r9, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
	xsignal r7, 0
	.loc	1 107 7 is_stmt 1               # parallel-rne.mlir:107:7
	j .LBB0_27
.LBB0_18:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, zero, 4
	addli r2, zero, 2
	.loc	1 107 7                         # parallel-rne.mlir:107:7
	beq r16, r9, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r8, zero, 64
	addli r9, zero, 128
	.loc	1 107 7                         # parallel-rne.mlir:107:7
	bneq r16, r19, .LBB0_24
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
	.loc	1 107 7                         # parallel-rne.mlir:107:7
	xwait r4, 0
	addli r4, zero, 9
	xwait r4, 0
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 1
	ds_cfg r9, zero, 1
	ds_cfg r8, zero, 14
	ds_cfg r9, zero, 13
	shuffle_coa r7, r6, r8, 2
	unlock zero
	xsignal r19, 0
	storeli.w r2, -44(r30)                  # 4-byte Folded Spill
	addli r2, zero, 8
	xsignal r2, 0
	.loc	1 108 7 is_stmt 1               # parallel-rne.mlir:108:7
	j .LBB0_27
.LBB0_21:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 8
	xwait r9, 0
	addli r6, zero, 0
	addli r4, zero, 1
	addli r8, zero, 11
	addli r10, zero, 64
	addli r15, zero, 32
	xwait r2, 0
	addli r2, zero, 1
	xwait r8, 0
.LBB0_22:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r8, r6, 14
	slli r6, r6, 8
	lock zero, r2
	mm_cfg r10, r10, r15, 0
	or r8, r8, r7
	or r6, r6, r11
	mm_cfg r9, r9, r2, 2
	mm r6, r14, r8, 8
	andi r8, r4, 1
	addli r6, zero, 1
	addli r4, zero, 0
	unlock r2
	bneq r8, zero, .LBB0_22
# %bb.23:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 5
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	addli r2, zero, 1
	storeli.w r2, -48(r30)                  # 4-byte Folded Spill
	addli r2, zero, 10
	xsignal r2, 0
	j .LBB0_27
.LBB0_24:                               # %.thread16
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 115 7                         # parallel-rne.mlir:115:7
	bneq r16, r22, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
	xwait r2, 0
	.loc	1 116 7                         # parallel-rne.mlir:116:7
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
.LBB0_27:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 113 13 is_stmt 1              # parallel-rne.mlir:113:13
	lui r2, 70
	.loc	1 118 7                         # parallel-rne.mlir:118:7
	xfence
	.loc	1 119 7                         # parallel-rne.mlir:119:7
	mfence { lm, sm, gm }
	.loc	1 113 13                        # parallel-rne.mlir:113:13
	add.s r14, r11, r2
	.loc	1 120 7                         # parallel-rne.mlir:120:7
	addli r2, zero, 255
	csr_set csr5, r2
	addli r2, zero, 128
	sync_core
	store.d r[23:24], -24(r30)              # 8-byte Folded Spill
	zext_int2long r[17:18], r2
	.loc	1 121 7                         # parallel-rne.mlir:121:7
	beq r16, zero, .LBB0_34
# %bb.28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	addli r2, zero, 1
	beq r16, r2, .LBB0_58
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	loadli.w r2,  -52(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_82
.LBB0_30:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 208 7                         # parallel-rne.mlir:208:7
	beq r16, r22, .LBB0_106
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 237 7                         # parallel-rne.mlir:237:7
	loadli.w r2,  -48(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_130
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	addli r2, zero, 5
	beq r16, r2, .LBB0_154
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 295 7                         # parallel-rne.mlir:295:7
	addli r2, zero, 6
	beq r16, r2, .LBB0_178
	j .LBB0_202
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 121 7                         # parallel-rne.mlir:121:7
	xfence
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	store.d r[6:7], -16(r30)                # 8-byte Folded Spill
	j .LBB0_36
.LBB0_35:                               # %middle.block98
                                        #   in Loop: Header=BB0_36 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r22, zero, 3
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r19, zero, 7
	zext_int2long r[6:7], r22
	.loc	1 129 9 is_stmt 1               # parallel-rne.mlir:129:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_57
.LBB0_36:                               # %.preheader23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_38 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	load.d r[15:16], -16(r30)               # 8-byte Folded Reload
	sll.d r[8:9], r[6:7], r19
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_38
.LBB0_37:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 130 11 is_stmt 1              # parallel-rne.mlir:130:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	add.s r6, r14, r19
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	setneq.d r4, r[15:16], r[17:18]
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	stores.w r2, 12(r6)
	stores.w r13, 8(r6)
	stores.w r22, 4(r6)
	stores.w r27, 0(r6)
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	beq r4, zero, .LBB0_35
.LBB0_38:                               # %vector.body94
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	add.ul r[6:7], r[15:16], r[8:9]
	slli r19, r6, 2
	add.s r2, r11, r19
	loads.w r4, 12(r2)
	loads.w r21, 0(r2)
	loads.w r23, 4(r2)
	loads.w r10, 8(r2)
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	and r24, r4, r25
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	setlt.u r2, r20, r24
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r2, zero, .LBB0_40
# %bb.39:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_38 Depth=3
	or r2, r4, r3
.LBB0_41:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	and r12, r10, r25
	setlt.u r6, r20, r12
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r6, zero, .LBB0_43
# %bb.42:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r10, 0
	j .LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_38 Depth=3
	or r13, r10, r3
.LBB0_44:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	and r28, r23, r25
	setlt.u r6, r20, r28
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r6, zero, .LBB0_46
# %bb.45:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r23, 0
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_38 Depth=3
	or r22, r23, r3
.LBB0_47:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	and r6, r21, r25
	setlt.u r7, r20, r6
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r7, zero, .LBB0_49
# %bb.48:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r21, 0
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r6, r1, r6
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	beq r6, zero, .LBB0_50
	j .LBB0_51
.LBB0_49:                               #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r21, r3
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r6, r1, r6
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r6, zero, .LBB0_51
.LBB0_50:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r26
	and r27, r6, r5
.LBB0_51:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	setlt.u r6, r1, r28
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	beq r6, zero, .LBB0_54
# %bb.52:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r12
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	beq r6, zero, .LBB0_55
.LBB0_53:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r24
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r6, zero, .LBB0_37
	j .LBB0_56
.LBB0_54:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r23, 16
	andi r6, r6, 1
	add.s r6, r23, r6
	add.s r6, r6, r26
	and r22, r6, r5
	setlt.u r6, r1, r12
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r6, zero, .LBB0_53
.LBB0_55:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r26
	and r13, r6, r5
	setlt.u r6, r1, r24
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r6, zero, .LBB0_37
.LBB0_56:                               # %vector.body94
                                        #   in Loop: Header=BB0_38 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r26
	and r2, r2, r5
	j .LBB0_37
.LBB0_57:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 121 7 is_stmt 1               # parallel-rne.mlir:121:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r16
	load.d r[23:24], -24(r30)               # 8-byte Folded Reload
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	addli r2, zero, 1
	bneq r16, r2, .LBB0_29
.LBB0_58:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 4
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_60
.LBB0_59:                               # %middle.block89
                                        #   in Loop: Header=BB0_60 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r19, zero, 7
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[6:7], r19
	.loc	1 158 9 is_stmt 1               # parallel-rne.mlir:158:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_81
.LBB0_60:                               # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_62 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[15:16], r[6:7], r19
	zext_int2long r[8:9], zero
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_62
.LBB0_61:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 159 11 is_stmt 1              # parallel-rne.mlir:159:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 174 13                        # parallel-rne.mlir:174:13
	add.s r6, r14, r19
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	setneq.d r4, r[8:9], r[17:18]
	.loc	1 174 13                        # parallel-rne.mlir:174:13
	stores.w r2, 12(r6)
	stores.w r10, 8(r6)
	stores.w r23, 4(r6)
	stores.w r21, 0(r6)
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	beq r4, zero, .LBB0_59
.LBB0_62:                               # %vector.body85
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_60 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	add.ul r[6:7], r[8:9], r[15:16]
	slli r19, r6, 2
	add.s r2, r11, r19
	loads.w r4, 12(r2)
	loads.w r27, 0(r2)
	loads.w r22, 4(r2)
	loads.w r13, 8(r2)
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	and r24, r4, r25
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	setlt.u r2, r20, r24
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r2, zero, .LBB0_64
# %bb.63:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_65
.LBB0_64:                               #   in Loop: Header=BB0_62 Depth=3
	or r2, r4, r3
.LBB0_65:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	and r12, r13, r25
	setlt.u r6, r20, r12
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r6, zero, .LBB0_67
# %bb.66:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r13, 0
	j .LBB0_68
.LBB0_67:                               #   in Loop: Header=BB0_62 Depth=3
	or r10, r13, r3
.LBB0_68:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	and r28, r22, r25
	setlt.u r6, r20, r28
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r6, zero, .LBB0_70
# %bb.69:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	j .LBB0_71
.LBB0_70:                               #   in Loop: Header=BB0_62 Depth=3
	or r23, r22, r3
.LBB0_71:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	and r6, r27, r25
	setlt.u r7, r20, r6
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r7, zero, .LBB0_73
# %bb.72:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r27, 0
	.loc	1 171 19 is_stmt 1              # parallel-rne.mlir:171:19
	setlt.u r6, r1, r6
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	beq r6, zero, .LBB0_74
	j .LBB0_75
.LBB0_73:                               #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r27, r3
	.loc	1 171 19 is_stmt 1              # parallel-rne.mlir:171:19
	setlt.u r6, r1, r6
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r6, zero, .LBB0_75
.LBB0_74:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r27, 16
	andi r6, r6, 1
	add.s r6, r27, r6
	add.s r6, r6, r26
	and r21, r6, r5
.LBB0_75:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	setlt.u r6, r1, r28
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	beq r6, zero, .LBB0_78
# %bb.76:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r12
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	beq r6, zero, .LBB0_79
.LBB0_77:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r24
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r6, zero, .LBB0_61
	j .LBB0_80
.LBB0_78:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r26
	and r23, r6, r5
	setlt.u r6, r1, r12
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r6, zero, .LBB0_77
.LBB0_79:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r26
	and r10, r6, r5
	setlt.u r6, r1, r24
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r6, zero, .LBB0_61
.LBB0_80:                               # %vector.body85
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r26
	and r2, r2, r5
	j .LBB0_61
.LBB0_81:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 150 7 is_stmt 1               # parallel-rne.mlir:150:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r16
	addli r22, zero, 3
	load.d r[23:24], -24(r30)               # 8-byte Folded Reload
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	loadli.w r2,  -52(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_30
.LBB0_82:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_84
.LBB0_83:                               # %middle.block80
                                        #   in Loop: Header=BB0_84 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 11
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r19, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 187 9 is_stmt 1               # parallel-rne.mlir:187:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_105
.LBB0_84:                               # %.preheader21
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_86 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[15:16], r[6:7], r19
	zext_int2long r[8:9], zero
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_86
.LBB0_85:                               # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 188 11 is_stmt 1              # parallel-rne.mlir:188:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 203 13                        # parallel-rne.mlir:203:13
	add.s r6, r14, r19
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	setneq.d r4, r[8:9], r[17:18]
	.loc	1 203 13                        # parallel-rne.mlir:203:13
	stores.w r2, 12(r6)
	stores.w r10, 8(r6)
	stores.w r23, 4(r6)
	stores.w r21, 0(r6)
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	beq r4, zero, .LBB0_83
.LBB0_86:                               # %vector.body76
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_84 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.ul r[6:7], r[8:9], r[15:16]
	slli r19, r6, 2
	add.s r2, r11, r19
	loads.w r4, 12(r2)
	loads.w r27, 0(r2)
	loads.w r22, 4(r2)
	loads.w r13, 8(r2)
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	and r24, r4, r25
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	setlt.u r2, r20, r24
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r2, zero, .LBB0_88
# %bb.87:                               # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_86 Depth=3
	or r2, r4, r3
.LBB0_89:                               # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	and r12, r13, r25
	setlt.u r6, r20, r12
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r6, zero, .LBB0_91
# %bb.90:                               # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r13, 0
	j .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_86 Depth=3
	or r10, r13, r3
.LBB0_92:                               # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	and r28, r22, r25
	setlt.u r6, r20, r28
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r6, zero, .LBB0_94
# %bb.93:                               # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	j .LBB0_95
.LBB0_94:                               #   in Loop: Header=BB0_86 Depth=3
	or r23, r22, r3
.LBB0_95:                               # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	and r6, r27, r25
	setlt.u r7, r20, r6
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r7, zero, .LBB0_97
# %bb.96:                               # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r27, 0
	.loc	1 200 19 is_stmt 1              # parallel-rne.mlir:200:19
	setlt.u r6, r1, r6
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	beq r6, zero, .LBB0_98
	j .LBB0_99
.LBB0_97:                               #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r27, r3
	.loc	1 200 19 is_stmt 1              # parallel-rne.mlir:200:19
	setlt.u r6, r1, r6
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r6, zero, .LBB0_99
.LBB0_98:                               # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r27, 16
	andi r6, r6, 1
	add.s r6, r27, r6
	add.s r6, r6, r26
	and r21, r6, r5
.LBB0_99:                               # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	setlt.u r6, r1, r28
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	beq r6, zero, .LBB0_102
# %bb.100:                              # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r12
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	beq r6, zero, .LBB0_103
.LBB0_101:                              # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r24
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r6, zero, .LBB0_85
	j .LBB0_104
.LBB0_102:                              # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r26
	and r23, r6, r5
	setlt.u r6, r1, r12
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r6, zero, .LBB0_101
.LBB0_103:                              # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r26
	and r10, r6, r5
	setlt.u r6, r1, r24
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r6, zero, .LBB0_85
.LBB0_104:                              # %vector.body76
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r26
	and r2, r2, r5
	j .LBB0_85
.LBB0_105:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 179 7 is_stmt 1               # parallel-rne.mlir:179:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r16
	addli r22, zero, 3
	load.d r[23:24], -24(r30)               # 8-byte Folded Reload
	.loc	1 208 7                         # parallel-rne.mlir:208:7
	bneq r16, r22, .LBB0_31
.LBB0_106:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 12
	.loc	1 208 7                         # parallel-rne.mlir:208:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_108
.LBB0_107:                              # %middle.block71
                                        #   in Loop: Header=BB0_108 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 15
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r19, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 216 9 is_stmt 1               # parallel-rne.mlir:216:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_129
.LBB0_108:                              # %.preheader20
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_110 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[15:16], r[6:7], r19
	zext_int2long r[8:9], zero
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_110
.LBB0_109:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 217 11 is_stmt 1              # parallel-rne.mlir:217:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 232 13                        # parallel-rne.mlir:232:13
	add.s r6, r14, r19
	.loc	1 217 11                        # parallel-rne.mlir:217:11
	setneq.d r4, r[8:9], r[17:18]
	.loc	1 232 13                        # parallel-rne.mlir:232:13
	stores.w r2, 12(r6)
	stores.w r10, 8(r6)
	stores.w r23, 4(r6)
	stores.w r21, 0(r6)
	.loc	1 217 11                        # parallel-rne.mlir:217:11
	beq r4, zero, .LBB0_107
.LBB0_110:                              # %vector.body67
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_108 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	add.ul r[6:7], r[8:9], r[15:16]
	slli r19, r6, 2
	add.s r2, r11, r19
	loads.w r4, 12(r2)
	loads.w r27, 0(r2)
	loads.w r22, 4(r2)
	loads.w r13, 8(r2)
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	and r24, r4, r25
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	setlt.u r2, r20, r24
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r2, zero, .LBB0_112
# %bb.111:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_110 Depth=3
	or r2, r4, r3
.LBB0_113:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	and r12, r13, r25
	setlt.u r6, r20, r12
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r6, zero, .LBB0_115
# %bb.114:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r13, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_110 Depth=3
	or r10, r13, r3
.LBB0_116:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	and r28, r22, r25
	setlt.u r6, r20, r28
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r6, zero, .LBB0_118
# %bb.117:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	j .LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_110 Depth=3
	or r23, r22, r3
.LBB0_119:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	and r6, r27, r25
	setlt.u r7, r20, r6
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r7, zero, .LBB0_121
# %bb.120:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r27, 0
	.loc	1 229 19 is_stmt 1              # parallel-rne.mlir:229:19
	setlt.u r6, r1, r6
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	beq r6, zero, .LBB0_122
	j .LBB0_123
.LBB0_121:                              #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r27, r3
	.loc	1 229 19 is_stmt 1              # parallel-rne.mlir:229:19
	setlt.u r6, r1, r6
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r6, zero, .LBB0_123
.LBB0_122:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r27, 16
	andi r6, r6, 1
	add.s r6, r27, r6
	add.s r6, r6, r26
	and r21, r6, r5
.LBB0_123:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	setlt.u r6, r1, r28
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	beq r6, zero, .LBB0_126
# %bb.124:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r12
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	beq r6, zero, .LBB0_127
.LBB0_125:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r24
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r6, zero, .LBB0_109
	j .LBB0_128
.LBB0_126:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r26
	and r23, r6, r5
	setlt.u r6, r1, r12
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r6, zero, .LBB0_125
.LBB0_127:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r26
	and r10, r6, r5
	setlt.u r6, r1, r24
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r6, zero, .LBB0_109
.LBB0_128:                              # %vector.body67
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r26
	and r2, r2, r5
	j .LBB0_109
.LBB0_129:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 208 7 is_stmt 1               # parallel-rne.mlir:208:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r16
	addli r22, zero, 3
	load.d r[23:24], -24(r30)               # 8-byte Folded Reload
	.loc	1 237 7                         # parallel-rne.mlir:237:7
	loadli.w r2,  -48(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_32
.LBB0_130:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 237 7                         # parallel-rne.mlir:237:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_132
.LBB0_131:                              # %middle.block62
                                        #   in Loop: Header=BB0_132 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 19
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r19, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 245 9 is_stmt 1               # parallel-rne.mlir:245:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_153
.LBB0_132:                              # %.preheader19
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_134 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[15:16], r[6:7], r19
	zext_int2long r[8:9], zero
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_134
.LBB0_133:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 246 11 is_stmt 1              # parallel-rne.mlir:246:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	add.s r6, r14, r19
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	setneq.d r4, r[8:9], r[17:18]
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	stores.w r2, 12(r6)
	stores.w r10, 8(r6)
	stores.w r23, 4(r6)
	stores.w r21, 0(r6)
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	beq r4, zero, .LBB0_131
.LBB0_134:                              # %vector.body58
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_132 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	add.ul r[6:7], r[8:9], r[15:16]
	slli r19, r6, 2
	add.s r2, r11, r19
	loads.w r4, 12(r2)
	loads.w r27, 0(r2)
	loads.w r22, 4(r2)
	loads.w r13, 8(r2)
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	and r24, r4, r25
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	setlt.u r2, r20, r24
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r2, zero, .LBB0_136
# %bb.135:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_137
.LBB0_136:                              #   in Loop: Header=BB0_134 Depth=3
	or r2, r4, r3
.LBB0_137:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	and r12, r13, r25
	setlt.u r6, r20, r12
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r6, zero, .LBB0_139
# %bb.138:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r13, 0
	j .LBB0_140
.LBB0_139:                              #   in Loop: Header=BB0_134 Depth=3
	or r10, r13, r3
.LBB0_140:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	and r28, r22, r25
	setlt.u r6, r20, r28
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r6, zero, .LBB0_142
# %bb.141:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	j .LBB0_143
.LBB0_142:                              #   in Loop: Header=BB0_134 Depth=3
	or r23, r22, r3
.LBB0_143:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	and r6, r27, r25
	setlt.u r7, r20, r6
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r7, zero, .LBB0_145
# %bb.144:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r27, 0
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r6, r1, r6
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r6, zero, .LBB0_146
	j .LBB0_147
.LBB0_145:                              #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r27, r3
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r6, r1, r6
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r6, zero, .LBB0_147
.LBB0_146:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r27, 16
	andi r6, r6, 1
	add.s r6, r27, r6
	add.s r6, r6, r26
	and r21, r6, r5
.LBB0_147:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	setlt.u r6, r1, r28
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r6, zero, .LBB0_150
# %bb.148:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r12
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r6, zero, .LBB0_151
.LBB0_149:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r24
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r6, zero, .LBB0_133
	j .LBB0_152
.LBB0_150:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r26
	and r23, r6, r5
	setlt.u r6, r1, r12
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r6, zero, .LBB0_149
.LBB0_151:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r26
	and r10, r6, r5
	setlt.u r6, r1, r24
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r6, zero, .LBB0_133
.LBB0_152:                              # %vector.body58
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r26
	and r2, r2, r5
	j .LBB0_133
.LBB0_153:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 237 7 is_stmt 1               # parallel-rne.mlir:237:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r16
	addli r22, zero, 3
	load.d r[23:24], -24(r30)               # 8-byte Folded Reload
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	addli r2, zero, 5
	bneq r16, r2, .LBB0_33
.LBB0_154:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_156
.LBB0_155:                              # %middle.block53
                                        #   in Loop: Header=BB0_156 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 23
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r19, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 274 9 is_stmt 1               # parallel-rne.mlir:274:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_177
.LBB0_156:                              # %.preheader18
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_158 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[15:16], r[6:7], r19
	zext_int2long r[8:9], zero
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_158
.LBB0_157:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 275 11 is_stmt 1              # parallel-rne.mlir:275:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 290 13                        # parallel-rne.mlir:290:13
	add.s r6, r14, r19
	.loc	1 275 11                        # parallel-rne.mlir:275:11
	setneq.d r4, r[8:9], r[17:18]
	.loc	1 290 13                        # parallel-rne.mlir:290:13
	stores.w r2, 12(r6)
	stores.w r10, 8(r6)
	stores.w r23, 4(r6)
	stores.w r21, 0(r6)
	.loc	1 275 11                        # parallel-rne.mlir:275:11
	beq r4, zero, .LBB0_155
.LBB0_158:                              # %vector.body49
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	add.ul r[6:7], r[8:9], r[15:16]
	slli r19, r6, 2
	add.s r2, r11, r19
	loads.w r4, 12(r2)
	loads.w r27, 0(r2)
	loads.w r22, 4(r2)
	loads.w r13, 8(r2)
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	and r24, r4, r25
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	setlt.u r2, r20, r24
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r2, zero, .LBB0_160
# %bb.159:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_161
.LBB0_160:                              #   in Loop: Header=BB0_158 Depth=3
	or r2, r4, r3
.LBB0_161:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	and r12, r13, r25
	setlt.u r6, r20, r12
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r6, zero, .LBB0_163
# %bb.162:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r13, 0
	j .LBB0_164
.LBB0_163:                              #   in Loop: Header=BB0_158 Depth=3
	or r10, r13, r3
.LBB0_164:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	and r28, r22, r25
	setlt.u r6, r20, r28
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r6, zero, .LBB0_166
# %bb.165:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	j .LBB0_167
.LBB0_166:                              #   in Loop: Header=BB0_158 Depth=3
	or r23, r22, r3
.LBB0_167:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	and r6, r27, r25
	setlt.u r7, r20, r6
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r7, zero, .LBB0_169
# %bb.168:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r27, 0
	.loc	1 287 19 is_stmt 1              # parallel-rne.mlir:287:19
	setlt.u r6, r1, r6
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	beq r6, zero, .LBB0_170
	j .LBB0_171
.LBB0_169:                              #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r27, r3
	.loc	1 287 19 is_stmt 1              # parallel-rne.mlir:287:19
	setlt.u r6, r1, r6
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r6, zero, .LBB0_171
.LBB0_170:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r27, 16
	andi r6, r6, 1
	add.s r6, r27, r6
	add.s r6, r6, r26
	and r21, r6, r5
.LBB0_171:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	setlt.u r6, r1, r28
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	beq r6, zero, .LBB0_174
# %bb.172:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r12
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	beq r6, zero, .LBB0_175
.LBB0_173:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r24
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r6, zero, .LBB0_157
	j .LBB0_176
.LBB0_174:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r26
	and r23, r6, r5
	setlt.u r6, r1, r12
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r6, zero, .LBB0_173
.LBB0_175:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r26
	and r10, r6, r5
	setlt.u r6, r1, r24
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r6, zero, .LBB0_157
.LBB0_176:                              # %vector.body49
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r26
	and r2, r2, r5
	j .LBB0_157
.LBB0_177:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 266 7 is_stmt 1               # parallel-rne.mlir:266:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r16
	addli r22, zero, 3
	load.d r[23:24], -24(r30)               # 8-byte Folded Reload
	.loc	1 295 7                         # parallel-rne.mlir:295:7
	addli r2, zero, 6
	bneq r16, r2, .LBB0_202
.LBB0_178:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 295 7                         # parallel-rne.mlir:295:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_180
.LBB0_179:                              # %middle.block44
                                        #   in Loop: Header=BB0_180 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 27
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r19, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 303 9 is_stmt 1               # parallel-rne.mlir:303:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_201
.LBB0_180:                              # %.preheader17
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_182 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[15:16], r[6:7], r19
	zext_int2long r[8:9], zero
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_182
.LBB0_181:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 304 11 is_stmt 1              # parallel-rne.mlir:304:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 319 13                        # parallel-rne.mlir:319:13
	add.s r6, r14, r19
	.loc	1 304 11                        # parallel-rne.mlir:304:11
	setneq.d r4, r[8:9], r[17:18]
	.loc	1 319 13                        # parallel-rne.mlir:319:13
	stores.w r2, 12(r6)
	stores.w r10, 8(r6)
	stores.w r23, 4(r6)
	stores.w r21, 0(r6)
	.loc	1 304 11                        # parallel-rne.mlir:304:11
	beq r4, zero, .LBB0_179
.LBB0_182:                              # %vector.body40
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_180 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	add.ul r[6:7], r[8:9], r[15:16]
	slli r19, r6, 2
	add.s r2, r11, r19
	loads.w r4, 12(r2)
	loads.w r27, 0(r2)
	loads.w r22, 4(r2)
	loads.w r13, 8(r2)
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	and r24, r4, r25
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	setlt.u r2, r20, r24
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r2, zero, .LBB0_184
# %bb.183:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_185
.LBB0_184:                              #   in Loop: Header=BB0_182 Depth=3
	or r2, r4, r3
.LBB0_185:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	and r12, r13, r25
	setlt.u r6, r20, r12
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r6, zero, .LBB0_187
# %bb.186:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r13, 0
	j .LBB0_188
.LBB0_187:                              #   in Loop: Header=BB0_182 Depth=3
	or r10, r13, r3
.LBB0_188:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	and r28, r22, r25
	setlt.u r6, r20, r28
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r6, zero, .LBB0_190
# %bb.189:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	j .LBB0_191
.LBB0_190:                              #   in Loop: Header=BB0_182 Depth=3
	or r23, r22, r3
.LBB0_191:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	and r6, r27, r25
	setlt.u r7, r20, r6
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r7, zero, .LBB0_193
# %bb.192:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r27, 0
	.loc	1 316 19 is_stmt 1              # parallel-rne.mlir:316:19
	setlt.u r6, r1, r6
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	beq r6, zero, .LBB0_194
	j .LBB0_195
.LBB0_193:                              #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r27, r3
	.loc	1 316 19 is_stmt 1              # parallel-rne.mlir:316:19
	setlt.u r6, r1, r6
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r6, zero, .LBB0_195
.LBB0_194:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r27, 16
	andi r6, r6, 1
	add.s r6, r27, r6
	add.s r6, r6, r26
	and r21, r6, r5
.LBB0_195:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	setlt.u r6, r1, r28
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	beq r6, zero, .LBB0_198
# %bb.196:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r12
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	beq r6, zero, .LBB0_199
.LBB0_197:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r24
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r6, zero, .LBB0_181
	j .LBB0_200
.LBB0_198:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r26
	and r23, r6, r5
	setlt.u r6, r1, r12
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r6, zero, .LBB0_197
.LBB0_199:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r26
	and r10, r6, r5
	setlt.u r6, r1, r24
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r6, zero, .LBB0_181
.LBB0_200:                              # %vector.body40
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r26
	and r2, r2, r5
	j .LBB0_181
.LBB0_201:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 295 7 is_stmt 1               # parallel-rne.mlir:295:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r16
	addli r22, zero, 3
	load.d r[23:24], -24(r30)               # 8-byte Folded Reload
.LBB0_202:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 324 7                         # parallel-rne.mlir:324:7
	loadli.w r2,  -44(r30)                  # 4-byte Folded Reload
	zext_int2long r[6:7], zero
	store.d r[6:7], -16(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_227
# %bb.203:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 324 7                         # parallel-rne.mlir:324:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_205
.LBB0_204:                              # %middle.block
                                        #   in Loop: Header=BB0_205 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 31
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r19, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 332 9 is_stmt 1               # parallel-rne.mlir:332:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_226
.LBB0_205:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_207 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	load.d r[27:28], -16(r30)               # 8-byte Folded Reload
	sll.d r[8:9], r[6:7], r19
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_207
.LBB0_206:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 333 11 is_stmt 1              # parallel-rne.mlir:333:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 348 13                        # parallel-rne.mlir:348:13
	add.s r7, r14, r19
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	setneq.d r4, r[27:28], r[17:18]
	.loc	1 348 13                        # parallel-rne.mlir:348:13
	stores.w r2, 12(r7)
	stores.w r10, 8(r7)
	stores.w r23, 4(r7)
	stores.w r6, 0(r7)
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	beq r4, zero, .LBB0_204
.LBB0_207:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_205 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	add.ul r[6:7], r[27:28], r[8:9]
	slli r19, r6, 2
	add.s r2, r11, r19
	loads.w r4, 12(r2)
	loads.w r21, 0(r2)
	loads.w r22, 4(r2)
	loads.w r13, 8(r2)
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	and r24, r4, r25
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	setlt.u r2, r20, r24
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r2, zero, .LBB0_209
# %bb.208:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_210
.LBB0_209:                              #   in Loop: Header=BB0_207 Depth=3
	or r2, r4, r3
.LBB0_210:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	and r12, r13, r25
	setlt.u r6, r20, r12
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r6, zero, .LBB0_212
# %bb.211:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r13, 0
	j .LBB0_213
.LBB0_212:                              #   in Loop: Header=BB0_207 Depth=3
	or r10, r13, r3
.LBB0_213:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	and r7, r22, r25
	setlt.u r6, r20, r7
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r6, zero, .LBB0_215
# %bb.214:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	j .LBB0_216
.LBB0_215:                              #   in Loop: Header=BB0_207 Depth=3
	or r23, r22, r3
.LBB0_216:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	and r15, r21, r25
	setlt.u r6, r20, r15
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r6, zero, .LBB0_218
# %bb.217:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r21, 0
	.loc	1 345 19 is_stmt 1              # parallel-rne.mlir:345:19
	setlt.u r15, r1, r15
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r15, zero, .LBB0_219
	j .LBB0_220
.LBB0_218:                              #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r21, r3
	.loc	1 345 19 is_stmt 1              # parallel-rne.mlir:345:19
	setlt.u r15, r1, r15
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r15, zero, .LBB0_220
.LBB0_219:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r26
	and r6, r6, r5
.LBB0_220:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	setlt.u r7, r1, r7
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r7, zero, .LBB0_223
# %bb.221:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r1, r12
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r7, zero, .LBB0_224
.LBB0_222:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r1, r24
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r7, zero, .LBB0_206
	j .LBB0_225
.LBB0_223:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r22, 16
	andi r7, r7, 1
	add.s r7, r22, r7
	add.s r7, r7, r26
	and r23, r7, r5
	setlt.u r7, r1, r12
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r7, zero, .LBB0_222
.LBB0_224:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r13, 16
	andi r7, r7, 1
	add.s r7, r13, r7
	add.s r7, r7, r26
	and r10, r7, r5
	setlt.u r7, r1, r24
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r7, zero, .LBB0_206
.LBB0_225:                              # %vector.body
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r26
	and r2, r2, r5
	j .LBB0_206
.LBB0_226:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 324 7 is_stmt 1               # parallel-rne.mlir:324:7
	mfence { sm }
	addli r22, zero, 3
	load.d r[23:24], -24(r30)               # 8-byte Folded Reload
.LBB0_227:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 354 7                         # parallel-rne.mlir:354:7
	beq r16, r22, .LBB0_5
# %bb.228:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r14,  -28(r30)                 # 4-byte Folded Reload
	.loc	1 371 7 is_stmt 1               # parallel-rne.mlir:371:7
	bneq r16, zero, .LBB0_6
# %bb.229:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -72(r30)                  # 4-byte Folded Reload
	loadli.w r4,  -68(r30)                  # 4-byte Folded Reload
	addli r21, r14, 0
	.loc	1 358 13 is_stmt 1              # parallel-rne.mlir:358:13
	load.d r[14:15], -16(r30)               # 8-byte Folded Reload
	addli r10, zero, 5
	slli r2, r2, 7
	slli r4, r4, 5
	.loc	1 361 13                        # parallel-rne.mlir:361:13
	zext_int2long r[6:7], r2
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	sext_int2long r[8:9], r4
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	addli r2, zero, 14
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	min.ul r[12:13], r[6:7], r[17:18]
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	min.sl r[14:15], r[8:9], r[14:15]
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	addli.d r[12:13], r[12:13], 128
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	addli.d r[14:15], r[14:15], 32
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	max.ul r[12:13], r[12:13], r[6:7]
	.loc	1 359 13                        # parallel-rne.mlir:359:13
	max.sl r[14:15], r[14:15], r[8:9]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	sub.sl r[6:7], r[12:13], r[6:7]
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	load.d r[12:13], -64(r30)               # 8-byte Folded Reload
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	sub.sl r[8:9], r[14:15], r[8:9]
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	min.ul r[6:7], r[6:7], r[17:18]
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	load.d r[17:18], 16(r30)
	sll.d r[12:13], r[12:13], r2
	addli r2, zero, 32
	addli r4, r6, 31
	zext_int2long r[14:15], r2
	addli r2, zero, 12
	add.ul r[12:13], r[17:18], r[12:13]
	xwait r2, 0
	lui r2, 70
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	min.sl r[8:9], r[8:9], r[14:15]
	addli r14, zero, 1
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	lock zero, r10
	add.ul r[12:13], r[12:13], r[23:24]
	ori r2, r2, 64
	dma_cfg r14, r14, zero, 0
	dma_cfg zero, r14, zero, 1
	add.s r2, r11, r2
	addli r11, zero, 64
	dma_cfg r13, zero, zero, 2
	dma_cfg r12, r2, r11, 3
	srli r2, r4, 5
	slli r4, r6, 1
	addli r6, zero, 128
	dma_cfg r11, r6, r2, 4
	andi r2, r4, 62
	addli r4, zero, 512
	dma_cfg r4, r4, r8, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	addli r14, r21, 0
	addli r2, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r2, 0
	j .LBB0_6
.LBB0_230:                              # %._crit_edge
	.loc	1 373 5                         # parallel-rne.mlir:373:5
	xsignal zero, 0
	bneq r16, zero, .LBB0_232
# %bb.231:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 373 5                         # parallel-rne.mlir:373:5
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
	.loc	1 374 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:374:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-m0thzrdl" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
