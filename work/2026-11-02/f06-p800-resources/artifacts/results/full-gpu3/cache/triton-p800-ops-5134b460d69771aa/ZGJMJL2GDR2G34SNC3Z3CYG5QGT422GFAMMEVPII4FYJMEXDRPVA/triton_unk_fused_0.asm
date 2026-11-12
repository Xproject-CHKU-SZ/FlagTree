	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-ymiypu25" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -288
	addli r1, zero, 1
.Ltmp0:
	.loc	1 34 5 prologue_end             # parallel-rne.mlir:34:5
	core_id r2
	core_id r12
	addli r30, sp, 224
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r2, 1048575
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	xwait r1, 0
	xwait r1, 0
	xwait zero, 0
	ori r1, r2, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r4, zero, 2
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	uni_sram_cfg r1, r1
	addli r5, zero, 4
	load.d r[2:3], 32(r30)
	addli r6, zero, 4096
	lock zero, r4
	ew_cfg r1, zero, zero, 16
	unlock r4
	lock zero, r5
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r3, zero, 2
	dma_cfg zero, r2, r6, 3
	addli r2, zero, 32
	addli r3, zero, 1024
	dma_cfg zero, zero, r1, 4
	dma_run zero
	unlock r5
	xsignal r1, 0
	xwait r1, 0
	lock zero, zero
	ds_cfg r4, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r2, zero, 13
	addli r2, zero, 5
	ds_cfg r3, zero, 14
	shuffle_batch r6, zero, r3, 4
	unlock zero
	xsignal r1, 0
	xwait r1, 0
	lock zero, r4
	lui r1, 17
	ewtable_cfg r6, 0
	ewtable_cfg r1, 1
	lui r1, 1048575
	unlock r4
	xsignal zero, 0
	xwait zero, 0
	ori r1, r1, 4095
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
	addli r2, zero, 22
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
	addli r1, zero, 24
	addli r2, zero, 25
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
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 36 10 is_stmt 1               # parallel-rne.mlir:36:10
	load_param_i r4, 1
	loadli.w r3,  48(r30)
	lui r5, 1048575
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -24(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -48(r30)
	ori r5, r5, 4095
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	mul.s r1, r2, r1
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	addli r2, r4, 0
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r5, -20(r30)
	storeli.w r5, -16(r30)
	storeli.w r5, -12(r30)
	storeli.w r5, -8(r30)
	storeli.w r5, -4(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w r5, -44(r30)
	storeli.w r5, -40(r30)
	storeli.w r5, -36(r30)
	storeli.w r5, -32(r30)
	storeli.w r5, -28(r30)
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	fmac.s r2, r1, r3
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r3, r1, r3
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	addli r2, r2, -1
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	div.s r2, r2, r4
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	load_param_i r4, 0
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	mul.s r1, r2, r4
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	fmac.s r2, r2, r4
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	min.s r2, r2, r3
	.loc	1 57 5                          # parallel-rne.mlir:57:5
	ble.s r2, r1, .LBB0_708
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	lui r4, 216
	.loc	1 45 11 is_stmt 1               # parallel-rne.mlir:45:11
	sext_int2long r[13:14], r1
	lui r1, 524287
	addli r15, zero, 5
	addli r16, zero, 64
	addli r17, zero, 1
	addli r18, zero, 7
	addli r19, zero, 13
	addli r20, zero, 3
	addli r21, zero, 4
	addli r23, zero, 16
	lui r27, 1024
	lui r5, 1048560
	addli r6, zero, 0
	store.d r[2:3], -208(r30)               # 8-byte Folded Spill
	lui r2, 522239
	ori r28, r1, 4095
	lui r1, 7
	ori r3, r2, 4095
	lui r2, 180
	ori r1, r1, 4095
	ori r2, r2, 2560
	storeli.w r2, -212(r30)                 # 4-byte Folded Spill
	ori r2, r4, 2893
	lui r4, 1046527
	storeli.w r2, -216(r30)                 # 4-byte Folded Spill
	lui r2, 220
	ori r2, r2, 2560
	storeli.w r2, -220(r30)                 # 4-byte Folded Spill
	ori r2, r4, 4095
	lui r4, 522240
	storeli.w r2, -224(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge18.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 874 7                         # parallel-rne.mlir:874:7
	addli r2, zero, 21
	addli r15, zero, 5
	addli r16, zero, 64
	addli r17, zero, 1
	addli r18, zero, 7
	addli r19, zero, 13
	addli r21, zero, 4
	xsignal r2, 0
	.loc	1 875 7                         # parallel-rne.mlir:875:7
	addli r2, zero, 24
	xsignal r2, 0
	load.d r[13:14], -176(r30)              # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 57 5                          # parallel-rne.mlir:57:5
	load.d r[6:7], -208(r30)                # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 1
	setlt.sl r2, r[13:14], r[6:7]
	loadli.w r6,  -164(r30)                 # 4-byte Folded Reload
	addli r6, r6, 1
	beq r2, zero, .LBB0_708
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #       Child Loop BB0_33 Depth 3
                                        #     Child Loop BB0_56 Depth 2
                                        #       Child Loop BB0_58 Depth 3
                                        #     Child Loop BB0_81 Depth 2
                                        #       Child Loop BB0_83 Depth 3
                                        #     Child Loop BB0_106 Depth 2
                                        #       Child Loop BB0_108 Depth 3
                                        #     Child Loop BB0_131 Depth 2
                                        #       Child Loop BB0_133 Depth 3
                                        #     Child Loop BB0_156 Depth 2
                                        #       Child Loop BB0_158 Depth 3
                                        #     Child Loop BB0_181 Depth 2
                                        #       Child Loop BB0_183 Depth 3
                                        #     Child Loop BB0_206 Depth 2
                                        #       Child Loop BB0_208 Depth 3
                                        #     Child Loop BB0_236 Depth 2
                                        #     Child Loop BB0_319 Depth 2
                                        #       Child Loop BB0_321 Depth 3
                                        #     Child Loop BB0_244 Depth 2
                                        #       Child Loop BB0_246 Depth 3
                                        #     Child Loop BB0_344 Depth 2
                                        #       Child Loop BB0_346 Depth 3
                                        #     Child Loop BB0_269 Depth 2
                                        #       Child Loop BB0_271 Depth 3
                                        #     Child Loop BB0_369 Depth 2
                                        #       Child Loop BB0_371 Depth 3
                                        #     Child Loop BB0_294 Depth 2
                                        #       Child Loop BB0_296 Depth 3
                                        #     Child Loop BB0_394 Depth 2
                                        #       Child Loop BB0_396 Depth 3
                                        #     Child Loop BB0_418 Depth 2
                                        #       Child Loop BB0_420 Depth 3
                                        #     Child Loop BB0_444 Depth 2
                                        #     Child Loop BB0_446 Depth 2
                                        #     Child Loop BB0_548 Depth 2
                                        #       Child Loop BB0_557 Depth 3
                                        #       Child Loop BB0_552 Depth 3
                                        #     Child Loop BB0_453 Depth 2
                                        #       Child Loop BB0_462 Depth 3
                                        #       Child Loop BB0_457 Depth 3
                                        #     Child Loop BB0_580 Depth 2
                                        #       Child Loop BB0_589 Depth 3
                                        #       Child Loop BB0_584 Depth 3
                                        #     Child Loop BB0_485 Depth 2
                                        #       Child Loop BB0_494 Depth 3
                                        #       Child Loop BB0_489 Depth 3
                                        #     Child Loop BB0_612 Depth 2
                                        #       Child Loop BB0_621 Depth 3
                                        #       Child Loop BB0_616 Depth 3
                                        #     Child Loop BB0_517 Depth 2
                                        #       Child Loop BB0_526 Depth 3
                                        #       Child Loop BB0_521 Depth 3
                                        #     Child Loop BB0_644 Depth 2
                                        #       Child Loop BB0_653 Depth 3
                                        #       Child Loop BB0_648 Depth 3
                                        #     Child Loop BB0_676 Depth 2
                                        #       Child Loop BB0_685 Depth 3
                                        #       Child Loop BB0_680 Depth 3
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	loadli.w r2,  48(r30)
	addli r12, r6, 0
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	loadli.w r6,  44(r30)
	.loc	1 66 13                         # parallel-rne.mlir:66:13
	addli r9, zero, 8
	.loc	1 62 13                         # parallel-rne.mlir:62:13
	mod.s r10, r12, r15
	.loc	1 99 7                          # parallel-rne.mlir:99:7
	storeli.w r12, -164(r30)                # 4-byte Folded Spill
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	div.s r2, r13, r2
	storeli.w r10, -136(r30)                # 4-byte Folded Spill
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	div.s r2, r2, r6
	.loc	1 63 13                         # parallel-rne.mlir:63:13
	div.s r7, r2, r16
	.loc	1 64 13                         # parallel-rne.mlir:64:13
	slli r6, r7, 3
	.loc	1 65 13                         # parallel-rne.mlir:65:13
	sub.s r8, r17, r6
	.loc	1 66 13                         # parallel-rne.mlir:66:13
	min.s r8, r8, r9
	.loc	1 67 13                         # parallel-rne.mlir:67:13
	mod.s r9, r2, r8
	.loc	1 68 13                         # parallel-rne.mlir:68:13
	add.s r9, r9, r6
	.loc	1 93 13                         # parallel-rne.mlir:93:13
	slli r6, r10, 14
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r10
	.loc	1 76 13                         # parallel-rne.mlir:76:13
	zext_int2long r[24:25], r9
	storeli.w r9, -196(r30)                 # 4-byte Folded Spill
	.loc	1 95 13                         # parallel-rne.mlir:95:13
	lui r9, 40
	add.s r9, r6, r9
	store.d r[24:25], -144(r30)             # 8-byte Folded Spill
	.loc	1 99 7                          # parallel-rne.mlir:99:7
	bneq r10, r17, .LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	sll.d r[10:11], r[24:25], r19
	load.d r[24:25], 0(r30)
	xwait r20, 0
	add.ul r[10:11], r[24:25], r[10:11]
	blt.s r21, r12, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	lock zero, r15
	addli r22, zero, 2
	addli r12, zero, 6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 8
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 9
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 11
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 12
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 14
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 15
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 17
	dma_cfg zero, zero, r23, 10
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
	addli r12, zero, 128
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r16, 3
	dma_cfg r12, zero, r22, 4
	addli r12, zero, 256
	dma_cfg r12, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
.LBB0_10:                               # %.thread51
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r12, 40
	storeli.w zero, -160(r30)               # 4-byte Folded Spill
	addli r22, zero, 128
	addli r24, zero, 256
	.loc	1 99 7                          # parallel-rne.mlir:99:7
	lock zero, r21
	ori r12, r12, 64
	dma_cfg r17, r17, zero, 0
	dma_cfg zero, r11, zero, 2
	add.s r12, r6, r12
	dma_cfg r12, r10, r16, 3
	addli r11, zero, 2
	addli r12, zero, 6
	addli r10, zero, 8
	dma_cfg r22, r16, r11, 4
	dma_cfg r24, r22, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r21
	lock zero, r15
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 9
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 11
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 12
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 14
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 15
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 17
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 18
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 19
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 20
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 21
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 22
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 23
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 24
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 25
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 26
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 27
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 28
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 29
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 30
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 31
	dma_cfg zero, zero, r10, 10
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r16, 3
	dma_cfg r22, zero, r11, 4
	dma_cfg r24, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	xsignal r11, 0
	.loc	1 100 7 is_stmt 1               # parallel-rne.mlir:100:7
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r11, zero, 2
	.loc	1 100 7                         # parallel-rne.mlir:100:7
	bneq r10, r11, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	xwait r11, 0
	xwait r15, 0
	lock zero, zero
	ds_cfg r11, zero, 0
	ds_cfg r16, zero, 1
	ds_cfg r16, zero, 14
	ds_cfg r16, zero, 13
	shuffle_batch r6, r9, r16, 1
	addli r9, zero, 1
	unlock zero
	xsignal r20, 0
	storeli.w r9, -160(r30)                 # 4-byte Folded Spill
	xsignal r21, 0
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -160(r30)               # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	addli r12, zero, 6
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	slli r7, r7, 6
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
	sub.s r2, r2, r7
	div.s r2, r2, r8
	zext_int2long r[7:8], r2
	storeli.w r2, -148(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -136(r30)                 # 4-byte Folded Reload
	sll.d r[7:8], r[7:8], r18
	slli r9, r2, 15
	.loc	1 110 13 is_stmt 1              # parallel-rne.mlir:110:13
	lui r2, 60
	.loc	1 116 7                         # parallel-rne.mlir:116:7
	sll.d r[24:25], r[7:8], r17
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	storeli.w r9, -52(r30)                  # 4-byte Folded Spill
	.loc	1 110 13                        # parallel-rne.mlir:110:13
	add.s r2, r9, r2
	addli r9, zero, 6
	store.d r[24:25], -184(r30)             # 8-byte Folded Spill
	.loc	1 116 7                         # parallel-rne.mlir:116:7
	bneq r7, r12, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[6:7], 8(r30)
	xwait r18, 0
	loadli.w r8,  -164(r30)                 # 4-byte Folded Reload
	add.ul r[6:7], r[6:7], r[24:25]
	blt.s r21, r8, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_7 Depth=1
	lock zero, r15
	addli r8, zero, 2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 8
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 9
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 11
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 12
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 14
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 15
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 17
	dma_cfg zero, zero, r23, 10
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
	addli r8, zero, 128
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r16, 3
	dma_cfg r8, zero, r21, 4
	addli r8, zero, 512
	dma_cfg r8, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
.LBB0_18:                               # %.thread52
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -156(r30)               # 4-byte Folded Spill
	storeli.w zero, -152(r30)               # 4-byte Folded Spill
	lui r8, 60
	.loc	1 116 7                         # parallel-rne.mlir:116:7
	lock zero, r21
	dma_cfg r17, r17, zero, 0
	ori r8, r8, 64
	loadli.w r9,  -52(r30)                  # 4-byte Folded Reload
	dma_cfg zero, r7, zero, 2
	add.s r8, r9, r8
	dma_cfg r8, r6, r16, 3
	addli r7, zero, 128
	addli r8, zero, 512
	addli r6, zero, 2048
	dma_cfg r7, r16, r21, 4
	dma_cfg r8, r6, r16, 5
	addli r6, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r21
	lock zero, r15
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 6
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 8
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 9
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 11
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 12
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 14
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 15
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 16
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 17
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 18
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 19
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 20
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 21
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 22
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 23
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 24
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 25
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 26
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 27
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 28
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 29
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 30
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 31
	dma_cfg zero, zero, r6, 10
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r16, 3
	addli r2, zero, 6
	dma_cfg r7, zero, r21, 4
	dma_cfg r8, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	j .LBB0_25
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 117 7 is_stmt 1               # parallel-rne.mlir:117:7
	beq r7, r21, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r8,  -52(r30)                  # 4-byte Folded Reload
	.loc	1 117 7                         # parallel-rne.mlir:117:7
	bneq r7, r18, .LBB0_238
# %bb.21:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r6, zero, 6
	storeli.w zero, -156(r30)               # 4-byte Folded Spill
	.loc	1 117 7                         # parallel-rne.mlir:117:7
	xwait r6, 0
	addli r6, zero, 9
	xwait r6, 0
	addli r6, zero, 2
	lock zero, zero
	ds_cfg r6, zero, 0
	addli r6, zero, 128
	ds_cfg r6, zero, 1
	ds_cfg r16, zero, 14
	ds_cfg r6, zero, 13
	shuffle_coa r8, r2, r16, 2
	addli r2, zero, 1
	unlock zero
	xsignal r18, 0
	storeli.w r2, -152(r30)                 # 4-byte Folded Spill
	addli r2, zero, 8
	j .LBB0_26
.LBB0_22:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 118 7 is_stmt 1               # parallel-rne.mlir:118:7
	addli r2, zero, 8
	addli r9, zero, 11
	xwait r21, 0
	addli r8, zero, 0
	addli r7, zero, 1
	xwait r2, 0
	xwait r9, 0
	loadli.w r12,  -52(r30)                 # 4-byte Folded Reload
	addli r2, zero, 1
.LBB0_23:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r9, r8, 14
	slli r8, r8, 8
	lock zero, r2
	mm_cfg r16, r16, r16, 0
	or r9, r9, r12
	or r8, r8, r12
	mm_cfg r21, r21, r2, 2
	mm r8, r6, r9, 8
	andi r9, r7, 1
	addli r8, zero, 1
	addli r7, zero, 0
	unlock r2
	bneq r9, zero, .LBB0_23
# %bb.24:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 9
	storeli.w zero, -152(r30)               # 4-byte Folded Spill
	xsignal r15, 0
	xsignal r2, 0
	addli r2, zero, 1
	storeli.w r2, -156(r30)                 # 4-byte Folded Spill
	addli r2, zero, 10
.LBB0_25:                               # %.thread53
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
.LBB0_26:                               # %.thread53
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
	store.d r[13:14], -176(r30)             # 8-byte Folded Spill
	.loc	1 137 7 is_stmt 1               # parallel-rne.mlir:137:7
	bneq r7, r20, .LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	addli r2, zero, 14
	xwait r2, 0
.LBB0_28:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r2, 140
	loadli.w r17,  -52(r30)                 # 4-byte Folded Reload
	.loc	1 140 7 is_stmt 1               # parallel-rne.mlir:140:7
	xfence
	addli r6, zero, 128
	.loc	1 141 7                         # parallel-rne.mlir:141:7
	mfence { lm, sm, gm }
	ori r2, r2, 2560
	zext_int2long r[20:21], r6
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r13, r17, r2
	.loc	1 142 7 is_stmt 1               # parallel-rne.mlir:142:7
	addli r2, zero, 255
	csr_set csr5, r2
	addli r2, zero, 7
	zext_int2long r[8:9], r2
	store.d r[8:9], -128(r30)               # 8-byte Folded Spill
	sync_core
	.loc	1 143 7                         # parallel-rne.mlir:143:7
	bneq r7, zero, .LBB0_53
# %bb.29:                               #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[8:9], zero
	mfence { lm, sm, gm }
	store.d r[8:9], -64(r30)                # 8-byte Folded Spill
	j .LBB0_31
.LBB0_30:                               # %middle.block317
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 151 9                         # parallel-rne.mlir:151:9
	load.d r[6:7], -128(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_52
.LBB0_31:                               # %.preheader81
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_33 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	load.d r[15:16], -64(r30)               # 8-byte Folded Reload
	sll.d r[10:11], r[8:9], r2
	j .LBB0_33
.LBB0_32:                               # %vector.body313
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 152 11 is_stmt 1              # parallel-rne.mlir:152:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 167 13                        # parallel-rne.mlir:167:13
	add.s r2, r13, r2
	.loc	1 152 11                        # parallel-rne.mlir:152:11
	setneq.d r7, r[15:16], r[20:21]
	.loc	1 167 13                        # parallel-rne.mlir:167:13
	stores.w r19, 12(r2)
	stores.w r23, 8(r2)
	stores.w r12, 4(r2)
	stores.w r6, 0(r2)
	.loc	1 152 11                        # parallel-rne.mlir:152:11
	beq r7, zero, .LBB0_30
.LBB0_33:                               # %vector.body313
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	add.ul r[6:7], r[15:16], r[10:11]
	slli r2, r6, 2
	add.s r6, r17, r2
	loads.w r18, 12(r6)
	loads.w r26, 0(r6)
	loads.w r25, 4(r6)
	loads.w r24, 8(r6)
	.loc	1 155 19                        # parallel-rne.mlir:155:19
	and r22, r18, r28
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	setlt.u r6, r4, r22
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r6, zero, .LBB0_35
# %bb.34:                               # %vector.body313
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r18, 0
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_33 Depth=3
	or r19, r18, r27
.LBB0_36:                               # %vector.body313
                                        #   in Loop: Header=BB0_33 Depth=3
	and r17, r24, r28
	setlt.u r6, r4, r17
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r6, zero, .LBB0_38
# %bb.37:                               # %vector.body313
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_33 Depth=3
	or r23, r24, r27
.LBB0_39:                               # %vector.body313
                                        #   in Loop: Header=BB0_33 Depth=3
	and r7, r25, r28
	setlt.u r6, r4, r7
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r6, zero, .LBB0_41
# %bb.40:                               # %vector.body313
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r25, 0
	j .LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_33 Depth=3
	or r12, r25, r27
.LBB0_42:                               # %vector.body313
                                        #   in Loop: Header=BB0_33 Depth=3
	and r14, r26, r28
	setlt.u r6, r4, r14
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r6, zero, .LBB0_44
# %bb.43:                               # %vector.body313
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r26, 0
	.loc	1 164 19 is_stmt 1              # parallel-rne.mlir:164:19
	setlt.u r14, r3, r14
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	beq r14, zero, .LBB0_45
	j .LBB0_46
.LBB0_44:                               #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r26, r27
	.loc	1 164 19 is_stmt 1              # parallel-rne.mlir:164:19
	setlt.u r14, r3, r14
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r14, zero, .LBB0_46
.LBB0_45:                               # %vector.body313
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r26, 16
	andi r6, r6, 1
	add.s r6, r26, r6
	add.s r6, r6, r1
	and r6, r6, r5
.LBB0_46:                               # %vector.body313
                                        #   in Loop: Header=BB0_33 Depth=3
	setlt.u r7, r3, r7
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r7, zero, .LBB0_48
# %bb.47:                               # %vector.body313
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r25, 16
	andi r7, r7, 1
	add.s r7, r25, r7
	add.s r7, r7, r1
	and r12, r7, r5
	setlt.u r7, r3, r17
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	beq r7, zero, .LBB0_49
	j .LBB0_50
.LBB0_48:                               # %vector.body313
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r3, r17
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r7, zero, .LBB0_50
.LBB0_49:                               # %vector.body313
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r24, 16
	andi r7, r7, 1
	add.s r7, r24, r7
	add.s r7, r7, r1
	and r23, r7, r5
.LBB0_50:                               # %vector.body313
                                        #   in Loop: Header=BB0_33 Depth=3
	setlt.u r7, r3, r22
	loadli.w r17,  -52(r30)                 # 4-byte Folded Reload
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r7, zero, .LBB0_32
# %bb.51:                               # %vector.body313
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r18, 16
	andi r7, r7, 1
	add.s r7, r18, r7
	add.s r7, r7, r1
	and r19, r7, r5
	j .LBB0_32
.LBB0_52:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 143 7 is_stmt 1               # parallel-rne.mlir:143:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
.LBB0_53:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r2, zero, 15
	zext_int2long r[8:9], r2
	.loc	1 172 7 is_stmt 1               # parallel-rne.mlir:172:7
	addli r2, zero, 1
	store.d r[8:9], -120(r30)               # 8-byte Folded Spill
	bneq r7, r2, .LBB0_78
# %bb.54:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 172 7                         # parallel-rne.mlir:172:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_56
.LBB0_55:                               # %middle.block308
                                        #   in Loop: Header=BB0_56 Depth=2
	.loc	1 180 9 is_stmt 1               # parallel-rne.mlir:180:9
	load.d r[8:9], -120(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r2, zero, .LBB0_77
.LBB0_56:                               # %.preheader80
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_58 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[15:16], zero
	sll.d r[8:9], r[6:7], r2
	j .LBB0_58
.LBB0_57:                               # %vector.body304
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 181 11 is_stmt 1              # parallel-rne.mlir:181:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 196 13                        # parallel-rne.mlir:196:13
	add.s r2, r13, r2
	.loc	1 181 11                        # parallel-rne.mlir:181:11
	setneq.d r11, r[15:16], r[20:21]
	.loc	1 196 13                        # parallel-rne.mlir:196:13
	stores.w r19, 12(r2)
	stores.w r23, 8(r2)
	stores.w r10, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 181 11                        # parallel-rne.mlir:181:11
	beq r11, zero, .LBB0_55
.LBB0_58:                               # %vector.body304
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	add.ul r[10:11], r[15:16], r[8:9]
	slli r2, r10, 2
	add.s r10, r17, r2
	loads.w r18, 12(r10)
	loads.w r25, 0(r10)
	loads.w r11, 4(r10)
	loads.w r24, 8(r10)
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	and r22, r18, r28
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	setlt.u r10, r4, r22
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r10, zero, .LBB0_60
# %bb.59:                               # %vector.body304
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r18, 0
	j .LBB0_61
.LBB0_60:                               #   in Loop: Header=BB0_58 Depth=3
	or r19, r18, r27
.LBB0_61:                               # %vector.body304
                                        #   in Loop: Header=BB0_58 Depth=3
	and r17, r24, r28
	setlt.u r10, r4, r17
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r10, zero, .LBB0_63
# %bb.62:                               # %vector.body304
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_64
.LBB0_63:                               #   in Loop: Header=BB0_58 Depth=3
	or r23, r24, r27
.LBB0_64:                               # %vector.body304
                                        #   in Loop: Header=BB0_58 Depth=3
	and r14, r11, r28
	setlt.u r10, r4, r14
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r10, zero, .LBB0_66
# %bb.65:                               # %vector.body304
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_67
.LBB0_66:                               #   in Loop: Header=BB0_58 Depth=3
	or r10, r11, r27
.LBB0_67:                               # %vector.body304
                                        #   in Loop: Header=BB0_58 Depth=3
	and r26, r25, r28
	setlt.u r12, r4, r26
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r12, zero, .LBB0_69
# %bb.68:                               # %vector.body304
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r25, 0
	.loc	1 193 19 is_stmt 1              # parallel-rne.mlir:193:19
	setlt.u r26, r3, r26
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	beq r26, zero, .LBB0_70
	j .LBB0_71
.LBB0_69:                               #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r25, r27
	.loc	1 193 19 is_stmt 1              # parallel-rne.mlir:193:19
	setlt.u r26, r3, r26
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r26, zero, .LBB0_71
.LBB0_70:                               # %vector.body304
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r25, 16
	andi r12, r12, 1
	add.s r12, r25, r12
	add.s r12, r12, r1
	and r12, r12, r5
.LBB0_71:                               # %vector.body304
                                        #   in Loop: Header=BB0_58 Depth=3
	setlt.u r14, r3, r14
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r14, zero, .LBB0_73
# %bb.72:                               # %vector.body304
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r1
	and r10, r10, r5
	setlt.u r11, r3, r17
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	beq r11, zero, .LBB0_74
	j .LBB0_75
.LBB0_73:                               # %vector.body304
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r17
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r11, zero, .LBB0_75
.LBB0_74:                               # %vector.body304
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r24, 16
	andi r11, r11, 1
	add.s r11, r24, r11
	add.s r11, r11, r1
	and r23, r11, r5
.LBB0_75:                               # %vector.body304
                                        #   in Loop: Header=BB0_58 Depth=3
	setlt.u r11, r3, r22
	loadli.w r17,  -52(r30)                 # 4-byte Folded Reload
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r11, zero, .LBB0_57
# %bb.76:                               # %vector.body304
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r18, 16
	andi r11, r11, 1
	add.s r11, r18, r11
	add.s r11, r11, r1
	and r19, r11, r5
	j .LBB0_57
.LBB0_77:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 172 7 is_stmt 1               # parallel-rne.mlir:172:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
.LBB0_78:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r2, zero, 23
	zext_int2long r[8:9], r2
	.loc	1 201 7 is_stmt 1               # parallel-rne.mlir:201:7
	loadli.w r2,  -160(r30)                 # 4-byte Folded Reload
	store.d r[8:9], -112(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_103
# %bb.79:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 201 7                         # parallel-rne.mlir:201:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_81
.LBB0_80:                               # %middle.block299
                                        #   in Loop: Header=BB0_81 Depth=2
	.loc	1 209 9 is_stmt 1               # parallel-rne.mlir:209:9
	load.d r[8:9], -112(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r2, zero, .LBB0_102
.LBB0_81:                               # %.preheader79
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[15:16], zero
	sll.d r[8:9], r[6:7], r2
	j .LBB0_83
.LBB0_82:                               # %vector.body295
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 210 11 is_stmt 1              # parallel-rne.mlir:210:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 225 13                        # parallel-rne.mlir:225:13
	add.s r2, r13, r2
	.loc	1 210 11                        # parallel-rne.mlir:210:11
	setneq.d r11, r[15:16], r[20:21]
	.loc	1 225 13                        # parallel-rne.mlir:225:13
	stores.w r19, 12(r2)
	stores.w r23, 8(r2)
	stores.w r10, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 210 11                        # parallel-rne.mlir:210:11
	beq r11, zero, .LBB0_80
.LBB0_83:                               # %vector.body295
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_81 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	add.ul r[10:11], r[15:16], r[8:9]
	slli r2, r10, 2
	add.s r10, r17, r2
	loads.w r18, 12(r10)
	loads.w r25, 0(r10)
	loads.w r11, 4(r10)
	loads.w r24, 8(r10)
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	and r22, r18, r28
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	setlt.u r10, r4, r22
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r10, zero, .LBB0_85
# %bb.84:                               # %vector.body295
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r18, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_83 Depth=3
	or r19, r18, r27
.LBB0_86:                               # %vector.body295
                                        #   in Loop: Header=BB0_83 Depth=3
	and r17, r24, r28
	setlt.u r10, r4, r17
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r10, zero, .LBB0_88
# %bb.87:                               # %vector.body295
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_83 Depth=3
	or r23, r24, r27
.LBB0_89:                               # %vector.body295
                                        #   in Loop: Header=BB0_83 Depth=3
	and r14, r11, r28
	setlt.u r10, r4, r14
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r10, zero, .LBB0_91
# %bb.90:                               # %vector.body295
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_83 Depth=3
	or r10, r11, r27
.LBB0_92:                               # %vector.body295
                                        #   in Loop: Header=BB0_83 Depth=3
	and r26, r25, r28
	setlt.u r12, r4, r26
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r12, zero, .LBB0_94
# %bb.93:                               # %vector.body295
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r25, 0
	.loc	1 222 19 is_stmt 1              # parallel-rne.mlir:222:19
	setlt.u r26, r3, r26
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	beq r26, zero, .LBB0_95
	j .LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r25, r27
	.loc	1 222 19 is_stmt 1              # parallel-rne.mlir:222:19
	setlt.u r26, r3, r26
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r26, zero, .LBB0_96
.LBB0_95:                               # %vector.body295
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r25, 16
	andi r12, r12, 1
	add.s r12, r25, r12
	add.s r12, r12, r1
	and r12, r12, r5
.LBB0_96:                               # %vector.body295
                                        #   in Loop: Header=BB0_83 Depth=3
	setlt.u r14, r3, r14
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r14, zero, .LBB0_98
# %bb.97:                               # %vector.body295
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r1
	and r10, r10, r5
	setlt.u r11, r3, r17
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	beq r11, zero, .LBB0_99
	j .LBB0_100
.LBB0_98:                               # %vector.body295
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r17
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r11, zero, .LBB0_100
.LBB0_99:                               # %vector.body295
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r24, 16
	andi r11, r11, 1
	add.s r11, r24, r11
	add.s r11, r11, r1
	and r23, r11, r5
.LBB0_100:                              # %vector.body295
                                        #   in Loop: Header=BB0_83 Depth=3
	setlt.u r11, r3, r22
	loadli.w r17,  -52(r30)                 # 4-byte Folded Reload
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r11, zero, .LBB0_82
# %bb.101:                              # %vector.body295
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r18, 16
	andi r11, r11, 1
	add.s r11, r18, r11
	add.s r11, r11, r1
	and r19, r11, r5
	j .LBB0_82
.LBB0_102:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 201 7 is_stmt 1               # parallel-rne.mlir:201:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
.LBB0_103:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r2, zero, 31
	zext_int2long r[8:9], r2
	.loc	1 230 7 is_stmt 1               # parallel-rne.mlir:230:7
	addli r2, zero, 3
	store.d r[8:9], -104(r30)               # 8-byte Folded Spill
	bneq r7, r2, .LBB0_128
# %bb.104:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 230 7                         # parallel-rne.mlir:230:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_106
.LBB0_105:                              # %middle.block290
                                        #   in Loop: Header=BB0_106 Depth=2
	.loc	1 238 9 is_stmt 1               # parallel-rne.mlir:238:9
	load.d r[6:7], -104(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_127
.LBB0_106:                              # %.preheader78
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_108 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[24:25], zero
	sll.d r[15:16], r[8:9], r2
	j .LBB0_108
.LBB0_107:                              # %vector.body286
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 239 11 is_stmt 1              # parallel-rne.mlir:239:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 254 13                        # parallel-rne.mlir:254:13
	add.s r2, r13, r2
	.loc	1 239 11                        # parallel-rne.mlir:239:11
	setneq.d r6, r[24:25], r[20:21]
	.loc	1 254 13                        # parallel-rne.mlir:254:13
	stores.w r7, 12(r2)
	stores.w r19, 8(r2)
	stores.w r10, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 239 11                        # parallel-rne.mlir:239:11
	beq r6, zero, .LBB0_105
.LBB0_108:                              # %vector.body286
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_106 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	add.ul r[6:7], r[24:25], r[15:16]
	slli r2, r6, 2
	add.s r7, r17, r2
	loads.w r6, 12(r7)
	loads.w r23, 0(r7)
	loads.w r11, 4(r7)
	loads.w r22, 8(r7)
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	and r18, r6, r28
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	setlt.u r7, r4, r18
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r7, zero, .LBB0_110
# %bb.109:                              # %vector.body286
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_108 Depth=3
	or r7, r6, r27
.LBB0_111:                              # %vector.body286
                                        #   in Loop: Header=BB0_108 Depth=3
	and r17, r22, r28
	setlt.u r10, r4, r17
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r10, zero, .LBB0_113
# %bb.112:                              # %vector.body286
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_108 Depth=3
	or r19, r22, r27
.LBB0_114:                              # %vector.body286
                                        #   in Loop: Header=BB0_108 Depth=3
	and r14, r11, r28
	setlt.u r10, r4, r14
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r10, zero, .LBB0_116
# %bb.115:                              # %vector.body286
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_108 Depth=3
	or r10, r11, r27
.LBB0_117:                              # %vector.body286
                                        #   in Loop: Header=BB0_108 Depth=3
	and r26, r23, r28
	setlt.u r12, r4, r26
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r12, zero, .LBB0_119
# %bb.118:                              # %vector.body286
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r23, 0
	.loc	1 251 19 is_stmt 1              # parallel-rne.mlir:251:19
	setlt.u r26, r3, r26
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	beq r26, zero, .LBB0_120
	j .LBB0_121
.LBB0_119:                              #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r23, r27
	.loc	1 251 19 is_stmt 1              # parallel-rne.mlir:251:19
	setlt.u r26, r3, r26
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r26, zero, .LBB0_121
.LBB0_120:                              # %vector.body286
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r23, 16
	andi r12, r12, 1
	add.s r12, r23, r12
	add.s r12, r12, r1
	and r12, r12, r5
.LBB0_121:                              # %vector.body286
                                        #   in Loop: Header=BB0_108 Depth=3
	setlt.u r14, r3, r14
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r14, zero, .LBB0_123
# %bb.122:                              # %vector.body286
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r1
	and r10, r10, r5
	setlt.u r11, r3, r17
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	beq r11, zero, .LBB0_124
	j .LBB0_125
.LBB0_123:                              # %vector.body286
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r17
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r11, zero, .LBB0_125
.LBB0_124:                              # %vector.body286
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r22, 16
	andi r11, r11, 1
	add.s r11, r22, r11
	add.s r11, r11, r1
	and r19, r11, r5
.LBB0_125:                              # %vector.body286
                                        #   in Loop: Header=BB0_108 Depth=3
	setlt.u r11, r3, r18
	loadli.w r17,  -52(r30)                 # 4-byte Folded Reload
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r11, zero, .LBB0_107
# %bb.126:                              # %vector.body286
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r1
	and r7, r6, r5
	j .LBB0_107
.LBB0_127:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 230 7 is_stmt 1               # parallel-rne.mlir:230:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
.LBB0_128:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r2, zero, 39
	zext_int2long r[8:9], r2
	.loc	1 259 7 is_stmt 1               # parallel-rne.mlir:259:7
	loadli.w r2,  -156(r30)                 # 4-byte Folded Reload
	store.d r[8:9], -96(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_153
# %bb.129:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 259 7                         # parallel-rne.mlir:259:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[15:16], r2
	j .LBB0_131
.LBB0_130:                              # %middle.block281
                                        #   in Loop: Header=BB0_131 Depth=2
	.loc	1 267 9 is_stmt 1               # parallel-rne.mlir:267:9
	load.d r[6:7], -96(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[15:16], r[6:7]
	addli.d r[15:16], r[15:16], 1
	beq r2, zero, .LBB0_152
.LBB0_131:                              # %.preheader77
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_133 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[18:19], zero
	sll.d r[24:25], r[15:16], r2
	j .LBB0_133
.LBB0_132:                              # %vector.body277
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 268 11 is_stmt 1              # parallel-rne.mlir:268:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 283 13                        # parallel-rne.mlir:283:13
	add.s r2, r13, r2
	.loc	1 268 11                        # parallel-rne.mlir:268:11
	setneq.d r6, r[18:19], r[20:21]
	.loc	1 283 13                        # parallel-rne.mlir:283:13
	stores.w r7, 12(r2)
	stores.w r9, 8(r2)
	stores.w r10, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 268 11                        # parallel-rne.mlir:268:11
	beq r6, zero, .LBB0_130
.LBB0_133:                              # %vector.body277
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	add.ul r[6:7], r[18:19], r[24:25]
	slli r2, r6, 2
	add.s r7, r17, r2
	loads.w r6, 12(r7)
	loads.w r23, 0(r7)
	loads.w r11, 4(r7)
	loads.w r22, 8(r7)
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	and r8, r6, r28
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	setlt.u r7, r4, r8
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r7, zero, .LBB0_135
# %bb.134:                              # %vector.body277
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_136
.LBB0_135:                              #   in Loop: Header=BB0_133 Depth=3
	or r7, r6, r27
.LBB0_136:                              # %vector.body277
                                        #   in Loop: Header=BB0_133 Depth=3
	and r17, r22, r28
	setlt.u r9, r4, r17
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r9, zero, .LBB0_138
# %bb.137:                              # %vector.body277
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r22, 0
	j .LBB0_139
.LBB0_138:                              #   in Loop: Header=BB0_133 Depth=3
	or r9, r22, r27
.LBB0_139:                              # %vector.body277
                                        #   in Loop: Header=BB0_133 Depth=3
	and r14, r11, r28
	setlt.u r10, r4, r14
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r10, zero, .LBB0_141
# %bb.140:                              # %vector.body277
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_142
.LBB0_141:                              #   in Loop: Header=BB0_133 Depth=3
	or r10, r11, r27
.LBB0_142:                              # %vector.body277
                                        #   in Loop: Header=BB0_133 Depth=3
	and r26, r23, r28
	setlt.u r12, r4, r26
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r12, zero, .LBB0_144
# %bb.143:                              # %vector.body277
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r23, 0
	.loc	1 280 19 is_stmt 1              # parallel-rne.mlir:280:19
	setlt.u r26, r3, r26
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	beq r26, zero, .LBB0_145
	j .LBB0_146
.LBB0_144:                              #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r23, r27
	.loc	1 280 19 is_stmt 1              # parallel-rne.mlir:280:19
	setlt.u r26, r3, r26
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r26, zero, .LBB0_146
.LBB0_145:                              # %vector.body277
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r23, 16
	andi r12, r12, 1
	add.s r12, r23, r12
	add.s r12, r12, r1
	and r12, r12, r5
.LBB0_146:                              # %vector.body277
                                        #   in Loop: Header=BB0_133 Depth=3
	setlt.u r14, r3, r14
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r14, zero, .LBB0_148
# %bb.147:                              # %vector.body277
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r1
	and r10, r10, r5
	setlt.u r11, r3, r17
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	beq r11, zero, .LBB0_149
	j .LBB0_150
.LBB0_148:                              # %vector.body277
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r17
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r11, zero, .LBB0_150
.LBB0_149:                              # %vector.body277
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r9, r9, r5
.LBB0_150:                              # %vector.body277
                                        #   in Loop: Header=BB0_133 Depth=3
	setlt.u r8, r3, r8
	loadli.w r17,  -52(r30)                 # 4-byte Folded Reload
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r8, zero, .LBB0_132
# %bb.151:                              # %vector.body277
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r1
	and r7, r6, r5
	j .LBB0_132
.LBB0_152:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 259 7 is_stmt 1               # parallel-rne.mlir:259:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
.LBB0_153:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r2, zero, 47
	zext_int2long r[8:9], r2
	.loc	1 288 7 is_stmt 1               # parallel-rne.mlir:288:7
	addli r2, zero, 5
	store.d r[8:9], -88(r30)                # 8-byte Folded Spill
	bneq r7, r2, .LBB0_178
# %bb.154:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 40
	.loc	1 288 7                         # parallel-rne.mlir:288:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[15:16], r2
	j .LBB0_156
.LBB0_155:                              # %middle.block272
                                        #   in Loop: Header=BB0_156 Depth=2
	.loc	1 296 9 is_stmt 1               # parallel-rne.mlir:296:9
	load.d r[6:7], -88(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[15:16], r[6:7]
	addli.d r[15:16], r[15:16], 1
	beq r2, zero, .LBB0_177
.LBB0_156:                              # %.preheader76
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_158 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[18:19], zero
	sll.d r[24:25], r[15:16], r2
	j .LBB0_158
.LBB0_157:                              # %vector.body268
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 297 11 is_stmt 1              # parallel-rne.mlir:297:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 312 13                        # parallel-rne.mlir:312:13
	add.s r2, r13, r2
	.loc	1 297 11                        # parallel-rne.mlir:297:11
	setneq.d r6, r[18:19], r[20:21]
	.loc	1 312 13                        # parallel-rne.mlir:312:13
	stores.w r7, 12(r2)
	stores.w r9, 8(r2)
	stores.w r10, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 297 11                        # parallel-rne.mlir:297:11
	beq r6, zero, .LBB0_155
.LBB0_158:                              # %vector.body268
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	add.ul r[6:7], r[18:19], r[24:25]
	slli r2, r6, 2
	add.s r7, r17, r2
	loads.w r6, 12(r7)
	loads.w r23, 0(r7)
	loads.w r11, 4(r7)
	loads.w r22, 8(r7)
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	and r8, r6, r28
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	setlt.u r7, r4, r8
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r7, zero, .LBB0_160
# %bb.159:                              # %vector.body268
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_161
.LBB0_160:                              #   in Loop: Header=BB0_158 Depth=3
	or r7, r6, r27
.LBB0_161:                              # %vector.body268
                                        #   in Loop: Header=BB0_158 Depth=3
	and r17, r22, r28
	setlt.u r9, r4, r17
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r9, zero, .LBB0_163
# %bb.162:                              # %vector.body268
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r22, 0
	j .LBB0_164
.LBB0_163:                              #   in Loop: Header=BB0_158 Depth=3
	or r9, r22, r27
.LBB0_164:                              # %vector.body268
                                        #   in Loop: Header=BB0_158 Depth=3
	and r14, r11, r28
	setlt.u r10, r4, r14
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r10, zero, .LBB0_166
# %bb.165:                              # %vector.body268
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_167
.LBB0_166:                              #   in Loop: Header=BB0_158 Depth=3
	or r10, r11, r27
.LBB0_167:                              # %vector.body268
                                        #   in Loop: Header=BB0_158 Depth=3
	and r26, r23, r28
	setlt.u r12, r4, r26
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r12, zero, .LBB0_169
# %bb.168:                              # %vector.body268
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r23, 0
	.loc	1 309 19 is_stmt 1              # parallel-rne.mlir:309:19
	setlt.u r26, r3, r26
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	beq r26, zero, .LBB0_170
	j .LBB0_171
.LBB0_169:                              #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r23, r27
	.loc	1 309 19 is_stmt 1              # parallel-rne.mlir:309:19
	setlt.u r26, r3, r26
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r26, zero, .LBB0_171
.LBB0_170:                              # %vector.body268
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r23, 16
	andi r12, r12, 1
	add.s r12, r23, r12
	add.s r12, r12, r1
	and r12, r12, r5
.LBB0_171:                              # %vector.body268
                                        #   in Loop: Header=BB0_158 Depth=3
	setlt.u r14, r3, r14
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r14, zero, .LBB0_173
# %bb.172:                              # %vector.body268
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r1
	and r10, r10, r5
	setlt.u r11, r3, r17
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	beq r11, zero, .LBB0_174
	j .LBB0_175
.LBB0_173:                              # %vector.body268
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r17
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r11, zero, .LBB0_175
.LBB0_174:                              # %vector.body268
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r9, r9, r5
.LBB0_175:                              # %vector.body268
                                        #   in Loop: Header=BB0_158 Depth=3
	setlt.u r8, r3, r8
	loadli.w r17,  -52(r30)                 # 4-byte Folded Reload
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r8, zero, .LBB0_157
# %bb.176:                              # %vector.body268
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r1
	and r7, r6, r5
	j .LBB0_157
.LBB0_177:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 288 7 is_stmt 1               # parallel-rne.mlir:288:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
.LBB0_178:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r2, zero, 55
	zext_int2long r[8:9], r2
	.loc	1 317 7 is_stmt 1               # parallel-rne.mlir:317:7
	addli r2, zero, 6
	store.d r[8:9], -80(r30)                # 8-byte Folded Spill
	bneq r7, r2, .LBB0_203
# %bb.179:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 317 7                         # parallel-rne.mlir:317:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[15:16], r2
	j .LBB0_181
.LBB0_180:                              # %middle.block263
                                        #   in Loop: Header=BB0_181 Depth=2
	.loc	1 325 9 is_stmt 1               # parallel-rne.mlir:325:9
	load.d r[6:7], -80(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[15:16], r[6:7]
	addli.d r[15:16], r[15:16], 1
	beq r2, zero, .LBB0_202
.LBB0_181:                              # %.preheader75
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_183 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[18:19], zero
	sll.d r[24:25], r[15:16], r2
	j .LBB0_183
.LBB0_182:                              # %vector.body259
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 326 11 is_stmt 1              # parallel-rne.mlir:326:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 341 13                        # parallel-rne.mlir:341:13
	add.s r2, r13, r2
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	setneq.d r6, r[18:19], r[20:21]
	.loc	1 341 13                        # parallel-rne.mlir:341:13
	stores.w r7, 12(r2)
	stores.w r9, 8(r2)
	stores.w r10, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	beq r6, zero, .LBB0_180
.LBB0_183:                              # %vector.body259
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_181 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	add.ul r[6:7], r[18:19], r[24:25]
	slli r2, r6, 2
	add.s r7, r17, r2
	loads.w r6, 12(r7)
	loads.w r23, 0(r7)
	loads.w r11, 4(r7)
	loads.w r22, 8(r7)
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	and r8, r6, r28
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	setlt.u r7, r4, r8
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r7, zero, .LBB0_185
# %bb.184:                              # %vector.body259
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_183 Depth=3
	or r7, r6, r27
.LBB0_186:                              # %vector.body259
                                        #   in Loop: Header=BB0_183 Depth=3
	and r17, r22, r28
	setlt.u r9, r4, r17
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r9, zero, .LBB0_188
# %bb.187:                              # %vector.body259
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r22, 0
	j .LBB0_189
.LBB0_188:                              #   in Loop: Header=BB0_183 Depth=3
	or r9, r22, r27
.LBB0_189:                              # %vector.body259
                                        #   in Loop: Header=BB0_183 Depth=3
	and r14, r11, r28
	setlt.u r10, r4, r14
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r10, zero, .LBB0_191
# %bb.190:                              # %vector.body259
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_192
.LBB0_191:                              #   in Loop: Header=BB0_183 Depth=3
	or r10, r11, r27
.LBB0_192:                              # %vector.body259
                                        #   in Loop: Header=BB0_183 Depth=3
	and r26, r23, r28
	setlt.u r12, r4, r26
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r12, zero, .LBB0_194
# %bb.193:                              # %vector.body259
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r23, 0
	.loc	1 338 19 is_stmt 1              # parallel-rne.mlir:338:19
	setlt.u r26, r3, r26
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	beq r26, zero, .LBB0_195
	j .LBB0_196
.LBB0_194:                              #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r23, r27
	.loc	1 338 19 is_stmt 1              # parallel-rne.mlir:338:19
	setlt.u r26, r3, r26
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r26, zero, .LBB0_196
.LBB0_195:                              # %vector.body259
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r23, 16
	andi r12, r12, 1
	add.s r12, r23, r12
	add.s r12, r12, r1
	and r12, r12, r5
.LBB0_196:                              # %vector.body259
                                        #   in Loop: Header=BB0_183 Depth=3
	setlt.u r14, r3, r14
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r14, zero, .LBB0_198
# %bb.197:                              # %vector.body259
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r1
	and r10, r10, r5
	setlt.u r11, r3, r17
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	beq r11, zero, .LBB0_199
	j .LBB0_200
.LBB0_198:                              # %vector.body259
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r17
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r11, zero, .LBB0_200
.LBB0_199:                              # %vector.body259
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r9, r9, r5
.LBB0_200:                              # %vector.body259
                                        #   in Loop: Header=BB0_183 Depth=3
	setlt.u r8, r3, r8
	loadli.w r17,  -52(r30)                 # 4-byte Folded Reload
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r8, zero, .LBB0_182
# %bb.201:                              # %vector.body259
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r1
	and r7, r6, r5
	j .LBB0_182
.LBB0_202:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 317 7 is_stmt 1               # parallel-rne.mlir:317:7
	mfence { sm }
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
.LBB0_203:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 63
	zext_int2long r[6:7], r2
	.loc	1 346 7 is_stmt 1               # parallel-rne.mlir:346:7
	loadli.w r2,  -152(r30)                 # 4-byte Folded Reload
	store.d r[6:7], -72(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_228
# %bb.204:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 56
	.loc	1 346 7                         # parallel-rne.mlir:346:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[15:16], r2
	j .LBB0_206
.LBB0_205:                              # %middle.block254
                                        #   in Loop: Header=BB0_206 Depth=2
	.loc	1 354 9 is_stmt 1               # parallel-rne.mlir:354:9
	load.d r[6:7], -72(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[15:16], r[6:7]
	addli.d r[15:16], r[15:16], 1
	beq r2, zero, .LBB0_227
.LBB0_206:                              # %.preheader74
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_208 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[18:19], zero
	sll.d r[24:25], r[15:16], r2
	j .LBB0_208
.LBB0_207:                              # %vector.body250
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 355 11 is_stmt 1              # parallel-rne.mlir:355:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	add.s r2, r13, r2
	.loc	1 355 11                        # parallel-rne.mlir:355:11
	setneq.d r6, r[18:19], r[20:21]
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	stores.w r7, 12(r2)
	stores.w r9, 8(r2)
	stores.w r10, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 355 11                        # parallel-rne.mlir:355:11
	beq r6, zero, .LBB0_205
.LBB0_208:                              # %vector.body250
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_206 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	add.ul r[6:7], r[18:19], r[24:25]
	slli r2, r6, 2
	add.s r7, r17, r2
	loads.w r6, 12(r7)
	loads.w r23, 0(r7)
	loads.w r11, 4(r7)
	loads.w r22, 8(r7)
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	and r8, r6, r28
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	setlt.u r7, r4, r8
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r7, zero, .LBB0_210
# %bb.209:                              # %vector.body250
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_211
.LBB0_210:                              #   in Loop: Header=BB0_208 Depth=3
	or r7, r6, r27
.LBB0_211:                              # %vector.body250
                                        #   in Loop: Header=BB0_208 Depth=3
	and r17, r22, r28
	setlt.u r9, r4, r17
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r9, zero, .LBB0_213
# %bb.212:                              # %vector.body250
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r22, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_208 Depth=3
	or r9, r22, r27
.LBB0_214:                              # %vector.body250
                                        #   in Loop: Header=BB0_208 Depth=3
	and r14, r11, r28
	setlt.u r10, r4, r14
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r10, zero, .LBB0_216
# %bb.215:                              # %vector.body250
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_208 Depth=3
	or r10, r11, r27
.LBB0_217:                              # %vector.body250
                                        #   in Loop: Header=BB0_208 Depth=3
	and r26, r23, r28
	setlt.u r12, r4, r26
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r12, zero, .LBB0_219
# %bb.218:                              # %vector.body250
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r23, 0
	.loc	1 367 19 is_stmt 1              # parallel-rne.mlir:367:19
	setlt.u r26, r3, r26
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	beq r26, zero, .LBB0_220
	j .LBB0_221
.LBB0_219:                              #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r23, r27
	.loc	1 367 19 is_stmt 1              # parallel-rne.mlir:367:19
	setlt.u r26, r3, r26
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	bneq r26, zero, .LBB0_221
.LBB0_220:                              # %vector.body250
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r23, 16
	andi r12, r12, 1
	add.s r12, r23, r12
	add.s r12, r12, r1
	and r12, r12, r5
.LBB0_221:                              # %vector.body250
                                        #   in Loop: Header=BB0_208 Depth=3
	setlt.u r14, r3, r14
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	bneq r14, zero, .LBB0_223
# %bb.222:                              # %vector.body250
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r1
	and r10, r10, r5
	setlt.u r11, r3, r17
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	beq r11, zero, .LBB0_224
	j .LBB0_225
.LBB0_223:                              # %vector.body250
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r17
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	bneq r11, zero, .LBB0_225
.LBB0_224:                              # %vector.body250
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r9, r9, r5
.LBB0_225:                              # %vector.body250
                                        #   in Loop: Header=BB0_208 Depth=3
	setlt.u r8, r3, r8
	loadli.w r17,  -52(r30)                 # 4-byte Folded Reload
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	bneq r8, zero, .LBB0_207
# %bb.226:                              # %vector.body250
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r1
	and r7, r6, r5
	j .LBB0_207
.LBB0_227:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 346 7 is_stmt 1               # parallel-rne.mlir:346:7
	mfence { sm }
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
.LBB0_228:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -148(r30)                 # 4-byte Folded Reload
	addli r6, zero, 896
	zext_int2long r[6:7], r6
	slli r2, r2, 7
	zext_int2long r[8:9], r2
	.loc	1 375 7 is_stmt 1               # parallel-rne.mlir:375:7
	addli r2, zero, 255
	min.ul r[6:7], r[8:9], r[6:7]
	addli.d r[6:7], r[6:7], 128
	max.ul r[6:7], r[6:7], r[8:9]
	sub.sl r[6:7], r[6:7], r[8:9]
	min.ul r[6:7], r[6:7], r[20:21]
	store.d r[6:7], -192(r30)               # 8-byte Folded Spill
	csr_set csr5, r2
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	addli r2, zero, 3
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	sync_core
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	bneq r7, r2, .LBB0_230
# %bb.229:                              # %.thread56.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	addli r6, zero, 16
	xsignal r2, 0
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	addli r2, zero, 12
	xsignal r2, 0
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	addli r2, zero, 13
	xwait r2, 0
	.loc	1 383 7                         # parallel-rne.mlir:383:7
	addli r2, zero, 22
	xwait r2, 0
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	j .LBB0_240
.LBB0_230:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -136(r30)                 # 4-byte Folded Reload
	load.d r[14:15], -184(r30)              # 8-byte Folded Reload
	.loc	1 379 7 is_stmt 1               # parallel-rne.mlir:379:7
	addli r8, zero, 1
	lui r9, 8
	slli r6, r2, 9
	lui r2, 140
	add.s r2, r6, r2
	bneq r7, r8, .LBB0_234
# %bb.231:                              #   in Loop: Header=BB0_7 Depth=1
	load.d r[7:8], 16(r30)
	addli r12, zero, 4
	add.ul r[7:8], r[7:8], r[14:15]
	addli r14, zero, 16
	xwait r14, 0
	loadli.w r9,  -164(r30)                 # 4-byte Folded Reload
	blt.s r12, r9, .LBB0_233
# %bb.232:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, zero, 5
	addli r11, zero, 1
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	addli r10, zero, 2
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 3
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 6
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 7
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 8
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 9
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 11
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 12
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 13
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 14
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 15
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 17
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 18
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 19
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 20
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 21
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 22
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 23
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 24
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 25
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 26
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 27
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 28
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 29
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 30
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 31
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 64
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r10, 3
	addli r10, zero, 128
	dma_cfg r10, zero, r12, 4
	addli r10, zero, 512
	dma_cfg r10, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
.LBB0_233:                              # %.thread56.thread58
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r11, zero, 1
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	lock zero, r12
	lui r9, 140
	addli r10, zero, 64
	dma_cfg r11, r11, zero, 0
	ori r9, r9, 64
	dma_cfg zero, r8, zero, 2
	load.d r[15:16], -192(r30)              # 8-byte Folded Reload
	add.s r6, r6, r9
	dma_cfg r6, r7, r10, 3
	addli r8, zero, 256
	addli r9, r15, 31
	slli r7, r15, 1
	addli r15, zero, 128
	addli r16, zero, 512
	srli r6, r9, 5
	andi r7, r7, 62
	addli r9, zero, 2
	dma_cfg r15, r10, r6, 4
	dma_cfg r16, r8, r11, 5
	addli r8, zero, 5
	dma_cfg zero, zero, r7, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 3
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 6
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 17
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 7
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 8
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 9
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 11
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 12
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 13
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 14
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 15
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r14, 10
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
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r10, 3
	dma_cfg r15, zero, r6, 4
	addli r6, zero, 16
	dma_cfg r16, zero, r11, 5
	dma_cfg zero, zero, r7, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r7
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	dma_cfg zero, zero, zero, 8
	unlock r8
	xsignal r9, 0
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	j .LBB0_240
.LBB0_234:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	addli r6, zero, 5
	bneq r7, r6, .LBB0_239
# %bb.235:                              #   in Loop: Header=BB0_7 Depth=1
	addli r7, zero, 12
	addli r6, zero, 0
	xwait r7, 0
	addli r7, zero, 15
	xwait r7, 0
	addli r7, zero, 2
	lock zero, r7
	lui r7, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r7, r7, zero, 0
	addli r7, zero, 127
	ew_cfg zero, r7, zero, 2
	addli r7, zero, 1
	ew_cfg r7, zero, zero, 3
.LBB0_236:                              #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r7, r13, r6
	addli r6, r6, 512
	dsmadd r7, r7, r2, 0
	bneq r6, r9, .LBB0_236
# %bb.237:                              # %.thread56
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 2
	addli r6, zero, 16
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	unlock r2
	addli r2, zero, 13
	xsignal r2, 0
	xsignal r6, 0
	j .LBB0_240
.LBB0_238:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -156(r30)               # 4-byte Folded Spill
	storeli.w zero, -152(r30)               # 4-byte Folded Spill
	store.d r[13:14], -176(r30)             # 8-byte Folded Spill
	.loc	1 137 7 is_stmt 1               # parallel-rne.mlir:137:7
	beq r7, r20, .LBB0_27
	j .LBB0_28
.LBB0_239:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 16
.LBB0_240:                              # %.critedge6
                                        #   in Loop: Header=BB0_7 Depth=1
	lui r2, 100
	.loc	1 385 7 is_stmt 1               # parallel-rne.mlir:385:7
	xfence
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	mfence { lm, sm, gm }
	add.s r17, r17, r2
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	beq r7, zero, .LBB0_317
# %bb.241:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 417 7                         # parallel-rne.mlir:417:7
	addli r2, zero, 1
	bneq r7, r2, .LBB0_341
.LBB0_242:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 417 7                         # parallel-rne.mlir:417:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_244
.LBB0_243:                              # %middle.block236
                                        #   in Loop: Header=BB0_244 Depth=2
	.loc	1 425 9 is_stmt 1               # parallel-rne.mlir:425:9
	load.d r[6:7], -120(r30)                # 8-byte Folded Reload
	load.d r[8:9], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_265
.LBB0_244:                              # %.preheader72
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_246 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[24:25], zero
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	sll.d r[18:19], r[6:7], r2
	j .LBB0_246
.LBB0_245:                              # %vector.body232
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 426 11 is_stmt 1              # parallel-rne.mlir:426:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 441 13                        # parallel-rne.mlir:441:13
	add.s r2, r17, r2
	.loc	1 426 11                        # parallel-rne.mlir:426:11
	setneq.d r6, r[24:25], r[20:21]
	.loc	1 441 13                        # parallel-rne.mlir:441:13
	stores.w r7, 12(r2)
	stores.w r9, 8(r2)
	stores.w r10, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 426 11                        # parallel-rne.mlir:426:11
	beq r6, zero, .LBB0_243
.LBB0_246:                              # %vector.body232
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	add.ul r[6:7], r[24:25], r[18:19]
	slli r2, r6, 2
	add.s r7, r13, r2
	loads.w r6, 12(r7)
	loads.w r26, 0(r7)
	loads.w r11, 4(r7)
	loads.w r22, 8(r7)
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	and r8, r6, r28
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	setlt.u r7, r4, r8
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	bneq r7, zero, .LBB0_248
# %bb.247:                              # %vector.body232
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_249
.LBB0_248:                              #   in Loop: Header=BB0_246 Depth=3
	or r7, r6, r27
.LBB0_249:                              # %vector.body232
                                        #   in Loop: Header=BB0_246 Depth=3
	and r23, r22, r28
	setlt.u r9, r4, r23
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	bneq r9, zero, .LBB0_251
# %bb.250:                              # %vector.body232
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r22, 0
	j .LBB0_252
.LBB0_251:                              #   in Loop: Header=BB0_246 Depth=3
	or r9, r22, r27
.LBB0_252:                              # %vector.body232
                                        #   in Loop: Header=BB0_246 Depth=3
	and r14, r11, r28
	setlt.u r10, r4, r14
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	bneq r10, zero, .LBB0_254
# %bb.253:                              # %vector.body232
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_255
.LBB0_254:                              #   in Loop: Header=BB0_246 Depth=3
	or r10, r11, r27
.LBB0_255:                              # %vector.body232
                                        #   in Loop: Header=BB0_246 Depth=3
	and r15, r26, r28
	setlt.u r12, r4, r15
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	bneq r12, zero, .LBB0_257
# %bb.256:                              # %vector.body232
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r26, 0
	.loc	1 438 19 is_stmt 1              # parallel-rne.mlir:438:19
	setlt.u r15, r3, r15
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	beq r15, zero, .LBB0_258
	j .LBB0_259
.LBB0_257:                              #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r26, r27
	.loc	1 438 19 is_stmt 1              # parallel-rne.mlir:438:19
	setlt.u r15, r3, r15
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	bneq r15, zero, .LBB0_259
.LBB0_258:                              # %vector.body232
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r26, 16
	andi r12, r12, 1
	add.s r12, r26, r12
	add.s r12, r12, r1
	and r12, r12, r5
.LBB0_259:                              # %vector.body232
                                        #   in Loop: Header=BB0_246 Depth=3
	setlt.u r14, r3, r14
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	bneq r14, zero, .LBB0_262
# %bb.260:                              # %vector.body232
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r1
	and r10, r10, r5
	setlt.u r11, r3, r23
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	beq r11, zero, .LBB0_263
.LBB0_261:                              # %vector.body232
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r8
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	bneq r8, zero, .LBB0_245
	j .LBB0_264
.LBB0_262:                              # %vector.body232
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r23
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	bneq r11, zero, .LBB0_261
.LBB0_263:                              # %vector.body232
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r9, r9, r5
	setlt.u r8, r3, r8
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	bneq r8, zero, .LBB0_245
.LBB0_264:                              # %vector.body232
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r1
	and r7, r6, r5
	j .LBB0_245
.LBB0_265:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 417 7 is_stmt 1               # parallel-rne.mlir:417:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	addli r6, zero, 16
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
	.loc	1 446 7                         # parallel-rne.mlir:446:7
	loadli.w r2,  -160(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_342
.LBB0_266:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 475 7                         # parallel-rne.mlir:475:7
	addli r2, zero, 3
	bneq r7, r2, .LBB0_366
.LBB0_267:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 475 7                         # parallel-rne.mlir:475:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_269
.LBB0_268:                              # %middle.block218
                                        #   in Loop: Header=BB0_269 Depth=2
	.loc	1 483 9 is_stmt 1               # parallel-rne.mlir:483:9
	load.d r[6:7], -104(r30)                # 8-byte Folded Reload
	load.d r[8:9], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_290
.LBB0_269:                              # %.preheader70
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_271 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[24:25], zero
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	sll.d r[18:19], r[6:7], r2
	j .LBB0_271
.LBB0_270:                              # %vector.body214
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 484 11 is_stmt 1              # parallel-rne.mlir:484:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 499 13                        # parallel-rne.mlir:499:13
	add.s r2, r17, r2
	.loc	1 484 11                        # parallel-rne.mlir:484:11
	setneq.d r6, r[24:25], r[20:21]
	.loc	1 499 13                        # parallel-rne.mlir:499:13
	stores.w r7, 12(r2)
	stores.w r9, 8(r2)
	stores.w r10, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 484 11                        # parallel-rne.mlir:484:11
	beq r6, zero, .LBB0_268
.LBB0_271:                              # %vector.body214
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_269 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	add.ul r[6:7], r[24:25], r[18:19]
	slli r2, r6, 2
	add.s r7, r13, r2
	loads.w r6, 12(r7)
	loads.w r26, 0(r7)
	loads.w r11, 4(r7)
	loads.w r22, 8(r7)
	.loc	1 487 19                        # parallel-rne.mlir:487:19
	and r8, r6, r28
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	setlt.u r7, r4, r8
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	bneq r7, zero, .LBB0_273
# %bb.272:                              # %vector.body214
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_274
.LBB0_273:                              #   in Loop: Header=BB0_271 Depth=3
	or r7, r6, r27
.LBB0_274:                              # %vector.body214
                                        #   in Loop: Header=BB0_271 Depth=3
	and r23, r22, r28
	setlt.u r9, r4, r23
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	bneq r9, zero, .LBB0_276
# %bb.275:                              # %vector.body214
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r22, 0
	j .LBB0_277
.LBB0_276:                              #   in Loop: Header=BB0_271 Depth=3
	or r9, r22, r27
.LBB0_277:                              # %vector.body214
                                        #   in Loop: Header=BB0_271 Depth=3
	and r14, r11, r28
	setlt.u r10, r4, r14
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	bneq r10, zero, .LBB0_279
# %bb.278:                              # %vector.body214
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_280
.LBB0_279:                              #   in Loop: Header=BB0_271 Depth=3
	or r10, r11, r27
.LBB0_280:                              # %vector.body214
                                        #   in Loop: Header=BB0_271 Depth=3
	and r15, r26, r28
	setlt.u r12, r4, r15
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	bneq r12, zero, .LBB0_282
# %bb.281:                              # %vector.body214
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r26, 0
	.loc	1 496 19 is_stmt 1              # parallel-rne.mlir:496:19
	setlt.u r15, r3, r15
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	beq r15, zero, .LBB0_283
	j .LBB0_284
.LBB0_282:                              #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r26, r27
	.loc	1 496 19 is_stmt 1              # parallel-rne.mlir:496:19
	setlt.u r15, r3, r15
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	bneq r15, zero, .LBB0_284
.LBB0_283:                              # %vector.body214
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r26, 16
	andi r12, r12, 1
	add.s r12, r26, r12
	add.s r12, r12, r1
	and r12, r12, r5
.LBB0_284:                              # %vector.body214
                                        #   in Loop: Header=BB0_271 Depth=3
	setlt.u r14, r3, r14
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	bneq r14, zero, .LBB0_287
# %bb.285:                              # %vector.body214
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r1
	and r10, r10, r5
	setlt.u r11, r3, r23
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	beq r11, zero, .LBB0_288
.LBB0_286:                              # %vector.body214
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r8
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	bneq r8, zero, .LBB0_270
	j .LBB0_289
.LBB0_287:                              # %vector.body214
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r23
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	bneq r11, zero, .LBB0_286
.LBB0_288:                              # %vector.body214
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r9, r9, r5
	setlt.u r8, r3, r8
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	bneq r8, zero, .LBB0_270
.LBB0_289:                              # %vector.body214
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r1
	and r7, r6, r5
	j .LBB0_270
.LBB0_290:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 475 7 is_stmt 1               # parallel-rne.mlir:475:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
	.loc	1 504 7                         # parallel-rne.mlir:504:7
	loadli.w r2,  -156(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_367
.LBB0_291:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 533 7                         # parallel-rne.mlir:533:7
	addli r2, zero, 5
	bneq r7, r2, .LBB0_391
.LBB0_292:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 40
	.loc	1 533 7                         # parallel-rne.mlir:533:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_294
.LBB0_293:                              # %middle.block200
                                        #   in Loop: Header=BB0_294 Depth=2
	.loc	1 541 9 is_stmt 1               # parallel-rne.mlir:541:9
	load.d r[6:7], -88(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_315
.LBB0_294:                              # %.preheader68
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_296 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[24:25], zero
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	sll.d r[18:19], r[6:7], r2
	j .LBB0_296
.LBB0_295:                              # %vector.body196
                                        #   in Loop: Header=BB0_296 Depth=3
	.loc	1 542 11 is_stmt 1              # parallel-rne.mlir:542:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 557 13                        # parallel-rne.mlir:557:13
	add.s r2, r17, r2
	.loc	1 542 11                        # parallel-rne.mlir:542:11
	setneq.d r6, r[24:25], r[20:21]
	.loc	1 557 13                        # parallel-rne.mlir:557:13
	stores.w r7, 12(r2)
	stores.w r9, 8(r2)
	stores.w r10, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 542 11                        # parallel-rne.mlir:542:11
	beq r6, zero, .LBB0_293
.LBB0_296:                              # %vector.body196
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_294 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 543 19                        # parallel-rne.mlir:543:19
	add.ul r[6:7], r[24:25], r[18:19]
	slli r2, r6, 2
	add.s r7, r13, r2
	loads.w r6, 12(r7)
	loads.w r26, 0(r7)
	loads.w r11, 4(r7)
	loads.w r22, 8(r7)
	.loc	1 545 19                        # parallel-rne.mlir:545:19
	and r8, r6, r28
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	setlt.u r7, r4, r8
	.loc	1 548 19                        # parallel-rne.mlir:548:19
	bneq r7, zero, .LBB0_298
# %bb.297:                              # %vector.body196
                                        #   in Loop: Header=BB0_296 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_299
.LBB0_298:                              #   in Loop: Header=BB0_296 Depth=3
	or r7, r6, r27
.LBB0_299:                              # %vector.body196
                                        #   in Loop: Header=BB0_296 Depth=3
	and r23, r22, r28
	setlt.u r9, r4, r23
	.loc	1 548 19                        # parallel-rne.mlir:548:19
	bneq r9, zero, .LBB0_301
# %bb.300:                              # %vector.body196
                                        #   in Loop: Header=BB0_296 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r22, 0
	j .LBB0_302
.LBB0_301:                              #   in Loop: Header=BB0_296 Depth=3
	or r9, r22, r27
.LBB0_302:                              # %vector.body196
                                        #   in Loop: Header=BB0_296 Depth=3
	and r14, r11, r28
	setlt.u r10, r4, r14
	.loc	1 548 19                        # parallel-rne.mlir:548:19
	bneq r10, zero, .LBB0_304
# %bb.303:                              # %vector.body196
                                        #   in Loop: Header=BB0_296 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_305
.LBB0_304:                              #   in Loop: Header=BB0_296 Depth=3
	or r10, r11, r27
.LBB0_305:                              # %vector.body196
                                        #   in Loop: Header=BB0_296 Depth=3
	and r15, r26, r28
	setlt.u r12, r4, r15
	.loc	1 548 19                        # parallel-rne.mlir:548:19
	bneq r12, zero, .LBB0_307
# %bb.306:                              # %vector.body196
                                        #   in Loop: Header=BB0_296 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r26, 0
	.loc	1 554 19 is_stmt 1              # parallel-rne.mlir:554:19
	setlt.u r15, r3, r15
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	beq r15, zero, .LBB0_308
	j .LBB0_309
.LBB0_307:                              #   in Loop: Header=BB0_296 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r26, r27
	.loc	1 554 19 is_stmt 1              # parallel-rne.mlir:554:19
	setlt.u r15, r3, r15
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	bneq r15, zero, .LBB0_309
.LBB0_308:                              # %vector.body196
                                        #   in Loop: Header=BB0_296 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r26, 16
	andi r12, r12, 1
	add.s r12, r26, r12
	add.s r12, r12, r1
	and r12, r12, r5
.LBB0_309:                              # %vector.body196
                                        #   in Loop: Header=BB0_296 Depth=3
	setlt.u r14, r3, r14
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	bneq r14, zero, .LBB0_312
# %bb.310:                              # %vector.body196
                                        #   in Loop: Header=BB0_296 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r1
	and r10, r10, r5
	setlt.u r11, r3, r23
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	beq r11, zero, .LBB0_313
.LBB0_311:                              # %vector.body196
                                        #   in Loop: Header=BB0_296 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r8
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	bneq r8, zero, .LBB0_295
	j .LBB0_314
.LBB0_312:                              # %vector.body196
                                        #   in Loop: Header=BB0_296 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r23
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	bneq r11, zero, .LBB0_311
.LBB0_313:                              # %vector.body196
                                        #   in Loop: Header=BB0_296 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r9, r9, r5
	setlt.u r8, r3, r8
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	bneq r8, zero, .LBB0_295
.LBB0_314:                              # %vector.body196
                                        #   in Loop: Header=BB0_296 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r1
	and r7, r6, r5
	j .LBB0_295
.LBB0_315:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 533 7 is_stmt 1               # parallel-rne.mlir:533:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
	.loc	1 562 7                         # parallel-rne.mlir:562:7
	addli r2, zero, 6
	beq r7, r2, .LBB0_392
.LBB0_316:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 591 7                         # parallel-rne.mlir:591:7
	loadli.w r2,  -152(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_416
	j .LBB0_440
.LBB0_317:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	xfence
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	store.d r[6:7], -136(r30)               # 8-byte Folded Spill
	j .LBB0_319
.LBB0_318:                              # %middle.block245
                                        #   in Loop: Header=BB0_319 Depth=2
	.loc	1 396 9                         # parallel-rne.mlir:396:9
	load.d r[6:7], -128(r30)                # 8-byte Folded Reload
	load.d r[8:9], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_340
.LBB0_319:                              # %.preheader73
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_321 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	load.d r[15:16], -136(r30)              # 8-byte Folded Reload
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	sll.d r[24:25], r[6:7], r2
	j .LBB0_321
.LBB0_320:                              # %vector.body241
                                        #   in Loop: Header=BB0_321 Depth=3
	.loc	1 397 11 is_stmt 1              # parallel-rne.mlir:397:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 412 13                        # parallel-rne.mlir:412:13
	add.s r2, r17, r2
	.loc	1 397 11                        # parallel-rne.mlir:397:11
	setneq.d r6, r[15:16], r[20:21]
	.loc	1 412 13                        # parallel-rne.mlir:412:13
	stores.w r7, 12(r2)
	stores.w r23, 8(r2)
	stores.w r10, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 397 11                        # parallel-rne.mlir:397:11
	beq r6, zero, .LBB0_318
.LBB0_321:                              # %vector.body241
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_319 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	add.ul r[6:7], r[15:16], r[24:25]
	slli r2, r6, 2
	add.s r7, r13, r2
	loads.w r6, 12(r7)
	loads.w r9, 0(r7)
	loads.w r11, 4(r7)
	loads.w r26, 8(r7)
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	and r22, r6, r28
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	setlt.u r7, r4, r22
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	bneq r7, zero, .LBB0_323
# %bb.322:                              # %vector.body241
                                        #   in Loop: Header=BB0_321 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_324
.LBB0_323:                              #   in Loop: Header=BB0_321 Depth=3
	or r7, r6, r27
.LBB0_324:                              # %vector.body241
                                        #   in Loop: Header=BB0_321 Depth=3
	and r8, r26, r28
	setlt.u r10, r4, r8
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	bneq r10, zero, .LBB0_326
# %bb.325:                              # %vector.body241
                                        #   in Loop: Header=BB0_321 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r26, 0
	j .LBB0_327
.LBB0_326:                              #   in Loop: Header=BB0_321 Depth=3
	or r23, r26, r27
.LBB0_327:                              # %vector.body241
                                        #   in Loop: Header=BB0_321 Depth=3
	and r14, r11, r28
	setlt.u r10, r4, r14
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	bneq r10, zero, .LBB0_329
# %bb.328:                              # %vector.body241
                                        #   in Loop: Header=BB0_321 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_330
.LBB0_329:                              #   in Loop: Header=BB0_321 Depth=3
	or r10, r11, r27
.LBB0_330:                              # %vector.body241
                                        #   in Loop: Header=BB0_321 Depth=3
	and r18, r9, r28
	setlt.u r12, r4, r18
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	bneq r12, zero, .LBB0_332
# %bb.331:                              # %vector.body241
                                        #   in Loop: Header=BB0_321 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
	.loc	1 409 19 is_stmt 1              # parallel-rne.mlir:409:19
	setlt.u r18, r3, r18
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	beq r18, zero, .LBB0_333
	j .LBB0_334
.LBB0_332:                              #   in Loop: Header=BB0_321 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r9, r27
	.loc	1 409 19 is_stmt 1              # parallel-rne.mlir:409:19
	setlt.u r18, r3, r18
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	bneq r18, zero, .LBB0_334
.LBB0_333:                              # %vector.body241
                                        #   in Loop: Header=BB0_321 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r9, 16
	andi r12, r12, 1
	add.s r9, r9, r12
	add.s r9, r9, r1
	and r12, r9, r5
.LBB0_334:                              # %vector.body241
                                        #   in Loop: Header=BB0_321 Depth=3
	setlt.u r9, r3, r14
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	bneq r9, zero, .LBB0_337
# %bb.335:                              # %vector.body241
                                        #   in Loop: Header=BB0_321 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r11, 16
	andi r9, r9, 1
	add.s r9, r11, r9
	add.s r9, r9, r1
	and r10, r9, r5
	setlt.u r8, r3, r8
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	beq r8, zero, .LBB0_338
.LBB0_336:                              # %vector.body241
                                        #   in Loop: Header=BB0_321 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r22
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	bneq r8, zero, .LBB0_320
	j .LBB0_339
.LBB0_337:                              # %vector.body241
                                        #   in Loop: Header=BB0_321 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r8
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	bneq r8, zero, .LBB0_336
.LBB0_338:                              # %vector.body241
                                        #   in Loop: Header=BB0_321 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r26, 16
	andi r8, r8, 1
	add.s r8, r26, r8
	add.s r8, r8, r1
	and r23, r8, r5
	setlt.u r8, r3, r22
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	bneq r8, zero, .LBB0_320
.LBB0_339:                              # %vector.body241
                                        #   in Loop: Header=BB0_321 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r1
	and r7, r6, r5
	j .LBB0_320
.LBB0_340:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 388 7 is_stmt 1               # parallel-rne.mlir:388:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	addli r6, zero, 16
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
	.loc	1 417 7                         # parallel-rne.mlir:417:7
	addli r2, zero, 1
	beq r7, r2, .LBB0_242
.LBB0_341:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 446 7                         # parallel-rne.mlir:446:7
	loadli.w r2,  -160(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_266
.LBB0_342:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[6:7], r6
	mfence { lm, sm, gm }
	j .LBB0_344
.LBB0_343:                              # %middle.block227
                                        #   in Loop: Header=BB0_344 Depth=2
	.loc	1 454 9                         # parallel-rne.mlir:454:9
	load.d r[6:7], -112(r30)                # 8-byte Folded Reload
	load.d r[8:9], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_365
.LBB0_344:                              # %.preheader71
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_346 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[24:25], zero
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	sll.d r[18:19], r[6:7], r2
	j .LBB0_346
.LBB0_345:                              # %vector.body223
                                        #   in Loop: Header=BB0_346 Depth=3
	.loc	1 455 11 is_stmt 1              # parallel-rne.mlir:455:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 470 13                        # parallel-rne.mlir:470:13
	add.s r2, r17, r2
	.loc	1 455 11                        # parallel-rne.mlir:455:11
	setneq.d r6, r[24:25], r[20:21]
	.loc	1 470 13                        # parallel-rne.mlir:470:13
	stores.w r7, 12(r2)
	stores.w r9, 8(r2)
	stores.w r10, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 455 11                        # parallel-rne.mlir:455:11
	beq r6, zero, .LBB0_343
.LBB0_346:                              # %vector.body223
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_344 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 456 19                        # parallel-rne.mlir:456:19
	add.ul r[6:7], r[24:25], r[18:19]
	slli r2, r6, 2
	add.s r7, r13, r2
	loads.w r6, 12(r7)
	loads.w r26, 0(r7)
	loads.w r11, 4(r7)
	loads.w r22, 8(r7)
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	and r8, r6, r28
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	setlt.u r7, r4, r8
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	bneq r7, zero, .LBB0_348
# %bb.347:                              # %vector.body223
                                        #   in Loop: Header=BB0_346 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_349
.LBB0_348:                              #   in Loop: Header=BB0_346 Depth=3
	or r7, r6, r27
.LBB0_349:                              # %vector.body223
                                        #   in Loop: Header=BB0_346 Depth=3
	and r23, r22, r28
	setlt.u r9, r4, r23
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	bneq r9, zero, .LBB0_351
# %bb.350:                              # %vector.body223
                                        #   in Loop: Header=BB0_346 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r22, 0
	j .LBB0_352
.LBB0_351:                              #   in Loop: Header=BB0_346 Depth=3
	or r9, r22, r27
.LBB0_352:                              # %vector.body223
                                        #   in Loop: Header=BB0_346 Depth=3
	and r14, r11, r28
	setlt.u r10, r4, r14
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	bneq r10, zero, .LBB0_354
# %bb.353:                              # %vector.body223
                                        #   in Loop: Header=BB0_346 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_355
.LBB0_354:                              #   in Loop: Header=BB0_346 Depth=3
	or r10, r11, r27
.LBB0_355:                              # %vector.body223
                                        #   in Loop: Header=BB0_346 Depth=3
	and r15, r26, r28
	setlt.u r12, r4, r15
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	bneq r12, zero, .LBB0_357
# %bb.356:                              # %vector.body223
                                        #   in Loop: Header=BB0_346 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r26, 0
	.loc	1 467 19 is_stmt 1              # parallel-rne.mlir:467:19
	setlt.u r15, r3, r15
	.loc	1 468 19                        # parallel-rne.mlir:468:19
	beq r15, zero, .LBB0_358
	j .LBB0_359
.LBB0_357:                              #   in Loop: Header=BB0_346 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r26, r27
	.loc	1 467 19 is_stmt 1              # parallel-rne.mlir:467:19
	setlt.u r15, r3, r15
	.loc	1 468 19                        # parallel-rne.mlir:468:19
	bneq r15, zero, .LBB0_359
.LBB0_358:                              # %vector.body223
                                        #   in Loop: Header=BB0_346 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r26, 16
	andi r12, r12, 1
	add.s r12, r26, r12
	add.s r12, r12, r1
	and r12, r12, r5
.LBB0_359:                              # %vector.body223
                                        #   in Loop: Header=BB0_346 Depth=3
	setlt.u r14, r3, r14
	.loc	1 468 19                        # parallel-rne.mlir:468:19
	bneq r14, zero, .LBB0_362
# %bb.360:                              # %vector.body223
                                        #   in Loop: Header=BB0_346 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r1
	and r10, r10, r5
	setlt.u r11, r3, r23
	.loc	1 468 19                        # parallel-rne.mlir:468:19
	beq r11, zero, .LBB0_363
.LBB0_361:                              # %vector.body223
                                        #   in Loop: Header=BB0_346 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r8
	.loc	1 468 19                        # parallel-rne.mlir:468:19
	bneq r8, zero, .LBB0_345
	j .LBB0_364
.LBB0_362:                              # %vector.body223
                                        #   in Loop: Header=BB0_346 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r23
	.loc	1 468 19                        # parallel-rne.mlir:468:19
	bneq r11, zero, .LBB0_361
.LBB0_363:                              # %vector.body223
                                        #   in Loop: Header=BB0_346 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r9, r9, r5
	setlt.u r8, r3, r8
	.loc	1 468 19                        # parallel-rne.mlir:468:19
	bneq r8, zero, .LBB0_345
.LBB0_364:                              # %vector.body223
                                        #   in Loop: Header=BB0_346 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r1
	and r7, r6, r5
	j .LBB0_345
.LBB0_365:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 446 7 is_stmt 1               # parallel-rne.mlir:446:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
	.loc	1 475 7                         # parallel-rne.mlir:475:7
	addli r2, zero, 3
	beq r7, r2, .LBB0_267
.LBB0_366:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 504 7                         # parallel-rne.mlir:504:7
	loadli.w r2,  -156(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_291
.LBB0_367:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 504 7                         # parallel-rne.mlir:504:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_369
.LBB0_368:                              # %middle.block209
                                        #   in Loop: Header=BB0_369 Depth=2
	.loc	1 512 9 is_stmt 1               # parallel-rne.mlir:512:9
	load.d r[6:7], -96(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_390
.LBB0_369:                              # %.preheader69
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_371 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[24:25], zero
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	sll.d r[18:19], r[6:7], r2
	j .LBB0_371
.LBB0_370:                              # %vector.body205
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 513 11 is_stmt 1              # parallel-rne.mlir:513:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 528 13                        # parallel-rne.mlir:528:13
	add.s r2, r17, r2
	.loc	1 513 11                        # parallel-rne.mlir:513:11
	setneq.d r6, r[24:25], r[20:21]
	.loc	1 528 13                        # parallel-rne.mlir:528:13
	stores.w r7, 12(r2)
	stores.w r9, 8(r2)
	stores.w r10, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 513 11                        # parallel-rne.mlir:513:11
	beq r6, zero, .LBB0_368
.LBB0_371:                              # %vector.body205
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_369 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	add.ul r[6:7], r[24:25], r[18:19]
	slli r2, r6, 2
	add.s r7, r13, r2
	loads.w r6, 12(r7)
	loads.w r26, 0(r7)
	loads.w r11, 4(r7)
	loads.w r22, 8(r7)
	.loc	1 516 19                        # parallel-rne.mlir:516:19
	and r8, r6, r28
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	setlt.u r7, r4, r8
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	bneq r7, zero, .LBB0_373
# %bb.372:                              # %vector.body205
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_374
.LBB0_373:                              #   in Loop: Header=BB0_371 Depth=3
	or r7, r6, r27
.LBB0_374:                              # %vector.body205
                                        #   in Loop: Header=BB0_371 Depth=3
	and r23, r22, r28
	setlt.u r9, r4, r23
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	bneq r9, zero, .LBB0_376
# %bb.375:                              # %vector.body205
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r22, 0
	j .LBB0_377
.LBB0_376:                              #   in Loop: Header=BB0_371 Depth=3
	or r9, r22, r27
.LBB0_377:                              # %vector.body205
                                        #   in Loop: Header=BB0_371 Depth=3
	and r14, r11, r28
	setlt.u r10, r4, r14
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	bneq r10, zero, .LBB0_379
# %bb.378:                              # %vector.body205
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_380
.LBB0_379:                              #   in Loop: Header=BB0_371 Depth=3
	or r10, r11, r27
.LBB0_380:                              # %vector.body205
                                        #   in Loop: Header=BB0_371 Depth=3
	and r15, r26, r28
	setlt.u r12, r4, r15
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	bneq r12, zero, .LBB0_382
# %bb.381:                              # %vector.body205
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r26, 0
	.loc	1 525 19 is_stmt 1              # parallel-rne.mlir:525:19
	setlt.u r15, r3, r15
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	beq r15, zero, .LBB0_383
	j .LBB0_384
.LBB0_382:                              #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r26, r27
	.loc	1 525 19 is_stmt 1              # parallel-rne.mlir:525:19
	setlt.u r15, r3, r15
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	bneq r15, zero, .LBB0_384
.LBB0_383:                              # %vector.body205
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r26, 16
	andi r12, r12, 1
	add.s r12, r26, r12
	add.s r12, r12, r1
	and r12, r12, r5
.LBB0_384:                              # %vector.body205
                                        #   in Loop: Header=BB0_371 Depth=3
	setlt.u r14, r3, r14
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	bneq r14, zero, .LBB0_387
# %bb.385:                              # %vector.body205
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r1
	and r10, r10, r5
	setlt.u r11, r3, r23
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	beq r11, zero, .LBB0_388
.LBB0_386:                              # %vector.body205
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r8
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	bneq r8, zero, .LBB0_370
	j .LBB0_389
.LBB0_387:                              # %vector.body205
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r23
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	bneq r11, zero, .LBB0_386
.LBB0_388:                              # %vector.body205
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r9, r9, r5
	setlt.u r8, r3, r8
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	bneq r8, zero, .LBB0_370
.LBB0_389:                              # %vector.body205
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r1
	and r7, r6, r5
	j .LBB0_370
.LBB0_390:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 504 7 is_stmt 1               # parallel-rne.mlir:504:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
	.loc	1 533 7                         # parallel-rne.mlir:533:7
	addli r2, zero, 5
	beq r7, r2, .LBB0_292
.LBB0_391:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 562 7                         # parallel-rne.mlir:562:7
	addli r2, zero, 6
	bneq r7, r2, .LBB0_316
.LBB0_392:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 562 7                         # parallel-rne.mlir:562:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_394
.LBB0_393:                              # %middle.block191
                                        #   in Loop: Header=BB0_394 Depth=2
	.loc	1 570 9 is_stmt 1               # parallel-rne.mlir:570:9
	load.d r[6:7], -80(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_415
.LBB0_394:                              # %.preheader67
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_396 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[24:25], zero
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	sll.d r[18:19], r[6:7], r2
	j .LBB0_396
.LBB0_395:                              # %vector.body187
                                        #   in Loop: Header=BB0_396 Depth=3
	.loc	1 571 11 is_stmt 1              # parallel-rne.mlir:571:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 586 13                        # parallel-rne.mlir:586:13
	add.s r2, r17, r2
	.loc	1 571 11                        # parallel-rne.mlir:571:11
	setneq.d r6, r[24:25], r[20:21]
	.loc	1 586 13                        # parallel-rne.mlir:586:13
	stores.w r7, 12(r2)
	stores.w r9, 8(r2)
	stores.w r10, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 571 11                        # parallel-rne.mlir:571:11
	beq r6, zero, .LBB0_393
.LBB0_396:                              # %vector.body187
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_394 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 572 19                        # parallel-rne.mlir:572:19
	add.ul r[6:7], r[24:25], r[18:19]
	slli r2, r6, 2
	add.s r7, r13, r2
	loads.w r6, 12(r7)
	loads.w r26, 0(r7)
	loads.w r11, 4(r7)
	loads.w r22, 8(r7)
	.loc	1 574 19                        # parallel-rne.mlir:574:19
	and r8, r6, r28
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	setlt.u r7, r4, r8
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	bneq r7, zero, .LBB0_398
# %bb.397:                              # %vector.body187
                                        #   in Loop: Header=BB0_396 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_399
.LBB0_398:                              #   in Loop: Header=BB0_396 Depth=3
	or r7, r6, r27
.LBB0_399:                              # %vector.body187
                                        #   in Loop: Header=BB0_396 Depth=3
	and r23, r22, r28
	setlt.u r9, r4, r23
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	bneq r9, zero, .LBB0_401
# %bb.400:                              # %vector.body187
                                        #   in Loop: Header=BB0_396 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r22, 0
	j .LBB0_402
.LBB0_401:                              #   in Loop: Header=BB0_396 Depth=3
	or r9, r22, r27
.LBB0_402:                              # %vector.body187
                                        #   in Loop: Header=BB0_396 Depth=3
	and r14, r11, r28
	setlt.u r10, r4, r14
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	bneq r10, zero, .LBB0_404
# %bb.403:                              # %vector.body187
                                        #   in Loop: Header=BB0_396 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_405
.LBB0_404:                              #   in Loop: Header=BB0_396 Depth=3
	or r10, r11, r27
.LBB0_405:                              # %vector.body187
                                        #   in Loop: Header=BB0_396 Depth=3
	and r15, r26, r28
	setlt.u r12, r4, r15
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	bneq r12, zero, .LBB0_407
# %bb.406:                              # %vector.body187
                                        #   in Loop: Header=BB0_396 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r26, 0
	.loc	1 583 19 is_stmt 1              # parallel-rne.mlir:583:19
	setlt.u r15, r3, r15
	.loc	1 584 19                        # parallel-rne.mlir:584:19
	beq r15, zero, .LBB0_408
	j .LBB0_409
.LBB0_407:                              #   in Loop: Header=BB0_396 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r26, r27
	.loc	1 583 19 is_stmt 1              # parallel-rne.mlir:583:19
	setlt.u r15, r3, r15
	.loc	1 584 19                        # parallel-rne.mlir:584:19
	bneq r15, zero, .LBB0_409
.LBB0_408:                              # %vector.body187
                                        #   in Loop: Header=BB0_396 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r26, 16
	andi r12, r12, 1
	add.s r12, r26, r12
	add.s r12, r12, r1
	and r12, r12, r5
.LBB0_409:                              # %vector.body187
                                        #   in Loop: Header=BB0_396 Depth=3
	setlt.u r14, r3, r14
	.loc	1 584 19                        # parallel-rne.mlir:584:19
	bneq r14, zero, .LBB0_412
# %bb.410:                              # %vector.body187
                                        #   in Loop: Header=BB0_396 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r1
	and r10, r10, r5
	setlt.u r11, r3, r23
	.loc	1 584 19                        # parallel-rne.mlir:584:19
	beq r11, zero, .LBB0_413
.LBB0_411:                              # %vector.body187
                                        #   in Loop: Header=BB0_396 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r8
	.loc	1 584 19                        # parallel-rne.mlir:584:19
	bneq r8, zero, .LBB0_395
	j .LBB0_414
.LBB0_412:                              # %vector.body187
                                        #   in Loop: Header=BB0_396 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r23
	.loc	1 584 19                        # parallel-rne.mlir:584:19
	bneq r11, zero, .LBB0_411
.LBB0_413:                              # %vector.body187
                                        #   in Loop: Header=BB0_396 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r9, r9, r5
	setlt.u r8, r3, r8
	.loc	1 584 19                        # parallel-rne.mlir:584:19
	bneq r8, zero, .LBB0_395
.LBB0_414:                              # %vector.body187
                                        #   in Loop: Header=BB0_396 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r1
	and r7, r6, r5
	j .LBB0_395
.LBB0_415:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 562 7 is_stmt 1               # parallel-rne.mlir:562:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
	.loc	1 591 7                         # parallel-rne.mlir:591:7
	loadli.w r2,  -152(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_440
.LBB0_416:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 56
	.loc	1 591 7                         # parallel-rne.mlir:591:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_418
.LBB0_417:                              # %middle.block182
                                        #   in Loop: Header=BB0_418 Depth=2
	.loc	1 599 9 is_stmt 1               # parallel-rne.mlir:599:9
	load.d r[6:7], -72(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_439
.LBB0_418:                              # %.preheader66
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_420 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[24:25], zero
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	sll.d r[18:19], r[6:7], r2
	j .LBB0_420
.LBB0_419:                              # %vector.body178
                                        #   in Loop: Header=BB0_420 Depth=3
	.loc	1 600 11 is_stmt 1              # parallel-rne.mlir:600:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 615 13                        # parallel-rne.mlir:615:13
	add.s r2, r17, r2
	.loc	1 600 11                        # parallel-rne.mlir:600:11
	setneq.d r6, r[24:25], r[20:21]
	.loc	1 615 13                        # parallel-rne.mlir:615:13
	stores.w r7, 12(r2)
	stores.w r9, 8(r2)
	stores.w r10, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 600 11                        # parallel-rne.mlir:600:11
	beq r6, zero, .LBB0_417
.LBB0_420:                              # %vector.body178
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_418 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 601 19                        # parallel-rne.mlir:601:19
	add.ul r[6:7], r[24:25], r[18:19]
	slli r2, r6, 2
	add.s r7, r13, r2
	loads.w r6, 12(r7)
	loads.w r26, 0(r7)
	loads.w r11, 4(r7)
	loads.w r22, 8(r7)
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	and r8, r6, r28
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	setlt.u r7, r4, r8
	.loc	1 606 19                        # parallel-rne.mlir:606:19
	bneq r7, zero, .LBB0_422
# %bb.421:                              # %vector.body178
                                        #   in Loop: Header=BB0_420 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_423
.LBB0_422:                              #   in Loop: Header=BB0_420 Depth=3
	or r7, r6, r27
.LBB0_423:                              # %vector.body178
                                        #   in Loop: Header=BB0_420 Depth=3
	and r23, r22, r28
	setlt.u r9, r4, r23
	.loc	1 606 19                        # parallel-rne.mlir:606:19
	bneq r9, zero, .LBB0_425
# %bb.424:                              # %vector.body178
                                        #   in Loop: Header=BB0_420 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r22, 0
	j .LBB0_426
.LBB0_425:                              #   in Loop: Header=BB0_420 Depth=3
	or r9, r22, r27
.LBB0_426:                              # %vector.body178
                                        #   in Loop: Header=BB0_420 Depth=3
	and r14, r11, r28
	setlt.u r10, r4, r14
	.loc	1 606 19                        # parallel-rne.mlir:606:19
	bneq r10, zero, .LBB0_428
# %bb.427:                              # %vector.body178
                                        #   in Loop: Header=BB0_420 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_429
.LBB0_428:                              #   in Loop: Header=BB0_420 Depth=3
	or r10, r11, r27
.LBB0_429:                              # %vector.body178
                                        #   in Loop: Header=BB0_420 Depth=3
	and r15, r26, r28
	setlt.u r12, r4, r15
	.loc	1 606 19                        # parallel-rne.mlir:606:19
	bneq r12, zero, .LBB0_431
# %bb.430:                              # %vector.body178
                                        #   in Loop: Header=BB0_420 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r26, 0
	.loc	1 612 19 is_stmt 1              # parallel-rne.mlir:612:19
	setlt.u r15, r3, r15
	.loc	1 613 19                        # parallel-rne.mlir:613:19
	beq r15, zero, .LBB0_432
	j .LBB0_433
.LBB0_431:                              #   in Loop: Header=BB0_420 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r26, r27
	.loc	1 612 19 is_stmt 1              # parallel-rne.mlir:612:19
	setlt.u r15, r3, r15
	.loc	1 613 19                        # parallel-rne.mlir:613:19
	bneq r15, zero, .LBB0_433
.LBB0_432:                              # %vector.body178
                                        #   in Loop: Header=BB0_420 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r26, 16
	andi r12, r12, 1
	add.s r12, r26, r12
	add.s r12, r12, r1
	and r12, r12, r5
.LBB0_433:                              # %vector.body178
                                        #   in Loop: Header=BB0_420 Depth=3
	setlt.u r14, r3, r14
	.loc	1 613 19                        # parallel-rne.mlir:613:19
	bneq r14, zero, .LBB0_436
# %bb.434:                              # %vector.body178
                                        #   in Loop: Header=BB0_420 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r1
	and r10, r10, r5
	setlt.u r11, r3, r23
	.loc	1 613 19                        # parallel-rne.mlir:613:19
	beq r11, zero, .LBB0_437
.LBB0_435:                              # %vector.body178
                                        #   in Loop: Header=BB0_420 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r8
	.loc	1 613 19                        # parallel-rne.mlir:613:19
	bneq r8, zero, .LBB0_419
	j .LBB0_438
.LBB0_436:                              # %vector.body178
                                        #   in Loop: Header=BB0_420 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r23
	.loc	1 613 19                        # parallel-rne.mlir:613:19
	bneq r11, zero, .LBB0_435
.LBB0_437:                              # %vector.body178
                                        #   in Loop: Header=BB0_420 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r9, r9, r5
	setlt.u r8, r3, r8
	.loc	1 613 19                        # parallel-rne.mlir:613:19
	bneq r8, zero, .LBB0_419
.LBB0_438:                              # %vector.body178
                                        #   in Loop: Header=BB0_420 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r1
	and r7, r6, r5
	j .LBB0_419
.LBB0_439:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 591 7 is_stmt 1               # parallel-rne.mlir:591:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
.LBB0_440:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 621 7                         # parallel-rne.mlir:621:7
	addli r2, zero, 3
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	sync_core
	.loc	1 621 7                         # parallel-rne.mlir:621:7
	bneq r7, r2, .LBB0_442
# %bb.441:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 14
	.loc	1 626 13                        # parallel-rne.mlir:626:13
	addli r6, zero, 5
	.loc	1 621 7                         # parallel-rne.mlir:621:7
	xsignal r2, 0
	.loc	1 622 7                         # parallel-rne.mlir:622:7
	addli r2, zero, 19
	xsignal r2, 0
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	addli r2, zero, 20
	xsignal r2, 0
	.loc	1 624 7                         # parallel-rne.mlir:624:7
	addli r2, zero, 17
	xsignal r2, 0
	.loc	1 626 13                        # parallel-rne.mlir:626:13
	loadli.w r2,  -48(r30)
	.loc	1 629 13                        # parallel-rne.mlir:629:13
	loadli.w r7,  -24(r30)
	.loc	1 626 13                        # parallel-rne.mlir:626:13
	loadli.w r8,  -212(r30)                 # 4-byte Folded Reload
	mod.s r6, r2, r6
	addli r2, r2, 1
	storeli.w r2, -48(r30)
	slli r2, r6, 15
	.loc	1 629 13                        # parallel-rne.mlir:629:13
	addli r6, r7, 1
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	.loc	1 626 13                        # parallel-rne.mlir:626:13
	add.s r13, r2, r8
	.loc	1 635 7                         # parallel-rne.mlir:635:7
	addli r2, zero, 18
	.loc	1 629 13                        # parallel-rne.mlir:629:13
	storeli.w r6, -24(r30)
	.loc	1 635 7                         # parallel-rne.mlir:635:7
	xwait r2, 0
	.loc	1 636 7                         # parallel-rne.mlir:636:7
	addli r2, zero, 23
	xwait r2, 0
	j .LBB0_449
.LBB0_442:                              # %.critedge10
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 626 13                        # parallel-rne.mlir:626:13
	loadli.w r2,  -48(r30)
	addli r8, zero, 5
	loadli.w r9,  -212(r30)                 # 4-byte Folded Reload
	mod.s r6, r2, r8
	addli r2, r2, 1
	storeli.w r2, -48(r30)
	slli r6, r6, 15
	add.s r13, r6, r9
	.loc	1 627 7                         # parallel-rne.mlir:627:7
	bneq r7, r8, .LBB0_448
# %bb.443:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 17
	addli r10, zero, 2
	addli r7, zero, 4
	addli r9, zero, 1
	lui r11, 790528
	addli r6, zero, 0
	xwait r2, 0
	addli r2, zero, 24
	xwait r2, 0
	lock zero, r10
	addli r2, zero, 2047
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r2, zero, 2
	addli r2, zero, 13
	ew_cfg r7, zero, zero, 3
	ew_cfg r7, r7, zero, 19
	ew_cfg r2, zero, zero, 10
	loadli.w r2,  -216(r30)                 # 4-byte Folded Reload
	ew_cfg r10, r9, r2, 11
	addli r2, zero, 3
	ew_cfg zero, zero, r2, 13
	lui r2, 266232
	ew_cfg r11, r7, r2, 14
	lui r2, 260096
	ew_cfg zero, r2, zero, 15
	sslut r13, r17, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r10
	.loc	1 629 13                        # parallel-rne.mlir:629:13
	loadli.w r2,  -24(r30)
	mod.s r7, r2, r8
	addli r2, r2, 1
	storeli.w r2, -24(r30)
	.loc	1 630 7                         # parallel-rne.mlir:630:7
	addli r2, zero, 19
	xwait r2, 0
	addli r2, zero, 25
	xwait r2, 0
	lock zero, r10
	.loc	1 629 13                        # parallel-rne.mlir:629:13
	slli r2, r7, 15
	.loc	1 630 7                         # parallel-rne.mlir:630:7
	ew_cfg zero, zero, zero, 1
	.loc	1 629 13                        # parallel-rne.mlir:629:13
	loadli.w r7,  -220(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r7
	.loc	1 630 7                         # parallel-rne.mlir:630:7
	addli r7, zero, 127
	ew_cfg zero, r7, zero, 2
	ew_cfg r9, zero, zero, 3
	lui r9, 8
	loadli.w r7,  -224(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r7, zero, zero, 0
.LBB0_444:                              #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r7, r2, r6
	add.s r8, r17, r6
	addli r6, r6, 512
	dscmpnsel r7, r8, r8, 0
	bneq r6, r9, .LBB0_444
# %bb.445:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r7, zero, 2
	addli r6, zero, 0
	.loc	1 630 7                         # parallel-rne.mlir:630:7
	unlock r7
	.loc	1 631 7 is_stmt 1               # parallel-rne.mlir:631:7
	lock zero, r7
	addli r7, zero, 127
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r7, zero, 2
	addli r7, zero, 1
	ew_cfg r7, zero, zero, 3
	ewcoeff_cfg r3, zero, zero, 0
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
.LBB0_446:                              #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r7, r2, r6
	addli r6, r6, 512
	dscmpnsel r7, r7, r7, 4
	bneq r6, r9, .LBB0_446
# %bb.447:                              # %.critedge14.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r7, zero, 2
	.loc	1 632 7 is_stmt 1               # parallel-rne.mlir:632:7
	addli r6, zero, 20
	lui r9, 260096
	addli r8, zero, 2047
	.loc	1 631 7                         # parallel-rne.mlir:631:7
	unlock r7
	.loc	1 632 7                         # parallel-rne.mlir:632:7
	xwait r6, 0
	lock zero, r7
	lui r6, 784384
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r9, r6, zero, 0
	addli r6, zero, 4
	ew_cfg zero, r8, zero, 2
	ew_cfg r6, zero, zero, 3
	ew_cfg r6, r6, r6, 19
	dsmadd r17, r17, r2, 0
	addli r2, zero, 25
	ew_cfg zero, zero, zero, 19
	unlock r7
	xsignal r2, 0
	.loc	1 633 7                         # parallel-rne.mlir:633:7
	lock zero, r7
	addli r2, zero, 2
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	.loc	1 633 7                         # parallel-rne.mlir:633:7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r9, r9, zero, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r6, zero, zero, 3
	ew_cfg r6, r6, r6, 19
	dsmadd r13, r13, r17, 0
	ew_cfg zero, zero, zero, 19
	unlock r2
	addli r2, zero, 18
	xsignal r2, 0
	addli r2, zero, 23
	xsignal r2, 0
	.loc	1 635 7                         # parallel-rne.mlir:635:7
	j .LBB0_449
.LBB0_448:                              # %.critedge14
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 629 13                        # parallel-rne.mlir:629:13
	loadli.w r2,  -24(r30)
	addli r2, r2, 1
	storeli.w r2, -24(r30)
.LBB0_449:                              # %.critedge16
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 640 7                         # parallel-rne.mlir:640:7
	addli r2, zero, 255
	.loc	1 638 7                         # parallel-rne.mlir:638:7
	xfence
	addli r6, zero, 16
	.loc	1 639 7                         # parallel-rne.mlir:639:7
	mfence { lm, sm, gm }
	.loc	1 640 7                         # parallel-rne.mlir:640:7
	csr_set csr5, r2
	sub.s r2, r17, r13
	storeli.w r2, -148(r30)                 # 4-byte Folded Spill
	addli r2, zero, 127
	zext_int2long r[8:9], r2
	store.d r[8:9], -64(r30)                # 8-byte Folded Spill
	sync_core
	.loc	1 641 7                         # parallel-rne.mlir:641:7
	beq r7, zero, .LBB0_546
# %bb.450:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 670 7                         # parallel-rne.mlir:670:7
	addli r2, zero, 1
	bneq r7, r2, .LBB0_577
.LBB0_451:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -148(r30)                 # 4-byte Folded Reload
	.loc	1 670 7                         # parallel-rne.mlir:670:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r19, r2, r6
	addli r2, zero, 8
	zext_int2long r[6:7], r2
	j .LBB0_453
.LBB0_452:                              # %middle.block164
                                        #   in Loop: Header=BB0_453 Depth=2
	.loc	1 678 9 is_stmt 1               # parallel-rne.mlir:678:9
	load.d r[6:7], -120(r30)                # 8-byte Folded Reload
	load.d r[8:9], -128(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_481
.LBB0_453:                              # %.preheader64
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_462 Depth 3
                                        #       Child Loop BB0_457 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[6:7], -128(r30)               # 8-byte Folded Spill
	sll.d r[15:16], r[6:7], r2
	.loc	1 679 11 is_stmt 1              # parallel-rne.mlir:679:11
	beq r19, zero, .LBB0_460
# %bb.454:                              # %scalar.ph158.preheader
                                        #   in Loop: Header=BB0_453 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_457
.LBB0_455:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_457 Depth=3
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r1
	and r8, r8, r5
.LBB0_456:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_457 Depth=3
	.loc	1 679 11                        # parallel-rne.mlir:679:11
	load.d r[9:10], -64(r30)                # 8-byte Folded Reload
	.loc	1 694 13 is_stmt 1              # parallel-rne.mlir:694:13
	add.s r2, r17, r2
	stores.w r8, 0(r2)
	.loc	1 679 11                        # parallel-rne.mlir:679:11
	setlt.ul r9, r[6:7], r[9:10]
	addli.d r[6:7], r[6:7], 1
	beq r9, zero, .LBB0_452
.LBB0_457:                              # %scalar.ph158
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_453 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 680 19                        # parallel-rne.mlir:680:19
	add.ul r[8:9], r[6:7], r[15:16]
	slli r2, r8, 2
	add.s r8, r13, r2
	loads.w r9, 0(r8)
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	and r10, r9, r28
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	setlt.u r8, r4, r10
	.loc	1 685 19                        # parallel-rne.mlir:685:19
	bneq r8, zero, .LBB0_459
# %bb.458:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_457 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 691 19 is_stmt 1              # parallel-rne.mlir:691:19
	setlt.u r10, r3, r10
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	bneq r10, zero, .LBB0_456
	j .LBB0_455
.LBB0_459:                              #   in Loop: Header=BB0_457 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r9, r27
	.loc	1 691 19 is_stmt 1              # parallel-rne.mlir:691:19
	setlt.u r10, r3, r10
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	bneq r10, zero, .LBB0_456
	j .LBB0_455
.LBB0_460:                              # %vector.body160.preheader
                                        #   in Loop: Header=BB0_453 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_462
.LBB0_461:                              # %vector.body160
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 679 11 is_stmt 1              # parallel-rne.mlir:679:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 694 13                        # parallel-rne.mlir:694:13
	add.s r7, r17, r26
	.loc	1 679 11                        # parallel-rne.mlir:679:11
	seteq.d r2, r[8:9], r[20:21]
	.loc	1 694 13                        # parallel-rne.mlir:694:13
	stores.w r6, 12(r7)
	stores.w r23, 8(r7)
	stores.w r24, 4(r7)
	stores.w r12, 0(r7)
	.loc	1 679 11                        # parallel-rne.mlir:679:11
	bneq r2, zero, .LBB0_452
.LBB0_462:                              # %vector.body160
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_453 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 680 19                        # parallel-rne.mlir:680:19
	add.ul r[6:7], r[8:9], r[15:16]
	slli r26, r6, 2
	add.s r12, r13, r26
	loads.w r7, 12(r12)
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	and r22, r7, r28
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	setlt.u r2, r4, r22
	.loc	1 685 19                        # parallel-rne.mlir:685:19
	bneq r2, zero, .LBB0_464
# %bb.463:                              # %vector.body160
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	j .LBB0_465
.LBB0_464:                              #   in Loop: Header=BB0_462 Depth=3
	or r6, r7, r27
.LBB0_465:                              # %vector.body160
                                        #   in Loop: Header=BB0_462 Depth=3
	loads.w r11, 8(r12)
	and r2, r11, r28
	setlt.u r10, r4, r2
	.loc	1 685 19                        # parallel-rne.mlir:685:19
	bneq r10, zero, .LBB0_467
# %bb.466:                              # %vector.body160
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r11, 0
	j .LBB0_468
.LBB0_467:                              #   in Loop: Header=BB0_462 Depth=3
	or r23, r11, r27
.LBB0_468:                              # %vector.body160
                                        #   in Loop: Header=BB0_462 Depth=3
	loads.w r10, 4(r12)
	and r25, r10, r28
	setlt.u r14, r4, r25
	.loc	1 685 19                        # parallel-rne.mlir:685:19
	bneq r14, zero, .LBB0_470
# %bb.469:                              # %vector.body160
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r10, 0
	j .LBB0_471
.LBB0_470:                              #   in Loop: Header=BB0_462 Depth=3
	or r24, r10, r27
.LBB0_471:                              # %vector.body160
                                        #   in Loop: Header=BB0_462 Depth=3
	loads.w r14, 0(r12)
	and r18, r14, r28
	setlt.u r12, r4, r18
	.loc	1 685 19                        # parallel-rne.mlir:685:19
	bneq r12, zero, .LBB0_473
# %bb.472:                              # %vector.body160
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r14, 0
	.loc	1 691 19 is_stmt 1              # parallel-rne.mlir:691:19
	setlt.u r18, r3, r18
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	beq r18, zero, .LBB0_474
	j .LBB0_475
.LBB0_473:                              #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r14, r27
	.loc	1 691 19 is_stmt 1              # parallel-rne.mlir:691:19
	setlt.u r18, r3, r18
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	bneq r18, zero, .LBB0_475
.LBB0_474:                              # %vector.body160
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r14, 16
	andi r12, r12, 1
	add.s r12, r14, r12
	add.s r12, r12, r1
	and r12, r12, r5
.LBB0_475:                              # %vector.body160
                                        #   in Loop: Header=BB0_462 Depth=3
	setlt.u r14, r3, r25
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	bneq r14, zero, .LBB0_478
# %bb.476:                              # %vector.body160
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r10, 16
	andi r14, r14, 1
	add.s r10, r10, r14
	add.s r10, r10, r1
	and r24, r10, r5
	setlt.u r2, r3, r2
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	beq r2, zero, .LBB0_479
.LBB0_477:                              # %vector.body160
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r22
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	bneq r2, zero, .LBB0_461
	j .LBB0_480
.LBB0_478:                              # %vector.body160
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r2
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	bneq r2, zero, .LBB0_477
.LBB0_479:                              # %vector.body160
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r11, 16
	andi r2, r2, 1
	add.s r2, r11, r2
	add.s r2, r2, r1
	and r23, r2, r5
	setlt.u r2, r3, r22
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	bneq r2, zero, .LBB0_461
.LBB0_480:                              # %vector.body160
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r1
	and r6, r2, r5
	j .LBB0_461
.LBB0_481:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 670 7 is_stmt 1               # parallel-rne.mlir:670:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	addli r6, zero, 16
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
	.loc	1 699 7                         # parallel-rne.mlir:699:7
	loadli.w r2,  -160(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_578
.LBB0_482:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 728 7                         # parallel-rne.mlir:728:7
	addli r2, zero, 3
	bneq r7, r2, .LBB0_609
.LBB0_483:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -148(r30)                 # 4-byte Folded Reload
	setlt.u r2, r2, r6
	storeli.w r2, -120(r30)                 # 4-byte Folded Spill
	addli r2, zero, 24
	.loc	1 728 7                         # parallel-rne.mlir:728:7
	xfence
	zext_int2long r[6:7], r2
	mfence { lm, sm, gm }
	j .LBB0_485
.LBB0_484:                              # %middle.block146
                                        #   in Loop: Header=BB0_485 Depth=2
	.loc	1 736 9 is_stmt 1               # parallel-rne.mlir:736:9
	load.d r[6:7], -104(r30)                # 8-byte Folded Reload
	load.d r[8:9], -112(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_513
.LBB0_485:                              # %.preheader62
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_494 Depth 3
                                        #       Child Loop BB0_489 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[6:7], -112(r30)               # 8-byte Folded Spill
	sll.d r[15:16], r[6:7], r2
	.loc	1 737 11 is_stmt 1              # parallel-rne.mlir:737:11
	loadli.w r2,  -120(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_492
# %bb.486:                              # %scalar.ph140.preheader
                                        #   in Loop: Header=BB0_485 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_489
.LBB0_487:                              # %scalar.ph140
                                        #   in Loop: Header=BB0_489 Depth=3
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r1
	and r8, r8, r5
.LBB0_488:                              # %scalar.ph140
                                        #   in Loop: Header=BB0_489 Depth=3
	.loc	1 737 11                        # parallel-rne.mlir:737:11
	load.d r[9:10], -64(r30)                # 8-byte Folded Reload
	.loc	1 752 13 is_stmt 1              # parallel-rne.mlir:752:13
	add.s r2, r17, r2
	stores.w r8, 0(r2)
	.loc	1 737 11                        # parallel-rne.mlir:737:11
	setlt.ul r9, r[6:7], r[9:10]
	addli.d r[6:7], r[6:7], 1
	beq r9, zero, .LBB0_484
.LBB0_489:                              # %scalar.ph140
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_485 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 738 19                        # parallel-rne.mlir:738:19
	add.ul r[8:9], r[6:7], r[15:16]
	slli r2, r8, 2
	add.s r8, r13, r2
	loads.w r9, 0(r8)
	.loc	1 740 19                        # parallel-rne.mlir:740:19
	and r10, r9, r28
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	setlt.u r8, r4, r10
	.loc	1 743 19                        # parallel-rne.mlir:743:19
	bneq r8, zero, .LBB0_491
# %bb.490:                              # %scalar.ph140
                                        #   in Loop: Header=BB0_489 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 749 19 is_stmt 1              # parallel-rne.mlir:749:19
	setlt.u r10, r3, r10
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	bneq r10, zero, .LBB0_488
	j .LBB0_487
.LBB0_491:                              #   in Loop: Header=BB0_489 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r9, r27
	.loc	1 749 19 is_stmt 1              # parallel-rne.mlir:749:19
	setlt.u r10, r3, r10
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	bneq r10, zero, .LBB0_488
	j .LBB0_487
.LBB0_492:                              # %vector.body142.preheader
                                        #   in Loop: Header=BB0_485 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_494
.LBB0_493:                              # %vector.body142
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 737 11 is_stmt 1              # parallel-rne.mlir:737:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 752 13                        # parallel-rne.mlir:752:13
	add.s r7, r17, r22
	.loc	1 737 11                        # parallel-rne.mlir:737:11
	seteq.d r2, r[8:9], r[20:21]
	.loc	1 752 13                        # parallel-rne.mlir:752:13
	stores.w r6, 12(r7)
	stores.w r24, 8(r7)
	stores.w r10, 4(r7)
	stores.w r26, 0(r7)
	.loc	1 737 11                        # parallel-rne.mlir:737:11
	bneq r2, zero, .LBB0_484
.LBB0_494:                              # %vector.body142
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_485 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 738 19                        # parallel-rne.mlir:738:19
	add.ul r[6:7], r[8:9], r[15:16]
	slli r22, r6, 2
	add.s r11, r13, r22
	loads.w r7, 12(r11)
	.loc	1 740 19                        # parallel-rne.mlir:740:19
	and r23, r7, r28
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	setlt.u r2, r4, r23
	.loc	1 743 19                        # parallel-rne.mlir:743:19
	bneq r2, zero, .LBB0_496
# %bb.495:                              # %vector.body142
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	j .LBB0_497
.LBB0_496:                              #   in Loop: Header=BB0_494 Depth=3
	or r6, r7, r27
.LBB0_497:                              # %vector.body142
                                        #   in Loop: Header=BB0_494 Depth=3
	loads.w r12, 8(r11)
	and r2, r12, r28
	setlt.u r10, r4, r2
	.loc	1 743 19                        # parallel-rne.mlir:743:19
	bneq r10, zero, .LBB0_499
# %bb.498:                              # %vector.body142
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r12, 0
	j .LBB0_500
.LBB0_499:                              #   in Loop: Header=BB0_494 Depth=3
	or r24, r12, r27
.LBB0_500:                              # %vector.body142
                                        #   in Loop: Header=BB0_494 Depth=3
	loads.w r25, 4(r11)
	and r14, r25, r28
	setlt.u r10, r4, r14
	.loc	1 743 19                        # parallel-rne.mlir:743:19
	bneq r10, zero, .LBB0_502
# %bb.501:                              # %vector.body142
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r25, 0
	j .LBB0_503
.LBB0_502:                              #   in Loop: Header=BB0_494 Depth=3
	or r10, r25, r27
.LBB0_503:                              # %vector.body142
                                        #   in Loop: Header=BB0_494 Depth=3
	loads.w r11, 0(r11)
	and r18, r11, r28
	setlt.u r19, r4, r18
	.loc	1 743 19                        # parallel-rne.mlir:743:19
	bneq r19, zero, .LBB0_505
# %bb.504:                              # %vector.body142
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r11, 0
	.loc	1 749 19 is_stmt 1              # parallel-rne.mlir:749:19
	setlt.u r18, r3, r18
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	beq r18, zero, .LBB0_506
	j .LBB0_507
.LBB0_505:                              #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r11, r27
	.loc	1 749 19 is_stmt 1              # parallel-rne.mlir:749:19
	setlt.u r18, r3, r18
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	bneq r18, zero, .LBB0_507
.LBB0_506:                              # %vector.body142
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r11, 16
	andi r18, r18, 1
	add.s r11, r11, r18
	add.s r11, r11, r1
	and r26, r11, r5
.LBB0_507:                              # %vector.body142
                                        #   in Loop: Header=BB0_494 Depth=3
	setlt.u r11, r3, r14
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	bneq r11, zero, .LBB0_510
# %bb.508:                              # %vector.body142
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r25, 16
	andi r10, r10, 1
	add.s r10, r25, r10
	add.s r10, r10, r1
	and r10, r10, r5
	setlt.u r2, r3, r2
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	beq r2, zero, .LBB0_511
.LBB0_509:                              # %vector.body142
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r23
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	bneq r2, zero, .LBB0_493
	j .LBB0_512
.LBB0_510:                              # %vector.body142
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r2
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	bneq r2, zero, .LBB0_509
.LBB0_511:                              # %vector.body142
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r1
	and r24, r2, r5
	setlt.u r2, r3, r23
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	bneq r2, zero, .LBB0_493
.LBB0_512:                              # %vector.body142
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r1
	and r6, r2, r5
	j .LBB0_493
.LBB0_513:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 728 7 is_stmt 1               # parallel-rne.mlir:728:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	addli r6, zero, 16
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
	.loc	1 757 7                         # parallel-rne.mlir:757:7
	loadli.w r2,  -156(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_610
.LBB0_514:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 786 7                         # parallel-rne.mlir:786:7
	addli r2, zero, 5
	bneq r7, r2, .LBB0_641
.LBB0_515:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -148(r30)                 # 4-byte Folded Reload
	setlt.u r2, r2, r6
	storeli.w r2, -104(r30)                 # 4-byte Folded Spill
	addli r2, zero, 40
	.loc	1 786 7                         # parallel-rne.mlir:786:7
	xfence
	zext_int2long r[6:7], r2
	mfence { lm, sm, gm }
	j .LBB0_517
.LBB0_516:                              # %middle.block128
                                        #   in Loop: Header=BB0_517 Depth=2
	.loc	1 794 9 is_stmt 1               # parallel-rne.mlir:794:9
	load.d r[6:7], -88(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -96(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_545
.LBB0_517:                              # %.preheader60
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_526 Depth 3
                                        #       Child Loop BB0_521 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[6:7], -96(r30)                # 8-byte Folded Spill
	sll.d r[8:9], r[6:7], r2
	.loc	1 795 11 is_stmt 1              # parallel-rne.mlir:795:11
	loadli.w r2,  -104(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_524
# %bb.518:                              # %scalar.ph122.preheader
                                        #   in Loop: Header=BB0_517 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_521
.LBB0_519:                              # %scalar.ph122
                                        #   in Loop: Header=BB0_521 Depth=3
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r1
	and r10, r10, r5
.LBB0_520:                              # %scalar.ph122
                                        #   in Loop: Header=BB0_521 Depth=3
	.loc	1 795 11                        # parallel-rne.mlir:795:11
	load.d r[11:12], -64(r30)               # 8-byte Folded Reload
	.loc	1 810 13 is_stmt 1              # parallel-rne.mlir:810:13
	add.s r2, r17, r2
	stores.w r10, 0(r2)
	.loc	1 795 11                        # parallel-rne.mlir:795:11
	setlt.ul r11, r[6:7], r[11:12]
	addli.d r[6:7], r[6:7], 1
	beq r11, zero, .LBB0_516
.LBB0_521:                              # %scalar.ph122
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_517 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	add.ul r[10:11], r[6:7], r[8:9]
	slli r2, r10, 2
	add.s r10, r13, r2
	loads.w r11, 0(r10)
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	and r12, r11, r28
	.loc	1 800 19                        # parallel-rne.mlir:800:19
	setlt.u r10, r4, r12
	.loc	1 801 19                        # parallel-rne.mlir:801:19
	bneq r10, zero, .LBB0_523
# %bb.522:                              # %scalar.ph122
                                        #   in Loop: Header=BB0_521 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 807 19 is_stmt 1              # parallel-rne.mlir:807:19
	setlt.u r12, r3, r12
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	bneq r12, zero, .LBB0_520
	j .LBB0_519
.LBB0_523:                              #   in Loop: Header=BB0_521 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r11, r27
	.loc	1 807 19 is_stmt 1              # parallel-rne.mlir:807:19
	setlt.u r12, r3, r12
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	bneq r12, zero, .LBB0_520
	j .LBB0_519
.LBB0_524:                              # %vector.body124.preheader
                                        #   in Loop: Header=BB0_517 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[10:11], zero
	j .LBB0_526
.LBB0_525:                              # %vector.body124
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 795 11 is_stmt 1              # parallel-rne.mlir:795:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 810 13                        # parallel-rne.mlir:810:13
	add.s r7, r17, r15
	.loc	1 795 11                        # parallel-rne.mlir:795:11
	seteq.d r2, r[10:11], r[20:21]
	.loc	1 810 13                        # parallel-rne.mlir:810:13
	stores.w r16, 12(r7)
	stores.w r24, 8(r7)
	stores.w r6, 4(r7)
	stores.w r26, 0(r7)
	.loc	1 795 11                        # parallel-rne.mlir:795:11
	bneq r2, zero, .LBB0_516
.LBB0_526:                              # %vector.body124
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_517 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	add.ul r[6:7], r[10:11], r[8:9]
	slli r15, r6, 2
	add.s r7, r13, r15
	loads.w r22, 12(r7)
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	and r23, r22, r28
	.loc	1 800 19                        # parallel-rne.mlir:800:19
	setlt.u r2, r4, r23
	.loc	1 801 19                        # parallel-rne.mlir:801:19
	bneq r2, zero, .LBB0_528
# %bb.527:                              # %vector.body124
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r22, 0
	j .LBB0_529
.LBB0_528:                              #   in Loop: Header=BB0_526 Depth=3
	or r16, r22, r27
.LBB0_529:                              # %vector.body124
                                        #   in Loop: Header=BB0_526 Depth=3
	loads.w r12, 8(r7)
	and r2, r12, r28
	setlt.u r6, r4, r2
	.loc	1 801 19                        # parallel-rne.mlir:801:19
	bneq r6, zero, .LBB0_531
# %bb.530:                              # %vector.body124
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r12, 0
	j .LBB0_532
.LBB0_531:                              #   in Loop: Header=BB0_526 Depth=3
	or r24, r12, r27
.LBB0_532:                              # %vector.body124
                                        #   in Loop: Header=BB0_526 Depth=3
	loads.w r25, 4(r7)
	and r14, r25, r28
	setlt.u r6, r4, r14
	.loc	1 801 19                        # parallel-rne.mlir:801:19
	bneq r6, zero, .LBB0_534
# %bb.533:                              # %vector.body124
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r25, 0
	j .LBB0_535
.LBB0_534:                              #   in Loop: Header=BB0_526 Depth=3
	or r6, r25, r27
.LBB0_535:                              # %vector.body124
                                        #   in Loop: Header=BB0_526 Depth=3
	loads.w r7, 0(r7)
	and r18, r7, r28
	setlt.u r19, r4, r18
	.loc	1 801 19                        # parallel-rne.mlir:801:19
	bneq r19, zero, .LBB0_537
# %bb.536:                              # %vector.body124
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r7, 0
	.loc	1 807 19 is_stmt 1              # parallel-rne.mlir:807:19
	setlt.u r18, r3, r18
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	beq r18, zero, .LBB0_538
	j .LBB0_539
.LBB0_537:                              #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r7, r27
	.loc	1 807 19 is_stmt 1              # parallel-rne.mlir:807:19
	setlt.u r18, r3, r18
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	bneq r18, zero, .LBB0_539
.LBB0_538:                              # %vector.body124
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r7, 16
	andi r18, r18, 1
	add.s r7, r7, r18
	add.s r7, r7, r1
	and r26, r7, r5
.LBB0_539:                              # %vector.body124
                                        #   in Loop: Header=BB0_526 Depth=3
	setlt.u r7, r3, r14
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	bneq r7, zero, .LBB0_542
# %bb.540:                              # %vector.body124
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r1
	and r6, r6, r5
	setlt.u r2, r3, r2
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	beq r2, zero, .LBB0_543
.LBB0_541:                              # %vector.body124
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r23
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	bneq r2, zero, .LBB0_525
	j .LBB0_544
.LBB0_542:                              # %vector.body124
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r2
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	bneq r2, zero, .LBB0_541
.LBB0_543:                              # %vector.body124
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r1
	and r24, r2, r5
	setlt.u r2, r3, r23
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	bneq r2, zero, .LBB0_525
.LBB0_544:                              # %vector.body124
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r1
	and r16, r2, r5
	j .LBB0_525
.LBB0_545:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 786 7 is_stmt 1               # parallel-rne.mlir:786:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	addli r6, zero, 16
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
	.loc	1 815 7                         # parallel-rne.mlir:815:7
	addli r2, zero, 6
	bneq r7, r2, .LBB0_673
	j .LBB0_642
.LBB0_546:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -148(r30)                 # 4-byte Folded Reload
	.loc	1 641 7 is_stmt 1               # parallel-rne.mlir:641:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r19, r2, r6
	zext_int2long r[6:7], zero
	j .LBB0_548
.LBB0_547:                              # %middle.block173
                                        #   in Loop: Header=BB0_548 Depth=2
	.loc	1 649 9                         # parallel-rne.mlir:649:9
	load.d r[6:7], -128(r30)                # 8-byte Folded Reload
	load.d r[8:9], -136(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_576
.LBB0_548:                              # %.preheader65
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_557 Depth 3
                                        #       Child Loop BB0_552 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[6:7], -136(r30)               # 8-byte Folded Spill
	sll.d r[15:16], r[6:7], r2
	.loc	1 650 11 is_stmt 1              # parallel-rne.mlir:650:11
	beq r19, zero, .LBB0_555
# %bb.549:                              # %scalar.ph167.preheader
                                        #   in Loop: Header=BB0_548 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_552
.LBB0_550:                              # %scalar.ph167
                                        #   in Loop: Header=BB0_552 Depth=3
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r1
	and r8, r8, r5
.LBB0_551:                              # %scalar.ph167
                                        #   in Loop: Header=BB0_552 Depth=3
	.loc	1 650 11                        # parallel-rne.mlir:650:11
	load.d r[9:10], -64(r30)                # 8-byte Folded Reload
	.loc	1 665 13 is_stmt 1              # parallel-rne.mlir:665:13
	add.s r2, r17, r2
	stores.w r8, 0(r2)
	.loc	1 650 11                        # parallel-rne.mlir:650:11
	setlt.ul r9, r[6:7], r[9:10]
	addli.d r[6:7], r[6:7], 1
	beq r9, zero, .LBB0_547
.LBB0_552:                              # %scalar.ph167
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_548 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 651 19                        # parallel-rne.mlir:651:19
	add.ul r[8:9], r[6:7], r[15:16]
	slli r2, r8, 2
	add.s r8, r13, r2
	loads.w r9, 0(r8)
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	and r10, r9, r28
	.loc	1 655 19                        # parallel-rne.mlir:655:19
	setlt.u r8, r4, r10
	.loc	1 656 19                        # parallel-rne.mlir:656:19
	bneq r8, zero, .LBB0_554
# %bb.553:                              # %scalar.ph167
                                        #   in Loop: Header=BB0_552 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 662 19 is_stmt 1              # parallel-rne.mlir:662:19
	setlt.u r10, r3, r10
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	bneq r10, zero, .LBB0_551
	j .LBB0_550
.LBB0_554:                              #   in Loop: Header=BB0_552 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r9, r27
	.loc	1 662 19 is_stmt 1              # parallel-rne.mlir:662:19
	setlt.u r10, r3, r10
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	bneq r10, zero, .LBB0_551
	j .LBB0_550
.LBB0_555:                              # %vector.body169.preheader
                                        #   in Loop: Header=BB0_548 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_557
.LBB0_556:                              # %vector.body169
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 650 11 is_stmt 1              # parallel-rne.mlir:650:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 665 13                        # parallel-rne.mlir:665:13
	add.s r7, r17, r26
	.loc	1 650 11                        # parallel-rne.mlir:650:11
	seteq.d r2, r[8:9], r[20:21]
	.loc	1 665 13                        # parallel-rne.mlir:665:13
	stores.w r6, 12(r7)
	stores.w r23, 8(r7)
	stores.w r24, 4(r7)
	stores.w r12, 0(r7)
	.loc	1 650 11                        # parallel-rne.mlir:650:11
	bneq r2, zero, .LBB0_547
.LBB0_557:                              # %vector.body169
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_548 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 651 19                        # parallel-rne.mlir:651:19
	add.ul r[6:7], r[8:9], r[15:16]
	slli r26, r6, 2
	add.s r12, r13, r26
	loads.w r7, 12(r12)
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	and r22, r7, r28
	.loc	1 655 19                        # parallel-rne.mlir:655:19
	setlt.u r2, r4, r22
	.loc	1 656 19                        # parallel-rne.mlir:656:19
	bneq r2, zero, .LBB0_559
# %bb.558:                              # %vector.body169
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	j .LBB0_560
.LBB0_559:                              #   in Loop: Header=BB0_557 Depth=3
	or r6, r7, r27
.LBB0_560:                              # %vector.body169
                                        #   in Loop: Header=BB0_557 Depth=3
	loads.w r11, 8(r12)
	and r2, r11, r28
	setlt.u r10, r4, r2
	.loc	1 656 19                        # parallel-rne.mlir:656:19
	bneq r10, zero, .LBB0_562
# %bb.561:                              # %vector.body169
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r11, 0
	j .LBB0_563
.LBB0_562:                              #   in Loop: Header=BB0_557 Depth=3
	or r23, r11, r27
.LBB0_563:                              # %vector.body169
                                        #   in Loop: Header=BB0_557 Depth=3
	loads.w r10, 4(r12)
	and r25, r10, r28
	setlt.u r14, r4, r25
	.loc	1 656 19                        # parallel-rne.mlir:656:19
	bneq r14, zero, .LBB0_565
# %bb.564:                              # %vector.body169
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r10, 0
	j .LBB0_566
.LBB0_565:                              #   in Loop: Header=BB0_557 Depth=3
	or r24, r10, r27
.LBB0_566:                              # %vector.body169
                                        #   in Loop: Header=BB0_557 Depth=3
	loads.w r14, 0(r12)
	and r18, r14, r28
	setlt.u r12, r4, r18
	.loc	1 656 19                        # parallel-rne.mlir:656:19
	bneq r12, zero, .LBB0_568
# %bb.567:                              # %vector.body169
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r14, 0
	.loc	1 662 19 is_stmt 1              # parallel-rne.mlir:662:19
	setlt.u r18, r3, r18
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	beq r18, zero, .LBB0_569
	j .LBB0_570
.LBB0_568:                              #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r14, r27
	.loc	1 662 19 is_stmt 1              # parallel-rne.mlir:662:19
	setlt.u r18, r3, r18
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	bneq r18, zero, .LBB0_570
.LBB0_569:                              # %vector.body169
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r14, 16
	andi r12, r12, 1
	add.s r12, r14, r12
	add.s r12, r12, r1
	and r12, r12, r5
.LBB0_570:                              # %vector.body169
                                        #   in Loop: Header=BB0_557 Depth=3
	setlt.u r14, r3, r25
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	bneq r14, zero, .LBB0_573
# %bb.571:                              # %vector.body169
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r10, 16
	andi r14, r14, 1
	add.s r10, r10, r14
	add.s r10, r10, r1
	and r24, r10, r5
	setlt.u r2, r3, r2
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	beq r2, zero, .LBB0_574
.LBB0_572:                              # %vector.body169
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r22
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	bneq r2, zero, .LBB0_556
	j .LBB0_575
.LBB0_573:                              # %vector.body169
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r2
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	bneq r2, zero, .LBB0_572
.LBB0_574:                              # %vector.body169
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r11, 16
	andi r2, r2, 1
	add.s r2, r11, r2
	add.s r2, r2, r1
	and r23, r2, r5
	setlt.u r2, r3, r22
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	bneq r2, zero, .LBB0_556
.LBB0_575:                              # %vector.body169
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r1
	and r6, r2, r5
	j .LBB0_556
.LBB0_576:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 641 7 is_stmt 1               # parallel-rne.mlir:641:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	addli r6, zero, 16
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
	.loc	1 670 7                         # parallel-rne.mlir:670:7
	addli r2, zero, 1
	beq r7, r2, .LBB0_451
.LBB0_577:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 699 7                         # parallel-rne.mlir:699:7
	loadli.w r2,  -160(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_482
.LBB0_578:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -148(r30)                 # 4-byte Folded Reload
	setlt.u r2, r2, r6
	zext_int2long r[6:7], r6
	storeli.w r2, -128(r30)                 # 4-byte Folded Spill
	.loc	1 699 7                         # parallel-rne.mlir:699:7
	xfence
	mfence { lm, sm, gm }
	j .LBB0_580
.LBB0_579:                              # %middle.block155
                                        #   in Loop: Header=BB0_580 Depth=2
	.loc	1 707 9 is_stmt 1               # parallel-rne.mlir:707:9
	load.d r[6:7], -112(r30)                # 8-byte Folded Reload
	load.d r[8:9], -120(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_608
.LBB0_580:                              # %.preheader63
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_589 Depth 3
                                        #       Child Loop BB0_584 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[6:7], -120(r30)               # 8-byte Folded Spill
	sll.d r[15:16], r[6:7], r2
	.loc	1 708 11 is_stmt 1              # parallel-rne.mlir:708:11
	loadli.w r2,  -128(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_587
# %bb.581:                              # %scalar.ph149.preheader
                                        #   in Loop: Header=BB0_580 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_584
.LBB0_582:                              # %scalar.ph149
                                        #   in Loop: Header=BB0_584 Depth=3
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r1
	and r8, r8, r5
.LBB0_583:                              # %scalar.ph149
                                        #   in Loop: Header=BB0_584 Depth=3
	.loc	1 708 11                        # parallel-rne.mlir:708:11
	load.d r[9:10], -64(r30)                # 8-byte Folded Reload
	.loc	1 723 13 is_stmt 1              # parallel-rne.mlir:723:13
	add.s r2, r17, r2
	stores.w r8, 0(r2)
	.loc	1 708 11                        # parallel-rne.mlir:708:11
	setlt.ul r9, r[6:7], r[9:10]
	addli.d r[6:7], r[6:7], 1
	beq r9, zero, .LBB0_579
.LBB0_584:                              # %scalar.ph149
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_580 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	add.ul r[8:9], r[6:7], r[15:16]
	slli r2, r8, 2
	add.s r8, r13, r2
	loads.w r9, 0(r8)
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	and r10, r9, r28
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	setlt.u r8, r4, r10
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	bneq r8, zero, .LBB0_586
# %bb.585:                              # %scalar.ph149
                                        #   in Loop: Header=BB0_584 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 720 19 is_stmt 1              # parallel-rne.mlir:720:19
	setlt.u r10, r3, r10
	.loc	1 721 19                        # parallel-rne.mlir:721:19
	bneq r10, zero, .LBB0_583
	j .LBB0_582
.LBB0_586:                              #   in Loop: Header=BB0_584 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r9, r27
	.loc	1 720 19 is_stmt 1              # parallel-rne.mlir:720:19
	setlt.u r10, r3, r10
	.loc	1 721 19                        # parallel-rne.mlir:721:19
	bneq r10, zero, .LBB0_583
	j .LBB0_582
.LBB0_587:                              # %vector.body151.preheader
                                        #   in Loop: Header=BB0_580 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_589
.LBB0_588:                              # %vector.body151
                                        #   in Loop: Header=BB0_589 Depth=3
	.loc	1 708 11 is_stmt 1              # parallel-rne.mlir:708:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 723 13                        # parallel-rne.mlir:723:13
	add.s r7, r17, r24
	.loc	1 708 11                        # parallel-rne.mlir:708:11
	seteq.d r2, r[8:9], r[20:21]
	.loc	1 723 13                        # parallel-rne.mlir:723:13
	stores.w r6, 12(r7)
	stores.w r23, 8(r7)
	stores.w r10, 4(r7)
	stores.w r26, 0(r7)
	.loc	1 708 11                        # parallel-rne.mlir:708:11
	bneq r2, zero, .LBB0_579
.LBB0_589:                              # %vector.body151
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_580 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	add.ul r[6:7], r[8:9], r[15:16]
	slli r24, r6, 2
	add.s r11, r13, r24
	loads.w r7, 12(r11)
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	and r22, r7, r28
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	setlt.u r2, r4, r22
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	bneq r2, zero, .LBB0_591
# %bb.590:                              # %vector.body151
                                        #   in Loop: Header=BB0_589 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	j .LBB0_592
.LBB0_591:                              #   in Loop: Header=BB0_589 Depth=3
	or r6, r7, r27
.LBB0_592:                              # %vector.body151
                                        #   in Loop: Header=BB0_589 Depth=3
	loads.w r12, 8(r11)
	and r2, r12, r28
	setlt.u r10, r4, r2
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	bneq r10, zero, .LBB0_594
# %bb.593:                              # %vector.body151
                                        #   in Loop: Header=BB0_589 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r12, 0
	j .LBB0_595
.LBB0_594:                              #   in Loop: Header=BB0_589 Depth=3
	or r23, r12, r27
.LBB0_595:                              # %vector.body151
                                        #   in Loop: Header=BB0_589 Depth=3
	loads.w r25, 4(r11)
	and r14, r25, r28
	setlt.u r10, r4, r14
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	bneq r10, zero, .LBB0_597
# %bb.596:                              # %vector.body151
                                        #   in Loop: Header=BB0_589 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r25, 0
	j .LBB0_598
.LBB0_597:                              #   in Loop: Header=BB0_589 Depth=3
	or r10, r25, r27
.LBB0_598:                              # %vector.body151
                                        #   in Loop: Header=BB0_589 Depth=3
	loads.w r11, 0(r11)
	and r18, r11, r28
	setlt.u r19, r4, r18
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	bneq r19, zero, .LBB0_600
# %bb.599:                              # %vector.body151
                                        #   in Loop: Header=BB0_589 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r11, 0
	.loc	1 720 19 is_stmt 1              # parallel-rne.mlir:720:19
	setlt.u r18, r3, r18
	.loc	1 721 19                        # parallel-rne.mlir:721:19
	beq r18, zero, .LBB0_601
	j .LBB0_602
.LBB0_600:                              #   in Loop: Header=BB0_589 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r11, r27
	.loc	1 720 19 is_stmt 1              # parallel-rne.mlir:720:19
	setlt.u r18, r3, r18
	.loc	1 721 19                        # parallel-rne.mlir:721:19
	bneq r18, zero, .LBB0_602
.LBB0_601:                              # %vector.body151
                                        #   in Loop: Header=BB0_589 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r11, 16
	andi r18, r18, 1
	add.s r11, r11, r18
	add.s r11, r11, r1
	and r26, r11, r5
.LBB0_602:                              # %vector.body151
                                        #   in Loop: Header=BB0_589 Depth=3
	setlt.u r11, r3, r14
	.loc	1 721 19                        # parallel-rne.mlir:721:19
	bneq r11, zero, .LBB0_605
# %bb.603:                              # %vector.body151
                                        #   in Loop: Header=BB0_589 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r25, 16
	andi r10, r10, 1
	add.s r10, r25, r10
	add.s r10, r10, r1
	and r10, r10, r5
	setlt.u r2, r3, r2
	.loc	1 721 19                        # parallel-rne.mlir:721:19
	beq r2, zero, .LBB0_606
.LBB0_604:                              # %vector.body151
                                        #   in Loop: Header=BB0_589 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r22
	.loc	1 721 19                        # parallel-rne.mlir:721:19
	bneq r2, zero, .LBB0_588
	j .LBB0_607
.LBB0_605:                              # %vector.body151
                                        #   in Loop: Header=BB0_589 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r2
	.loc	1 721 19                        # parallel-rne.mlir:721:19
	bneq r2, zero, .LBB0_604
.LBB0_606:                              # %vector.body151
                                        #   in Loop: Header=BB0_589 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r1
	and r23, r2, r5
	setlt.u r2, r3, r22
	.loc	1 721 19                        # parallel-rne.mlir:721:19
	bneq r2, zero, .LBB0_588
.LBB0_607:                              # %vector.body151
                                        #   in Loop: Header=BB0_589 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r1
	and r6, r2, r5
	j .LBB0_588
.LBB0_608:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 699 7 is_stmt 1               # parallel-rne.mlir:699:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	addli r6, zero, 16
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
	.loc	1 728 7                         # parallel-rne.mlir:728:7
	addli r2, zero, 3
	beq r7, r2, .LBB0_483
.LBB0_609:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 757 7                         # parallel-rne.mlir:757:7
	loadli.w r2,  -156(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_514
.LBB0_610:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -148(r30)                 # 4-byte Folded Reload
	setlt.u r2, r2, r6
	storeli.w r2, -112(r30)                 # 4-byte Folded Spill
	addli r2, zero, 32
	.loc	1 757 7                         # parallel-rne.mlir:757:7
	xfence
	zext_int2long r[6:7], r2
	mfence { lm, sm, gm }
	j .LBB0_612
.LBB0_611:                              # %middle.block137
                                        #   in Loop: Header=BB0_612 Depth=2
	.loc	1 765 9 is_stmt 1               # parallel-rne.mlir:765:9
	load.d r[6:7], -96(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -104(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_640
.LBB0_612:                              # %.preheader61
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_621 Depth 3
                                        #       Child Loop BB0_616 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[6:7], -104(r30)               # 8-byte Folded Spill
	sll.d r[10:11], r[6:7], r2
	.loc	1 766 11 is_stmt 1              # parallel-rne.mlir:766:11
	loadli.w r2,  -112(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_619
# %bb.613:                              # %scalar.ph131.preheader
                                        #   in Loop: Header=BB0_612 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_616
.LBB0_614:                              # %scalar.ph131
                                        #   in Loop: Header=BB0_616 Depth=3
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r1
	and r8, r8, r5
.LBB0_615:                              # %scalar.ph131
                                        #   in Loop: Header=BB0_616 Depth=3
	.loc	1 766 11                        # parallel-rne.mlir:766:11
	load.d r[14:15], -64(r30)               # 8-byte Folded Reload
	.loc	1 781 13 is_stmt 1              # parallel-rne.mlir:781:13
	add.s r2, r17, r2
	stores.w r8, 0(r2)
	.loc	1 766 11                        # parallel-rne.mlir:766:11
	setlt.ul r9, r[6:7], r[14:15]
	addli.d r[6:7], r[6:7], 1
	beq r9, zero, .LBB0_611
.LBB0_616:                              # %scalar.ph131
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_612 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 767 19                        # parallel-rne.mlir:767:19
	add.ul r[8:9], r[6:7], r[10:11]
	slli r2, r8, 2
	add.s r8, r13, r2
	loads.w r9, 0(r8)
	.loc	1 769 19                        # parallel-rne.mlir:769:19
	and r12, r9, r28
	.loc	1 771 19                        # parallel-rne.mlir:771:19
	setlt.u r8, r4, r12
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	bneq r8, zero, .LBB0_618
# %bb.617:                              # %scalar.ph131
                                        #   in Loop: Header=BB0_616 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 778 19 is_stmt 1              # parallel-rne.mlir:778:19
	setlt.u r12, r3, r12
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	bneq r12, zero, .LBB0_615
	j .LBB0_614
.LBB0_618:                              #   in Loop: Header=BB0_616 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r9, r27
	.loc	1 778 19 is_stmt 1              # parallel-rne.mlir:778:19
	setlt.u r12, r3, r12
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	bneq r12, zero, .LBB0_615
	j .LBB0_614
.LBB0_619:                              # %vector.body133.preheader
                                        #   in Loop: Header=BB0_612 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_621
.LBB0_620:                              # %vector.body133
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 766 11 is_stmt 1              # parallel-rne.mlir:766:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 781 13                        # parallel-rne.mlir:781:13
	add.s r7, r17, r15
	.loc	1 766 11                        # parallel-rne.mlir:766:11
	seteq.d r2, r[8:9], r[20:21]
	.loc	1 781 13                        # parallel-rne.mlir:781:13
	stores.w r16, 12(r7)
	stores.w r24, 8(r7)
	stores.w r6, 4(r7)
	stores.w r26, 0(r7)
	.loc	1 766 11                        # parallel-rne.mlir:766:11
	bneq r2, zero, .LBB0_611
.LBB0_621:                              # %vector.body133
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_612 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 767 19                        # parallel-rne.mlir:767:19
	add.ul r[6:7], r[8:9], r[10:11]
	slli r15, r6, 2
	add.s r7, r13, r15
	loads.w r22, 12(r7)
	.loc	1 769 19                        # parallel-rne.mlir:769:19
	and r23, r22, r28
	.loc	1 771 19                        # parallel-rne.mlir:771:19
	setlt.u r2, r4, r23
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	bneq r2, zero, .LBB0_623
# %bb.622:                              # %vector.body133
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r22, 0
	j .LBB0_624
.LBB0_623:                              #   in Loop: Header=BB0_621 Depth=3
	or r16, r22, r27
.LBB0_624:                              # %vector.body133
                                        #   in Loop: Header=BB0_621 Depth=3
	loads.w r12, 8(r7)
	and r2, r12, r28
	setlt.u r6, r4, r2
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	bneq r6, zero, .LBB0_626
# %bb.625:                              # %vector.body133
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r12, 0
	j .LBB0_627
.LBB0_626:                              #   in Loop: Header=BB0_621 Depth=3
	or r24, r12, r27
.LBB0_627:                              # %vector.body133
                                        #   in Loop: Header=BB0_621 Depth=3
	loads.w r25, 4(r7)
	and r14, r25, r28
	setlt.u r6, r4, r14
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	bneq r6, zero, .LBB0_629
# %bb.628:                              # %vector.body133
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r25, 0
	j .LBB0_630
.LBB0_629:                              #   in Loop: Header=BB0_621 Depth=3
	or r6, r25, r27
.LBB0_630:                              # %vector.body133
                                        #   in Loop: Header=BB0_621 Depth=3
	loads.w r7, 0(r7)
	and r18, r7, r28
	setlt.u r19, r4, r18
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	bneq r19, zero, .LBB0_632
# %bb.631:                              # %vector.body133
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r7, 0
	.loc	1 778 19 is_stmt 1              # parallel-rne.mlir:778:19
	setlt.u r18, r3, r18
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	beq r18, zero, .LBB0_633
	j .LBB0_634
.LBB0_632:                              #   in Loop: Header=BB0_621 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r7, r27
	.loc	1 778 19 is_stmt 1              # parallel-rne.mlir:778:19
	setlt.u r18, r3, r18
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	bneq r18, zero, .LBB0_634
.LBB0_633:                              # %vector.body133
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r7, 16
	andi r18, r18, 1
	add.s r7, r7, r18
	add.s r7, r7, r1
	and r26, r7, r5
.LBB0_634:                              # %vector.body133
                                        #   in Loop: Header=BB0_621 Depth=3
	setlt.u r7, r3, r14
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	bneq r7, zero, .LBB0_637
# %bb.635:                              # %vector.body133
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r1
	and r6, r6, r5
	setlt.u r2, r3, r2
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	beq r2, zero, .LBB0_638
.LBB0_636:                              # %vector.body133
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r23
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	bneq r2, zero, .LBB0_620
	j .LBB0_639
.LBB0_637:                              # %vector.body133
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r2
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	bneq r2, zero, .LBB0_636
.LBB0_638:                              # %vector.body133
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r1
	and r24, r2, r5
	setlt.u r2, r3, r23
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	bneq r2, zero, .LBB0_620
.LBB0_639:                              # %vector.body133
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r1
	and r16, r2, r5
	j .LBB0_620
.LBB0_640:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 757 7 is_stmt 1               # parallel-rne.mlir:757:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	addli r6, zero, 16
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
	.loc	1 786 7                         # parallel-rne.mlir:786:7
	addli r2, zero, 5
	beq r7, r2, .LBB0_515
.LBB0_641:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 815 7                         # parallel-rne.mlir:815:7
	addli r2, zero, 6
	bneq r7, r2, .LBB0_673
.LBB0_642:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -148(r30)                 # 4-byte Folded Reload
	setlt.u r2, r2, r6
	storeli.w r2, -96(r30)                  # 4-byte Folded Spill
	addli r2, zero, 48
	.loc	1 815 7                         # parallel-rne.mlir:815:7
	xfence
	zext_int2long r[6:7], r2
	mfence { lm, sm, gm }
	j .LBB0_644
.LBB0_643:                              # %middle.block119
                                        #   in Loop: Header=BB0_644 Depth=2
	.loc	1 823 9 is_stmt 1               # parallel-rne.mlir:823:9
	load.d r[6:7], -80(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -88(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_672
.LBB0_644:                              # %.preheader59
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_653 Depth 3
                                        #       Child Loop BB0_648 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[6:7], -88(r30)                # 8-byte Folded Spill
	sll.d r[8:9], r[6:7], r2
	.loc	1 824 11 is_stmt 1              # parallel-rne.mlir:824:11
	loadli.w r2,  -96(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_651
# %bb.645:                              # %scalar.ph113.preheader
                                        #   in Loop: Header=BB0_644 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_648
.LBB0_646:                              # %scalar.ph113
                                        #   in Loop: Header=BB0_648 Depth=3
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r1
	and r10, r10, r5
.LBB0_647:                              # %scalar.ph113
                                        #   in Loop: Header=BB0_648 Depth=3
	.loc	1 824 11                        # parallel-rne.mlir:824:11
	load.d r[11:12], -64(r30)               # 8-byte Folded Reload
	.loc	1 839 13 is_stmt 1              # parallel-rne.mlir:839:13
	add.s r2, r17, r2
	stores.w r10, 0(r2)
	.loc	1 824 11                        # parallel-rne.mlir:824:11
	setlt.ul r11, r[6:7], r[11:12]
	addli.d r[6:7], r[6:7], 1
	beq r11, zero, .LBB0_643
.LBB0_648:                              # %scalar.ph113
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_644 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	add.ul r[10:11], r[6:7], r[8:9]
	slli r2, r10, 2
	add.s r10, r13, r2
	loads.w r11, 0(r10)
	.loc	1 827 19                        # parallel-rne.mlir:827:19
	and r12, r11, r28
	.loc	1 829 19                        # parallel-rne.mlir:829:19
	setlt.u r10, r4, r12
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	bneq r10, zero, .LBB0_650
# %bb.649:                              # %scalar.ph113
                                        #   in Loop: Header=BB0_648 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 836 19 is_stmt 1              # parallel-rne.mlir:836:19
	setlt.u r12, r3, r12
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r12, zero, .LBB0_647
	j .LBB0_646
.LBB0_650:                              #   in Loop: Header=BB0_648 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r11, r27
	.loc	1 836 19 is_stmt 1              # parallel-rne.mlir:836:19
	setlt.u r12, r3, r12
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r12, zero, .LBB0_647
	j .LBB0_646
.LBB0_651:                              # %vector.body115.preheader
                                        #   in Loop: Header=BB0_644 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[10:11], zero
	j .LBB0_653
.LBB0_652:                              # %vector.body115
                                        #   in Loop: Header=BB0_653 Depth=3
	.loc	1 824 11 is_stmt 1              # parallel-rne.mlir:824:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 839 13                        # parallel-rne.mlir:839:13
	add.s r7, r17, r15
	.loc	1 824 11                        # parallel-rne.mlir:824:11
	seteq.d r2, r[10:11], r[20:21]
	.loc	1 839 13                        # parallel-rne.mlir:839:13
	stores.w r16, 12(r7)
	stores.w r24, 8(r7)
	stores.w r6, 4(r7)
	stores.w r26, 0(r7)
	.loc	1 824 11                        # parallel-rne.mlir:824:11
	bneq r2, zero, .LBB0_643
.LBB0_653:                              # %vector.body115
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_644 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	add.ul r[6:7], r[10:11], r[8:9]
	slli r15, r6, 2
	add.s r7, r13, r15
	loads.w r22, 12(r7)
	.loc	1 827 19                        # parallel-rne.mlir:827:19
	and r23, r22, r28
	.loc	1 829 19                        # parallel-rne.mlir:829:19
	setlt.u r2, r4, r23
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	bneq r2, zero, .LBB0_655
# %bb.654:                              # %vector.body115
                                        #   in Loop: Header=BB0_653 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r22, 0
	j .LBB0_656
.LBB0_655:                              #   in Loop: Header=BB0_653 Depth=3
	or r16, r22, r27
.LBB0_656:                              # %vector.body115
                                        #   in Loop: Header=BB0_653 Depth=3
	loads.w r12, 8(r7)
	and r2, r12, r28
	setlt.u r6, r4, r2
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	bneq r6, zero, .LBB0_658
# %bb.657:                              # %vector.body115
                                        #   in Loop: Header=BB0_653 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r12, 0
	j .LBB0_659
.LBB0_658:                              #   in Loop: Header=BB0_653 Depth=3
	or r24, r12, r27
.LBB0_659:                              # %vector.body115
                                        #   in Loop: Header=BB0_653 Depth=3
	loads.w r25, 4(r7)
	and r14, r25, r28
	setlt.u r6, r4, r14
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	bneq r6, zero, .LBB0_661
# %bb.660:                              # %vector.body115
                                        #   in Loop: Header=BB0_653 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r25, 0
	j .LBB0_662
.LBB0_661:                              #   in Loop: Header=BB0_653 Depth=3
	or r6, r25, r27
.LBB0_662:                              # %vector.body115
                                        #   in Loop: Header=BB0_653 Depth=3
	loads.w r7, 0(r7)
	and r18, r7, r28
	setlt.u r19, r4, r18
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	bneq r19, zero, .LBB0_664
# %bb.663:                              # %vector.body115
                                        #   in Loop: Header=BB0_653 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r7, 0
	.loc	1 836 19 is_stmt 1              # parallel-rne.mlir:836:19
	setlt.u r18, r3, r18
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	beq r18, zero, .LBB0_665
	j .LBB0_666
.LBB0_664:                              #   in Loop: Header=BB0_653 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r7, r27
	.loc	1 836 19 is_stmt 1              # parallel-rne.mlir:836:19
	setlt.u r18, r3, r18
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r18, zero, .LBB0_666
.LBB0_665:                              # %vector.body115
                                        #   in Loop: Header=BB0_653 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r7, 16
	andi r18, r18, 1
	add.s r7, r7, r18
	add.s r7, r7, r1
	and r26, r7, r5
.LBB0_666:                              # %vector.body115
                                        #   in Loop: Header=BB0_653 Depth=3
	setlt.u r7, r3, r14
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r7, zero, .LBB0_669
# %bb.667:                              # %vector.body115
                                        #   in Loop: Header=BB0_653 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r1
	and r6, r6, r5
	setlt.u r2, r3, r2
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	beq r2, zero, .LBB0_670
.LBB0_668:                              # %vector.body115
                                        #   in Loop: Header=BB0_653 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r23
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r2, zero, .LBB0_652
	j .LBB0_671
.LBB0_669:                              # %vector.body115
                                        #   in Loop: Header=BB0_653 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r2
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r2, zero, .LBB0_668
.LBB0_670:                              # %vector.body115
                                        #   in Loop: Header=BB0_653 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r1
	and r24, r2, r5
	setlt.u r2, r3, r23
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r2, zero, .LBB0_652
.LBB0_671:                              # %vector.body115
                                        #   in Loop: Header=BB0_653 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r1
	and r16, r2, r5
	j .LBB0_652
.LBB0_672:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 815 7 is_stmt 1               # parallel-rne.mlir:815:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	addli r6, zero, 16
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
.LBB0_673:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 844 7                         # parallel-rne.mlir:844:7
	loadli.w r2,  -152(r30)                 # 4-byte Folded Reload
	zext_int2long r[8:9], zero
	store.d r[8:9], -88(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_705
# %bb.674:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -148(r30)                 # 4-byte Folded Reload
	.loc	1 844 7                         # parallel-rne.mlir:844:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r19, r2, r6
	addli r2, zero, 56
	zext_int2long r[6:7], r2
	j .LBB0_676
.LBB0_675:                              # %middle.block
                                        #   in Loop: Header=BB0_676 Depth=2
	.loc	1 852 9 is_stmt 1               # parallel-rne.mlir:852:9
	load.d r[6:7], -72(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -80(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_704
.LBB0_676:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_685 Depth 3
                                        #       Child Loop BB0_680 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[6:7], -80(r30)                # 8-byte Folded Spill
	sll.d r[10:11], r[6:7], r2
	.loc	1 853 11 is_stmt 1              # parallel-rne.mlir:853:11
	beq r19, zero, .LBB0_683
# %bb.677:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_676 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_680
.LBB0_678:                              # %scalar.ph
                                        #   in Loop: Header=BB0_680 Depth=3
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r1
	and r8, r8, r5
.LBB0_679:                              # %scalar.ph
                                        #   in Loop: Header=BB0_680 Depth=3
	.loc	1 853 11                        # parallel-rne.mlir:853:11
	load.d r[14:15], -64(r30)               # 8-byte Folded Reload
	.loc	1 868 13 is_stmt 1              # parallel-rne.mlir:868:13
	add.s r2, r17, r2
	stores.w r8, 0(r2)
	.loc	1 853 11                        # parallel-rne.mlir:853:11
	setlt.ul r9, r[6:7], r[14:15]
	addli.d r[6:7], r[6:7], 1
	beq r9, zero, .LBB0_675
.LBB0_680:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_676 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	add.ul r[8:9], r[6:7], r[10:11]
	slli r2, r8, 2
	add.s r8, r13, r2
	loads.w r9, 0(r8)
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	and r12, r9, r28
	.loc	1 858 19                        # parallel-rne.mlir:858:19
	setlt.u r8, r4, r12
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	bneq r8, zero, .LBB0_682
# %bb.681:                              # %scalar.ph
                                        #   in Loop: Header=BB0_680 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 865 19 is_stmt 1              # parallel-rne.mlir:865:19
	setlt.u r12, r3, r12
	.loc	1 866 19                        # parallel-rne.mlir:866:19
	bneq r12, zero, .LBB0_679
	j .LBB0_678
.LBB0_682:                              #   in Loop: Header=BB0_680 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r9, r27
	.loc	1 865 19 is_stmt 1              # parallel-rne.mlir:865:19
	setlt.u r12, r3, r12
	.loc	1 866 19                        # parallel-rne.mlir:866:19
	bneq r12, zero, .LBB0_679
	j .LBB0_678
.LBB0_683:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_676 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	load.d r[15:16], -88(r30)               # 8-byte Folded Reload
	j .LBB0_685
.LBB0_684:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 853 11 is_stmt 1              # parallel-rne.mlir:853:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 868 13                        # parallel-rne.mlir:868:13
	add.s r9, r17, r22
	.loc	1 853 11                        # parallel-rne.mlir:853:11
	seteq.d r2, r[15:16], r[20:21]
	.loc	1 868 13                        # parallel-rne.mlir:868:13
	stores.w r23, 12(r9)
	stores.w r6, 8(r9)
	stores.w r8, 4(r9)
	stores.w r7, 0(r9)
	.loc	1 853 11                        # parallel-rne.mlir:853:11
	bneq r2, zero, .LBB0_675
.LBB0_685:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_676 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	add.ul r[6:7], r[15:16], r[10:11]
	slli r22, r6, 2
	add.s r7, r13, r22
	loads.w r24, 12(r7)
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	and r25, r24, r28
	.loc	1 858 19                        # parallel-rne.mlir:858:19
	setlt.u r2, r4, r25
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	bneq r2, zero, .LBB0_687
# %bb.686:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_688
.LBB0_687:                              #   in Loop: Header=BB0_685 Depth=3
	or r23, r24, r27
.LBB0_688:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	loads.w r26, 8(r7)
	and r2, r26, r28
	setlt.u r6, r4, r2
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	bneq r6, zero, .LBB0_690
# %bb.689:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r26, 0
	j .LBB0_691
.LBB0_690:                              #   in Loop: Header=BB0_685 Depth=3
	or r6, r26, r27
.LBB0_691:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	loads.w r12, 4(r7)
	and r9, r12, r28
	setlt.u r8, r4, r9
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	bneq r8, zero, .LBB0_693
# %bb.692:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r12, 0
	j .LBB0_694
.LBB0_693:                              #   in Loop: Header=BB0_685 Depth=3
	or r8, r12, r27
.LBB0_694:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	loads.w r14, 0(r7)
	and r18, r14, r28
	setlt.u r7, r4, r18
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	bneq r7, zero, .LBB0_696
# %bb.695:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r14, 0
	.loc	1 865 19 is_stmt 1              # parallel-rne.mlir:865:19
	setlt.u r18, r3, r18
	.loc	1 866 19                        # parallel-rne.mlir:866:19
	beq r18, zero, .LBB0_697
	j .LBB0_698
.LBB0_696:                              #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r7, r14, r27
	.loc	1 865 19 is_stmt 1              # parallel-rne.mlir:865:19
	setlt.u r18, r3, r18
	.loc	1 866 19                        # parallel-rne.mlir:866:19
	bneq r18, zero, .LBB0_698
.LBB0_697:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r14, 16
	andi r7, r7, 1
	add.s r7, r14, r7
	add.s r7, r7, r1
	and r7, r7, r5
.LBB0_698:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	setlt.u r9, r3, r9
	.loc	1 866 19                        # parallel-rne.mlir:866:19
	bneq r9, zero, .LBB0_701
# %bb.699:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r1
	and r8, r8, r5
	setlt.u r2, r3, r2
	.loc	1 866 19                        # parallel-rne.mlir:866:19
	beq r2, zero, .LBB0_702
.LBB0_700:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r25
	.loc	1 866 19                        # parallel-rne.mlir:866:19
	bneq r2, zero, .LBB0_684
	j .LBB0_703
.LBB0_701:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r2
	.loc	1 866 19                        # parallel-rne.mlir:866:19
	bneq r2, zero, .LBB0_700
.LBB0_702:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r26, 16
	andi r2, r2, 1
	add.s r2, r26, r2
	add.s r2, r2, r1
	and r6, r2, r5
	setlt.u r2, r3, r25
	.loc	1 866 19                        # parallel-rne.mlir:866:19
	bneq r2, zero, .LBB0_684
.LBB0_703:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r24, 16
	andi r2, r2, 1
	add.s r2, r24, r2
	add.s r2, r2, r1
	and r23, r2, r5
	j .LBB0_684
.LBB0_704:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 844 7 is_stmt 1               # parallel-rne.mlir:844:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	load.d r[10:11], -144(r30)              # 8-byte Folded Reload
.LBB0_705:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 873 7                         # parallel-rne.mlir:873:7
	addli r2, zero, 255
	addli r23, zero, 16
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r12
	addli r20, zero, 3
	.loc	1 873 7                         # parallel-rne.mlir:873:7
	csr_set csr5, r2
	sync_core
	.loc	1 874 7                         # parallel-rne.mlir:874:7
	beq r7, r20, .LBB0_5
# %bb.706:                              # %.critedge18
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[13:14], -176(r30)              # 8-byte Folded Reload
	addli r15, zero, 5
	addli r16, zero, 64
	addli r17, zero, 1
	addli r18, zero, 7
	addli r19, zero, 13
	addli r21, zero, 4
	.loc	1 883 7 is_stmt 1               # parallel-rne.mlir:883:7
	bneq r7, zero, .LBB0_6
# %bb.707:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -196(r30)                 # 4-byte Folded Reload
	load.d r[8:9], -88(r30)                 # 8-byte Folded Reload
	.loc	1 883 7                         # parallel-rne.mlir:883:7
	load.d r[24:25], 24(r30)
	slli r2, r2, 6
	sext_int2long r[6:7], r2
	addli r2, zero, 17
	sll.d r[10:11], r[10:11], r2
	addli r2, zero, 21
	min.sl r[8:9], r[6:7], r[8:9]
	xwait r2, 0
	lock zero, r15
	addli.d r[8:9], r[8:9], 64
	add.ul r[10:11], r[24:25], r[10:11]
	lui r2, 100
	load.d r[24:25], -184(r30)              # 8-byte Folded Reload
	dma_cfg r17, r17, zero, 0
	max.sl r[8:9], r[8:9], r[6:7]
	dma_cfg zero, r17, zero, 1
	ori r2, r2, 64
	add.ul r[10:11], r[10:11], r[24:25]
	sub.sl r[6:7], r[8:9], r[6:7]
	zext_int2long r[8:9], r16
	dma_cfg r11, zero, zero, 2
	.loc	1 879 13 is_stmt 1              # parallel-rne.mlir:879:13
	min.sl r[6:7], r[6:7], r[8:9]
	.loc	1 883 7                         # parallel-rne.mlir:883:7
	addli r9, zero, 128
	loadli.w r8,  -52(r30)                  # 4-byte Folded Reload
	load.d r[24:25], -192(r30)              # 8-byte Folded Reload
	add.s r2, r8, r2
	addli r8, r24, 31
	dma_cfg r10, r2, r16, 3
	srli r2, r8, 5
	slli r8, r24, 1
	dma_cfg r16, r9, r2, 4
	andi r2, r8, 62
	addli r8, zero, 512
	addli r9, zero, 2048
	dma_cfg r9, r8, r6, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	addli r2, zero, 22
	dma_cfg zero, zero, zero, 8
	unlock r15
	xsignal r2, 0
	j .LBB0_6
.LBB0_708:                              # %._crit_edge
	.loc	1 885 5                         # parallel-rne.mlir:885:5
	xsignal zero, 0
	bneq r12, zero, .LBB0_710
# %bb.709:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 885 5                         # parallel-rne.mlir:885:5
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
.LBB0_710:
	.loc	1 886 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:886:5
	addli sp, sp, 224
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
	.long	52                              # 0x34
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	288                             # 0x120
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-ymiypu25" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
