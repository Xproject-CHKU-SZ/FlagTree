	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/division-1r9b0y8s" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -288
	addli r1, zero, 1
.Ltmp0:
	.loc	1 34 5 prologue_end             # parallel-rne.mlir:34:5
	core_id r2
	core_id r10
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
	addli r2, zero, 16
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
	addli r1, zero, 22
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
	ble.s r2, r1, .LBB0_761
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	lui r4, 216
	.loc	1 45 11 is_stmt 1               # parallel-rne.mlir:45:11
	sext_int2long r[6:7], r1
	lui r1, 30
	addli r11, zero, 5
	addli r12, zero, 1
	addli r13, zero, 12
	lui r23, 1024
	lui r24, 522240
	lui r26, 1048560
	addli r8, zero, 0
	store.d r[2:3], -200(r30)               # 8-byte Folded Spill
	lui r2, 524287
	ori r1, r1, 640
	ori r28, r2, 4095
	lui r2, 522239
	storeli.w r1, -204(r30)                 # 4-byte Folded Spill
	lui r1, 7
	ori r3, r2, 4095
	lui r2, 35
	ori r1, r1, 4095
	ori r2, r2, 640
	storeli.w r2, -208(r30)                 # 4-byte Folded Spill
	ori r2, r4, 2893
	lui r4, 1046527
	storeli.w r2, -212(r30)                 # 4-byte Folded Spill
	lui r2, 40
	ori r2, r2, 640
	storeli.w r2, -216(r30)                 # 4-byte Folded Spill
	ori r2, r4, 4095
	storeli.w r2, -220(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.critedge18.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 850 7                         # parallel-rne.mlir:850:7
	addli r2, zero, 21
	xsignal r2, 0
	.loc	1 851 7                         # parallel-rne.mlir:851:7
	addli r2, zero, 24
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], -168(r30)                # 8-byte Folded Reload
	.loc	1 57 5 is_stmt 1                # parallel-rne.mlir:57:5
	load.d r[4:5], -200(r30)                # 8-byte Folded Reload
	loadli.w r8,  -156(r30)                 # 4-byte Folded Reload
	addli r11, zero, 5
	addli r12, zero, 1
	addli r13, zero, 12
	addli.d r[6:7], r[6:7], 1
	addli r8, r8, 1
	setlt.sl r2, r[6:7], r[4:5]
	beq r2, zero, .LBB0_761
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_29 Depth 2
                                        #       Child Loop BB0_31 Depth 3
                                        #     Child Loop BB0_54 Depth 2
                                        #       Child Loop BB0_56 Depth 3
                                        #     Child Loop BB0_79 Depth 2
                                        #       Child Loop BB0_81 Depth 3
                                        #     Child Loop BB0_104 Depth 2
                                        #       Child Loop BB0_106 Depth 3
                                        #     Child Loop BB0_129 Depth 2
                                        #       Child Loop BB0_131 Depth 3
                                        #     Child Loop BB0_154 Depth 2
                                        #       Child Loop BB0_156 Depth 3
                                        #     Child Loop BB0_179 Depth 2
                                        #       Child Loop BB0_181 Depth 3
                                        #     Child Loop BB0_204 Depth 2
                                        #       Child Loop BB0_206 Depth 3
                                        #     Child Loop BB0_234 Depth 2
                                        #     Child Loop BB0_246 Depth 2
                                        #       Child Loop BB0_255 Depth 3
                                        #       Child Loop BB0_249 Depth 3
                                        #     Child Loop BB0_277 Depth 2
                                        #       Child Loop BB0_286 Depth 3
                                        #       Child Loop BB0_280 Depth 3
                                        #     Child Loop BB0_308 Depth 2
                                        #       Child Loop BB0_317 Depth 3
                                        #       Child Loop BB0_311 Depth 3
                                        #     Child Loop BB0_339 Depth 2
                                        #       Child Loop BB0_348 Depth 3
                                        #       Child Loop BB0_342 Depth 3
                                        #     Child Loop BB0_370 Depth 2
                                        #       Child Loop BB0_379 Depth 3
                                        #       Child Loop BB0_373 Depth 3
                                        #     Child Loop BB0_401 Depth 2
                                        #       Child Loop BB0_410 Depth 3
                                        #       Child Loop BB0_404 Depth 3
                                        #     Child Loop BB0_432 Depth 2
                                        #       Child Loop BB0_441 Depth 3
                                        #       Child Loop BB0_435 Depth 3
                                        #     Child Loop BB0_463 Depth 2
                                        #       Child Loop BB0_472 Depth 3
                                        #       Child Loop BB0_466 Depth 3
                                        #     Child Loop BB0_496 Depth 2
                                        #     Child Loop BB0_498 Depth 2
                                        #     Child Loop BB0_510 Depth 2
                                        #       Child Loop BB0_519 Depth 3
                                        #       Child Loop BB0_513 Depth 3
                                        #     Child Loop BB0_541 Depth 2
                                        #       Child Loop BB0_550 Depth 3
                                        #       Child Loop BB0_544 Depth 3
                                        #     Child Loop BB0_572 Depth 2
                                        #       Child Loop BB0_581 Depth 3
                                        #       Child Loop BB0_575 Depth 3
                                        #     Child Loop BB0_603 Depth 2
                                        #       Child Loop BB0_612 Depth 3
                                        #       Child Loop BB0_606 Depth 3
                                        #     Child Loop BB0_634 Depth 2
                                        #       Child Loop BB0_643 Depth 3
                                        #       Child Loop BB0_637 Depth 3
                                        #     Child Loop BB0_665 Depth 2
                                        #       Child Loop BB0_674 Depth 3
                                        #       Child Loop BB0_668 Depth 3
                                        #     Child Loop BB0_696 Depth 2
                                        #       Child Loop BB0_705 Depth 3
                                        #       Child Loop BB0_699 Depth 3
                                        #     Child Loop BB0_728 Depth 2
                                        #       Child Loop BB0_737 Depth 3
                                        #       Child Loop BB0_731 Depth 3
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	loadli.w r2,  48(r30)
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	loadli.w r4,  44(r30)
	store.d r[6:7], -168(r30)               # 8-byte Folded Spill
	.loc	1 62 13                         # parallel-rne.mlir:62:13
	mod.s r9, r8, r11
	.loc	1 99 7                          # parallel-rne.mlir:99:7
	storeli.w r8, -156(r30)                 # 4-byte Folded Spill
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	div.s r2, r6, r2
	.loc	1 66 13                         # parallel-rne.mlir:66:13
	addli r7, zero, 8
	storeli.w r9, -140(r30)                 # 4-byte Folded Spill
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	div.s r4, r2, r4
	.loc	1 63 13                         # parallel-rne.mlir:63:13
	addli r2, zero, 64
	div.s r6, r4, r2
	.loc	1 64 13                         # parallel-rne.mlir:64:13
	slli r2, r6, 3
	.loc	1 65 13                         # parallel-rne.mlir:65:13
	sub.s r5, r12, r2
	.loc	1 66 13                         # parallel-rne.mlir:66:13
	min.s r7, r5, r7
	.loc	1 67 13                         # parallel-rne.mlir:67:13
	mod.s r5, r4, r7
	.loc	1 68 13                         # parallel-rne.mlir:68:13
	add.s r2, r5, r2
	.loc	1 93 13                         # parallel-rne.mlir:93:13
	slli r5, r9, 13
	.loc	1 76 13                         # parallel-rne.mlir:76:13
	zext_int2long r[14:15], r2
	storeli.w r2, -188(r30)                 # 4-byte Folded Spill
	.loc	1 95 13                         # parallel-rne.mlir:95:13
	lui r2, 5
	add.s r9, r5, r2
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r2
	store.d r[14:15], -136(r30)             # 8-byte Folded Spill
	.loc	1 99 7                          # parallel-rne.mlir:99:7
	bneq r2, r12, .LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	sll.d r[10:11], r[14:15], r13
	load.d r[12:13], 0(r30)
	addli r15, zero, 3
	addli r14, zero, 12
	addli r16, zero, 4
	xwait r15, 0
	add.ul r[12:13], r[12:13], r[10:11]
	addli r11, zero, 2
	blt.s r16, r8, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 5
	addli r10, zero, 1
	.loc	1 99 7                          # parallel-rne.mlir:99:7
	addli r8, zero, 6
	addli r17, zero, 256
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 7
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 8
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 9
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 11
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 13
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 14
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 15
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 16
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 17
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
	addli r8, zero, 64
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r8, 3
	addli r8, zero, 128
	dma_cfg r8, zero, r11, 4
	addli r8, zero, 32
	dma_cfg r17, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
.LBB0_11:                               # %.thread51
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r2, 5
	storeli.w zero, -152(r30)               # 4-byte Folded Spill
	addli r8, zero, 1
	addli r17, zero, 32
	addli r18, zero, 256
	addli r10, zero, 2
	.loc	1 99 7                          # parallel-rne.mlir:99:7
	lock zero, r16
	ori r2, r2, 64
	dma_cfg r8, r8, zero, 0
	addli r8, zero, 64
	dma_cfg zero, r13, zero, 2
	add.s r2, r5, r2
	dma_cfg r2, r12, r8, 3
	addli r13, zero, 128
	addli r12, zero, 1
	addli r2, zero, 7
	dma_cfg r13, r8, r11, 4
	addli r11, zero, 5
	dma_cfg r18, r13, r17, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r16
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 6
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
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
	dma_cfg r12, r12, zero, 0
	dma_cfg r12, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r8, 3
	addli r9, zero, 3
	dma_cfg r13, zero, r10, 4
	addli r13, zero, 12
	dma_cfg r18, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r10, 0
	.loc	1 100 7 is_stmt 1               # parallel-rne.mlir:100:7
	j .LBB0_16
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 2
	.loc	1 100 7                         # parallel-rne.mlir:100:7
	bneq r2, r8, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	xwait r8, 0
	xwait r11, 0
	lock zero, zero
	addli r2, zero, 64
	ds_cfg r8, zero, 0
	addli r8, zero, 32
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r8, zero, 13
	shuffle_batch r5, r9, r2, 1
	addli r9, zero, 3
	addli r2, zero, 1
	unlock zero
	xsignal r9, 0
	storeli.w r2, -152(r30)                 # 4-byte Folded Spill
	addli r2, zero, 4
	xsignal r2, 0
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -152(r30)               # 4-byte Folded Spill
	addli r9, zero, 3
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	addli r15, zero, 6
.LBB0_16:                               #   in Loop: Header=BB0_8 Depth=1
	slli r2, r6, 6
	addli r14, zero, 6
	sub.s r2, r4, r2
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.s r2, r2, r7
	zext_int2long r[6:7], r2
	storeli.w r2, -176(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -140(r30)                 # 4-byte Folded Reload
	sll.d r[7:8], r[6:7], r11
	slli r2, r2, 12
	.loc	1 114 7 is_stmt 1               # parallel-rne.mlir:114:7
	sll.d r[16:17], r[7:8], r12
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	storeli.w r2, -60(r30)                  # 4-byte Folded Spill
	.loc	1 110 13 is_stmt 1              # parallel-rne.mlir:110:13
	lui r2, 15
	store.d r[16:17], -184(r30)             # 8-byte Folded Spill
	add.s r6, r5, r2
	.loc	1 114 7                         # parallel-rne.mlir:114:7
	bneq r4, r15, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	load.d r[7:8], 8(r30)
	addli r15, zero, 7
	addli r10, zero, 4
	xwait r15, 0
	loadli.w r2,  -156(r30)                 # 4-byte Folded Reload
	add.ul r[7:8], r[7:8], r[16:17]
	blt.s r10, r2, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_8 Depth=1
	lock zero, r11
	addli r2, zero, 2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 128
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
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
	addli r2, zero, 64
	dma_cfg r12, r12, zero, 0
	dma_cfg r12, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r2, 3
	dma_cfg r14, zero, r12, 4
	dma_cfg r14, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
.LBB0_19:                               # %.thread52
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r2, 15
	storeli.w zero, -148(r30)               # 4-byte Folded Spill
	storeli.w zero, -144(r30)               # 4-byte Folded Spill
	.loc	1 114 7                         # parallel-rne.mlir:114:7
	lock zero, r10
	ori r2, r2, 64
	dma_cfg r12, r12, zero, 0
	dma_cfg zero, r8, zero, 2
	add.s r2, r5, r2
	addli r5, zero, 64
	dma_cfg r2, r7, r5, 3
	addli r8, zero, 128
	addli r2, zero, 512
	addli r7, zero, 6
	dma_cfg r8, r5, r12, 4
	dma_cfg r8, r2, r5, 5
	addli r2, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
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
	dma_cfg r12, r12, zero, 0
	dma_cfg r12, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r5, 3
	dma_cfg r8, zero, r12, 4
	dma_cfg r8, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r7, 0
	.loc	1 137 7 is_stmt 1               # parallel-rne.mlir:137:7
	beq r4, r9, .LBB0_25
	j .LBB0_26
.LBB0_20:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r7, zero, 4
	.loc	1 115 7 is_stmt 1               # parallel-rne.mlir:115:7
	beq r4, r7, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r7, zero, 7
	.loc	1 115 7                         # parallel-rne.mlir:115:7
	bneq r4, r7, .LBB0_760
# %bb.22:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 6
	storeli.w zero, -148(r30)               # 4-byte Folded Spill
	addli r8, zero, 32
	.loc	1 115 7                         # parallel-rne.mlir:115:7
	xwait r2, 0
	addli r2, zero, 9
	xwait r2, 0
	addli r2, zero, 2
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 64
	ds_cfg r8, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r8, zero, 13
	shuffle_coa r5, r6, r2, 2
	addli r2, zero, 1
	unlock zero
	xsignal r7, 0
	storeli.w r2, -144(r30)                 # 4-byte Folded Spill
	addli r2, zero, 8
	j .LBB0_24
.LBB0_23:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 116 7 is_stmt 1               # parallel-rne.mlir:116:7
	addli r2, zero, 8
	storeli.w zero, -144(r30)               # 4-byte Folded Spill
	xwait r7, 0
	addli r8, zero, 1
	addli r6, zero, 32
	xwait r2, 0
	addli r2, zero, 11
	xwait r2, 0
	addli r2, zero, 64
	lock zero, r8
	mm_cfg r6, r2, r6, 0
	mm_cfg r7, r8, r8, 2
	loadli.w r2,  -60(r30)                  # 4-byte Folded Reload
	mm r2, r5, r5, 8
	addli r2, zero, 1
	storeli.w r2, -148(r30)                 # 4-byte Folded Spill
	addli r2, zero, 9
	unlock r8
	xsignal r11, 0
	xsignal r2, 0
	addli r2, zero, 10
.LBB0_24:                               # %.thread53
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
	.loc	1 137 7 is_stmt 1               # parallel-rne.mlir:137:7
	bneq r4, r9, .LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	addli r2, zero, 14
	xwait r2, 0
.LBB0_26:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	loadli.w r5,  -60(r30)                  # 4-byte Folded Reload
	zext_int2long r[12:13], r2
	loadli.w r2,  -204(r30)                 # 4-byte Folded Reload
	.loc	1 140 7 is_stmt 1               # parallel-rne.mlir:140:7
	xfence
	.loc	1 141 7                         # parallel-rne.mlir:141:7
	mfence { lm, sm, gm }
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r7, r5, r2
	.loc	1 142 7 is_stmt 1               # parallel-rne.mlir:142:7
	addli r2, zero, 255
	zext_int2long r[5:6], r9
	csr_set csr5, r2
	store.d r[5:6], -120(r30)               # 8-byte Folded Spill
	sync_core
	.loc	1 143 7                         # parallel-rne.mlir:143:7
	bneq r4, zero, .LBB0_51
# %bb.27:                               #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[9:10], zero
	mfence { lm, sm, gm }
	store.d r[9:10], -56(r30)               # 8-byte Folded Spill
	j .LBB0_29
.LBB0_28:                               # %middle.block317
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 150 9                         # parallel-rne.mlir:150:9
	load.d r[4:5], -120(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[9:10], r[9:10], 1
	beq r2, zero, .LBB0_50
.LBB0_29:                               # %.preheader81
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_31 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	load.d r[16:17], -56(r30)               # 8-byte Folded Reload
	sll.d r[14:15], r[9:10], r2
	j .LBB0_31
.LBB0_30:                               # %vector.body313
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 151 11 is_stmt 1              # parallel-rne.mlir:151:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 166 13                        # parallel-rne.mlir:166:13
	add.s r6, r7, r18
	.loc	1 151 11                        # parallel-rne.mlir:151:11
	setneq.d r2, r[16:17], r[12:13]
	.loc	1 166 13                        # parallel-rne.mlir:166:13
	stores.w r19, 12(r6)
	stores.w r22, 8(r6)
	stores.w r4, 4(r6)
	stores.w r5, 0(r6)
	.loc	1 151 11                        # parallel-rne.mlir:151:11
	beq r2, zero, .LBB0_28
.LBB0_31:                               # %vector.body313
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	add.ul r[4:5], r[16:17], r[14:15]
	loadli.w r2,  -60(r30)                  # 4-byte Folded Reload
	slli r18, r4, 2
	add.s r4, r2, r18
	loads.w r2, 12(r4)
	loads.w r27, 0(r4)
	loads.w r8, 4(r4)
	loads.w r25, 8(r4)
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	and r21, r2, r28
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	setlt.u r4, r24, r21
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r4, zero, .LBB0_33
# %bb.32:                               # %vector.body313
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r2, 0
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_31 Depth=3
	or r19, r2, r23
.LBB0_34:                               # %vector.body313
                                        #   in Loop: Header=BB0_31 Depth=3
	and r11, r25, r28
	setlt.u r4, r24, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r4, zero, .LBB0_36
# %bb.35:                               # %vector.body313
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r25, 0
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_31 Depth=3
	or r22, r25, r23
.LBB0_37:                               # %vector.body313
                                        #   in Loop: Header=BB0_31 Depth=3
	and r6, r8, r28
	setlt.u r4, r24, r6
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r4, zero, .LBB0_39
# %bb.38:                               # %vector.body313
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r8, 0
	j .LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_31 Depth=3
	or r4, r8, r23
.LBB0_40:                               # %vector.body313
                                        #   in Loop: Header=BB0_31 Depth=3
	and r20, r27, r28
	setlt.u r5, r24, r20
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r5, zero, .LBB0_42
# %bb.41:                               # %vector.body313
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r27, 0
	.loc	1 163 19 is_stmt 1              # parallel-rne.mlir:163:19
	setlt.u r20, r3, r20
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	beq r20, zero, .LBB0_43
	j .LBB0_44
.LBB0_42:                               #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r27, r23
	.loc	1 163 19 is_stmt 1              # parallel-rne.mlir:163:19
	setlt.u r20, r3, r20
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r20, zero, .LBB0_44
.LBB0_43:                               # %vector.body313
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r27, 16
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r1
	and r5, r5, r26
.LBB0_44:                               # %vector.body313
                                        #   in Loop: Header=BB0_31 Depth=3
	setlt.u r6, r3, r6
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	beq r6, zero, .LBB0_47
# %bb.45:                               # %vector.body313
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r11
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	beq r6, zero, .LBB0_48
.LBB0_46:                               # %vector.body313
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r21
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r6, zero, .LBB0_30
	j .LBB0_49
.LBB0_47:                               # %vector.body313
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r1
	and r4, r4, r26
	setlt.u r6, r3, r11
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r6, zero, .LBB0_46
.LBB0_48:                               # %vector.body313
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r1
	and r22, r6, r26
	setlt.u r6, r3, r21
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r6, zero, .LBB0_30
.LBB0_49:                               # %vector.body313
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r1
	and r19, r2, r26
	j .LBB0_30
.LBB0_50:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r4
	addli r9, zero, 3
	.loc	1 143 7                         # parallel-rne.mlir:143:7
	mfence { sm }
.LBB0_51:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 7
	zext_int2long r[5:6], r2
	.loc	1 171 7 is_stmt 1               # parallel-rne.mlir:171:7
	addli r2, zero, 1
	store.d r[5:6], -112(r30)               # 8-byte Folded Spill
	bneq r4, r2, .LBB0_76
# %bb.52:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 4
	.loc	1 171 7                         # parallel-rne.mlir:171:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r2
	j .LBB0_54
.LBB0_53:                               # %middle.block308
                                        #   in Loop: Header=BB0_54 Depth=2
	.loc	1 178 9 is_stmt 1               # parallel-rne.mlir:178:9
	load.d r[8:9], -112(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[8:9]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_75
.LBB0_54:                               # %.preheader80
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_56 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[16:17], zero
	sll.d r[9:10], r[5:6], r2
	j .LBB0_56
.LBB0_55:                               # %vector.body304
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 179 11 is_stmt 1              # parallel-rne.mlir:179:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 194 13                        # parallel-rne.mlir:194:13
	add.s r8, r7, r18
	.loc	1 179 11                        # parallel-rne.mlir:179:11
	setneq.d r2, r[16:17], r[12:13]
	.loc	1 194 13                        # parallel-rne.mlir:194:13
	stores.w r19, 12(r8)
	stores.w r22, 8(r8)
	stores.w r4, 4(r8)
	stores.w r14, 0(r8)
	.loc	1 179 11                        # parallel-rne.mlir:179:11
	beq r2, zero, .LBB0_53
.LBB0_56:                               # %vector.body304
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	add.ul r[14:15], r[16:17], r[9:10]
	loadli.w r2,  -60(r30)                  # 4-byte Folded Reload
	slli r18, r14, 2
	add.s r4, r2, r18
	loads.w r2, 12(r4)
	loads.w r15, 0(r4)
	loads.w r8, 4(r4)
	loads.w r25, 8(r4)
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	and r21, r2, r28
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	setlt.u r4, r24, r21
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r4, zero, .LBB0_58
# %bb.57:                               # %vector.body304
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r2, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_56 Depth=3
	or r19, r2, r23
.LBB0_59:                               # %vector.body304
                                        #   in Loop: Header=BB0_56 Depth=3
	and r11, r25, r28
	setlt.u r4, r24, r11
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r4, zero, .LBB0_61
# %bb.60:                               # %vector.body304
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r25, 0
	j .LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_56 Depth=3
	or r22, r25, r23
.LBB0_62:                               # %vector.body304
                                        #   in Loop: Header=BB0_56 Depth=3
	and r20, r8, r28
	setlt.u r4, r24, r20
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r4, zero, .LBB0_64
# %bb.63:                               # %vector.body304
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r8, 0
	j .LBB0_65
.LBB0_64:                               #   in Loop: Header=BB0_56 Depth=3
	or r4, r8, r23
.LBB0_65:                               # %vector.body304
                                        #   in Loop: Header=BB0_56 Depth=3
	and r27, r15, r28
	setlt.u r14, r24, r27
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r14, zero, .LBB0_67
# %bb.66:                               # %vector.body304
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r15, 0
	.loc	1 191 19 is_stmt 1              # parallel-rne.mlir:191:19
	setlt.u r27, r3, r27
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	beq r27, zero, .LBB0_68
	j .LBB0_69
.LBB0_67:                               #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r15, r23
	.loc	1 191 19 is_stmt 1              # parallel-rne.mlir:191:19
	setlt.u r27, r3, r27
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r27, zero, .LBB0_69
.LBB0_68:                               # %vector.body304
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r15, 16
	andi r14, r14, 1
	add.s r14, r15, r14
	add.s r14, r14, r1
	and r14, r14, r26
.LBB0_69:                               # %vector.body304
                                        #   in Loop: Header=BB0_56 Depth=3
	setlt.u r15, r3, r20
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	beq r15, zero, .LBB0_72
# %bb.70:                               # %vector.body304
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r11
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	beq r8, zero, .LBB0_73
.LBB0_71:                               # %vector.body304
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r21
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r8, zero, .LBB0_55
	j .LBB0_74
.LBB0_72:                               # %vector.body304
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r1
	and r4, r4, r26
	setlt.u r8, r3, r11
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r8, zero, .LBB0_71
.LBB0_73:                               # %vector.body304
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r25, 16
	andi r8, r8, 1
	add.s r8, r25, r8
	add.s r8, r8, r1
	and r22, r8, r26
	setlt.u r8, r3, r21
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r8, zero, .LBB0_55
.LBB0_74:                               # %vector.body304
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r1
	and r19, r2, r26
	j .LBB0_55
.LBB0_75:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r4
	addli r9, zero, 3
	.loc	1 171 7                         # parallel-rne.mlir:171:7
	mfence { sm }
.LBB0_76:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 11
	zext_int2long r[5:6], r2
	.loc	1 199 7 is_stmt 1               # parallel-rne.mlir:199:7
	loadli.w r2,  -152(r30)                 # 4-byte Folded Reload
	store.d r[5:6], -104(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_101
# %bb.77:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 199 7                         # parallel-rne.mlir:199:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r2
	j .LBB0_79
.LBB0_78:                               # %middle.block299
                                        #   in Loop: Header=BB0_79 Depth=2
	.loc	1 206 9 is_stmt 1               # parallel-rne.mlir:206:9
	load.d r[8:9], -104(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[8:9]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_100
.LBB0_79:                               # %.preheader79
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_81 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[18:19], zero
	sll.d r[16:17], r[5:6], r2
	j .LBB0_81
.LBB0_80:                               # %vector.body295
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 207 11 is_stmt 1              # parallel-rne.mlir:207:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 222 13                        # parallel-rne.mlir:222:13
	add.s r8, r7, r21
	.loc	1 207 11                        # parallel-rne.mlir:207:11
	setneq.d r2, r[18:19], r[12:13]
	.loc	1 222 13                        # parallel-rne.mlir:222:13
	stores.w r22, 12(r8)
	stores.w r10, 8(r8)
	stores.w r4, 4(r8)
	stores.w r14, 0(r8)
	.loc	1 207 11                        # parallel-rne.mlir:207:11
	beq r2, zero, .LBB0_78
.LBB0_81:                               # %vector.body295
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_79 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	add.ul r[8:9], r[18:19], r[16:17]
	loadli.w r2,  -60(r30)                  # 4-byte Folded Reload
	slli r21, r8, 2
	add.s r4, r2, r21
	loads.w r2, 12(r4)
	loads.w r15, 0(r4)
	loads.w r8, 4(r4)
	loads.w r25, 8(r4)
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	and r9, r2, r28
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	setlt.u r4, r24, r9
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r4, zero, .LBB0_83
# %bb.82:                               # %vector.body295
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r22, r2, 0
	j .LBB0_84
.LBB0_83:                               #   in Loop: Header=BB0_81 Depth=3
	or r22, r2, r23
.LBB0_84:                               # %vector.body295
                                        #   in Loop: Header=BB0_81 Depth=3
	and r11, r25, r28
	setlt.u r4, r24, r11
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r4, zero, .LBB0_86
# %bb.85:                               # %vector.body295
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r25, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_81 Depth=3
	or r10, r25, r23
.LBB0_87:                               # %vector.body295
                                        #   in Loop: Header=BB0_81 Depth=3
	and r20, r8, r28
	setlt.u r4, r24, r20
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r4, zero, .LBB0_89
# %bb.88:                               # %vector.body295
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r8, 0
	j .LBB0_90
.LBB0_89:                               #   in Loop: Header=BB0_81 Depth=3
	or r4, r8, r23
.LBB0_90:                               # %vector.body295
                                        #   in Loop: Header=BB0_81 Depth=3
	and r27, r15, r28
	setlt.u r14, r24, r27
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r14, zero, .LBB0_92
# %bb.91:                               # %vector.body295
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r15, 0
	.loc	1 219 19 is_stmt 1              # parallel-rne.mlir:219:19
	setlt.u r27, r3, r27
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	beq r27, zero, .LBB0_93
	j .LBB0_94
.LBB0_92:                               #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r15, r23
	.loc	1 219 19 is_stmt 1              # parallel-rne.mlir:219:19
	setlt.u r27, r3, r27
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r27, zero, .LBB0_94
.LBB0_93:                               # %vector.body295
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r15, 16
	andi r14, r14, 1
	add.s r14, r15, r14
	add.s r14, r14, r1
	and r14, r14, r26
.LBB0_94:                               # %vector.body295
                                        #   in Loop: Header=BB0_81 Depth=3
	setlt.u r15, r3, r20
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	beq r15, zero, .LBB0_97
# %bb.95:                               # %vector.body295
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r11
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	beq r8, zero, .LBB0_98
.LBB0_96:                               # %vector.body295
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r9
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r8, zero, .LBB0_80
	j .LBB0_99
.LBB0_97:                               # %vector.body295
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r1
	and r4, r4, r26
	setlt.u r8, r3, r11
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r8, zero, .LBB0_96
.LBB0_98:                               # %vector.body295
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r25, 16
	andi r8, r8, 1
	add.s r8, r25, r8
	add.s r8, r8, r1
	and r10, r8, r26
	setlt.u r8, r3, r9
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r8, zero, .LBB0_80
.LBB0_99:                               # %vector.body295
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r1
	and r22, r2, r26
	j .LBB0_80
.LBB0_100:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r4
	addli r9, zero, 3
	.loc	1 199 7                         # parallel-rne.mlir:199:7
	mfence { sm }
.LBB0_101:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 15
	zext_int2long r[5:6], r2
	.loc	1 227 7 is_stmt 1               # parallel-rne.mlir:227:7
	store.d r[5:6], -96(r30)                # 8-byte Folded Spill
	bneq r4, r9, .LBB0_126
# %bb.102:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 12
	.loc	1 227 7                         # parallel-rne.mlir:227:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r2
	j .LBB0_104
.LBB0_103:                              # %middle.block290
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 234 9 is_stmt 1               # parallel-rne.mlir:234:9
	load.d r[8:9], -96(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[8:9]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_125
.LBB0_104:                              # %.preheader78
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_106 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[18:19], zero
	sll.d r[16:17], r[5:6], r2
	j .LBB0_106
.LBB0_105:                              # %vector.body286
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 235 11 is_stmt 1              # parallel-rne.mlir:235:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 250 13                        # parallel-rne.mlir:250:13
	add.s r8, r7, r21
	.loc	1 235 11                        # parallel-rne.mlir:235:11
	setneq.d r2, r[18:19], r[12:13]
	.loc	1 250 13                        # parallel-rne.mlir:250:13
	stores.w r22, 12(r8)
	stores.w r10, 8(r8)
	stores.w r4, 4(r8)
	stores.w r14, 0(r8)
	.loc	1 235 11                        # parallel-rne.mlir:235:11
	beq r2, zero, .LBB0_103
.LBB0_106:                              # %vector.body286
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	add.ul r[8:9], r[18:19], r[16:17]
	loadli.w r2,  -60(r30)                  # 4-byte Folded Reload
	slli r21, r8, 2
	add.s r4, r2, r21
	loads.w r2, 12(r4)
	loads.w r15, 0(r4)
	loads.w r8, 4(r4)
	loads.w r25, 8(r4)
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	and r9, r2, r28
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	setlt.u r4, r24, r9
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r4, zero, .LBB0_108
# %bb.107:                              # %vector.body286
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r22, r2, 0
	j .LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_106 Depth=3
	or r22, r2, r23
.LBB0_109:                              # %vector.body286
                                        #   in Loop: Header=BB0_106 Depth=3
	and r11, r25, r28
	setlt.u r4, r24, r11
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r4, zero, .LBB0_111
# %bb.110:                              # %vector.body286
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r25, 0
	j .LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_106 Depth=3
	or r10, r25, r23
.LBB0_112:                              # %vector.body286
                                        #   in Loop: Header=BB0_106 Depth=3
	and r20, r8, r28
	setlt.u r4, r24, r20
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r4, zero, .LBB0_114
# %bb.113:                              # %vector.body286
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r8, 0
	j .LBB0_115
.LBB0_114:                              #   in Loop: Header=BB0_106 Depth=3
	or r4, r8, r23
.LBB0_115:                              # %vector.body286
                                        #   in Loop: Header=BB0_106 Depth=3
	and r27, r15, r28
	setlt.u r14, r24, r27
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r14, zero, .LBB0_117
# %bb.116:                              # %vector.body286
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r15, 0
	.loc	1 247 19 is_stmt 1              # parallel-rne.mlir:247:19
	setlt.u r27, r3, r27
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	beq r27, zero, .LBB0_118
	j .LBB0_119
.LBB0_117:                              #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r15, r23
	.loc	1 247 19 is_stmt 1              # parallel-rne.mlir:247:19
	setlt.u r27, r3, r27
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r27, zero, .LBB0_119
.LBB0_118:                              # %vector.body286
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r15, 16
	andi r14, r14, 1
	add.s r14, r15, r14
	add.s r14, r14, r1
	and r14, r14, r26
.LBB0_119:                              # %vector.body286
                                        #   in Loop: Header=BB0_106 Depth=3
	setlt.u r15, r3, r20
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	beq r15, zero, .LBB0_122
# %bb.120:                              # %vector.body286
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r11
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	beq r8, zero, .LBB0_123
.LBB0_121:                              # %vector.body286
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r9
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r8, zero, .LBB0_105
	j .LBB0_124
.LBB0_122:                              # %vector.body286
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r1
	and r4, r4, r26
	setlt.u r8, r3, r11
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r8, zero, .LBB0_121
.LBB0_123:                              # %vector.body286
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r25, 16
	andi r8, r8, 1
	add.s r8, r25, r8
	add.s r8, r8, r1
	and r10, r8, r26
	setlt.u r8, r3, r9
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r8, zero, .LBB0_105
.LBB0_124:                              # %vector.body286
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r1
	and r22, r2, r26
	j .LBB0_105
.LBB0_125:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r4
	.loc	1 227 7                         # parallel-rne.mlir:227:7
	mfence { sm }
.LBB0_126:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 19
	zext_int2long r[5:6], r2
	.loc	1 255 7 is_stmt 1               # parallel-rne.mlir:255:7
	loadli.w r2,  -148(r30)                 # 4-byte Folded Reload
	store.d r[5:6], -88(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_151
# %bb.127:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 255 7                         # parallel-rne.mlir:255:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r2
	j .LBB0_129
.LBB0_128:                              # %middle.block281
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 262 9 is_stmt 1               # parallel-rne.mlir:262:9
	load.d r[8:9], -88(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[8:9]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_150
.LBB0_129:                              # %.preheader77
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_131 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[18:19], zero
	sll.d r[16:17], r[5:6], r2
	j .LBB0_131
.LBB0_130:                              # %vector.body277
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 263 11 is_stmt 1              # parallel-rne.mlir:263:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 278 13                        # parallel-rne.mlir:278:13
	add.s r8, r7, r21
	.loc	1 263 11                        # parallel-rne.mlir:263:11
	setneq.d r2, r[18:19], r[12:13]
	.loc	1 278 13                        # parallel-rne.mlir:278:13
	stores.w r22, 12(r8)
	stores.w r10, 8(r8)
	stores.w r4, 4(r8)
	stores.w r14, 0(r8)
	.loc	1 263 11                        # parallel-rne.mlir:263:11
	beq r2, zero, .LBB0_128
.LBB0_131:                              # %vector.body277
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	add.ul r[8:9], r[18:19], r[16:17]
	loadli.w r2,  -60(r30)                  # 4-byte Folded Reload
	slli r21, r8, 2
	add.s r4, r2, r21
	loads.w r2, 12(r4)
	loads.w r15, 0(r4)
	loads.w r8, 4(r4)
	loads.w r25, 8(r4)
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	and r9, r2, r28
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	setlt.u r4, r24, r9
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r4, zero, .LBB0_133
# %bb.132:                              # %vector.body277
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r22, r2, 0
	j .LBB0_134
.LBB0_133:                              #   in Loop: Header=BB0_131 Depth=3
	or r22, r2, r23
.LBB0_134:                              # %vector.body277
                                        #   in Loop: Header=BB0_131 Depth=3
	and r11, r25, r28
	setlt.u r4, r24, r11
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r4, zero, .LBB0_136
# %bb.135:                              # %vector.body277
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r25, 0
	j .LBB0_137
.LBB0_136:                              #   in Loop: Header=BB0_131 Depth=3
	or r10, r25, r23
.LBB0_137:                              # %vector.body277
                                        #   in Loop: Header=BB0_131 Depth=3
	and r20, r8, r28
	setlt.u r4, r24, r20
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r4, zero, .LBB0_139
# %bb.138:                              # %vector.body277
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r8, 0
	j .LBB0_140
.LBB0_139:                              #   in Loop: Header=BB0_131 Depth=3
	or r4, r8, r23
.LBB0_140:                              # %vector.body277
                                        #   in Loop: Header=BB0_131 Depth=3
	and r27, r15, r28
	setlt.u r14, r24, r27
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r14, zero, .LBB0_142
# %bb.141:                              # %vector.body277
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r15, 0
	.loc	1 275 19 is_stmt 1              # parallel-rne.mlir:275:19
	setlt.u r27, r3, r27
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	beq r27, zero, .LBB0_143
	j .LBB0_144
.LBB0_142:                              #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r15, r23
	.loc	1 275 19 is_stmt 1              # parallel-rne.mlir:275:19
	setlt.u r27, r3, r27
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r27, zero, .LBB0_144
.LBB0_143:                              # %vector.body277
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r15, 16
	andi r14, r14, 1
	add.s r14, r15, r14
	add.s r14, r14, r1
	and r14, r14, r26
.LBB0_144:                              # %vector.body277
                                        #   in Loop: Header=BB0_131 Depth=3
	setlt.u r15, r3, r20
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	beq r15, zero, .LBB0_147
# %bb.145:                              # %vector.body277
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r11
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	beq r8, zero, .LBB0_148
.LBB0_146:                              # %vector.body277
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r9
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r8, zero, .LBB0_130
	j .LBB0_149
.LBB0_147:                              # %vector.body277
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r1
	and r4, r4, r26
	setlt.u r8, r3, r11
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r8, zero, .LBB0_146
.LBB0_148:                              # %vector.body277
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r25, 16
	andi r8, r8, 1
	add.s r8, r25, r8
	add.s r8, r8, r1
	and r10, r8, r26
	setlt.u r8, r3, r9
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r8, zero, .LBB0_130
.LBB0_149:                              # %vector.body277
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r1
	and r22, r2, r26
	j .LBB0_130
.LBB0_150:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r4
	.loc	1 255 7                         # parallel-rne.mlir:255:7
	mfence { sm }
.LBB0_151:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 23
	zext_int2long r[5:6], r2
	.loc	1 283 7 is_stmt 1               # parallel-rne.mlir:283:7
	addli r2, zero, 5
	store.d r[5:6], -80(r30)                # 8-byte Folded Spill
	bneq r4, r2, .LBB0_176
# %bb.152:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 283 7                         # parallel-rne.mlir:283:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r2
	j .LBB0_154
.LBB0_153:                              # %middle.block272
                                        #   in Loop: Header=BB0_154 Depth=2
	.loc	1 290 9 is_stmt 1               # parallel-rne.mlir:290:9
	load.d r[8:9], -80(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[8:9]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_175
.LBB0_154:                              # %.preheader76
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_156 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[18:19], zero
	sll.d r[16:17], r[5:6], r2
	j .LBB0_156
.LBB0_155:                              # %vector.body268
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 291 11 is_stmt 1              # parallel-rne.mlir:291:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	add.s r8, r7, r21
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	setneq.d r2, r[18:19], r[12:13]
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	stores.w r22, 12(r8)
	stores.w r10, 8(r8)
	stores.w r4, 4(r8)
	stores.w r14, 0(r8)
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	beq r2, zero, .LBB0_153
.LBB0_156:                              # %vector.body268
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_154 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	add.ul r[8:9], r[18:19], r[16:17]
	loadli.w r2,  -60(r30)                  # 4-byte Folded Reload
	slli r21, r8, 2
	add.s r4, r2, r21
	loads.w r2, 12(r4)
	loads.w r15, 0(r4)
	loads.w r8, 4(r4)
	loads.w r25, 8(r4)
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	and r9, r2, r28
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	setlt.u r4, r24, r9
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r4, zero, .LBB0_158
# %bb.157:                              # %vector.body268
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r22, r2, 0
	j .LBB0_159
.LBB0_158:                              #   in Loop: Header=BB0_156 Depth=3
	or r22, r2, r23
.LBB0_159:                              # %vector.body268
                                        #   in Loop: Header=BB0_156 Depth=3
	and r11, r25, r28
	setlt.u r4, r24, r11
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r4, zero, .LBB0_161
# %bb.160:                              # %vector.body268
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r25, 0
	j .LBB0_162
.LBB0_161:                              #   in Loop: Header=BB0_156 Depth=3
	or r10, r25, r23
.LBB0_162:                              # %vector.body268
                                        #   in Loop: Header=BB0_156 Depth=3
	and r20, r8, r28
	setlt.u r4, r24, r20
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r4, zero, .LBB0_164
# %bb.163:                              # %vector.body268
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r8, 0
	j .LBB0_165
.LBB0_164:                              #   in Loop: Header=BB0_156 Depth=3
	or r4, r8, r23
.LBB0_165:                              # %vector.body268
                                        #   in Loop: Header=BB0_156 Depth=3
	and r27, r15, r28
	setlt.u r14, r24, r27
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r14, zero, .LBB0_167
# %bb.166:                              # %vector.body268
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r15, 0
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r27, r3, r27
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	beq r27, zero, .LBB0_168
	j .LBB0_169
.LBB0_167:                              #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r15, r23
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r27, r3, r27
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r27, zero, .LBB0_169
.LBB0_168:                              # %vector.body268
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r15, 16
	andi r14, r14, 1
	add.s r14, r15, r14
	add.s r14, r14, r1
	and r14, r14, r26
.LBB0_169:                              # %vector.body268
                                        #   in Loop: Header=BB0_156 Depth=3
	setlt.u r15, r3, r20
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	beq r15, zero, .LBB0_172
# %bb.170:                              # %vector.body268
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r11
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	beq r8, zero, .LBB0_173
.LBB0_171:                              # %vector.body268
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r9
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r8, zero, .LBB0_155
	j .LBB0_174
.LBB0_172:                              # %vector.body268
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r1
	and r4, r4, r26
	setlt.u r8, r3, r11
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r8, zero, .LBB0_171
.LBB0_173:                              # %vector.body268
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r25, 16
	andi r8, r8, 1
	add.s r8, r25, r8
	add.s r8, r8, r1
	and r10, r8, r26
	setlt.u r8, r3, r9
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r8, zero, .LBB0_155
.LBB0_174:                              # %vector.body268
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r1
	and r22, r2, r26
	j .LBB0_155
.LBB0_175:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r4
	.loc	1 283 7                         # parallel-rne.mlir:283:7
	mfence { sm }
.LBB0_176:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 27
	zext_int2long r[5:6], r2
	.loc	1 311 7 is_stmt 1               # parallel-rne.mlir:311:7
	addli r2, zero, 6
	store.d r[5:6], -72(r30)                # 8-byte Folded Spill
	bneq r4, r2, .LBB0_201
# %bb.177:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 311 7                         # parallel-rne.mlir:311:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r2
	j .LBB0_179
.LBB0_178:                              # %middle.block263
                                        #   in Loop: Header=BB0_179 Depth=2
	.loc	1 318 9 is_stmt 1               # parallel-rne.mlir:318:9
	load.d r[8:9], -72(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[8:9]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_200
.LBB0_179:                              # %.preheader75
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_181 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[18:19], zero
	sll.d r[16:17], r[5:6], r2
	j .LBB0_181
.LBB0_180:                              # %vector.body259
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 319 11 is_stmt 1              # parallel-rne.mlir:319:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 334 13                        # parallel-rne.mlir:334:13
	add.s r8, r7, r21
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	setneq.d r2, r[18:19], r[12:13]
	.loc	1 334 13                        # parallel-rne.mlir:334:13
	stores.w r22, 12(r8)
	stores.w r10, 8(r8)
	stores.w r4, 4(r8)
	stores.w r14, 0(r8)
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	beq r2, zero, .LBB0_178
.LBB0_181:                              # %vector.body259
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_179 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	add.ul r[8:9], r[18:19], r[16:17]
	loadli.w r2,  -60(r30)                  # 4-byte Folded Reload
	slli r21, r8, 2
	add.s r4, r2, r21
	loads.w r2, 12(r4)
	loads.w r15, 0(r4)
	loads.w r8, 4(r4)
	loads.w r25, 8(r4)
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	and r9, r2, r28
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	setlt.u r4, r24, r9
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r4, zero, .LBB0_183
# %bb.182:                              # %vector.body259
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r22, r2, 0
	j .LBB0_184
.LBB0_183:                              #   in Loop: Header=BB0_181 Depth=3
	or r22, r2, r23
.LBB0_184:                              # %vector.body259
                                        #   in Loop: Header=BB0_181 Depth=3
	and r11, r25, r28
	setlt.u r4, r24, r11
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r4, zero, .LBB0_186
# %bb.185:                              # %vector.body259
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r25, 0
	j .LBB0_187
.LBB0_186:                              #   in Loop: Header=BB0_181 Depth=3
	or r10, r25, r23
.LBB0_187:                              # %vector.body259
                                        #   in Loop: Header=BB0_181 Depth=3
	and r20, r8, r28
	setlt.u r4, r24, r20
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r4, zero, .LBB0_189
# %bb.188:                              # %vector.body259
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r8, 0
	j .LBB0_190
.LBB0_189:                              #   in Loop: Header=BB0_181 Depth=3
	or r4, r8, r23
.LBB0_190:                              # %vector.body259
                                        #   in Loop: Header=BB0_181 Depth=3
	and r27, r15, r28
	setlt.u r14, r24, r27
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r14, zero, .LBB0_192
# %bb.191:                              # %vector.body259
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r15, 0
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r27, r3, r27
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r27, zero, .LBB0_193
	j .LBB0_194
.LBB0_192:                              #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r15, r23
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r27, r3, r27
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r27, zero, .LBB0_194
.LBB0_193:                              # %vector.body259
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r15, 16
	andi r14, r14, 1
	add.s r14, r15, r14
	add.s r14, r14, r1
	and r14, r14, r26
.LBB0_194:                              # %vector.body259
                                        #   in Loop: Header=BB0_181 Depth=3
	setlt.u r15, r3, r20
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r15, zero, .LBB0_197
# %bb.195:                              # %vector.body259
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r11
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r8, zero, .LBB0_198
.LBB0_196:                              # %vector.body259
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r9
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r8, zero, .LBB0_180
	j .LBB0_199
.LBB0_197:                              # %vector.body259
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r1
	and r4, r4, r26
	setlt.u r8, r3, r11
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r8, zero, .LBB0_196
.LBB0_198:                              # %vector.body259
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r25, 16
	andi r8, r8, 1
	add.s r8, r25, r8
	add.s r8, r8, r1
	and r10, r8, r26
	setlt.u r8, r3, r9
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r8, zero, .LBB0_180
.LBB0_199:                              # %vector.body259
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r1
	and r22, r2, r26
	j .LBB0_180
.LBB0_200:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 311 7 is_stmt 1               # parallel-rne.mlir:311:7
	mfence { sm }
.LBB0_201:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 31
	zext_int2long r[4:5], r2
	.loc	1 339 7 is_stmt 1               # parallel-rne.mlir:339:7
	loadli.w r2,  -144(r30)                 # 4-byte Folded Reload
	store.d r[4:5], -56(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_226
# %bb.202:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 339 7                         # parallel-rne.mlir:339:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_204
.LBB0_203:                              # %middle.block254
                                        #   in Loop: Header=BB0_204 Depth=2
	.loc	1 346 9 is_stmt 1               # parallel-rne.mlir:346:9
	load.d r[4:5], -56(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -128(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_225
.LBB0_204:                              # %.preheader74
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_206 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[21:22], zero
	store.d r[4:5], -128(r30)               # 8-byte Folded Spill
	sll.d r[18:19], r[4:5], r2
	j .LBB0_206
.LBB0_205:                              # %vector.body250
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 347 11 is_stmt 1              # parallel-rne.mlir:347:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	add.s r6, r7, r25
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	setneq.d r2, r[21:22], r[12:13]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	stores.w r27, 12(r6)
	stores.w r4, 8(r6)
	stores.w r8, 4(r6)
	stores.w r5, 0(r6)
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	beq r2, zero, .LBB0_203
.LBB0_206:                              # %vector.body250
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_204 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	add.ul r[4:5], r[21:22], r[18:19]
	loadli.w r2,  -60(r30)                  # 4-byte Folded Reload
	slli r25, r4, 2
	add.s r4, r2, r25
	loads.w r2, 12(r4)
	loads.w r15, 0(r4)
	loads.w r14, 4(r4)
	loads.w r10, 8(r4)
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r9, r2, r28
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	setlt.u r4, r24, r9
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r4, zero, .LBB0_208
# %bb.207:                              # %vector.body250
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r27, r2, 0
	j .LBB0_209
.LBB0_208:                              #   in Loop: Header=BB0_206 Depth=3
	or r27, r2, r23
.LBB0_209:                              # %vector.body250
                                        #   in Loop: Header=BB0_206 Depth=3
	and r11, r10, r28
	setlt.u r4, r24, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r4, zero, .LBB0_211
# %bb.210:                              # %vector.body250
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r10, 0
	j .LBB0_212
.LBB0_211:                              #   in Loop: Header=BB0_206 Depth=3
	or r4, r10, r23
.LBB0_212:                              # %vector.body250
                                        #   in Loop: Header=BB0_206 Depth=3
	and r6, r14, r28
	setlt.u r5, r24, r6
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r5, zero, .LBB0_214
# %bb.213:                              # %vector.body250
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r14, 0
	j .LBB0_215
.LBB0_214:                              #   in Loop: Header=BB0_206 Depth=3
	or r8, r14, r23
.LBB0_215:                              # %vector.body250
                                        #   in Loop: Header=BB0_206 Depth=3
	and r20, r15, r28
	setlt.u r5, r24, r20
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r5, zero, .LBB0_217
# %bb.216:                              # %vector.body250
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r15, 0
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r16, r3, r20
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r16, zero, .LBB0_218
	j .LBB0_219
.LBB0_217:                              #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r15, r23
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r16, r3, r20
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r16, zero, .LBB0_219
.LBB0_218:                              # %vector.body250
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r15, 16
	andi r5, r5, 1
	add.s r5, r15, r5
	add.s r5, r5, r1
	and r5, r5, r26
.LBB0_219:                              # %vector.body250
                                        #   in Loop: Header=BB0_206 Depth=3
	setlt.u r6, r3, r6
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r6, zero, .LBB0_222
# %bb.220:                              # %vector.body250
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r11
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r6, zero, .LBB0_223
.LBB0_221:                              # %vector.body250
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r9
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r6, zero, .LBB0_205
	j .LBB0_224
.LBB0_222:                              # %vector.body250
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r14, 16
	andi r6, r6, 1
	add.s r6, r14, r6
	add.s r6, r6, r1
	and r8, r6, r26
	setlt.u r6, r3, r11
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r6, zero, .LBB0_221
.LBB0_223:                              # %vector.body250
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r1
	and r4, r4, r26
	setlt.u r6, r3, r9
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r6, zero, .LBB0_205
.LBB0_224:                              # %vector.body250
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r1
	and r27, r2, r26
	j .LBB0_205
.LBB0_225:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 339 7 is_stmt 1               # parallel-rne.mlir:339:7
	mfence { sm }
.LBB0_226:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -176(r30)                 # 4-byte Folded Reload
	addli r4, zero, 224
	zext_int2long r[4:5], r4
	slli r2, r2, 5
	zext_int2long r[8:9], r2
	.loc	1 367 7 is_stmt 1               # parallel-rne.mlir:367:7
	addli r2, zero, 255
	min.ul r[4:5], r[8:9], r[4:5]
	addli.d r[4:5], r[4:5], 32
	max.ul r[4:5], r[4:5], r[8:9]
	sub.sl r[4:5], r[4:5], r[8:9]
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r9
	min.ul r[4:5], r[4:5], r[12:13]
	.loc	1 367 7                         # parallel-rne.mlir:367:7
	store.d r[4:5], -176(r30)               # 8-byte Folded Spill
	csr_set csr5, r2
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	addli r2, zero, 3
	.loc	1 367 7                         # parallel-rne.mlir:367:7
	sync_core
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	bneq r9, r2, .LBB0_228
# %bb.227:                              # %.thread56.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	addli r2, zero, 12
	xsignal r2, 0
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	addli r2, zero, 13
	xwait r2, 0
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	addli r2, zero, 22
	xwait r2, 0
	j .LBB0_236
.LBB0_228:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -140(r30)                 # 4-byte Folded Reload
	lui r4, 25
	load.d r[10:11], -184(r30)              # 8-byte Folded Reload
	.loc	1 371 7 is_stmt 1               # parallel-rne.mlir:371:7
	addli r5, zero, 1
	slli r2, r2, 7
	add.s r4, r2, r4
	bneq r9, r5, .LBB0_232
# %bb.229:                              #   in Loop: Header=BB0_8 Depth=1
	load.d r[5:6], 16(r30)
	addli r15, zero, 16
	addli r14, zero, 4
	xwait r15, 0
	loadli.w r8,  -156(r30)                 # 4-byte Folded Reload
	add.ul r[5:6], r[5:6], r[10:11]
	blt.s r14, r8, .LBB0_231
# %bb.230:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 5
	addli r11, zero, 1
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	addli r10, zero, 2
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 3
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 6
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r8, 10
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
	dma_cfg zero, zero, r15, 10
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
	dma_cfg r4, zero, r10, 3
	addli r10, zero, 128
	dma_cfg r10, zero, r11, 4
	dma_cfg r10, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
.LBB0_231:                              # %.thread56.thread58
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r11, zero, 1
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	lock zero, r14
	lui r8, 25
	addli r10, zero, 64
	dma_cfg r11, r11, zero, 0
	ori r8, r8, 64
	dma_cfg zero, r6, zero, 2
	load.d r[16:17], -176(r30)              # 8-byte Folded Reload
	add.s r2, r2, r8
	dma_cfg r2, r5, r10, 3
	addli r6, zero, 5
	addli r8, r16, 31
	slli r5, r16, 1
	addli r16, zero, 128
	srli r2, r8, 5
	andi r5, r5, 62
	addli r8, zero, 2
	dma_cfg r16, r10, r2, 4
	dma_cfg r16, r10, r11, 5
	dma_cfg zero, zero, r5, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 3
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 6
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 17
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 7
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 8
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 9
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 11
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 12
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 13
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 14
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 15
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 18
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 19
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 20
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 21
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 22
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 23
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 24
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 25
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 26
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 27
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 28
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 29
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 30
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 31
	dma_cfg zero, zero, r14, 10
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r4, zero, r10, 3
	dma_cfg r16, zero, r2, 4
	dma_cfg r16, zero, r11, 5
	dma_cfg zero, zero, r5, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	xsignal r8, 0
	.loc	1 374 7 is_stmt 1               # parallel-rne.mlir:374:7
	j .LBB0_236
.LBB0_232:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 372 7                         # parallel-rne.mlir:372:7
	addli r2, zero, 5
	addli r6, zero, 2
	bneq r9, r2, .LBB0_236
# %bb.233:                              #   in Loop: Header=BB0_8 Depth=1
	addli r5, zero, 12
	addli r2, zero, 0
	addli r8, zero, 4096
	xwait r5, 0
	addli r5, zero, 15
	xwait r5, 0
	lock zero, r6
	lui r5, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r5, r5, zero, 0
	addli r5, zero, 31
	ew_cfg zero, r5, zero, 2
	addli r5, zero, 1
	ew_cfg r5, zero, zero, 3
.LBB0_234:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r7, r2
	addli r2, r2, 128
	dsmadd r5, r5, r4, 0
	bneq r2, r8, .LBB0_234
# %bb.235:                              # %.thread56
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 13
	unlock r6
	xsignal r2, 0
	addli r2, zero, 16
	xsignal r2, 0
.LBB0_236:                              # %.critedge6
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r2, 25
	.loc	1 377 7 is_stmt 1               # parallel-rne.mlir:377:7
	xfence
	loadli.w r4,  -60(r30)                  # 4-byte Folded Reload
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	mfence { lm, sm, gm }
	ori r2, r2, 640
	add.s r11, r4, r2
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	beq r9, zero, .LBB0_244
# %bb.237:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 408 7                         # parallel-rne.mlir:408:7
	addli r2, zero, 1
	beq r9, r2, .LBB0_275
.LBB0_238:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 436 7                         # parallel-rne.mlir:436:7
	loadli.w r2,  -152(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_306
.LBB0_239:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 464 7                         # parallel-rne.mlir:464:7
	addli r2, zero, 3
	beq r9, r2, .LBB0_337
.LBB0_240:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 492 7                         # parallel-rne.mlir:492:7
	loadli.w r2,  -148(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_368
.LBB0_241:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 520 7                         # parallel-rne.mlir:520:7
	addli r2, zero, 5
	beq r9, r2, .LBB0_399
.LBB0_242:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 548 7                         # parallel-rne.mlir:548:7
	addli r2, zero, 6
	beq r9, r2, .LBB0_430
.LBB0_243:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 576 7                         # parallel-rne.mlir:576:7
	loadli.w r2,  -144(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_461
	j .LBB0_492
.LBB0_244:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	xfence
	zext_int2long r[4:5], zero
	mfence { lm, sm, gm }
	j .LBB0_246
.LBB0_245:                              # %middle.block245
                                        #   in Loop: Header=BB0_246 Depth=2
	.loc	1 387 9                         # parallel-rne.mlir:387:9
	load.d r[4:5], -120(r30)                # 8-byte Folded Reload
	load.d r[8:9], -128(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_274
.LBB0_246:                              # %.preheader73
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_255 Depth 3
                                        #       Child Loop BB0_249 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	store.d r[4:5], -128(r30)               # 8-byte Folded Spill
	sll.d r[4:5], r[4:5], r2
	.loc	1 388 11 is_stmt 1              # parallel-rne.mlir:388:11
	bneq r11, r7, .LBB0_253
# %bb.247:                              # %scalar.ph239.preheader
                                        #   in Loop: Header=BB0_246 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_249
.LBB0_248:                              # %scalar.ph239
                                        #   in Loop: Header=BB0_249 Depth=3
	.loc	1 388 11                        # parallel-rne.mlir:388:11
	load.d r[14:15], -56(r30)               # 8-byte Folded Reload
	.loc	1 403 13 is_stmt 1              # parallel-rne.mlir:403:13
	add.s r2, r11, r2
	stores.w r6, 0(r2)
	.loc	1 388 11                        # parallel-rne.mlir:388:11
	setlt.ul r10, r[8:9], r[14:15]
	addli.d r[8:9], r[8:9], 1
	beq r10, zero, .LBB0_245
.LBB0_249:                              # %scalar.ph239
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_246 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	add.ul r[14:15], r[8:9], r[4:5]
	slli r2, r14, 2
	add.s r6, r7, r2
	loads.w r10, 0(r6)
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	and r14, r10, r28
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	setlt.u r6, r24, r14
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	bneq r6, zero, .LBB0_251
# %bb.250:                              # %scalar.ph239
                                        #   in Loop: Header=BB0_249 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 400 19 is_stmt 1              # parallel-rne.mlir:400:19
	setlt.u r14, r3, r14
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	bneq r14, zero, .LBB0_248
	j .LBB0_252
.LBB0_251:                              #   in Loop: Header=BB0_249 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r10, r23
	.loc	1 400 19 is_stmt 1              # parallel-rne.mlir:400:19
	setlt.u r14, r3, r14
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	bneq r14, zero, .LBB0_248
.LBB0_252:                              # %scalar.ph239
                                        #   in Loop: Header=BB0_249 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r1
	and r6, r6, r26
	j .LBB0_248
.LBB0_253:                              # %vector.body241.preheader
                                        #   in Loop: Header=BB0_246 Depth=2
	zext_int2long r[21:22], zero
	j .LBB0_255
.LBB0_254:                              # %vector.body241
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 388 11 is_stmt 1              # parallel-rne.mlir:388:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 403 13                        # parallel-rne.mlir:403:13
	add.s r6, r11, r6
	.loc	1 388 11                        # parallel-rne.mlir:388:11
	seteq.d r2, r[21:22], r[12:13]
	.loc	1 403 13                        # parallel-rne.mlir:403:13
	stores.w r25, 12(r6)
	stores.w r9, 8(r6)
	stores.w r18, 4(r6)
	stores.w r14, 0(r6)
	.loc	1 388 11                        # parallel-rne.mlir:388:11
	bneq r2, zero, .LBB0_245
.LBB0_255:                              # %vector.body241
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_246 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	add.ul r[8:9], r[21:22], r[4:5]
	slli r6, r8, 2
	add.s r14, r7, r6
	loads.w r2, 12(r14)
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	and r27, r2, r28
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	setlt.u r8, r24, r27
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	bneq r8, zero, .LBB0_257
# %bb.256:                              # %vector.body241
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r2, 0
	j .LBB0_258
.LBB0_257:                              #   in Loop: Header=BB0_255 Depth=3
	or r25, r2, r23
.LBB0_258:                              # %vector.body241
                                        #   in Loop: Header=BB0_255 Depth=3
	loads.w r8, 8(r14)
	and r15, r8, r28
	setlt.u r9, r24, r15
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	bneq r9, zero, .LBB0_260
# %bb.259:                              # %vector.body241
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
	j .LBB0_261
.LBB0_260:                              #   in Loop: Header=BB0_255 Depth=3
	or r9, r8, r23
.LBB0_261:                              # %vector.body241
                                        #   in Loop: Header=BB0_255 Depth=3
	loads.w r10, 4(r14)
	and r19, r10, r28
	setlt.u r16, r24, r19
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	bneq r16, zero, .LBB0_263
# %bb.262:                              # %vector.body241
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r10, 0
	j .LBB0_264
.LBB0_263:                              #   in Loop: Header=BB0_255 Depth=3
	or r18, r10, r23
.LBB0_264:                              # %vector.body241
                                        #   in Loop: Header=BB0_255 Depth=3
	loads.w r20, 0(r14)
	and r16, r20, r28
	setlt.u r14, r24, r16
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	bneq r14, zero, .LBB0_266
# %bb.265:                              # %vector.body241
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
	.loc	1 400 19 is_stmt 1              # parallel-rne.mlir:400:19
	setlt.u r16, r3, r16
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	beq r16, zero, .LBB0_267
	j .LBB0_268
.LBB0_266:                              #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r20, r23
	.loc	1 400 19 is_stmt 1              # parallel-rne.mlir:400:19
	setlt.u r16, r3, r16
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	bneq r16, zero, .LBB0_268
.LBB0_267:                              # %vector.body241
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r20, 16
	andi r14, r14, 1
	add.s r14, r20, r14
	add.s r14, r14, r1
	and r14, r14, r26
.LBB0_268:                              # %vector.body241
                                        #   in Loop: Header=BB0_255 Depth=3
	setlt.u r16, r3, r19
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	beq r16, zero, .LBB0_271
# %bb.269:                              # %vector.body241
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r15
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	beq r10, zero, .LBB0_272
.LBB0_270:                              # %vector.body241
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r27
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	bneq r8, zero, .LBB0_254
	j .LBB0_273
.LBB0_271:                              # %vector.body241
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r10, 16
	andi r16, r16, 1
	add.s r10, r10, r16
	add.s r10, r10, r1
	and r18, r10, r26
	setlt.u r10, r3, r15
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	bneq r10, zero, .LBB0_270
.LBB0_272:                              # %vector.body241
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r1
	and r9, r8, r26
	setlt.u r8, r3, r27
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	bneq r8, zero, .LBB0_254
.LBB0_273:                              # %vector.body241
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r1
	and r25, r2, r26
	j .LBB0_254
.LBB0_274:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r9
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	mfence { sm }
	.loc	1 408 7                         # parallel-rne.mlir:408:7
	addli r2, zero, 1
	bneq r9, r2, .LBB0_238
.LBB0_275:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 4
	.loc	1 408 7                         # parallel-rne.mlir:408:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_277
.LBB0_276:                              # %middle.block236
                                        #   in Loop: Header=BB0_277 Depth=2
	.loc	1 415 9 is_stmt 1               # parallel-rne.mlir:415:9
	load.d r[4:5], -112(r30)                # 8-byte Folded Reload
	load.d r[8:9], -128(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_305
.LBB0_277:                              # %.preheader72
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_286 Depth 3
                                        #       Child Loop BB0_280 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	store.d r[4:5], -128(r30)               # 8-byte Folded Spill
	sll.d r[4:5], r[4:5], r2
	.loc	1 416 11 is_stmt 1              # parallel-rne.mlir:416:11
	bneq r11, r7, .LBB0_284
# %bb.278:                              # %scalar.ph230.preheader
                                        #   in Loop: Header=BB0_277 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_280
.LBB0_279:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_280 Depth=3
	.loc	1 416 11                        # parallel-rne.mlir:416:11
	load.d r[14:15], -56(r30)               # 8-byte Folded Reload
	.loc	1 431 13 is_stmt 1              # parallel-rne.mlir:431:13
	add.s r2, r11, r2
	stores.w r6, 0(r2)
	.loc	1 416 11                        # parallel-rne.mlir:416:11
	setlt.ul r10, r[8:9], r[14:15]
	addli.d r[8:9], r[8:9], 1
	beq r10, zero, .LBB0_276
.LBB0_280:                              # %scalar.ph230
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_277 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	add.ul r[14:15], r[8:9], r[4:5]
	slli r2, r14, 2
	add.s r6, r7, r2
	loads.w r10, 0(r6)
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	and r14, r10, r28
	.loc	1 421 19                        # parallel-rne.mlir:421:19
	setlt.u r6, r24, r14
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	bneq r6, zero, .LBB0_282
# %bb.281:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_280 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 428 19 is_stmt 1              # parallel-rne.mlir:428:19
	setlt.u r14, r3, r14
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r14, zero, .LBB0_279
	j .LBB0_283
.LBB0_282:                              #   in Loop: Header=BB0_280 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r10, r23
	.loc	1 428 19 is_stmt 1              # parallel-rne.mlir:428:19
	setlt.u r14, r3, r14
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r14, zero, .LBB0_279
.LBB0_283:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_280 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r1
	and r6, r6, r26
	j .LBB0_279
.LBB0_284:                              # %vector.body232.preheader
                                        #   in Loop: Header=BB0_277 Depth=2
	zext_int2long r[21:22], zero
	j .LBB0_286
.LBB0_285:                              # %vector.body232
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 416 11 is_stmt 1              # parallel-rne.mlir:416:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 431 13                        # parallel-rne.mlir:431:13
	add.s r6, r11, r6
	.loc	1 416 11                        # parallel-rne.mlir:416:11
	seteq.d r2, r[21:22], r[12:13]
	.loc	1 431 13                        # parallel-rne.mlir:431:13
	stores.w r25, 12(r6)
	stores.w r9, 8(r6)
	stores.w r18, 4(r6)
	stores.w r14, 0(r6)
	.loc	1 416 11                        # parallel-rne.mlir:416:11
	bneq r2, zero, .LBB0_276
.LBB0_286:                              # %vector.body232
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_277 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	add.ul r[8:9], r[21:22], r[4:5]
	slli r6, r8, 2
	add.s r14, r7, r6
	loads.w r2, 12(r14)
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	and r27, r2, r28
	.loc	1 421 19                        # parallel-rne.mlir:421:19
	setlt.u r8, r24, r27
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	bneq r8, zero, .LBB0_288
# %bb.287:                              # %vector.body232
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r2, 0
	j .LBB0_289
.LBB0_288:                              #   in Loop: Header=BB0_286 Depth=3
	or r25, r2, r23
.LBB0_289:                              # %vector.body232
                                        #   in Loop: Header=BB0_286 Depth=3
	loads.w r8, 8(r14)
	and r15, r8, r28
	setlt.u r9, r24, r15
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	bneq r9, zero, .LBB0_291
# %bb.290:                              # %vector.body232
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
	j .LBB0_292
.LBB0_291:                              #   in Loop: Header=BB0_286 Depth=3
	or r9, r8, r23
.LBB0_292:                              # %vector.body232
                                        #   in Loop: Header=BB0_286 Depth=3
	loads.w r10, 4(r14)
	and r19, r10, r28
	setlt.u r16, r24, r19
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	bneq r16, zero, .LBB0_294
# %bb.293:                              # %vector.body232
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r10, 0
	j .LBB0_295
.LBB0_294:                              #   in Loop: Header=BB0_286 Depth=3
	or r18, r10, r23
.LBB0_295:                              # %vector.body232
                                        #   in Loop: Header=BB0_286 Depth=3
	loads.w r20, 0(r14)
	and r16, r20, r28
	setlt.u r14, r24, r16
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	bneq r14, zero, .LBB0_297
# %bb.296:                              # %vector.body232
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
	.loc	1 428 19 is_stmt 1              # parallel-rne.mlir:428:19
	setlt.u r16, r3, r16
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	beq r16, zero, .LBB0_298
	j .LBB0_299
.LBB0_297:                              #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r20, r23
	.loc	1 428 19 is_stmt 1              # parallel-rne.mlir:428:19
	setlt.u r16, r3, r16
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r16, zero, .LBB0_299
.LBB0_298:                              # %vector.body232
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r20, 16
	andi r14, r14, 1
	add.s r14, r20, r14
	add.s r14, r14, r1
	and r14, r14, r26
.LBB0_299:                              # %vector.body232
                                        #   in Loop: Header=BB0_286 Depth=3
	setlt.u r16, r3, r19
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	beq r16, zero, .LBB0_302
# %bb.300:                              # %vector.body232
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r15
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	beq r10, zero, .LBB0_303
.LBB0_301:                              # %vector.body232
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r27
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r8, zero, .LBB0_285
	j .LBB0_304
.LBB0_302:                              # %vector.body232
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r10, 16
	andi r16, r16, 1
	add.s r10, r10, r16
	add.s r10, r10, r1
	and r18, r10, r26
	setlt.u r10, r3, r15
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r10, zero, .LBB0_301
.LBB0_303:                              # %vector.body232
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r1
	and r9, r8, r26
	setlt.u r8, r3, r27
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r8, zero, .LBB0_285
.LBB0_304:                              # %vector.body232
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r1
	and r25, r2, r26
	j .LBB0_285
.LBB0_305:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r9
	.loc	1 408 7                         # parallel-rne.mlir:408:7
	mfence { sm }
	.loc	1 436 7                         # parallel-rne.mlir:436:7
	loadli.w r2,  -152(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_239
.LBB0_306:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 436 7                         # parallel-rne.mlir:436:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_308
.LBB0_307:                              # %middle.block227
                                        #   in Loop: Header=BB0_308 Depth=2
	.loc	1 443 9 is_stmt 1               # parallel-rne.mlir:443:9
	load.d r[4:5], -104(r30)                # 8-byte Folded Reload
	load.d r[8:9], -128(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_336
.LBB0_308:                              # %.preheader71
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_317 Depth 3
                                        #       Child Loop BB0_311 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	store.d r[4:5], -128(r30)               # 8-byte Folded Spill
	sll.d r[4:5], r[4:5], r2
	.loc	1 444 11 is_stmt 1              # parallel-rne.mlir:444:11
	bneq r11, r7, .LBB0_315
# %bb.309:                              # %scalar.ph221.preheader
                                        #   in Loop: Header=BB0_308 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_311
.LBB0_310:                              # %scalar.ph221
                                        #   in Loop: Header=BB0_311 Depth=3
	.loc	1 444 11                        # parallel-rne.mlir:444:11
	load.d r[14:15], -56(r30)               # 8-byte Folded Reload
	.loc	1 459 13 is_stmt 1              # parallel-rne.mlir:459:13
	add.s r2, r11, r2
	stores.w r6, 0(r2)
	.loc	1 444 11                        # parallel-rne.mlir:444:11
	setlt.ul r10, r[8:9], r[14:15]
	addli.d r[8:9], r[8:9], 1
	beq r10, zero, .LBB0_307
.LBB0_311:                              # %scalar.ph221
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_308 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	add.ul r[14:15], r[8:9], r[4:5]
	slli r2, r14, 2
	add.s r6, r7, r2
	loads.w r10, 0(r6)
	.loc	1 447 19                        # parallel-rne.mlir:447:19
	and r14, r10, r28
	.loc	1 449 19                        # parallel-rne.mlir:449:19
	setlt.u r6, r24, r14
	.loc	1 450 19                        # parallel-rne.mlir:450:19
	bneq r6, zero, .LBB0_313
# %bb.312:                              # %scalar.ph221
                                        #   in Loop: Header=BB0_311 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 456 19 is_stmt 1              # parallel-rne.mlir:456:19
	setlt.u r14, r3, r14
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	bneq r14, zero, .LBB0_310
	j .LBB0_314
.LBB0_313:                              #   in Loop: Header=BB0_311 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r10, r23
	.loc	1 456 19 is_stmt 1              # parallel-rne.mlir:456:19
	setlt.u r14, r3, r14
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	bneq r14, zero, .LBB0_310
.LBB0_314:                              # %scalar.ph221
                                        #   in Loop: Header=BB0_311 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r1
	and r6, r6, r26
	j .LBB0_310
.LBB0_315:                              # %vector.body223.preheader
                                        #   in Loop: Header=BB0_308 Depth=2
	zext_int2long r[21:22], zero
	j .LBB0_317
.LBB0_316:                              # %vector.body223
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 444 11 is_stmt 1              # parallel-rne.mlir:444:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 459 13                        # parallel-rne.mlir:459:13
	add.s r6, r11, r6
	.loc	1 444 11                        # parallel-rne.mlir:444:11
	seteq.d r2, r[21:22], r[12:13]
	.loc	1 459 13                        # parallel-rne.mlir:459:13
	stores.w r25, 12(r6)
	stores.w r9, 8(r6)
	stores.w r18, 4(r6)
	stores.w r14, 0(r6)
	.loc	1 444 11                        # parallel-rne.mlir:444:11
	bneq r2, zero, .LBB0_307
.LBB0_317:                              # %vector.body223
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_308 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	add.ul r[8:9], r[21:22], r[4:5]
	slli r6, r8, 2
	add.s r14, r7, r6
	loads.w r2, 12(r14)
	.loc	1 447 19                        # parallel-rne.mlir:447:19
	and r27, r2, r28
	.loc	1 449 19                        # parallel-rne.mlir:449:19
	setlt.u r8, r24, r27
	.loc	1 450 19                        # parallel-rne.mlir:450:19
	bneq r8, zero, .LBB0_319
# %bb.318:                              # %vector.body223
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r2, 0
	j .LBB0_320
.LBB0_319:                              #   in Loop: Header=BB0_317 Depth=3
	or r25, r2, r23
.LBB0_320:                              # %vector.body223
                                        #   in Loop: Header=BB0_317 Depth=3
	loads.w r8, 8(r14)
	and r15, r8, r28
	setlt.u r9, r24, r15
	.loc	1 450 19                        # parallel-rne.mlir:450:19
	bneq r9, zero, .LBB0_322
# %bb.321:                              # %vector.body223
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
	j .LBB0_323
.LBB0_322:                              #   in Loop: Header=BB0_317 Depth=3
	or r9, r8, r23
.LBB0_323:                              # %vector.body223
                                        #   in Loop: Header=BB0_317 Depth=3
	loads.w r10, 4(r14)
	and r19, r10, r28
	setlt.u r16, r24, r19
	.loc	1 450 19                        # parallel-rne.mlir:450:19
	bneq r16, zero, .LBB0_325
# %bb.324:                              # %vector.body223
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r10, 0
	j .LBB0_326
.LBB0_325:                              #   in Loop: Header=BB0_317 Depth=3
	or r18, r10, r23
.LBB0_326:                              # %vector.body223
                                        #   in Loop: Header=BB0_317 Depth=3
	loads.w r20, 0(r14)
	and r16, r20, r28
	setlt.u r14, r24, r16
	.loc	1 450 19                        # parallel-rne.mlir:450:19
	bneq r14, zero, .LBB0_328
# %bb.327:                              # %vector.body223
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
	.loc	1 456 19 is_stmt 1              # parallel-rne.mlir:456:19
	setlt.u r16, r3, r16
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	beq r16, zero, .LBB0_329
	j .LBB0_330
.LBB0_328:                              #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r20, r23
	.loc	1 456 19 is_stmt 1              # parallel-rne.mlir:456:19
	setlt.u r16, r3, r16
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	bneq r16, zero, .LBB0_330
.LBB0_329:                              # %vector.body223
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r20, 16
	andi r14, r14, 1
	add.s r14, r20, r14
	add.s r14, r14, r1
	and r14, r14, r26
.LBB0_330:                              # %vector.body223
                                        #   in Loop: Header=BB0_317 Depth=3
	setlt.u r16, r3, r19
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	beq r16, zero, .LBB0_333
# %bb.331:                              # %vector.body223
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r15
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	beq r10, zero, .LBB0_334
.LBB0_332:                              # %vector.body223
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r27
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	bneq r8, zero, .LBB0_316
	j .LBB0_335
.LBB0_333:                              # %vector.body223
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r10, 16
	andi r16, r16, 1
	add.s r10, r10, r16
	add.s r10, r10, r1
	and r18, r10, r26
	setlt.u r10, r3, r15
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	bneq r10, zero, .LBB0_332
.LBB0_334:                              # %vector.body223
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r1
	and r9, r8, r26
	setlt.u r8, r3, r27
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	bneq r8, zero, .LBB0_316
.LBB0_335:                              # %vector.body223
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r1
	and r25, r2, r26
	j .LBB0_316
.LBB0_336:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r9
	.loc	1 436 7                         # parallel-rne.mlir:436:7
	mfence { sm }
	.loc	1 464 7                         # parallel-rne.mlir:464:7
	addli r2, zero, 3
	bneq r9, r2, .LBB0_240
.LBB0_337:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 12
	.loc	1 464 7                         # parallel-rne.mlir:464:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_339
.LBB0_338:                              # %middle.block218
                                        #   in Loop: Header=BB0_339 Depth=2
	.loc	1 471 9 is_stmt 1               # parallel-rne.mlir:471:9
	load.d r[4:5], -96(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -128(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_367
.LBB0_339:                              # %.preheader70
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_348 Depth 3
                                        #       Child Loop BB0_342 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	store.d r[4:5], -128(r30)               # 8-byte Folded Spill
	sll.d r[4:5], r[4:5], r2
	.loc	1 472 11 is_stmt 1              # parallel-rne.mlir:472:11
	bneq r11, r7, .LBB0_346
# %bb.340:                              # %scalar.ph212.preheader
                                        #   in Loop: Header=BB0_339 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_342
.LBB0_341:                              # %scalar.ph212
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 472 11                        # parallel-rne.mlir:472:11
	load.d r[14:15], -56(r30)               # 8-byte Folded Reload
	.loc	1 487 13 is_stmt 1              # parallel-rne.mlir:487:13
	add.s r2, r11, r2
	stores.w r6, 0(r2)
	.loc	1 472 11                        # parallel-rne.mlir:472:11
	setlt.ul r10, r[8:9], r[14:15]
	addli.d r[8:9], r[8:9], 1
	beq r10, zero, .LBB0_338
.LBB0_342:                              # %scalar.ph212
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_339 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 473 19                        # parallel-rne.mlir:473:19
	add.ul r[14:15], r[8:9], r[4:5]
	slli r2, r14, 2
	add.s r6, r7, r2
	loads.w r10, 0(r6)
	.loc	1 475 19                        # parallel-rne.mlir:475:19
	and r14, r10, r28
	.loc	1 477 19                        # parallel-rne.mlir:477:19
	setlt.u r6, r24, r14
	.loc	1 478 19                        # parallel-rne.mlir:478:19
	bneq r6, zero, .LBB0_344
# %bb.343:                              # %scalar.ph212
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 484 19 is_stmt 1              # parallel-rne.mlir:484:19
	setlt.u r14, r3, r14
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	bneq r14, zero, .LBB0_341
	j .LBB0_345
.LBB0_344:                              #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r10, r23
	.loc	1 484 19 is_stmt 1              # parallel-rne.mlir:484:19
	setlt.u r14, r3, r14
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	bneq r14, zero, .LBB0_341
.LBB0_345:                              # %scalar.ph212
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r1
	and r6, r6, r26
	j .LBB0_341
.LBB0_346:                              # %vector.body214.preheader
                                        #   in Loop: Header=BB0_339 Depth=2
	zext_int2long r[21:22], zero
	j .LBB0_348
.LBB0_347:                              # %vector.body214
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 472 11 is_stmt 1              # parallel-rne.mlir:472:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 487 13                        # parallel-rne.mlir:487:13
	add.s r6, r11, r6
	.loc	1 472 11                        # parallel-rne.mlir:472:11
	seteq.d r2, r[21:22], r[12:13]
	.loc	1 487 13                        # parallel-rne.mlir:487:13
	stores.w r25, 12(r6)
	stores.w r9, 8(r6)
	stores.w r18, 4(r6)
	stores.w r14, 0(r6)
	.loc	1 472 11                        # parallel-rne.mlir:472:11
	bneq r2, zero, .LBB0_338
.LBB0_348:                              # %vector.body214
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_339 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 473 19                        # parallel-rne.mlir:473:19
	add.ul r[8:9], r[21:22], r[4:5]
	slli r6, r8, 2
	add.s r14, r7, r6
	loads.w r2, 12(r14)
	.loc	1 475 19                        # parallel-rne.mlir:475:19
	and r27, r2, r28
	.loc	1 477 19                        # parallel-rne.mlir:477:19
	setlt.u r8, r24, r27
	.loc	1 478 19                        # parallel-rne.mlir:478:19
	bneq r8, zero, .LBB0_350
# %bb.349:                              # %vector.body214
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r2, 0
	j .LBB0_351
.LBB0_350:                              #   in Loop: Header=BB0_348 Depth=3
	or r25, r2, r23
.LBB0_351:                              # %vector.body214
                                        #   in Loop: Header=BB0_348 Depth=3
	loads.w r8, 8(r14)
	and r15, r8, r28
	setlt.u r9, r24, r15
	.loc	1 478 19                        # parallel-rne.mlir:478:19
	bneq r9, zero, .LBB0_353
# %bb.352:                              # %vector.body214
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
	j .LBB0_354
.LBB0_353:                              #   in Loop: Header=BB0_348 Depth=3
	or r9, r8, r23
.LBB0_354:                              # %vector.body214
                                        #   in Loop: Header=BB0_348 Depth=3
	loads.w r10, 4(r14)
	and r19, r10, r28
	setlt.u r16, r24, r19
	.loc	1 478 19                        # parallel-rne.mlir:478:19
	bneq r16, zero, .LBB0_356
# %bb.355:                              # %vector.body214
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r10, 0
	j .LBB0_357
.LBB0_356:                              #   in Loop: Header=BB0_348 Depth=3
	or r18, r10, r23
.LBB0_357:                              # %vector.body214
                                        #   in Loop: Header=BB0_348 Depth=3
	loads.w r20, 0(r14)
	and r16, r20, r28
	setlt.u r14, r24, r16
	.loc	1 478 19                        # parallel-rne.mlir:478:19
	bneq r14, zero, .LBB0_359
# %bb.358:                              # %vector.body214
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
	.loc	1 484 19 is_stmt 1              # parallel-rne.mlir:484:19
	setlt.u r16, r3, r16
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	beq r16, zero, .LBB0_360
	j .LBB0_361
.LBB0_359:                              #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r20, r23
	.loc	1 484 19 is_stmt 1              # parallel-rne.mlir:484:19
	setlt.u r16, r3, r16
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	bneq r16, zero, .LBB0_361
.LBB0_360:                              # %vector.body214
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r20, 16
	andi r14, r14, 1
	add.s r14, r20, r14
	add.s r14, r14, r1
	and r14, r14, r26
.LBB0_361:                              # %vector.body214
                                        #   in Loop: Header=BB0_348 Depth=3
	setlt.u r16, r3, r19
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	beq r16, zero, .LBB0_364
# %bb.362:                              # %vector.body214
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r15
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	beq r10, zero, .LBB0_365
.LBB0_363:                              # %vector.body214
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r27
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	bneq r8, zero, .LBB0_347
	j .LBB0_366
.LBB0_364:                              # %vector.body214
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r10, 16
	andi r16, r16, 1
	add.s r10, r10, r16
	add.s r10, r10, r1
	and r18, r10, r26
	setlt.u r10, r3, r15
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	bneq r10, zero, .LBB0_363
.LBB0_365:                              # %vector.body214
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r1
	and r9, r8, r26
	setlt.u r8, r3, r27
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	bneq r8, zero, .LBB0_347
.LBB0_366:                              # %vector.body214
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r1
	and r25, r2, r26
	j .LBB0_347
.LBB0_367:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r9
	.loc	1 464 7                         # parallel-rne.mlir:464:7
	mfence { sm }
	.loc	1 492 7                         # parallel-rne.mlir:492:7
	loadli.w r2,  -148(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_241
.LBB0_368:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 492 7                         # parallel-rne.mlir:492:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_370
.LBB0_369:                              # %middle.block209
                                        #   in Loop: Header=BB0_370 Depth=2
	.loc	1 499 9 is_stmt 1               # parallel-rne.mlir:499:9
	load.d r[4:5], -88(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -128(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_398
.LBB0_370:                              # %.preheader69
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_379 Depth 3
                                        #       Child Loop BB0_373 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	store.d r[4:5], -128(r30)               # 8-byte Folded Spill
	sll.d r[4:5], r[4:5], r2
	.loc	1 500 11 is_stmt 1              # parallel-rne.mlir:500:11
	bneq r11, r7, .LBB0_377
# %bb.371:                              # %scalar.ph203.preheader
                                        #   in Loop: Header=BB0_370 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_373
.LBB0_372:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_373 Depth=3
	.loc	1 500 11                        # parallel-rne.mlir:500:11
	load.d r[14:15], -56(r30)               # 8-byte Folded Reload
	.loc	1 515 13 is_stmt 1              # parallel-rne.mlir:515:13
	add.s r2, r11, r2
	stores.w r6, 0(r2)
	.loc	1 500 11                        # parallel-rne.mlir:500:11
	setlt.ul r10, r[8:9], r[14:15]
	addli.d r[8:9], r[8:9], 1
	beq r10, zero, .LBB0_369
.LBB0_373:                              # %scalar.ph203
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_370 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 501 19                        # parallel-rne.mlir:501:19
	add.ul r[14:15], r[8:9], r[4:5]
	slli r2, r14, 2
	add.s r6, r7, r2
	loads.w r10, 0(r6)
	.loc	1 503 19                        # parallel-rne.mlir:503:19
	and r14, r10, r28
	.loc	1 505 19                        # parallel-rne.mlir:505:19
	setlt.u r6, r24, r14
	.loc	1 506 19                        # parallel-rne.mlir:506:19
	bneq r6, zero, .LBB0_375
# %bb.374:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_373 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 512 19 is_stmt 1              # parallel-rne.mlir:512:19
	setlt.u r14, r3, r14
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	bneq r14, zero, .LBB0_372
	j .LBB0_376
.LBB0_375:                              #   in Loop: Header=BB0_373 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r10, r23
	.loc	1 512 19 is_stmt 1              # parallel-rne.mlir:512:19
	setlt.u r14, r3, r14
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	bneq r14, zero, .LBB0_372
.LBB0_376:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_373 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r1
	and r6, r6, r26
	j .LBB0_372
.LBB0_377:                              # %vector.body205.preheader
                                        #   in Loop: Header=BB0_370 Depth=2
	zext_int2long r[21:22], zero
	j .LBB0_379
.LBB0_378:                              # %vector.body205
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 500 11 is_stmt 1              # parallel-rne.mlir:500:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 515 13                        # parallel-rne.mlir:515:13
	add.s r6, r11, r6
	.loc	1 500 11                        # parallel-rne.mlir:500:11
	seteq.d r2, r[21:22], r[12:13]
	.loc	1 515 13                        # parallel-rne.mlir:515:13
	stores.w r25, 12(r6)
	stores.w r9, 8(r6)
	stores.w r18, 4(r6)
	stores.w r14, 0(r6)
	.loc	1 500 11                        # parallel-rne.mlir:500:11
	bneq r2, zero, .LBB0_369
.LBB0_379:                              # %vector.body205
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_370 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 501 19                        # parallel-rne.mlir:501:19
	add.ul r[8:9], r[21:22], r[4:5]
	slli r6, r8, 2
	add.s r14, r7, r6
	loads.w r2, 12(r14)
	.loc	1 503 19                        # parallel-rne.mlir:503:19
	and r27, r2, r28
	.loc	1 505 19                        # parallel-rne.mlir:505:19
	setlt.u r8, r24, r27
	.loc	1 506 19                        # parallel-rne.mlir:506:19
	bneq r8, zero, .LBB0_381
# %bb.380:                              # %vector.body205
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r2, 0
	j .LBB0_382
.LBB0_381:                              #   in Loop: Header=BB0_379 Depth=3
	or r25, r2, r23
.LBB0_382:                              # %vector.body205
                                        #   in Loop: Header=BB0_379 Depth=3
	loads.w r8, 8(r14)
	and r15, r8, r28
	setlt.u r9, r24, r15
	.loc	1 506 19                        # parallel-rne.mlir:506:19
	bneq r9, zero, .LBB0_384
# %bb.383:                              # %vector.body205
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
	j .LBB0_385
.LBB0_384:                              #   in Loop: Header=BB0_379 Depth=3
	or r9, r8, r23
.LBB0_385:                              # %vector.body205
                                        #   in Loop: Header=BB0_379 Depth=3
	loads.w r10, 4(r14)
	and r19, r10, r28
	setlt.u r16, r24, r19
	.loc	1 506 19                        # parallel-rne.mlir:506:19
	bneq r16, zero, .LBB0_387
# %bb.386:                              # %vector.body205
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r10, 0
	j .LBB0_388
.LBB0_387:                              #   in Loop: Header=BB0_379 Depth=3
	or r18, r10, r23
.LBB0_388:                              # %vector.body205
                                        #   in Loop: Header=BB0_379 Depth=3
	loads.w r20, 0(r14)
	and r16, r20, r28
	setlt.u r14, r24, r16
	.loc	1 506 19                        # parallel-rne.mlir:506:19
	bneq r14, zero, .LBB0_390
# %bb.389:                              # %vector.body205
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
	.loc	1 512 19 is_stmt 1              # parallel-rne.mlir:512:19
	setlt.u r16, r3, r16
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	beq r16, zero, .LBB0_391
	j .LBB0_392
.LBB0_390:                              #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r20, r23
	.loc	1 512 19 is_stmt 1              # parallel-rne.mlir:512:19
	setlt.u r16, r3, r16
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	bneq r16, zero, .LBB0_392
.LBB0_391:                              # %vector.body205
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r20, 16
	andi r14, r14, 1
	add.s r14, r20, r14
	add.s r14, r14, r1
	and r14, r14, r26
.LBB0_392:                              # %vector.body205
                                        #   in Loop: Header=BB0_379 Depth=3
	setlt.u r16, r3, r19
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	beq r16, zero, .LBB0_395
# %bb.393:                              # %vector.body205
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r15
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	beq r10, zero, .LBB0_396
.LBB0_394:                              # %vector.body205
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r27
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	bneq r8, zero, .LBB0_378
	j .LBB0_397
.LBB0_395:                              # %vector.body205
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r10, 16
	andi r16, r16, 1
	add.s r10, r10, r16
	add.s r10, r10, r1
	and r18, r10, r26
	setlt.u r10, r3, r15
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	bneq r10, zero, .LBB0_394
.LBB0_396:                              # %vector.body205
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r1
	and r9, r8, r26
	setlt.u r8, r3, r27
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	bneq r8, zero, .LBB0_378
.LBB0_397:                              # %vector.body205
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r1
	and r25, r2, r26
	j .LBB0_378
.LBB0_398:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r9
	.loc	1 492 7                         # parallel-rne.mlir:492:7
	mfence { sm }
	.loc	1 520 7                         # parallel-rne.mlir:520:7
	addli r2, zero, 5
	bneq r9, r2, .LBB0_242
.LBB0_399:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 520 7                         # parallel-rne.mlir:520:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_401
.LBB0_400:                              # %middle.block200
                                        #   in Loop: Header=BB0_401 Depth=2
	.loc	1 527 9 is_stmt 1               # parallel-rne.mlir:527:9
	load.d r[4:5], -80(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -128(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_429
.LBB0_401:                              # %.preheader68
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_410 Depth 3
                                        #       Child Loop BB0_404 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	store.d r[4:5], -128(r30)               # 8-byte Folded Spill
	sll.d r[4:5], r[4:5], r2
	.loc	1 528 11 is_stmt 1              # parallel-rne.mlir:528:11
	bneq r11, r7, .LBB0_408
# %bb.402:                              # %scalar.ph194.preheader
                                        #   in Loop: Header=BB0_401 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_404
.LBB0_403:                              # %scalar.ph194
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 528 11                        # parallel-rne.mlir:528:11
	load.d r[14:15], -56(r30)               # 8-byte Folded Reload
	.loc	1 543 13 is_stmt 1              # parallel-rne.mlir:543:13
	add.s r2, r11, r2
	stores.w r6, 0(r2)
	.loc	1 528 11                        # parallel-rne.mlir:528:11
	setlt.ul r10, r[8:9], r[14:15]
	addli.d r[8:9], r[8:9], 1
	beq r10, zero, .LBB0_400
.LBB0_404:                              # %scalar.ph194
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_401 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 529 19                        # parallel-rne.mlir:529:19
	add.ul r[14:15], r[8:9], r[4:5]
	slli r2, r14, 2
	add.s r6, r7, r2
	loads.w r10, 0(r6)
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	and r14, r10, r28
	.loc	1 533 19                        # parallel-rne.mlir:533:19
	setlt.u r6, r24, r14
	.loc	1 534 19                        # parallel-rne.mlir:534:19
	bneq r6, zero, .LBB0_406
# %bb.405:                              # %scalar.ph194
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 540 19 is_stmt 1              # parallel-rne.mlir:540:19
	setlt.u r14, r3, r14
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	bneq r14, zero, .LBB0_403
	j .LBB0_407
.LBB0_406:                              #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r10, r23
	.loc	1 540 19 is_stmt 1              # parallel-rne.mlir:540:19
	setlt.u r14, r3, r14
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	bneq r14, zero, .LBB0_403
.LBB0_407:                              # %scalar.ph194
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r1
	and r6, r6, r26
	j .LBB0_403
.LBB0_408:                              # %vector.body196.preheader
                                        #   in Loop: Header=BB0_401 Depth=2
	zext_int2long r[21:22], zero
	j .LBB0_410
.LBB0_409:                              # %vector.body196
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 528 11 is_stmt 1              # parallel-rne.mlir:528:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 543 13                        # parallel-rne.mlir:543:13
	add.s r6, r11, r6
	.loc	1 528 11                        # parallel-rne.mlir:528:11
	seteq.d r2, r[21:22], r[12:13]
	.loc	1 543 13                        # parallel-rne.mlir:543:13
	stores.w r25, 12(r6)
	stores.w r9, 8(r6)
	stores.w r18, 4(r6)
	stores.w r14, 0(r6)
	.loc	1 528 11                        # parallel-rne.mlir:528:11
	bneq r2, zero, .LBB0_400
.LBB0_410:                              # %vector.body196
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_401 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 529 19                        # parallel-rne.mlir:529:19
	add.ul r[8:9], r[21:22], r[4:5]
	slli r6, r8, 2
	add.s r14, r7, r6
	loads.w r2, 12(r14)
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	and r27, r2, r28
	.loc	1 533 19                        # parallel-rne.mlir:533:19
	setlt.u r8, r24, r27
	.loc	1 534 19                        # parallel-rne.mlir:534:19
	bneq r8, zero, .LBB0_412
# %bb.411:                              # %vector.body196
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r2, 0
	j .LBB0_413
.LBB0_412:                              #   in Loop: Header=BB0_410 Depth=3
	or r25, r2, r23
.LBB0_413:                              # %vector.body196
                                        #   in Loop: Header=BB0_410 Depth=3
	loads.w r8, 8(r14)
	and r15, r8, r28
	setlt.u r9, r24, r15
	.loc	1 534 19                        # parallel-rne.mlir:534:19
	bneq r9, zero, .LBB0_415
# %bb.414:                              # %vector.body196
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
	j .LBB0_416
.LBB0_415:                              #   in Loop: Header=BB0_410 Depth=3
	or r9, r8, r23
.LBB0_416:                              # %vector.body196
                                        #   in Loop: Header=BB0_410 Depth=3
	loads.w r10, 4(r14)
	and r19, r10, r28
	setlt.u r16, r24, r19
	.loc	1 534 19                        # parallel-rne.mlir:534:19
	bneq r16, zero, .LBB0_418
# %bb.417:                              # %vector.body196
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r10, 0
	j .LBB0_419
.LBB0_418:                              #   in Loop: Header=BB0_410 Depth=3
	or r18, r10, r23
.LBB0_419:                              # %vector.body196
                                        #   in Loop: Header=BB0_410 Depth=3
	loads.w r20, 0(r14)
	and r16, r20, r28
	setlt.u r14, r24, r16
	.loc	1 534 19                        # parallel-rne.mlir:534:19
	bneq r14, zero, .LBB0_421
# %bb.420:                              # %vector.body196
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
	.loc	1 540 19 is_stmt 1              # parallel-rne.mlir:540:19
	setlt.u r16, r3, r16
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	beq r16, zero, .LBB0_422
	j .LBB0_423
.LBB0_421:                              #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r20, r23
	.loc	1 540 19 is_stmt 1              # parallel-rne.mlir:540:19
	setlt.u r16, r3, r16
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	bneq r16, zero, .LBB0_423
.LBB0_422:                              # %vector.body196
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r20, 16
	andi r14, r14, 1
	add.s r14, r20, r14
	add.s r14, r14, r1
	and r14, r14, r26
.LBB0_423:                              # %vector.body196
                                        #   in Loop: Header=BB0_410 Depth=3
	setlt.u r16, r3, r19
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	beq r16, zero, .LBB0_426
# %bb.424:                              # %vector.body196
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r15
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	beq r10, zero, .LBB0_427
.LBB0_425:                              # %vector.body196
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r27
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	bneq r8, zero, .LBB0_409
	j .LBB0_428
.LBB0_426:                              # %vector.body196
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r10, 16
	andi r16, r16, 1
	add.s r10, r10, r16
	add.s r10, r10, r1
	and r18, r10, r26
	setlt.u r10, r3, r15
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	bneq r10, zero, .LBB0_425
.LBB0_427:                              # %vector.body196
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r1
	and r9, r8, r26
	setlt.u r8, r3, r27
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	bneq r8, zero, .LBB0_409
.LBB0_428:                              # %vector.body196
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r1
	and r25, r2, r26
	j .LBB0_409
.LBB0_429:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r9
	.loc	1 520 7                         # parallel-rne.mlir:520:7
	mfence { sm }
	.loc	1 548 7                         # parallel-rne.mlir:548:7
	addli r2, zero, 6
	bneq r9, r2, .LBB0_243
.LBB0_430:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 548 7                         # parallel-rne.mlir:548:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_432
.LBB0_431:                              # %middle.block191
                                        #   in Loop: Header=BB0_432 Depth=2
	.loc	1 555 9 is_stmt 1               # parallel-rne.mlir:555:9
	load.d r[4:5], -72(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -128(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_460
.LBB0_432:                              # %.preheader67
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_441 Depth 3
                                        #       Child Loop BB0_435 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	store.d r[4:5], -128(r30)               # 8-byte Folded Spill
	sll.d r[4:5], r[4:5], r2
	.loc	1 556 11 is_stmt 1              # parallel-rne.mlir:556:11
	bneq r11, r7, .LBB0_439
# %bb.433:                              # %scalar.ph185.preheader
                                        #   in Loop: Header=BB0_432 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_435
.LBB0_434:                              # %scalar.ph185
                                        #   in Loop: Header=BB0_435 Depth=3
	.loc	1 556 11                        # parallel-rne.mlir:556:11
	load.d r[14:15], -56(r30)               # 8-byte Folded Reload
	.loc	1 571 13 is_stmt 1              # parallel-rne.mlir:571:13
	add.s r2, r11, r2
	stores.w r6, 0(r2)
	.loc	1 556 11                        # parallel-rne.mlir:556:11
	setlt.ul r10, r[8:9], r[14:15]
	addli.d r[8:9], r[8:9], 1
	beq r10, zero, .LBB0_431
.LBB0_435:                              # %scalar.ph185
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_432 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 557 19                        # parallel-rne.mlir:557:19
	add.ul r[14:15], r[8:9], r[4:5]
	slli r2, r14, 2
	add.s r6, r7, r2
	loads.w r10, 0(r6)
	.loc	1 559 19                        # parallel-rne.mlir:559:19
	and r14, r10, r28
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	setlt.u r6, r24, r14
	.loc	1 562 19                        # parallel-rne.mlir:562:19
	bneq r6, zero, .LBB0_437
# %bb.436:                              # %scalar.ph185
                                        #   in Loop: Header=BB0_435 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 568 19 is_stmt 1              # parallel-rne.mlir:568:19
	setlt.u r14, r3, r14
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	bneq r14, zero, .LBB0_434
	j .LBB0_438
.LBB0_437:                              #   in Loop: Header=BB0_435 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r10, r23
	.loc	1 568 19 is_stmt 1              # parallel-rne.mlir:568:19
	setlt.u r14, r3, r14
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	bneq r14, zero, .LBB0_434
.LBB0_438:                              # %scalar.ph185
                                        #   in Loop: Header=BB0_435 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r1
	and r6, r6, r26
	j .LBB0_434
.LBB0_439:                              # %vector.body187.preheader
                                        #   in Loop: Header=BB0_432 Depth=2
	zext_int2long r[21:22], zero
	j .LBB0_441
.LBB0_440:                              # %vector.body187
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 556 11 is_stmt 1              # parallel-rne.mlir:556:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 571 13                        # parallel-rne.mlir:571:13
	add.s r6, r11, r6
	.loc	1 556 11                        # parallel-rne.mlir:556:11
	seteq.d r2, r[21:22], r[12:13]
	.loc	1 571 13                        # parallel-rne.mlir:571:13
	stores.w r25, 12(r6)
	stores.w r9, 8(r6)
	stores.w r18, 4(r6)
	stores.w r14, 0(r6)
	.loc	1 556 11                        # parallel-rne.mlir:556:11
	bneq r2, zero, .LBB0_431
.LBB0_441:                              # %vector.body187
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_432 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 557 19                        # parallel-rne.mlir:557:19
	add.ul r[8:9], r[21:22], r[4:5]
	slli r6, r8, 2
	add.s r14, r7, r6
	loads.w r2, 12(r14)
	.loc	1 559 19                        # parallel-rne.mlir:559:19
	and r27, r2, r28
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	setlt.u r8, r24, r27
	.loc	1 562 19                        # parallel-rne.mlir:562:19
	bneq r8, zero, .LBB0_443
# %bb.442:                              # %vector.body187
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r2, 0
	j .LBB0_444
.LBB0_443:                              #   in Loop: Header=BB0_441 Depth=3
	or r25, r2, r23
.LBB0_444:                              # %vector.body187
                                        #   in Loop: Header=BB0_441 Depth=3
	loads.w r8, 8(r14)
	and r15, r8, r28
	setlt.u r9, r24, r15
	.loc	1 562 19                        # parallel-rne.mlir:562:19
	bneq r9, zero, .LBB0_446
# %bb.445:                              # %vector.body187
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
	j .LBB0_447
.LBB0_446:                              #   in Loop: Header=BB0_441 Depth=3
	or r9, r8, r23
.LBB0_447:                              # %vector.body187
                                        #   in Loop: Header=BB0_441 Depth=3
	loads.w r10, 4(r14)
	and r19, r10, r28
	setlt.u r16, r24, r19
	.loc	1 562 19                        # parallel-rne.mlir:562:19
	bneq r16, zero, .LBB0_449
# %bb.448:                              # %vector.body187
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r10, 0
	j .LBB0_450
.LBB0_449:                              #   in Loop: Header=BB0_441 Depth=3
	or r18, r10, r23
.LBB0_450:                              # %vector.body187
                                        #   in Loop: Header=BB0_441 Depth=3
	loads.w r20, 0(r14)
	and r16, r20, r28
	setlt.u r14, r24, r16
	.loc	1 562 19                        # parallel-rne.mlir:562:19
	bneq r14, zero, .LBB0_452
# %bb.451:                              # %vector.body187
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
	.loc	1 568 19 is_stmt 1              # parallel-rne.mlir:568:19
	setlt.u r16, r3, r16
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	beq r16, zero, .LBB0_453
	j .LBB0_454
.LBB0_452:                              #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r20, r23
	.loc	1 568 19 is_stmt 1              # parallel-rne.mlir:568:19
	setlt.u r16, r3, r16
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	bneq r16, zero, .LBB0_454
.LBB0_453:                              # %vector.body187
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r20, 16
	andi r14, r14, 1
	add.s r14, r20, r14
	add.s r14, r14, r1
	and r14, r14, r26
.LBB0_454:                              # %vector.body187
                                        #   in Loop: Header=BB0_441 Depth=3
	setlt.u r16, r3, r19
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	beq r16, zero, .LBB0_457
# %bb.455:                              # %vector.body187
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r15
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	beq r10, zero, .LBB0_458
.LBB0_456:                              # %vector.body187
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r27
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	bneq r8, zero, .LBB0_440
	j .LBB0_459
.LBB0_457:                              # %vector.body187
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r10, 16
	andi r16, r16, 1
	add.s r10, r10, r16
	add.s r10, r10, r1
	and r18, r10, r26
	setlt.u r10, r3, r15
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	bneq r10, zero, .LBB0_456
.LBB0_458:                              # %vector.body187
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r1
	and r9, r8, r26
	setlt.u r8, r3, r27
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	bneq r8, zero, .LBB0_440
.LBB0_459:                              # %vector.body187
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r1
	and r25, r2, r26
	j .LBB0_440
.LBB0_460:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r9
	.loc	1 548 7                         # parallel-rne.mlir:548:7
	mfence { sm }
	.loc	1 576 7                         # parallel-rne.mlir:576:7
	loadli.w r2,  -144(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_492
.LBB0_461:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 576 7                         # parallel-rne.mlir:576:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_463
.LBB0_462:                              # %middle.block182
                                        #   in Loop: Header=BB0_463 Depth=2
	.loc	1 583 9 is_stmt 1               # parallel-rne.mlir:583:9
	load.d r[4:5], -56(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -128(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_491
.LBB0_463:                              # %.preheader66
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_472 Depth 3
                                        #       Child Loop BB0_466 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	store.d r[4:5], -128(r30)               # 8-byte Folded Spill
	sll.d r[4:5], r[4:5], r2
	.loc	1 584 11 is_stmt 1              # parallel-rne.mlir:584:11
	bneq r11, r7, .LBB0_470
# %bb.464:                              # %scalar.ph176.preheader
                                        #   in Loop: Header=BB0_463 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_466
.LBB0_465:                              # %scalar.ph176
                                        #   in Loop: Header=BB0_466 Depth=3
	.loc	1 584 11                        # parallel-rne.mlir:584:11
	load.d r[14:15], -56(r30)               # 8-byte Folded Reload
	.loc	1 599 13 is_stmt 1              # parallel-rne.mlir:599:13
	add.s r2, r11, r2
	stores.w r6, 0(r2)
	.loc	1 584 11                        # parallel-rne.mlir:584:11
	setlt.ul r10, r[8:9], r[14:15]
	addli.d r[8:9], r[8:9], 1
	beq r10, zero, .LBB0_462
.LBB0_466:                              # %scalar.ph176
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_463 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 585 19                        # parallel-rne.mlir:585:19
	add.ul r[14:15], r[8:9], r[4:5]
	slli r2, r14, 2
	add.s r6, r7, r2
	loads.w r10, 0(r6)
	.loc	1 587 19                        # parallel-rne.mlir:587:19
	and r14, r10, r28
	.loc	1 589 19                        # parallel-rne.mlir:589:19
	setlt.u r6, r24, r14
	.loc	1 590 19                        # parallel-rne.mlir:590:19
	bneq r6, zero, .LBB0_468
# %bb.467:                              # %scalar.ph176
                                        #   in Loop: Header=BB0_466 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 596 19 is_stmt 1              # parallel-rne.mlir:596:19
	setlt.u r14, r3, r14
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	bneq r14, zero, .LBB0_465
	j .LBB0_469
.LBB0_468:                              #   in Loop: Header=BB0_466 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r10, r23
	.loc	1 596 19 is_stmt 1              # parallel-rne.mlir:596:19
	setlt.u r14, r3, r14
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	bneq r14, zero, .LBB0_465
.LBB0_469:                              # %scalar.ph176
                                        #   in Loop: Header=BB0_466 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r1
	and r6, r6, r26
	j .LBB0_465
.LBB0_470:                              # %vector.body178.preheader
                                        #   in Loop: Header=BB0_463 Depth=2
	zext_int2long r[21:22], zero
	j .LBB0_472
.LBB0_471:                              # %vector.body178
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 584 11 is_stmt 1              # parallel-rne.mlir:584:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 599 13                        # parallel-rne.mlir:599:13
	add.s r6, r11, r6
	.loc	1 584 11                        # parallel-rne.mlir:584:11
	seteq.d r2, r[21:22], r[12:13]
	.loc	1 599 13                        # parallel-rne.mlir:599:13
	stores.w r25, 12(r6)
	stores.w r9, 8(r6)
	stores.w r18, 4(r6)
	stores.w r14, 0(r6)
	.loc	1 584 11                        # parallel-rne.mlir:584:11
	bneq r2, zero, .LBB0_462
.LBB0_472:                              # %vector.body178
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_463 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 585 19                        # parallel-rne.mlir:585:19
	add.ul r[8:9], r[21:22], r[4:5]
	slli r6, r8, 2
	add.s r14, r7, r6
	loads.w r2, 12(r14)
	.loc	1 587 19                        # parallel-rne.mlir:587:19
	and r27, r2, r28
	.loc	1 589 19                        # parallel-rne.mlir:589:19
	setlt.u r8, r24, r27
	.loc	1 590 19                        # parallel-rne.mlir:590:19
	bneq r8, zero, .LBB0_474
# %bb.473:                              # %vector.body178
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r2, 0
	j .LBB0_475
.LBB0_474:                              #   in Loop: Header=BB0_472 Depth=3
	or r25, r2, r23
.LBB0_475:                              # %vector.body178
                                        #   in Loop: Header=BB0_472 Depth=3
	loads.w r8, 8(r14)
	and r15, r8, r28
	setlt.u r9, r24, r15
	.loc	1 590 19                        # parallel-rne.mlir:590:19
	bneq r9, zero, .LBB0_477
# %bb.476:                              # %vector.body178
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
	j .LBB0_478
.LBB0_477:                              #   in Loop: Header=BB0_472 Depth=3
	or r9, r8, r23
.LBB0_478:                              # %vector.body178
                                        #   in Loop: Header=BB0_472 Depth=3
	loads.w r10, 4(r14)
	and r19, r10, r28
	setlt.u r16, r24, r19
	.loc	1 590 19                        # parallel-rne.mlir:590:19
	bneq r16, zero, .LBB0_480
# %bb.479:                              # %vector.body178
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r10, 0
	j .LBB0_481
.LBB0_480:                              #   in Loop: Header=BB0_472 Depth=3
	or r18, r10, r23
.LBB0_481:                              # %vector.body178
                                        #   in Loop: Header=BB0_472 Depth=3
	loads.w r20, 0(r14)
	and r16, r20, r28
	setlt.u r14, r24, r16
	.loc	1 590 19                        # parallel-rne.mlir:590:19
	bneq r14, zero, .LBB0_483
# %bb.482:                              # %vector.body178
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
	.loc	1 596 19 is_stmt 1              # parallel-rne.mlir:596:19
	setlt.u r16, r3, r16
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	beq r16, zero, .LBB0_484
	j .LBB0_485
.LBB0_483:                              #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r20, r23
	.loc	1 596 19 is_stmt 1              # parallel-rne.mlir:596:19
	setlt.u r16, r3, r16
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	bneq r16, zero, .LBB0_485
.LBB0_484:                              # %vector.body178
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r20, 16
	andi r14, r14, 1
	add.s r14, r20, r14
	add.s r14, r14, r1
	and r14, r14, r26
.LBB0_485:                              # %vector.body178
                                        #   in Loop: Header=BB0_472 Depth=3
	setlt.u r16, r3, r19
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	beq r16, zero, .LBB0_488
# %bb.486:                              # %vector.body178
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r15
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	beq r10, zero, .LBB0_489
.LBB0_487:                              # %vector.body178
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r27
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	bneq r8, zero, .LBB0_471
	j .LBB0_490
.LBB0_488:                              # %vector.body178
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r10, 16
	andi r16, r16, 1
	add.s r10, r10, r16
	add.s r10, r10, r1
	and r18, r10, r26
	setlt.u r10, r3, r15
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	bneq r10, zero, .LBB0_487
.LBB0_489:                              # %vector.body178
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r1
	and r9, r8, r26
	setlt.u r8, r3, r27
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	bneq r8, zero, .LBB0_471
.LBB0_490:                              # %vector.body178
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r1
	and r25, r2, r26
	j .LBB0_471
.LBB0_491:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r9
	.loc	1 576 7                         # parallel-rne.mlir:576:7
	mfence { sm }
.LBB0_492:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 604 7                         # parallel-rne.mlir:604:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 605 7                         # parallel-rne.mlir:605:7
	addli r2, zero, 3
	.loc	1 604 7                         # parallel-rne.mlir:604:7
	sync_core
	.loc	1 605 7                         # parallel-rne.mlir:605:7
	bneq r9, r2, .LBB0_494
# %bb.493:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 14
	.loc	1 610 13                        # parallel-rne.mlir:610:13
	addli r4, zero, 5
	.loc	1 605 7                         # parallel-rne.mlir:605:7
	xsignal r2, 0
	.loc	1 606 7                         # parallel-rne.mlir:606:7
	addli r2, zero, 19
	xsignal r2, 0
	.loc	1 607 7                         # parallel-rne.mlir:607:7
	addli r2, zero, 20
	xsignal r2, 0
	.loc	1 608 7                         # parallel-rne.mlir:608:7
	addli r2, zero, 17
	xsignal r2, 0
	.loc	1 610 13                        # parallel-rne.mlir:610:13
	loadli.w r2,  -48(r30)
	.loc	1 613 13                        # parallel-rne.mlir:613:13
	loadli.w r5,  -24(r30)
	.loc	1 610 13                        # parallel-rne.mlir:610:13
	mod.s r4, r2, r4
	addli r2, r2, 1
	storeli.w r2, -48(r30)
	slli r2, r4, 12
	.loc	1 613 13                        # parallel-rne.mlir:613:13
	addli r4, r5, 1
	.loc	1 610 13                        # parallel-rne.mlir:610:13
	loadli.w r5,  -208(r30)                 # 4-byte Folded Reload
	.loc	1 613 13                        # parallel-rne.mlir:613:13
	storeli.w r4, -24(r30)
	.loc	1 610 13                        # parallel-rne.mlir:610:13
	add.s r7, r2, r5
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	addli r2, zero, 18
	xwait r2, 0
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	addli r2, zero, 23
	xwait r2, 0
	j .LBB0_501
.LBB0_494:                              # %.critedge10
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 610 13                        # parallel-rne.mlir:610:13
	loadli.w r2,  -48(r30)
	addli r5, zero, 5
	loadli.w r6,  -208(r30)                 # 4-byte Folded Reload
	mod.s r4, r2, r5
	addli r2, r2, 1
	storeli.w r2, -48(r30)
	slli r4, r4, 12
	add.s r7, r4, r6
	.loc	1 611 7                         # parallel-rne.mlir:611:7
	bneq r9, r5, .LBB0_500
# %bb.495:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 17
	addli r8, zero, 2
	addli r6, zero, 1
	lui r10, 266232
	lui r14, 790528
	addli r4, zero, 0
	xwait r2, 0
	addli r2, zero, 24
	xwait r2, 0
	lock zero, r8
	addli r2, zero, 1023
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r2, zero, 2
	addli r2, zero, 13
	ew_cfg r6, zero, zero, 3
	ew_cfg r6, r6, zero, 19
	ew_cfg r2, zero, zero, 10
	loadli.w r2,  -212(r30)                 # 4-byte Folded Reload
	ew_cfg r8, r6, r2, 11
	addli r2, zero, 3
	ew_cfg zero, zero, r2, 13
	addli r2, zero, 4
	ew_cfg r14, r2, r10, 14
	lui r2, 260096
	addli r10, zero, 4096
	ew_cfg zero, r2, zero, 15
	sslut r7, r11, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r8
	.loc	1 613 13                        # parallel-rne.mlir:613:13
	loadli.w r2,  -24(r30)
	mod.s r5, r2, r5
	addli r2, r2, 1
	storeli.w r2, -24(r30)
	.loc	1 614 7                         # parallel-rne.mlir:614:7
	addli r2, zero, 19
	xwait r2, 0
	addli r2, zero, 25
	xwait r2, 0
	lock zero, r8
	.loc	1 613 13                        # parallel-rne.mlir:613:13
	slli r2, r5, 12
	addli r8, zero, 1
	.loc	1 614 7                         # parallel-rne.mlir:614:7
	ew_cfg zero, zero, zero, 1
	.loc	1 613 13                        # parallel-rne.mlir:613:13
	loadli.w r5,  -216(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r5
	.loc	1 614 7                         # parallel-rne.mlir:614:7
	addli r5, zero, 31
	ew_cfg zero, r5, zero, 2
	ew_cfg r6, zero, zero, 3
	loadli.w r5,  -220(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r5, zero, zero, 0
.LBB0_496:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r2, r4
	add.s r6, r11, r4
	addli r4, r4, 128
	dscmpnsel r5, r6, r6, 0
	bneq r4, r10, .LBB0_496
# %bb.497:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 2
	addli r4, zero, 0
	addli r6, zero, 4096
	.loc	1 614 7                         # parallel-rne.mlir:614:7
	unlock r5
	.loc	1 615 7 is_stmt 1               # parallel-rne.mlir:615:7
	lock zero, r5
	addli r5, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r5, zero, 2
	ew_cfg r8, zero, zero, 3
	ewcoeff_cfg r3, zero, zero, 0
.LBB0_498:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r2, r4
	addli r4, r4, 128
	dscmpnsel r5, r5, r5, 4
	bneq r4, r6, .LBB0_498
# %bb.499:                              # %.critedge14.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 2
	.loc	1 616 7 is_stmt 1               # parallel-rne.mlir:616:7
	addli r4, zero, 20
	lui r8, 260096
	addli r6, zero, 1023
	.loc	1 615 7                         # parallel-rne.mlir:615:7
	unlock r5
	.loc	1 616 7                         # parallel-rne.mlir:616:7
	xwait r4, 0
	lock zero, r5
	lui r4, 784384
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r8, r4, zero, 0
	addli r4, zero, 1
	ew_cfg zero, r6, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, r4, 19
	dsmadd r11, r11, r2, 0
	addli r2, zero, 25
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r2, 0
	.loc	1 617 7                         # parallel-rne.mlir:617:7
	lock zero, r5
	addli r2, zero, 18
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r8, r8, zero, 0
	ew_cfg zero, r6, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, r4, 19
	dsmadd r7, r7, r11, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r2, 0
	addli r2, zero, 23
	xsignal r2, 0
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	j .LBB0_501
.LBB0_500:                              # %.critedge14
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 613 13                        # parallel-rne.mlir:613:13
	loadli.w r2,  -24(r30)
	addli r2, r2, 1
	storeli.w r2, -24(r30)
.LBB0_501:                              # %.critedge16
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 624 7                         # parallel-rne.mlir:624:7
	addli r2, zero, 255
	.loc	1 622 7                         # parallel-rne.mlir:622:7
	xfence
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	mfence { lm, sm, gm }
	.loc	1 624 7                         # parallel-rne.mlir:624:7
	csr_set csr5, r2
	sub.s r2, r11, r7
	storeli.w r2, -140(r30)                 # 4-byte Folded Spill
	sync_core
	load.d r[5:6], -136(r30)                # 8-byte Folded Reload
	.loc	1 625 7                         # parallel-rne.mlir:625:7
	beq r9, zero, .LBB0_508
# %bb.502:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 653 7                         # parallel-rne.mlir:653:7
	addli r2, zero, 1
	beq r9, r2, .LBB0_539
.LBB0_503:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 681 7                         # parallel-rne.mlir:681:7
	loadli.w r2,  -152(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_570
.LBB0_504:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 709 7                         # parallel-rne.mlir:709:7
	addli r2, zero, 3
	beq r9, r2, .LBB0_601
.LBB0_505:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 737 7                         # parallel-rne.mlir:737:7
	loadli.w r2,  -148(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_632
.LBB0_506:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 765 7                         # parallel-rne.mlir:765:7
	addli r2, zero, 5
	beq r9, r2, .LBB0_663
.LBB0_507:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 793 7                         # parallel-rne.mlir:793:7
	addli r2, zero, 6
	beq r9, r2, .LBB0_694
	j .LBB0_725
.LBB0_508:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -140(r30)                 # 4-byte Folded Reload
	addli r2, zero, 16
	.loc	1 625 7 is_stmt 1               # parallel-rne.mlir:625:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r17, r4, r2
	zext_int2long r[4:5], zero
	j .LBB0_510
.LBB0_509:                              # %middle.block173
                                        #   in Loop: Header=BB0_510 Depth=2
	.loc	1 632 9                         # parallel-rne.mlir:632:9
	load.d r[4:5], -120(r30)                # 8-byte Folded Reload
	load.d r[8:9], -128(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_538
.LBB0_510:                              # %.preheader65
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_519 Depth 3
                                        #       Child Loop BB0_513 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	store.d r[4:5], -128(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[4:5], r2
	.loc	1 633 11 is_stmt 1              # parallel-rne.mlir:633:11
	beq r17, zero, .LBB0_517
# %bb.511:                              # %scalar.ph167.preheader
                                        #   in Loop: Header=BB0_510 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_513
.LBB0_512:                              # %scalar.ph167
                                        #   in Loop: Header=BB0_513 Depth=3
	.loc	1 633 11                        # parallel-rne.mlir:633:11
	load.d r[14:15], -56(r30)               # 8-byte Folded Reload
	.loc	1 648 13 is_stmt 1              # parallel-rne.mlir:648:13
	add.s r2, r11, r2
	stores.w r4, 0(r2)
	.loc	1 633 11                        # parallel-rne.mlir:633:11
	setlt.ul r10, r[8:9], r[14:15]
	addli.d r[8:9], r[8:9], 1
	beq r10, zero, .LBB0_509
.LBB0_513:                              # %scalar.ph167
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_510 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 634 19                        # parallel-rne.mlir:634:19
	add.ul r[14:15], r[8:9], r[5:6]
	slli r2, r14, 2
	add.s r4, r7, r2
	loads.w r10, 0(r4)
	.loc	1 636 19                        # parallel-rne.mlir:636:19
	and r14, r10, r28
	.loc	1 638 19                        # parallel-rne.mlir:638:19
	setlt.u r4, r24, r14
	.loc	1 639 19                        # parallel-rne.mlir:639:19
	bneq r4, zero, .LBB0_515
# %bb.514:                              # %scalar.ph167
                                        #   in Loop: Header=BB0_513 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 645 19 is_stmt 1              # parallel-rne.mlir:645:19
	setlt.u r14, r3, r14
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	bneq r14, zero, .LBB0_512
	j .LBB0_516
.LBB0_515:                              #   in Loop: Header=BB0_513 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r10, r23
	.loc	1 645 19 is_stmt 1              # parallel-rne.mlir:645:19
	setlt.u r14, r3, r14
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	bneq r14, zero, .LBB0_512
.LBB0_516:                              # %scalar.ph167
                                        #   in Loop: Header=BB0_513 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r1
	and r4, r4, r26
	j .LBB0_512
.LBB0_517:                              # %vector.body169.preheader
                                        #   in Loop: Header=BB0_510 Depth=2
	zext_int2long r[21:22], zero
	j .LBB0_519
.LBB0_518:                              # %vector.body169
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 633 11 is_stmt 1              # parallel-rne.mlir:633:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 648 13                        # parallel-rne.mlir:648:13
	add.s r8, r11, r27
	.loc	1 633 11                        # parallel-rne.mlir:633:11
	seteq.d r2, r[21:22], r[12:13]
	.loc	1 648 13                        # parallel-rne.mlir:648:13
	stores.w r4, 12(r8)
	stores.w r10, 8(r8)
	stores.w r18, 4(r8)
	stores.w r15, 0(r8)
	.loc	1 633 11                        # parallel-rne.mlir:633:11
	bneq r2, zero, .LBB0_509
.LBB0_519:                              # %vector.body169
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_510 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 634 19                        # parallel-rne.mlir:634:19
	add.ul r[8:9], r[21:22], r[5:6]
	slli r27, r8, 2
	add.s r15, r7, r27
	loads.w r2, 12(r15)
	.loc	1 636 19                        # parallel-rne.mlir:636:19
	and r9, r2, r28
	.loc	1 638 19                        # parallel-rne.mlir:638:19
	setlt.u r4, r24, r9
	.loc	1 639 19                        # parallel-rne.mlir:639:19
	bneq r4, zero, .LBB0_521
# %bb.520:                              # %vector.body169
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r2, 0
	j .LBB0_522
.LBB0_521:                              #   in Loop: Header=BB0_519 Depth=3
	or r4, r2, r23
.LBB0_522:                              # %vector.body169
                                        #   in Loop: Header=BB0_519 Depth=3
	loads.w r8, 8(r15)
	and r25, r8, r28
	setlt.u r10, r24, r25
	.loc	1 639 19                        # parallel-rne.mlir:639:19
	bneq r10, zero, .LBB0_524
# %bb.523:                              # %vector.body169
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r8, 0
	j .LBB0_525
.LBB0_524:                              #   in Loop: Header=BB0_519 Depth=3
	or r10, r8, r23
.LBB0_525:                              # %vector.body169
                                        #   in Loop: Header=BB0_519 Depth=3
	loads.w r14, 4(r15)
	and r19, r14, r28
	setlt.u r16, r24, r19
	.loc	1 639 19                        # parallel-rne.mlir:639:19
	bneq r16, zero, .LBB0_527
# %bb.526:                              # %vector.body169
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r14, 0
	j .LBB0_528
.LBB0_527:                              #   in Loop: Header=BB0_519 Depth=3
	or r18, r14, r23
.LBB0_528:                              # %vector.body169
                                        #   in Loop: Header=BB0_519 Depth=3
	loads.w r20, 0(r15)
	and r16, r20, r28
	setlt.u r15, r24, r16
	.loc	1 639 19                        # parallel-rne.mlir:639:19
	bneq r15, zero, .LBB0_530
# %bb.529:                              # %vector.body169
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r20, 0
	.loc	1 645 19 is_stmt 1              # parallel-rne.mlir:645:19
	setlt.u r16, r3, r16
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	beq r16, zero, .LBB0_531
	j .LBB0_532
.LBB0_530:                              #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r15, r20, r23
	.loc	1 645 19 is_stmt 1              # parallel-rne.mlir:645:19
	setlt.u r16, r3, r16
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	bneq r16, zero, .LBB0_532
.LBB0_531:                              # %vector.body169
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r15, r20, 16
	andi r15, r15, 1
	add.s r15, r20, r15
	add.s r15, r15, r1
	and r15, r15, r26
.LBB0_532:                              # %vector.body169
                                        #   in Loop: Header=BB0_519 Depth=3
	setlt.u r16, r3, r19
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	beq r16, zero, .LBB0_535
# %bb.533:                              # %vector.body169
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r3, r25
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	beq r14, zero, .LBB0_536
.LBB0_534:                              # %vector.body169
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r9
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	bneq r8, zero, .LBB0_518
	j .LBB0_537
.LBB0_535:                              # %vector.body169
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r14, 16
	andi r16, r16, 1
	add.s r14, r14, r16
	add.s r14, r14, r1
	and r18, r14, r26
	setlt.u r14, r3, r25
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	bneq r14, zero, .LBB0_534
.LBB0_536:                              # %vector.body169
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r8, 16
	andi r10, r10, 1
	add.s r8, r8, r10
	add.s r8, r8, r1
	and r10, r8, r26
	setlt.u r8, r3, r9
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	bneq r8, zero, .LBB0_518
.LBB0_537:                              # %vector.body169
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	add.s r2, r2, r1
	and r4, r2, r26
	j .LBB0_518
.LBB0_538:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 625 7 is_stmt 1               # parallel-rne.mlir:625:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r9
	load.d r[5:6], -136(r30)                # 8-byte Folded Reload
	.loc	1 653 7                         # parallel-rne.mlir:653:7
	addli r2, zero, 1
	bneq r9, r2, .LBB0_503
.LBB0_539:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -140(r30)                 # 4-byte Folded Reload
	addli r2, zero, 16
	.loc	1 653 7                         # parallel-rne.mlir:653:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r17, r4, r2
	addli r2, zero, 4
	zext_int2long r[4:5], r2
	j .LBB0_541
.LBB0_540:                              # %middle.block164
                                        #   in Loop: Header=BB0_541 Depth=2
	.loc	1 660 9 is_stmt 1               # parallel-rne.mlir:660:9
	load.d r[4:5], -112(r30)                # 8-byte Folded Reload
	load.d r[8:9], -120(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_569
.LBB0_541:                              # %.preheader64
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_550 Depth 3
                                        #       Child Loop BB0_544 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	store.d r[4:5], -120(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[4:5], r2
	.loc	1 661 11 is_stmt 1              # parallel-rne.mlir:661:11
	beq r17, zero, .LBB0_548
# %bb.542:                              # %scalar.ph158.preheader
                                        #   in Loop: Header=BB0_541 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_544
.LBB0_543:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_544 Depth=3
	.loc	1 661 11                        # parallel-rne.mlir:661:11
	load.d r[14:15], -56(r30)               # 8-byte Folded Reload
	.loc	1 676 13 is_stmt 1              # parallel-rne.mlir:676:13
	add.s r2, r11, r2
	stores.w r4, 0(r2)
	.loc	1 661 11                        # parallel-rne.mlir:661:11
	setlt.ul r10, r[8:9], r[14:15]
	addli.d r[8:9], r[8:9], 1
	beq r10, zero, .LBB0_540
.LBB0_544:                              # %scalar.ph158
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_541 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 662 19                        # parallel-rne.mlir:662:19
	add.ul r[14:15], r[8:9], r[5:6]
	slli r2, r14, 2
	add.s r4, r7, r2
	loads.w r10, 0(r4)
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	and r14, r10, r28
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	setlt.u r4, r24, r14
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	bneq r4, zero, .LBB0_546
# %bb.545:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_544 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 673 19 is_stmt 1              # parallel-rne.mlir:673:19
	setlt.u r14, r3, r14
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	bneq r14, zero, .LBB0_543
	j .LBB0_547
.LBB0_546:                              #   in Loop: Header=BB0_544 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r10, r23
	.loc	1 673 19 is_stmt 1              # parallel-rne.mlir:673:19
	setlt.u r14, r3, r14
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	bneq r14, zero, .LBB0_543
.LBB0_547:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_544 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r1
	and r4, r4, r26
	j .LBB0_543
.LBB0_548:                              # %vector.body160.preheader
                                        #   in Loop: Header=BB0_541 Depth=2
	zext_int2long r[21:22], zero
	j .LBB0_550
.LBB0_549:                              # %vector.body160
                                        #   in Loop: Header=BB0_550 Depth=3
	.loc	1 661 11 is_stmt 1              # parallel-rne.mlir:661:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 676 13                        # parallel-rne.mlir:676:13
	add.s r8, r11, r27
	.loc	1 661 11                        # parallel-rne.mlir:661:11
	seteq.d r4, r[21:22], r[12:13]
	.loc	1 676 13                        # parallel-rne.mlir:676:13
	stores.w r2, 12(r8)
	stores.w r10, 8(r8)
	stores.w r18, 4(r8)
	stores.w r15, 0(r8)
	.loc	1 661 11                        # parallel-rne.mlir:661:11
	bneq r4, zero, .LBB0_540
.LBB0_550:                              # %vector.body160
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_541 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 662 19                        # parallel-rne.mlir:662:19
	add.ul r[8:9], r[21:22], r[5:6]
	slli r27, r8, 2
	add.s r15, r7, r27
	loads.w r4, 12(r15)
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	and r9, r4, r28
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	setlt.u r2, r24, r9
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	bneq r2, zero, .LBB0_552
# %bb.551:                              # %vector.body160
                                        #   in Loop: Header=BB0_550 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_553
.LBB0_552:                              #   in Loop: Header=BB0_550 Depth=3
	or r2, r4, r23
.LBB0_553:                              # %vector.body160
                                        #   in Loop: Header=BB0_550 Depth=3
	loads.w r8, 8(r15)
	and r25, r8, r28
	setlt.u r10, r24, r25
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	bneq r10, zero, .LBB0_555
# %bb.554:                              # %vector.body160
                                        #   in Loop: Header=BB0_550 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r8, 0
	j .LBB0_556
.LBB0_555:                              #   in Loop: Header=BB0_550 Depth=3
	or r10, r8, r23
.LBB0_556:                              # %vector.body160
                                        #   in Loop: Header=BB0_550 Depth=3
	loads.w r14, 4(r15)
	and r19, r14, r28
	setlt.u r16, r24, r19
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	bneq r16, zero, .LBB0_558
# %bb.557:                              # %vector.body160
                                        #   in Loop: Header=BB0_550 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r14, 0
	j .LBB0_559
.LBB0_558:                              #   in Loop: Header=BB0_550 Depth=3
	or r18, r14, r23
.LBB0_559:                              # %vector.body160
                                        #   in Loop: Header=BB0_550 Depth=3
	loads.w r20, 0(r15)
	and r16, r20, r28
	setlt.u r15, r24, r16
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	bneq r15, zero, .LBB0_561
# %bb.560:                              # %vector.body160
                                        #   in Loop: Header=BB0_550 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r20, 0
	.loc	1 673 19 is_stmt 1              # parallel-rne.mlir:673:19
	setlt.u r16, r3, r16
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	beq r16, zero, .LBB0_562
	j .LBB0_563
.LBB0_561:                              #   in Loop: Header=BB0_550 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r15, r20, r23
	.loc	1 673 19 is_stmt 1              # parallel-rne.mlir:673:19
	setlt.u r16, r3, r16
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	bneq r16, zero, .LBB0_563
.LBB0_562:                              # %vector.body160
                                        #   in Loop: Header=BB0_550 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r15, r20, 16
	andi r15, r15, 1
	add.s r15, r20, r15
	add.s r15, r15, r1
	and r15, r15, r26
.LBB0_563:                              # %vector.body160
                                        #   in Loop: Header=BB0_550 Depth=3
	setlt.u r16, r3, r19
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	beq r16, zero, .LBB0_566
# %bb.564:                              # %vector.body160
                                        #   in Loop: Header=BB0_550 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r3, r25
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	beq r14, zero, .LBB0_567
.LBB0_565:                              # %vector.body160
                                        #   in Loop: Header=BB0_550 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r9
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	bneq r8, zero, .LBB0_549
	j .LBB0_568
.LBB0_566:                              # %vector.body160
                                        #   in Loop: Header=BB0_550 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r14, 16
	andi r16, r16, 1
	add.s r14, r14, r16
	add.s r14, r14, r1
	and r18, r14, r26
	setlt.u r14, r3, r25
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	bneq r14, zero, .LBB0_565
.LBB0_567:                              # %vector.body160
                                        #   in Loop: Header=BB0_550 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r8, 16
	andi r10, r10, 1
	add.s r8, r8, r10
	add.s r8, r8, r1
	and r10, r8, r26
	setlt.u r8, r3, r9
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	bneq r8, zero, .LBB0_549
.LBB0_568:                              # %vector.body160
                                        #   in Loop: Header=BB0_550 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r1
	and r2, r2, r26
	j .LBB0_549
.LBB0_569:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 653 7 is_stmt 1               # parallel-rne.mlir:653:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r9
	load.d r[5:6], -136(r30)                # 8-byte Folded Reload
	.loc	1 681 7                         # parallel-rne.mlir:681:7
	loadli.w r2,  -152(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_504
.LBB0_570:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -140(r30)                 # 4-byte Folded Reload
	addli r2, zero, 16
	setlt.u r2, r4, r2
	storeli.w r2, -120(r30)                 # 4-byte Folded Spill
	addli r2, zero, 8
	.loc	1 681 7                         # parallel-rne.mlir:681:7
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_572
.LBB0_571:                              # %middle.block155
                                        #   in Loop: Header=BB0_572 Depth=2
	.loc	1 688 9 is_stmt 1               # parallel-rne.mlir:688:9
	load.d r[4:5], -104(r30)                # 8-byte Folded Reload
	load.d r[8:9], -112(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_600
.LBB0_572:                              # %.preheader63
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_581 Depth 3
                                        #       Child Loop BB0_575 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	store.d r[4:5], -112(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[4:5], r2
	.loc	1 689 11 is_stmt 1              # parallel-rne.mlir:689:11
	loadli.w r2,  -120(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_579
# %bb.573:                              # %scalar.ph149.preheader
                                        #   in Loop: Header=BB0_572 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_575
.LBB0_574:                              # %scalar.ph149
                                        #   in Loop: Header=BB0_575 Depth=3
	.loc	1 689 11                        # parallel-rne.mlir:689:11
	load.d r[14:15], -56(r30)               # 8-byte Folded Reload
	.loc	1 704 13 is_stmt 1              # parallel-rne.mlir:704:13
	add.s r2, r11, r2
	stores.w r4, 0(r2)
	.loc	1 689 11                        # parallel-rne.mlir:689:11
	setlt.ul r10, r[8:9], r[14:15]
	addli.d r[8:9], r[8:9], 1
	beq r10, zero, .LBB0_571
.LBB0_575:                              # %scalar.ph149
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_572 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 690 19                        # parallel-rne.mlir:690:19
	add.ul r[14:15], r[8:9], r[5:6]
	slli r2, r14, 2
	add.s r4, r7, r2
	loads.w r10, 0(r4)
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	and r14, r10, r28
	.loc	1 694 19                        # parallel-rne.mlir:694:19
	setlt.u r4, r24, r14
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	bneq r4, zero, .LBB0_577
# %bb.576:                              # %scalar.ph149
                                        #   in Loop: Header=BB0_575 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 701 19 is_stmt 1              # parallel-rne.mlir:701:19
	setlt.u r14, r3, r14
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	bneq r14, zero, .LBB0_574
	j .LBB0_578
.LBB0_577:                              #   in Loop: Header=BB0_575 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r10, r23
	.loc	1 701 19 is_stmt 1              # parallel-rne.mlir:701:19
	setlt.u r14, r3, r14
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	bneq r14, zero, .LBB0_574
.LBB0_578:                              # %scalar.ph149
                                        #   in Loop: Header=BB0_575 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r1
	and r4, r4, r26
	j .LBB0_574
.LBB0_579:                              # %vector.body151.preheader
                                        #   in Loop: Header=BB0_572 Depth=2
	zext_int2long r[21:22], zero
	j .LBB0_581
.LBB0_580:                              # %vector.body151
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 689 11 is_stmt 1              # parallel-rne.mlir:689:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 704 13                        # parallel-rne.mlir:704:13
	add.s r8, r11, r15
	.loc	1 689 11                        # parallel-rne.mlir:689:11
	seteq.d r4, r[21:22], r[12:13]
	.loc	1 704 13                        # parallel-rne.mlir:704:13
	stores.w r2, 12(r8)
	stores.w r10, 8(r8)
	stores.w r18, 4(r8)
	stores.w r27, 0(r8)
	.loc	1 689 11                        # parallel-rne.mlir:689:11
	bneq r4, zero, .LBB0_571
.LBB0_581:                              # %vector.body151
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_572 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 690 19                        # parallel-rne.mlir:690:19
	add.ul r[8:9], r[21:22], r[5:6]
	slli r15, r8, 2
	add.s r19, r7, r15
	loads.w r4, 12(r19)
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	and r9, r4, r28
	.loc	1 694 19                        # parallel-rne.mlir:694:19
	setlt.u r2, r24, r9
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	bneq r2, zero, .LBB0_583
# %bb.582:                              # %vector.body151
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_584
.LBB0_583:                              #   in Loop: Header=BB0_581 Depth=3
	or r2, r4, r23
.LBB0_584:                              # %vector.body151
                                        #   in Loop: Header=BB0_581 Depth=3
	loads.w r8, 8(r19)
	and r14, r8, r28
	setlt.u r10, r24, r14
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	bneq r10, zero, .LBB0_586
# %bb.585:                              # %vector.body151
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r8, 0
	j .LBB0_587
.LBB0_586:                              #   in Loop: Header=BB0_581 Depth=3
	or r10, r8, r23
.LBB0_587:                              # %vector.body151
                                        #   in Loop: Header=BB0_581 Depth=3
	loads.w r25, 4(r19)
	and r20, r25, r28
	setlt.u r16, r24, r20
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	bneq r16, zero, .LBB0_589
# %bb.588:                              # %vector.body151
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r25, 0
	j .LBB0_590
.LBB0_589:                              #   in Loop: Header=BB0_581 Depth=3
	or r18, r25, r23
.LBB0_590:                              # %vector.body151
                                        #   in Loop: Header=BB0_581 Depth=3
	loads.w r19, 0(r19)
	and r16, r19, r28
	setlt.u r17, r24, r16
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	bneq r17, zero, .LBB0_592
# %bb.591:                              # %vector.body151
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r19, 0
	.loc	1 701 19 is_stmt 1              # parallel-rne.mlir:701:19
	setlt.u r16, r3, r16
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	beq r16, zero, .LBB0_593
	j .LBB0_594
.LBB0_592:                              #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r19, r23
	.loc	1 701 19 is_stmt 1              # parallel-rne.mlir:701:19
	setlt.u r16, r3, r16
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	bneq r16, zero, .LBB0_594
.LBB0_593:                              # %vector.body151
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r19, 16
	andi r16, r16, 1
	add.s r16, r19, r16
	add.s r16, r16, r1
	and r27, r16, r26
.LBB0_594:                              # %vector.body151
                                        #   in Loop: Header=BB0_581 Depth=3
	setlt.u r16, r3, r20
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	beq r16, zero, .LBB0_597
# %bb.595:                              # %vector.body151
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r3, r14
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	beq r14, zero, .LBB0_598
.LBB0_596:                              # %vector.body151
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r9
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	bneq r8, zero, .LBB0_580
	j .LBB0_599
.LBB0_597:                              # %vector.body151
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r25, 16
	andi r16, r16, 1
	add.s r16, r25, r16
	add.s r16, r16, r1
	and r18, r16, r26
	setlt.u r14, r3, r14
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	bneq r14, zero, .LBB0_596
.LBB0_598:                              # %vector.body151
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r8, 16
	andi r10, r10, 1
	add.s r8, r8, r10
	add.s r8, r8, r1
	and r10, r8, r26
	setlt.u r8, r3, r9
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	bneq r8, zero, .LBB0_580
.LBB0_599:                              # %vector.body151
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r1
	and r2, r2, r26
	j .LBB0_580
.LBB0_600:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 681 7 is_stmt 1               # parallel-rne.mlir:681:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r9
	load.d r[5:6], -136(r30)                # 8-byte Folded Reload
	.loc	1 709 7                         # parallel-rne.mlir:709:7
	addli r2, zero, 3
	bneq r9, r2, .LBB0_505
.LBB0_601:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -140(r30)                 # 4-byte Folded Reload
	addli r2, zero, 16
	setlt.u r2, r4, r2
	storeli.w r2, -112(r30)                 # 4-byte Folded Spill
	addli r2, zero, 12
	.loc	1 709 7                         # parallel-rne.mlir:709:7
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_603
.LBB0_602:                              # %middle.block146
                                        #   in Loop: Header=BB0_603 Depth=2
	.loc	1 716 9 is_stmt 1               # parallel-rne.mlir:716:9
	load.d r[4:5], -96(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -104(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_631
.LBB0_603:                              # %.preheader62
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_612 Depth 3
                                        #       Child Loop BB0_606 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	store.d r[4:5], -104(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[4:5], r2
	.loc	1 717 11 is_stmt 1              # parallel-rne.mlir:717:11
	loadli.w r2,  -112(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_610
# %bb.604:                              # %scalar.ph140.preheader
                                        #   in Loop: Header=BB0_603 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_606
.LBB0_605:                              # %scalar.ph140
                                        #   in Loop: Header=BB0_606 Depth=3
	.loc	1 717 11                        # parallel-rne.mlir:717:11
	load.d r[14:15], -56(r30)               # 8-byte Folded Reload
	.loc	1 732 13 is_stmt 1              # parallel-rne.mlir:732:13
	add.s r2, r11, r2
	stores.w r4, 0(r2)
	.loc	1 717 11                        # parallel-rne.mlir:717:11
	setlt.ul r10, r[8:9], r[14:15]
	addli.d r[8:9], r[8:9], 1
	beq r10, zero, .LBB0_602
.LBB0_606:                              # %scalar.ph140
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_603 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	add.ul r[14:15], r[8:9], r[5:6]
	slli r2, r14, 2
	add.s r4, r7, r2
	loads.w r10, 0(r4)
	.loc	1 720 19                        # parallel-rne.mlir:720:19
	and r14, r10, r28
	.loc	1 722 19                        # parallel-rne.mlir:722:19
	setlt.u r4, r24, r14
	.loc	1 723 19                        # parallel-rne.mlir:723:19
	bneq r4, zero, .LBB0_608
# %bb.607:                              # %scalar.ph140
                                        #   in Loop: Header=BB0_606 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 729 19 is_stmt 1              # parallel-rne.mlir:729:19
	setlt.u r14, r3, r14
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	bneq r14, zero, .LBB0_605
	j .LBB0_609
.LBB0_608:                              #   in Loop: Header=BB0_606 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r10, r23
	.loc	1 729 19 is_stmt 1              # parallel-rne.mlir:729:19
	setlt.u r14, r3, r14
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	bneq r14, zero, .LBB0_605
.LBB0_609:                              # %scalar.ph140
                                        #   in Loop: Header=BB0_606 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r1
	and r4, r4, r26
	j .LBB0_605
.LBB0_610:                              # %vector.body142.preheader
                                        #   in Loop: Header=BB0_603 Depth=2
	zext_int2long r[18:19], zero
	j .LBB0_612
.LBB0_611:                              # %vector.body142
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 717 11 is_stmt 1              # parallel-rne.mlir:717:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 732 13                        # parallel-rne.mlir:732:13
	add.s r8, r11, r10
	.loc	1 717 11                        # parallel-rne.mlir:717:11
	seteq.d r4, r[18:19], r[12:13]
	.loc	1 732 13                        # parallel-rne.mlir:732:13
	stores.w r2, 12(r8)
	stores.w r22, 8(r8)
	stores.w r14, 4(r8)
	stores.w r27, 0(r8)
	.loc	1 717 11                        # parallel-rne.mlir:717:11
	bneq r4, zero, .LBB0_602
.LBB0_612:                              # %vector.body142
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_603 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	add.ul r[8:9], r[18:19], r[5:6]
	slli r10, r8, 2
	add.s r15, r7, r10
	loads.w r4, 12(r15)
	.loc	1 720 19                        # parallel-rne.mlir:720:19
	and r21, r4, r28
	.loc	1 722 19                        # parallel-rne.mlir:722:19
	setlt.u r2, r24, r21
	.loc	1 723 19                        # parallel-rne.mlir:723:19
	bneq r2, zero, .LBB0_614
# %bb.613:                              # %vector.body142
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_615
.LBB0_614:                              #   in Loop: Header=BB0_612 Depth=3
	or r2, r4, r23
.LBB0_615:                              # %vector.body142
                                        #   in Loop: Header=BB0_612 Depth=3
	loads.w r8, 8(r15)
	and r9, r8, r28
	setlt.u r14, r24, r9
	.loc	1 723 19                        # parallel-rne.mlir:723:19
	bneq r14, zero, .LBB0_617
# %bb.616:                              # %vector.body142
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r8, 0
	j .LBB0_618
.LBB0_617:                              #   in Loop: Header=BB0_612 Depth=3
	or r22, r8, r23
.LBB0_618:                              # %vector.body142
                                        #   in Loop: Header=BB0_612 Depth=3
	loads.w r25, 4(r15)
	and r20, r25, r28
	setlt.u r14, r24, r20
	.loc	1 723 19                        # parallel-rne.mlir:723:19
	bneq r14, zero, .LBB0_620
# %bb.619:                              # %vector.body142
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r25, 0
	j .LBB0_621
.LBB0_620:                              #   in Loop: Header=BB0_612 Depth=3
	or r14, r25, r23
.LBB0_621:                              # %vector.body142
                                        #   in Loop: Header=BB0_612 Depth=3
	loads.w r15, 0(r15)
	and r16, r15, r28
	setlt.u r17, r24, r16
	.loc	1 723 19                        # parallel-rne.mlir:723:19
	bneq r17, zero, .LBB0_623
# %bb.622:                              # %vector.body142
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r15, 0
	.loc	1 729 19 is_stmt 1              # parallel-rne.mlir:729:19
	setlt.u r16, r3, r16
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	beq r16, zero, .LBB0_624
	j .LBB0_625
.LBB0_623:                              #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r15, r23
	.loc	1 729 19 is_stmt 1              # parallel-rne.mlir:729:19
	setlt.u r16, r3, r16
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	bneq r16, zero, .LBB0_625
.LBB0_624:                              # %vector.body142
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r15, 16
	andi r16, r16, 1
	add.s r15, r15, r16
	add.s r15, r15, r1
	and r27, r15, r26
.LBB0_625:                              # %vector.body142
                                        #   in Loop: Header=BB0_612 Depth=3
	setlt.u r15, r3, r20
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	beq r15, zero, .LBB0_628
# %bb.626:                              # %vector.body142
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r9
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	beq r9, zero, .LBB0_629
.LBB0_627:                              # %vector.body142
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r21
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	bneq r8, zero, .LBB0_611
	j .LBB0_630
.LBB0_628:                              # %vector.body142
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r25, 16
	andi r14, r14, 1
	add.s r14, r25, r14
	add.s r14, r14, r1
	and r14, r14, r26
	setlt.u r9, r3, r9
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	bneq r9, zero, .LBB0_627
.LBB0_629:                              # %vector.body142
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r1
	and r22, r8, r26
	setlt.u r8, r3, r21
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	bneq r8, zero, .LBB0_611
.LBB0_630:                              # %vector.body142
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r1
	and r2, r2, r26
	j .LBB0_611
.LBB0_631:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 709 7 is_stmt 1               # parallel-rne.mlir:709:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r9
	load.d r[5:6], -136(r30)                # 8-byte Folded Reload
	.loc	1 737 7                         # parallel-rne.mlir:737:7
	loadli.w r2,  -148(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_506
.LBB0_632:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -140(r30)                 # 4-byte Folded Reload
	addli r2, zero, 16
	setlt.u r4, r4, r2
	storeli.w r4, -104(r30)                 # 4-byte Folded Spill
	zext_int2long r[4:5], r2
	.loc	1 737 7                         # parallel-rne.mlir:737:7
	xfence
	mfence { lm, sm, gm }
	j .LBB0_634
.LBB0_633:                              # %middle.block137
                                        #   in Loop: Header=BB0_634 Depth=2
	.loc	1 744 9 is_stmt 1               # parallel-rne.mlir:744:9
	load.d r[4:5], -88(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -96(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_662
.LBB0_634:                              # %.preheader61
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_643 Depth 3
                                        #       Child Loop BB0_637 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	store.d r[4:5], -96(r30)                # 8-byte Folded Spill
	sll.d r[5:6], r[4:5], r2
	.loc	1 745 11 is_stmt 1              # parallel-rne.mlir:745:11
	loadli.w r2,  -104(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_641
# %bb.635:                              # %scalar.ph131.preheader
                                        #   in Loop: Header=BB0_634 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_637
.LBB0_636:                              # %scalar.ph131
                                        #   in Loop: Header=BB0_637 Depth=3
	.loc	1 745 11                        # parallel-rne.mlir:745:11
	load.d r[14:15], -56(r30)               # 8-byte Folded Reload
	.loc	1 760 13 is_stmt 1              # parallel-rne.mlir:760:13
	add.s r2, r11, r2
	stores.w r4, 0(r2)
	.loc	1 745 11                        # parallel-rne.mlir:745:11
	setlt.ul r10, r[8:9], r[14:15]
	addli.d r[8:9], r[8:9], 1
	beq r10, zero, .LBB0_633
.LBB0_637:                              # %scalar.ph131
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_634 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 746 19                        # parallel-rne.mlir:746:19
	add.ul r[14:15], r[8:9], r[5:6]
	slli r2, r14, 2
	add.s r4, r7, r2
	loads.w r10, 0(r4)
	.loc	1 748 19                        # parallel-rne.mlir:748:19
	and r14, r10, r28
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	setlt.u r4, r24, r14
	.loc	1 751 19                        # parallel-rne.mlir:751:19
	bneq r4, zero, .LBB0_639
# %bb.638:                              # %scalar.ph131
                                        #   in Loop: Header=BB0_637 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 757 19 is_stmt 1              # parallel-rne.mlir:757:19
	setlt.u r14, r3, r14
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	bneq r14, zero, .LBB0_636
	j .LBB0_640
.LBB0_639:                              #   in Loop: Header=BB0_637 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r10, r23
	.loc	1 757 19 is_stmt 1              # parallel-rne.mlir:757:19
	setlt.u r14, r3, r14
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	bneq r14, zero, .LBB0_636
.LBB0_640:                              # %scalar.ph131
                                        #   in Loop: Header=BB0_637 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r1
	and r4, r4, r26
	j .LBB0_636
.LBB0_641:                              # %vector.body133.preheader
                                        #   in Loop: Header=BB0_634 Depth=2
	zext_int2long r[18:19], zero
	j .LBB0_643
.LBB0_642:                              # %vector.body133
                                        #   in Loop: Header=BB0_643 Depth=3
	.loc	1 745 11 is_stmt 1              # parallel-rne.mlir:745:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 760 13                        # parallel-rne.mlir:760:13
	add.s r8, r11, r10
	.loc	1 745 11                        # parallel-rne.mlir:745:11
	seteq.d r4, r[18:19], r[12:13]
	.loc	1 760 13                        # parallel-rne.mlir:760:13
	stores.w r2, 12(r8)
	stores.w r22, 8(r8)
	stores.w r14, 4(r8)
	stores.w r27, 0(r8)
	.loc	1 745 11                        # parallel-rne.mlir:745:11
	bneq r4, zero, .LBB0_633
.LBB0_643:                              # %vector.body133
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_634 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 746 19                        # parallel-rne.mlir:746:19
	add.ul r[8:9], r[18:19], r[5:6]
	slli r10, r8, 2
	add.s r15, r7, r10
	loads.w r4, 12(r15)
	.loc	1 748 19                        # parallel-rne.mlir:748:19
	and r21, r4, r28
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	setlt.u r2, r24, r21
	.loc	1 751 19                        # parallel-rne.mlir:751:19
	bneq r2, zero, .LBB0_645
# %bb.644:                              # %vector.body133
                                        #   in Loop: Header=BB0_643 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_646
.LBB0_645:                              #   in Loop: Header=BB0_643 Depth=3
	or r2, r4, r23
.LBB0_646:                              # %vector.body133
                                        #   in Loop: Header=BB0_643 Depth=3
	loads.w r8, 8(r15)
	and r9, r8, r28
	setlt.u r14, r24, r9
	.loc	1 751 19                        # parallel-rne.mlir:751:19
	bneq r14, zero, .LBB0_648
# %bb.647:                              # %vector.body133
                                        #   in Loop: Header=BB0_643 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r8, 0
	j .LBB0_649
.LBB0_648:                              #   in Loop: Header=BB0_643 Depth=3
	or r22, r8, r23
.LBB0_649:                              # %vector.body133
                                        #   in Loop: Header=BB0_643 Depth=3
	loads.w r25, 4(r15)
	and r20, r25, r28
	setlt.u r14, r24, r20
	.loc	1 751 19                        # parallel-rne.mlir:751:19
	bneq r14, zero, .LBB0_651
# %bb.650:                              # %vector.body133
                                        #   in Loop: Header=BB0_643 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r25, 0
	j .LBB0_652
.LBB0_651:                              #   in Loop: Header=BB0_643 Depth=3
	or r14, r25, r23
.LBB0_652:                              # %vector.body133
                                        #   in Loop: Header=BB0_643 Depth=3
	loads.w r15, 0(r15)
	and r16, r15, r28
	setlt.u r17, r24, r16
	.loc	1 751 19                        # parallel-rne.mlir:751:19
	bneq r17, zero, .LBB0_654
# %bb.653:                              # %vector.body133
                                        #   in Loop: Header=BB0_643 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r15, 0
	.loc	1 757 19 is_stmt 1              # parallel-rne.mlir:757:19
	setlt.u r16, r3, r16
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	beq r16, zero, .LBB0_655
	j .LBB0_656
.LBB0_654:                              #   in Loop: Header=BB0_643 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r15, r23
	.loc	1 757 19 is_stmt 1              # parallel-rne.mlir:757:19
	setlt.u r16, r3, r16
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	bneq r16, zero, .LBB0_656
.LBB0_655:                              # %vector.body133
                                        #   in Loop: Header=BB0_643 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r15, 16
	andi r16, r16, 1
	add.s r15, r15, r16
	add.s r15, r15, r1
	and r27, r15, r26
.LBB0_656:                              # %vector.body133
                                        #   in Loop: Header=BB0_643 Depth=3
	setlt.u r15, r3, r20
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	beq r15, zero, .LBB0_659
# %bb.657:                              # %vector.body133
                                        #   in Loop: Header=BB0_643 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r9
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	beq r9, zero, .LBB0_660
.LBB0_658:                              # %vector.body133
                                        #   in Loop: Header=BB0_643 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r21
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	bneq r8, zero, .LBB0_642
	j .LBB0_661
.LBB0_659:                              # %vector.body133
                                        #   in Loop: Header=BB0_643 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r25, 16
	andi r14, r14, 1
	add.s r14, r25, r14
	add.s r14, r14, r1
	and r14, r14, r26
	setlt.u r9, r3, r9
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	bneq r9, zero, .LBB0_658
.LBB0_660:                              # %vector.body133
                                        #   in Loop: Header=BB0_643 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r1
	and r22, r8, r26
	setlt.u r8, r3, r21
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	bneq r8, zero, .LBB0_642
.LBB0_661:                              # %vector.body133
                                        #   in Loop: Header=BB0_643 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r1
	and r2, r2, r26
	j .LBB0_642
.LBB0_662:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 737 7 is_stmt 1               # parallel-rne.mlir:737:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r9
	load.d r[5:6], -136(r30)                # 8-byte Folded Reload
	.loc	1 765 7                         # parallel-rne.mlir:765:7
	addli r2, zero, 5
	bneq r9, r2, .LBB0_507
.LBB0_663:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -140(r30)                 # 4-byte Folded Reload
	addli r2, zero, 16
	setlt.u r2, r4, r2
	storeli.w r2, -96(r30)                  # 4-byte Folded Spill
	addli r2, zero, 20
	.loc	1 765 7                         # parallel-rne.mlir:765:7
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_665
.LBB0_664:                              # %middle.block128
                                        #   in Loop: Header=BB0_665 Depth=2
	.loc	1 772 9 is_stmt 1               # parallel-rne.mlir:772:9
	load.d r[4:5], -80(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -88(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_693
.LBB0_665:                              # %.preheader60
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_674 Depth 3
                                        #       Child Loop BB0_668 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	store.d r[4:5], -88(r30)                # 8-byte Folded Spill
	sll.d r[14:15], r[4:5], r2
	.loc	1 773 11 is_stmt 1              # parallel-rne.mlir:773:11
	loadli.w r2,  -96(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_672
# %bb.666:                              # %scalar.ph122.preheader
                                        #   in Loop: Header=BB0_665 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_668
.LBB0_667:                              # %scalar.ph122
                                        #   in Loop: Header=BB0_668 Depth=3
	.loc	1 773 11                        # parallel-rne.mlir:773:11
	load.d r[8:9], -56(r30)                 # 8-byte Folded Reload
	.loc	1 788 13 is_stmt 1              # parallel-rne.mlir:788:13
	add.s r2, r11, r2
	stores.w r6, 0(r2)
	.loc	1 773 11                        # parallel-rne.mlir:773:11
	setlt.ul r8, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r8, zero, .LBB0_664
.LBB0_668:                              # %scalar.ph122
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_665 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	add.ul r[8:9], r[4:5], r[14:15]
	slli r2, r8, 2
	add.s r6, r7, r2
	loads.w r8, 0(r6)
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	and r9, r8, r28
	.loc	1 778 19                        # parallel-rne.mlir:778:19
	setlt.u r6, r24, r9
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	bneq r6, zero, .LBB0_670
# %bb.669:                              # %scalar.ph122
                                        #   in Loop: Header=BB0_668 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r8, 0
	.loc	1 785 19 is_stmt 1              # parallel-rne.mlir:785:19
	setlt.u r9, r3, r9
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	bneq r9, zero, .LBB0_667
	j .LBB0_671
.LBB0_670:                              #   in Loop: Header=BB0_668 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r8, r23
	.loc	1 785 19 is_stmt 1              # parallel-rne.mlir:785:19
	setlt.u r9, r3, r9
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	bneq r9, zero, .LBB0_667
.LBB0_671:                              # %scalar.ph122
                                        #   in Loop: Header=BB0_668 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r1
	and r6, r6, r26
	j .LBB0_667
.LBB0_672:                              # %vector.body124.preheader
                                        #   in Loop: Header=BB0_665 Depth=2
	zext_int2long r[18:19], zero
	j .LBB0_674
.LBB0_673:                              # %vector.body124
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 773 11 is_stmt 1              # parallel-rne.mlir:773:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 788 13                        # parallel-rne.mlir:788:13
	add.s r5, r11, r6
	.loc	1 773 11                        # parallel-rne.mlir:773:11
	seteq.d r4, r[18:19], r[12:13]
	.loc	1 788 13                        # parallel-rne.mlir:788:13
	stores.w r2, 12(r5)
	stores.w r22, 8(r5)
	stores.w r9, 4(r5)
	stores.w r27, 0(r5)
	.loc	1 773 11                        # parallel-rne.mlir:773:11
	bneq r4, zero, .LBB0_664
.LBB0_674:                              # %vector.body124
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_665 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	add.ul r[4:5], r[18:19], r[14:15]
	slli r6, r4, 2
	add.s r10, r7, r6
	loads.w r4, 12(r10)
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	and r21, r4, r28
	.loc	1 778 19                        # parallel-rne.mlir:778:19
	setlt.u r2, r24, r21
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	bneq r2, zero, .LBB0_676
# %bb.675:                              # %vector.body124
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_677
.LBB0_676:                              #   in Loop: Header=BB0_674 Depth=3
	or r2, r4, r23
.LBB0_677:                              # %vector.body124
                                        #   in Loop: Header=BB0_674 Depth=3
	loads.w r8, 8(r10)
	and r5, r8, r28
	setlt.u r9, r24, r5
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	bneq r9, zero, .LBB0_679
# %bb.678:                              # %vector.body124
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r8, 0
	j .LBB0_680
.LBB0_679:                              #   in Loop: Header=BB0_674 Depth=3
	or r22, r8, r23
.LBB0_680:                              # %vector.body124
                                        #   in Loop: Header=BB0_674 Depth=3
	loads.w r25, 4(r10)
	and r20, r25, r28
	setlt.u r9, r24, r20
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	bneq r9, zero, .LBB0_682
# %bb.681:                              # %vector.body124
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r25, 0
	j .LBB0_683
.LBB0_682:                              #   in Loop: Header=BB0_674 Depth=3
	or r9, r25, r23
.LBB0_683:                              # %vector.body124
                                        #   in Loop: Header=BB0_674 Depth=3
	loads.w r10, 0(r10)
	and r16, r10, r28
	setlt.u r17, r24, r16
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	bneq r17, zero, .LBB0_685
# %bb.684:                              # %vector.body124
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r10, 0
	.loc	1 785 19 is_stmt 1              # parallel-rne.mlir:785:19
	setlt.u r16, r3, r16
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	beq r16, zero, .LBB0_686
	j .LBB0_687
.LBB0_685:                              #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r10, r23
	.loc	1 785 19 is_stmt 1              # parallel-rne.mlir:785:19
	setlt.u r16, r3, r16
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	bneq r16, zero, .LBB0_687
.LBB0_686:                              # %vector.body124
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r10, 16
	andi r16, r16, 1
	add.s r10, r10, r16
	add.s r10, r10, r1
	and r27, r10, r26
.LBB0_687:                              # %vector.body124
                                        #   in Loop: Header=BB0_674 Depth=3
	setlt.u r10, r3, r20
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	beq r10, zero, .LBB0_690
# %bb.688:                              # %vector.body124
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r5
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	beq r5, zero, .LBB0_691
.LBB0_689:                              # %vector.body124
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r21
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	bneq r5, zero, .LBB0_673
	j .LBB0_692
.LBB0_690:                              # %vector.body124
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r1
	and r9, r9, r26
	setlt.u r5, r3, r5
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	bneq r5, zero, .LBB0_689
.LBB0_691:                              # %vector.body124
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r8, 16
	andi r5, r5, 1
	add.s r5, r8, r5
	add.s r5, r5, r1
	and r22, r5, r26
	setlt.u r5, r3, r21
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	bneq r5, zero, .LBB0_673
.LBB0_692:                              # %vector.body124
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r1
	and r2, r2, r26
	j .LBB0_673
.LBB0_693:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 765 7 is_stmt 1               # parallel-rne.mlir:765:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r9
	load.d r[5:6], -136(r30)                # 8-byte Folded Reload
	.loc	1 793 7                         # parallel-rne.mlir:793:7
	addli r2, zero, 6
	bneq r9, r2, .LBB0_725
.LBB0_694:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -140(r30)                 # 4-byte Folded Reload
	addli r2, zero, 16
	setlt.u r2, r4, r2
	storeli.w r2, -88(r30)                  # 4-byte Folded Spill
	addli r2, zero, 24
	.loc	1 793 7                         # parallel-rne.mlir:793:7
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_696
.LBB0_695:                              # %middle.block119
                                        #   in Loop: Header=BB0_696 Depth=2
	.loc	1 800 9 is_stmt 1               # parallel-rne.mlir:800:9
	load.d r[4:5], -72(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -80(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_724
.LBB0_696:                              # %.preheader59
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_705 Depth 3
                                        #       Child Loop BB0_699 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	store.d r[4:5], -80(r30)                # 8-byte Folded Spill
	sll.d r[14:15], r[4:5], r2
	.loc	1 801 11 is_stmt 1              # parallel-rne.mlir:801:11
	loadli.w r2,  -88(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_703
# %bb.697:                              # %scalar.ph113.preheader
                                        #   in Loop: Header=BB0_696 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_699
.LBB0_698:                              # %scalar.ph113
                                        #   in Loop: Header=BB0_699 Depth=3
	.loc	1 801 11                        # parallel-rne.mlir:801:11
	load.d r[8:9], -56(r30)                 # 8-byte Folded Reload
	.loc	1 816 13 is_stmt 1              # parallel-rne.mlir:816:13
	add.s r2, r11, r2
	stores.w r6, 0(r2)
	.loc	1 801 11                        # parallel-rne.mlir:801:11
	setlt.ul r8, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r8, zero, .LBB0_695
.LBB0_699:                              # %scalar.ph113
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_696 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 802 19                        # parallel-rne.mlir:802:19
	add.ul r[8:9], r[4:5], r[14:15]
	slli r2, r8, 2
	add.s r6, r7, r2
	loads.w r8, 0(r6)
	.loc	1 804 19                        # parallel-rne.mlir:804:19
	and r9, r8, r28
	.loc	1 806 19                        # parallel-rne.mlir:806:19
	setlt.u r6, r24, r9
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	bneq r6, zero, .LBB0_701
# %bb.700:                              # %scalar.ph113
                                        #   in Loop: Header=BB0_699 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r8, 0
	.loc	1 813 19 is_stmt 1              # parallel-rne.mlir:813:19
	setlt.u r9, r3, r9
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r9, zero, .LBB0_698
	j .LBB0_702
.LBB0_701:                              #   in Loop: Header=BB0_699 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r8, r23
	.loc	1 813 19 is_stmt 1              # parallel-rne.mlir:813:19
	setlt.u r9, r3, r9
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r9, zero, .LBB0_698
.LBB0_702:                              # %scalar.ph113
                                        #   in Loop: Header=BB0_699 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r1
	and r6, r6, r26
	j .LBB0_698
.LBB0_703:                              # %vector.body115.preheader
                                        #   in Loop: Header=BB0_696 Depth=2
	zext_int2long r[18:19], zero
	j .LBB0_705
.LBB0_704:                              # %vector.body115
                                        #   in Loop: Header=BB0_705 Depth=3
	.loc	1 801 11 is_stmt 1              # parallel-rne.mlir:801:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 816 13                        # parallel-rne.mlir:816:13
	add.s r5, r11, r6
	.loc	1 801 11                        # parallel-rne.mlir:801:11
	seteq.d r4, r[18:19], r[12:13]
	.loc	1 816 13                        # parallel-rne.mlir:816:13
	stores.w r2, 12(r5)
	stores.w r22, 8(r5)
	stores.w r9, 4(r5)
	stores.w r27, 0(r5)
	.loc	1 801 11                        # parallel-rne.mlir:801:11
	bneq r4, zero, .LBB0_695
.LBB0_705:                              # %vector.body115
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_696 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 802 19                        # parallel-rne.mlir:802:19
	add.ul r[4:5], r[18:19], r[14:15]
	slli r6, r4, 2
	add.s r10, r7, r6
	loads.w r4, 12(r10)
	.loc	1 804 19                        # parallel-rne.mlir:804:19
	and r21, r4, r28
	.loc	1 806 19                        # parallel-rne.mlir:806:19
	setlt.u r2, r24, r21
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	bneq r2, zero, .LBB0_707
# %bb.706:                              # %vector.body115
                                        #   in Loop: Header=BB0_705 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r4, 0
	j .LBB0_708
.LBB0_707:                              #   in Loop: Header=BB0_705 Depth=3
	or r2, r4, r23
.LBB0_708:                              # %vector.body115
                                        #   in Loop: Header=BB0_705 Depth=3
	loads.w r8, 8(r10)
	and r5, r8, r28
	setlt.u r9, r24, r5
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	bneq r9, zero, .LBB0_710
# %bb.709:                              # %vector.body115
                                        #   in Loop: Header=BB0_705 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r8, 0
	j .LBB0_711
.LBB0_710:                              #   in Loop: Header=BB0_705 Depth=3
	or r22, r8, r23
.LBB0_711:                              # %vector.body115
                                        #   in Loop: Header=BB0_705 Depth=3
	loads.w r25, 4(r10)
	and r20, r25, r28
	setlt.u r9, r24, r20
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	bneq r9, zero, .LBB0_713
# %bb.712:                              # %vector.body115
                                        #   in Loop: Header=BB0_705 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r25, 0
	j .LBB0_714
.LBB0_713:                              #   in Loop: Header=BB0_705 Depth=3
	or r9, r25, r23
.LBB0_714:                              # %vector.body115
                                        #   in Loop: Header=BB0_705 Depth=3
	loads.w r10, 0(r10)
	and r16, r10, r28
	setlt.u r17, r24, r16
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	bneq r17, zero, .LBB0_716
# %bb.715:                              # %vector.body115
                                        #   in Loop: Header=BB0_705 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r10, 0
	.loc	1 813 19 is_stmt 1              # parallel-rne.mlir:813:19
	setlt.u r16, r3, r16
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	beq r16, zero, .LBB0_717
	j .LBB0_718
.LBB0_716:                              #   in Loop: Header=BB0_705 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r10, r23
	.loc	1 813 19 is_stmt 1              # parallel-rne.mlir:813:19
	setlt.u r16, r3, r16
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r16, zero, .LBB0_718
.LBB0_717:                              # %vector.body115
                                        #   in Loop: Header=BB0_705 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r10, 16
	andi r16, r16, 1
	add.s r10, r10, r16
	add.s r10, r10, r1
	and r27, r10, r26
.LBB0_718:                              # %vector.body115
                                        #   in Loop: Header=BB0_705 Depth=3
	setlt.u r10, r3, r20
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	beq r10, zero, .LBB0_721
# %bb.719:                              # %vector.body115
                                        #   in Loop: Header=BB0_705 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r5
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	beq r5, zero, .LBB0_722
.LBB0_720:                              # %vector.body115
                                        #   in Loop: Header=BB0_705 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r21
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r5, zero, .LBB0_704
	j .LBB0_723
.LBB0_721:                              # %vector.body115
                                        #   in Loop: Header=BB0_705 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r1
	and r9, r9, r26
	setlt.u r5, r3, r5
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r5, zero, .LBB0_720
.LBB0_722:                              # %vector.body115
                                        #   in Loop: Header=BB0_705 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r8, 16
	andi r5, r5, 1
	add.s r5, r8, r5
	add.s r5, r5, r1
	and r22, r5, r26
	setlt.u r5, r3, r21
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r5, zero, .LBB0_704
.LBB0_723:                              # %vector.body115
                                        #   in Loop: Header=BB0_705 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r1
	and r2, r2, r26
	j .LBB0_704
.LBB0_724:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 793 7 is_stmt 1               # parallel-rne.mlir:793:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r9
	load.d r[5:6], -136(r30)                # 8-byte Folded Reload
.LBB0_725:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 821 7                         # parallel-rne.mlir:821:7
	loadli.w r2,  -144(r30)                 # 4-byte Folded Reload
	zext_int2long r[14:15], zero
	store.d r[14:15], -80(r30)              # 8-byte Folded Spill
	beq r2, zero, .LBB0_757
# %bb.726:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -140(r30)                 # 4-byte Folded Reload
	addli r2, zero, 16
	.loc	1 821 7                         # parallel-rne.mlir:821:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r17, r4, r2
	addli r2, zero, 28
	zext_int2long r[4:5], r2
	j .LBB0_728
.LBB0_727:                              # %middle.block
                                        #   in Loop: Header=BB0_728 Depth=2
	.loc	1 828 9 is_stmt 1               # parallel-rne.mlir:828:9
	load.d r[4:5], -56(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -72(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_756
.LBB0_728:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_737 Depth 3
                                        #       Child Loop BB0_731 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	store.d r[4:5], -72(r30)                # 8-byte Folded Spill
	sll.d r[14:15], r[4:5], r2
	.loc	1 829 11 is_stmt 1              # parallel-rne.mlir:829:11
	beq r17, zero, .LBB0_735
# %bb.729:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_728 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_731
.LBB0_730:                              # %scalar.ph
                                        #   in Loop: Header=BB0_731 Depth=3
	.loc	1 829 11                        # parallel-rne.mlir:829:11
	load.d r[8:9], -56(r30)                 # 8-byte Folded Reload
	.loc	1 844 13 is_stmt 1              # parallel-rne.mlir:844:13
	add.s r2, r11, r2
	stores.w r6, 0(r2)
	.loc	1 829 11                        # parallel-rne.mlir:829:11
	setlt.ul r8, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r8, zero, .LBB0_727
.LBB0_731:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_728 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	add.ul r[8:9], r[4:5], r[14:15]
	slli r2, r8, 2
	add.s r6, r7, r2
	loads.w r8, 0(r6)
	.loc	1 832 19                        # parallel-rne.mlir:832:19
	and r9, r8, r28
	.loc	1 834 19                        # parallel-rne.mlir:834:19
	setlt.u r6, r24, r9
	.loc	1 835 19                        # parallel-rne.mlir:835:19
	bneq r6, zero, .LBB0_733
# %bb.732:                              # %scalar.ph
                                        #   in Loop: Header=BB0_731 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r8, 0
	.loc	1 841 19 is_stmt 1              # parallel-rne.mlir:841:19
	setlt.u r9, r3, r9
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	bneq r9, zero, .LBB0_730
	j .LBB0_734
.LBB0_733:                              #   in Loop: Header=BB0_731 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r8, r23
	.loc	1 841 19 is_stmt 1              # parallel-rne.mlir:841:19
	setlt.u r9, r3, r9
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	bneq r9, zero, .LBB0_730
.LBB0_734:                              # %scalar.ph
                                        #   in Loop: Header=BB0_731 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r1
	and r6, r6, r26
	j .LBB0_730
.LBB0_735:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_728 Depth=2
	load.d r[18:19], -80(r30)               # 8-byte Folded Reload
	j .LBB0_737
.LBB0_736:                              # %vector.body
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 829 11 is_stmt 1              # parallel-rne.mlir:829:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 844 13                        # parallel-rne.mlir:844:13
	add.s r8, r11, r21
	.loc	1 829 11                        # parallel-rne.mlir:829:11
	seteq.d r4, r[18:19], r[12:13]
	.loc	1 844 13                        # parallel-rne.mlir:844:13
	stores.w r2, 12(r8)
	stores.w r5, 8(r8)
	stores.w r9, 4(r8)
	stores.w r6, 0(r8)
	.loc	1 829 11                        # parallel-rne.mlir:829:11
	bneq r4, zero, .LBB0_727
.LBB0_737:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_728 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	add.ul r[4:5], r[18:19], r[14:15]
	slli r21, r4, 2
	add.s r6, r7, r21
	loads.w r22, 12(r6)
	.loc	1 832 19                        # parallel-rne.mlir:832:19
	and r25, r22, r28
	.loc	1 834 19                        # parallel-rne.mlir:834:19
	setlt.u r2, r24, r25
	.loc	1 835 19                        # parallel-rne.mlir:835:19
	bneq r2, zero, .LBB0_739
# %bb.738:                              # %vector.body
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r22, 0
	j .LBB0_740
.LBB0_739:                              #   in Loop: Header=BB0_737 Depth=3
	or r2, r22, r23
.LBB0_740:                              # %vector.body
                                        #   in Loop: Header=BB0_737 Depth=3
	loads.w r27, 8(r6)
	and r4, r27, r28
	setlt.u r5, r24, r4
	.loc	1 835 19                        # parallel-rne.mlir:835:19
	bneq r5, zero, .LBB0_742
# %bb.741:                              # %vector.body
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r27, 0
	j .LBB0_743
.LBB0_742:                              #   in Loop: Header=BB0_737 Depth=3
	or r5, r27, r23
.LBB0_743:                              # %vector.body
                                        #   in Loop: Header=BB0_737 Depth=3
	loads.w r8, 4(r6)
	and r10, r8, r28
	setlt.u r9, r24, r10
	.loc	1 835 19                        # parallel-rne.mlir:835:19
	bneq r9, zero, .LBB0_745
# %bb.744:                              # %vector.body
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
	j .LBB0_746
.LBB0_745:                              #   in Loop: Header=BB0_737 Depth=3
	or r9, r8, r23
.LBB0_746:                              # %vector.body
                                        #   in Loop: Header=BB0_737 Depth=3
	loads.w r20, 0(r6)
	and r16, r20, r28
	setlt.u r6, r24, r16
	.loc	1 835 19                        # parallel-rne.mlir:835:19
	bneq r6, zero, .LBB0_748
# %bb.747:                              # %vector.body
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r20, 0
	.loc	1 841 19 is_stmt 1              # parallel-rne.mlir:841:19
	setlt.u r16, r3, r16
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	beq r16, zero, .LBB0_749
	j .LBB0_750
.LBB0_748:                              #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r20, r23
	.loc	1 841 19 is_stmt 1              # parallel-rne.mlir:841:19
	setlt.u r16, r3, r16
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	bneq r16, zero, .LBB0_750
.LBB0_749:                              # %vector.body
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r20, 16
	andi r6, r6, 1
	add.s r6, r20, r6
	add.s r6, r6, r1
	and r6, r6, r26
.LBB0_750:                              # %vector.body
                                        #   in Loop: Header=BB0_737 Depth=3
	setlt.u r10, r3, r10
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	beq r10, zero, .LBB0_753
# %bb.751:                              # %vector.body
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r4
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	beq r4, zero, .LBB0_754
.LBB0_752:                              # %vector.body
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r25
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	bneq r4, zero, .LBB0_736
	j .LBB0_755
.LBB0_753:                              # %vector.body
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r1
	and r9, r8, r26
	setlt.u r4, r3, r4
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	bneq r4, zero, .LBB0_752
.LBB0_754:                              # %vector.body
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r27, 16
	andi r4, r4, 1
	add.s r4, r27, r4
	add.s r4, r4, r1
	and r5, r4, r26
	setlt.u r4, r3, r25
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	bneq r4, zero, .LBB0_736
.LBB0_755:                              # %vector.body
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r1
	and r2, r2, r26
	j .LBB0_736
.LBB0_756:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 821 7 is_stmt 1               # parallel-rne.mlir:821:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r9
	load.d r[5:6], -136(r30)                # 8-byte Folded Reload
.LBB0_757:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 849 7                         # parallel-rne.mlir:849:7
	addli r2, zero, 255
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r10
	.loc	1 849 7                         # parallel-rne.mlir:849:7
	csr_set csr5, r2
	.loc	1 850 7                         # parallel-rne.mlir:850:7
	addli r2, zero, 3
	.loc	1 849 7                         # parallel-rne.mlir:849:7
	sync_core
	.loc	1 850 7                         # parallel-rne.mlir:850:7
	beq r9, r2, .LBB0_5
# %bb.758:                              # %.critedge18
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 859 7                         # parallel-rne.mlir:859:7
	bneq r9, zero, .LBB0_7
# %bb.759:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -188(r30)                 # 4-byte Folded Reload
	.loc	1 859 7                         # parallel-rne.mlir:859:7
	addli r4, zero, 14
	addli r11, zero, 5
	addli r14, zero, 1
	load.d r[15:16], 24(r30)
	sll.d r[4:5], r[5:6], r4
	slli r2, r2, 5
	add.ul r[4:5], r[15:16], r[4:5]
	sext_int2long r[6:7], r2
	addli r2, zero, 21
	xwait r2, 0
	load.d r[8:9], -80(r30)                 # 8-byte Folded Reload
	lock zero, r11
	lui r2, 25
	dma_cfg r14, r14, zero, 0
	ori r2, r2, 704
	min.sl r[8:9], r[6:7], r[8:9]
	addli.d r[8:9], r[8:9], 32
	max.sl r[8:9], r[8:9], r[6:7]
	sub.sl r[6:7], r[8:9], r[6:7]
	load.d r[8:9], -184(r30)                # 8-byte Folded Reload
	dma_cfg zero, r14, zero, 1
	.loc	1 855 13 is_stmt 1              # parallel-rne.mlir:855:13
	min.sl r[6:7], r[6:7], r[12:13]
	.loc	1 859 7                         # parallel-rne.mlir:859:7
	add.ul r[4:5], r[4:5], r[8:9]
	addli r9, zero, 64
	dma_cfg r5, zero, zero, 2
	loadli.w r8,  -60(r30)                  # 4-byte Folded Reload
	load.d r[12:13], -176(r30)              # 8-byte Folded Reload
	add.s r2, r8, r2
	addli r8, r12, 31
	dma_cfg r4, r2, r9, 3
	srli r2, r8, 5
	addli r5, zero, 128
	slli r4, r12, 1
	dma_cfg r9, r5, r2, 4
	andi r2, r4, 62
	addli r4, zero, 512
	dma_cfg r4, r5, r6, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	addli r2, zero, 22
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_6
.LBB0_760:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -148(r30)               # 4-byte Folded Spill
	storeli.w zero, -144(r30)               # 4-byte Folded Spill
	.loc	1 137 7 is_stmt 1               # parallel-rne.mlir:137:7
	beq r4, r9, .LBB0_25
	j .LBB0_26
.LBB0_761:                              # %._crit_edge
	.loc	1 861 5                         # parallel-rne.mlir:861:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_763
# %bb.762:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 861 5                         # parallel-rne.mlir:861:5
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
.LBB0_763:
	.loc	1 862 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:862:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/division-1r9b0y8s" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
