	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-taevah68" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -168
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r22
	addli r30, sp, 104
	xsignal_mode_cfg r1
	beq r22, zero, .LBB0_2
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 3
	addli r2, zero, 13
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	ble.s r2, r1, .LBB0_292
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 41 11 is_stmt 1               # parallel-rne.mlir:41:11
	sext_int2long r[6:7], r1
	addli r21, zero, 4
	addli r23, zero, 64
	addli r14, zero, 2
	addli r15, zero, 8
	addli r19, zero, 1
	addli r20, zero, 14
	lui r4, 522240
	lui r5, 1048560
	addli r13, zero, 0
	store.d r[2:3], -88(r30)                # 8-byte Folded Spill
	addli r2, zero, 4095
	lui r1, 1048572
	store.d r[1:2], -96(r30)                # 8-byte Folded Spill
	lui r1, 524287
	lui r2, 522239
	ori r16, r1, 4095
	lui r1, 7
	ori r17, r2, 4095
	ori r18, r1, 4095
	zext_int2long r[1:2], zero
	store.d r[1:2], -104(r30)               # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 354 7                         # parallel-rne.mlir:354:7
	addli r1, zero, 11
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r22
	addli r23, zero, 64
	.loc	1 354 7                         # parallel-rne.mlir:354:7
	xsignal r1, 0
	.loc	1 355 7                         # parallel-rne.mlir:355:7
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	.loc	1 49 5 is_stmt 1                # parallel-rne.mlir:49:5
	load.d r[1:2], -88(r30)                 # 8-byte Folded Reload
	loadli.w r13,  -24(r30)                 # 4-byte Folded Reload
	addli r21, zero, 4
	addli r14, zero, 2
	addli r15, zero, 8
	addli r19, zero, 1
	addli r20, zero, 14
	addli.d r[6:7], r[6:7], 1
	addli r13, r13, 1
	setlt.sl r1, r[6:7], r[1:2]
	beq r1, zero, .LBB0_292
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_100 Depth 2
                                        #       Child Loop BB0_109 Depth 3
                                        #       Child Loop BB0_104 Depth 3
                                        #     Child Loop BB0_37 Depth 2
                                        #       Child Loop BB0_46 Depth 3
                                        #       Child Loop BB0_41 Depth 3
                                        #     Child Loop BB0_132 Depth 2
                                        #       Child Loop BB0_141 Depth 3
                                        #       Child Loop BB0_136 Depth 3
                                        #     Child Loop BB0_69 Depth 2
                                        #       Child Loop BB0_78 Depth 3
                                        #       Child Loop BB0_73 Depth 3
                                        #     Child Loop BB0_164 Depth 2
                                        #       Child Loop BB0_173 Depth 3
                                        #       Child Loop BB0_168 Depth 3
                                        #     Child Loop BB0_196 Depth 2
                                        #       Child Loop BB0_205 Depth 3
                                        #       Child Loop BB0_200 Depth 3
                                        #     Child Loop BB0_228 Depth 2
                                        #       Child Loop BB0_237 Depth 3
                                        #       Child Loop BB0_232 Depth 3
                                        #     Child Loop BB0_260 Depth 2
                                        #       Child Loop BB0_269 Depth 3
                                        #       Child Loop BB0_264 Depth 3
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	loadli.w r1,  32(r30)
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	loadli.w r2,  28(r30)
	store.d r[6:7], -32(r30)                # 8-byte Folded Spill
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	div.s r1, r6, r1
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	div.s r8, r1, r2
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	div.s r9, r8, r23
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	slli r1, r9, 3
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	sub.s r2, r14, r1
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	min.s r10, r2, r15
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	mod.s r2, r8, r10
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	add.s r1, r2, r1
	.loc	1 73 13                         # parallel-rne.mlir:73:13
	setlt.u r3, r19, r1
	.loc	1 68 13                         # parallel-rne.mlir:68:13
	zext_int2long r[6:7], r1
	storeli.w r1, -60(r30)                  # 4-byte Folded Spill
	.loc	1 72 13                         # parallel-rne.mlir:72:13
	addli r1, zero, 13
	sll.d r[1:2], r[6:7], r1
	store.d r[6:7], -56(r30)                # 8-byte Folded Spill
	.loc	1 77 13                         # parallel-rne.mlir:77:13
	bneq r3, zero, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 13 is_stmt 0                # parallel-rne.mlir:0:13
	load.d r[11:12], -104(r30)              # 8-byte Folded Reload
	j .LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], -96(r30)                 # 8-byte Folded Reload
	and.d r[11:12], r[1:2], r[6:7]
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	mod.s r6, r13, r21
	addli r26, r13, 0
	.loc	1 87 13 is_stmt 1               # parallel-rne.mlir:87:13
	lui r3, 32
	zext_int2long r[27:28], r23
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	storeli.w r26, -24(r30)                 # 4-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	slli r13, r6, 15
	.loc	1 87 13 is_stmt 1               # parallel-rne.mlir:87:13
	add.s r7, r13, r3
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	bneq r22, r19, .LBB0_15
# %bb.12:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.sl r[1:2], r[1:2], r[11:12]
	addli r11, zero, 7
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	load.d r[14:15], -56(r30)               # 8-byte Folded Reload
	addli r24, zero, 8
	addli r3, zero, 2
	addli r25, zero, 14
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	sra.d r[1:2], r[1:2], r11
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	sll.d r[14:15], r[14:15], r20
	load.d r[19:20], 0(r30)
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	min.sl r[11:12], r[1:2], r[27:28]
	sub.sl r[1:2], r[11:12], r[1:2]
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	add.ul r[19:20], r[19:20], r[14:15]
	addli r15, zero, 3
	addli r11, zero, 7
	addli r2, r1, 64
	xwait r15, 0
	blt.s r15, r26, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r14, zero, 5
	addli r12, zero, 1
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	addli r1, zero, 6
	lock zero, r14
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r24, 10
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
	dma_cfg zero, zero, r25, 10
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
	addli r1, zero, 128
	dma_cfg r12, r12, zero, 0
	dma_cfg r12, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r7, zero, r23, 3
	dma_cfg r1, zero, r21, 4
	addli r1, zero, 512
	dma_cfg r1, zero, r23, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
.LBB0_14:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r1, 32
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	addli r3, zero, 1
	addli r24, zero, 512
	addli r14, zero, 2
	addli r12, zero, 6
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	lock zero, r21
	ori r1, r1, 64
	dma_cfg r3, r3, zero, 0
	addli r3, zero, 5
	dma_cfg zero, r20, zero, 2
	add.s r1, r13, r1
	dma_cfg r1, r19, r23, 3
	addli r20, zero, 128
	addli r1, zero, 256
	addli r19, zero, 1
	dma_cfg r20, r23, r21, 4
	dma_cfg r24, r1, r2, 5
	addli r1, zero, 9
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r21
	lock zero, r3
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 8
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r15, 10
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
	dma_cfg zero, zero, r25, 10
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
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r7, zero, r23, 3
	dma_cfg r20, zero, r21, 4
	addli r20, zero, 14
	dma_cfg r24, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	xsignal r14, 0
	.loc	1 94 7 is_stmt 1                # parallel-rne.mlir:94:7
	j .LBB0_19
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r22, r14, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 5
	xwait r14, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 128
	ds_cfg r14, zero, 0
	ds_cfg r1, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r23, zero, 13
	shuffle_batch r13, r7, r1, 1
	addli r1, zero, 3
	unlock zero
	xsignal r1, 0
	addli r1, zero, 1
	storeli.w r1, -44(r30)                  # 4-byte Folded Spill
	xsignal r21, 0
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
.LBB0_18:                               #   in Loop: Header=BB0_8 Depth=1
	addli r11, zero, 7
	addli r12, zero, 6
.LBB0_19:                               #   in Loop: Header=BB0_8 Depth=1
	slli r1, r9, 6
	.loc	1 102 13 is_stmt 1              # parallel-rne.mlir:102:13
	slli r2, r6, 16
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r1, r8, r1
	div.s r1, r1, r10
	zext_int2long r[7:8], r1
	storeli.w r1, -76(r30)                  # 4-byte Folded Spill
	.loc	1 104 13 is_stmt 1              # parallel-rne.mlir:104:13
	lui r1, 96
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sll.d r[7:8], r[7:8], r11
	.loc	1 104 13                        # parallel-rne.mlir:104:13
	add.s r6, r2, r1
	.loc	1 108 7 is_stmt 1               # parallel-rne.mlir:108:7
	sll.d r[9:10], r[7:8], r19
	store.d r[9:10], -72(r30)               # 8-byte Folded Spill
	bneq r22, r12, .LBB0_23
# %bb.20:                               #   in Loop: Header=BB0_8 Depth=1
	load.d r[7:8], 8(r30)
	xwait r11, 0
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	addli r3, zero, 3
	addli r12, zero, 128
	add.ul r[7:8], r[7:8], r[9:10]
	addli r10, zero, 6
	blt.s r3, r1, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, zero, 5
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	addli r1, zero, 9
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r15, 10
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
	dma_cfg zero, zero, r20, 10
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
	addli r1, zero, 512
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r23, 3
	dma_cfg r12, zero, r21, 4
	dma_cfg r1, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
.LBB0_22:                               # %.thread14
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r1, 96
	storeli.w zero, -20(r30)                # 4-byte Folded Spill
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	lock zero, r21
	ori r1, r1, 64
	dma_cfg r19, r19, zero, 0
	dma_cfg zero, r8, zero, 2
	add.s r1, r2, r1
	addli r2, zero, 5
	dma_cfg r1, r7, r23, 3
	addli r7, zero, 512
	addli r1, zero, 2048
	dma_cfg r12, r23, r21, 4
	dma_cfg r7, r1, r12, 5
	addli r1, zero, 9
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r21
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r15, 10
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
	dma_cfg zero, zero, r20, 10
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
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r23, 3
	dma_cfg r12, zero, r21, 4
	dma_cfg r7, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
	xsignal r10, 0
	.loc	1 109 7 is_stmt 1               # parallel-rne.mlir:109:7
	j .LBB0_33
.LBB0_23:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 3
	beq r22, r1, .LBB0_30
# %bb.24:                               #   in Loop: Header=BB0_8 Depth=1
	beq r22, r21, .LBB0_27
# %bb.25:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r22, r11, .LBB0_31
# %bb.26:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 6
	storeli.w zero, -20(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	addli r12, zero, 128
	xwait r1, 0
	addli r1, zero, 9
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 1
	ds_cfg r14, zero, 0
	ds_cfg r12, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg r12, zero, 13
	shuffle_coa r2, r6, r12, 2
	unlock zero
	xsignal r11, 0
	storeli.w r1, -36(r30)                  # 4-byte Folded Spill
	xsignal r15, 0
	j .LBB0_33
.LBB0_27:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 0
	addli r1, zero, 1
	addli r3, zero, 1
	addli r12, zero, 128
	.loc	1 110 7 is_stmt 1               # parallel-rne.mlir:110:7
	addli r7, zero, 11
	xwait r21, 0
	xwait r15, 0
	xwait r7, 0
.LBB0_28:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r7, r6, 15
	slli r6, r6, 8
	lock zero, r1
	mm_cfg r23, r12, r23, 0
	or r7, r7, r2
	or r6, r6, r13
	mm_cfg r15, r21, r1, 2
	mm r6, r13, r7, 8
	andi r7, r3, 1
	addli r6, zero, 1
	addli r3, zero, 0
	unlock r1
	bneq r7, zero, .LBB0_28
# %bb.29:                               # %.thread33
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 5
	storeli.w zero, -20(r30)                # 4-byte Folded Spill
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	addli r1, zero, 1
	storeli.w r1, -40(r30)                  # 4-byte Folded Spill
	addli r1, zero, 10
	xsignal r1, 0
	.loc	1 115 7                         # parallel-rne.mlir:115:7
	j .LBB0_33
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 116 7                         # parallel-rne.mlir:116:7
	storeli.w r1, -20(r30)                  # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -20(r30)                # 4-byte Folded Spill
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
.LBB0_32:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r12, zero, 128
.LBB0_33:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	lui r1, 64
	.loc	1 118 7 is_stmt 1               # parallel-rne.mlir:118:7
	xfence
	addli.d r[20:21], r[27:28], 0
	.loc	1 119 7                         # parallel-rne.mlir:119:7
	mfence { lm, sm, gm }
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r10, r13, r1
	.loc	1 120 7 is_stmt 1               # parallel-rne.mlir:120:7
	addli r1, zero, 255
	csr_set csr5, r1
	zext_int2long r[1:2], r12
	store.d r[1:2], -8(r30)                 # 8-byte Folded Spill
	addli r1, zero, 127
	sync_core
	zext_int2long r[22:23], r1
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r1
	.loc	1 121 7                         # parallel-rne.mlir:121:7
	beq r1, zero, .LBB0_98
# %bb.34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	addli r2, zero, 1
	bneq r1, r2, .LBB0_129
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_37
.LBB0_36:                               # %middle.block87
                                        #   in Loop: Header=BB0_37 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r11, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 158 9 is_stmt 1               # parallel-rne.mlir:158:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_65
.LBB0_37:                               # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_46 Depth 3
                                        #       Child Loop BB0_41 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r11
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 159 11 is_stmt 1              # parallel-rne.mlir:159:11
	bneq r10, r13, .LBB0_44
# %bb.38:                               # %scalar.ph81.preheader
                                        #   in Loop: Header=BB0_37 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_41
.LBB0_39:                               # %scalar.ph81
                                        #   in Loop: Header=BB0_41 Depth=3
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r18
	and r8, r8, r5
.LBB0_40:                               # %scalar.ph81
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	setlt.ul r9, r[1:2], r[22:23]
	.loc	1 174 13 is_stmt 1              # parallel-rne.mlir:174:13
	add.s r3, r10, r3
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 174 13                        # parallel-rne.mlir:174:13
	stores.w r8, 0(r3)
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	beq r9, zero, .LBB0_36
.LBB0_41:                               # %scalar.ph81
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r3, r8, 2
	add.s r8, r13, r3
	loads.w r9, 0(r8)
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	and r11, r9, r16
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	setlt.u r8, r4, r11
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r8, zero, .LBB0_43
# %bb.42:                               # %scalar.ph81
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 171 19 is_stmt 1              # parallel-rne.mlir:171:19
	setlt.u r11, r17, r11
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r11, zero, .LBB0_40
	j .LBB0_39
.LBB0_43:                               #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r9, r8
	.loc	1 171 19 is_stmt 1              # parallel-rne.mlir:171:19
	setlt.u r11, r17, r11
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r11, zero, .LBB0_40
	j .LBB0_39
.LBB0_44:                               # %vector.body83.preheader
                                        #   in Loop: Header=BB0_37 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_46
.LBB0_45:                               # %vector.body83
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 159 11 is_stmt 1              # parallel-rne.mlir:159:11
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli.d r[2:3], r[2:3], 4
	addli.d r[27:28], r[20:21], 0
	seteq.d r1, r[2:3], r[8:9]
	.loc	1 174 13                        # parallel-rne.mlir:174:13
	add.s r8, r10, r14
	stores.w r11, 12(r8)
	stores.w r26, 8(r8)
	stores.w r24, 4(r8)
	stores.w r15, 0(r8)
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	bneq r1, zero, .LBB0_36
.LBB0_46:                               # %vector.body83
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	add.ul r[8:9], r[2:3], r[6:7]
	slli r14, r8, 2
	add.s r15, r13, r14
	loads.w r19, 12(r15)
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	and r25, r19, r16
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	setlt.u r1, r4, r25
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r1, zero, .LBB0_48
# %bb.47:                               # %vector.body83
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r19, 0
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_46 Depth=3
	lui r1, 1024
	or r11, r19, r1
.LBB0_49:                               # %vector.body83
                                        #   in Loop: Header=BB0_46 Depth=3
	loads.w r27, 8(r15)
	and r1, r27, r16
	setlt.u r8, r4, r1
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r8, zero, .LBB0_51
# %bb.50:                               # %vector.body83
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_46 Depth=3
	lui r8, 1024
	or r26, r27, r8
.LBB0_52:                               # %vector.body83
                                        #   in Loop: Header=BB0_46 Depth=3
	loads.w r12, 4(r15)
	and r8, r12, r16
	setlt.u r9, r4, r8
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r9, zero, .LBB0_54
# %bb.53:                               # %vector.body83
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r12, 0
	j .LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_46 Depth=3
	lui r9, 1024
	or r24, r12, r9
.LBB0_55:                               # %vector.body83
                                        #   in Loop: Header=BB0_46 Depth=3
	loads.w r9, 0(r15)
	and r28, r9, r16
	setlt.u r15, r4, r28
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r15, zero, .LBB0_64
# %bb.56:                               # %vector.body83
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	.loc	1 171 19 is_stmt 1              # parallel-rne.mlir:171:19
	setlt.u r28, r17, r28
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r28, zero, .LBB0_58
.LBB0_57:                               # %vector.body83
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r15, r9, 16
	andi r15, r15, 1
	add.s r9, r9, r15
	add.s r9, r9, r18
	and r15, r9, r5
.LBB0_58:                               # %vector.body83
                                        #   in Loop: Header=BB0_46 Depth=3
	setlt.u r8, r17, r8
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r8, zero, .LBB0_61
# %bb.59:                               # %vector.body83
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r18
	and r24, r8, r5
	setlt.u r1, r17, r1
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	beq r1, zero, .LBB0_62
.LBB0_60:                               # %vector.body83
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r25
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r1, zero, .LBB0_45
	j .LBB0_63
.LBB0_61:                               # %vector.body83
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r1
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r1, zero, .LBB0_60
.LBB0_62:                               # %vector.body83
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r18
	and r26, r1, r5
	setlt.u r1, r17, r25
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r1, zero, .LBB0_45
.LBB0_63:                               # %vector.body83
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r18
	and r11, r1, r5
	j .LBB0_45
.LBB0_64:                               #   in Loop: Header=BB0_46 Depth=3
	lui r15, 1024
	or r15, r9, r15
	.loc	1 171 19 is_stmt 1              # parallel-rne.mlir:171:19
	setlt.u r28, r17, r28
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	beq r28, zero, .LBB0_57
	j .LBB0_58
.LBB0_65:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	mfence { sm }
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_130
.LBB0_66:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 208 7                         # parallel-rne.mlir:208:7
	loadli.w r1,  -20(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_161
.LBB0_67:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 208 7                         # parallel-rne.mlir:208:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_69
.LBB0_68:                               # %middle.block69
                                        #   in Loop: Header=BB0_69 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 31
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r11, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 216 9 is_stmt 1               # parallel-rne.mlir:216:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_97
.LBB0_69:                               # %.preheader20
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_78 Depth 3
                                        #       Child Loop BB0_73 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r11
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 217 11 is_stmt 1              # parallel-rne.mlir:217:11
	bneq r10, r13, .LBB0_76
# %bb.70:                               # %scalar.ph63.preheader
                                        #   in Loop: Header=BB0_69 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_73
.LBB0_71:                               # %scalar.ph63
                                        #   in Loop: Header=BB0_73 Depth=3
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r18
	and r8, r8, r5
.LBB0_72:                               # %scalar.ph63
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 217 11                        # parallel-rne.mlir:217:11
	setlt.ul r9, r[1:2], r[22:23]
	.loc	1 232 13 is_stmt 1              # parallel-rne.mlir:232:13
	add.s r3, r10, r3
	.loc	1 217 11                        # parallel-rne.mlir:217:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 232 13                        # parallel-rne.mlir:232:13
	stores.w r8, 0(r3)
	.loc	1 217 11                        # parallel-rne.mlir:217:11
	beq r9, zero, .LBB0_68
.LBB0_73:                               # %scalar.ph63
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r3, r8, 2
	add.s r8, r13, r3
	loads.w r9, 0(r8)
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	and r11, r9, r16
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	setlt.u r8, r4, r11
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r8, zero, .LBB0_75
# %bb.74:                               # %scalar.ph63
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 229 19 is_stmt 1              # parallel-rne.mlir:229:19
	setlt.u r11, r17, r11
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r11, zero, .LBB0_72
	j .LBB0_71
.LBB0_75:                               #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r9, r8
	.loc	1 229 19 is_stmt 1              # parallel-rne.mlir:229:19
	setlt.u r11, r17, r11
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r11, zero, .LBB0_72
	j .LBB0_71
.LBB0_76:                               # %vector.body65.preheader
                                        #   in Loop: Header=BB0_69 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_78
.LBB0_77:                               # %vector.body65
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 217 11 is_stmt 1              # parallel-rne.mlir:217:11
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli.d r[2:3], r[2:3], 4
	addli.d r[27:28], r[20:21], 0
	seteq.d r1, r[2:3], r[8:9]
	.loc	1 232 13                        # parallel-rne.mlir:232:13
	add.s r8, r10, r14
	stores.w r11, 12(r8)
	stores.w r26, 8(r8)
	stores.w r24, 4(r8)
	stores.w r15, 0(r8)
	.loc	1 217 11                        # parallel-rne.mlir:217:11
	bneq r1, zero, .LBB0_68
.LBB0_78:                               # %vector.body65
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	add.ul r[8:9], r[2:3], r[6:7]
	slli r14, r8, 2
	add.s r15, r13, r14
	loads.w r19, 12(r15)
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	and r25, r19, r16
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	setlt.u r1, r4, r25
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r1, zero, .LBB0_80
# %bb.79:                               # %vector.body65
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r19, 0
	j .LBB0_81
.LBB0_80:                               #   in Loop: Header=BB0_78 Depth=3
	lui r1, 1024
	or r11, r19, r1
.LBB0_81:                               # %vector.body65
                                        #   in Loop: Header=BB0_78 Depth=3
	loads.w r27, 8(r15)
	and r1, r27, r16
	setlt.u r8, r4, r1
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r8, zero, .LBB0_83
# %bb.82:                               # %vector.body65
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_84
.LBB0_83:                               #   in Loop: Header=BB0_78 Depth=3
	lui r8, 1024
	or r26, r27, r8
.LBB0_84:                               # %vector.body65
                                        #   in Loop: Header=BB0_78 Depth=3
	loads.w r12, 4(r15)
	and r8, r12, r16
	setlt.u r9, r4, r8
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r9, zero, .LBB0_86
# %bb.85:                               # %vector.body65
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r12, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_78 Depth=3
	lui r9, 1024
	or r24, r12, r9
.LBB0_87:                               # %vector.body65
                                        #   in Loop: Header=BB0_78 Depth=3
	loads.w r9, 0(r15)
	and r28, r9, r16
	setlt.u r15, r4, r28
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r15, zero, .LBB0_96
# %bb.88:                               # %vector.body65
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	.loc	1 229 19 is_stmt 1              # parallel-rne.mlir:229:19
	setlt.u r28, r17, r28
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r28, zero, .LBB0_90
.LBB0_89:                               # %vector.body65
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r15, r9, 16
	andi r15, r15, 1
	add.s r9, r9, r15
	add.s r9, r9, r18
	and r15, r9, r5
.LBB0_90:                               # %vector.body65
                                        #   in Loop: Header=BB0_78 Depth=3
	setlt.u r8, r17, r8
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r8, zero, .LBB0_93
# %bb.91:                               # %vector.body65
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r18
	and r24, r8, r5
	setlt.u r1, r17, r1
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	beq r1, zero, .LBB0_94
.LBB0_92:                               # %vector.body65
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r25
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r1, zero, .LBB0_77
	j .LBB0_95
.LBB0_93:                               # %vector.body65
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r1
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r1, zero, .LBB0_92
.LBB0_94:                               # %vector.body65
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r18
	and r26, r1, r5
	setlt.u r1, r17, r25
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r1, zero, .LBB0_77
.LBB0_95:                               # %vector.body65
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r18
	and r11, r1, r5
	j .LBB0_77
.LBB0_96:                               #   in Loop: Header=BB0_78 Depth=3
	lui r15, 1024
	or r15, r9, r15
	.loc	1 229 19 is_stmt 1              # parallel-rne.mlir:229:19
	setlt.u r28, r17, r28
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	beq r28, zero, .LBB0_89
	j .LBB0_90
.LBB0_97:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 208 7                         # parallel-rne.mlir:208:7
	mfence { sm }
	.loc	1 237 7                         # parallel-rne.mlir:237:7
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_193
	j .LBB0_162
.LBB0_98:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 121 7                         # parallel-rne.mlir:121:7
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_100
.LBB0_99:                               # %middle.block96
                                        #   in Loop: Header=BB0_100 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r11, zero, 7
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	zext_int2long r[1:2], r11
	.loc	1 129 9 is_stmt 1               # parallel-rne.mlir:129:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_128
.LBB0_100:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_109 Depth 3
                                        #       Child Loop BB0_104 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r11
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 130 11 is_stmt 1              # parallel-rne.mlir:130:11
	bneq r10, r13, .LBB0_107
# %bb.101:                              # %scalar.ph90.preheader
                                        #   in Loop: Header=BB0_100 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_104
.LBB0_102:                              # %scalar.ph90
                                        #   in Loop: Header=BB0_104 Depth=3
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r18
	and r8, r8, r5
.LBB0_103:                              # %scalar.ph90
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	setlt.ul r9, r[1:2], r[22:23]
	.loc	1 145 13 is_stmt 1              # parallel-rne.mlir:145:13
	add.s r3, r10, r3
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	stores.w r8, 0(r3)
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	beq r9, zero, .LBB0_99
.LBB0_104:                              # %scalar.ph90
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r3, r8, 2
	add.s r8, r13, r3
	loads.w r9, 0(r8)
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	and r11, r9, r16
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	setlt.u r8, r4, r11
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r8, zero, .LBB0_106
# %bb.105:                              # %scalar.ph90
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r11, r17, r11
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r11, zero, .LBB0_103
	j .LBB0_102
.LBB0_106:                              #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r9, r8
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r11, r17, r11
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r11, zero, .LBB0_103
	j .LBB0_102
.LBB0_107:                              # %vector.body92.preheader
                                        #   in Loop: Header=BB0_100 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_109
.LBB0_108:                              # %vector.body92
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 130 11 is_stmt 1              # parallel-rne.mlir:130:11
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli.d r[2:3], r[2:3], 4
	seteq.d r1, r[2:3], r[8:9]
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	add.s r8, r10, r14
	stores.w r27, 8(r8)
	addli.d r[27:28], r[20:21], 0
	stores.w r19, 12(r8)
	stores.w r12, 4(r8)
	stores.w r15, 0(r8)
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	bneq r1, zero, .LBB0_99
.LBB0_109:                              # %vector.body92
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	add.ul r[8:9], r[2:3], r[6:7]
	slli r14, r8, 2
	add.s r15, r13, r14
	loads.w r11, 12(r15)
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	and r25, r11, r16
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	setlt.u r1, r4, r25
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r1, zero, .LBB0_111
# %bb.110:                              # %vector.body92
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r11, 0
	j .LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_109 Depth=3
	lui r1, 1024
	or r19, r11, r1
.LBB0_112:                              # %vector.body92
                                        #   in Loop: Header=BB0_109 Depth=3
	loads.w r26, 8(r15)
	and r1, r26, r16
	setlt.u r8, r4, r1
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r8, zero, .LBB0_114
# %bb.113:                              # %vector.body92
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r26, 0
	j .LBB0_115
.LBB0_114:                              #   in Loop: Header=BB0_109 Depth=3
	lui r8, 1024
	or r27, r26, r8
.LBB0_115:                              # %vector.body92
                                        #   in Loop: Header=BB0_109 Depth=3
	loads.w r24, 4(r15)
	and r8, r24, r16
	setlt.u r9, r4, r8
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r9, zero, .LBB0_117
# %bb.116:                              # %vector.body92
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r24, 0
	j .LBB0_118
.LBB0_117:                              #   in Loop: Header=BB0_109 Depth=3
	lui r9, 1024
	or r12, r24, r9
.LBB0_118:                              # %vector.body92
                                        #   in Loop: Header=BB0_109 Depth=3
	loads.w r9, 0(r15)
	and r28, r9, r16
	setlt.u r15, r4, r28
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r15, zero, .LBB0_120
# %bb.119:                              # %vector.body92
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r28, r17, r28
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	beq r28, zero, .LBB0_121
	j .LBB0_122
.LBB0_120:                              #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r15, 1024
	or r15, r9, r15
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r28, r17, r28
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r28, zero, .LBB0_122
.LBB0_121:                              # %vector.body92
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r15, r9, 16
	andi r15, r15, 1
	add.s r9, r9, r15
	add.s r9, r9, r18
	and r15, r9, r5
.LBB0_122:                              # %vector.body92
                                        #   in Loop: Header=BB0_109 Depth=3
	setlt.u r8, r17, r8
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r8, zero, .LBB0_125
# %bb.123:                              # %vector.body92
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r24, 16
	andi r8, r8, 1
	add.s r8, r24, r8
	add.s r8, r8, r18
	and r12, r8, r5
	setlt.u r1, r17, r1
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	beq r1, zero, .LBB0_126
.LBB0_124:                              # %vector.body92
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r25
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r1, zero, .LBB0_108
	j .LBB0_127
.LBB0_125:                              # %vector.body92
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r1
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r1, zero, .LBB0_124
.LBB0_126:                              # %vector.body92
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r18
	and r27, r1, r5
	setlt.u r1, r17, r25
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r1, zero, .LBB0_108
.LBB0_127:                              # %vector.body92
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r18
	and r19, r1, r5
	j .LBB0_108
.LBB0_128:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r1
	.loc	1 121 7                         # parallel-rne.mlir:121:7
	mfence { sm }
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	addli r2, zero, 1
	beq r1, r2, .LBB0_35
.LBB0_129:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_66
.LBB0_130:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_132
.LBB0_131:                              # %middle.block78
                                        #   in Loop: Header=BB0_132 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r11, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 187 9 is_stmt 1               # parallel-rne.mlir:187:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_160
.LBB0_132:                              # %.preheader21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_141 Depth 3
                                        #       Child Loop BB0_136 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r11
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 188 11 is_stmt 1              # parallel-rne.mlir:188:11
	bneq r10, r13, .LBB0_139
# %bb.133:                              # %scalar.ph72.preheader
                                        #   in Loop: Header=BB0_132 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_136
.LBB0_134:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_136 Depth=3
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r18
	and r8, r8, r5
.LBB0_135:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_136 Depth=3
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	setlt.ul r9, r[1:2], r[22:23]
	.loc	1 203 13 is_stmt 1              # parallel-rne.mlir:203:13
	add.s r3, r10, r3
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 203 13                        # parallel-rne.mlir:203:13
	stores.w r8, 0(r3)
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	beq r9, zero, .LBB0_131
.LBB0_136:                              # %scalar.ph72
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_132 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r3, r8, 2
	add.s r8, r13, r3
	loads.w r9, 0(r8)
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	and r11, r9, r16
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	setlt.u r8, r4, r11
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r8, zero, .LBB0_138
# %bb.137:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 200 19 is_stmt 1              # parallel-rne.mlir:200:19
	setlt.u r11, r17, r11
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r11, zero, .LBB0_135
	j .LBB0_134
.LBB0_138:                              #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r9, r8
	.loc	1 200 19 is_stmt 1              # parallel-rne.mlir:200:19
	setlt.u r11, r17, r11
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r11, zero, .LBB0_135
	j .LBB0_134
.LBB0_139:                              # %vector.body74.preheader
                                        #   in Loop: Header=BB0_132 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_141
.LBB0_140:                              # %vector.body74
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 188 11 is_stmt 1              # parallel-rne.mlir:188:11
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli.d r[2:3], r[2:3], 4
	addli.d r[27:28], r[20:21], 0
	seteq.d r1, r[2:3], r[8:9]
	.loc	1 203 13                        # parallel-rne.mlir:203:13
	add.s r8, r10, r14
	stores.w r11, 12(r8)
	stores.w r26, 8(r8)
	stores.w r24, 4(r8)
	stores.w r15, 0(r8)
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	bneq r1, zero, .LBB0_131
.LBB0_141:                              # %vector.body74
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_132 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.ul r[8:9], r[2:3], r[6:7]
	slli r14, r8, 2
	add.s r15, r13, r14
	loads.w r19, 12(r15)
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	and r25, r19, r16
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	setlt.u r1, r4, r25
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r1, zero, .LBB0_143
# %bb.142:                              # %vector.body74
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r19, 0
	j .LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_141 Depth=3
	lui r1, 1024
	or r11, r19, r1
.LBB0_144:                              # %vector.body74
                                        #   in Loop: Header=BB0_141 Depth=3
	loads.w r27, 8(r15)
	and r1, r27, r16
	setlt.u r8, r4, r1
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r8, zero, .LBB0_146
# %bb.145:                              # %vector.body74
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_141 Depth=3
	lui r8, 1024
	or r26, r27, r8
.LBB0_147:                              # %vector.body74
                                        #   in Loop: Header=BB0_141 Depth=3
	loads.w r12, 4(r15)
	and r8, r12, r16
	setlt.u r9, r4, r8
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r9, zero, .LBB0_149
# %bb.148:                              # %vector.body74
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r12, 0
	j .LBB0_150
.LBB0_149:                              #   in Loop: Header=BB0_141 Depth=3
	lui r9, 1024
	or r24, r12, r9
.LBB0_150:                              # %vector.body74
                                        #   in Loop: Header=BB0_141 Depth=3
	loads.w r9, 0(r15)
	and r28, r9, r16
	setlt.u r15, r4, r28
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r15, zero, .LBB0_159
# %bb.151:                              # %vector.body74
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	.loc	1 200 19 is_stmt 1              # parallel-rne.mlir:200:19
	setlt.u r28, r17, r28
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r28, zero, .LBB0_153
.LBB0_152:                              # %vector.body74
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r15, r9, 16
	andi r15, r15, 1
	add.s r9, r9, r15
	add.s r9, r9, r18
	and r15, r9, r5
.LBB0_153:                              # %vector.body74
                                        #   in Loop: Header=BB0_141 Depth=3
	setlt.u r8, r17, r8
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r8, zero, .LBB0_156
# %bb.154:                              # %vector.body74
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r18
	and r24, r8, r5
	setlt.u r1, r17, r1
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	beq r1, zero, .LBB0_157
.LBB0_155:                              # %vector.body74
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r25
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r1, zero, .LBB0_140
	j .LBB0_158
.LBB0_156:                              # %vector.body74
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r1
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r1, zero, .LBB0_155
.LBB0_157:                              # %vector.body74
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r18
	and r26, r1, r5
	setlt.u r1, r17, r25
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r1, zero, .LBB0_140
.LBB0_158:                              # %vector.body74
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r18
	and r11, r1, r5
	j .LBB0_140
.LBB0_159:                              #   in Loop: Header=BB0_141 Depth=3
	lui r15, 1024
	or r15, r9, r15
	.loc	1 200 19 is_stmt 1              # parallel-rne.mlir:200:19
	setlt.u r28, r17, r28
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	beq r28, zero, .LBB0_152
	j .LBB0_153
.LBB0_160:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	mfence { sm }
	.loc	1 208 7                         # parallel-rne.mlir:208:7
	loadli.w r1,  -20(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_67
.LBB0_161:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 237 7                         # parallel-rne.mlir:237:7
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_193
.LBB0_162:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 237 7                         # parallel-rne.mlir:237:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_164
.LBB0_163:                              # %middle.block60
                                        #   in Loop: Header=BB0_164 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 39
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r11, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 245 9 is_stmt 1               # parallel-rne.mlir:245:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_192
.LBB0_164:                              # %.preheader19
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_173 Depth 3
                                        #       Child Loop BB0_168 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r11
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 246 11 is_stmt 1              # parallel-rne.mlir:246:11
	bneq r10, r13, .LBB0_171
# %bb.165:                              # %scalar.ph54.preheader
                                        #   in Loop: Header=BB0_164 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_168
.LBB0_166:                              # %scalar.ph54
                                        #   in Loop: Header=BB0_168 Depth=3
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r18
	and r8, r8, r5
.LBB0_167:                              # %scalar.ph54
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	setlt.ul r9, r[1:2], r[22:23]
	.loc	1 261 13 is_stmt 1              # parallel-rne.mlir:261:13
	add.s r3, r10, r3
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	stores.w r8, 0(r3)
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	beq r9, zero, .LBB0_163
.LBB0_168:                              # %scalar.ph54
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_164 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r3, r8, 2
	add.s r8, r13, r3
	loads.w r9, 0(r8)
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	and r11, r9, r16
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	setlt.u r8, r4, r11
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r8, zero, .LBB0_170
# %bb.169:                              # %scalar.ph54
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r11, r17, r11
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r11, zero, .LBB0_167
	j .LBB0_166
.LBB0_170:                              #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r9, r8
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r11, r17, r11
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r11, zero, .LBB0_167
	j .LBB0_166
.LBB0_171:                              # %vector.body56.preheader
                                        #   in Loop: Header=BB0_164 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_173
.LBB0_172:                              # %vector.body56
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 246 11 is_stmt 1              # parallel-rne.mlir:246:11
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli.d r[2:3], r[2:3], 4
	addli.d r[27:28], r[20:21], 0
	seteq.d r1, r[2:3], r[8:9]
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	add.s r8, r10, r14
	stores.w r11, 12(r8)
	stores.w r26, 8(r8)
	stores.w r24, 4(r8)
	stores.w r15, 0(r8)
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	bneq r1, zero, .LBB0_163
.LBB0_173:                              # %vector.body56
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_164 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	add.ul r[8:9], r[2:3], r[6:7]
	slli r14, r8, 2
	add.s r15, r13, r14
	loads.w r19, 12(r15)
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	and r25, r19, r16
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	setlt.u r1, r4, r25
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r1, zero, .LBB0_175
# %bb.174:                              # %vector.body56
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r19, 0
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_173 Depth=3
	lui r1, 1024
	or r11, r19, r1
.LBB0_176:                              # %vector.body56
                                        #   in Loop: Header=BB0_173 Depth=3
	loads.w r27, 8(r15)
	and r1, r27, r16
	setlt.u r8, r4, r1
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r8, zero, .LBB0_178
# %bb.177:                              # %vector.body56
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_179
.LBB0_178:                              #   in Loop: Header=BB0_173 Depth=3
	lui r8, 1024
	or r26, r27, r8
.LBB0_179:                              # %vector.body56
                                        #   in Loop: Header=BB0_173 Depth=3
	loads.w r12, 4(r15)
	and r8, r12, r16
	setlt.u r9, r4, r8
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r9, zero, .LBB0_181
# %bb.180:                              # %vector.body56
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r12, 0
	j .LBB0_182
.LBB0_181:                              #   in Loop: Header=BB0_173 Depth=3
	lui r9, 1024
	or r24, r12, r9
.LBB0_182:                              # %vector.body56
                                        #   in Loop: Header=BB0_173 Depth=3
	loads.w r9, 0(r15)
	and r28, r9, r16
	setlt.u r15, r4, r28
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r15, zero, .LBB0_191
# %bb.183:                              # %vector.body56
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r28, r17, r28
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r28, zero, .LBB0_185
.LBB0_184:                              # %vector.body56
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r15, r9, 16
	andi r15, r15, 1
	add.s r9, r9, r15
	add.s r9, r9, r18
	and r15, r9, r5
.LBB0_185:                              # %vector.body56
                                        #   in Loop: Header=BB0_173 Depth=3
	setlt.u r8, r17, r8
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r8, zero, .LBB0_188
# %bb.186:                              # %vector.body56
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r18
	and r24, r8, r5
	setlt.u r1, r17, r1
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r1, zero, .LBB0_189
.LBB0_187:                              # %vector.body56
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r25
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r1, zero, .LBB0_172
	j .LBB0_190
.LBB0_188:                              # %vector.body56
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r1
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r1, zero, .LBB0_187
.LBB0_189:                              # %vector.body56
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r18
	and r26, r1, r5
	setlt.u r1, r17, r25
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r1, zero, .LBB0_172
.LBB0_190:                              # %vector.body56
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r18
	and r11, r1, r5
	j .LBB0_172
.LBB0_191:                              #   in Loop: Header=BB0_173 Depth=3
	lui r15, 1024
	or r15, r9, r15
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r28, r17, r28
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r28, zero, .LBB0_184
	j .LBB0_185
.LBB0_192:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 237 7                         # parallel-rne.mlir:237:7
	mfence { sm }
.LBB0_193:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	core_id r1
	addli r2, zero, 5
	bneq r1, r2, .LBB0_225
# %bb.194:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_196
.LBB0_195:                              # %middle.block51
                                        #   in Loop: Header=BB0_196 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r11, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 274 9 is_stmt 1               # parallel-rne.mlir:274:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_224
.LBB0_196:                              # %.preheader18
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_205 Depth 3
                                        #       Child Loop BB0_200 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r11
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 275 11 is_stmt 1              # parallel-rne.mlir:275:11
	bneq r10, r13, .LBB0_203
# %bb.197:                              # %scalar.ph45.preheader
                                        #   in Loop: Header=BB0_196 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_200
.LBB0_198:                              # %scalar.ph45
                                        #   in Loop: Header=BB0_200 Depth=3
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r18
	and r8, r8, r5
.LBB0_199:                              # %scalar.ph45
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 275 11                        # parallel-rne.mlir:275:11
	setlt.ul r9, r[1:2], r[22:23]
	.loc	1 290 13 is_stmt 1              # parallel-rne.mlir:290:13
	add.s r3, r10, r3
	.loc	1 275 11                        # parallel-rne.mlir:275:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 290 13                        # parallel-rne.mlir:290:13
	stores.w r8, 0(r3)
	.loc	1 275 11                        # parallel-rne.mlir:275:11
	beq r9, zero, .LBB0_195
.LBB0_200:                              # %scalar.ph45
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_196 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r3, r8, 2
	add.s r8, r13, r3
	loads.w r9, 0(r8)
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	and r11, r9, r16
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	setlt.u r8, r4, r11
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r8, zero, .LBB0_202
# %bb.201:                              # %scalar.ph45
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 287 19 is_stmt 1              # parallel-rne.mlir:287:19
	setlt.u r11, r17, r11
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r11, zero, .LBB0_199
	j .LBB0_198
.LBB0_202:                              #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r9, r8
	.loc	1 287 19 is_stmt 1              # parallel-rne.mlir:287:19
	setlt.u r11, r17, r11
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r11, zero, .LBB0_199
	j .LBB0_198
.LBB0_203:                              # %vector.body47.preheader
                                        #   in Loop: Header=BB0_196 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_205
.LBB0_204:                              # %vector.body47
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 275 11 is_stmt 1              # parallel-rne.mlir:275:11
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli.d r[2:3], r[2:3], 4
	addli.d r[27:28], r[20:21], 0
	seteq.d r1, r[2:3], r[8:9]
	.loc	1 290 13                        # parallel-rne.mlir:290:13
	add.s r8, r10, r14
	stores.w r11, 12(r8)
	stores.w r26, 8(r8)
	stores.w r24, 4(r8)
	stores.w r15, 0(r8)
	.loc	1 275 11                        # parallel-rne.mlir:275:11
	bneq r1, zero, .LBB0_195
.LBB0_205:                              # %vector.body47
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_196 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	add.ul r[8:9], r[2:3], r[6:7]
	slli r14, r8, 2
	add.s r15, r13, r14
	loads.w r19, 12(r15)
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	and r25, r19, r16
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	setlt.u r1, r4, r25
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r1, zero, .LBB0_207
# %bb.206:                              # %vector.body47
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r19, 0
	j .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_205 Depth=3
	lui r1, 1024
	or r11, r19, r1
.LBB0_208:                              # %vector.body47
                                        #   in Loop: Header=BB0_205 Depth=3
	loads.w r27, 8(r15)
	and r1, r27, r16
	setlt.u r8, r4, r1
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r8, zero, .LBB0_210
# %bb.209:                              # %vector.body47
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_211
.LBB0_210:                              #   in Loop: Header=BB0_205 Depth=3
	lui r8, 1024
	or r26, r27, r8
.LBB0_211:                              # %vector.body47
                                        #   in Loop: Header=BB0_205 Depth=3
	loads.w r12, 4(r15)
	and r8, r12, r16
	setlt.u r9, r4, r8
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r9, zero, .LBB0_213
# %bb.212:                              # %vector.body47
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r12, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_205 Depth=3
	lui r9, 1024
	or r24, r12, r9
.LBB0_214:                              # %vector.body47
                                        #   in Loop: Header=BB0_205 Depth=3
	loads.w r9, 0(r15)
	and r28, r9, r16
	setlt.u r15, r4, r28
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r15, zero, .LBB0_223
# %bb.215:                              # %vector.body47
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	.loc	1 287 19 is_stmt 1              # parallel-rne.mlir:287:19
	setlt.u r28, r17, r28
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r28, zero, .LBB0_217
.LBB0_216:                              # %vector.body47
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r15, r9, 16
	andi r15, r15, 1
	add.s r9, r9, r15
	add.s r9, r9, r18
	and r15, r9, r5
.LBB0_217:                              # %vector.body47
                                        #   in Loop: Header=BB0_205 Depth=3
	setlt.u r8, r17, r8
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r8, zero, .LBB0_220
# %bb.218:                              # %vector.body47
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r18
	and r24, r8, r5
	setlt.u r1, r17, r1
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	beq r1, zero, .LBB0_221
.LBB0_219:                              # %vector.body47
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r25
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r1, zero, .LBB0_204
	j .LBB0_222
.LBB0_220:                              # %vector.body47
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r1
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r1, zero, .LBB0_219
.LBB0_221:                              # %vector.body47
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r18
	and r26, r1, r5
	setlt.u r1, r17, r25
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r1, zero, .LBB0_204
.LBB0_222:                              # %vector.body47
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r18
	and r11, r1, r5
	j .LBB0_204
.LBB0_223:                              #   in Loop: Header=BB0_205 Depth=3
	lui r15, 1024
	or r15, r9, r15
	.loc	1 287 19 is_stmt 1              # parallel-rne.mlir:287:19
	setlt.u r28, r17, r28
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	beq r28, zero, .LBB0_216
	j .LBB0_217
.LBB0_224:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	mfence { sm }
.LBB0_225:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 295 7                         # parallel-rne.mlir:295:7
	core_id r1
	addli r2, zero, 6
	bneq r1, r2, .LBB0_257
# %bb.226:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 48
	.loc	1 295 7                         # parallel-rne.mlir:295:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_228
.LBB0_227:                              # %middle.block42
                                        #   in Loop: Header=BB0_228 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 55
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r11, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 303 9 is_stmt 1               # parallel-rne.mlir:303:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_256
.LBB0_228:                              # %.preheader17
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_237 Depth 3
                                        #       Child Loop BB0_232 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r11
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 304 11 is_stmt 1              # parallel-rne.mlir:304:11
	bneq r10, r13, .LBB0_235
# %bb.229:                              # %scalar.ph36.preheader
                                        #   in Loop: Header=BB0_228 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_232
.LBB0_230:                              # %scalar.ph36
                                        #   in Loop: Header=BB0_232 Depth=3
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r18
	and r8, r8, r5
.LBB0_231:                              # %scalar.ph36
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 304 11                        # parallel-rne.mlir:304:11
	setlt.ul r9, r[1:2], r[22:23]
	.loc	1 319 13 is_stmt 1              # parallel-rne.mlir:319:13
	add.s r3, r10, r3
	.loc	1 304 11                        # parallel-rne.mlir:304:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 319 13                        # parallel-rne.mlir:319:13
	stores.w r8, 0(r3)
	.loc	1 304 11                        # parallel-rne.mlir:304:11
	beq r9, zero, .LBB0_227
.LBB0_232:                              # %scalar.ph36
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_228 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r3, r8, 2
	add.s r8, r13, r3
	loads.w r9, 0(r8)
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	and r11, r9, r16
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	setlt.u r8, r4, r11
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r8, zero, .LBB0_234
# %bb.233:                              # %scalar.ph36
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 316 19 is_stmt 1              # parallel-rne.mlir:316:19
	setlt.u r11, r17, r11
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r11, zero, .LBB0_231
	j .LBB0_230
.LBB0_234:                              #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r9, r8
	.loc	1 316 19 is_stmt 1              # parallel-rne.mlir:316:19
	setlt.u r11, r17, r11
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r11, zero, .LBB0_231
	j .LBB0_230
.LBB0_235:                              # %vector.body38.preheader
                                        #   in Loop: Header=BB0_228 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_237
.LBB0_236:                              # %vector.body38
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 304 11 is_stmt 1              # parallel-rne.mlir:304:11
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli.d r[2:3], r[2:3], 4
	addli.d r[27:28], r[20:21], 0
	seteq.d r1, r[2:3], r[8:9]
	.loc	1 319 13                        # parallel-rne.mlir:319:13
	add.s r8, r10, r14
	stores.w r11, 12(r8)
	stores.w r26, 8(r8)
	stores.w r24, 4(r8)
	stores.w r15, 0(r8)
	.loc	1 304 11                        # parallel-rne.mlir:304:11
	bneq r1, zero, .LBB0_227
.LBB0_237:                              # %vector.body38
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_228 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	add.ul r[8:9], r[2:3], r[6:7]
	slli r14, r8, 2
	add.s r15, r13, r14
	loads.w r19, 12(r15)
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	and r25, r19, r16
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	setlt.u r1, r4, r25
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r1, zero, .LBB0_239
# %bb.238:                              # %vector.body38
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r19, 0
	j .LBB0_240
.LBB0_239:                              #   in Loop: Header=BB0_237 Depth=3
	lui r1, 1024
	or r11, r19, r1
.LBB0_240:                              # %vector.body38
                                        #   in Loop: Header=BB0_237 Depth=3
	loads.w r27, 8(r15)
	and r1, r27, r16
	setlt.u r8, r4, r1
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r8, zero, .LBB0_242
# %bb.241:                              # %vector.body38
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_243
.LBB0_242:                              #   in Loop: Header=BB0_237 Depth=3
	lui r8, 1024
	or r26, r27, r8
.LBB0_243:                              # %vector.body38
                                        #   in Loop: Header=BB0_237 Depth=3
	loads.w r12, 4(r15)
	and r8, r12, r16
	setlt.u r9, r4, r8
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r9, zero, .LBB0_245
# %bb.244:                              # %vector.body38
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r12, 0
	j .LBB0_246
.LBB0_245:                              #   in Loop: Header=BB0_237 Depth=3
	lui r9, 1024
	or r24, r12, r9
.LBB0_246:                              # %vector.body38
                                        #   in Loop: Header=BB0_237 Depth=3
	loads.w r9, 0(r15)
	and r28, r9, r16
	setlt.u r15, r4, r28
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r15, zero, .LBB0_255
# %bb.247:                              # %vector.body38
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	.loc	1 316 19 is_stmt 1              # parallel-rne.mlir:316:19
	setlt.u r28, r17, r28
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r28, zero, .LBB0_249
.LBB0_248:                              # %vector.body38
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r15, r9, 16
	andi r15, r15, 1
	add.s r9, r9, r15
	add.s r9, r9, r18
	and r15, r9, r5
.LBB0_249:                              # %vector.body38
                                        #   in Loop: Header=BB0_237 Depth=3
	setlt.u r8, r17, r8
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r8, zero, .LBB0_252
# %bb.250:                              # %vector.body38
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r18
	and r24, r8, r5
	setlt.u r1, r17, r1
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	beq r1, zero, .LBB0_253
.LBB0_251:                              # %vector.body38
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r25
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r1, zero, .LBB0_236
	j .LBB0_254
.LBB0_252:                              # %vector.body38
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r1
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r1, zero, .LBB0_251
.LBB0_253:                              # %vector.body38
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r18
	and r26, r1, r5
	setlt.u r1, r17, r25
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r1, zero, .LBB0_236
.LBB0_254:                              # %vector.body38
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r18
	and r11, r1, r5
	j .LBB0_236
.LBB0_255:                              #   in Loop: Header=BB0_237 Depth=3
	lui r15, 1024
	or r15, r9, r15
	.loc	1 316 19 is_stmt 1              # parallel-rne.mlir:316:19
	setlt.u r28, r17, r28
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	beq r28, zero, .LBB0_248
	j .LBB0_249
.LBB0_256:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 295 7                         # parallel-rne.mlir:295:7
	mfence { sm }
.LBB0_257:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 324 7                         # parallel-rne.mlir:324:7
	loadli.w r1,  -36(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_289
# %bb.258:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 324 7                         # parallel-rne.mlir:324:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_260
.LBB0_259:                              # %middle.block
                                        #   in Loop: Header=BB0_260 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 63
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r11, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 332 9 is_stmt 1               # parallel-rne.mlir:332:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_288
.LBB0_260:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_269 Depth 3
                                        #       Child Loop BB0_264 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r11
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 333 11 is_stmt 1              # parallel-rne.mlir:333:11
	bneq r10, r13, .LBB0_267
# %bb.261:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_260 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_264
.LBB0_262:                              # %scalar.ph
                                        #   in Loop: Header=BB0_264 Depth=3
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r18
	and r8, r8, r5
.LBB0_263:                              # %scalar.ph
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	setlt.ul r9, r[1:2], r[22:23]
	.loc	1 348 13 is_stmt 1              # parallel-rne.mlir:348:13
	add.s r3, r10, r3
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 348 13                        # parallel-rne.mlir:348:13
	stores.w r8, 0(r3)
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	beq r9, zero, .LBB0_259
.LBB0_264:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_260 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r3, r8, 2
	add.s r8, r13, r3
	loads.w r9, 0(r8)
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	and r11, r9, r16
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	setlt.u r8, r4, r11
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r8, zero, .LBB0_266
# %bb.265:                              # %scalar.ph
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 345 19 is_stmt 1              # parallel-rne.mlir:345:19
	setlt.u r11, r17, r11
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r11, zero, .LBB0_263
	j .LBB0_262
.LBB0_266:                              #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r9, r8
	.loc	1 345 19 is_stmt 1              # parallel-rne.mlir:345:19
	setlt.u r11, r17, r11
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r11, zero, .LBB0_263
	j .LBB0_262
.LBB0_267:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_260 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_269
.LBB0_268:                              # %vector.body
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 333 11 is_stmt 1              # parallel-rne.mlir:333:11
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli.d r[2:3], r[2:3], 4
	addli.d r[27:28], r[20:21], 0
	seteq.d r1, r[2:3], r[8:9]
	.loc	1 348 13                        # parallel-rne.mlir:348:13
	add.s r8, r10, r14
	stores.w r11, 12(r8)
	stores.w r26, 8(r8)
	stores.w r24, 4(r8)
	stores.w r15, 0(r8)
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	bneq r1, zero, .LBB0_259
.LBB0_269:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_260 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	add.ul r[8:9], r[2:3], r[6:7]
	slli r14, r8, 2
	add.s r15, r13, r14
	loads.w r19, 12(r15)
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	and r25, r19, r16
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	setlt.u r1, r4, r25
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r1, zero, .LBB0_271
# %bb.270:                              # %vector.body
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r19, 0
	j .LBB0_272
.LBB0_271:                              #   in Loop: Header=BB0_269 Depth=3
	lui r1, 1024
	or r11, r19, r1
.LBB0_272:                              # %vector.body
                                        #   in Loop: Header=BB0_269 Depth=3
	loads.w r27, 8(r15)
	and r1, r27, r16
	setlt.u r8, r4, r1
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r8, zero, .LBB0_274
# %bb.273:                              # %vector.body
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_269 Depth=3
	lui r8, 1024
	or r26, r27, r8
.LBB0_275:                              # %vector.body
                                        #   in Loop: Header=BB0_269 Depth=3
	loads.w r12, 4(r15)
	and r8, r12, r16
	setlt.u r9, r4, r8
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r9, zero, .LBB0_277
# %bb.276:                              # %vector.body
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r12, 0
	j .LBB0_278
.LBB0_277:                              #   in Loop: Header=BB0_269 Depth=3
	lui r9, 1024
	or r24, r12, r9
.LBB0_278:                              # %vector.body
                                        #   in Loop: Header=BB0_269 Depth=3
	loads.w r9, 0(r15)
	and r28, r9, r16
	setlt.u r15, r4, r28
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r15, zero, .LBB0_287
# %bb.279:                              # %vector.body
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	.loc	1 345 19 is_stmt 1              # parallel-rne.mlir:345:19
	setlt.u r28, r17, r28
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r28, zero, .LBB0_281
.LBB0_280:                              # %vector.body
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r15, r9, 16
	andi r15, r15, 1
	add.s r9, r9, r15
	add.s r9, r9, r18
	and r15, r9, r5
.LBB0_281:                              # %vector.body
                                        #   in Loop: Header=BB0_269 Depth=3
	setlt.u r8, r17, r8
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r8, zero, .LBB0_284
# %bb.282:                              # %vector.body
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r18
	and r24, r8, r5
	setlt.u r1, r17, r1
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r1, zero, .LBB0_285
.LBB0_283:                              # %vector.body
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r25
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r1, zero, .LBB0_268
	j .LBB0_286
.LBB0_284:                              # %vector.body
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r1
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r1, zero, .LBB0_283
.LBB0_285:                              # %vector.body
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r18
	and r26, r1, r5
	setlt.u r1, r17, r25
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r1, zero, .LBB0_268
.LBB0_286:                              # %vector.body
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r18
	and r11, r1, r5
	j .LBB0_268
.LBB0_287:                              #   in Loop: Header=BB0_269 Depth=3
	lui r15, 1024
	or r15, r9, r15
	.loc	1 345 19 is_stmt 1              # parallel-rne.mlir:345:19
	setlt.u r28, r17, r28
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r28, zero, .LBB0_280
	j .LBB0_281
.LBB0_288:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 324 7                         # parallel-rne.mlir:324:7
	mfence { sm }
.LBB0_289:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 354 7                         # parallel-rne.mlir:354:7
	loadli.w r1,  -20(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.290:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r22
	addli r23, zero, 64
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	bneq r22, zero, .LBB0_7
# %bb.291:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -76(r30)                  # 4-byte Folded Reload
	addli r2, zero, 896
	addli r12, zero, 5
	zext_int2long r[2:3], r2
	slli r1, r1, 7
	.loc	1 361 13 is_stmt 1              # parallel-rne.mlir:361:13
	zext_int2long r[6:7], r1
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	min.ul r[1:2], r[6:7], r[2:3]
	loadli.w r3,  -60(r30)                  # 4-byte Folded Reload
	addli.d r[1:2], r[1:2], 128
	slli r3, r3, 6
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	max.ul r[1:2], r[1:2], r[6:7]
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	sext_int2long r[8:9], r3
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	addli r3, zero, 17
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	sub.sl r[1:2], r[1:2], r[6:7]
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	min.sl r[10:11], r[8:9], r[27:28]
	addli.d r[6:7], r[10:11], 64
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	load.d r[10:11], -8(r30)                # 8-byte Folded Reload
	.loc	1 359 13                        # parallel-rne.mlir:359:13
	max.sl r[6:7], r[6:7], r[8:9]
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	min.ul r[1:2], r[1:2], r[10:11]
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	load.d r[10:11], -56(r30)               # 8-byte Folded Reload
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	sub.sl r[6:7], r[6:7], r[8:9]
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	load.d r[8:9], 16(r30)
	sll.d r[10:11], r[10:11], r3
	addli r3, zero, 12
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	min.sl r[6:7], r[6:7], r[27:28]
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	add.ul r[8:9], r[8:9], r[10:11]
	load.d r[10:11], -72(r30)               # 8-byte Folded Reload
	xwait r3, 0
	lui r3, 64
	lock zero, r12
	ori r3, r3, 64
	add.ul r[8:9], r[8:9], r[10:11]
	addli r11, zero, 1
	addli r10, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	add.s r3, r13, r3
	dma_cfg r11, r11, zero, 0
	andi r1, r1, 62
	dma_cfg zero, r11, zero, 1
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r3, r23, 3
	srli r3, r10, 5
	dma_cfg r23, r2, r3, 4
	addli r2, zero, 512
	addli r3, zero, 2048
	dma_cfg r3, r2, r6, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r12
	j .LBB0_6
.LBB0_292:                              # %._crit_edge
	.loc	1 373 5                         # parallel-rne.mlir:373:5
	xsignal zero, 0
	bneq r22, zero, .LBB0_294
# %bb.293:
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
.LBB0_294:
	.loc	1 374 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:374:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-taevah68" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
