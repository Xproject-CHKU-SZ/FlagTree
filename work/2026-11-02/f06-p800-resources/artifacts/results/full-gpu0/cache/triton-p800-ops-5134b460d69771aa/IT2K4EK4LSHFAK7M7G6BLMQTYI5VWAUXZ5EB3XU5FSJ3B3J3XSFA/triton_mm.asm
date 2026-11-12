	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-4c40gjne" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -168
	addli r1, zero, 1
.Ltmp0:
	.loc	1 31 5 prologue_end             # parallel-rne.mlir:31:5
	core_id r11
	addli r30, sp, 104
	xsignal_mode_cfg r1
	beq r11, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 31 5                          # parallel-rne.mlir:31:5
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
	.loc	1 33 10 is_stmt 1               # parallel-rne.mlir:33:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r1, r2, r1
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	mul.s r3, r1, r3
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	addli r2, r2, -1
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	div.s r2, r2, r4
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	load_param_i r4, 0
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r1, r2, r4
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	fmac.s r2, r2, r4
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	min.s r2, r2, r3
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	ble.s r2, r1, .LBB0_288
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 42 11 is_stmt 1               # parallel-rne.mlir:42:11
	sext_int2long r[12:13], r1
	addli r16, zero, 2
	addli r21, zero, 5
	addli r20, zero, 1
	addli r24, zero, 6
	addli r27, zero, 3
	lui r23, 1024
	lui r22, 522240
	lui r14, 1048560
	addli r17, zero, 0
	store.d r[2:3], -88(r30)                # 8-byte Folded Spill
	addli r2, zero, 1023
	lui r1, 1048575
	store.d r[1:2], -96(r30)                # 8-byte Folded Spill
	lui r1, 524287
	lui r2, 522239
	ori r15, r1, 4095
	lui r1, 7
	ori r28, r2, 4095
	ori r25, r1, 4095
	zext_int2long r[1:2], zero
	store.d r[1:2], -104(r30)               # 8-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 347 7                         # parallel-rne.mlir:347:7
	addli r1, zero, 11
	addli r16, zero, 2
	addli r20, zero, 1
	xsignal r1, 0
	addli r1, zero, 12
	.loc	1 348 7                         # parallel-rne.mlir:348:7
	xsignal r1, 0
	load.d r[12:13], -32(r30)               # 8-byte Folded Reload
	loadli.w r17,  -20(r30)                 # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	load.d r[1:2], -88(r30)                 # 8-byte Folded Reload
	addli.d r[12:13], r[12:13], 1
	addli r17, r17, 1
	setlt.sl r1, r[12:13], r[1:2]
	beq r1, zero, .LBB0_288
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_39 Depth 2
                                        #       Child Loop BB0_48 Depth 3
                                        #       Child Loop BB0_42 Depth 3
                                        #     Child Loop BB0_70 Depth 2
                                        #       Child Loop BB0_79 Depth 3
                                        #       Child Loop BB0_73 Depth 3
                                        #     Child Loop BB0_101 Depth 2
                                        #       Child Loop BB0_110 Depth 3
                                        #       Child Loop BB0_104 Depth 3
                                        #     Child Loop BB0_132 Depth 2
                                        #       Child Loop BB0_141 Depth 3
                                        #       Child Loop BB0_135 Depth 3
                                        #     Child Loop BB0_163 Depth 2
                                        #       Child Loop BB0_172 Depth 3
                                        #       Child Loop BB0_166 Depth 3
                                        #     Child Loop BB0_194 Depth 2
                                        #       Child Loop BB0_203 Depth 3
                                        #       Child Loop BB0_197 Depth 3
                                        #     Child Loop BB0_225 Depth 2
                                        #       Child Loop BB0_234 Depth 3
                                        #       Child Loop BB0_228 Depth 3
                                        #     Child Loop BB0_256 Depth 2
                                        #       Child Loop BB0_265 Depth 3
                                        #       Child Loop BB0_259 Depth 3
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	loadli.w r1,  32(r30)
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	loadli.w r2,  28(r30)
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	addli r3, zero, 8
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	div.s r1, r12, r1
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	div.s r5, r1, r2
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	addli r1, zero, 256
	div.s r6, r5, r1
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	slli r1, r6, 3
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	sub.s r2, r16, r1
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	min.s r7, r2, r3
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	mod.s r2, r5, r7
	.loc	1 61 13                         # parallel-rne.mlir:61:13
	add.s r1, r2, r1
	.loc	1 74 13                         # parallel-rne.mlir:74:13
	setlt.u r3, r20, r1
	.loc	1 69 13                         # parallel-rne.mlir:69:13
	zext_int2long r[8:9], r1
	storeli.w r1, -60(r30)                  # 4-byte Folded Spill
	.loc	1 73 13                         # parallel-rne.mlir:73:13
	addli r1, zero, 11
	sll.d r[1:2], r[8:9], r1
	store.d r[8:9], -56(r30)                # 8-byte Folded Spill
	.loc	1 78 13                         # parallel-rne.mlir:78:13
	bneq r3, zero, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 13 is_stmt 0                # parallel-rne.mlir:0:13
	load.d r[3:4], -104(r30)                # 8-byte Folded Reload
	j .LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	load.d r[3:4], -96(r30)                 # 8-byte Folded Reload
	and.d r[3:4], r[1:2], r[3:4]
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	mod.s r8, r17, r16
	addli r9, zero, 32
	.loc	1 92 7 is_stmt 1                # parallel-rne.mlir:92:7
	storeli.w r17, -20(r30)                 # 4-byte Folded Spill
	zext_int2long r[9:10], r9
	store.d r[9:10], -8(r30)                # 8-byte Folded Spill
	.loc	1 86 13                         # parallel-rne.mlir:86:13
	slli r26, r8, 13
	.loc	1 88 13                         # parallel-rne.mlir:88:13
	addli r18, r26, 8192
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	bneq r11, r20, .LBB0_14
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.sl r[1:2], r[1:2], r[3:4]
	addli r19, zero, 12
	sra.d r[1:2], r[1:2], r24
	min.sl r[3:4], r[1:2], r[9:10]
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	load.d r[9:10], -56(r30)                # 8-byte Folded Reload
	xwait r27, 0
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	sub.sl r[1:2], r[3:4], r[1:2]
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	load.d r[3:4], 0(r30)
	sll.d r[9:10], r[9:10], r19
	addli r2, r1, 32
	add.ul r[3:4], r[3:4], r[9:10]
	blt.s r20, r17, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	lock zero, r21
	addli r1, zero, 4
	addli r9, zero, 32
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 7
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
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
	dma_cfg r20, r20, zero, 0
	dma_cfg r20, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r18, zero, r1, 3
	addli r1, zero, 128
	dma_cfg r1, zero, r16, 4
	addli r1, zero, 256
	dma_cfg r1, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r21
.LBB0_13:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r9, zero, 4
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	addli r1, r26, 8256
	addli r10, zero, 64
	addli r17, zero, 0
	lock zero, r9
	dma_cfg r20, r20, zero, 0
	dma_cfg zero, r4, zero, 2
	dma_cfg r1, r3, r10, 3
	addli r4, zero, 128
	addli r1, zero, 256
	addli r3, zero, 7
	dma_cfg r4, r10, r16, 4
	dma_cfg r1, r4, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	lock zero, r21
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 11
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 13
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
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
	dma_cfg r20, r20, zero, 0
	dma_cfg r20, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r18, zero, r10, 3
	dma_cfg r4, zero, r16, 4
	dma_cfg r1, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r21
	xsignal r16, 0
	.loc	1 93 7 is_stmt 1                # parallel-rne.mlir:93:7
	j .LBB0_17
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r11, r16, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=1
	xwait r16, 0
	xwait r21, 0
	lock zero, zero
	addli r2, zero, 64
	addli r1, zero, 32
	addli r17, zero, 1
	ds_cfg r16, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r1, zero, 13
	addli r1, zero, 4
	shuffle_batch r26, r18, r2, 1
	unlock zero
	xsignal r27, 0
	xsignal r1, 0
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r17, zero, 0
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	slli r1, r6, 8
	.loc	1 103 13 is_stmt 1              # parallel-rne.mlir:103:13
	lui r3, 6
	.loc	1 107 7                         # parallel-rne.mlir:107:7
	store.d r[12:13], -32(r30)              # 8-byte Folded Spill
	storeli.w r17, -44(r30)                 # 4-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r1, r5, r1
	slli r5, r8, 12
	.loc	1 103 13 is_stmt 1              # parallel-rne.mlir:103:13
	add.s r6, r26, r3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.s r9, r1, r7
	zext_int2long r[1:2], r9
	.loc	1 107 7 is_stmt 1               # parallel-rne.mlir:107:7
	storeli.w r9, -76(r30)                  # 4-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sll.d r[1:2], r[1:2], r21
	.loc	1 107 7                         # parallel-rne.mlir:107:7
	sll.d r[3:4], r[1:2], r20
	store.d r[3:4], -72(r30)                # 8-byte Folded Spill
	bneq r11, r24, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[1:2], 8(r30)
	addli r7, zero, 7
	xwait r7, 0
	add.ul r[1:2], r[1:2], r[3:4]
	loadli.w r3,  -20(r30)                  # 4-byte Folded Reload
	blt.s r20, r3, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=1
	lock zero, r21
	addli r3, zero, 4
	addli r4, zero, 128
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 11
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 13
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
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
	addli r3, zero, 64
	dma_cfg r20, r20, zero, 0
	dma_cfg r20, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r3, 3
	dma_cfg r4, zero, r20, 4
	dma_cfg r4, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r21
.LBB0_20:                               # %.thread14
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r3, 6
	addli r4, zero, 4
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	addli r8, zero, 64
	ori r3, r3, 64
	.loc	1 107 7                         # parallel-rne.mlir:107:7
	lock zero, r4
	dma_cfg r20, r20, zero, 0
	add.s r3, r26, r3
	dma_cfg zero, r2, zero, 2
	dma_cfg r3, r1, r8, 3
	addli r2, zero, 128
	addli r1, zero, 2048
	dma_cfg r2, r8, r20, 4
	dma_cfg r2, r1, r8, 5
	addli r1, zero, 8
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	lock zero, r21
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r7, 10
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
	dma_cfg r20, r20, zero, 0
	dma_cfg r20, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r8, 3
	dma_cfg r2, zero, r20, 4
	dma_cfg r2, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r21
	xsignal r24, 0
	.loc	1 108 7 is_stmt 1               # parallel-rne.mlir:108:7
	j .LBB0_29
.LBB0_21:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 4
	beq r11, r1, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 7
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	bneq r11, r2, .LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 9
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	xwait r24, 0
	addli r3, zero, 64
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 32
	ds_cfg r16, zero, 0
	ds_cfg r1, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r1, zero, 13
	addli r1, zero, 1
	shuffle_coa r26, r6, r3, 2
	unlock zero
	xsignal r2, 0
	storeli.w r1, -36(r30)                  # 4-byte Folded Spill
	addli r1, zero, 8
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	xsignal r1, 0
	j .LBB0_28
.LBB0_24:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 4
	.loc	1 109 7 is_stmt 1               # parallel-rne.mlir:109:7
	addli r1, zero, 8
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	addli r4, zero, 1
	addli r3, zero, 64
	xwait r2, 0
	xwait r1, 0
	addli r1, zero, 11
	xwait r1, 0
	addli r1, zero, 32
	lock zero, r4
	mm_cfg r1, r3, r1, 0
	addli r1, zero, 1
	mm_cfg r2, r4, r4, 2
	mm r5, r26, r26, 8
	storeli.w r1, -40(r30)                  # 4-byte Folded Spill
	addli r1, zero, 9
	unlock r4
	xsignal r21, 0
	xsignal r1, 0
	addli r1, zero, 10
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
	j .LBB0_28
.LBB0_25:                               # %.thread15
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 116 7 is_stmt 1               # parallel-rne.mlir:116:7
	bneq r11, r27, .LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	xwait r1, 0
	.loc	1 117 7                         # parallel-rne.mlir:117:7
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
.LBB0_28:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 31
.LBB0_29:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 114 13 is_stmt 1              # parallel-rne.mlir:114:13
	lui r2, 10
	.loc	1 119 7                         # parallel-rne.mlir:119:7
	xfence
	zext_int2long r[17:18], r1
	.loc	1 120 7                         # parallel-rne.mlir:120:7
	mfence { lm, sm, gm }
	.loc	1 114 13                        # parallel-rne.mlir:114:13
	add.s r20, r5, r2
	.loc	1 121 7                         # parallel-rne.mlir:121:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 122 7                         # parallel-rne.mlir:122:7
	beq r11, zero, .LBB0_37
# %bb.30:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	addli r1, zero, 1
	beq r11, r1, .LBB0_68
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_99
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	beq r11, r27, .LBB0_130
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_161
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 262 7                         # parallel-rne.mlir:262:7
	beq r11, r21, .LBB0_192
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 290 7                         # parallel-rne.mlir:290:7
	beq r11, r24, .LBB0_223
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 318 7                         # parallel-rne.mlir:318:7
	loadli.w r1,  -36(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_254
	j .LBB0_285
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 122 7                         # parallel-rne.mlir:122:7
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_39
.LBB0_38:                               # %middle.block97
                                        #   in Loop: Header=BB0_39 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r27, zero, 3
	load.d r[3:4], -16(r30)                 # 8-byte Folded Reload
	addli r21, zero, 5
	zext_int2long r[1:2], r27
	.loc	1 129 9 is_stmt 1               # parallel-rne.mlir:129:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_67
.LBB0_39:                               # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_48 Depth 3
                                        #       Child Loop BB0_42 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	sll.d r[26:27], r[2:3], r1
	.loc	1 130 11 is_stmt 1              # parallel-rne.mlir:130:11
	bneq r20, r5, .LBB0_46
# %bb.40:                               # %scalar.ph91.preheader
                                        #   in Loop: Header=BB0_39 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_42
.LBB0_41:                               # %scalar.ph91
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	setlt.ul r6, r[1:2], r[17:18]
	.loc	1 145 13 is_stmt 1              # parallel-rne.mlir:145:13
	add.s r3, r20, r3
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	stores.w r4, 0(r3)
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	beq r6, zero, .LBB0_38
.LBB0_42:                               # %scalar.ph91
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	add.ul r[3:4], r[1:2], r[26:27]
	slli r3, r3, 2
	add.s r4, r5, r3
	loads.w r6, 0(r4)
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	and r7, r6, r15
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	setlt.u r4, r22, r7
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r4, zero, .LBB0_44
# %bb.43:                               # %scalar.ph91
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r6, 0
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r7, r28, r7
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r7, zero, .LBB0_41
	j .LBB0_45
.LBB0_44:                               #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r6, r23
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r7, r28, r7
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r7, zero, .LBB0_41
.LBB0_45:                               # %scalar.ph91
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r6, 16
	andi r4, r4, 1
	add.s r4, r6, r4
	add.s r4, r4, r25
	and r4, r4, r14
	j .LBB0_41
.LBB0_46:                               # %vector.body93.preheader
                                        #   in Loop: Header=BB0_39 Depth=2
	zext_int2long r[2:3], zero
	j .LBB0_48
.LBB0_47:                               # %vector.body93
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 130 11 is_stmt 1              # parallel-rne.mlir:130:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	add.s r4, r20, r8
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	seteq.d r1, r[2:3], r[6:7]
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	stores.w r13, 12(r4)
	stores.w r24, 8(r4)
	stores.w r11, 4(r4)
	stores.w r21, 0(r4)
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	bneq r1, zero, .LBB0_38
.LBB0_48:                               # %vector.body93
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	add.ul r[6:7], r[2:3], r[26:27]
	slli r8, r6, 2
	add.s r21, r5, r8
	loads.w r19, 12(r21)
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	and r16, r19, r15
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	setlt.u r1, r22, r16
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r1, zero, .LBB0_50
# %bb.49:                               # %vector.body93
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r19, 0
	j .LBB0_51
.LBB0_50:                               #   in Loop: Header=BB0_48 Depth=3
	or r13, r19, r23
.LBB0_51:                               # %vector.body93
                                        #   in Loop: Header=BB0_48 Depth=3
	loads.w r4, 8(r21)
	and r12, r4, r15
	setlt.u r1, r22, r12
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r1, zero, .LBB0_53
# %bb.52:                               # %vector.body93
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_48 Depth=3
	or r24, r4, r23
.LBB0_54:                               # %vector.body93
                                        #   in Loop: Header=BB0_48 Depth=3
	loads.w r1, 4(r21)
	and r6, r1, r15
	setlt.u r7, r22, r6
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r7, zero, .LBB0_56
# %bb.55:                               # %vector.body93
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r1, 0
	j .LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_48 Depth=3
	or r11, r1, r23
.LBB0_57:                               # %vector.body93
                                        #   in Loop: Header=BB0_48 Depth=3
	loads.w r7, 0(r21)
	and r9, r7, r15
	setlt.u r10, r22, r9
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r10, zero, .LBB0_59
# %bb.58:                               # %vector.body93
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r7, 0
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r9, r28, r9
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	beq r9, zero, .LBB0_60
	j .LBB0_61
.LBB0_59:                               #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r7, r23
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r9, r28, r9
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r9, zero, .LBB0_61
.LBB0_60:                               # %vector.body93
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r7, 16
	andi r9, r9, 1
	add.s r7, r7, r9
	add.s r7, r7, r25
	and r21, r7, r14
.LBB0_61:                               # %vector.body93
                                        #   in Loop: Header=BB0_48 Depth=3
	setlt.u r6, r28, r6
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r6, zero, .LBB0_63
# %bb.62:                               # %vector.body93
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r1, 16
	andi r6, r6, 1
	add.s r1, r1, r6
	add.s r1, r1, r25
	and r11, r1, r14
.LBB0_63:                               # %vector.body93
                                        #   in Loop: Header=BB0_48 Depth=3
	setlt.u r1, r28, r12
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r1, zero, .LBB0_65
# %bb.64:                               # %vector.body93
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r25
	and r24, r1, r14
.LBB0_65:                               # %vector.body93
                                        #   in Loop: Header=BB0_48 Depth=3
	setlt.u r1, r28, r16
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r1, zero, .LBB0_47
# %bb.66:                               # %vector.body93
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r25
	and r13, r1, r14
	j .LBB0_47
.LBB0_67:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r11
	addli r24, zero, 6
	.loc	1 122 7                         # parallel-rne.mlir:122:7
	mfence { sm }
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	addli r1, zero, 1
	bneq r11, r1, .LBB0_31
.LBB0_68:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 4
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_70
.LBB0_69:                               # %middle.block88
                                        #   in Loop: Header=BB0_70 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 7
	load.d r[3:4], -16(r30)                 # 8-byte Folded Reload
	addli r21, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 157 9 is_stmt 1               # parallel-rne.mlir:157:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_98
.LBB0_70:                               # %.preheader21
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_79 Depth 3
                                        #       Child Loop BB0_73 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	sll.d r[26:27], r[2:3], r1
	.loc	1 158 11 is_stmt 1              # parallel-rne.mlir:158:11
	bneq r20, r5, .LBB0_77
# %bb.71:                               # %scalar.ph82.preheader
                                        #   in Loop: Header=BB0_70 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_73
.LBB0_72:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	setlt.ul r6, r[1:2], r[17:18]
	.loc	1 173 13 is_stmt 1              # parallel-rne.mlir:173:13
	add.s r3, r20, r3
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 173 13                        # parallel-rne.mlir:173:13
	stores.w r4, 0(r3)
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	beq r6, zero, .LBB0_69
.LBB0_73:                               # %scalar.ph82
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	add.ul r[3:4], r[1:2], r[26:27]
	slli r3, r3, 2
	add.s r4, r5, r3
	loads.w r6, 0(r4)
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	and r7, r6, r15
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	setlt.u r4, r22, r7
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r4, zero, .LBB0_75
# %bb.74:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r6, 0
	.loc	1 170 19 is_stmt 1              # parallel-rne.mlir:170:19
	setlt.u r7, r28, r7
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r7, zero, .LBB0_72
	j .LBB0_76
.LBB0_75:                               #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r6, r23
	.loc	1 170 19 is_stmt 1              # parallel-rne.mlir:170:19
	setlt.u r7, r28, r7
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r7, zero, .LBB0_72
.LBB0_76:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r6, 16
	andi r4, r4, 1
	add.s r4, r6, r4
	add.s r4, r4, r25
	and r4, r4, r14
	j .LBB0_72
.LBB0_77:                               # %vector.body84.preheader
                                        #   in Loop: Header=BB0_70 Depth=2
	zext_int2long r[2:3], zero
	j .LBB0_79
.LBB0_78:                               # %vector.body84
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 158 11 is_stmt 1              # parallel-rne.mlir:158:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 173 13                        # parallel-rne.mlir:173:13
	add.s r7, r20, r8
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	seteq.d r6, r[2:3], r[9:10]
	.loc	1 173 13                        # parallel-rne.mlir:173:13
	stores.w r19, 12(r7)
	stores.w r4, 8(r7)
	stores.w r1, 4(r7)
	stores.w r21, 0(r7)
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	bneq r6, zero, .LBB0_69
.LBB0_79:                               # %vector.body84
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	add.ul r[6:7], r[2:3], r[26:27]
	slli r8, r6, 2
	add.s r21, r5, r8
	loads.w r13, 12(r21)
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	and r16, r13, r15
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	setlt.u r1, r22, r16
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r1, zero, .LBB0_81
# %bb.80:                               # %vector.body84
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r13, 0
	j .LBB0_82
.LBB0_81:                               #   in Loop: Header=BB0_79 Depth=3
	or r19, r13, r23
.LBB0_82:                               # %vector.body84
                                        #   in Loop: Header=BB0_79 Depth=3
	loads.w r24, 8(r21)
	and r12, r24, r15
	setlt.u r1, r22, r12
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r1, zero, .LBB0_84
# %bb.83:                               # %vector.body84
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r24, 0
	j .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_79 Depth=3
	or r4, r24, r23
.LBB0_85:                               # %vector.body84
                                        #   in Loop: Header=BB0_79 Depth=3
	loads.w r11, 4(r21)
	and r6, r11, r15
	setlt.u r1, r22, r6
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r1, zero, .LBB0_87
# %bb.86:                               # %vector.body84
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r11, 0
	j .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_79 Depth=3
	or r1, r11, r23
.LBB0_88:                               # %vector.body84
                                        #   in Loop: Header=BB0_79 Depth=3
	loads.w r7, 0(r21)
	and r9, r7, r15
	setlt.u r10, r22, r9
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r10, zero, .LBB0_97
# %bb.89:                               # %vector.body84
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r7, 0
	.loc	1 170 19 is_stmt 1              # parallel-rne.mlir:170:19
	setlt.u r9, r28, r9
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r9, zero, .LBB0_91
.LBB0_90:                               # %vector.body84
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r7, 16
	andi r9, r9, 1
	add.s r7, r7, r9
	add.s r7, r7, r25
	and r21, r7, r14
.LBB0_91:                               # %vector.body84
                                        #   in Loop: Header=BB0_79 Depth=3
	setlt.u r6, r28, r6
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r6, zero, .LBB0_93
# %bb.92:                               # %vector.body84
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r25
	and r1, r1, r14
.LBB0_93:                               # %vector.body84
                                        #   in Loop: Header=BB0_79 Depth=3
	setlt.u r6, r28, r12
	load.d r[9:10], -8(r30)                 # 8-byte Folded Reload
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r6, zero, .LBB0_95
# %bb.94:                               # %vector.body84
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r25
	and r4, r4, r14
.LBB0_95:                               # %vector.body84
                                        #   in Loop: Header=BB0_79 Depth=3
	setlt.u r6, r28, r16
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r6, zero, .LBB0_78
# %bb.96:                               # %vector.body84
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r25
	and r19, r6, r14
	j .LBB0_78
.LBB0_97:                               #   in Loop: Header=BB0_79 Depth=3
	or r21, r7, r23
	.loc	1 170 19 is_stmt 1              # parallel-rne.mlir:170:19
	setlt.u r9, r28, r9
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	beq r9, zero, .LBB0_90
	j .LBB0_91
.LBB0_98:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r11
	addli r24, zero, 6
	addli r27, zero, 3
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	mfence { sm }
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_32
.LBB0_99:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_101
.LBB0_100:                              # %middle.block79
                                        #   in Loop: Header=BB0_101 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 11
	load.d r[3:4], -16(r30)                 # 8-byte Folded Reload
	addli r21, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 185 9 is_stmt 1               # parallel-rne.mlir:185:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_129
.LBB0_101:                              # %.preheader20
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_110 Depth 3
                                        #       Child Loop BB0_104 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	sll.d r[26:27], r[2:3], r1
	.loc	1 186 11 is_stmt 1              # parallel-rne.mlir:186:11
	bneq r20, r5, .LBB0_108
# %bb.102:                              # %scalar.ph73.preheader
                                        #   in Loop: Header=BB0_101 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_104
.LBB0_103:                              # %scalar.ph73
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	setlt.ul r6, r[1:2], r[17:18]
	.loc	1 201 13 is_stmt 1              # parallel-rne.mlir:201:13
	add.s r3, r20, r3
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 201 13                        # parallel-rne.mlir:201:13
	stores.w r4, 0(r3)
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	beq r6, zero, .LBB0_100
.LBB0_104:                              # %scalar.ph73
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_101 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	add.ul r[3:4], r[1:2], r[26:27]
	slli r3, r3, 2
	add.s r4, r5, r3
	loads.w r6, 0(r4)
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	and r7, r6, r15
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	setlt.u r4, r22, r7
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r4, zero, .LBB0_106
# %bb.105:                              # %scalar.ph73
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r6, 0
	.loc	1 198 19 is_stmt 1              # parallel-rne.mlir:198:19
	setlt.u r7, r28, r7
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r7, zero, .LBB0_103
	j .LBB0_107
.LBB0_106:                              #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r6, r23
	.loc	1 198 19 is_stmt 1              # parallel-rne.mlir:198:19
	setlt.u r7, r28, r7
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r7, zero, .LBB0_103
.LBB0_107:                              # %scalar.ph73
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r6, 16
	andi r4, r4, 1
	add.s r4, r6, r4
	add.s r4, r4, r25
	and r4, r4, r14
	j .LBB0_103
.LBB0_108:                              # %vector.body75.preheader
                                        #   in Loop: Header=BB0_101 Depth=2
	zext_int2long r[2:3], zero
	j .LBB0_110
.LBB0_109:                              # %vector.body75
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 186 11 is_stmt 1              # parallel-rne.mlir:186:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 201 13                        # parallel-rne.mlir:201:13
	add.s r7, r20, r8
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	seteq.d r6, r[2:3], r[9:10]
	.loc	1 201 13                        # parallel-rne.mlir:201:13
	stores.w r19, 12(r7)
	stores.w r4, 8(r7)
	stores.w r1, 4(r7)
	stores.w r21, 0(r7)
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	bneq r6, zero, .LBB0_100
.LBB0_110:                              # %vector.body75
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_101 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	add.ul r[6:7], r[2:3], r[26:27]
	slli r8, r6, 2
	add.s r21, r5, r8
	loads.w r13, 12(r21)
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	and r16, r13, r15
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	setlt.u r1, r22, r16
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r1, zero, .LBB0_112
# %bb.111:                              # %vector.body75
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r13, 0
	j .LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_110 Depth=3
	or r19, r13, r23
.LBB0_113:                              # %vector.body75
                                        #   in Loop: Header=BB0_110 Depth=3
	loads.w r24, 8(r21)
	and r12, r24, r15
	setlt.u r1, r22, r12
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r1, zero, .LBB0_115
# %bb.114:                              # %vector.body75
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r24, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_110 Depth=3
	or r4, r24, r23
.LBB0_116:                              # %vector.body75
                                        #   in Loop: Header=BB0_110 Depth=3
	loads.w r11, 4(r21)
	and r6, r11, r15
	setlt.u r1, r22, r6
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r1, zero, .LBB0_118
# %bb.117:                              # %vector.body75
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r11, 0
	j .LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_110 Depth=3
	or r1, r11, r23
.LBB0_119:                              # %vector.body75
                                        #   in Loop: Header=BB0_110 Depth=3
	loads.w r7, 0(r21)
	and r9, r7, r15
	setlt.u r10, r22, r9
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r10, zero, .LBB0_128
# %bb.120:                              # %vector.body75
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r7, 0
	.loc	1 198 19 is_stmt 1              # parallel-rne.mlir:198:19
	setlt.u r9, r28, r9
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r9, zero, .LBB0_122
.LBB0_121:                              # %vector.body75
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r7, 16
	andi r9, r9, 1
	add.s r7, r7, r9
	add.s r7, r7, r25
	and r21, r7, r14
.LBB0_122:                              # %vector.body75
                                        #   in Loop: Header=BB0_110 Depth=3
	setlt.u r6, r28, r6
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r6, zero, .LBB0_124
# %bb.123:                              # %vector.body75
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r25
	and r1, r1, r14
.LBB0_124:                              # %vector.body75
                                        #   in Loop: Header=BB0_110 Depth=3
	setlt.u r6, r28, r12
	load.d r[9:10], -8(r30)                 # 8-byte Folded Reload
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r6, zero, .LBB0_126
# %bb.125:                              # %vector.body75
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r25
	and r4, r4, r14
.LBB0_126:                              # %vector.body75
                                        #   in Loop: Header=BB0_110 Depth=3
	setlt.u r6, r28, r16
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r6, zero, .LBB0_109
# %bb.127:                              # %vector.body75
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r25
	and r19, r6, r14
	j .LBB0_109
.LBB0_128:                              #   in Loop: Header=BB0_110 Depth=3
	or r21, r7, r23
	.loc	1 198 19 is_stmt 1              # parallel-rne.mlir:198:19
	setlt.u r9, r28, r9
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	beq r9, zero, .LBB0_121
	j .LBB0_122
.LBB0_129:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r11
	addli r24, zero, 6
	addli r27, zero, 3
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	mfence { sm }
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	bneq r11, r27, .LBB0_33
.LBB0_130:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 12
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_132
.LBB0_131:                              # %middle.block70
                                        #   in Loop: Header=BB0_132 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[3:4], -16(r30)                 # 8-byte Folded Reload
	addli r21, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 213 9 is_stmt 1               # parallel-rne.mlir:213:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_160
.LBB0_132:                              # %.preheader19
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_141 Depth 3
                                        #       Child Loop BB0_135 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	sll.d r[26:27], r[2:3], r1
	.loc	1 214 11 is_stmt 1              # parallel-rne.mlir:214:11
	bneq r20, r5, .LBB0_139
# %bb.133:                              # %scalar.ph64.preheader
                                        #   in Loop: Header=BB0_132 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_135
.LBB0_134:                              # %scalar.ph64
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 214 11                        # parallel-rne.mlir:214:11
	setlt.ul r6, r[1:2], r[17:18]
	.loc	1 229 13 is_stmt 1              # parallel-rne.mlir:229:13
	add.s r3, r20, r3
	.loc	1 214 11                        # parallel-rne.mlir:214:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 229 13                        # parallel-rne.mlir:229:13
	stores.w r4, 0(r3)
	.loc	1 214 11                        # parallel-rne.mlir:214:11
	beq r6, zero, .LBB0_131
.LBB0_135:                              # %scalar.ph64
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_132 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	add.ul r[3:4], r[1:2], r[26:27]
	slli r3, r3, 2
	add.s r4, r5, r3
	loads.w r6, 0(r4)
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	and r7, r6, r15
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	setlt.u r4, r22, r7
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r4, zero, .LBB0_137
# %bb.136:                              # %scalar.ph64
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r6, 0
	.loc	1 226 19 is_stmt 1              # parallel-rne.mlir:226:19
	setlt.u r7, r28, r7
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r7, zero, .LBB0_134
	j .LBB0_138
.LBB0_137:                              #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r6, r23
	.loc	1 226 19 is_stmt 1              # parallel-rne.mlir:226:19
	setlt.u r7, r28, r7
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r7, zero, .LBB0_134
.LBB0_138:                              # %scalar.ph64
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r6, 16
	andi r4, r4, 1
	add.s r4, r6, r4
	add.s r4, r4, r25
	and r4, r4, r14
	j .LBB0_134
.LBB0_139:                              # %vector.body66.preheader
                                        #   in Loop: Header=BB0_132 Depth=2
	zext_int2long r[2:3], zero
	j .LBB0_141
.LBB0_140:                              # %vector.body66
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 214 11 is_stmt 1              # parallel-rne.mlir:214:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 229 13                        # parallel-rne.mlir:229:13
	add.s r7, r20, r8
	.loc	1 214 11                        # parallel-rne.mlir:214:11
	seteq.d r6, r[2:3], r[9:10]
	.loc	1 229 13                        # parallel-rne.mlir:229:13
	stores.w r19, 12(r7)
	stores.w r4, 8(r7)
	stores.w r1, 4(r7)
	stores.w r21, 0(r7)
	.loc	1 214 11                        # parallel-rne.mlir:214:11
	bneq r6, zero, .LBB0_131
.LBB0_141:                              # %vector.body66
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_132 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	add.ul r[6:7], r[2:3], r[26:27]
	slli r8, r6, 2
	add.s r21, r5, r8
	loads.w r13, 12(r21)
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	and r16, r13, r15
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	setlt.u r1, r22, r16
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r1, zero, .LBB0_143
# %bb.142:                              # %vector.body66
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r13, 0
	j .LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_141 Depth=3
	or r19, r13, r23
.LBB0_144:                              # %vector.body66
                                        #   in Loop: Header=BB0_141 Depth=3
	loads.w r24, 8(r21)
	and r12, r24, r15
	setlt.u r1, r22, r12
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r1, zero, .LBB0_146
# %bb.145:                              # %vector.body66
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r24, 0
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_141 Depth=3
	or r4, r24, r23
.LBB0_147:                              # %vector.body66
                                        #   in Loop: Header=BB0_141 Depth=3
	loads.w r11, 4(r21)
	and r6, r11, r15
	setlt.u r1, r22, r6
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r1, zero, .LBB0_149
# %bb.148:                              # %vector.body66
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r11, 0
	j .LBB0_150
.LBB0_149:                              #   in Loop: Header=BB0_141 Depth=3
	or r1, r11, r23
.LBB0_150:                              # %vector.body66
                                        #   in Loop: Header=BB0_141 Depth=3
	loads.w r7, 0(r21)
	and r9, r7, r15
	setlt.u r10, r22, r9
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r10, zero, .LBB0_159
# %bb.151:                              # %vector.body66
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r7, 0
	.loc	1 226 19 is_stmt 1              # parallel-rne.mlir:226:19
	setlt.u r9, r28, r9
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r9, zero, .LBB0_153
.LBB0_152:                              # %vector.body66
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r7, 16
	andi r9, r9, 1
	add.s r7, r7, r9
	add.s r7, r7, r25
	and r21, r7, r14
.LBB0_153:                              # %vector.body66
                                        #   in Loop: Header=BB0_141 Depth=3
	setlt.u r6, r28, r6
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r6, zero, .LBB0_155
# %bb.154:                              # %vector.body66
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r25
	and r1, r1, r14
.LBB0_155:                              # %vector.body66
                                        #   in Loop: Header=BB0_141 Depth=3
	setlt.u r6, r28, r12
	load.d r[9:10], -8(r30)                 # 8-byte Folded Reload
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r6, zero, .LBB0_157
# %bb.156:                              # %vector.body66
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r25
	and r4, r4, r14
.LBB0_157:                              # %vector.body66
                                        #   in Loop: Header=BB0_141 Depth=3
	setlt.u r6, r28, r16
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r6, zero, .LBB0_140
# %bb.158:                              # %vector.body66
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r25
	and r19, r6, r14
	j .LBB0_140
.LBB0_159:                              #   in Loop: Header=BB0_141 Depth=3
	or r21, r7, r23
	.loc	1 226 19 is_stmt 1              # parallel-rne.mlir:226:19
	setlt.u r9, r28, r9
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	beq r9, zero, .LBB0_152
	j .LBB0_153
.LBB0_160:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r11
	addli r24, zero, 6
	addli r27, zero, 3
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	mfence { sm }
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_34
.LBB0_161:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_163
.LBB0_162:                              # %middle.block61
                                        #   in Loop: Header=BB0_163 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 19
	load.d r[3:4], -16(r30)                 # 8-byte Folded Reload
	addli r21, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 241 9 is_stmt 1               # parallel-rne.mlir:241:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_191
.LBB0_163:                              # %.preheader18
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_172 Depth 3
                                        #       Child Loop BB0_166 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	sll.d r[26:27], r[2:3], r1
	.loc	1 242 11 is_stmt 1              # parallel-rne.mlir:242:11
	bneq r20, r5, .LBB0_170
# %bb.164:                              # %scalar.ph55.preheader
                                        #   in Loop: Header=BB0_163 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_166
.LBB0_165:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_166 Depth=3
	.loc	1 242 11                        # parallel-rne.mlir:242:11
	setlt.ul r6, r[1:2], r[17:18]
	.loc	1 257 13 is_stmt 1              # parallel-rne.mlir:257:13
	add.s r3, r20, r3
	.loc	1 242 11                        # parallel-rne.mlir:242:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 257 13                        # parallel-rne.mlir:257:13
	stores.w r4, 0(r3)
	.loc	1 242 11                        # parallel-rne.mlir:242:11
	beq r6, zero, .LBB0_162
.LBB0_166:                              # %scalar.ph55
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_163 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	add.ul r[3:4], r[1:2], r[26:27]
	slli r3, r3, 2
	add.s r4, r5, r3
	loads.w r6, 0(r4)
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	and r7, r6, r15
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	setlt.u r4, r22, r7
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r4, zero, .LBB0_168
# %bb.167:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_166 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r6, 0
	.loc	1 254 19 is_stmt 1              # parallel-rne.mlir:254:19
	setlt.u r7, r28, r7
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r7, zero, .LBB0_165
	j .LBB0_169
.LBB0_168:                              #   in Loop: Header=BB0_166 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r6, r23
	.loc	1 254 19 is_stmt 1              # parallel-rne.mlir:254:19
	setlt.u r7, r28, r7
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r7, zero, .LBB0_165
.LBB0_169:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_166 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r6, 16
	andi r4, r4, 1
	add.s r4, r6, r4
	add.s r4, r4, r25
	and r4, r4, r14
	j .LBB0_165
.LBB0_170:                              # %vector.body57.preheader
                                        #   in Loop: Header=BB0_163 Depth=2
	zext_int2long r[2:3], zero
	j .LBB0_172
.LBB0_171:                              # %vector.body57
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 242 11 is_stmt 1              # parallel-rne.mlir:242:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 257 13                        # parallel-rne.mlir:257:13
	add.s r7, r20, r8
	.loc	1 242 11                        # parallel-rne.mlir:242:11
	seteq.d r6, r[2:3], r[9:10]
	.loc	1 257 13                        # parallel-rne.mlir:257:13
	stores.w r19, 12(r7)
	stores.w r4, 8(r7)
	stores.w r1, 4(r7)
	stores.w r21, 0(r7)
	.loc	1 242 11                        # parallel-rne.mlir:242:11
	bneq r6, zero, .LBB0_162
.LBB0_172:                              # %vector.body57
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_163 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	add.ul r[6:7], r[2:3], r[26:27]
	slli r8, r6, 2
	add.s r21, r5, r8
	loads.w r13, 12(r21)
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	and r16, r13, r15
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	setlt.u r1, r22, r16
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r1, zero, .LBB0_174
# %bb.173:                              # %vector.body57
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r13, 0
	j .LBB0_175
.LBB0_174:                              #   in Loop: Header=BB0_172 Depth=3
	or r19, r13, r23
.LBB0_175:                              # %vector.body57
                                        #   in Loop: Header=BB0_172 Depth=3
	loads.w r24, 8(r21)
	and r12, r24, r15
	setlt.u r1, r22, r12
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r1, zero, .LBB0_177
# %bb.176:                              # %vector.body57
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r24, 0
	j .LBB0_178
.LBB0_177:                              #   in Loop: Header=BB0_172 Depth=3
	or r4, r24, r23
.LBB0_178:                              # %vector.body57
                                        #   in Loop: Header=BB0_172 Depth=3
	loads.w r11, 4(r21)
	and r6, r11, r15
	setlt.u r1, r22, r6
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r1, zero, .LBB0_180
# %bb.179:                              # %vector.body57
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r11, 0
	j .LBB0_181
.LBB0_180:                              #   in Loop: Header=BB0_172 Depth=3
	or r1, r11, r23
.LBB0_181:                              # %vector.body57
                                        #   in Loop: Header=BB0_172 Depth=3
	loads.w r7, 0(r21)
	and r9, r7, r15
	setlt.u r10, r22, r9
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r10, zero, .LBB0_190
# %bb.182:                              # %vector.body57
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r7, 0
	.loc	1 254 19 is_stmt 1              # parallel-rne.mlir:254:19
	setlt.u r9, r28, r9
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r9, zero, .LBB0_184
.LBB0_183:                              # %vector.body57
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r7, 16
	andi r9, r9, 1
	add.s r7, r7, r9
	add.s r7, r7, r25
	and r21, r7, r14
.LBB0_184:                              # %vector.body57
                                        #   in Loop: Header=BB0_172 Depth=3
	setlt.u r6, r28, r6
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r6, zero, .LBB0_186
# %bb.185:                              # %vector.body57
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r25
	and r1, r1, r14
.LBB0_186:                              # %vector.body57
                                        #   in Loop: Header=BB0_172 Depth=3
	setlt.u r6, r28, r12
	load.d r[9:10], -8(r30)                 # 8-byte Folded Reload
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r6, zero, .LBB0_188
# %bb.187:                              # %vector.body57
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r25
	and r4, r4, r14
.LBB0_188:                              # %vector.body57
                                        #   in Loop: Header=BB0_172 Depth=3
	setlt.u r6, r28, r16
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r6, zero, .LBB0_171
# %bb.189:                              # %vector.body57
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r25
	and r19, r6, r14
	j .LBB0_171
.LBB0_190:                              #   in Loop: Header=BB0_172 Depth=3
	or r21, r7, r23
	.loc	1 254 19 is_stmt 1              # parallel-rne.mlir:254:19
	setlt.u r9, r28, r9
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	beq r9, zero, .LBB0_183
	j .LBB0_184
.LBB0_191:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r11
	addli r24, zero, 6
	addli r27, zero, 3
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	mfence { sm }
	.loc	1 262 7                         # parallel-rne.mlir:262:7
	bneq r11, r21, .LBB0_35
.LBB0_192:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 262 7                         # parallel-rne.mlir:262:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_194
.LBB0_193:                              # %middle.block52
                                        #   in Loop: Header=BB0_194 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[3:4], -16(r30)                 # 8-byte Folded Reload
	addli r21, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 269 9 is_stmt 1               # parallel-rne.mlir:269:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_222
.LBB0_194:                              # %.preheader17
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_203 Depth 3
                                        #       Child Loop BB0_197 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	sll.d r[26:27], r[2:3], r1
	.loc	1 270 11 is_stmt 1              # parallel-rne.mlir:270:11
	bneq r20, r5, .LBB0_201
# %bb.195:                              # %scalar.ph46.preheader
                                        #   in Loop: Header=BB0_194 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_197
.LBB0_196:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_197 Depth=3
	.loc	1 270 11                        # parallel-rne.mlir:270:11
	setlt.ul r6, r[1:2], r[17:18]
	.loc	1 285 13 is_stmt 1              # parallel-rne.mlir:285:13
	add.s r3, r20, r3
	.loc	1 270 11                        # parallel-rne.mlir:270:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 285 13                        # parallel-rne.mlir:285:13
	stores.w r4, 0(r3)
	.loc	1 270 11                        # parallel-rne.mlir:270:11
	beq r6, zero, .LBB0_193
.LBB0_197:                              # %scalar.ph46
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_194 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	add.ul r[3:4], r[1:2], r[26:27]
	slli r3, r3, 2
	add.s r4, r5, r3
	loads.w r6, 0(r4)
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	and r7, r6, r15
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	setlt.u r4, r22, r7
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r4, zero, .LBB0_199
# %bb.198:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_197 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r6, 0
	.loc	1 282 19 is_stmt 1              # parallel-rne.mlir:282:19
	setlt.u r7, r28, r7
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r7, zero, .LBB0_196
	j .LBB0_200
.LBB0_199:                              #   in Loop: Header=BB0_197 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r6, r23
	.loc	1 282 19 is_stmt 1              # parallel-rne.mlir:282:19
	setlt.u r7, r28, r7
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r7, zero, .LBB0_196
.LBB0_200:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_197 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r6, 16
	andi r4, r4, 1
	add.s r4, r6, r4
	add.s r4, r4, r25
	and r4, r4, r14
	j .LBB0_196
.LBB0_201:                              # %vector.body48.preheader
                                        #   in Loop: Header=BB0_194 Depth=2
	zext_int2long r[2:3], zero
	j .LBB0_203
.LBB0_202:                              # %vector.body48
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 270 11 is_stmt 1              # parallel-rne.mlir:270:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 285 13                        # parallel-rne.mlir:285:13
	add.s r7, r20, r8
	.loc	1 270 11                        # parallel-rne.mlir:270:11
	seteq.d r6, r[2:3], r[9:10]
	.loc	1 285 13                        # parallel-rne.mlir:285:13
	stores.w r19, 12(r7)
	stores.w r4, 8(r7)
	stores.w r1, 4(r7)
	stores.w r21, 0(r7)
	.loc	1 270 11                        # parallel-rne.mlir:270:11
	bneq r6, zero, .LBB0_193
.LBB0_203:                              # %vector.body48
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_194 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	add.ul r[6:7], r[2:3], r[26:27]
	slli r8, r6, 2
	add.s r21, r5, r8
	loads.w r13, 12(r21)
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	and r16, r13, r15
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	setlt.u r1, r22, r16
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r1, zero, .LBB0_205
# %bb.204:                              # %vector.body48
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r13, 0
	j .LBB0_206
.LBB0_205:                              #   in Loop: Header=BB0_203 Depth=3
	or r19, r13, r23
.LBB0_206:                              # %vector.body48
                                        #   in Loop: Header=BB0_203 Depth=3
	loads.w r24, 8(r21)
	and r12, r24, r15
	setlt.u r1, r22, r12
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r1, zero, .LBB0_208
# %bb.207:                              # %vector.body48
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r24, 0
	j .LBB0_209
.LBB0_208:                              #   in Loop: Header=BB0_203 Depth=3
	or r4, r24, r23
.LBB0_209:                              # %vector.body48
                                        #   in Loop: Header=BB0_203 Depth=3
	loads.w r11, 4(r21)
	and r6, r11, r15
	setlt.u r1, r22, r6
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r1, zero, .LBB0_211
# %bb.210:                              # %vector.body48
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r11, 0
	j .LBB0_212
.LBB0_211:                              #   in Loop: Header=BB0_203 Depth=3
	or r1, r11, r23
.LBB0_212:                              # %vector.body48
                                        #   in Loop: Header=BB0_203 Depth=3
	loads.w r7, 0(r21)
	and r9, r7, r15
	setlt.u r10, r22, r9
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r10, zero, .LBB0_221
# %bb.213:                              # %vector.body48
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r7, 0
	.loc	1 282 19 is_stmt 1              # parallel-rne.mlir:282:19
	setlt.u r9, r28, r9
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r9, zero, .LBB0_215
.LBB0_214:                              # %vector.body48
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r7, 16
	andi r9, r9, 1
	add.s r7, r7, r9
	add.s r7, r7, r25
	and r21, r7, r14
.LBB0_215:                              # %vector.body48
                                        #   in Loop: Header=BB0_203 Depth=3
	setlt.u r6, r28, r6
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r6, zero, .LBB0_217
# %bb.216:                              # %vector.body48
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r25
	and r1, r1, r14
.LBB0_217:                              # %vector.body48
                                        #   in Loop: Header=BB0_203 Depth=3
	setlt.u r6, r28, r12
	load.d r[9:10], -8(r30)                 # 8-byte Folded Reload
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r6, zero, .LBB0_219
# %bb.218:                              # %vector.body48
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r25
	and r4, r4, r14
.LBB0_219:                              # %vector.body48
                                        #   in Loop: Header=BB0_203 Depth=3
	setlt.u r6, r28, r16
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r6, zero, .LBB0_202
# %bb.220:                              # %vector.body48
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r25
	and r19, r6, r14
	j .LBB0_202
.LBB0_221:                              #   in Loop: Header=BB0_203 Depth=3
	or r21, r7, r23
	.loc	1 282 19 is_stmt 1              # parallel-rne.mlir:282:19
	setlt.u r9, r28, r9
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	beq r9, zero, .LBB0_214
	j .LBB0_215
.LBB0_222:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r11
	addli r24, zero, 6
	addli r27, zero, 3
	.loc	1 262 7                         # parallel-rne.mlir:262:7
	mfence { sm }
	.loc	1 290 7                         # parallel-rne.mlir:290:7
	bneq r11, r24, .LBB0_36
.LBB0_223:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 290 7                         # parallel-rne.mlir:290:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_225
.LBB0_224:                              # %middle.block43
                                        #   in Loop: Header=BB0_225 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 27
	load.d r[3:4], -16(r30)                 # 8-byte Folded Reload
	addli r21, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 297 9 is_stmt 1               # parallel-rne.mlir:297:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_253
.LBB0_225:                              # %.preheader16
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_234 Depth 3
                                        #       Child Loop BB0_228 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	sll.d r[26:27], r[2:3], r1
	.loc	1 298 11 is_stmt 1              # parallel-rne.mlir:298:11
	bneq r20, r5, .LBB0_232
# %bb.226:                              # %scalar.ph37.preheader
                                        #   in Loop: Header=BB0_225 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_228
.LBB0_227:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 298 11                        # parallel-rne.mlir:298:11
	setlt.ul r6, r[1:2], r[17:18]
	.loc	1 313 13 is_stmt 1              # parallel-rne.mlir:313:13
	add.s r3, r20, r3
	.loc	1 298 11                        # parallel-rne.mlir:298:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 313 13                        # parallel-rne.mlir:313:13
	stores.w r4, 0(r3)
	.loc	1 298 11                        # parallel-rne.mlir:298:11
	beq r6, zero, .LBB0_224
.LBB0_228:                              # %scalar.ph37
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_225 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	add.ul r[3:4], r[1:2], r[26:27]
	slli r3, r3, 2
	add.s r4, r5, r3
	loads.w r6, 0(r4)
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	and r7, r6, r15
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	setlt.u r4, r22, r7
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r4, zero, .LBB0_230
# %bb.229:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r6, 0
	.loc	1 310 19 is_stmt 1              # parallel-rne.mlir:310:19
	setlt.u r7, r28, r7
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r7, zero, .LBB0_227
	j .LBB0_231
.LBB0_230:                              #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r6, r23
	.loc	1 310 19 is_stmt 1              # parallel-rne.mlir:310:19
	setlt.u r7, r28, r7
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r7, zero, .LBB0_227
.LBB0_231:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r6, 16
	andi r4, r4, 1
	add.s r4, r6, r4
	add.s r4, r4, r25
	and r4, r4, r14
	j .LBB0_227
.LBB0_232:                              # %vector.body39.preheader
                                        #   in Loop: Header=BB0_225 Depth=2
	zext_int2long r[2:3], zero
	j .LBB0_234
.LBB0_233:                              # %vector.body39
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 298 11 is_stmt 1              # parallel-rne.mlir:298:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 313 13                        # parallel-rne.mlir:313:13
	add.s r7, r20, r8
	.loc	1 298 11                        # parallel-rne.mlir:298:11
	seteq.d r6, r[2:3], r[9:10]
	.loc	1 313 13                        # parallel-rne.mlir:313:13
	stores.w r19, 12(r7)
	stores.w r4, 8(r7)
	stores.w r1, 4(r7)
	stores.w r21, 0(r7)
	.loc	1 298 11                        # parallel-rne.mlir:298:11
	bneq r6, zero, .LBB0_224
.LBB0_234:                              # %vector.body39
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_225 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	add.ul r[6:7], r[2:3], r[26:27]
	slli r8, r6, 2
	add.s r21, r5, r8
	loads.w r13, 12(r21)
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	and r16, r13, r15
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	setlt.u r1, r22, r16
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r1, zero, .LBB0_236
# %bb.235:                              # %vector.body39
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r13, 0
	j .LBB0_237
.LBB0_236:                              #   in Loop: Header=BB0_234 Depth=3
	or r19, r13, r23
.LBB0_237:                              # %vector.body39
                                        #   in Loop: Header=BB0_234 Depth=3
	loads.w r24, 8(r21)
	and r12, r24, r15
	setlt.u r1, r22, r12
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r1, zero, .LBB0_239
# %bb.238:                              # %vector.body39
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r24, 0
	j .LBB0_240
.LBB0_239:                              #   in Loop: Header=BB0_234 Depth=3
	or r4, r24, r23
.LBB0_240:                              # %vector.body39
                                        #   in Loop: Header=BB0_234 Depth=3
	loads.w r11, 4(r21)
	and r6, r11, r15
	setlt.u r1, r22, r6
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r1, zero, .LBB0_242
# %bb.241:                              # %vector.body39
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r11, 0
	j .LBB0_243
.LBB0_242:                              #   in Loop: Header=BB0_234 Depth=3
	or r1, r11, r23
.LBB0_243:                              # %vector.body39
                                        #   in Loop: Header=BB0_234 Depth=3
	loads.w r7, 0(r21)
	and r9, r7, r15
	setlt.u r10, r22, r9
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r10, zero, .LBB0_252
# %bb.244:                              # %vector.body39
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r7, 0
	.loc	1 310 19 is_stmt 1              # parallel-rne.mlir:310:19
	setlt.u r9, r28, r9
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r9, zero, .LBB0_246
.LBB0_245:                              # %vector.body39
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r7, 16
	andi r9, r9, 1
	add.s r7, r7, r9
	add.s r7, r7, r25
	and r21, r7, r14
.LBB0_246:                              # %vector.body39
                                        #   in Loop: Header=BB0_234 Depth=3
	setlt.u r6, r28, r6
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r6, zero, .LBB0_248
# %bb.247:                              # %vector.body39
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r25
	and r1, r1, r14
.LBB0_248:                              # %vector.body39
                                        #   in Loop: Header=BB0_234 Depth=3
	setlt.u r6, r28, r12
	load.d r[9:10], -8(r30)                 # 8-byte Folded Reload
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r6, zero, .LBB0_250
# %bb.249:                              # %vector.body39
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r25
	and r4, r4, r14
.LBB0_250:                              # %vector.body39
                                        #   in Loop: Header=BB0_234 Depth=3
	setlt.u r6, r28, r16
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r6, zero, .LBB0_233
# %bb.251:                              # %vector.body39
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r25
	and r19, r6, r14
	j .LBB0_233
.LBB0_252:                              #   in Loop: Header=BB0_234 Depth=3
	or r21, r7, r23
	.loc	1 310 19 is_stmt 1              # parallel-rne.mlir:310:19
	setlt.u r9, r28, r9
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	beq r9, zero, .LBB0_245
	j .LBB0_246
.LBB0_253:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r11
	addli r24, zero, 6
	addli r27, zero, 3
	.loc	1 290 7                         # parallel-rne.mlir:290:7
	mfence { sm }
	.loc	1 318 7                         # parallel-rne.mlir:318:7
	loadli.w r1,  -36(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_285
.LBB0_254:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 318 7                         # parallel-rne.mlir:318:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_256
.LBB0_255:                              # %middle.block
                                        #   in Loop: Header=BB0_256 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[2:3], -16(r30)                 # 8-byte Folded Reload
	addli r21, zero, 5
	.loc	1 325 9 is_stmt 1               # parallel-rne.mlir:325:9
	setlt.ul r1, r[2:3], r[17:18]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_284
.LBB0_256:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_265 Depth 3
                                        #       Child Loop BB0_259 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	sll.d r[26:27], r[2:3], r1
	.loc	1 326 11 is_stmt 1              # parallel-rne.mlir:326:11
	bneq r20, r5, .LBB0_263
# %bb.257:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_256 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_259
.LBB0_258:                              # %scalar.ph
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	setlt.ul r6, r[1:2], r[17:18]
	.loc	1 341 13 is_stmt 1              # parallel-rne.mlir:341:13
	add.s r3, r20, r3
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 341 13                        # parallel-rne.mlir:341:13
	stores.w r4, 0(r3)
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	beq r6, zero, .LBB0_255
.LBB0_259:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_256 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	add.ul r[3:4], r[1:2], r[26:27]
	slli r3, r3, 2
	add.s r4, r5, r3
	loads.w r6, 0(r4)
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	and r7, r6, r15
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	setlt.u r4, r22, r7
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r4, zero, .LBB0_261
# %bb.260:                              # %scalar.ph
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r6, 0
	.loc	1 338 19 is_stmt 1              # parallel-rne.mlir:338:19
	setlt.u r7, r28, r7
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r7, zero, .LBB0_258
	j .LBB0_262
.LBB0_261:                              #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r6, r23
	.loc	1 338 19 is_stmt 1              # parallel-rne.mlir:338:19
	setlt.u r7, r28, r7
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r7, zero, .LBB0_258
.LBB0_262:                              # %scalar.ph
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r6, 16
	andi r4, r4, 1
	add.s r4, r6, r4
	add.s r4, r4, r25
	and r4, r4, r14
	j .LBB0_258
.LBB0_263:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_256 Depth=2
	zext_int2long r[2:3], zero
	j .LBB0_265
.LBB0_264:                              # %vector.body
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 326 11 is_stmt 1              # parallel-rne.mlir:326:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 341 13                        # parallel-rne.mlir:341:13
	add.s r7, r20, r8
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	seteq.d r6, r[2:3], r[9:10]
	.loc	1 341 13                        # parallel-rne.mlir:341:13
	stores.w r19, 12(r7)
	stores.w r4, 8(r7)
	stores.w r1, 4(r7)
	stores.w r21, 0(r7)
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	bneq r6, zero, .LBB0_255
.LBB0_265:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_256 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	add.ul r[6:7], r[2:3], r[26:27]
	slli r8, r6, 2
	add.s r21, r5, r8
	loads.w r13, 12(r21)
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	and r16, r13, r15
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	setlt.u r1, r22, r16
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r1, zero, .LBB0_267
# %bb.266:                              # %vector.body
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r13, 0
	j .LBB0_268
.LBB0_267:                              #   in Loop: Header=BB0_265 Depth=3
	or r19, r13, r23
.LBB0_268:                              # %vector.body
                                        #   in Loop: Header=BB0_265 Depth=3
	loads.w r24, 8(r21)
	and r12, r24, r15
	setlt.u r1, r22, r12
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r1, zero, .LBB0_270
# %bb.269:                              # %vector.body
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r24, 0
	j .LBB0_271
.LBB0_270:                              #   in Loop: Header=BB0_265 Depth=3
	or r4, r24, r23
.LBB0_271:                              # %vector.body
                                        #   in Loop: Header=BB0_265 Depth=3
	loads.w r11, 4(r21)
	and r6, r11, r15
	setlt.u r1, r22, r6
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r1, zero, .LBB0_273
# %bb.272:                              # %vector.body
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r11, 0
	j .LBB0_274
.LBB0_273:                              #   in Loop: Header=BB0_265 Depth=3
	or r1, r11, r23
.LBB0_274:                              # %vector.body
                                        #   in Loop: Header=BB0_265 Depth=3
	loads.w r7, 0(r21)
	and r9, r7, r15
	setlt.u r10, r22, r9
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r10, zero, .LBB0_283
# %bb.275:                              # %vector.body
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r7, 0
	.loc	1 338 19 is_stmt 1              # parallel-rne.mlir:338:19
	setlt.u r9, r28, r9
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r9, zero, .LBB0_277
.LBB0_276:                              # %vector.body
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r7, 16
	andi r9, r9, 1
	add.s r7, r7, r9
	add.s r7, r7, r25
	and r21, r7, r14
.LBB0_277:                              # %vector.body
                                        #   in Loop: Header=BB0_265 Depth=3
	setlt.u r6, r28, r6
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r6, zero, .LBB0_279
# %bb.278:                              # %vector.body
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r25
	and r1, r1, r14
.LBB0_279:                              # %vector.body
                                        #   in Loop: Header=BB0_265 Depth=3
	setlt.u r6, r28, r12
	load.d r[9:10], -8(r30)                 # 8-byte Folded Reload
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r6, zero, .LBB0_281
# %bb.280:                              # %vector.body
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r25
	and r4, r4, r14
.LBB0_281:                              # %vector.body
                                        #   in Loop: Header=BB0_265 Depth=3
	setlt.u r6, r28, r16
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r6, zero, .LBB0_264
# %bb.282:                              # %vector.body
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r25
	and r19, r6, r14
	j .LBB0_264
.LBB0_283:                              #   in Loop: Header=BB0_265 Depth=3
	or r21, r7, r23
	.loc	1 338 19 is_stmt 1              # parallel-rne.mlir:338:19
	setlt.u r9, r28, r9
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	beq r9, zero, .LBB0_276
	j .LBB0_277
.LBB0_284:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r11
	addli r24, zero, 6
	addli r27, zero, 3
	.loc	1 318 7                         # parallel-rne.mlir:318:7
	mfence { sm }
.LBB0_285:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 346 7                         # parallel-rne.mlir:346:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 347 7                         # parallel-rne.mlir:347:7
	beq r11, r27, .LBB0_5
# %bb.286:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[12:13], -32(r30)               # 8-byte Folded Reload
	loadli.w r17,  -20(r30)                 # 4-byte Folded Reload
	addli r16, zero, 2
	addli r20, zero, 1
	addli r10, zero, 12
	.loc	1 364 7 is_stmt 1               # parallel-rne.mlir:364:7
	bneq r11, zero, .LBB0_6
# %bb.287:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -76(r30)                  # 4-byte Folded Reload
	addli r2, zero, 992
	zext_int2long r[2:3], r2
	slli r1, r1, 5
	.loc	1 354 13 is_stmt 1              # parallel-rne.mlir:354:13
	zext_int2long r[6:7], r1
	loadli.w r1,  -60(r30)                  # 4-byte Folded Reload
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	min.ul r[2:3], r[6:7], r[2:3]
	slli r1, r1, 5
	addli.d r[18:19], r[2:3], 32
	.loc	1 349 13                        # parallel-rne.mlir:349:13
	sext_int2long r[8:9], r1
	load.d r[1:2], -8(r30)                  # 8-byte Folded Reload
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	max.ul r[18:19], r[18:19], r[6:7]
	.loc	1 351 13                        # parallel-rne.mlir:351:13
	min.sl r[3:4], r[8:9], r[1:2]
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	sub.sl r[6:7], r[18:19], r[6:7]
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	load.d r[18:19], -56(r30)               # 8-byte Folded Reload
	.loc	1 351 13                        # parallel-rne.mlir:351:13
	addli.d r[3:4], r[3:4], 32
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	min.ul r[6:7], r[6:7], r[1:2]
	.loc	1 352 13                        # parallel-rne.mlir:352:13
	max.sl r[3:4], r[3:4], r[8:9]
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	store.d r[6:7], -16(r30)                # 8-byte Folded Spill
	addli r6, zero, 16
	.loc	1 353 13                        # parallel-rne.mlir:353:13
	sub.sl r[3:4], r[3:4], r[8:9]
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	load.d r[8:9], 16(r30)
	sll.d r[6:7], r[18:19], r6
	.loc	1 359 13                        # parallel-rne.mlir:359:13
	min.sl r[3:4], r[3:4], r[1:2]
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	load.d r[1:2], -72(r30)                 # 8-byte Folded Reload
	xwait r10, 0
	lock zero, r21
	add.ul r[6:7], r[8:9], r[6:7]
	dma_cfg r20, r20, zero, 0
	lui r8, 10
	addli r9, zero, 64
	dma_cfg zero, r20, zero, 1
	add.ul r[6:7], r[6:7], r[1:2]
	ori r8, r8, 64
	dma_cfg r7, zero, zero, 2
	add.s r5, r5, r8
	load.d r[1:2], -16(r30)                 # 8-byte Folded Reload
	dma_cfg r6, r5, r9, 3
	addli r8, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	srli r5, r8, 5
	andi r1, r1, 62
	dma_cfg r9, r2, r5, 4
	addli r5, zero, 2048
	dma_cfg r5, r2, r3, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r21
	xsignal r1, 0
	j .LBB0_6
.LBB0_288:                              # %._crit_edge
	.loc	1 366 5                         # parallel-rne.mlir:366:5
	xsignal zero, 0
	bneq r11, zero, .LBB0_290
# %bb.289:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 366 5                         # parallel-rne.mlir:366:5
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
.LBB0_290:
	.loc	1 367 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:367:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-4c40gjne" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
