	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-yrb0kr85" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -536
	addli r1, zero, 1
.Ltmp0:
	.loc	1 33 5 prologue_end             # parallel-rne.mlir:33:5
	core_id r9
	addli r30, sp, 472
	xsignal_mode_cfg r1
	beq r9, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r2, 1048575
	.loc	1 33 5                          # parallel-rne.mlir:33:5
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
	.loc	1 33 5                          # parallel-rne.mlir:33:5
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
	addli r2, zero, 11
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
	addli r1, zero, 16
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 5
	addli r2, zero, 3
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 18
	addli r2, zero, 22
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 24
	addli r2, zero, 26
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
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 35 10 is_stmt 1               # parallel-rne.mlir:35:10
	load_param_i r3, 1
	loadli.w r4,  48(r30)
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -20(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -40(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -60(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w zero, -80(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w zero, -100(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w zero, -264(r30)
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	mul.s r1, r2, r1
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	mul.s r4, r1, r4
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	addli r2, r2, -1
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r3, -16(r30)
	storeli.w r3, -12(r30)
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r3, -36(r30)
	storeli.w r3, -32(r30)
	storeli.w r3, -28(r30)
	storeli.w r3, -24(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	storeli.w r3, -48(r30)
	storeli.w r3, -44(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w r3, -76(r30)
	storeli.w r3, -72(r30)
	storeli.w r3, -68(r30)
	storeli.w r3, -64(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w r3, -96(r30)
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	storeli.w r3, -84(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w r3, -260(r30)
	storeli.w r3, -256(r30)
	storeli.w r3, -252(r30)
	storeli.w r3, -248(r30)
	storeli.w r3, -244(r30)
	storeli.w r3, -240(r30)
	storeli.w r3, -236(r30)
	storeli.w r3, -232(r30)
	storeli.w r3, -228(r30)
	storeli.w r3, -224(r30)
	storeli.w r3, -220(r30)
	storeli.w r3, -216(r30)
	storeli.w r3, -212(r30)
	storeli.w r3, -208(r30)
	storeli.w r3, -204(r30)
	storeli.w r3, -200(r30)
	storeli.w r3, -196(r30)
	storeli.w r3, -192(r30)
	storeli.w r3, -188(r30)
	storeli.w r3, -184(r30)
	storeli.w r3, -180(r30)
	storeli.w r3, -176(r30)
	storeli.w r3, -172(r30)
	storeli.w r3, -168(r30)
	storeli.w r3, -164(r30)
	storeli.w r3, -160(r30)
	storeli.w r3, -156(r30)
	storeli.w r3, -152(r30)
	storeli.w r3, -148(r30)
	storeli.w r3, -144(r30)
	storeli.w r3, -140(r30)
	storeli.w r3, -136(r30)
	storeli.w r3, -132(r30)
	storeli.w r3, -128(r30)
	storeli.w r3, -124(r30)
	storeli.w r3, -120(r30)
	storeli.w r3, -116(r30)
	storeli.w r3, -112(r30)
	storeli.w r3, -108(r30)
	storeli.w r3, -104(r30)
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	mul.s r1, r2, r6
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	fmac.s r2, r2, r6
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	min.s r2, r2, r4
	.loc	1 56 5                          # parallel-rne.mlir:56:5
	ble.s r2, r1, .LBB0_929
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 44 11 is_stmt 1               # parallel-rne.mlir:44:11
	sext_int2long r[10:11], r1
	lui r1, 31
	lui r4, 256
	addli r12, zero, 128
	addli r13, zero, 4
	lui r18, 1024
	lui r7, 522240
	lui r8, 1048560
	addli r15, zero, 0
	storeli.w zero, -296(r30)               # 4-byte Folded Spill
	storeli.w zero, -292(r30)               # 4-byte Folded Spill
	store.d r[2:3], -448(r30)               # 8-byte Folded Spill
	ori r2, r1, 4095
	lui r1, 1047552
	store.d r[1:2], -456(r30)               # 8-byte Folded Spill
	lui r2, 7
	lui r1, 1023
	ori r3, r2, 4095
	lui r2, 522239
	ori r1, r1, 4095
	ori r14, r2, 4095
	ori r2, r4, 2048
	storeli.w r1, -364(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	lui r4, 40
	storeli.w r2, -460(r30)                 # 4-byte Folded Spill
	lui r2, 320
	ori r1, r1, 4095
	ori r2, r2, 2048
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	ori r2, r4, 2114
	storeli.w r2, -468(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge17.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1005 7                        # parallel-rne.mlir:1005:7
	addli r2, zero, 15
	xsignal r2, 0
	.loc	1 1006 7                        # parallel-rne.mlir:1006:7
	addli r2, zero, 22
	xsignal r2, 0
	.loc	1 1007 7                        # parallel-rne.mlir:1007:7
	addli r2, zero, 24
	xsignal r2, 0
	.loc	1 1008 7                        # parallel-rne.mlir:1008:7
	addli r2, zero, 26
	xsignal r2, 0
	loadli.w r15,  -404(r30)                # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[10:11], -400(r30)              # 8-byte Folded Reload
	.loc	1 56 5 is_stmt 1                # parallel-rne.mlir:56:5
	load.d r[4:5], -448(r30)                # 8-byte Folded Reload
	addli r12, zero, 128
	addli r13, zero, 4
	addli.d r[10:11], r[10:11], 1
	setlt.sl r2, r[10:11], r[4:5]
	beq r2, zero, .LBB0_929
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_30 Depth 3
                                        #     Child Loop BB0_40 Depth 2
                                        #       Child Loop BB0_49 Depth 3
                                        #       Child Loop BB0_44 Depth 3
                                        #     Child Loop BB0_72 Depth 2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_76 Depth 3
                                        #     Child Loop BB0_104 Depth 2
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_108 Depth 3
                                        #     Child Loop BB0_136 Depth 2
                                        #       Child Loop BB0_145 Depth 3
                                        #       Child Loop BB0_140 Depth 3
                                        #     Child Loop BB0_168 Depth 2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_172 Depth 3
                                        #     Child Loop BB0_200 Depth 2
                                        #       Child Loop BB0_209 Depth 3
                                        #       Child Loop BB0_204 Depth 3
                                        #     Child Loop BB0_232 Depth 2
                                        #       Child Loop BB0_241 Depth 3
                                        #       Child Loop BB0_236 Depth 3
                                        #     Child Loop BB0_264 Depth 2
                                        #       Child Loop BB0_273 Depth 3
                                        #       Child Loop BB0_268 Depth 3
                                        #     Child Loop BB0_301 Depth 2
                                        #     Child Loop BB0_384 Depth 2
                                        #       Child Loop BB0_386 Depth 3
                                        #     Child Loop BB0_309 Depth 2
                                        #       Child Loop BB0_311 Depth 3
                                        #     Child Loop BB0_409 Depth 2
                                        #       Child Loop BB0_411 Depth 3
                                        #     Child Loop BB0_334 Depth 2
                                        #       Child Loop BB0_336 Depth 3
                                        #     Child Loop BB0_434 Depth 2
                                        #       Child Loop BB0_436 Depth 3
                                        #     Child Loop BB0_359 Depth 2
                                        #       Child Loop BB0_361 Depth 3
                                        #     Child Loop BB0_459 Depth 2
                                        #       Child Loop BB0_461 Depth 3
                                        #     Child Loop BB0_483 Depth 2
                                        #       Child Loop BB0_485 Depth 3
                                        #     Child Loop BB0_670 Depth 2
                                        #       Child Loop BB0_691 Depth 3
                                        #       Child Loop BB0_674 Depth 3
                                        #     Child Loop BB0_514 Depth 2
                                        #       Child Loop BB0_535 Depth 3
                                        #       Child Loop BB0_518 Depth 3
                                        #     Child Loop BB0_722 Depth 2
                                        #       Child Loop BB0_743 Depth 3
                                        #       Child Loop BB0_726 Depth 3
                                        #     Child Loop BB0_566 Depth 2
                                        #       Child Loop BB0_587 Depth 3
                                        #       Child Loop BB0_570 Depth 3
                                        #     Child Loop BB0_774 Depth 2
                                        #       Child Loop BB0_795 Depth 3
                                        #       Child Loop BB0_778 Depth 3
                                        #     Child Loop BB0_618 Depth 2
                                        #       Child Loop BB0_639 Depth 3
                                        #       Child Loop BB0_622 Depth 3
                                        #     Child Loop BB0_826 Depth 2
                                        #       Child Loop BB0_847 Depth 3
                                        #       Child Loop BB0_830 Depth 3
                                        #     Child Loop BB0_877 Depth 2
                                        #       Child Loop BB0_898 Depth 3
                                        #       Child Loop BB0_881 Depth 3
	.loc	1 83 7                          # parallel-rne.mlir:83:7
	bneq r9, r13, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  48(r30)
	loadli.w r4,  44(r30)
	store.d r[10:11], -400(r30)             # 8-byte Folded Spill
	addli r5, zero, 0
	addli r6, zero, 0
	div.s r2, r10, r2
	addli r11, zero, 16
	mod.s r10, r15, r13
	addli r15, r15, 1
	storeli.w r15, -404(r30)                # 4-byte Folded Spill
	div.s r2, r2, r4
	slli r16, r10, 16
	div.s r4, r2, r12
	addli r12, zero, 8
	slli r9, r4, 3
	slli r4, r4, 7
	sub.s r11, r11, r9
	sub.s r4, r2, r4
	min.s r11, r11, r12
	mod.s r2, r2, r11
	div.s r4, r4, r11
	add.s r2, r9, r2
	lui r9, 64
	zext_int2long r[19:20], r2
	slli r2, r2, 7
	add.s r15, r16, r9
	zext_int2long r[9:10], r4
	slli r4, r4, 7
	storeli.w r2, -436(r30)                 # 4-byte Folded Spill
	addli r2, zero, 7
	store.d r[19:20], -432(r30)             # 8-byte Folded Spill
	storeli.w r4, -288(r30)                 # 4-byte Folded Spill
	sll.d r[11:12], r[9:10], r2
	addli r2, zero, 18
	sll.d r[9:10], r[19:20], r2
	.loc	1 84 7 is_stmt 1                # parallel-rne.mlir:84:7
	addli r2, zero, 1
	sll.d r[19:20], r[11:12], r2
	load.d r[11:12], -456(r30)              # 8-byte Folded Reload
	store.d r[19:20], -416(r30)             # 8-byte Folded Spill
	and.d r[11:12], r[9:10], r[11:12]
	store.d r[11:12], -272(r30)             # 8-byte Folded Spill
	load.d r[11:12], 8(r30)
	add.ul r[11:12], r[11:12], r[19:20]
	store.d r[11:12], -280(r30)             # 8-byte Folded Spill
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r11, 128
	addli r19, zero, 64
	addli r20, zero, 256
	ori r11, r11, 64
	.loc	1 107 9 is_stmt 1               # parallel-rne.mlir:107:9
	add.s r4, r4, r11
	addli r11, zero, 4
	lock zero, r11
	dma_cfg r22, r22, zero, 0
	dma_cfg zero, r13, zero, 2
	dma_cfg r4, r12, r19, 3
	addli r4, zero, 128
	addli r12, zero, 2
	addli r13, zero, 4096
	dma_cfg r4, r19, r12, 4
	dma_cfg r20, r13, r17, 5
	addli r13, zero, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	lock zero, r13
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 6
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 7
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 8
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 9
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 11
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 12
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 13
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 14
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 15
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 16
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 17
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 18
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 19
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 20
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 21
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 22
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 23
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 24
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 25
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 26
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 27
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 28
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 29
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 30
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 31
	dma_cfg zero, zero, r11, 10
	dma_cfg r22, r22, zero, 0
	dma_cfg r22, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r19, 3
	dma_cfg r4, zero, r12, 4
	dma_cfg r20, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	xsignal r12, 0
.LBB0_11:                               # %.thread49
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 118 15                        # parallel-rne.mlir:118:15
	loadli.w r2,  -264(r30)
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	loadli.w r4,  -100(r30)
	.loc	1 118 15                        # parallel-rne.mlir:118:15
	addli r2, r2, 1
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	addli r4, r4, 1
	.loc	1 118 15                        # parallel-rne.mlir:118:15
	storeli.w r2, -264(r30)
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	storeli.w r4, -100(r30)
.LBB0_12:                               # %.thread52
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 84 7                          # parallel-rne.mlir:84:7
	addli r6, r6, 1
	addli r2, zero, 32
	beq r6, r2, .LBB0_33
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 128 15                        # parallel-rne.mlir:128:15
	addli r5, r5, 1
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_30 Depth 3
	.loc	1 85 15                         # parallel-rne.mlir:85:15
	zext_int2long r[24:25], r6
	.loc	1 86 15                         # parallel-rne.mlir:86:15
	addli r2, zero, 6
	loadli.w r11,  -296(r30)                # 4-byte Folded Reload
	load.d r[20:21], -272(r30)              # 8-byte Folded Reload
	sll.d r[12:13], r[24:25], r2
	loadli.w r2,  -364(r30)                 # 4-byte Folded Reload
	.loc	1 88 15                         # parallel-rne.mlir:88:15
	add.ul r[26:27], r[12:13], r[9:10]
	zext_int2long r[12:13], r2
	.loc	1 89 15                         # parallel-rne.mlir:89:15
	setlt.ul r2, r[12:13], r[26:27]
	.loc	1 93 15                         # parallel-rne.mlir:93:15
	bneq r2, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[20:21], zero
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	loadli.w r4,  -292(r30)                 # 4-byte Folded Reload
	.loc	1 103 15 is_stmt 1              # parallel-rne.mlir:103:15
	addli r2, zero, 4
	.loc	1 101 15                        # parallel-rne.mlir:101:15
	addli r12, zero, 24
	addli r13, zero, 1920
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r19
	.loc	1 103 15                        # parallel-rne.mlir:103:15
	mod.s r2, r11, r2
	zext_int2long r[22:23], r13
	.loc	1 101 15                        # parallel-rne.mlir:101:15
	mod.s r12, r4, r12
	addli r4, r4, 1
	store.d r[22:23], -352(r30)             # 8-byte Folded Spill
	storeli.w r4, -292(r30)                 # 4-byte Folded Spill
	.loc	1 103 15                        # parallel-rne.mlir:103:15
	slli r4, r2, 15
	lui r2, 128
	.loc	1 101 15                        # parallel-rne.mlir:101:15
	slli r13, r12, 15
	.loc	1 103 15                        # parallel-rne.mlir:103:15
	addli r12, r11, 1
	add.s r2, r4, r2
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	storeli.w r12, -296(r30)                # 4-byte Folded Spill
	.loc	1 107 9                         # parallel-rne.mlir:107:9
	addli r12, zero, 2
	beq r19, r12, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r22, zero, 1
	.loc	1 107 9                         # parallel-rne.mlir:107:9
	bneq r19, r22, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r17, zero, 2048
	sub.sl r[12:13], r[26:27], r[20:21]
	.loc	1 107 9                         # parallel-rne.mlir:107:9
	sll.d r[24:25], r[26:27], r22
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r28
	addli r21, zero, 3
	zext_int2long r[19:20], r17
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.sl r[12:13], r[12:13], r[19:20]
	load.d r[19:20], -352(r30)              # 8-byte Folded Reload
	.loc	1 107 9 is_stmt 1               # parallel-rne.mlir:107:9
	xwait r21, 0
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	min.sl r[19:20], r[12:13], r[19:20]
	sub.sl r[19:20], r[19:20], r[12:13]
	.loc	1 107 9                         # parallel-rne.mlir:107:9
	load.d r[12:13], 0(r30)
	addli r17, r19, 128
	add.ul r[12:13], r[12:13], r[24:25]
	blt.s r21, r11, .LBB0_10
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r20, zero, 5
	addli r19, zero, 2
	.loc	1 107 9                         # parallel-rne.mlir:107:9
	addli r11, zero, 4
	lock zero, r20
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 6
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 7
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 8
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 9
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 11
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 12
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 13
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 14
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 15
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 16
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 17
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 18
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 19
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 20
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 21
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 22
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 23
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 24
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 25
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 26
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 27
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 28
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 29
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 30
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 31
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 64
	dma_cfg r22, r22, zero, 0
	dma_cfg r22, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r11, 3
	addli r11, zero, 128
	dma_cfg r11, zero, r19, 4
	addli r19, zero, 256
	dma_cfg r19, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	unlock r20
	j .LBB0_10
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r4, zero, 2
	.loc	1 108 9 is_stmt 1               # parallel-rne.mlir:108:9
	addli r11, zero, 5
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r28
	.loc	1 108 9                         # parallel-rne.mlir:108:9
	xwait r4, 0
	xwait r11, 0
	lock zero, zero
	addli r11, zero, 64
	ds_cfg r4, zero, 0
	addli r4, zero, 128
	ds_cfg r11, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r4, zero, 13
	shuffle_batch r13, r2, r11, 1
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	addli r2, zero, 4
	xsignal r2, 0
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	loadli.w r11,  -100(r30)
	addli r12, zero, 4
	.loc	1 118 15                        # parallel-rne.mlir:118:15
	loadli.w r2,  -264(r30)
	addli r4, zero, 40
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	mod.s r12, r11, r12
	.loc	1 118 15                        # parallel-rne.mlir:118:15
	mod.s r4, r2, r4
	addli r2, r2, 1
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	addli r17, r11, 1
	.loc	1 118 15                        # parallel-rne.mlir:118:15
	storeli.w r2, -264(r30)
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	lui r2, 160
	storeli.w r17, -100(r30)
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	addli r17, zero, 7
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	slli r12, r12, 15
	.loc	1 118 15                        # parallel-rne.mlir:118:15
	slli r4, r4, 15
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	add.s r2, r12, r2
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	beq r19, r17, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r17, zero, 6
	bneq r19, r17, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r17, zero, 18
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	load.d r[21:22], -280(r30)              # 8-byte Folded Reload
	addli r13, zero, 7
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r28
	addli r23, zero, 3
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	sll.d r[19:20], r[24:25], r17
	xwait r13, 0
	add.ul r[24:25], r[21:22], r[19:20]
	blt.s r23, r11, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r20, zero, 5
	addli r19, zero, 1
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	addli r4, zero, 2
	addli r11, zero, 4
	addli r21, zero, 64
	lock zero, r20
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 6
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 12
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 13
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 16
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 19
	dma_cfg zero, zero, r17, 10
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
	addli r4, zero, 128
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r21, 3
	dma_cfg r4, zero, r11, 4
	addli r4, zero, 512
	dma_cfg r4, zero, r21, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r20
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r4, 160
	addli r19, zero, 1
	addli r22, zero, 64
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	addli r11, zero, 4096
	addli r21, zero, 5
	addli r20, zero, 6
	ori r4, r4, 64
	add.s r4, r12, r4
	addli r12, zero, 4
	lock zero, r12
	dma_cfg r19, r19, zero, 0
	dma_cfg zero, r25, zero, 2
	dma_cfg r4, r24, r22, 3
	addli r4, zero, 128
	addli r24, zero, 512
	dma_cfg r4, r22, r12, 4
	dma_cfg r24, r11, r22, 5
	addli r11, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r21
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 8
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 9
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 11
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 12
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 13
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 14
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 15
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 16
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 17
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 19
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 20
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 21
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 22
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 23
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 24
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 25
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 26
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 27
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 28
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 29
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 30
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 31
	dma_cfg zero, zero, r11, 10
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r22, 3
	dma_cfg r4, zero, r12, 4
	dma_cfg r24, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r21
	xsignal r20, 0
	.loc	1 125 9 is_stmt 1               # parallel-rne.mlir:125:9
	j .LBB0_12
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=2
	addli r11, zero, 6
	addli r12, zero, 64
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r28
	.loc	1 125 9                         # parallel-rne.mlir:125:9
	xwait r11, 0
	addli r11, zero, 9
	xwait r11, 0
	addli r11, zero, 2
	lock zero, zero
	ds_cfg r11, zero, 0
	addli r11, zero, 128
	ds_cfg r11, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg r11, zero, 13
	shuffle_coa r4, r2, r12, 2
	addli r2, zero, 7
	unlock zero
	xsignal r2, 0
	addli r2, zero, 8
	xsignal r2, 0
	j .LBB0_12
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 4
	.loc	1 127 9 is_stmt 1               # parallel-rne.mlir:127:9
	bneq r19, r2, .LBB0_32
# %bb.28:                               #   in Loop: Header=BB0_14 Depth=2
	xwait r2, 0
	addli r2, zero, 8
	addli r11, zero, 1
	addli r12, zero, 0
	addli r19, zero, 128
	addli r20, zero, 4
	addli r21, zero, 64
	xwait r2, 0
	addli r2, zero, 1
	beq r5, zero, .LBB0_30
.LBB0_29:                               # %.preheader90
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r17, r12, 14
	slli r12, r12, 8
	lock zero, r2
	mm_cfg r21, r21, r19, 0
	or r17, r17, r4
	or r12, r12, r15
	mm_cfg r20, r20, r2, 2
	mm_acc r12, r13, r17, 8
	andi r17, r11, 1
	addli r12, zero, 1
	addli r11, zero, 0
	unlock r2
	bneq r17, zero, .LBB0_29
	j .LBB0_31
.LBB0_30:                               # %.preheader89
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r17, r12, 14
	slli r12, r12, 8
	lock zero, r2
	mm_cfg r21, r21, r19, 0
	or r17, r17, r4
	or r12, r12, r15
	mm_cfg r20, r20, r2, 2
	mm r12, r13, r17, 8
	andi r17, r11, 1
	addli r12, zero, 1
	addli r11, zero, 0
	unlock r2
	bneq r17, zero, .LBB0_30
.LBB0_31:                               # %.thread52.thread121
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r2, zero, 5
	.loc	1 84 7                          # parallel-rne.mlir:84:7
	addli r6, r6, 1
	.loc	1 127 9                         # parallel-rne.mlir:127:9
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 84 7                          # parallel-rne.mlir:84:7
	addli r2, zero, 32
	bneq r6, r2, .LBB0_13
	j .LBB0_34
.LBB0_32:                               # %.thread52.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r6, r6, 1
	addli r2, zero, 32
	bneq r6, r2, .LBB0_13
	j .LBB0_35
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	addli r2, zero, 4
	bneq r28, r2, .LBB0_35
.LBB0_34:                               # %.thread123
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xsignal r2, 0
.LBB0_35:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	loadli.w r2,  -80(r30)
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	addli r4, zero, 3
	storeli.w r2, -376(r30)                 # 4-byte Folded Spill
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	addli r2, r2, 1
	storeli.w r2, -80(r30)
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	bneq r2, r4, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 10
	xwait r4, 0
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	addli r4, zero, 16
	xwait r4, 0
.LBB0_37:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 128
	.loc	1 151 7 is_stmt 1               # parallel-rne.mlir:151:7
	xfence
	.loc	1 152 7                         # parallel-rne.mlir:152:7
	mfence { lm, sm, gm }
	zext_int2long r[22:23], r4
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	addli r4, zero, 255
	csr_set csr5, r4
	addli r4, zero, 15
	zext_int2long r[4:5], r4
	store.d r[4:5], -360(r30)               # 8-byte Folded Spill
	addli r4, zero, 127
	zext_int2long r[4:5], r4
	store.d r[4:5], -272(r30)               # 8-byte Folded Spill
	addli r4, zero, 7
	addli r5, zero, 1
	sync_core
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	bneq r2, zero, .LBB0_69
# %bb.38:                               #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[5:6], zero
	mfence { lm, sm, gm }
	j .LBB0_40
.LBB0_39:                               # %middle.block392
                                        #   in Loop: Header=BB0_40 Depth=2
	.loc	1 161 9                         # parallel-rne.mlir:161:9
	load.d r[4:5], -360(r30)                # 8-byte Folded Reload
	load.d r[9:10], -280(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[5:6], r[4:5], 0
	addli r4, zero, 7
	beq r2, zero, .LBB0_68
.LBB0_40:                               # %.preheader88
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_49 Depth 3
                                        #       Child Loop BB0_44 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[9:10], r[5:6], r4
	.loc	1 162 11 is_stmt 1              # parallel-rne.mlir:162:11
	store.d r[5:6], -280(r30)               # 8-byte Folded Spill
	bneq r16, r15, .LBB0_47
# %bb.41:                               # %scalar.ph386.preheader
                                        #   in Loop: Header=BB0_40 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_44
.LBB0_42:                               # %scalar.ph386
                                        #   in Loop: Header=BB0_44 Depth=3
	srli r4, r13, 16
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r3
	and r4, r4, r8
.LBB0_43:                               # %scalar.ph386
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 162 11                        # parallel-rne.mlir:162:11
	load.d r[5:6], -272(r30)                # 8-byte Folded Reload
	.loc	1 177 13 is_stmt 1              # parallel-rne.mlir:177:13
	add.s r2, r16, r2
	stores.w r4, 0(r2)
	.loc	1 162 11                        # parallel-rne.mlir:162:11
	setlt.ul r5, r[11:12], r[5:6]
	addli.d r[11:12], r[11:12], 1
	beq r5, zero, .LBB0_39
.LBB0_44:                               # %scalar.ph386
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	add.ul r[4:5], r[11:12], r[9:10]
	slli r2, r4, 2
	add.s r4, r15, r2
	loads.w r13, 0(r4)
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	and r5, r13, r1
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	setlt.u r4, r7, r5
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	bneq r4, zero, .LBB0_46
# %bb.45:                               # %scalar.ph386
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r13, 0
	.loc	1 174 19 is_stmt 1              # parallel-rne.mlir:174:19
	setlt.u r5, r14, r5
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r5, zero, .LBB0_43
	j .LBB0_42
.LBB0_46:                               #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r13, r18
	.loc	1 174 19 is_stmt 1              # parallel-rne.mlir:174:19
	setlt.u r5, r14, r5
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r5, zero, .LBB0_43
	j .LBB0_42
.LBB0_47:                               # %vector.body388.preheader
                                        #   in Loop: Header=BB0_40 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[19:20], zero
	j .LBB0_49
.LBB0_48:                               # %vector.body388
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 162 11 is_stmt 1              # parallel-rne.mlir:162:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 177 13                        # parallel-rne.mlir:177:13
	add.s r2, r16, r2
	.loc	1 162 11                        # parallel-rne.mlir:162:11
	seteq.d r4, r[19:20], r[22:23]
	.loc	1 177 13                        # parallel-rne.mlir:177:13
	stores.w r13, 12(r2)
	stores.w r26, 8(r2)
	stores.w r12, 4(r2)
	stores.w r28, 0(r2)
	.loc	1 162 11                        # parallel-rne.mlir:162:11
	bneq r4, zero, .LBB0_39
.LBB0_49:                               # %vector.body388
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	add.ul r[4:5], r[19:20], r[9:10]
	slli r2, r4, 2
	add.s r25, r15, r2
	loads.w r21, 12(r25)
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	and r4, r21, r1
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	setlt.u r5, r7, r4
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	bneq r5, zero, .LBB0_51
# %bb.50:                               # %vector.body388
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r21, 0
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_49 Depth=3
	or r13, r21, r18
.LBB0_52:                               # %vector.body388
                                        #   in Loop: Header=BB0_49 Depth=3
	loads.w r27, 8(r25)
	and r11, r27, r1
	setlt.u r5, r7, r11
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	bneq r5, zero, .LBB0_54
# %bb.53:                               # %vector.body388
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_49 Depth=3
	or r26, r27, r18
.LBB0_55:                               # %vector.body388
                                        #   in Loop: Header=BB0_49 Depth=3
	loads.w r24, 4(r25)
	and r17, r24, r1
	setlt.u r5, r7, r17
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	bneq r5, zero, .LBB0_57
# %bb.56:                               # %vector.body388
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r24, 0
	j .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_49 Depth=3
	or r12, r24, r18
.LBB0_58:                               # %vector.body388
                                        #   in Loop: Header=BB0_49 Depth=3
	loads.w r25, 0(r25)
	and r5, r25, r1
	setlt.u r6, r7, r5
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	bneq r6, zero, .LBB0_60
# %bb.59:                               # %vector.body388
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r25, 0
	.loc	1 174 19 is_stmt 1              # parallel-rne.mlir:174:19
	setlt.u r5, r14, r5
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	beq r5, zero, .LBB0_61
	j .LBB0_62
.LBB0_60:                               #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r28, r25, r18
	.loc	1 174 19 is_stmt 1              # parallel-rne.mlir:174:19
	setlt.u r5, r14, r5
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r5, zero, .LBB0_62
.LBB0_61:                               # %vector.body388
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r25, 16
	andi r5, r5, 1
	add.s r5, r25, r5
	add.s r5, r5, r3
	and r28, r5, r8
.LBB0_62:                               # %vector.body388
                                        #   in Loop: Header=BB0_49 Depth=3
	setlt.u r5, r14, r17
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r5, zero, .LBB0_65
# %bb.63:                               # %vector.body388
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r24, 16
	andi r5, r5, 1
	add.s r5, r24, r5
	add.s r5, r5, r3
	and r12, r5, r8
	setlt.u r5, r14, r11
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	beq r5, zero, .LBB0_66
.LBB0_64:                               # %vector.body388
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r4
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r4, zero, .LBB0_48
	j .LBB0_67
.LBB0_65:                               # %vector.body388
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r14, r11
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r5, zero, .LBB0_64
.LBB0_66:                               # %vector.body388
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r3
	and r26, r5, r8
	setlt.u r4, r14, r4
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r4, zero, .LBB0_48
.LBB0_67:                               # %vector.body388
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r3
	and r13, r4, r8
	j .LBB0_48
.LBB0_68:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r5, zero, 1
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	mfence { sm }
.LBB0_69:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 31
	zext_int2long r[9:10], r6
	.loc	1 182 7 is_stmt 1               # parallel-rne.mlir:182:7
	store.d r[9:10], -344(r30)              # 8-byte Folded Spill
	bneq r2, r5, .LBB0_101
# %bb.70:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 182 7                         # parallel-rne.mlir:182:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r2
	j .LBB0_72
.LBB0_71:                               # %middle.block383
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 189 9 is_stmt 1               # parallel-rne.mlir:189:9
	load.d r[4:5], -344(r30)                # 8-byte Folded Reload
	load.d r[9:10], -280(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[5:6], r[4:5], 0
	addli r4, zero, 7
	beq r2, zero, .LBB0_100
.LBB0_72:                               # %.preheader87
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_76 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[19:20], r[5:6], r4
	store.d r[5:6], -280(r30)               # 8-byte Folded Spill
	.loc	1 190 11 is_stmt 1              # parallel-rne.mlir:190:11
	bneq r16, r15, .LBB0_79
# %bb.73:                               # %scalar.ph377.preheader
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_76
.LBB0_74:                               # %scalar.ph377
                                        #   in Loop: Header=BB0_76 Depth=3
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r3
	and r6, r6, r8
.LBB0_75:                               # %scalar.ph377
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 190 11                        # parallel-rne.mlir:190:11
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	.loc	1 205 13 is_stmt 1              # parallel-rne.mlir:205:13
	add.s r2, r16, r2
	stores.w r6, 0(r2)
	.loc	1 190 11                        # parallel-rne.mlir:190:11
	setlt.ul r9, r[4:5], r[9:10]
	addli.d r[4:5], r[4:5], 1
	beq r9, zero, .LBB0_71
.LBB0_76:                               # %scalar.ph377
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	add.ul r[9:10], r[4:5], r[19:20]
	slli r2, r9, 2
	add.s r6, r15, r2
	loads.w r11, 0(r6)
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	and r9, r11, r1
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	setlt.u r6, r7, r9
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r6, zero, .LBB0_78
# %bb.77:                               # %scalar.ph377
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r11, 0
	.loc	1 202 19 is_stmt 1              # parallel-rne.mlir:202:19
	setlt.u r9, r14, r9
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r9, zero, .LBB0_75
	j .LBB0_74
.LBB0_78:                               #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r11, r18
	.loc	1 202 19 is_stmt 1              # parallel-rne.mlir:202:19
	setlt.u r9, r14, r9
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r9, zero, .LBB0_75
	j .LBB0_74
.LBB0_79:                               # %vector.body379.preheader
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[5:6], zero
	j .LBB0_81
.LBB0_80:                               # %vector.body379
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 190 11 is_stmt 1              # parallel-rne.mlir:190:11
	addli.d r[5:6], r[5:6], 4
	.loc	1 205 13                        # parallel-rne.mlir:205:13
	add.s r2, r16, r2
	.loc	1 190 11                        # parallel-rne.mlir:190:11
	seteq.d r4, r[5:6], r[22:23]
	.loc	1 205 13                        # parallel-rne.mlir:205:13
	stores.w r13, 12(r2)
	stores.w r26, 8(r2)
	stores.w r12, 4(r2)
	stores.w r28, 0(r2)
	.loc	1 190 11                        # parallel-rne.mlir:190:11
	bneq r4, zero, .LBB0_71
.LBB0_81:                               # %vector.body379
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	add.ul r[9:10], r[5:6], r[19:20]
	slli r2, r9, 2
	add.s r25, r15, r2
	loads.w r21, 12(r25)
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	and r4, r21, r1
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	setlt.u r9, r7, r4
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r9, zero, .LBB0_83
# %bb.82:                               # %vector.body379
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r21, 0
	j .LBB0_84
.LBB0_83:                               #   in Loop: Header=BB0_81 Depth=3
	or r13, r21, r18
.LBB0_84:                               # %vector.body379
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r27, 8(r25)
	and r11, r27, r1
	setlt.u r9, r7, r11
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r9, zero, .LBB0_86
# %bb.85:                               # %vector.body379
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_81 Depth=3
	or r26, r27, r18
.LBB0_87:                               # %vector.body379
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r24, 4(r25)
	and r17, r24, r1
	setlt.u r9, r7, r17
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r9, zero, .LBB0_89
# %bb.88:                               # %vector.body379
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r24, 0
	j .LBB0_90
.LBB0_89:                               #   in Loop: Header=BB0_81 Depth=3
	or r12, r24, r18
.LBB0_90:                               # %vector.body379
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r25, 0(r25)
	and r9, r25, r1
	setlt.u r10, r7, r9
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r10, zero, .LBB0_92
# %bb.91:                               # %vector.body379
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r25, 0
	.loc	1 202 19 is_stmt 1              # parallel-rne.mlir:202:19
	setlt.u r9, r14, r9
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	beq r9, zero, .LBB0_93
	j .LBB0_94
.LBB0_92:                               #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r28, r25, r18
	.loc	1 202 19 is_stmt 1              # parallel-rne.mlir:202:19
	setlt.u r9, r14, r9
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r9, zero, .LBB0_94
.LBB0_93:                               # %vector.body379
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r3
	and r28, r9, r8
.LBB0_94:                               # %vector.body379
                                        #   in Loop: Header=BB0_81 Depth=3
	setlt.u r9, r14, r17
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r9, zero, .LBB0_97
# %bb.95:                               # %vector.body379
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r12, r9, r8
	setlt.u r9, r14, r11
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	beq r9, zero, .LBB0_98
.LBB0_96:                               # %vector.body379
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r4
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r4, zero, .LBB0_80
	j .LBB0_99
.LBB0_97:                               # %vector.body379
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r14, r11
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r9, zero, .LBB0_96
.LBB0_98:                               # %vector.body379
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r27, 16
	andi r9, r9, 1
	add.s r9, r27, r9
	add.s r9, r9, r3
	and r26, r9, r8
	setlt.u r4, r14, r4
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r4, zero, .LBB0_80
.LBB0_99:                               # %vector.body379
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r3
	and r13, r4, r8
	j .LBB0_80
.LBB0_100:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 182 7                         # parallel-rne.mlir:182:7
	mfence { sm }
.LBB0_101:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 47
	zext_int2long r[5:6], r5
	.loc	1 210 7 is_stmt 1               # parallel-rne.mlir:210:7
	store.d r[5:6], -336(r30)               # 8-byte Folded Spill
	addli r5, zero, 2
	bneq r2, r5, .LBB0_133
# %bb.102:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 210 7                         # parallel-rne.mlir:210:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r2
	j .LBB0_104
.LBB0_103:                              # %middle.block374
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 217 9 is_stmt 1               # parallel-rne.mlir:217:9
	load.d r[4:5], -336(r30)                # 8-byte Folded Reload
	load.d r[9:10], -280(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[5:6], r[4:5], 0
	addli r4, zero, 7
	beq r2, zero, .LBB0_132
.LBB0_104:                              # %.preheader86
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_108 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[19:20], r[5:6], r4
	store.d r[5:6], -280(r30)               # 8-byte Folded Spill
	.loc	1 218 11 is_stmt 1              # parallel-rne.mlir:218:11
	bneq r16, r15, .LBB0_111
# %bb.105:                              # %scalar.ph368.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_108
.LBB0_106:                              # %scalar.ph368
                                        #   in Loop: Header=BB0_108 Depth=3
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r3
	and r6, r6, r8
.LBB0_107:                              # %scalar.ph368
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 218 11                        # parallel-rne.mlir:218:11
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	.loc	1 233 13 is_stmt 1              # parallel-rne.mlir:233:13
	add.s r2, r16, r2
	stores.w r6, 0(r2)
	.loc	1 218 11                        # parallel-rne.mlir:218:11
	setlt.ul r9, r[4:5], r[9:10]
	addli.d r[4:5], r[4:5], 1
	beq r9, zero, .LBB0_103
.LBB0_108:                              # %scalar.ph368
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	add.ul r[9:10], r[4:5], r[19:20]
	slli r2, r9, 2
	add.s r6, r15, r2
	loads.w r11, 0(r6)
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	and r9, r11, r1
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	setlt.u r6, r7, r9
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r6, zero, .LBB0_110
# %bb.109:                              # %scalar.ph368
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r11, 0
	.loc	1 230 19 is_stmt 1              # parallel-rne.mlir:230:19
	setlt.u r9, r14, r9
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r9, zero, .LBB0_107
	j .LBB0_106
.LBB0_110:                              #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r11, r18
	.loc	1 230 19 is_stmt 1              # parallel-rne.mlir:230:19
	setlt.u r9, r14, r9
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r9, zero, .LBB0_107
	j .LBB0_106
.LBB0_111:                              # %vector.body370.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[5:6], zero
	j .LBB0_113
.LBB0_112:                              # %vector.body370
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 218 11 is_stmt 1              # parallel-rne.mlir:218:11
	addli.d r[5:6], r[5:6], 4
	.loc	1 233 13                        # parallel-rne.mlir:233:13
	add.s r2, r16, r2
	.loc	1 218 11                        # parallel-rne.mlir:218:11
	seteq.d r4, r[5:6], r[22:23]
	.loc	1 233 13                        # parallel-rne.mlir:233:13
	stores.w r13, 12(r2)
	stores.w r26, 8(r2)
	stores.w r12, 4(r2)
	stores.w r28, 0(r2)
	.loc	1 218 11                        # parallel-rne.mlir:218:11
	bneq r4, zero, .LBB0_103
.LBB0_113:                              # %vector.body370
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	add.ul r[9:10], r[5:6], r[19:20]
	slli r2, r9, 2
	add.s r25, r15, r2
	loads.w r21, 12(r25)
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	and r4, r21, r1
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	setlt.u r9, r7, r4
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r9, zero, .LBB0_115
# %bb.114:                              # %vector.body370
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r21, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_113 Depth=3
	or r13, r21, r18
.LBB0_116:                              # %vector.body370
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r27, 8(r25)
	and r11, r27, r1
	setlt.u r9, r7, r11
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r9, zero, .LBB0_118
# %bb.117:                              # %vector.body370
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_113 Depth=3
	or r26, r27, r18
.LBB0_119:                              # %vector.body370
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r24, 4(r25)
	and r17, r24, r1
	setlt.u r9, r7, r17
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r9, zero, .LBB0_121
# %bb.120:                              # %vector.body370
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r24, 0
	j .LBB0_122
.LBB0_121:                              #   in Loop: Header=BB0_113 Depth=3
	or r12, r24, r18
.LBB0_122:                              # %vector.body370
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r25, 0(r25)
	and r9, r25, r1
	setlt.u r10, r7, r9
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r10, zero, .LBB0_124
# %bb.123:                              # %vector.body370
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r25, 0
	.loc	1 230 19 is_stmt 1              # parallel-rne.mlir:230:19
	setlt.u r9, r14, r9
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	beq r9, zero, .LBB0_125
	j .LBB0_126
.LBB0_124:                              #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r28, r25, r18
	.loc	1 230 19 is_stmt 1              # parallel-rne.mlir:230:19
	setlt.u r9, r14, r9
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r9, zero, .LBB0_126
.LBB0_125:                              # %vector.body370
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r3
	and r28, r9, r8
.LBB0_126:                              # %vector.body370
                                        #   in Loop: Header=BB0_113 Depth=3
	setlt.u r9, r14, r17
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r9, zero, .LBB0_129
# %bb.127:                              # %vector.body370
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r12, r9, r8
	setlt.u r9, r14, r11
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	beq r9, zero, .LBB0_130
.LBB0_128:                              # %vector.body370
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r4
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r4, zero, .LBB0_112
	j .LBB0_131
.LBB0_129:                              # %vector.body370
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r14, r11
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r9, zero, .LBB0_128
.LBB0_130:                              # %vector.body370
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r27, 16
	andi r9, r9, 1
	add.s r9, r27, r9
	add.s r9, r9, r3
	and r26, r9, r8
	setlt.u r4, r14, r4
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r4, zero, .LBB0_112
.LBB0_131:                              # %vector.body370
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r3
	and r13, r4, r8
	j .LBB0_112
.LBB0_132:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 210 7                         # parallel-rne.mlir:210:7
	mfence { sm }
.LBB0_133:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 63
	zext_int2long r[5:6], r5
	.loc	1 238 7 is_stmt 1               # parallel-rne.mlir:238:7
	store.d r[5:6], -328(r30)               # 8-byte Folded Spill
	addli r5, zero, 3
	bneq r2, r5, .LBB0_165
# %bb.134:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 238 7                         # parallel-rne.mlir:238:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r2
	j .LBB0_136
.LBB0_135:                              # %middle.block365
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 245 9 is_stmt 1               # parallel-rne.mlir:245:9
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	load.d r[9:10], -280(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[5:6], r[4:5], 0
	addli r4, zero, 7
	beq r2, zero, .LBB0_164
.LBB0_136:                              # %.preheader85
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_145 Depth 3
                                        #       Child Loop BB0_140 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[19:20], r[5:6], r4
	store.d r[5:6], -280(r30)               # 8-byte Folded Spill
	.loc	1 246 11 is_stmt 1              # parallel-rne.mlir:246:11
	bneq r16, r15, .LBB0_143
# %bb.137:                              # %scalar.ph359.preheader
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_140
.LBB0_138:                              # %scalar.ph359
                                        #   in Loop: Header=BB0_140 Depth=3
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r3
	and r6, r6, r8
.LBB0_139:                              # %scalar.ph359
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	.loc	1 261 13 is_stmt 1              # parallel-rne.mlir:261:13
	add.s r2, r16, r2
	stores.w r6, 0(r2)
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	setlt.ul r9, r[4:5], r[9:10]
	addli.d r[4:5], r[4:5], 1
	beq r9, zero, .LBB0_135
.LBB0_140:                              # %scalar.ph359
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_136 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	add.ul r[9:10], r[4:5], r[19:20]
	slli r2, r9, 2
	add.s r6, r15, r2
	loads.w r11, 0(r6)
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	and r9, r11, r1
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	setlt.u r6, r7, r9
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r6, zero, .LBB0_142
# %bb.141:                              # %scalar.ph359
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r11, 0
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r9, r14, r9
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r9, zero, .LBB0_139
	j .LBB0_138
.LBB0_142:                              #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r11, r18
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r9, r14, r9
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r9, zero, .LBB0_139
	j .LBB0_138
.LBB0_143:                              # %vector.body361.preheader
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[5:6], zero
	j .LBB0_145
.LBB0_144:                              # %vector.body361
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 246 11 is_stmt 1              # parallel-rne.mlir:246:11
	addli.d r[5:6], r[5:6], 4
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	add.s r2, r16, r2
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	seteq.d r4, r[5:6], r[22:23]
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	stores.w r13, 12(r2)
	stores.w r26, 8(r2)
	stores.w r12, 4(r2)
	stores.w r28, 0(r2)
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	bneq r4, zero, .LBB0_135
.LBB0_145:                              # %vector.body361
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_136 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	add.ul r[9:10], r[5:6], r[19:20]
	slli r2, r9, 2
	add.s r25, r15, r2
	loads.w r21, 12(r25)
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	and r4, r21, r1
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	setlt.u r9, r7, r4
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r9, zero, .LBB0_147
# %bb.146:                              # %vector.body361
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r21, 0
	j .LBB0_148
.LBB0_147:                              #   in Loop: Header=BB0_145 Depth=3
	or r13, r21, r18
.LBB0_148:                              # %vector.body361
                                        #   in Loop: Header=BB0_145 Depth=3
	loads.w r27, 8(r25)
	and r11, r27, r1
	setlt.u r9, r7, r11
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r9, zero, .LBB0_150
# %bb.149:                              # %vector.body361
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_145 Depth=3
	or r26, r27, r18
.LBB0_151:                              # %vector.body361
                                        #   in Loop: Header=BB0_145 Depth=3
	loads.w r24, 4(r25)
	and r17, r24, r1
	setlt.u r9, r7, r17
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r9, zero, .LBB0_153
# %bb.152:                              # %vector.body361
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r24, 0
	j .LBB0_154
.LBB0_153:                              #   in Loop: Header=BB0_145 Depth=3
	or r12, r24, r18
.LBB0_154:                              # %vector.body361
                                        #   in Loop: Header=BB0_145 Depth=3
	loads.w r25, 0(r25)
	and r9, r25, r1
	setlt.u r10, r7, r9
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r10, zero, .LBB0_156
# %bb.155:                              # %vector.body361
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r25, 0
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r9, r14, r9
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r9, zero, .LBB0_157
	j .LBB0_158
.LBB0_156:                              #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r28, r25, r18
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r9, r14, r9
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r9, zero, .LBB0_158
.LBB0_157:                              # %vector.body361
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r3
	and r28, r9, r8
.LBB0_158:                              # %vector.body361
                                        #   in Loop: Header=BB0_145 Depth=3
	setlt.u r9, r14, r17
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r9, zero, .LBB0_161
# %bb.159:                              # %vector.body361
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r12, r9, r8
	setlt.u r9, r14, r11
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r9, zero, .LBB0_162
.LBB0_160:                              # %vector.body361
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r4
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r4, zero, .LBB0_144
	j .LBB0_163
.LBB0_161:                              # %vector.body361
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r14, r11
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r9, zero, .LBB0_160
.LBB0_162:                              # %vector.body361
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r27, 16
	andi r9, r9, 1
	add.s r9, r27, r9
	add.s r9, r9, r3
	and r26, r9, r8
	setlt.u r4, r14, r4
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r4, zero, .LBB0_144
.LBB0_163:                              # %vector.body361
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r3
	and r13, r4, r8
	j .LBB0_144
.LBB0_164:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 238 7                         # parallel-rne.mlir:238:7
	mfence { sm }
.LBB0_165:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 79
	zext_int2long r[5:6], r5
	.loc	1 266 7 is_stmt 1               # parallel-rne.mlir:266:7
	store.d r[5:6], -320(r30)               # 8-byte Folded Spill
	addli r5, zero, 4
	bneq r2, r5, .LBB0_197
# %bb.166:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r2
	j .LBB0_168
.LBB0_167:                              # %middle.block356
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 273 9 is_stmt 1               # parallel-rne.mlir:273:9
	load.d r[4:5], -320(r30)                # 8-byte Folded Reload
	load.d r[9:10], -280(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[5:6], r[4:5], 0
	addli r4, zero, 7
	beq r2, zero, .LBB0_196
.LBB0_168:                              # %.preheader84
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_172 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[19:20], r[5:6], r4
	store.d r[5:6], -280(r30)               # 8-byte Folded Spill
	.loc	1 274 11 is_stmt 1              # parallel-rne.mlir:274:11
	bneq r16, r15, .LBB0_175
# %bb.169:                              # %scalar.ph350.preheader
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_172
.LBB0_170:                              # %scalar.ph350
                                        #   in Loop: Header=BB0_172 Depth=3
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r3
	and r6, r6, r8
.LBB0_171:                              # %scalar.ph350
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	.loc	1 289 13 is_stmt 1              # parallel-rne.mlir:289:13
	add.s r2, r16, r2
	stores.w r6, 0(r2)
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	setlt.ul r9, r[4:5], r[9:10]
	addli.d r[4:5], r[4:5], 1
	beq r9, zero, .LBB0_167
.LBB0_172:                              # %scalar.ph350
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	add.ul r[9:10], r[4:5], r[19:20]
	slli r2, r9, 2
	add.s r6, r15, r2
	loads.w r11, 0(r6)
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	and r9, r11, r1
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	setlt.u r6, r7, r9
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r6, zero, .LBB0_174
# %bb.173:                              # %scalar.ph350
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r11, 0
	.loc	1 286 19 is_stmt 1              # parallel-rne.mlir:286:19
	setlt.u r9, r14, r9
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r9, zero, .LBB0_171
	j .LBB0_170
.LBB0_174:                              #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r11, r18
	.loc	1 286 19 is_stmt 1              # parallel-rne.mlir:286:19
	setlt.u r9, r14, r9
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r9, zero, .LBB0_171
	j .LBB0_170
.LBB0_175:                              # %vector.body352.preheader
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[5:6], zero
	j .LBB0_177
.LBB0_176:                              # %vector.body352
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 274 11 is_stmt 1              # parallel-rne.mlir:274:11
	addli.d r[5:6], r[5:6], 4
	.loc	1 289 13                        # parallel-rne.mlir:289:13
	add.s r2, r16, r2
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	seteq.d r4, r[5:6], r[22:23]
	.loc	1 289 13                        # parallel-rne.mlir:289:13
	stores.w r13, 12(r2)
	stores.w r26, 8(r2)
	stores.w r12, 4(r2)
	stores.w r28, 0(r2)
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	bneq r4, zero, .LBB0_167
.LBB0_177:                              # %vector.body352
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	add.ul r[9:10], r[5:6], r[19:20]
	slli r2, r9, 2
	add.s r25, r15, r2
	loads.w r21, 12(r25)
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	and r4, r21, r1
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	setlt.u r9, r7, r4
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r9, zero, .LBB0_179
# %bb.178:                              # %vector.body352
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r21, 0
	j .LBB0_180
.LBB0_179:                              #   in Loop: Header=BB0_177 Depth=3
	or r13, r21, r18
.LBB0_180:                              # %vector.body352
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r27, 8(r25)
	and r11, r27, r1
	setlt.u r9, r7, r11
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r9, zero, .LBB0_182
# %bb.181:                              # %vector.body352
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_177 Depth=3
	or r26, r27, r18
.LBB0_183:                              # %vector.body352
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r24, 4(r25)
	and r17, r24, r1
	setlt.u r9, r7, r17
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r9, zero, .LBB0_185
# %bb.184:                              # %vector.body352
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r24, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_177 Depth=3
	or r12, r24, r18
.LBB0_186:                              # %vector.body352
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r25, 0(r25)
	and r9, r25, r1
	setlt.u r10, r7, r9
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r10, zero, .LBB0_188
# %bb.187:                              # %vector.body352
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r25, 0
	.loc	1 286 19 is_stmt 1              # parallel-rne.mlir:286:19
	setlt.u r9, r14, r9
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	beq r9, zero, .LBB0_189
	j .LBB0_190
.LBB0_188:                              #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r28, r25, r18
	.loc	1 286 19 is_stmt 1              # parallel-rne.mlir:286:19
	setlt.u r9, r14, r9
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r9, zero, .LBB0_190
.LBB0_189:                              # %vector.body352
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r3
	and r28, r9, r8
.LBB0_190:                              # %vector.body352
                                        #   in Loop: Header=BB0_177 Depth=3
	setlt.u r9, r14, r17
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r9, zero, .LBB0_193
# %bb.191:                              # %vector.body352
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r12, r9, r8
	setlt.u r9, r14, r11
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	beq r9, zero, .LBB0_194
.LBB0_192:                              # %vector.body352
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r4
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r4, zero, .LBB0_176
	j .LBB0_195
.LBB0_193:                              # %vector.body352
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r14, r11
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r9, zero, .LBB0_192
.LBB0_194:                              # %vector.body352
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r27, 16
	andi r9, r9, 1
	add.s r9, r27, r9
	add.s r9, r9, r3
	and r26, r9, r8
	setlt.u r4, r14, r4
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r4, zero, .LBB0_176
.LBB0_195:                              # %vector.body352
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r3
	and r13, r4, r8
	j .LBB0_176
.LBB0_196:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	mfence { sm }
.LBB0_197:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 95
	zext_int2long r[5:6], r5
	.loc	1 294 7 is_stmt 1               # parallel-rne.mlir:294:7
	store.d r[5:6], -312(r30)               # 8-byte Folded Spill
	addli r5, zero, 5
	bneq r2, r5, .LBB0_229
# %bb.198:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 294 7                         # parallel-rne.mlir:294:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r2
	j .LBB0_200
.LBB0_199:                              # %middle.block347
                                        #   in Loop: Header=BB0_200 Depth=2
	.loc	1 301 9 is_stmt 1               # parallel-rne.mlir:301:9
	load.d r[4:5], -312(r30)                # 8-byte Folded Reload
	load.d r[9:10], -280(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[5:6], r[4:5], 0
	addli r4, zero, 7
	beq r2, zero, .LBB0_228
.LBB0_200:                              # %.preheader83
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_209 Depth 3
                                        #       Child Loop BB0_204 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[19:20], r[5:6], r4
	store.d r[5:6], -280(r30)               # 8-byte Folded Spill
	.loc	1 302 11 is_stmt 1              # parallel-rne.mlir:302:11
	bneq r16, r15, .LBB0_207
# %bb.201:                              # %scalar.ph341.preheader
                                        #   in Loop: Header=BB0_200 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_204
.LBB0_202:                              # %scalar.ph341
                                        #   in Loop: Header=BB0_204 Depth=3
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r3
	and r6, r6, r8
.LBB0_203:                              # %scalar.ph341
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	.loc	1 317 13 is_stmt 1              # parallel-rne.mlir:317:13
	add.s r2, r16, r2
	stores.w r6, 0(r2)
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	setlt.ul r9, r[4:5], r[9:10]
	addli.d r[4:5], r[4:5], 1
	beq r9, zero, .LBB0_199
.LBB0_204:                              # %scalar.ph341
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_200 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	add.ul r[9:10], r[4:5], r[19:20]
	slli r2, r9, 2
	add.s r6, r15, r2
	loads.w r11, 0(r6)
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	and r9, r11, r1
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	setlt.u r6, r7, r9
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r6, zero, .LBB0_206
# %bb.205:                              # %scalar.ph341
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r11, 0
	.loc	1 314 19 is_stmt 1              # parallel-rne.mlir:314:19
	setlt.u r9, r14, r9
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r9, zero, .LBB0_203
	j .LBB0_202
.LBB0_206:                              #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r11, r18
	.loc	1 314 19 is_stmt 1              # parallel-rne.mlir:314:19
	setlt.u r9, r14, r9
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r9, zero, .LBB0_203
	j .LBB0_202
.LBB0_207:                              # %vector.body343.preheader
                                        #   in Loop: Header=BB0_200 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[5:6], zero
	j .LBB0_209
.LBB0_208:                              # %vector.body343
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 302 11 is_stmt 1              # parallel-rne.mlir:302:11
	addli.d r[5:6], r[5:6], 4
	.loc	1 317 13                        # parallel-rne.mlir:317:13
	add.s r2, r16, r2
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	seteq.d r4, r[5:6], r[22:23]
	.loc	1 317 13                        # parallel-rne.mlir:317:13
	stores.w r13, 12(r2)
	stores.w r26, 8(r2)
	stores.w r12, 4(r2)
	stores.w r28, 0(r2)
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	bneq r4, zero, .LBB0_199
.LBB0_209:                              # %vector.body343
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_200 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	add.ul r[9:10], r[5:6], r[19:20]
	slli r2, r9, 2
	add.s r25, r15, r2
	loads.w r21, 12(r25)
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	and r4, r21, r1
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	setlt.u r9, r7, r4
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r9, zero, .LBB0_211
# %bb.210:                              # %vector.body343
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r21, 0
	j .LBB0_212
.LBB0_211:                              #   in Loop: Header=BB0_209 Depth=3
	or r13, r21, r18
.LBB0_212:                              # %vector.body343
                                        #   in Loop: Header=BB0_209 Depth=3
	loads.w r27, 8(r25)
	and r11, r27, r1
	setlt.u r9, r7, r11
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r9, zero, .LBB0_214
# %bb.213:                              # %vector.body343
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_215
.LBB0_214:                              #   in Loop: Header=BB0_209 Depth=3
	or r26, r27, r18
.LBB0_215:                              # %vector.body343
                                        #   in Loop: Header=BB0_209 Depth=3
	loads.w r24, 4(r25)
	and r17, r24, r1
	setlt.u r9, r7, r17
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r9, zero, .LBB0_217
# %bb.216:                              # %vector.body343
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r24, 0
	j .LBB0_218
.LBB0_217:                              #   in Loop: Header=BB0_209 Depth=3
	or r12, r24, r18
.LBB0_218:                              # %vector.body343
                                        #   in Loop: Header=BB0_209 Depth=3
	loads.w r25, 0(r25)
	and r9, r25, r1
	setlt.u r10, r7, r9
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r10, zero, .LBB0_220
# %bb.219:                              # %vector.body343
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r25, 0
	.loc	1 314 19 is_stmt 1              # parallel-rne.mlir:314:19
	setlt.u r9, r14, r9
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	beq r9, zero, .LBB0_221
	j .LBB0_222
.LBB0_220:                              #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r28, r25, r18
	.loc	1 314 19 is_stmt 1              # parallel-rne.mlir:314:19
	setlt.u r9, r14, r9
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r9, zero, .LBB0_222
.LBB0_221:                              # %vector.body343
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r3
	and r28, r9, r8
.LBB0_222:                              # %vector.body343
                                        #   in Loop: Header=BB0_209 Depth=3
	setlt.u r9, r14, r17
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r9, zero, .LBB0_225
# %bb.223:                              # %vector.body343
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r12, r9, r8
	setlt.u r9, r14, r11
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	beq r9, zero, .LBB0_226
.LBB0_224:                              # %vector.body343
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r4
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r4, zero, .LBB0_208
	j .LBB0_227
.LBB0_225:                              # %vector.body343
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r14, r11
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r9, zero, .LBB0_224
.LBB0_226:                              # %vector.body343
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r27, 16
	andi r9, r9, 1
	add.s r9, r27, r9
	add.s r9, r9, r3
	and r26, r9, r8
	setlt.u r4, r14, r4
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r4, zero, .LBB0_208
.LBB0_227:                              # %vector.body343
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r3
	and r13, r4, r8
	j .LBB0_208
.LBB0_228:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 294 7                         # parallel-rne.mlir:294:7
	mfence { sm }
.LBB0_229:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 111
	zext_int2long r[5:6], r5
	.loc	1 322 7 is_stmt 1               # parallel-rne.mlir:322:7
	store.d r[5:6], -304(r30)               # 8-byte Folded Spill
	addli r5, zero, 6
	bneq r2, r5, .LBB0_261
# %bb.230:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 322 7                         # parallel-rne.mlir:322:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r2
	j .LBB0_232
.LBB0_231:                              # %middle.block338
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 329 9 is_stmt 1               # parallel-rne.mlir:329:9
	load.d r[4:5], -304(r30)                # 8-byte Folded Reload
	load.d r[9:10], -280(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[5:6], r[4:5], 0
	addli r4, zero, 7
	beq r2, zero, .LBB0_260
.LBB0_232:                              # %.preheader82
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_241 Depth 3
                                        #       Child Loop BB0_236 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[19:20], r[5:6], r4
	store.d r[5:6], -280(r30)               # 8-byte Folded Spill
	.loc	1 330 11 is_stmt 1              # parallel-rne.mlir:330:11
	bneq r16, r15, .LBB0_239
# %bb.233:                              # %scalar.ph332.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_236
.LBB0_234:                              # %scalar.ph332
                                        #   in Loop: Header=BB0_236 Depth=3
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r3
	and r6, r6, r8
.LBB0_235:                              # %scalar.ph332
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 330 11                        # parallel-rne.mlir:330:11
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	.loc	1 345 13 is_stmt 1              # parallel-rne.mlir:345:13
	add.s r2, r16, r2
	stores.w r6, 0(r2)
	.loc	1 330 11                        # parallel-rne.mlir:330:11
	setlt.ul r9, r[4:5], r[9:10]
	addli.d r[4:5], r[4:5], 1
	beq r9, zero, .LBB0_231
.LBB0_236:                              # %scalar.ph332
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	add.ul r[9:10], r[4:5], r[19:20]
	slli r2, r9, 2
	add.s r6, r15, r2
	loads.w r11, 0(r6)
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	and r9, r11, r1
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	setlt.u r6, r7, r9
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r6, zero, .LBB0_238
# %bb.237:                              # %scalar.ph332
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r11, 0
	.loc	1 342 19 is_stmt 1              # parallel-rne.mlir:342:19
	setlt.u r9, r14, r9
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r9, zero, .LBB0_235
	j .LBB0_234
.LBB0_238:                              #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r11, r18
	.loc	1 342 19 is_stmt 1              # parallel-rne.mlir:342:19
	setlt.u r9, r14, r9
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r9, zero, .LBB0_235
	j .LBB0_234
.LBB0_239:                              # %vector.body334.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[5:6], zero
	j .LBB0_241
.LBB0_240:                              # %vector.body334
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 330 11 is_stmt 1              # parallel-rne.mlir:330:11
	addli.d r[5:6], r[5:6], 4
	.loc	1 345 13                        # parallel-rne.mlir:345:13
	add.s r2, r16, r2
	.loc	1 330 11                        # parallel-rne.mlir:330:11
	seteq.d r4, r[5:6], r[22:23]
	.loc	1 345 13                        # parallel-rne.mlir:345:13
	stores.w r13, 12(r2)
	stores.w r26, 8(r2)
	stores.w r12, 4(r2)
	stores.w r28, 0(r2)
	.loc	1 330 11                        # parallel-rne.mlir:330:11
	bneq r4, zero, .LBB0_231
.LBB0_241:                              # %vector.body334
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	add.ul r[9:10], r[5:6], r[19:20]
	slli r2, r9, 2
	add.s r25, r15, r2
	loads.w r21, 12(r25)
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	and r4, r21, r1
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	setlt.u r9, r7, r4
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r9, zero, .LBB0_243
# %bb.242:                              # %vector.body334
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r21, 0
	j .LBB0_244
.LBB0_243:                              #   in Loop: Header=BB0_241 Depth=3
	or r13, r21, r18
.LBB0_244:                              # %vector.body334
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r27, 8(r25)
	and r11, r27, r1
	setlt.u r9, r7, r11
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r9, zero, .LBB0_246
# %bb.245:                              # %vector.body334
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_247
.LBB0_246:                              #   in Loop: Header=BB0_241 Depth=3
	or r26, r27, r18
.LBB0_247:                              # %vector.body334
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r24, 4(r25)
	and r17, r24, r1
	setlt.u r9, r7, r17
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r9, zero, .LBB0_249
# %bb.248:                              # %vector.body334
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r24, 0
	j .LBB0_250
.LBB0_249:                              #   in Loop: Header=BB0_241 Depth=3
	or r12, r24, r18
.LBB0_250:                              # %vector.body334
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r25, 0(r25)
	and r9, r25, r1
	setlt.u r10, r7, r9
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r10, zero, .LBB0_252
# %bb.251:                              # %vector.body334
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r25, 0
	.loc	1 342 19 is_stmt 1              # parallel-rne.mlir:342:19
	setlt.u r9, r14, r9
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	beq r9, zero, .LBB0_253
	j .LBB0_254
.LBB0_252:                              #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r28, r25, r18
	.loc	1 342 19 is_stmt 1              # parallel-rne.mlir:342:19
	setlt.u r9, r14, r9
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r9, zero, .LBB0_254
.LBB0_253:                              # %vector.body334
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r3
	and r28, r9, r8
.LBB0_254:                              # %vector.body334
                                        #   in Loop: Header=BB0_241 Depth=3
	setlt.u r9, r14, r17
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r9, zero, .LBB0_257
# %bb.255:                              # %vector.body334
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r12, r9, r8
	setlt.u r9, r14, r11
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	beq r9, zero, .LBB0_258
.LBB0_256:                              # %vector.body334
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r4
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r4, zero, .LBB0_240
	j .LBB0_259
.LBB0_257:                              # %vector.body334
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r14, r11
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r9, zero, .LBB0_256
.LBB0_258:                              # %vector.body334
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r27, 16
	andi r9, r9, 1
	add.s r9, r27, r9
	add.s r9, r9, r3
	and r26, r9, r8
	setlt.u r4, r14, r4
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r4, zero, .LBB0_240
.LBB0_259:                              # %vector.body334
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r3
	and r13, r4, r8
	j .LBB0_240
.LBB0_260:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 322 7                         # parallel-rne.mlir:322:7
	mfence { sm }
.LBB0_261:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 350 7                         # parallel-rne.mlir:350:7
	bneq r2, r4, .LBB0_293
# %bb.262:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 350 7                         # parallel-rne.mlir:350:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r2
	j .LBB0_264
.LBB0_263:                              # %middle.block329
                                        #   in Loop: Header=BB0_264 Depth=2
	.loc	1 357 9 is_stmt 1               # parallel-rne.mlir:357:9
	load.d r[4:5], -272(r30)                # 8-byte Folded Reload
	load.d r[9:10], -280(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[5:6], r[4:5], 0
	addli r4, zero, 7
	beq r2, zero, .LBB0_292
.LBB0_264:                              # %.preheader81
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_273 Depth 3
                                        #       Child Loop BB0_268 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[19:20], r[5:6], r4
	store.d r[5:6], -280(r30)               # 8-byte Folded Spill
	.loc	1 358 11 is_stmt 1              # parallel-rne.mlir:358:11
	bneq r16, r15, .LBB0_271
# %bb.265:                              # %scalar.ph323.preheader
                                        #   in Loop: Header=BB0_264 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_268
.LBB0_266:                              # %scalar.ph323
                                        #   in Loop: Header=BB0_268 Depth=3
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r3
	and r6, r6, r8
.LBB0_267:                              # %scalar.ph323
                                        #   in Loop: Header=BB0_268 Depth=3
	.loc	1 358 11                        # parallel-rne.mlir:358:11
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	.loc	1 373 13 is_stmt 1              # parallel-rne.mlir:373:13
	add.s r2, r16, r2
	stores.w r6, 0(r2)
	.loc	1 358 11                        # parallel-rne.mlir:358:11
	setlt.ul r9, r[4:5], r[9:10]
	addli.d r[4:5], r[4:5], 1
	beq r9, zero, .LBB0_263
.LBB0_268:                              # %scalar.ph323
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_264 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	add.ul r[9:10], r[4:5], r[19:20]
	slli r2, r9, 2
	add.s r6, r15, r2
	loads.w r11, 0(r6)
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	and r9, r11, r1
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	setlt.u r6, r7, r9
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r6, zero, .LBB0_270
# %bb.269:                              # %scalar.ph323
                                        #   in Loop: Header=BB0_268 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r11, 0
	.loc	1 370 19 is_stmt 1              # parallel-rne.mlir:370:19
	setlt.u r9, r14, r9
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	bneq r9, zero, .LBB0_267
	j .LBB0_266
.LBB0_270:                              #   in Loop: Header=BB0_268 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r11, r18
	.loc	1 370 19 is_stmt 1              # parallel-rne.mlir:370:19
	setlt.u r9, r14, r9
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	bneq r9, zero, .LBB0_267
	j .LBB0_266
.LBB0_271:                              # %vector.body325.preheader
                                        #   in Loop: Header=BB0_264 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[5:6], zero
	j .LBB0_273
.LBB0_272:                              # %vector.body325
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 358 11 is_stmt 1              # parallel-rne.mlir:358:11
	addli.d r[5:6], r[5:6], 4
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	add.s r2, r16, r2
	.loc	1 358 11                        # parallel-rne.mlir:358:11
	seteq.d r4, r[5:6], r[22:23]
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	stores.w r13, 12(r2)
	stores.w r26, 8(r2)
	stores.w r12, 4(r2)
	stores.w r28, 0(r2)
	.loc	1 358 11                        # parallel-rne.mlir:358:11
	bneq r4, zero, .LBB0_263
.LBB0_273:                              # %vector.body325
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_264 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	add.ul r[9:10], r[5:6], r[19:20]
	slli r2, r9, 2
	add.s r25, r15, r2
	loads.w r21, 12(r25)
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	and r4, r21, r1
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	setlt.u r9, r7, r4
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r9, zero, .LBB0_275
# %bb.274:                              # %vector.body325
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r21, 0
	j .LBB0_276
.LBB0_275:                              #   in Loop: Header=BB0_273 Depth=3
	or r13, r21, r18
.LBB0_276:                              # %vector.body325
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r27, 8(r25)
	and r11, r27, r1
	setlt.u r9, r7, r11
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r9, zero, .LBB0_278
# %bb.277:                              # %vector.body325
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_279
.LBB0_278:                              #   in Loop: Header=BB0_273 Depth=3
	or r26, r27, r18
.LBB0_279:                              # %vector.body325
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r24, 4(r25)
	and r17, r24, r1
	setlt.u r9, r7, r17
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r9, zero, .LBB0_281
# %bb.280:                              # %vector.body325
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r24, 0
	j .LBB0_282
.LBB0_281:                              #   in Loop: Header=BB0_273 Depth=3
	or r12, r24, r18
.LBB0_282:                              # %vector.body325
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r25, 0(r25)
	and r9, r25, r1
	setlt.u r10, r7, r9
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r10, zero, .LBB0_284
# %bb.283:                              # %vector.body325
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r25, 0
	.loc	1 370 19 is_stmt 1              # parallel-rne.mlir:370:19
	setlt.u r9, r14, r9
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	beq r9, zero, .LBB0_285
	j .LBB0_286
.LBB0_284:                              #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r28, r25, r18
	.loc	1 370 19 is_stmt 1              # parallel-rne.mlir:370:19
	setlt.u r9, r14, r9
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	bneq r9, zero, .LBB0_286
.LBB0_285:                              # %vector.body325
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r3
	and r28, r9, r8
.LBB0_286:                              # %vector.body325
                                        #   in Loop: Header=BB0_273 Depth=3
	setlt.u r9, r14, r17
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	bneq r9, zero, .LBB0_289
# %bb.287:                              # %vector.body325
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r12, r9, r8
	setlt.u r9, r14, r11
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	beq r9, zero, .LBB0_290
.LBB0_288:                              # %vector.body325
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r4
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	bneq r4, zero, .LBB0_272
	j .LBB0_291
.LBB0_289:                              # %vector.body325
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r14, r11
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	bneq r9, zero, .LBB0_288
.LBB0_290:                              # %vector.body325
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r27, 16
	andi r9, r9, 1
	add.s r9, r27, r9
	add.s r9, r9, r3
	and r26, r9, r8
	setlt.u r4, r14, r4
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	bneq r4, zero, .LBB0_272
.LBB0_291:                              # %vector.body325
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r3
	and r13, r4, r8
	j .LBB0_272
.LBB0_292:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 350 7 is_stmt 1               # parallel-rne.mlir:350:7
	mfence { sm }
.LBB0_293:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -288(r30)                 # 4-byte Folded Reload
	load.d r[9:10], -352(r30)               # 8-byte Folded Reload
	addli r11, zero, 7
	zext_int2long r[4:5], r2
	.loc	1 378 7 is_stmt 1               # parallel-rne.mlir:378:7
	addli r2, zero, 255
	min.ul r[9:10], r[4:5], r[9:10]
	addli.d r[9:10], r[9:10], 128
	max.ul r[9:10], r[9:10], r[4:5]
	sub.sl r[4:5], r[9:10], r[4:5]
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r9
	min.ul r[4:5], r[4:5], r[22:23]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	store.d r[4:5], -424(r30)               # 8-byte Folded Spill
	csr_set csr5, r2
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	addli r2, zero, 3
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	sync_core
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	bneq r9, r2, .LBB0_295
# %bb.294:                              # %.thread54.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	addli r5, zero, 7
	addli r15, zero, 64
	xsignal r2, 0
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	addli r2, zero, 12
	xsignal r2, 0
	.loc	1 385 13                        # parallel-rne.mlir:385:13
	loadli.w r2,  -60(r30)
	addli r4, r2, 1
	storeli.w r4, -60(r30)
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	addli r4, zero, 13
	xwait r4, 0
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	addli r4, zero, 22
	xwait r4, 0
	j .LBB0_305
.LBB0_295:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r10,  -376(r30)                # 4-byte Folded Reload
	addli r2, zero, 4
	.loc	1 382 7 is_stmt 1               # parallel-rne.mlir:382:7
	addli r5, zero, 1
	addli r15, zero, 64
	mod.s r2, r10, r2
	slli r4, r2, 9
	lui r2, 192
	add.s r2, r4, r2
	bneq r9, r5, .LBB0_299
# %bb.296:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r13, r10, 0
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	load.d r[5:6], 16(r30)
	load.d r[9:10], -416(r30)               # 8-byte Folded Reload
	addli r12, zero, 18
	addli r17, zero, 3
	xwait r12, 0
	add.ul r[5:6], r[5:6], r[9:10]
	addli r9, zero, 1
	blt.s r17, r13, .LBB0_298
# %bb.297:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r13, zero, 5
	addli r10, zero, 4
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	lock zero, r13
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 2
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 6
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 8
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 1
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
	addli r9, zero, 16
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 17
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 19
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 20
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 21
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 22
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 23
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 24
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 25
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 26
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 27
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 28
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 29
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 30
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 31
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 128
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r15, 3
	dma_cfg r9, zero, r10, 4
	addli r9, zero, 1
	addli r10, zero, 512
	dma_cfg r10, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
.LBB0_298:                              # %.thread54.thread65
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r10, zero, 4
	addli r11, zero, 1
	addli r13, zero, 5
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	lock zero, r10
	dma_cfg r9, r9, zero, 0
	lui r9, 192
	dma_cfg zero, r6, zero, 2
	load.d r[19:20], -424(r30)              # 8-byte Folded Reload
	ori r9, r9, 64
	add.s r4, r4, r9
	addli r9, r19, 31
	dma_cfg r4, r5, r15, 3
	slli r5, r19, 1
	addli r6, zero, 128
	addli r19, zero, 512
	srli r4, r9, 5
	addli r9, zero, 256
	andi r5, r5, 62
	dma_cfg r6, r15, r4, 4
	dma_cfg r19, r9, r11, 5
	addli r9, zero, 2
	dma_cfg zero, zero, r5, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r13
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 6
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 17
	dma_cfg zero, zero, r13, 10
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
	addli r9, zero, 16
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 19
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 20
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 21
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 22
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 23
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 24
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 25
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 26
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 27
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 28
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 29
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 30
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 31
	dma_cfg zero, zero, r9, 10
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r9
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r15, 3
	dma_cfg r6, zero, r4, 4
	dma_cfg r19, zero, r11, 5
	dma_cfg zero, zero, r5, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	addli r5, zero, 7
	dma_cfg zero, zero, zero, 8
	unlock r13
	xsignal r10, 0
	.loc	1 385 13                        # parallel-rne.mlir:385:13
	loadli.w r2,  -60(r30)
	j .LBB0_304
.LBB0_299:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 383 7                         # parallel-rne.mlir:383:7
	addli r4, zero, 5
	bneq r9, r4, .LBB0_303
# %bb.300:                              #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 12
	addli r4, zero, 0
	addli r6, zero, 18
	lui r10, 16
	xwait r5, 0
	addli r5, zero, 17
	xwait r5, 0
	addli r5, zero, 2
	lock zero, r5
	lui r5, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r5, r5, zero, 0
	addli r5, zero, 127
	ew_cfg zero, r5, zero, 2
	addli r5, zero, 1
	ew_cfg r5, zero, zero, 3
.LBB0_301:                              #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r16, r4
	addli r4, r4, 512
	dsmadd r5, r5, r2, 0
	bneq r4, r10, .LBB0_301
# %bb.302:                              # %.thread54
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 2
	unlock r2
	addli r2, zero, 13
	xsignal r2, 0
	xsignal r6, 0
.LBB0_303:                              # %.critedge6
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 385 13                        # parallel-rne.mlir:385:13
	loadli.w r2,  -60(r30)
	addli r5, zero, 7
.LBB0_304:                              # %.critedge6
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r4, r2, 1
	storeli.w r4, -60(r30)
.LBB0_305:                              # %.critedge6
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 4
	.loc	1 390 7                         # parallel-rne.mlir:390:7
	xfence
	.loc	1 391 7                         # parallel-rne.mlir:391:7
	mfence { lm, sm, gm }
	.loc	1 385 13                        # parallel-rne.mlir:385:13
	mod.s r2, r2, r4
	lui r4, 192
	ori r4, r4, 2048
	slli r2, r2, 16
	add.s r17, r2, r4
	.loc	1 392 7                         # parallel-rne.mlir:392:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 393 7                         # parallel-rne.mlir:393:7
	beq r9, zero, .LBB0_382
# %bb.306:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 421 7                         # parallel-rne.mlir:421:7
	addli r2, zero, 1
	bneq r9, r2, .LBB0_406
.LBB0_307:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 421 7                         # parallel-rne.mlir:421:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_309
.LBB0_308:                              # %middle.block311
                                        #   in Loop: Header=BB0_309 Depth=2
	.loc	1 428 9 is_stmt 1               # parallel-rne.mlir:428:9
	load.d r[4:5], -344(r30)                # 8-byte Folded Reload
	load.d r[9:10], -280(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r2, zero, .LBB0_330
.LBB0_309:                              # %.preheader79
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_311 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[19:20], zero
	store.d r[9:10], -280(r30)              # 8-byte Folded Spill
	sll.d r[5:6], r[9:10], r2
	j .LBB0_311
.LBB0_310:                              # %vector.body307
                                        #   in Loop: Header=BB0_311 Depth=3
	.loc	1 429 11 is_stmt 1              # parallel-rne.mlir:429:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 444 13                        # parallel-rne.mlir:444:13
	add.s r2, r17, r2
	.loc	1 429 11                        # parallel-rne.mlir:429:11
	setneq.d r4, r[19:20], r[22:23]
	.loc	1 444 13                        # parallel-rne.mlir:444:13
	stores.w r13, 12(r2)
	stores.w r12, 8(r2)
	stores.w r21, 4(r2)
	stores.w r27, 0(r2)
	.loc	1 429 11                        # parallel-rne.mlir:429:11
	beq r4, zero, .LBB0_308
.LBB0_311:                              # %vector.body307
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_309 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	add.ul r[9:10], r[19:20], r[5:6]
	slli r2, r9, 2
	add.s r4, r16, r2
	loads.w r11, 12(r4)
	loads.w r24, 0(r4)
	loads.w r26, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	and r4, r11, r1
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	setlt.u r9, r7, r4
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	bneq r9, zero, .LBB0_313
# %bb.312:                              # %vector.body307
                                        #   in Loop: Header=BB0_311 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r11, 0
	j .LBB0_314
.LBB0_313:                              #   in Loop: Header=BB0_311 Depth=3
	or r13, r11, r18
.LBB0_314:                              # %vector.body307
                                        #   in Loop: Header=BB0_311 Depth=3
	and r28, r15, r1
	setlt.u r9, r7, r28
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	bneq r9, zero, .LBB0_316
# %bb.315:                              # %vector.body307
                                        #   in Loop: Header=BB0_311 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r15, 0
	j .LBB0_317
.LBB0_316:                              #   in Loop: Header=BB0_311 Depth=3
	or r12, r15, r18
.LBB0_317:                              # %vector.body307
                                        #   in Loop: Header=BB0_311 Depth=3
	and r25, r26, r1
	setlt.u r9, r7, r25
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	bneq r9, zero, .LBB0_319
# %bb.318:                              # %vector.body307
                                        #   in Loop: Header=BB0_311 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r26, 0
	j .LBB0_320
.LBB0_319:                              #   in Loop: Header=BB0_311 Depth=3
	or r21, r26, r18
.LBB0_320:                              # %vector.body307
                                        #   in Loop: Header=BB0_311 Depth=3
	and r9, r24, r1
	setlt.u r10, r7, r9
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	bneq r10, zero, .LBB0_322
# %bb.321:                              # %vector.body307
                                        #   in Loop: Header=BB0_311 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r24, 0
	.loc	1 441 19 is_stmt 1              # parallel-rne.mlir:441:19
	setlt.u r9, r14, r9
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	beq r9, zero, .LBB0_323
	j .LBB0_324
.LBB0_322:                              #   in Loop: Header=BB0_311 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r24, r18
	.loc	1 441 19 is_stmt 1              # parallel-rne.mlir:441:19
	setlt.u r9, r14, r9
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	bneq r9, zero, .LBB0_324
.LBB0_323:                              # %vector.body307
                                        #   in Loop: Header=BB0_311 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r27, r9, r8
.LBB0_324:                              # %vector.body307
                                        #   in Loop: Header=BB0_311 Depth=3
	setlt.u r9, r14, r25
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	bneq r9, zero, .LBB0_327
# %bb.325:                              # %vector.body307
                                        #   in Loop: Header=BB0_311 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r26, 16
	andi r9, r9, 1
	add.s r9, r26, r9
	add.s r9, r9, r3
	and r21, r9, r8
	setlt.u r9, r14, r28
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	beq r9, zero, .LBB0_328
.LBB0_326:                              # %vector.body307
                                        #   in Loop: Header=BB0_311 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r4
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	bneq r4, zero, .LBB0_310
	j .LBB0_329
.LBB0_327:                              # %vector.body307
                                        #   in Loop: Header=BB0_311 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r14, r28
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	bneq r9, zero, .LBB0_326
.LBB0_328:                              # %vector.body307
                                        #   in Loop: Header=BB0_311 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r15, 16
	andi r9, r9, 1
	add.s r9, r15, r9
	add.s r9, r9, r3
	and r12, r9, r8
	setlt.u r4, r14, r4
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	bneq r4, zero, .LBB0_310
.LBB0_329:                              # %vector.body307
                                        #   in Loop: Header=BB0_311 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r3
	and r13, r4, r8
	j .LBB0_310
.LBB0_330:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r9
	addli r15, zero, 64
	.loc	1 421 7                         # parallel-rne.mlir:421:7
	mfence { sm }
	.loc	1 449 7                         # parallel-rne.mlir:449:7
	addli r2, zero, 2
	beq r9, r2, .LBB0_407
.LBB0_331:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 477 7                         # parallel-rne.mlir:477:7
	addli r2, zero, 3
	bneq r9, r2, .LBB0_431
.LBB0_332:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 477 7                         # parallel-rne.mlir:477:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_334
.LBB0_333:                              # %middle.block293
                                        #   in Loop: Header=BB0_334 Depth=2
	.loc	1 484 9 is_stmt 1               # parallel-rne.mlir:484:9
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	load.d r[9:10], -280(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r2, zero, .LBB0_355
.LBB0_334:                              # %.preheader77
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_336 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[19:20], zero
	store.d r[9:10], -280(r30)              # 8-byte Folded Spill
	sll.d r[5:6], r[9:10], r2
	j .LBB0_336
.LBB0_335:                              # %vector.body289
                                        #   in Loop: Header=BB0_336 Depth=3
	.loc	1 485 11 is_stmt 1              # parallel-rne.mlir:485:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 500 13                        # parallel-rne.mlir:500:13
	add.s r2, r17, r2
	.loc	1 485 11                        # parallel-rne.mlir:485:11
	setneq.d r4, r[19:20], r[22:23]
	.loc	1 500 13                        # parallel-rne.mlir:500:13
	stores.w r13, 12(r2)
	stores.w r12, 8(r2)
	stores.w r21, 4(r2)
	stores.w r27, 0(r2)
	.loc	1 485 11                        # parallel-rne.mlir:485:11
	beq r4, zero, .LBB0_333
.LBB0_336:                              # %vector.body289
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_334 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 486 19                        # parallel-rne.mlir:486:19
	add.ul r[9:10], r[19:20], r[5:6]
	slli r2, r9, 2
	add.s r4, r16, r2
	loads.w r11, 12(r4)
	loads.w r24, 0(r4)
	loads.w r26, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 488 19                        # parallel-rne.mlir:488:19
	and r4, r11, r1
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	setlt.u r9, r7, r4
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	bneq r9, zero, .LBB0_338
# %bb.337:                              # %vector.body289
                                        #   in Loop: Header=BB0_336 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r11, 0
	j .LBB0_339
.LBB0_338:                              #   in Loop: Header=BB0_336 Depth=3
	or r13, r11, r18
.LBB0_339:                              # %vector.body289
                                        #   in Loop: Header=BB0_336 Depth=3
	and r28, r15, r1
	setlt.u r9, r7, r28
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	bneq r9, zero, .LBB0_341
# %bb.340:                              # %vector.body289
                                        #   in Loop: Header=BB0_336 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r15, 0
	j .LBB0_342
.LBB0_341:                              #   in Loop: Header=BB0_336 Depth=3
	or r12, r15, r18
.LBB0_342:                              # %vector.body289
                                        #   in Loop: Header=BB0_336 Depth=3
	and r25, r26, r1
	setlt.u r9, r7, r25
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	bneq r9, zero, .LBB0_344
# %bb.343:                              # %vector.body289
                                        #   in Loop: Header=BB0_336 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r26, 0
	j .LBB0_345
.LBB0_344:                              #   in Loop: Header=BB0_336 Depth=3
	or r21, r26, r18
.LBB0_345:                              # %vector.body289
                                        #   in Loop: Header=BB0_336 Depth=3
	and r9, r24, r1
	setlt.u r10, r7, r9
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	bneq r10, zero, .LBB0_347
# %bb.346:                              # %vector.body289
                                        #   in Loop: Header=BB0_336 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r24, 0
	.loc	1 497 19 is_stmt 1              # parallel-rne.mlir:497:19
	setlt.u r9, r14, r9
	.loc	1 498 19                        # parallel-rne.mlir:498:19
	beq r9, zero, .LBB0_348
	j .LBB0_349
.LBB0_347:                              #   in Loop: Header=BB0_336 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r24, r18
	.loc	1 497 19 is_stmt 1              # parallel-rne.mlir:497:19
	setlt.u r9, r14, r9
	.loc	1 498 19                        # parallel-rne.mlir:498:19
	bneq r9, zero, .LBB0_349
.LBB0_348:                              # %vector.body289
                                        #   in Loop: Header=BB0_336 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r27, r9, r8
.LBB0_349:                              # %vector.body289
                                        #   in Loop: Header=BB0_336 Depth=3
	setlt.u r9, r14, r25
	.loc	1 498 19                        # parallel-rne.mlir:498:19
	bneq r9, zero, .LBB0_352
# %bb.350:                              # %vector.body289
                                        #   in Loop: Header=BB0_336 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r26, 16
	andi r9, r9, 1
	add.s r9, r26, r9
	add.s r9, r9, r3
	and r21, r9, r8
	setlt.u r9, r14, r28
	.loc	1 498 19                        # parallel-rne.mlir:498:19
	beq r9, zero, .LBB0_353
.LBB0_351:                              # %vector.body289
                                        #   in Loop: Header=BB0_336 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r4
	.loc	1 498 19                        # parallel-rne.mlir:498:19
	bneq r4, zero, .LBB0_335
	j .LBB0_354
.LBB0_352:                              # %vector.body289
                                        #   in Loop: Header=BB0_336 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r14, r28
	.loc	1 498 19                        # parallel-rne.mlir:498:19
	bneq r9, zero, .LBB0_351
.LBB0_353:                              # %vector.body289
                                        #   in Loop: Header=BB0_336 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r15, 16
	andi r9, r9, 1
	add.s r9, r15, r9
	add.s r9, r9, r3
	and r12, r9, r8
	setlt.u r4, r14, r4
	.loc	1 498 19                        # parallel-rne.mlir:498:19
	bneq r4, zero, .LBB0_335
.LBB0_354:                              # %vector.body289
                                        #   in Loop: Header=BB0_336 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r3
	and r13, r4, r8
	j .LBB0_335
.LBB0_355:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r9
	addli r15, zero, 64
	.loc	1 477 7                         # parallel-rne.mlir:477:7
	mfence { sm }
	.loc	1 505 7                         # parallel-rne.mlir:505:7
	addli r2, zero, 4
	beq r9, r2, .LBB0_432
.LBB0_356:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 533 7                         # parallel-rne.mlir:533:7
	addli r2, zero, 5
	bneq r9, r2, .LBB0_456
.LBB0_357:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 533 7                         # parallel-rne.mlir:533:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_359
.LBB0_358:                              # %middle.block275
                                        #   in Loop: Header=BB0_359 Depth=2
	.loc	1 540 9 is_stmt 1               # parallel-rne.mlir:540:9
	load.d r[4:5], -312(r30)                # 8-byte Folded Reload
	load.d r[9:10], -280(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r2, zero, .LBB0_380
.LBB0_359:                              # %.preheader75
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_361 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[19:20], zero
	store.d r[9:10], -280(r30)              # 8-byte Folded Spill
	sll.d r[5:6], r[9:10], r2
	j .LBB0_361
.LBB0_360:                              # %vector.body271
                                        #   in Loop: Header=BB0_361 Depth=3
	.loc	1 541 11 is_stmt 1              # parallel-rne.mlir:541:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 556 13                        # parallel-rne.mlir:556:13
	add.s r2, r17, r2
	.loc	1 541 11                        # parallel-rne.mlir:541:11
	setneq.d r4, r[19:20], r[22:23]
	.loc	1 556 13                        # parallel-rne.mlir:556:13
	stores.w r13, 12(r2)
	stores.w r12, 8(r2)
	stores.w r21, 4(r2)
	stores.w r27, 0(r2)
	.loc	1 541 11                        # parallel-rne.mlir:541:11
	beq r4, zero, .LBB0_358
.LBB0_361:                              # %vector.body271
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_359 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	add.ul r[9:10], r[19:20], r[5:6]
	slli r2, r9, 2
	add.s r4, r16, r2
	loads.w r11, 12(r4)
	loads.w r24, 0(r4)
	loads.w r26, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	and r4, r11, r1
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	setlt.u r9, r7, r4
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r9, zero, .LBB0_363
# %bb.362:                              # %vector.body271
                                        #   in Loop: Header=BB0_361 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r11, 0
	j .LBB0_364
.LBB0_363:                              #   in Loop: Header=BB0_361 Depth=3
	or r13, r11, r18
.LBB0_364:                              # %vector.body271
                                        #   in Loop: Header=BB0_361 Depth=3
	and r28, r15, r1
	setlt.u r9, r7, r28
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r9, zero, .LBB0_366
# %bb.365:                              # %vector.body271
                                        #   in Loop: Header=BB0_361 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r15, 0
	j .LBB0_367
.LBB0_366:                              #   in Loop: Header=BB0_361 Depth=3
	or r12, r15, r18
.LBB0_367:                              # %vector.body271
                                        #   in Loop: Header=BB0_361 Depth=3
	and r25, r26, r1
	setlt.u r9, r7, r25
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r9, zero, .LBB0_369
# %bb.368:                              # %vector.body271
                                        #   in Loop: Header=BB0_361 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r26, 0
	j .LBB0_370
.LBB0_369:                              #   in Loop: Header=BB0_361 Depth=3
	or r21, r26, r18
.LBB0_370:                              # %vector.body271
                                        #   in Loop: Header=BB0_361 Depth=3
	and r9, r24, r1
	setlt.u r10, r7, r9
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r10, zero, .LBB0_372
# %bb.371:                              # %vector.body271
                                        #   in Loop: Header=BB0_361 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r24, 0
	.loc	1 553 19 is_stmt 1              # parallel-rne.mlir:553:19
	setlt.u r9, r14, r9
	.loc	1 554 19                        # parallel-rne.mlir:554:19
	beq r9, zero, .LBB0_373
	j .LBB0_374
.LBB0_372:                              #   in Loop: Header=BB0_361 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r24, r18
	.loc	1 553 19 is_stmt 1              # parallel-rne.mlir:553:19
	setlt.u r9, r14, r9
	.loc	1 554 19                        # parallel-rne.mlir:554:19
	bneq r9, zero, .LBB0_374
.LBB0_373:                              # %vector.body271
                                        #   in Loop: Header=BB0_361 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r27, r9, r8
.LBB0_374:                              # %vector.body271
                                        #   in Loop: Header=BB0_361 Depth=3
	setlt.u r9, r14, r25
	.loc	1 554 19                        # parallel-rne.mlir:554:19
	bneq r9, zero, .LBB0_377
# %bb.375:                              # %vector.body271
                                        #   in Loop: Header=BB0_361 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r26, 16
	andi r9, r9, 1
	add.s r9, r26, r9
	add.s r9, r9, r3
	and r21, r9, r8
	setlt.u r9, r14, r28
	.loc	1 554 19                        # parallel-rne.mlir:554:19
	beq r9, zero, .LBB0_378
.LBB0_376:                              # %vector.body271
                                        #   in Loop: Header=BB0_361 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r4
	.loc	1 554 19                        # parallel-rne.mlir:554:19
	bneq r4, zero, .LBB0_360
	j .LBB0_379
.LBB0_377:                              # %vector.body271
                                        #   in Loop: Header=BB0_361 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r14, r28
	.loc	1 554 19                        # parallel-rne.mlir:554:19
	bneq r9, zero, .LBB0_376
.LBB0_378:                              # %vector.body271
                                        #   in Loop: Header=BB0_361 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r15, 16
	andi r9, r9, 1
	add.s r9, r15, r9
	add.s r9, r9, r3
	and r12, r9, r8
	setlt.u r4, r14, r4
	.loc	1 554 19                        # parallel-rne.mlir:554:19
	bneq r4, zero, .LBB0_360
.LBB0_379:                              # %vector.body271
                                        #   in Loop: Header=BB0_361 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r3
	and r13, r4, r8
	j .LBB0_360
.LBB0_380:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r9
	.loc	1 533 7                         # parallel-rne.mlir:533:7
	mfence { sm }
	.loc	1 561 7                         # parallel-rne.mlir:561:7
	addli r2, zero, 6
	beq r9, r2, .LBB0_457
.LBB0_381:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 589 7                         # parallel-rne.mlir:589:7
	beq r9, r5, .LBB0_481
	j .LBB0_505
.LBB0_382:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[4:5], zero
	.loc	1 393 7 is_stmt 1               # parallel-rne.mlir:393:7
	xfence
	mfence { lm, sm, gm }
	addli.d r[9:10], r[4:5], 0
	store.d r[4:5], -288(r30)               # 8-byte Folded Spill
	j .LBB0_384
.LBB0_383:                              # %middle.block320
                                        #   in Loop: Header=BB0_384 Depth=2
	.loc	1 400 9                         # parallel-rne.mlir:400:9
	load.d r[4:5], -360(r30)                # 8-byte Folded Reload
	load.d r[9:10], -280(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r2, zero, .LBB0_405
.LBB0_384:                              # %.preheader80
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_386 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	load.d r[26:27], -288(r30)              # 8-byte Folded Reload
	store.d r[9:10], -280(r30)              # 8-byte Folded Spill
	sll.d r[5:6], r[9:10], r2
	j .LBB0_386
.LBB0_385:                              # %vector.body316
                                        #   in Loop: Header=BB0_386 Depth=3
	.loc	1 401 11 is_stmt 1              # parallel-rne.mlir:401:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 416 13                        # parallel-rne.mlir:416:13
	add.s r2, r17, r2
	.loc	1 401 11                        # parallel-rne.mlir:401:11
	setneq.d r4, r[26:27], r[22:23]
	.loc	1 416 13                        # parallel-rne.mlir:416:13
	stores.w r13, 12(r2)
	stores.w r12, 8(r2)
	stores.w r21, 4(r2)
	stores.w r9, 0(r2)
	.loc	1 401 11                        # parallel-rne.mlir:401:11
	beq r4, zero, .LBB0_383
.LBB0_386:                              # %vector.body316
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_384 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	add.ul r[9:10], r[26:27], r[5:6]
	slli r2, r9, 2
	add.s r4, r16, r2
	loads.w r11, 12(r4)
	loads.w r24, 0(r4)
	loads.w r28, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	and r4, r11, r1
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	setlt.u r9, r7, r4
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	bneq r9, zero, .LBB0_388
# %bb.387:                              # %vector.body316
                                        #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r11, 0
	j .LBB0_389
.LBB0_388:                              #   in Loop: Header=BB0_386 Depth=3
	or r13, r11, r18
.LBB0_389:                              # %vector.body316
                                        #   in Loop: Header=BB0_386 Depth=3
	and r10, r15, r1
	setlt.u r9, r7, r10
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	bneq r9, zero, .LBB0_391
# %bb.390:                              # %vector.body316
                                        #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r15, 0
	j .LBB0_392
.LBB0_391:                              #   in Loop: Header=BB0_386 Depth=3
	or r12, r15, r18
.LBB0_392:                              # %vector.body316
                                        #   in Loop: Header=BB0_386 Depth=3
	and r25, r28, r1
	setlt.u r9, r7, r25
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	bneq r9, zero, .LBB0_394
# %bb.393:                              # %vector.body316
                                        #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r28, 0
	j .LBB0_395
.LBB0_394:                              #   in Loop: Header=BB0_386 Depth=3
	or r21, r28, r18
.LBB0_395:                              # %vector.body316
                                        #   in Loop: Header=BB0_386 Depth=3
	and r19, r24, r1
	setlt.u r9, r7, r19
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	bneq r9, zero, .LBB0_397
# %bb.396:                              # %vector.body316
                                        #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r24, 0
	.loc	1 413 19 is_stmt 1              # parallel-rne.mlir:413:19
	setlt.u r19, r14, r19
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	beq r19, zero, .LBB0_398
	j .LBB0_399
.LBB0_397:                              #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r24, r18
	.loc	1 413 19 is_stmt 1              # parallel-rne.mlir:413:19
	setlt.u r19, r14, r19
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	bneq r19, zero, .LBB0_399
.LBB0_398:                              # %vector.body316
                                        #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r9, r9, r8
.LBB0_399:                              # %vector.body316
                                        #   in Loop: Header=BB0_386 Depth=3
	setlt.u r19, r14, r25
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	bneq r19, zero, .LBB0_402
# %bb.400:                              # %vector.body316
                                        #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r19, r28, 16
	andi r19, r19, 1
	add.s r19, r28, r19
	add.s r19, r19, r3
	and r21, r19, r8
	setlt.u r10, r14, r10
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	beq r10, zero, .LBB0_403
.LBB0_401:                              # %vector.body316
                                        #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r4
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	bneq r4, zero, .LBB0_385
	j .LBB0_404
.LBB0_402:                              # %vector.body316
                                        #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r14, r10
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	bneq r10, zero, .LBB0_401
.LBB0_403:                              # %vector.body316
                                        #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r15, 16
	andi r10, r10, 1
	add.s r10, r15, r10
	add.s r10, r10, r3
	and r12, r10, r8
	setlt.u r4, r14, r4
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	bneq r4, zero, .LBB0_385
.LBB0_404:                              # %vector.body316
                                        #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r3
	and r13, r4, r8
	j .LBB0_385
.LBB0_405:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r9
	addli r15, zero, 64
	.loc	1 393 7                         # parallel-rne.mlir:393:7
	mfence { sm }
	.loc	1 421 7                         # parallel-rne.mlir:421:7
	addli r2, zero, 1
	beq r9, r2, .LBB0_307
.LBB0_406:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 449 7                         # parallel-rne.mlir:449:7
	addli r2, zero, 2
	bneq r9, r2, .LBB0_331
.LBB0_407:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 449 7                         # parallel-rne.mlir:449:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_409
.LBB0_408:                              # %middle.block302
                                        #   in Loop: Header=BB0_409 Depth=2
	.loc	1 456 9 is_stmt 1               # parallel-rne.mlir:456:9
	load.d r[4:5], -336(r30)                # 8-byte Folded Reload
	load.d r[9:10], -280(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r2, zero, .LBB0_430
.LBB0_409:                              # %.preheader78
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_411 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[19:20], zero
	store.d r[9:10], -280(r30)              # 8-byte Folded Spill
	sll.d r[5:6], r[9:10], r2
	j .LBB0_411
.LBB0_410:                              # %vector.body298
                                        #   in Loop: Header=BB0_411 Depth=3
	.loc	1 457 11 is_stmt 1              # parallel-rne.mlir:457:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 472 13                        # parallel-rne.mlir:472:13
	add.s r2, r17, r2
	.loc	1 457 11                        # parallel-rne.mlir:457:11
	setneq.d r4, r[19:20], r[22:23]
	.loc	1 472 13                        # parallel-rne.mlir:472:13
	stores.w r13, 12(r2)
	stores.w r12, 8(r2)
	stores.w r21, 4(r2)
	stores.w r27, 0(r2)
	.loc	1 457 11                        # parallel-rne.mlir:457:11
	beq r4, zero, .LBB0_408
.LBB0_411:                              # %vector.body298
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_409 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	add.ul r[9:10], r[19:20], r[5:6]
	slli r2, r9, 2
	add.s r4, r16, r2
	loads.w r11, 12(r4)
	loads.w r24, 0(r4)
	loads.w r26, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	and r4, r11, r1
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	setlt.u r9, r7, r4
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	bneq r9, zero, .LBB0_413
# %bb.412:                              # %vector.body298
                                        #   in Loop: Header=BB0_411 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r11, 0
	j .LBB0_414
.LBB0_413:                              #   in Loop: Header=BB0_411 Depth=3
	or r13, r11, r18
.LBB0_414:                              # %vector.body298
                                        #   in Loop: Header=BB0_411 Depth=3
	and r28, r15, r1
	setlt.u r9, r7, r28
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	bneq r9, zero, .LBB0_416
# %bb.415:                              # %vector.body298
                                        #   in Loop: Header=BB0_411 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r15, 0
	j .LBB0_417
.LBB0_416:                              #   in Loop: Header=BB0_411 Depth=3
	or r12, r15, r18
.LBB0_417:                              # %vector.body298
                                        #   in Loop: Header=BB0_411 Depth=3
	and r25, r26, r1
	setlt.u r9, r7, r25
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	bneq r9, zero, .LBB0_419
# %bb.418:                              # %vector.body298
                                        #   in Loop: Header=BB0_411 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r26, 0
	j .LBB0_420
.LBB0_419:                              #   in Loop: Header=BB0_411 Depth=3
	or r21, r26, r18
.LBB0_420:                              # %vector.body298
                                        #   in Loop: Header=BB0_411 Depth=3
	and r9, r24, r1
	setlt.u r10, r7, r9
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	bneq r10, zero, .LBB0_422
# %bb.421:                              # %vector.body298
                                        #   in Loop: Header=BB0_411 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r24, 0
	.loc	1 469 19 is_stmt 1              # parallel-rne.mlir:469:19
	setlt.u r9, r14, r9
	.loc	1 470 19                        # parallel-rne.mlir:470:19
	beq r9, zero, .LBB0_423
	j .LBB0_424
.LBB0_422:                              #   in Loop: Header=BB0_411 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r24, r18
	.loc	1 469 19 is_stmt 1              # parallel-rne.mlir:469:19
	setlt.u r9, r14, r9
	.loc	1 470 19                        # parallel-rne.mlir:470:19
	bneq r9, zero, .LBB0_424
.LBB0_423:                              # %vector.body298
                                        #   in Loop: Header=BB0_411 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r27, r9, r8
.LBB0_424:                              # %vector.body298
                                        #   in Loop: Header=BB0_411 Depth=3
	setlt.u r9, r14, r25
	.loc	1 470 19                        # parallel-rne.mlir:470:19
	bneq r9, zero, .LBB0_427
# %bb.425:                              # %vector.body298
                                        #   in Loop: Header=BB0_411 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r26, 16
	andi r9, r9, 1
	add.s r9, r26, r9
	add.s r9, r9, r3
	and r21, r9, r8
	setlt.u r9, r14, r28
	.loc	1 470 19                        # parallel-rne.mlir:470:19
	beq r9, zero, .LBB0_428
.LBB0_426:                              # %vector.body298
                                        #   in Loop: Header=BB0_411 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r4
	.loc	1 470 19                        # parallel-rne.mlir:470:19
	bneq r4, zero, .LBB0_410
	j .LBB0_429
.LBB0_427:                              # %vector.body298
                                        #   in Loop: Header=BB0_411 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r14, r28
	.loc	1 470 19                        # parallel-rne.mlir:470:19
	bneq r9, zero, .LBB0_426
.LBB0_428:                              # %vector.body298
                                        #   in Loop: Header=BB0_411 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r15, 16
	andi r9, r9, 1
	add.s r9, r15, r9
	add.s r9, r9, r3
	and r12, r9, r8
	setlt.u r4, r14, r4
	.loc	1 470 19                        # parallel-rne.mlir:470:19
	bneq r4, zero, .LBB0_410
.LBB0_429:                              # %vector.body298
                                        #   in Loop: Header=BB0_411 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r3
	and r13, r4, r8
	j .LBB0_410
.LBB0_430:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r9
	addli r15, zero, 64
	.loc	1 449 7                         # parallel-rne.mlir:449:7
	mfence { sm }
	.loc	1 477 7                         # parallel-rne.mlir:477:7
	addli r2, zero, 3
	beq r9, r2, .LBB0_332
.LBB0_431:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 505 7                         # parallel-rne.mlir:505:7
	addli r2, zero, 4
	bneq r9, r2, .LBB0_356
.LBB0_432:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[9:10], r15
	mfence { lm, sm, gm }
	j .LBB0_434
.LBB0_433:                              # %middle.block284
                                        #   in Loop: Header=BB0_434 Depth=2
	.loc	1 512 9                         # parallel-rne.mlir:512:9
	load.d r[4:5], -320(r30)                # 8-byte Folded Reload
	load.d r[9:10], -280(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r2, zero, .LBB0_455
.LBB0_434:                              # %.preheader76
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_436 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[19:20], zero
	store.d r[9:10], -280(r30)              # 8-byte Folded Spill
	sll.d r[5:6], r[9:10], r2
	j .LBB0_436
.LBB0_435:                              # %vector.body280
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 513 11 is_stmt 1              # parallel-rne.mlir:513:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 528 13                        # parallel-rne.mlir:528:13
	add.s r2, r17, r2
	.loc	1 513 11                        # parallel-rne.mlir:513:11
	setneq.d r4, r[19:20], r[22:23]
	.loc	1 528 13                        # parallel-rne.mlir:528:13
	stores.w r13, 12(r2)
	stores.w r12, 8(r2)
	stores.w r21, 4(r2)
	stores.w r27, 0(r2)
	.loc	1 513 11                        # parallel-rne.mlir:513:11
	beq r4, zero, .LBB0_433
.LBB0_436:                              # %vector.body280
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_434 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	add.ul r[9:10], r[19:20], r[5:6]
	slli r2, r9, 2
	add.s r4, r16, r2
	loads.w r11, 12(r4)
	loads.w r24, 0(r4)
	loads.w r26, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 516 19                        # parallel-rne.mlir:516:19
	and r4, r11, r1
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	setlt.u r9, r7, r4
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	bneq r9, zero, .LBB0_438
# %bb.437:                              # %vector.body280
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r11, 0
	j .LBB0_439
.LBB0_438:                              #   in Loop: Header=BB0_436 Depth=3
	or r13, r11, r18
.LBB0_439:                              # %vector.body280
                                        #   in Loop: Header=BB0_436 Depth=3
	and r28, r15, r1
	setlt.u r9, r7, r28
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	bneq r9, zero, .LBB0_441
# %bb.440:                              # %vector.body280
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r15, 0
	j .LBB0_442
.LBB0_441:                              #   in Loop: Header=BB0_436 Depth=3
	or r12, r15, r18
.LBB0_442:                              # %vector.body280
                                        #   in Loop: Header=BB0_436 Depth=3
	and r25, r26, r1
	setlt.u r9, r7, r25
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	bneq r9, zero, .LBB0_444
# %bb.443:                              # %vector.body280
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r26, 0
	j .LBB0_445
.LBB0_444:                              #   in Loop: Header=BB0_436 Depth=3
	or r21, r26, r18
.LBB0_445:                              # %vector.body280
                                        #   in Loop: Header=BB0_436 Depth=3
	and r9, r24, r1
	setlt.u r10, r7, r9
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	bneq r10, zero, .LBB0_447
# %bb.446:                              # %vector.body280
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r24, 0
	.loc	1 525 19 is_stmt 1              # parallel-rne.mlir:525:19
	setlt.u r9, r14, r9
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	beq r9, zero, .LBB0_448
	j .LBB0_449
.LBB0_447:                              #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r24, r18
	.loc	1 525 19 is_stmt 1              # parallel-rne.mlir:525:19
	setlt.u r9, r14, r9
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	bneq r9, zero, .LBB0_449
.LBB0_448:                              # %vector.body280
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r27, r9, r8
.LBB0_449:                              # %vector.body280
                                        #   in Loop: Header=BB0_436 Depth=3
	setlt.u r9, r14, r25
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	bneq r9, zero, .LBB0_452
# %bb.450:                              # %vector.body280
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r26, 16
	andi r9, r9, 1
	add.s r9, r26, r9
	add.s r9, r9, r3
	and r21, r9, r8
	setlt.u r9, r14, r28
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	beq r9, zero, .LBB0_453
.LBB0_451:                              # %vector.body280
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r4
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	bneq r4, zero, .LBB0_435
	j .LBB0_454
.LBB0_452:                              # %vector.body280
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r14, r28
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	bneq r9, zero, .LBB0_451
.LBB0_453:                              # %vector.body280
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r15, 16
	andi r9, r9, 1
	add.s r9, r15, r9
	add.s r9, r9, r3
	and r12, r9, r8
	setlt.u r4, r14, r4
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	bneq r4, zero, .LBB0_435
.LBB0_454:                              # %vector.body280
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r3
	and r13, r4, r8
	j .LBB0_435
.LBB0_455:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r9
	.loc	1 505 7                         # parallel-rne.mlir:505:7
	mfence { sm }
	.loc	1 533 7                         # parallel-rne.mlir:533:7
	addli r2, zero, 5
	beq r9, r2, .LBB0_357
.LBB0_456:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 561 7                         # parallel-rne.mlir:561:7
	addli r2, zero, 6
	bneq r9, r2, .LBB0_381
.LBB0_457:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 561 7                         # parallel-rne.mlir:561:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_459
.LBB0_458:                              # %middle.block266
                                        #   in Loop: Header=BB0_459 Depth=2
	.loc	1 568 9 is_stmt 1               # parallel-rne.mlir:568:9
	load.d r[4:5], -304(r30)                # 8-byte Folded Reload
	load.d r[9:10], -280(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r2, zero, .LBB0_480
.LBB0_459:                              # %.preheader74
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_461 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[19:20], zero
	store.d r[9:10], -280(r30)              # 8-byte Folded Spill
	sll.d r[5:6], r[9:10], r2
	j .LBB0_461
.LBB0_460:                              # %vector.body262
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 569 11 is_stmt 1              # parallel-rne.mlir:569:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 584 13                        # parallel-rne.mlir:584:13
	add.s r2, r17, r2
	.loc	1 569 11                        # parallel-rne.mlir:569:11
	setneq.d r4, r[19:20], r[22:23]
	.loc	1 584 13                        # parallel-rne.mlir:584:13
	stores.w r13, 12(r2)
	stores.w r12, 8(r2)
	stores.w r21, 4(r2)
	stores.w r27, 0(r2)
	.loc	1 569 11                        # parallel-rne.mlir:569:11
	beq r4, zero, .LBB0_458
.LBB0_461:                              # %vector.body262
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_459 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 570 19                        # parallel-rne.mlir:570:19
	add.ul r[9:10], r[19:20], r[5:6]
	slli r2, r9, 2
	add.s r4, r16, r2
	loads.w r11, 12(r4)
	loads.w r24, 0(r4)
	loads.w r26, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 572 19                        # parallel-rne.mlir:572:19
	and r4, r11, r1
	.loc	1 574 19                        # parallel-rne.mlir:574:19
	setlt.u r9, r7, r4
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	bneq r9, zero, .LBB0_463
# %bb.462:                              # %vector.body262
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r11, 0
	j .LBB0_464
.LBB0_463:                              #   in Loop: Header=BB0_461 Depth=3
	or r13, r11, r18
.LBB0_464:                              # %vector.body262
                                        #   in Loop: Header=BB0_461 Depth=3
	and r28, r15, r1
	setlt.u r9, r7, r28
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	bneq r9, zero, .LBB0_466
# %bb.465:                              # %vector.body262
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r15, 0
	j .LBB0_467
.LBB0_466:                              #   in Loop: Header=BB0_461 Depth=3
	or r12, r15, r18
.LBB0_467:                              # %vector.body262
                                        #   in Loop: Header=BB0_461 Depth=3
	and r25, r26, r1
	setlt.u r9, r7, r25
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	bneq r9, zero, .LBB0_469
# %bb.468:                              # %vector.body262
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r26, 0
	j .LBB0_470
.LBB0_469:                              #   in Loop: Header=BB0_461 Depth=3
	or r21, r26, r18
.LBB0_470:                              # %vector.body262
                                        #   in Loop: Header=BB0_461 Depth=3
	and r9, r24, r1
	setlt.u r10, r7, r9
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	bneq r10, zero, .LBB0_472
# %bb.471:                              # %vector.body262
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r24, 0
	.loc	1 581 19 is_stmt 1              # parallel-rne.mlir:581:19
	setlt.u r9, r14, r9
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	beq r9, zero, .LBB0_473
	j .LBB0_474
.LBB0_472:                              #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r24, r18
	.loc	1 581 19 is_stmt 1              # parallel-rne.mlir:581:19
	setlt.u r9, r14, r9
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	bneq r9, zero, .LBB0_474
.LBB0_473:                              # %vector.body262
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r27, r9, r8
.LBB0_474:                              # %vector.body262
                                        #   in Loop: Header=BB0_461 Depth=3
	setlt.u r9, r14, r25
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	bneq r9, zero, .LBB0_477
# %bb.475:                              # %vector.body262
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r26, 16
	andi r9, r9, 1
	add.s r9, r26, r9
	add.s r9, r9, r3
	and r21, r9, r8
	setlt.u r9, r14, r28
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	beq r9, zero, .LBB0_478
.LBB0_476:                              # %vector.body262
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r4
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	bneq r4, zero, .LBB0_460
	j .LBB0_479
.LBB0_477:                              # %vector.body262
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r14, r28
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	bneq r9, zero, .LBB0_476
.LBB0_478:                              # %vector.body262
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r15, 16
	andi r9, r9, 1
	add.s r9, r15, r9
	add.s r9, r9, r3
	and r12, r9, r8
	setlt.u r4, r14, r4
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	bneq r4, zero, .LBB0_460
.LBB0_479:                              # %vector.body262
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r3
	and r13, r4, r8
	j .LBB0_460
.LBB0_480:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r9
	.loc	1 561 7                         # parallel-rne.mlir:561:7
	mfence { sm }
	.loc	1 589 7                         # parallel-rne.mlir:589:7
	bneq r9, r5, .LBB0_505
.LBB0_481:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 589 7                         # parallel-rne.mlir:589:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_483
.LBB0_482:                              # %middle.block257
                                        #   in Loop: Header=BB0_483 Depth=2
	.loc	1 596 9 is_stmt 1               # parallel-rne.mlir:596:9
	load.d r[4:5], -272(r30)                # 8-byte Folded Reload
	load.d r[9:10], -280(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r2, zero, .LBB0_504
.LBB0_483:                              # %.preheader73
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_485 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[19:20], zero
	store.d r[9:10], -280(r30)              # 8-byte Folded Spill
	sll.d r[5:6], r[9:10], r2
	j .LBB0_485
.LBB0_484:                              # %vector.body253
                                        #   in Loop: Header=BB0_485 Depth=3
	.loc	1 597 11 is_stmt 1              # parallel-rne.mlir:597:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 612 13                        # parallel-rne.mlir:612:13
	add.s r2, r17, r2
	.loc	1 597 11                        # parallel-rne.mlir:597:11
	setneq.d r4, r[19:20], r[22:23]
	.loc	1 612 13                        # parallel-rne.mlir:612:13
	stores.w r13, 12(r2)
	stores.w r12, 8(r2)
	stores.w r21, 4(r2)
	stores.w r27, 0(r2)
	.loc	1 597 11                        # parallel-rne.mlir:597:11
	beq r4, zero, .LBB0_482
.LBB0_485:                              # %vector.body253
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_483 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	add.ul r[9:10], r[19:20], r[5:6]
	slli r2, r9, 2
	add.s r4, r16, r2
	loads.w r11, 12(r4)
	loads.w r24, 0(r4)
	loads.w r26, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 600 19                        # parallel-rne.mlir:600:19
	and r4, r11, r1
	.loc	1 602 19                        # parallel-rne.mlir:602:19
	setlt.u r9, r7, r4
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	bneq r9, zero, .LBB0_487
# %bb.486:                              # %vector.body253
                                        #   in Loop: Header=BB0_485 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r11, 0
	j .LBB0_488
.LBB0_487:                              #   in Loop: Header=BB0_485 Depth=3
	or r13, r11, r18
.LBB0_488:                              # %vector.body253
                                        #   in Loop: Header=BB0_485 Depth=3
	and r28, r15, r1
	setlt.u r9, r7, r28
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	bneq r9, zero, .LBB0_490
# %bb.489:                              # %vector.body253
                                        #   in Loop: Header=BB0_485 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r15, 0
	j .LBB0_491
.LBB0_490:                              #   in Loop: Header=BB0_485 Depth=3
	or r12, r15, r18
.LBB0_491:                              # %vector.body253
                                        #   in Loop: Header=BB0_485 Depth=3
	and r25, r26, r1
	setlt.u r9, r7, r25
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	bneq r9, zero, .LBB0_493
# %bb.492:                              # %vector.body253
                                        #   in Loop: Header=BB0_485 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r26, 0
	j .LBB0_494
.LBB0_493:                              #   in Loop: Header=BB0_485 Depth=3
	or r21, r26, r18
.LBB0_494:                              # %vector.body253
                                        #   in Loop: Header=BB0_485 Depth=3
	and r9, r24, r1
	setlt.u r10, r7, r9
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	bneq r10, zero, .LBB0_496
# %bb.495:                              # %vector.body253
                                        #   in Loop: Header=BB0_485 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r24, 0
	.loc	1 609 19 is_stmt 1              # parallel-rne.mlir:609:19
	setlt.u r9, r14, r9
	.loc	1 610 19                        # parallel-rne.mlir:610:19
	beq r9, zero, .LBB0_497
	j .LBB0_498
.LBB0_496:                              #   in Loop: Header=BB0_485 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r24, r18
	.loc	1 609 19 is_stmt 1              # parallel-rne.mlir:609:19
	setlt.u r9, r14, r9
	.loc	1 610 19                        # parallel-rne.mlir:610:19
	bneq r9, zero, .LBB0_498
.LBB0_497:                              # %vector.body253
                                        #   in Loop: Header=BB0_485 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r27, r9, r8
.LBB0_498:                              # %vector.body253
                                        #   in Loop: Header=BB0_485 Depth=3
	setlt.u r9, r14, r25
	.loc	1 610 19                        # parallel-rne.mlir:610:19
	bneq r9, zero, .LBB0_501
# %bb.499:                              # %vector.body253
                                        #   in Loop: Header=BB0_485 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r26, 16
	andi r9, r9, 1
	add.s r9, r26, r9
	add.s r9, r9, r3
	and r21, r9, r8
	setlt.u r9, r14, r28
	.loc	1 610 19                        # parallel-rne.mlir:610:19
	beq r9, zero, .LBB0_502
.LBB0_500:                              # %vector.body253
                                        #   in Loop: Header=BB0_485 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r4
	.loc	1 610 19                        # parallel-rne.mlir:610:19
	bneq r4, zero, .LBB0_484
	j .LBB0_503
.LBB0_501:                              # %vector.body253
                                        #   in Loop: Header=BB0_485 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r14, r28
	.loc	1 610 19                        # parallel-rne.mlir:610:19
	bneq r9, zero, .LBB0_500
.LBB0_502:                              # %vector.body253
                                        #   in Loop: Header=BB0_485 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r15, 16
	andi r9, r9, 1
	add.s r9, r15, r9
	add.s r9, r9, r3
	and r12, r9, r8
	setlt.u r4, r14, r4
	.loc	1 610 19                        # parallel-rne.mlir:610:19
	bneq r4, zero, .LBB0_484
.LBB0_503:                              # %vector.body253
                                        #   in Loop: Header=BB0_485 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r3
	and r13, r4, r8
	j .LBB0_484
.LBB0_504:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r9
	.loc	1 589 7                         # parallel-rne.mlir:589:7
	mfence { sm }
.LBB0_505:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 617 7                         # parallel-rne.mlir:617:7
	addli r2, zero, 255
	csr_set csr5, r2
	addli r2, zero, 3
	sync_core
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	bneq r9, r2, .LBB0_507
# %bb.506:                              # %.critedge11
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r10, zero, 14
	.loc	1 619 7 is_stmt 1               # parallel-rne.mlir:619:7
	addli r2, zero, 21
	addli r6, zero, 4
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	xsignal r10, 0
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	xsignal r2, 0
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	addli r2, zero, 19
	xsignal r2, 0
	.loc	1 622 13                        # parallel-rne.mlir:622:13
	loadli.w r2,  -40(r30)
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	loadli.w r4,  -20(r30)
	.loc	1 622 13                        # parallel-rne.mlir:622:13
	mod.s r5, r2, r6
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	mod.s r6, r4, r6
	.loc	1 622 13                        # parallel-rne.mlir:622:13
	addli r2, r2, 1
	storeli.w r2, -40(r30)
	slli r2, r5, 16
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	slli r5, r6, 16
	.loc	1 622 13                        # parallel-rne.mlir:622:13
	loadli.w r6,  -460(r30)                 # 4-byte Folded Reload
	add.s r11, r2, r6
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	addli r2, r4, 1
	loadli.w r4,  -464(r30)                 # 4-byte Folded Reload
	storeli.w r2, -20(r30)
	.loc	1 629 7                         # parallel-rne.mlir:629:7
	addli r2, zero, 20
	.loc	1 628 7                         # parallel-rne.mlir:628:7
	xwait r10, 0
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	add.s r15, r5, r4
	addli r5, zero, 7
	.loc	1 629 7                         # parallel-rne.mlir:629:7
	xwait r2, 0
	.loc	1 630 7                         # parallel-rne.mlir:630:7
	addli r2, zero, 23
	xwait r2, 0
	.loc	1 631 7                         # parallel-rne.mlir:631:7
	addli r2, zero, 25
	xwait r2, 0
	j .LBB0_510
.LBB0_507:                              # %.critedge9
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 622 13                        # parallel-rne.mlir:622:13
	loadli.w r2,  -40(r30)
	addli r6, zero, 4
	loadli.w r10,  -460(r30)                # 4-byte Folded Reload
	mod.s r4, r2, r6
	addli r2, r2, 1
	storeli.w r2, -40(r30)
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	addli r2, zero, 5
	.loc	1 622 13                        # parallel-rne.mlir:622:13
	slli r4, r4, 16
	add.s r11, r4, r10
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	bneq r9, r2, .LBB0_509
# %bb.508:                              # %.thread61
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 19
	addli r10, zero, 2
	addli r12, zero, 4095
	xwait r2, 0
	addli r2, zero, 24
	xwait r2, 0
	lock zero, r10
	addli r2, zero, 1
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r12, zero, 2
	ew_cfg r6, zero, zero, 3
	ew_cfg r6, r6, zero, 19
	ew_cfg r10, zero, zero, 10
	loadli.w r4,  -468(r30)                 # 4-byte Folded Reload
	ew_cfg r10, r2, r4, 11
	lui r2, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r6, r2, 14
	ew_cfg zero, zero, zero, 15
	sslut r11, r17, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r10
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	loadli.w r2,  -20(r30)
	mod.s r4, r2, r6
	addli r2, r2, 1
	storeli.w r2, -20(r30)
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	addli r2, zero, 21
	xwait r2, 0
	addli r2, zero, 26
	xwait r2, 0
	lock zero, r10
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	slli r2, r4, 16
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	ew_cfg zero, zero, zero, 1
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	loadli.w r4,  -464(r30)                 # 4-byte Folded Reload
	add.s r15, r2, r4
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	lui r2, 260096
	ewcoeff_cfg zero, zero, r2, 0
	addli r2, zero, 20
	ew_cfg zero, r12, zero, 2
	ew_cfg r6, zero, zero, 3
	ew_cfg r6, r6, r6, 19
	dsmul r15, r17, r11, 0
	ew_cfg zero, zero, zero, 19
	unlock r10
	xsignal r2, 0
	addli r2, zero, 23
	xsignal r2, 0
	addli r2, zero, 25
	xsignal r2, 0
	.loc	1 628 7                         # parallel-rne.mlir:628:7
	j .LBB0_510
.LBB0_509:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	loadli.w r2,  -20(r30)
	mod.s r4, r2, r6
	loadli.w r6,  -464(r30)                 # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -20(r30)
	slli r4, r4, 16
	add.s r15, r4, r6
.LBB0_510:                              # %.critedge13
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 635 7                         # parallel-rne.mlir:635:7
	addli r2, zero, 255
	.loc	1 633 7                         # parallel-rne.mlir:633:7
	xfence
	.loc	1 634 7                         # parallel-rne.mlir:634:7
	mfence { lm, sm, gm }
	.loc	1 635 7                         # parallel-rne.mlir:635:7
	csr_set csr5, r2
	sub.s r2, r16, r11
	storeli.w r2, -384(r30)                 # 4-byte Folded Spill
	sub.s r2, r16, r15
	storeli.w r2, -388(r30)                 # 4-byte Folded Spill
	sync_core
	store.d r[22:23], -280(r30)             # 8-byte Folded Spill
	.loc	1 636 7                         # parallel-rne.mlir:636:7
	beq r9, zero, .LBB0_668
# %bb.511:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 682 7                         # parallel-rne.mlir:682:7
	addli r2, zero, 1
	bneq r9, r2, .LBB0_719
.LBB0_512:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -384(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -388(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	zext_int2long r[9:10], r4
	storeli.w r2, -360(r30)                 # 4-byte Folded Spill
	.loc	1 682 7                         # parallel-rne.mlir:682:7
	xfence
	mfence { lm, sm, gm }
	j .LBB0_514
.LBB0_513:                              # %middle.block233
                                        #   in Loop: Header=BB0_514 Depth=2
	.loc	1 689 9 is_stmt 1               # parallel-rne.mlir:689:9
	load.d r[4:5], -344(r30)                # 8-byte Folded Reload
	load.d r[9:10], -288(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r2, zero, .LBB0_562
.LBB0_514:                              # %.preheader71
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_535 Depth 3
                                        #       Child Loop BB0_518 Depth 3
	.loc	1 690 11                        # parallel-rne.mlir:690:11
	loadli.w r2,  -360(r30)                 # 4-byte Folded Reload
	sll.d r[19:20], r[9:10], r5
	store.d r[9:10], -288(r30)              # 8-byte Folded Spill
	beq r2, zero, .LBB0_533
# %bb.515:                              # %scalar.ph225.preheader
                                        #   in Loop: Header=BB0_514 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_518
.LBB0_516:                              # %scalar.ph225
                                        #   in Loop: Header=BB0_518 Depth=3
	srli r9, r6, 16
	andi r9, r9, 1
	add.s r6, r6, r9
	add.s r6, r6, r3
	and r9, r6, r8
.LBB0_517:                              # %scalar.ph225
                                        #   in Loop: Header=BB0_518 Depth=3
	.loc	1 690 11                        # parallel-rne.mlir:690:11
	load.d r[12:13], -272(r30)              # 8-byte Folded Reload
	.loc	1 723 13 is_stmt 1              # parallel-rne.mlir:723:13
	add.s r2, r16, r2
	stores.w r9, 0(r2)
	.loc	1 690 11                        # parallel-rne.mlir:690:11
	setlt.ul r6, r[4:5], r[12:13]
	addli.d r[4:5], r[4:5], 1
	beq r6, zero, .LBB0_513
.LBB0_518:                              # %scalar.ph225
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_514 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	add.ul r[9:10], r[4:5], r[19:20]
	lui r12, 523264
	slli r2, r9, 2
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	add.s r6, r11, r2
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	add.s r9, r15, r2
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	loads.w r6, 0(r6)
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	loads.w r13, 0(r9)
	.loc	1 696 19                        # parallel-rne.mlir:696:19
	and r9, r6, r1
	lui r6, 523264
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r9, r7, .LBB0_520
# %bb.519:                              # %scalar.ph225
                                        #   in Loop: Header=BB0_518 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
.LBB0_520:                              # %scalar.ph225
                                        #   in Loop: Header=BB0_518 Depth=3
	add.s r10, r17, r2
	loads.w r10, 0(r10)
	and r10, r10, r1
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r10, zero, .LBB0_530
# %bb.521:                              # %scalar.ph225
                                        #   in Loop: Header=BB0_518 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r13, 0
	lui r13, 523264
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	bneq r9, zero, .LBB0_531
.LBB0_522:                              # %scalar.ph225
                                        #   in Loop: Header=BB0_518 Depth=3
	beq r10, r7, .LBB0_524
.LBB0_523:                              # %scalar.ph225
                                        #   in Loop: Header=BB0_518 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r12, 0
.LBB0_524:                              # %scalar.ph225
                                        #   in Loop: Header=BB0_518 Depth=3
	setlt.u r12, r7, r9
	lui r9, 523264
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	bneq r12, zero, .LBB0_526
# %bb.525:                              # %scalar.ph225
                                        #   in Loop: Header=BB0_518 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
.LBB0_526:                              # %scalar.ph225
                                        #   in Loop: Header=BB0_518 Depth=3
	setlt.u r10, r7, r10
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	bneq r10, zero, .LBB0_528
# %bb.527:                              # %scalar.ph225
                                        #   in Loop: Header=BB0_518 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r9, 0
.LBB0_528:                              # %scalar.ph225
                                        #   in Loop: Header=BB0_518 Depth=3
	.loc	1 711 19 is_stmt 1              # parallel-rne.mlir:711:19
	and r10, r6, r1
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	setlt.u r9, r7, r10
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	bneq r9, zero, .LBB0_532
# %bb.529:                              # %scalar.ph225
                                        #   in Loop: Header=BB0_518 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r6, 0
	.loc	1 720 19 is_stmt 1              # parallel-rne.mlir:720:19
	setlt.u r10, r14, r10
	.loc	1 721 19                        # parallel-rne.mlir:721:19
	bneq r10, zero, .LBB0_517
	j .LBB0_516
.LBB0_530:                              # %scalar.ph225
                                        #   in Loop: Header=BB0_518 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	lui r13, 523264
	.loc	1 710 19 is_stmt 1              # parallel-rne.mlir:710:19
	beq r9, zero, .LBB0_522
.LBB0_531:                              # %scalar.ph225
                                        #   in Loop: Header=BB0_518 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r12, 0
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	bneq r10, r7, .LBB0_523
	j .LBB0_524
.LBB0_532:                              #   in Loop: Header=BB0_518 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r9, r6, r18
	.loc	1 720 19 is_stmt 1              # parallel-rne.mlir:720:19
	setlt.u r10, r14, r10
	.loc	1 721 19                        # parallel-rne.mlir:721:19
	bneq r10, zero, .LBB0_517
	j .LBB0_516
.LBB0_533:                              # %vector.body227.preheader
                                        #   in Loop: Header=BB0_514 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[9:10], zero
	j .LBB0_535
.LBB0_534:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	.loc	1 690 11 is_stmt 1              # parallel-rne.mlir:690:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 723 13                        # parallel-rne.mlir:723:13
	add.s r5, r16, r21
	.loc	1 690 11                        # parallel-rne.mlir:690:11
	seteq.d r2, r[9:10], r[22:23]
	.loc	1 723 13                        # parallel-rne.mlir:723:13
	stores.w r4, 12(r5)
	stores.w r28, 8(r5)
	stores.w r26, 4(r5)
	stores.w r27, 0(r5)
	.loc	1 690 11                        # parallel-rne.mlir:690:11
	bneq r2, zero, .LBB0_513
.LBB0_535:                              # %vector.body227
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_514 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	add.ul r[4:5], r[9:10], r[19:20]
	slli r21, r4, 2
	add.s r4, r17, r21
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	add.s r12, r11, r21
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	add.s r28, r15, r21
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	loads.w r2, 0(r4)
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	loads.w r5, 0(r12)
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	and r2, r2, r1
	.loc	1 696 19                        # parallel-rne.mlir:696:19
	and r5, r5, r1
	.loc	1 699 19                        # parallel-rne.mlir:699:19
	seteq r6, r2, r7
	.loc	1 703 19                        # parallel-rne.mlir:703:19
	seteq r23, r2, zero
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	seteq r13, r5, zero
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	seteq r22, r5, r7
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	max.u r2, r2, r5
	setlt.u r2, r7, r2
	.loc	1 701 19                        # parallel-rne.mlir:701:19
	and r5, r6, r13
	.loc	1 704 19                        # parallel-rne.mlir:704:19
	and r6, r23, r22
	.loc	1 705 19                        # parallel-rne.mlir:705:19
	or r5, r5, r6
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	or r6, r2, r5
	lui r2, 523264
	lui r5, 523264
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	bneq r6, zero, .LBB0_537
# %bb.536:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r28)
.LBB0_537:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	loads.w r6, 4(r4)
	loads.w r13, 4(r12)
	and r6, r6, r1
	and r13, r13, r1
	seteq r22, r6, r7
	seteq r25, r6, zero
	seteq r23, r13, zero
	seteq r24, r13, r7
	max.u r6, r6, r13
	setlt.u r6, r7, r6
	and r13, r22, r23
	and r22, r25, r24
	or r13, r13, r22
	or r13, r6, r13
	lui r6, 523264
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	bneq r13, zero, .LBB0_539
# %bb.538:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 4(r28)
.LBB0_539:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	loads.w r13, 8(r4)
	loads.w r22, 8(r12)
	and r13, r13, r1
	and r22, r22, r1
	seteq r23, r13, r7
	seteq r26, r13, zero
	seteq r24, r22, zero
	seteq r25, r22, r7
	max.u r13, r13, r22
	setlt.u r13, r7, r13
	and r22, r23, r24
	and r23, r26, r25
	or r22, r22, r23
	or r22, r13, r22
	lui r13, 523264
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	bneq r22, zero, .LBB0_541
# %bb.540:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 8(r28)
.LBB0_541:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	loads.w r4, 12(r4)
	loads.w r12, 12(r12)
	and r4, r4, r1
	and r12, r12, r1
	seteq r22, r4, r7
	seteq r25, r4, zero
	seteq r23, r12, zero
	seteq r24, r12, r7
	max.u r4, r4, r12
	setlt.u r4, r7, r4
	and r12, r22, r23
	and r22, r25, r24
	or r12, r12, r22
	or r4, r4, r12
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	bneq r4, zero, .LBB0_543
# %bb.542:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r28)
.LBB0_543:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	.loc	1 711 19 is_stmt 1              # parallel-rne.mlir:711:19
	and r12, r2, r1
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	setlt.u r4, r7, r12
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	bneq r4, zero, .LBB0_545
# %bb.544:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r2, 0
	j .LBB0_546
.LBB0_545:                              #   in Loop: Header=BB0_535 Depth=3
	or r4, r2, r18
.LBB0_546:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	and r24, r13, r1
	setlt.u r22, r7, r24
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	bneq r22, zero, .LBB0_548
# %bb.547:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r13, 0
	j .LBB0_549
.LBB0_548:                              #   in Loop: Header=BB0_535 Depth=3
	or r28, r13, r18
.LBB0_549:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	and r25, r6, r1
	setlt.u r22, r7, r25
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	bneq r22, zero, .LBB0_551
# %bb.550:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r6, 0
	j .LBB0_552
.LBB0_551:                              #   in Loop: Header=BB0_535 Depth=3
	or r26, r6, r18
.LBB0_552:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	and r22, r5, r1
	setlt.u r23, r7, r22
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	bneq r23, zero, .LBB0_554
# %bb.553:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r5, 0
	.loc	1 720 19 is_stmt 1              # parallel-rne.mlir:720:19
	setlt.u r22, r14, r22
	.loc	1 721 19                        # parallel-rne.mlir:721:19
	beq r22, zero, .LBB0_555
	j .LBB0_556
.LBB0_554:                              #   in Loop: Header=BB0_535 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r5, r18
	.loc	1 720 19 is_stmt 1              # parallel-rne.mlir:720:19
	setlt.u r22, r14, r22
	.loc	1 721 19                        # parallel-rne.mlir:721:19
	bneq r22, zero, .LBB0_556
.LBB0_555:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r5, 16
	andi r22, r22, 1
	add.s r5, r5, r22
	add.s r5, r5, r3
	and r27, r5, r8
.LBB0_556:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	setlt.u r5, r14, r25
	.loc	1 721 19                        # parallel-rne.mlir:721:19
	bneq r5, zero, .LBB0_558
# %bb.557:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r3
	and r26, r5, r8
.LBB0_558:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	setlt.u r5, r14, r24
	load.d r[22:23], -280(r30)              # 8-byte Folded Reload
	.loc	1 721 19                        # parallel-rne.mlir:721:19
	bneq r5, zero, .LBB0_560
# %bb.559:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r13, 16
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r3
	and r28, r5, r8
.LBB0_560:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	setlt.u r5, r14, r12
	.loc	1 721 19                        # parallel-rne.mlir:721:19
	bneq r5, zero, .LBB0_534
# %bb.561:                              # %vector.body227
                                        #   in Loop: Header=BB0_535 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	add.s r2, r2, r3
	and r4, r2, r8
	j .LBB0_534
.LBB0_562:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r9
	.loc	1 682 7                         # parallel-rne.mlir:682:7
	mfence { sm }
	.loc	1 728 7                         # parallel-rne.mlir:728:7
	addli r2, zero, 2
	beq r9, r2, .LBB0_720
.LBB0_563:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 774 7                         # parallel-rne.mlir:774:7
	addli r2, zero, 3
	bneq r9, r2, .LBB0_771
.LBB0_564:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -384(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -388(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	storeli.w r2, -336(r30)                 # 4-byte Folded Spill
	addli r2, zero, 48
	.loc	1 774 7                         # parallel-rne.mlir:774:7
	xfence
	zext_int2long r[9:10], r2
	mfence { lm, sm, gm }
	j .LBB0_566
.LBB0_565:                              # %middle.block203
                                        #   in Loop: Header=BB0_566 Depth=2
	.loc	1 781 9 is_stmt 1               # parallel-rne.mlir:781:9
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	load.d r[9:10], -288(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r2, zero, .LBB0_614
.LBB0_566:                              # %.preheader69
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_587 Depth 3
                                        #       Child Loop BB0_570 Depth 3
	.loc	1 782 11                        # parallel-rne.mlir:782:11
	loadli.w r2,  -336(r30)                 # 4-byte Folded Reload
	sll.d r[19:20], r[9:10], r5
	store.d r[9:10], -288(r30)              # 8-byte Folded Spill
	beq r2, zero, .LBB0_585
# %bb.567:                              # %scalar.ph195.preheader
                                        #   in Loop: Header=BB0_566 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[26:27], zero
	j .LBB0_570
.LBB0_568:                              # %scalar.ph195
                                        #   in Loop: Header=BB0_570 Depth=3
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r3
	and r5, r4, r8
.LBB0_569:                              # %scalar.ph195
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 782 11                        # parallel-rne.mlir:782:11
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	.loc	1 815 13 is_stmt 1              # parallel-rne.mlir:815:13
	add.s r2, r16, r2
	stores.w r5, 0(r2)
	.loc	1 782 11                        # parallel-rne.mlir:782:11
	setlt.ul r4, r[26:27], r[9:10]
	addli.d r[26:27], r[26:27], 1
	beq r4, zero, .LBB0_565
.LBB0_570:                              # %scalar.ph195
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_566 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 783 19                        # parallel-rne.mlir:783:19
	add.ul r[4:5], r[26:27], r[19:20]
	lui r9, 523264
	slli r2, r4, 2
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	add.s r4, r11, r2
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	add.s r5, r15, r2
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	loads.w r4, 0(r4)
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	loads.w r10, 0(r5)
	.loc	1 788 19                        # parallel-rne.mlir:788:19
	and r5, r4, r1
	lui r4, 523264
	.loc	1 802 19                        # parallel-rne.mlir:802:19
	beq r5, r7, .LBB0_572
# %bb.571:                              # %scalar.ph195
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
.LBB0_572:                              # %scalar.ph195
                                        #   in Loop: Header=BB0_570 Depth=3
	add.s r6, r17, r2
	loads.w r6, 0(r6)
	and r6, r6, r1
	.loc	1 802 19                        # parallel-rne.mlir:802:19
	beq r6, zero, .LBB0_582
# %bb.573:                              # %scalar.ph195
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r10, 0
	lui r10, 523264
	.loc	1 802 19                        # parallel-rne.mlir:802:19
	bneq r5, zero, .LBB0_583
.LBB0_574:                              # %scalar.ph195
                                        #   in Loop: Header=BB0_570 Depth=3
	beq r6, r7, .LBB0_576
.LBB0_575:                              # %scalar.ph195
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
.LBB0_576:                              # %scalar.ph195
                                        #   in Loop: Header=BB0_570 Depth=3
	setlt.u r9, r7, r5
	lui r5, 523264
	.loc	1 802 19                        # parallel-rne.mlir:802:19
	bneq r9, zero, .LBB0_578
# %bb.577:                              # %scalar.ph195
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r10, 0
.LBB0_578:                              # %scalar.ph195
                                        #   in Loop: Header=BB0_570 Depth=3
	setlt.u r6, r7, r6
	.loc	1 802 19                        # parallel-rne.mlir:802:19
	bneq r6, zero, .LBB0_580
# %bb.579:                              # %scalar.ph195
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r5, 0
.LBB0_580:                              # %scalar.ph195
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 803 19 is_stmt 1              # parallel-rne.mlir:803:19
	and r6, r4, r1
	.loc	1 805 19                        # parallel-rne.mlir:805:19
	setlt.u r5, r7, r6
	.loc	1 806 19                        # parallel-rne.mlir:806:19
	bneq r5, zero, .LBB0_584
# %bb.581:                              # %scalar.ph195
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r4, 0
	.loc	1 812 19 is_stmt 1              # parallel-rne.mlir:812:19
	setlt.u r6, r14, r6
	.loc	1 813 19                        # parallel-rne.mlir:813:19
	bneq r6, zero, .LBB0_569
	j .LBB0_568
.LBB0_582:                              # %scalar.ph195
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	lui r10, 523264
	.loc	1 802 19 is_stmt 1              # parallel-rne.mlir:802:19
	beq r5, zero, .LBB0_574
.LBB0_583:                              # %scalar.ph195
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r9, 0
	.loc	1 802 19                        # parallel-rne.mlir:802:19
	bneq r6, r7, .LBB0_575
	j .LBB0_576
.LBB0_584:                              #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r5, r4, r18
	.loc	1 812 19 is_stmt 1              # parallel-rne.mlir:812:19
	setlt.u r6, r14, r6
	.loc	1 813 19                        # parallel-rne.mlir:813:19
	bneq r6, zero, .LBB0_569
	j .LBB0_568
.LBB0_585:                              # %vector.body197.preheader
                                        #   in Loop: Header=BB0_566 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[26:27], zero
	j .LBB0_587
.LBB0_586:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	.loc	1 782 11 is_stmt 1              # parallel-rne.mlir:782:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 815 13                        # parallel-rne.mlir:815:13
	add.s r5, r16, r6
	.loc	1 782 11                        # parallel-rne.mlir:782:11
	seteq.d r2, r[26:27], r[22:23]
	.loc	1 815 13                        # parallel-rne.mlir:815:13
	stores.w r4, 12(r5)
	stores.w r12, 8(r5)
	stores.w r9, 4(r5)
	stores.w r10, 0(r5)
	.loc	1 782 11                        # parallel-rne.mlir:782:11
	bneq r2, zero, .LBB0_565
.LBB0_587:                              # %vector.body197
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_566 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 783 19                        # parallel-rne.mlir:783:19
	add.ul r[4:5], r[26:27], r[19:20]
	slli r6, r4, 2
	add.s r4, r17, r6
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	add.s r12, r11, r6
	.loc	1 783 19                        # parallel-rne.mlir:783:19
	loads.w r2, 0(r4)
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	loads.w r5, 0(r12)
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	and r2, r2, r1
	.loc	1 788 19                        # parallel-rne.mlir:788:19
	and r5, r5, r1
	.loc	1 791 19                        # parallel-rne.mlir:791:19
	seteq r9, r2, r7
	.loc	1 795 19                        # parallel-rne.mlir:795:19
	seteq r21, r2, zero
	.loc	1 792 19                        # parallel-rne.mlir:792:19
	seteq r10, r5, zero
	.loc	1 794 19                        # parallel-rne.mlir:794:19
	seteq r13, r5, r7
	.loc	1 800 19                        # parallel-rne.mlir:800:19
	max.u r2, r2, r5
	setlt.u r2, r7, r2
	.loc	1 793 19                        # parallel-rne.mlir:793:19
	and r5, r9, r10
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	and r9, r21, r13
	lui r21, 523264
	.loc	1 797 19                        # parallel-rne.mlir:797:19
	or r9, r5, r9
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	add.s r5, r15, r6
	.loc	1 801 19                        # parallel-rne.mlir:801:19
	or r9, r2, r9
	lui r2, 523264
	.loc	1 802 19                        # parallel-rne.mlir:802:19
	bneq r9, zero, .LBB0_589
# %bb.588:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r21, 0(r5)
.LBB0_589:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	loads.w r9, 4(r4)
	loads.w r10, 4(r12)
	lui r28, 523264
	and r9, r9, r1
	and r10, r10, r1
	seteq r13, r9, r7
	seteq r24, r9, zero
	seteq r22, r10, zero
	seteq r23, r10, r7
	max.u r9, r9, r10
	setlt.u r9, r7, r9
	and r10, r13, r22
	and r13, r24, r23
	or r10, r10, r13
	or r9, r9, r10
	.loc	1 802 19                        # parallel-rne.mlir:802:19
	bneq r9, zero, .LBB0_591
# %bb.590:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 4(r5)
.LBB0_591:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	loads.w r9, 8(r4)
	loads.w r10, 8(r12)
	and r9, r9, r1
	and r10, r10, r1
	seteq r13, r9, r7
	seteq r24, r9, zero
	seteq r22, r10, zero
	seteq r23, r10, r7
	max.u r9, r9, r10
	setlt.u r9, r7, r9
	and r10, r13, r22
	and r13, r24, r23
	or r10, r10, r13
	lui r13, 523264
	or r9, r9, r10
	.loc	1 802 19                        # parallel-rne.mlir:802:19
	bneq r9, zero, .LBB0_593
# %bb.592:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 8(r5)
.LBB0_593:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	loads.w r4, 12(r4)
	loads.w r9, 12(r12)
	and r4, r4, r1
	and r9, r9, r1
	seteq r10, r4, r7
	seteq r23, r4, zero
	seteq r12, r9, zero
	seteq r22, r9, r7
	max.u r4, r4, r9
	setlt.u r4, r7, r4
	and r9, r10, r12
	and r10, r23, r22
	or r9, r9, r10
	or r4, r4, r9
	.loc	1 802 19                        # parallel-rne.mlir:802:19
	bneq r4, zero, .LBB0_595
# %bb.594:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r5)
.LBB0_595:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	.loc	1 803 19 is_stmt 1              # parallel-rne.mlir:803:19
	and r5, r2, r1
	.loc	1 805 19                        # parallel-rne.mlir:805:19
	setlt.u r4, r7, r5
	.loc	1 806 19                        # parallel-rne.mlir:806:19
	bneq r4, zero, .LBB0_597
# %bb.596:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r2, 0
	j .LBB0_598
.LBB0_597:                              #   in Loop: Header=BB0_587 Depth=3
	or r4, r2, r18
.LBB0_598:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	and r24, r13, r1
	setlt.u r9, r7, r24
	.loc	1 806 19                        # parallel-rne.mlir:806:19
	bneq r9, zero, .LBB0_600
# %bb.599:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r13, 0
	j .LBB0_601
.LBB0_600:                              #   in Loop: Header=BB0_587 Depth=3
	or r12, r13, r18
.LBB0_601:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	and r25, r28, r1
	setlt.u r9, r7, r25
	.loc	1 806 19                        # parallel-rne.mlir:806:19
	bneq r9, zero, .LBB0_603
# %bb.602:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r28, 0
	j .LBB0_604
.LBB0_603:                              #   in Loop: Header=BB0_587 Depth=3
	or r9, r28, r18
.LBB0_604:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	and r22, r21, r1
	setlt.u r10, r7, r22
	.loc	1 806 19                        # parallel-rne.mlir:806:19
	bneq r10, zero, .LBB0_606
# %bb.605:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r21, 0
	.loc	1 812 19 is_stmt 1              # parallel-rne.mlir:812:19
	setlt.u r22, r14, r22
	.loc	1 813 19                        # parallel-rne.mlir:813:19
	beq r22, zero, .LBB0_607
	j .LBB0_608
.LBB0_606:                              #   in Loop: Header=BB0_587 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r21, r18
	.loc	1 812 19 is_stmt 1              # parallel-rne.mlir:812:19
	setlt.u r22, r14, r22
	.loc	1 813 19                        # parallel-rne.mlir:813:19
	bneq r22, zero, .LBB0_608
.LBB0_607:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r21, 16
	andi r10, r10, 1
	add.s r10, r21, r10
	add.s r10, r10, r3
	and r10, r10, r8
.LBB0_608:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	setlt.u r21, r14, r25
	.loc	1 813 19                        # parallel-rne.mlir:813:19
	bneq r21, zero, .LBB0_610
# %bb.609:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r28, 16
	andi r9, r9, 1
	add.s r9, r28, r9
	add.s r9, r9, r3
	and r9, r9, r8
.LBB0_610:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	setlt.u r21, r14, r24
	load.d r[22:23], -280(r30)              # 8-byte Folded Reload
	.loc	1 813 19                        # parallel-rne.mlir:813:19
	bneq r21, zero, .LBB0_612
# %bb.611:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r13, 16
	andi r12, r12, 1
	add.s r12, r13, r12
	add.s r12, r12, r3
	and r12, r12, r8
.LBB0_612:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	setlt.u r5, r14, r5
	.loc	1 813 19                        # parallel-rne.mlir:813:19
	bneq r5, zero, .LBB0_586
# %bb.613:                              # %vector.body197
                                        #   in Loop: Header=BB0_587 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	add.s r2, r2, r3
	and r4, r2, r8
	j .LBB0_586
.LBB0_614:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r9
	.loc	1 774 7                         # parallel-rne.mlir:774:7
	mfence { sm }
	.loc	1 820 7                         # parallel-rne.mlir:820:7
	addli r2, zero, 4
	beq r9, r2, .LBB0_772
.LBB0_615:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 7                         # parallel-rne.mlir:866:7
	addli r2, zero, 5
	bneq r9, r2, .LBB0_823
.LBB0_616:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -384(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -388(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	storeli.w r2, -320(r30)                 # 4-byte Folded Spill
	addli r2, zero, 80
	.loc	1 866 7                         # parallel-rne.mlir:866:7
	xfence
	zext_int2long r[9:10], r2
	mfence { lm, sm, gm }
	j .LBB0_618
.LBB0_617:                              # %middle.block173
                                        #   in Loop: Header=BB0_618 Depth=2
	.loc	1 873 9 is_stmt 1               # parallel-rne.mlir:873:9
	load.d r[4:5], -312(r30)                # 8-byte Folded Reload
	load.d r[9:10], -288(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r2, zero, .LBB0_666
.LBB0_618:                              # %.preheader67
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_639 Depth 3
                                        #       Child Loop BB0_622 Depth 3
	.loc	1 874 11                        # parallel-rne.mlir:874:11
	loadli.w r2,  -320(r30)                 # 4-byte Folded Reload
	sll.d r[19:20], r[9:10], r5
	store.d r[9:10], -288(r30)              # 8-byte Folded Spill
	beq r2, zero, .LBB0_637
# %bb.619:                              # %scalar.ph165.preheader
                                        #   in Loop: Header=BB0_618 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[26:27], zero
	j .LBB0_622
.LBB0_620:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_622 Depth=3
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r3
	and r5, r4, r8
.LBB0_621:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 874 11                        # parallel-rne.mlir:874:11
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	.loc	1 907 13 is_stmt 1              # parallel-rne.mlir:907:13
	add.s r2, r16, r2
	stores.w r5, 0(r2)
	.loc	1 874 11                        # parallel-rne.mlir:874:11
	setlt.ul r4, r[26:27], r[9:10]
	addli.d r[26:27], r[26:27], 1
	beq r4, zero, .LBB0_617
.LBB0_622:                              # %scalar.ph165
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_618 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 875 19                        # parallel-rne.mlir:875:19
	add.ul r[4:5], r[26:27], r[19:20]
	lui r9, 523264
	slli r2, r4, 2
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	add.s r4, r11, r2
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	add.s r5, r15, r2
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	loads.w r4, 0(r4)
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	loads.w r10, 0(r5)
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	and r5, r4, r1
	lui r4, 523264
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	beq r5, r7, .LBB0_624
# %bb.623:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
.LBB0_624:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_622 Depth=3
	add.s r6, r17, r2
	loads.w r6, 0(r6)
	and r6, r6, r1
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	beq r6, zero, .LBB0_634
# %bb.625:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r10, 0
	lui r10, 523264
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	bneq r5, zero, .LBB0_635
.LBB0_626:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_622 Depth=3
	beq r6, r7, .LBB0_628
.LBB0_627:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
.LBB0_628:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_622 Depth=3
	setlt.u r9, r7, r5
	lui r5, 523264
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	bneq r9, zero, .LBB0_630
# %bb.629:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r10, 0
.LBB0_630:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_622 Depth=3
	setlt.u r6, r7, r6
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	bneq r6, zero, .LBB0_632
# %bb.631:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r5, 0
.LBB0_632:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 895 19 is_stmt 1              # parallel-rne.mlir:895:19
	and r6, r4, r1
	.loc	1 897 19                        # parallel-rne.mlir:897:19
	setlt.u r5, r7, r6
	.loc	1 898 19                        # parallel-rne.mlir:898:19
	bneq r5, zero, .LBB0_636
# %bb.633:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r4, 0
	.loc	1 904 19 is_stmt 1              # parallel-rne.mlir:904:19
	setlt.u r6, r14, r6
	.loc	1 905 19                        # parallel-rne.mlir:905:19
	bneq r6, zero, .LBB0_621
	j .LBB0_620
.LBB0_634:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	lui r10, 523264
	.loc	1 894 19 is_stmt 1              # parallel-rne.mlir:894:19
	beq r5, zero, .LBB0_626
.LBB0_635:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r9, 0
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	bneq r6, r7, .LBB0_627
	j .LBB0_628
.LBB0_636:                              #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r5, r4, r18
	.loc	1 904 19 is_stmt 1              # parallel-rne.mlir:904:19
	setlt.u r6, r14, r6
	.loc	1 905 19                        # parallel-rne.mlir:905:19
	bneq r6, zero, .LBB0_621
	j .LBB0_620
.LBB0_637:                              # %vector.body167.preheader
                                        #   in Loop: Header=BB0_618 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[26:27], zero
	j .LBB0_639
.LBB0_638:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 874 11 is_stmt 1              # parallel-rne.mlir:874:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 907 13                        # parallel-rne.mlir:907:13
	add.s r5, r16, r6
	.loc	1 874 11                        # parallel-rne.mlir:874:11
	seteq.d r2, r[26:27], r[22:23]
	.loc	1 907 13                        # parallel-rne.mlir:907:13
	stores.w r4, 12(r5)
	stores.w r12, 8(r5)
	stores.w r9, 4(r5)
	stores.w r10, 0(r5)
	.loc	1 874 11                        # parallel-rne.mlir:874:11
	bneq r2, zero, .LBB0_617
.LBB0_639:                              # %vector.body167
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_618 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 875 19                        # parallel-rne.mlir:875:19
	add.ul r[4:5], r[26:27], r[19:20]
	slli r6, r4, 2
	add.s r4, r17, r6
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	add.s r12, r11, r6
	.loc	1 875 19                        # parallel-rne.mlir:875:19
	loads.w r2, 0(r4)
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	loads.w r5, 0(r12)
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	and r2, r2, r1
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	and r5, r5, r1
	.loc	1 883 19                        # parallel-rne.mlir:883:19
	seteq r9, r2, r7
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	seteq r21, r2, zero
	.loc	1 884 19                        # parallel-rne.mlir:884:19
	seteq r10, r5, zero
	.loc	1 886 19                        # parallel-rne.mlir:886:19
	seteq r13, r5, r7
	.loc	1 892 19                        # parallel-rne.mlir:892:19
	max.u r2, r2, r5
	setlt.u r2, r7, r2
	.loc	1 885 19                        # parallel-rne.mlir:885:19
	and r5, r9, r10
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	and r9, r21, r13
	lui r21, 523264
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	or r9, r5, r9
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	add.s r5, r15, r6
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	or r9, r2, r9
	lui r2, 523264
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	bneq r9, zero, .LBB0_641
# %bb.640:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r21, 0(r5)
.LBB0_641:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	loads.w r9, 4(r4)
	loads.w r10, 4(r12)
	lui r28, 523264
	and r9, r9, r1
	and r10, r10, r1
	seteq r13, r9, r7
	seteq r24, r9, zero
	seteq r22, r10, zero
	seteq r23, r10, r7
	max.u r9, r9, r10
	setlt.u r9, r7, r9
	and r10, r13, r22
	and r13, r24, r23
	or r10, r10, r13
	or r9, r9, r10
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	bneq r9, zero, .LBB0_643
# %bb.642:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 4(r5)
.LBB0_643:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	loads.w r9, 8(r4)
	loads.w r10, 8(r12)
	and r9, r9, r1
	and r10, r10, r1
	seteq r13, r9, r7
	seteq r24, r9, zero
	seteq r22, r10, zero
	seteq r23, r10, r7
	max.u r9, r9, r10
	setlt.u r9, r7, r9
	and r10, r13, r22
	and r13, r24, r23
	or r10, r10, r13
	lui r13, 523264
	or r9, r9, r10
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	bneq r9, zero, .LBB0_645
# %bb.644:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 8(r5)
.LBB0_645:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	loads.w r4, 12(r4)
	loads.w r9, 12(r12)
	and r4, r4, r1
	and r9, r9, r1
	seteq r10, r4, r7
	seteq r23, r4, zero
	seteq r12, r9, zero
	seteq r22, r9, r7
	max.u r4, r4, r9
	setlt.u r4, r7, r4
	and r9, r10, r12
	and r10, r23, r22
	or r9, r9, r10
	or r4, r4, r9
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	bneq r4, zero, .LBB0_647
# %bb.646:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r5)
.LBB0_647:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 895 19 is_stmt 1              # parallel-rne.mlir:895:19
	and r5, r2, r1
	.loc	1 897 19                        # parallel-rne.mlir:897:19
	setlt.u r4, r7, r5
	.loc	1 898 19                        # parallel-rne.mlir:898:19
	bneq r4, zero, .LBB0_649
# %bb.648:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r2, 0
	j .LBB0_650
.LBB0_649:                              #   in Loop: Header=BB0_639 Depth=3
	or r4, r2, r18
.LBB0_650:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	and r24, r13, r1
	setlt.u r9, r7, r24
	.loc	1 898 19                        # parallel-rne.mlir:898:19
	bneq r9, zero, .LBB0_652
# %bb.651:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r13, 0
	j .LBB0_653
.LBB0_652:                              #   in Loop: Header=BB0_639 Depth=3
	or r12, r13, r18
.LBB0_653:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	and r25, r28, r1
	setlt.u r9, r7, r25
	.loc	1 898 19                        # parallel-rne.mlir:898:19
	bneq r9, zero, .LBB0_655
# %bb.654:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r28, 0
	j .LBB0_656
.LBB0_655:                              #   in Loop: Header=BB0_639 Depth=3
	or r9, r28, r18
.LBB0_656:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	and r22, r21, r1
	setlt.u r10, r7, r22
	.loc	1 898 19                        # parallel-rne.mlir:898:19
	bneq r10, zero, .LBB0_658
# %bb.657:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r21, 0
	.loc	1 904 19 is_stmt 1              # parallel-rne.mlir:904:19
	setlt.u r22, r14, r22
	.loc	1 905 19                        # parallel-rne.mlir:905:19
	beq r22, zero, .LBB0_659
	j .LBB0_660
.LBB0_658:                              #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r21, r18
	.loc	1 904 19 is_stmt 1              # parallel-rne.mlir:904:19
	setlt.u r22, r14, r22
	.loc	1 905 19                        # parallel-rne.mlir:905:19
	bneq r22, zero, .LBB0_660
.LBB0_659:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r21, 16
	andi r10, r10, 1
	add.s r10, r21, r10
	add.s r10, r10, r3
	and r10, r10, r8
.LBB0_660:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	setlt.u r21, r14, r25
	.loc	1 905 19                        # parallel-rne.mlir:905:19
	bneq r21, zero, .LBB0_662
# %bb.661:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r28, 16
	andi r9, r9, 1
	add.s r9, r28, r9
	add.s r9, r9, r3
	and r9, r9, r8
.LBB0_662:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	setlt.u r21, r14, r24
	load.d r[22:23], -280(r30)              # 8-byte Folded Reload
	.loc	1 905 19                        # parallel-rne.mlir:905:19
	bneq r21, zero, .LBB0_664
# %bb.663:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r13, 16
	andi r12, r12, 1
	add.s r12, r13, r12
	add.s r12, r12, r3
	and r12, r12, r8
.LBB0_664:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	setlt.u r5, r14, r5
	.loc	1 905 19                        # parallel-rne.mlir:905:19
	bneq r5, zero, .LBB0_638
# %bb.665:                              # %vector.body167
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	add.s r2, r2, r3
	and r4, r2, r8
	j .LBB0_638
.LBB0_666:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r9
	.loc	1 866 7                         # parallel-rne.mlir:866:7
	mfence { sm }
	.loc	1 912 7                         # parallel-rne.mlir:912:7
	addli r2, zero, 6
	beq r9, r2, .LBB0_824
.LBB0_667:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 958 7                         # parallel-rne.mlir:958:7
	beq r9, r5, .LBB0_875
	j .LBB0_926
.LBB0_668:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -384(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -388(r30)                 # 4-byte Folded Reload
	zext_int2long r[9:10], zero
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	.loc	1 636 7 is_stmt 1               # parallel-rne.mlir:636:7
	storeli.w r2, -380(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_670
.LBB0_669:                              # %middle.block248
                                        #   in Loop: Header=BB0_670 Depth=2
	.loc	1 643 9                         # parallel-rne.mlir:643:9
	load.d r[4:5], -360(r30)                # 8-byte Folded Reload
	load.d r[9:10], -376(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r2, zero, .LBB0_718
.LBB0_670:                              # %.preheader72
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_691 Depth 3
                                        #       Child Loop BB0_674 Depth 3
	.loc	1 644 11                        # parallel-rne.mlir:644:11
	loadli.w r2,  -380(r30)                 # 4-byte Folded Reload
	sll.d r[19:20], r[9:10], r5
	store.d r[9:10], -376(r30)              # 8-byte Folded Spill
	beq r2, zero, .LBB0_689
# %bb.671:                              # %scalar.ph240.preheader
                                        #   in Loop: Header=BB0_670 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_674
.LBB0_672:                              # %scalar.ph240
                                        #   in Loop: Header=BB0_674 Depth=3
	srli r9, r6, 16
	andi r9, r9, 1
	add.s r6, r6, r9
	add.s r6, r6, r3
	and r9, r6, r8
.LBB0_673:                              # %scalar.ph240
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 644 11                        # parallel-rne.mlir:644:11
	load.d r[12:13], -272(r30)              # 8-byte Folded Reload
	.loc	1 677 13 is_stmt 1              # parallel-rne.mlir:677:13
	add.s r2, r16, r2
	stores.w r9, 0(r2)
	.loc	1 644 11                        # parallel-rne.mlir:644:11
	setlt.ul r6, r[4:5], r[12:13]
	addli.d r[4:5], r[4:5], 1
	beq r6, zero, .LBB0_669
.LBB0_674:                              # %scalar.ph240
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_670 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 645 19                        # parallel-rne.mlir:645:19
	add.ul r[9:10], r[4:5], r[19:20]
	lui r12, 523264
	slli r2, r9, 2
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	add.s r6, r11, r2
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	add.s r9, r15, r2
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	loads.w r6, 0(r6)
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	loads.w r13, 0(r9)
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	and r9, r6, r1
	lui r6, 523264
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	beq r9, r7, .LBB0_676
# %bb.675:                              # %scalar.ph240
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
.LBB0_676:                              # %scalar.ph240
                                        #   in Loop: Header=BB0_674 Depth=3
	add.s r10, r17, r2
	loads.w r10, 0(r10)
	and r10, r10, r1
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	beq r10, zero, .LBB0_686
# %bb.677:                              # %scalar.ph240
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r13, 0
	lui r13, 523264
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	bneq r9, zero, .LBB0_687
.LBB0_678:                              # %scalar.ph240
                                        #   in Loop: Header=BB0_674 Depth=3
	beq r10, r7, .LBB0_680
.LBB0_679:                              # %scalar.ph240
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r12, 0
.LBB0_680:                              # %scalar.ph240
                                        #   in Loop: Header=BB0_674 Depth=3
	setlt.u r12, r7, r9
	lui r9, 523264
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	bneq r12, zero, .LBB0_682
# %bb.681:                              # %scalar.ph240
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
.LBB0_682:                              # %scalar.ph240
                                        #   in Loop: Header=BB0_674 Depth=3
	setlt.u r10, r7, r10
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	bneq r10, zero, .LBB0_684
# %bb.683:                              # %scalar.ph240
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r9, 0
.LBB0_684:                              # %scalar.ph240
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 665 19 is_stmt 1              # parallel-rne.mlir:665:19
	and r10, r6, r1
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	setlt.u r9, r7, r10
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	bneq r9, zero, .LBB0_688
# %bb.685:                              # %scalar.ph240
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r6, 0
	.loc	1 674 19 is_stmt 1              # parallel-rne.mlir:674:19
	setlt.u r10, r14, r10
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	bneq r10, zero, .LBB0_673
	j .LBB0_672
.LBB0_686:                              # %scalar.ph240
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	lui r13, 523264
	.loc	1 664 19 is_stmt 1              # parallel-rne.mlir:664:19
	beq r9, zero, .LBB0_678
.LBB0_687:                              # %scalar.ph240
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r12, 0
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	bneq r10, r7, .LBB0_679
	j .LBB0_680
.LBB0_688:                              #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r9, r6, r18
	.loc	1 674 19 is_stmt 1              # parallel-rne.mlir:674:19
	setlt.u r10, r14, r10
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	bneq r10, zero, .LBB0_673
	j .LBB0_672
.LBB0_689:                              # %vector.body242.preheader
                                        #   in Loop: Header=BB0_670 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[9:10], zero
	.loc	1 644 11 is_stmt 1              # parallel-rne.mlir:644:11
	store.d r[19:20], -288(r30)             # 8-byte Folded Spill
	j .LBB0_691
.LBB0_690:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	addli.d r[9:10], r[9:10], 4
	.loc	1 677 13                        # parallel-rne.mlir:677:13
	add.s r5, r16, r21
	.loc	1 644 11                        # parallel-rne.mlir:644:11
	seteq.d r2, r[9:10], r[22:23]
	.loc	1 677 13                        # parallel-rne.mlir:677:13
	stores.w r4, 12(r5)
	stores.w r28, 8(r5)
	stores.w r26, 4(r5)
	stores.w r27, 0(r5)
	.loc	1 644 11                        # parallel-rne.mlir:644:11
	bneq r2, zero, .LBB0_669
.LBB0_691:                              # %vector.body242
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_670 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 645 19                        # parallel-rne.mlir:645:19
	add.ul r[4:5], r[9:10], r[19:20]
	slli r21, r4, 2
	add.s r4, r17, r21
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	add.s r12, r11, r21
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	add.s r28, r15, r21
	.loc	1 645 19                        # parallel-rne.mlir:645:19
	loads.w r2, 0(r4)
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	loads.w r5, 0(r12)
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	and r2, r2, r1
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	and r5, r5, r1
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	seteq r6, r2, r7
	.loc	1 657 19                        # parallel-rne.mlir:657:19
	seteq r20, r2, zero
	.loc	1 654 19                        # parallel-rne.mlir:654:19
	seteq r13, r5, zero
	.loc	1 656 19                        # parallel-rne.mlir:656:19
	seteq r19, r5, r7
	.loc	1 662 19                        # parallel-rne.mlir:662:19
	max.u r2, r2, r5
	setlt.u r2, r7, r2
	.loc	1 655 19                        # parallel-rne.mlir:655:19
	and r5, r6, r13
	.loc	1 658 19                        # parallel-rne.mlir:658:19
	and r6, r20, r19
	.loc	1 659 19                        # parallel-rne.mlir:659:19
	or r5, r5, r6
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	or r6, r2, r5
	lui r2, 523264
	lui r5, 523264
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	bneq r6, zero, .LBB0_693
# %bb.692:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r28)
.LBB0_693:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	loads.w r6, 4(r4)
	loads.w r13, 4(r12)
	and r6, r6, r1
	and r13, r13, r1
	seteq r19, r6, r7
	seteq r23, r6, zero
	seteq r20, r13, zero
	seteq r22, r13, r7
	max.u r6, r6, r13
	setlt.u r6, r7, r6
	and r13, r19, r20
	and r19, r23, r22
	or r13, r13, r19
	or r13, r6, r13
	lui r6, 523264
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	bneq r13, zero, .LBB0_695
# %bb.694:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 4(r28)
.LBB0_695:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	loads.w r13, 8(r4)
	loads.w r19, 8(r12)
	and r13, r13, r1
	and r19, r19, r1
	seteq r20, r13, r7
	seteq r24, r13, zero
	seteq r22, r19, zero
	seteq r23, r19, r7
	max.u r13, r13, r19
	setlt.u r13, r7, r13
	and r19, r20, r22
	and r20, r24, r23
	or r19, r19, r20
	or r19, r13, r19
	lui r13, 523264
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	bneq r19, zero, .LBB0_697
# %bb.696:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 8(r28)
.LBB0_697:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	loads.w r4, 12(r4)
	loads.w r12, 12(r12)
	and r4, r4, r1
	and r12, r12, r1
	seteq r19, r4, r7
	seteq r23, r4, zero
	seteq r20, r12, zero
	seteq r22, r12, r7
	max.u r4, r4, r12
	setlt.u r4, r7, r4
	and r12, r19, r20
	and r19, r23, r22
	or r12, r12, r19
	or r4, r4, r12
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	bneq r4, zero, .LBB0_699
# %bb.698:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r28)
.LBB0_699:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	.loc	1 665 19 is_stmt 1              # parallel-rne.mlir:665:19
	and r12, r2, r1
	load.d r[22:23], -280(r30)              # 8-byte Folded Reload
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	setlt.u r4, r7, r12
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	bneq r4, zero, .LBB0_701
# %bb.700:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r2, 0
	j .LBB0_702
.LBB0_701:                              #   in Loop: Header=BB0_691 Depth=3
	or r4, r2, r18
.LBB0_702:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	and r24, r13, r1
	setlt.u r19, r7, r24
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	bneq r19, zero, .LBB0_704
# %bb.703:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r13, 0
	j .LBB0_705
.LBB0_704:                              #   in Loop: Header=BB0_691 Depth=3
	or r28, r13, r18
.LBB0_705:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	and r25, r6, r1
	setlt.u r19, r7, r25
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	bneq r19, zero, .LBB0_707
# %bb.706:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r6, 0
	j .LBB0_708
.LBB0_707:                              #   in Loop: Header=BB0_691 Depth=3
	or r26, r6, r18
.LBB0_708:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	and r19, r5, r1
	setlt.u r20, r7, r19
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	bneq r20, zero, .LBB0_710
# %bb.709:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r5, 0
	.loc	1 674 19 is_stmt 1              # parallel-rne.mlir:674:19
	setlt.u r19, r14, r19
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	beq r19, zero, .LBB0_711
	j .LBB0_712
.LBB0_710:                              #   in Loop: Header=BB0_691 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r5, r18
	.loc	1 674 19 is_stmt 1              # parallel-rne.mlir:674:19
	setlt.u r19, r14, r19
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	bneq r19, zero, .LBB0_712
.LBB0_711:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r5, 16
	andi r19, r19, 1
	add.s r5, r5, r19
	add.s r5, r5, r3
	and r27, r5, r8
.LBB0_712:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	setlt.u r5, r14, r25
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	bneq r5, zero, .LBB0_714
# %bb.713:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r3
	and r26, r5, r8
.LBB0_714:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	setlt.u r5, r14, r24
	load.d r[19:20], -288(r30)              # 8-byte Folded Reload
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	bneq r5, zero, .LBB0_716
# %bb.715:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r13, 16
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r3
	and r28, r5, r8
.LBB0_716:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	setlt.u r5, r14, r12
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	bneq r5, zero, .LBB0_690
# %bb.717:                              # %vector.body242
                                        #   in Loop: Header=BB0_691 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	add.s r2, r2, r3
	and r4, r2, r8
	j .LBB0_690
.LBB0_718:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r9
	.loc	1 636 7                         # parallel-rne.mlir:636:7
	mfence { sm }
	.loc	1 682 7                         # parallel-rne.mlir:682:7
	addli r2, zero, 1
	beq r9, r2, .LBB0_512
.LBB0_719:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 728 7                         # parallel-rne.mlir:728:7
	addli r2, zero, 2
	bneq r9, r2, .LBB0_563
.LBB0_720:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -384(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -388(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	storeli.w r2, -344(r30)                 # 4-byte Folded Spill
	addli r2, zero, 32
	.loc	1 728 7                         # parallel-rne.mlir:728:7
	xfence
	zext_int2long r[9:10], r2
	mfence { lm, sm, gm }
	j .LBB0_722
.LBB0_721:                              # %middle.block218
                                        #   in Loop: Header=BB0_722 Depth=2
	.loc	1 735 9 is_stmt 1               # parallel-rne.mlir:735:9
	load.d r[4:5], -336(r30)                # 8-byte Folded Reload
	load.d r[9:10], -288(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r2, zero, .LBB0_770
.LBB0_722:                              # %.preheader70
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_743 Depth 3
                                        #       Child Loop BB0_726 Depth 3
	.loc	1 736 11                        # parallel-rne.mlir:736:11
	loadli.w r2,  -344(r30)                 # 4-byte Folded Reload
	sll.d r[19:20], r[9:10], r5
	store.d r[9:10], -288(r30)              # 8-byte Folded Spill
	beq r2, zero, .LBB0_741
# %bb.723:                              # %scalar.ph210.preheader
                                        #   in Loop: Header=BB0_722 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_726
.LBB0_724:                              # %scalar.ph210
                                        #   in Loop: Header=BB0_726 Depth=3
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r3
	and r5, r4, r8
.LBB0_725:                              # %scalar.ph210
                                        #   in Loop: Header=BB0_726 Depth=3
	.loc	1 736 11                        # parallel-rne.mlir:736:11
	load.d r[12:13], -272(r30)              # 8-byte Folded Reload
	.loc	1 769 13 is_stmt 1              # parallel-rne.mlir:769:13
	add.s r2, r16, r2
	stores.w r5, 0(r2)
	.loc	1 736 11                        # parallel-rne.mlir:736:11
	setlt.ul r4, r[9:10], r[12:13]
	addli.d r[9:10], r[9:10], 1
	beq r4, zero, .LBB0_721
.LBB0_726:                              # %scalar.ph210
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_722 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	add.ul r[4:5], r[9:10], r[19:20]
	lui r12, 523264
	slli r2, r4, 2
	.loc	1 738 19                        # parallel-rne.mlir:738:19
	add.s r4, r11, r2
	.loc	1 739 19                        # parallel-rne.mlir:739:19
	add.s r5, r15, r2
	.loc	1 738 19                        # parallel-rne.mlir:738:19
	loads.w r4, 0(r4)
	.loc	1 739 19                        # parallel-rne.mlir:739:19
	loads.w r13, 0(r5)
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	and r5, r4, r1
	lui r4, 523264
	.loc	1 756 19                        # parallel-rne.mlir:756:19
	beq r5, r7, .LBB0_728
# %bb.727:                              # %scalar.ph210
                                        #   in Loop: Header=BB0_726 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
.LBB0_728:                              # %scalar.ph210
                                        #   in Loop: Header=BB0_726 Depth=3
	add.s r6, r17, r2
	loads.w r6, 0(r6)
	and r6, r6, r1
	.loc	1 756 19                        # parallel-rne.mlir:756:19
	beq r6, zero, .LBB0_738
# %bb.729:                              # %scalar.ph210
                                        #   in Loop: Header=BB0_726 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r13, 0
	lui r13, 523264
	.loc	1 756 19                        # parallel-rne.mlir:756:19
	bneq r5, zero, .LBB0_739
.LBB0_730:                              # %scalar.ph210
                                        #   in Loop: Header=BB0_726 Depth=3
	beq r6, r7, .LBB0_732
.LBB0_731:                              # %scalar.ph210
                                        #   in Loop: Header=BB0_726 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r12, 0
.LBB0_732:                              # %scalar.ph210
                                        #   in Loop: Header=BB0_726 Depth=3
	setlt.u r12, r7, r5
	lui r5, 523264
	.loc	1 756 19                        # parallel-rne.mlir:756:19
	bneq r12, zero, .LBB0_734
# %bb.733:                              # %scalar.ph210
                                        #   in Loop: Header=BB0_726 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r13, 0
.LBB0_734:                              # %scalar.ph210
                                        #   in Loop: Header=BB0_726 Depth=3
	setlt.u r6, r7, r6
	.loc	1 756 19                        # parallel-rne.mlir:756:19
	bneq r6, zero, .LBB0_736
# %bb.735:                              # %scalar.ph210
                                        #   in Loop: Header=BB0_726 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r5, 0
.LBB0_736:                              # %scalar.ph210
                                        #   in Loop: Header=BB0_726 Depth=3
	.loc	1 757 19 is_stmt 1              # parallel-rne.mlir:757:19
	and r6, r4, r1
	.loc	1 759 19                        # parallel-rne.mlir:759:19
	setlt.u r5, r7, r6
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	bneq r5, zero, .LBB0_740
# %bb.737:                              # %scalar.ph210
                                        #   in Loop: Header=BB0_726 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r4, 0
	.loc	1 766 19 is_stmt 1              # parallel-rne.mlir:766:19
	setlt.u r6, r14, r6
	.loc	1 767 19                        # parallel-rne.mlir:767:19
	bneq r6, zero, .LBB0_725
	j .LBB0_724
.LBB0_738:                              # %scalar.ph210
                                        #   in Loop: Header=BB0_726 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	lui r13, 523264
	.loc	1 756 19 is_stmt 1              # parallel-rne.mlir:756:19
	beq r5, zero, .LBB0_730
.LBB0_739:                              # %scalar.ph210
                                        #   in Loop: Header=BB0_726 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r12, 0
	.loc	1 756 19                        # parallel-rne.mlir:756:19
	bneq r6, r7, .LBB0_731
	j .LBB0_732
.LBB0_740:                              #   in Loop: Header=BB0_726 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r5, r4, r18
	.loc	1 766 19 is_stmt 1              # parallel-rne.mlir:766:19
	setlt.u r6, r14, r6
	.loc	1 767 19                        # parallel-rne.mlir:767:19
	bneq r6, zero, .LBB0_725
	j .LBB0_724
.LBB0_741:                              # %vector.body212.preheader
                                        #   in Loop: Header=BB0_722 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[9:10], zero
	j .LBB0_743
.LBB0_742:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	.loc	1 736 11 is_stmt 1              # parallel-rne.mlir:736:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 769 13                        # parallel-rne.mlir:769:13
	add.s r5, r16, r6
	.loc	1 736 11                        # parallel-rne.mlir:736:11
	seteq.d r2, r[9:10], r[22:23]
	.loc	1 769 13                        # parallel-rne.mlir:769:13
	stores.w r4, 12(r5)
	stores.w r12, 8(r5)
	stores.w r26, 4(r5)
	stores.w r27, 0(r5)
	.loc	1 736 11                        # parallel-rne.mlir:736:11
	bneq r2, zero, .LBB0_721
.LBB0_743:                              # %vector.body212
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_722 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	add.ul r[4:5], r[9:10], r[19:20]
	slli r6, r4, 2
	add.s r4, r17, r6
	.loc	1 738 19                        # parallel-rne.mlir:738:19
	add.s r12, r11, r6
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	loads.w r2, 0(r4)
	.loc	1 738 19                        # parallel-rne.mlir:738:19
	loads.w r5, 0(r12)
	.loc	1 744 19                        # parallel-rne.mlir:744:19
	and r2, r2, r1
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	and r5, r5, r1
	.loc	1 745 19                        # parallel-rne.mlir:745:19
	seteq r13, r2, r7
	.loc	1 749 19                        # parallel-rne.mlir:749:19
	seteq r23, r2, zero
	.loc	1 746 19                        # parallel-rne.mlir:746:19
	seteq r21, r5, zero
	.loc	1 748 19                        # parallel-rne.mlir:748:19
	seteq r22, r5, r7
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	max.u r2, r2, r5
	setlt.u r2, r7, r2
	.loc	1 747 19                        # parallel-rne.mlir:747:19
	and r5, r13, r21
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	and r13, r23, r22
	lui r21, 523264
	.loc	1 751 19                        # parallel-rne.mlir:751:19
	or r13, r5, r13
	.loc	1 739 19                        # parallel-rne.mlir:739:19
	add.s r5, r15, r6
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	or r13, r2, r13
	lui r2, 523264
	.loc	1 756 19                        # parallel-rne.mlir:756:19
	bneq r13, zero, .LBB0_745
# %bb.744:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r21, 0(r5)
.LBB0_745:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	loads.w r13, 4(r4)
	loads.w r22, 4(r12)
	lui r28, 523264
	and r13, r13, r1
	and r22, r22, r1
	seteq r23, r13, r7
	seteq r26, r13, zero
	seteq r24, r22, zero
	seteq r25, r22, r7
	max.u r13, r13, r22
	setlt.u r13, r7, r13
	and r22, r23, r24
	and r23, r26, r25
	or r22, r22, r23
	or r13, r13, r22
	.loc	1 756 19                        # parallel-rne.mlir:756:19
	bneq r13, zero, .LBB0_747
# %bb.746:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 4(r5)
.LBB0_747:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	loads.w r13, 8(r4)
	loads.w r22, 8(r12)
	and r13, r13, r1
	and r22, r22, r1
	seteq r23, r13, r7
	seteq r26, r13, zero
	seteq r24, r22, zero
	seteq r25, r22, r7
	max.u r13, r13, r22
	setlt.u r13, r7, r13
	and r22, r23, r24
	and r23, r26, r25
	or r22, r22, r23
	or r22, r13, r22
	lui r13, 523264
	.loc	1 756 19                        # parallel-rne.mlir:756:19
	bneq r22, zero, .LBB0_749
# %bb.748:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 8(r5)
.LBB0_749:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	loads.w r4, 12(r4)
	loads.w r12, 12(r12)
	and r4, r4, r1
	and r12, r12, r1
	seteq r22, r4, r7
	seteq r25, r4, zero
	seteq r23, r12, zero
	seteq r24, r12, r7
	max.u r4, r4, r12
	setlt.u r4, r7, r4
	and r12, r22, r23
	and r22, r25, r24
	or r12, r12, r22
	or r4, r4, r12
	.loc	1 756 19                        # parallel-rne.mlir:756:19
	bneq r4, zero, .LBB0_751
# %bb.750:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r5)
.LBB0_751:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	.loc	1 757 19 is_stmt 1              # parallel-rne.mlir:757:19
	and r5, r2, r1
	.loc	1 759 19                        # parallel-rne.mlir:759:19
	setlt.u r4, r7, r5
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	bneq r4, zero, .LBB0_753
# %bb.752:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r2, 0
	j .LBB0_754
.LBB0_753:                              #   in Loop: Header=BB0_743 Depth=3
	or r4, r2, r18
.LBB0_754:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	and r24, r13, r1
	setlt.u r12, r7, r24
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	bneq r12, zero, .LBB0_756
# %bb.755:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r13, 0
	j .LBB0_757
.LBB0_756:                              #   in Loop: Header=BB0_743 Depth=3
	or r12, r13, r18
.LBB0_757:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	and r25, r28, r1
	setlt.u r22, r7, r25
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	bneq r22, zero, .LBB0_759
# %bb.758:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r28, 0
	j .LBB0_760
.LBB0_759:                              #   in Loop: Header=BB0_743 Depth=3
	or r26, r28, r18
.LBB0_760:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	and r22, r21, r1
	setlt.u r23, r7, r22
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	bneq r23, zero, .LBB0_762
# %bb.761:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r21, 0
	.loc	1 766 19 is_stmt 1              # parallel-rne.mlir:766:19
	setlt.u r22, r14, r22
	.loc	1 767 19                        # parallel-rne.mlir:767:19
	beq r22, zero, .LBB0_763
	j .LBB0_764
.LBB0_762:                              #   in Loop: Header=BB0_743 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r21, r18
	.loc	1 766 19 is_stmt 1              # parallel-rne.mlir:766:19
	setlt.u r22, r14, r22
	.loc	1 767 19                        # parallel-rne.mlir:767:19
	bneq r22, zero, .LBB0_764
.LBB0_763:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r21, 16
	andi r22, r22, 1
	add.s r21, r21, r22
	add.s r21, r21, r3
	and r27, r21, r8
.LBB0_764:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	setlt.u r21, r14, r25
	.loc	1 767 19                        # parallel-rne.mlir:767:19
	bneq r21, zero, .LBB0_766
# %bb.765:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r21, r28, 16
	andi r21, r21, 1
	add.s r21, r28, r21
	add.s r21, r21, r3
	and r26, r21, r8
.LBB0_766:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	setlt.u r21, r14, r24
	load.d r[22:23], -280(r30)              # 8-byte Folded Reload
	.loc	1 767 19                        # parallel-rne.mlir:767:19
	bneq r21, zero, .LBB0_768
# %bb.767:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r13, 16
	andi r12, r12, 1
	add.s r12, r13, r12
	add.s r12, r12, r3
	and r12, r12, r8
.LBB0_768:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	setlt.u r5, r14, r5
	.loc	1 767 19                        # parallel-rne.mlir:767:19
	bneq r5, zero, .LBB0_742
# %bb.769:                              # %vector.body212
                                        #   in Loop: Header=BB0_743 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	add.s r2, r2, r3
	and r4, r2, r8
	j .LBB0_742
.LBB0_770:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r9
	.loc	1 728 7                         # parallel-rne.mlir:728:7
	mfence { sm }
	.loc	1 774 7                         # parallel-rne.mlir:774:7
	addli r2, zero, 3
	beq r9, r2, .LBB0_564
.LBB0_771:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 820 7                         # parallel-rne.mlir:820:7
	addli r2, zero, 4
	bneq r9, r2, .LBB0_615
.LBB0_772:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -384(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -388(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	storeli.w r2, -328(r30)                 # 4-byte Folded Spill
	addli r2, zero, 64
	.loc	1 820 7                         # parallel-rne.mlir:820:7
	xfence
	zext_int2long r[9:10], r2
	mfence { lm, sm, gm }
	j .LBB0_774
.LBB0_773:                              # %middle.block188
                                        #   in Loop: Header=BB0_774 Depth=2
	.loc	1 827 9 is_stmt 1               # parallel-rne.mlir:827:9
	load.d r[4:5], -320(r30)                # 8-byte Folded Reload
	load.d r[9:10], -288(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r2, zero, .LBB0_822
.LBB0_774:                              # %.preheader68
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_795 Depth 3
                                        #       Child Loop BB0_778 Depth 3
	.loc	1 828 11                        # parallel-rne.mlir:828:11
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	sll.d r[19:20], r[9:10], r5
	store.d r[9:10], -288(r30)              # 8-byte Folded Spill
	beq r2, zero, .LBB0_793
# %bb.775:                              # %scalar.ph180.preheader
                                        #   in Loop: Header=BB0_774 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[26:27], zero
	j .LBB0_778
.LBB0_776:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_778 Depth=3
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r3
	and r5, r4, r8
.LBB0_777:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_778 Depth=3
	.loc	1 828 11                        # parallel-rne.mlir:828:11
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	.loc	1 861 13 is_stmt 1              # parallel-rne.mlir:861:13
	add.s r2, r16, r2
	stores.w r5, 0(r2)
	.loc	1 828 11                        # parallel-rne.mlir:828:11
	setlt.ul r4, r[26:27], r[9:10]
	addli.d r[26:27], r[26:27], 1
	beq r4, zero, .LBB0_773
.LBB0_778:                              # %scalar.ph180
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_774 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 829 19                        # parallel-rne.mlir:829:19
	add.ul r[4:5], r[26:27], r[19:20]
	lui r9, 523264
	slli r2, r4, 2
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	add.s r4, r11, r2
	.loc	1 831 19                        # parallel-rne.mlir:831:19
	add.s r5, r15, r2
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	loads.w r4, 0(r4)
	.loc	1 831 19                        # parallel-rne.mlir:831:19
	loads.w r10, 0(r5)
	.loc	1 834 19                        # parallel-rne.mlir:834:19
	and r5, r4, r1
	lui r4, 523264
	.loc	1 848 19                        # parallel-rne.mlir:848:19
	beq r5, r7, .LBB0_780
# %bb.779:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_778 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
.LBB0_780:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_778 Depth=3
	add.s r6, r17, r2
	loads.w r6, 0(r6)
	and r6, r6, r1
	.loc	1 848 19                        # parallel-rne.mlir:848:19
	beq r6, zero, .LBB0_790
# %bb.781:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_778 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r10, 0
	lui r10, 523264
	.loc	1 848 19                        # parallel-rne.mlir:848:19
	bneq r5, zero, .LBB0_791
.LBB0_782:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_778 Depth=3
	beq r6, r7, .LBB0_784
.LBB0_783:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_778 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
.LBB0_784:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_778 Depth=3
	setlt.u r9, r7, r5
	lui r5, 523264
	.loc	1 848 19                        # parallel-rne.mlir:848:19
	bneq r9, zero, .LBB0_786
# %bb.785:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_778 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r10, 0
.LBB0_786:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_778 Depth=3
	setlt.u r6, r7, r6
	.loc	1 848 19                        # parallel-rne.mlir:848:19
	bneq r6, zero, .LBB0_788
# %bb.787:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_778 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r5, 0
.LBB0_788:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_778 Depth=3
	.loc	1 849 19 is_stmt 1              # parallel-rne.mlir:849:19
	and r6, r4, r1
	.loc	1 851 19                        # parallel-rne.mlir:851:19
	setlt.u r5, r7, r6
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	bneq r5, zero, .LBB0_792
# %bb.789:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_778 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r4, 0
	.loc	1 858 19 is_stmt 1              # parallel-rne.mlir:858:19
	setlt.u r6, r14, r6
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	bneq r6, zero, .LBB0_777
	j .LBB0_776
.LBB0_790:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_778 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	lui r10, 523264
	.loc	1 848 19 is_stmt 1              # parallel-rne.mlir:848:19
	beq r5, zero, .LBB0_782
.LBB0_791:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_778 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r9, 0
	.loc	1 848 19                        # parallel-rne.mlir:848:19
	bneq r6, r7, .LBB0_783
	j .LBB0_784
.LBB0_792:                              #   in Loop: Header=BB0_778 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r5, r4, r18
	.loc	1 858 19 is_stmt 1              # parallel-rne.mlir:858:19
	setlt.u r6, r14, r6
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	bneq r6, zero, .LBB0_777
	j .LBB0_776
.LBB0_793:                              # %vector.body182.preheader
                                        #   in Loop: Header=BB0_774 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[26:27], zero
	j .LBB0_795
.LBB0_794:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	.loc	1 828 11 is_stmt 1              # parallel-rne.mlir:828:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 861 13                        # parallel-rne.mlir:861:13
	add.s r5, r16, r6
	.loc	1 828 11                        # parallel-rne.mlir:828:11
	seteq.d r2, r[26:27], r[22:23]
	.loc	1 861 13                        # parallel-rne.mlir:861:13
	stores.w r4, 12(r5)
	stores.w r12, 8(r5)
	stores.w r9, 4(r5)
	stores.w r10, 0(r5)
	.loc	1 828 11                        # parallel-rne.mlir:828:11
	bneq r2, zero, .LBB0_773
.LBB0_795:                              # %vector.body182
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_774 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 829 19                        # parallel-rne.mlir:829:19
	add.ul r[4:5], r[26:27], r[19:20]
	slli r6, r4, 2
	add.s r4, r17, r6
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	add.s r12, r11, r6
	.loc	1 829 19                        # parallel-rne.mlir:829:19
	loads.w r2, 0(r4)
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	loads.w r5, 0(r12)
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	and r2, r2, r1
	.loc	1 834 19                        # parallel-rne.mlir:834:19
	and r5, r5, r1
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	seteq r9, r2, r7
	.loc	1 841 19                        # parallel-rne.mlir:841:19
	seteq r21, r2, zero
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	seteq r10, r5, zero
	.loc	1 840 19                        # parallel-rne.mlir:840:19
	seteq r13, r5, r7
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	max.u r2, r2, r5
	setlt.u r2, r7, r2
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	and r5, r9, r10
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	and r9, r21, r13
	lui r21, 523264
	.loc	1 843 19                        # parallel-rne.mlir:843:19
	or r9, r5, r9
	.loc	1 831 19                        # parallel-rne.mlir:831:19
	add.s r5, r15, r6
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	or r9, r2, r9
	lui r2, 523264
	.loc	1 848 19                        # parallel-rne.mlir:848:19
	bneq r9, zero, .LBB0_797
# %bb.796:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r21, 0(r5)
.LBB0_797:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	loads.w r9, 4(r4)
	loads.w r10, 4(r12)
	lui r28, 523264
	and r9, r9, r1
	and r10, r10, r1
	seteq r13, r9, r7
	seteq r24, r9, zero
	seteq r22, r10, zero
	seteq r23, r10, r7
	max.u r9, r9, r10
	setlt.u r9, r7, r9
	and r10, r13, r22
	and r13, r24, r23
	or r10, r10, r13
	or r9, r9, r10
	.loc	1 848 19                        # parallel-rne.mlir:848:19
	bneq r9, zero, .LBB0_799
# %bb.798:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 4(r5)
.LBB0_799:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	loads.w r9, 8(r4)
	loads.w r10, 8(r12)
	and r9, r9, r1
	and r10, r10, r1
	seteq r13, r9, r7
	seteq r24, r9, zero
	seteq r22, r10, zero
	seteq r23, r10, r7
	max.u r9, r9, r10
	setlt.u r9, r7, r9
	and r10, r13, r22
	and r13, r24, r23
	or r10, r10, r13
	lui r13, 523264
	or r9, r9, r10
	.loc	1 848 19                        # parallel-rne.mlir:848:19
	bneq r9, zero, .LBB0_801
# %bb.800:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 8(r5)
.LBB0_801:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	loads.w r4, 12(r4)
	loads.w r9, 12(r12)
	and r4, r4, r1
	and r9, r9, r1
	seteq r10, r4, r7
	seteq r23, r4, zero
	seteq r12, r9, zero
	seteq r22, r9, r7
	max.u r4, r4, r9
	setlt.u r4, r7, r4
	and r9, r10, r12
	and r10, r23, r22
	or r9, r9, r10
	or r4, r4, r9
	.loc	1 848 19                        # parallel-rne.mlir:848:19
	bneq r4, zero, .LBB0_803
# %bb.802:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r5)
.LBB0_803:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	.loc	1 849 19 is_stmt 1              # parallel-rne.mlir:849:19
	and r5, r2, r1
	.loc	1 851 19                        # parallel-rne.mlir:851:19
	setlt.u r4, r7, r5
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	bneq r4, zero, .LBB0_805
# %bb.804:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r2, 0
	j .LBB0_806
.LBB0_805:                              #   in Loop: Header=BB0_795 Depth=3
	or r4, r2, r18
.LBB0_806:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	and r24, r13, r1
	setlt.u r9, r7, r24
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	bneq r9, zero, .LBB0_808
# %bb.807:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r13, 0
	j .LBB0_809
.LBB0_808:                              #   in Loop: Header=BB0_795 Depth=3
	or r12, r13, r18
.LBB0_809:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	and r25, r28, r1
	setlt.u r9, r7, r25
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	bneq r9, zero, .LBB0_811
# %bb.810:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r28, 0
	j .LBB0_812
.LBB0_811:                              #   in Loop: Header=BB0_795 Depth=3
	or r9, r28, r18
.LBB0_812:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	and r22, r21, r1
	setlt.u r10, r7, r22
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	bneq r10, zero, .LBB0_814
# %bb.813:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r21, 0
	.loc	1 858 19 is_stmt 1              # parallel-rne.mlir:858:19
	setlt.u r22, r14, r22
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	beq r22, zero, .LBB0_815
	j .LBB0_816
.LBB0_814:                              #   in Loop: Header=BB0_795 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r21, r18
	.loc	1 858 19 is_stmt 1              # parallel-rne.mlir:858:19
	setlt.u r22, r14, r22
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	bneq r22, zero, .LBB0_816
.LBB0_815:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r21, 16
	andi r10, r10, 1
	add.s r10, r21, r10
	add.s r10, r10, r3
	and r10, r10, r8
.LBB0_816:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	setlt.u r21, r14, r25
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	bneq r21, zero, .LBB0_818
# %bb.817:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r28, 16
	andi r9, r9, 1
	add.s r9, r28, r9
	add.s r9, r9, r3
	and r9, r9, r8
.LBB0_818:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	setlt.u r21, r14, r24
	load.d r[22:23], -280(r30)              # 8-byte Folded Reload
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	bneq r21, zero, .LBB0_820
# %bb.819:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r13, 16
	andi r12, r12, 1
	add.s r12, r13, r12
	add.s r12, r12, r3
	and r12, r12, r8
.LBB0_820:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	setlt.u r5, r14, r5
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	bneq r5, zero, .LBB0_794
# %bb.821:                              # %vector.body182
                                        #   in Loop: Header=BB0_795 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	add.s r2, r2, r3
	and r4, r2, r8
	j .LBB0_794
.LBB0_822:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r9
	.loc	1 820 7                         # parallel-rne.mlir:820:7
	mfence { sm }
	.loc	1 866 7                         # parallel-rne.mlir:866:7
	addli r2, zero, 5
	beq r9, r2, .LBB0_616
.LBB0_823:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 912 7                         # parallel-rne.mlir:912:7
	addli r2, zero, 6
	bneq r9, r2, .LBB0_667
.LBB0_824:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -384(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -388(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	storeli.w r2, -312(r30)                 # 4-byte Folded Spill
	addli r2, zero, 96
	.loc	1 912 7                         # parallel-rne.mlir:912:7
	xfence
	zext_int2long r[9:10], r2
	mfence { lm, sm, gm }
	j .LBB0_826
.LBB0_825:                              # %middle.block158
                                        #   in Loop: Header=BB0_826 Depth=2
	.loc	1 919 9 is_stmt 1               # parallel-rne.mlir:919:9
	load.d r[4:5], -304(r30)                # 8-byte Folded Reload
	load.d r[9:10], -288(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r2, zero, .LBB0_874
.LBB0_826:                              # %.preheader66
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_847 Depth 3
                                        #       Child Loop BB0_830 Depth 3
	.loc	1 920 11                        # parallel-rne.mlir:920:11
	loadli.w r2,  -312(r30)                 # 4-byte Folded Reload
	sll.d r[19:20], r[9:10], r5
	store.d r[9:10], -288(r30)              # 8-byte Folded Spill
	beq r2, zero, .LBB0_845
# %bb.827:                              # %scalar.ph150.preheader
                                        #   in Loop: Header=BB0_826 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[26:27], zero
	j .LBB0_830
.LBB0_828:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_830 Depth=3
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r3
	and r5, r4, r8
.LBB0_829:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_830 Depth=3
	.loc	1 920 11                        # parallel-rne.mlir:920:11
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	.loc	1 953 13 is_stmt 1              # parallel-rne.mlir:953:13
	add.s r2, r16, r2
	stores.w r5, 0(r2)
	.loc	1 920 11                        # parallel-rne.mlir:920:11
	setlt.ul r4, r[26:27], r[9:10]
	addli.d r[26:27], r[26:27], 1
	beq r4, zero, .LBB0_825
.LBB0_830:                              # %scalar.ph150
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_826 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 921 19                        # parallel-rne.mlir:921:19
	add.ul r[4:5], r[26:27], r[19:20]
	lui r9, 523264
	slli r2, r4, 2
	.loc	1 922 19                        # parallel-rne.mlir:922:19
	add.s r4, r11, r2
	.loc	1 923 19                        # parallel-rne.mlir:923:19
	add.s r5, r15, r2
	.loc	1 922 19                        # parallel-rne.mlir:922:19
	loads.w r4, 0(r4)
	.loc	1 923 19                        # parallel-rne.mlir:923:19
	loads.w r10, 0(r5)
	.loc	1 926 19                        # parallel-rne.mlir:926:19
	and r5, r4, r1
	lui r4, 523264
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	beq r5, r7, .LBB0_832
# %bb.831:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_830 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
.LBB0_832:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_830 Depth=3
	add.s r6, r17, r2
	loads.w r6, 0(r6)
	and r6, r6, r1
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	beq r6, zero, .LBB0_842
# %bb.833:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_830 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r10, 0
	lui r10, 523264
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	bneq r5, zero, .LBB0_843
.LBB0_834:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_830 Depth=3
	beq r6, r7, .LBB0_836
.LBB0_835:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_830 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
.LBB0_836:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_830 Depth=3
	setlt.u r9, r7, r5
	lui r5, 523264
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	bneq r9, zero, .LBB0_838
# %bb.837:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_830 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r10, 0
.LBB0_838:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_830 Depth=3
	setlt.u r6, r7, r6
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	bneq r6, zero, .LBB0_840
# %bb.839:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_830 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r5, 0
.LBB0_840:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_830 Depth=3
	.loc	1 941 19 is_stmt 1              # parallel-rne.mlir:941:19
	and r6, r4, r1
	.loc	1 943 19                        # parallel-rne.mlir:943:19
	setlt.u r5, r7, r6
	.loc	1 944 19                        # parallel-rne.mlir:944:19
	bneq r5, zero, .LBB0_844
# %bb.841:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_830 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r4, 0
	.loc	1 950 19 is_stmt 1              # parallel-rne.mlir:950:19
	setlt.u r6, r14, r6
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	bneq r6, zero, .LBB0_829
	j .LBB0_828
.LBB0_842:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_830 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	lui r10, 523264
	.loc	1 940 19 is_stmt 1              # parallel-rne.mlir:940:19
	beq r5, zero, .LBB0_834
.LBB0_843:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_830 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r9, 0
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	bneq r6, r7, .LBB0_835
	j .LBB0_836
.LBB0_844:                              #   in Loop: Header=BB0_830 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r5, r4, r18
	.loc	1 950 19 is_stmt 1              # parallel-rne.mlir:950:19
	setlt.u r6, r14, r6
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	bneq r6, zero, .LBB0_829
	j .LBB0_828
.LBB0_845:                              # %vector.body152.preheader
                                        #   in Loop: Header=BB0_826 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[26:27], zero
	j .LBB0_847
.LBB0_846:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	.loc	1 920 11 is_stmt 1              # parallel-rne.mlir:920:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 953 13                        # parallel-rne.mlir:953:13
	add.s r5, r16, r6
	.loc	1 920 11                        # parallel-rne.mlir:920:11
	seteq.d r2, r[26:27], r[22:23]
	.loc	1 953 13                        # parallel-rne.mlir:953:13
	stores.w r4, 12(r5)
	stores.w r12, 8(r5)
	stores.w r9, 4(r5)
	stores.w r10, 0(r5)
	.loc	1 920 11                        # parallel-rne.mlir:920:11
	bneq r2, zero, .LBB0_825
.LBB0_847:                              # %vector.body152
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_826 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 921 19                        # parallel-rne.mlir:921:19
	add.ul r[4:5], r[26:27], r[19:20]
	slli r6, r4, 2
	add.s r4, r17, r6
	.loc	1 922 19                        # parallel-rne.mlir:922:19
	add.s r12, r11, r6
	.loc	1 921 19                        # parallel-rne.mlir:921:19
	loads.w r2, 0(r4)
	.loc	1 922 19                        # parallel-rne.mlir:922:19
	loads.w r5, 0(r12)
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	and r2, r2, r1
	.loc	1 926 19                        # parallel-rne.mlir:926:19
	and r5, r5, r1
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	seteq r9, r2, r7
	.loc	1 933 19                        # parallel-rne.mlir:933:19
	seteq r21, r2, zero
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	seteq r10, r5, zero
	.loc	1 932 19                        # parallel-rne.mlir:932:19
	seteq r13, r5, r7
	.loc	1 938 19                        # parallel-rne.mlir:938:19
	max.u r2, r2, r5
	setlt.u r2, r7, r2
	.loc	1 931 19                        # parallel-rne.mlir:931:19
	and r5, r9, r10
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	and r9, r21, r13
	lui r21, 523264
	.loc	1 935 19                        # parallel-rne.mlir:935:19
	or r9, r5, r9
	.loc	1 923 19                        # parallel-rne.mlir:923:19
	add.s r5, r15, r6
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	or r9, r2, r9
	lui r2, 523264
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	bneq r9, zero, .LBB0_849
# %bb.848:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r21, 0(r5)
.LBB0_849:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	loads.w r9, 4(r4)
	loads.w r10, 4(r12)
	lui r28, 523264
	and r9, r9, r1
	and r10, r10, r1
	seteq r13, r9, r7
	seteq r24, r9, zero
	seteq r22, r10, zero
	seteq r23, r10, r7
	max.u r9, r9, r10
	setlt.u r9, r7, r9
	and r10, r13, r22
	and r13, r24, r23
	or r10, r10, r13
	or r9, r9, r10
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	bneq r9, zero, .LBB0_851
# %bb.850:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 4(r5)
.LBB0_851:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	loads.w r9, 8(r4)
	loads.w r10, 8(r12)
	and r9, r9, r1
	and r10, r10, r1
	seteq r13, r9, r7
	seteq r24, r9, zero
	seteq r22, r10, zero
	seteq r23, r10, r7
	max.u r9, r9, r10
	setlt.u r9, r7, r9
	and r10, r13, r22
	and r13, r24, r23
	or r10, r10, r13
	lui r13, 523264
	or r9, r9, r10
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	bneq r9, zero, .LBB0_853
# %bb.852:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 8(r5)
.LBB0_853:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	loads.w r4, 12(r4)
	loads.w r9, 12(r12)
	and r4, r4, r1
	and r9, r9, r1
	seteq r10, r4, r7
	seteq r23, r4, zero
	seteq r12, r9, zero
	seteq r22, r9, r7
	max.u r4, r4, r9
	setlt.u r4, r7, r4
	and r9, r10, r12
	and r10, r23, r22
	or r9, r9, r10
	or r4, r4, r9
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	bneq r4, zero, .LBB0_855
# %bb.854:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r5)
.LBB0_855:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	.loc	1 941 19 is_stmt 1              # parallel-rne.mlir:941:19
	and r5, r2, r1
	.loc	1 943 19                        # parallel-rne.mlir:943:19
	setlt.u r4, r7, r5
	.loc	1 944 19                        # parallel-rne.mlir:944:19
	bneq r4, zero, .LBB0_857
# %bb.856:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r2, 0
	j .LBB0_858
.LBB0_857:                              #   in Loop: Header=BB0_847 Depth=3
	or r4, r2, r18
.LBB0_858:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	and r24, r13, r1
	setlt.u r9, r7, r24
	.loc	1 944 19                        # parallel-rne.mlir:944:19
	bneq r9, zero, .LBB0_860
# %bb.859:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r13, 0
	j .LBB0_861
.LBB0_860:                              #   in Loop: Header=BB0_847 Depth=3
	or r12, r13, r18
.LBB0_861:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	and r25, r28, r1
	setlt.u r9, r7, r25
	.loc	1 944 19                        # parallel-rne.mlir:944:19
	bneq r9, zero, .LBB0_863
# %bb.862:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r28, 0
	j .LBB0_864
.LBB0_863:                              #   in Loop: Header=BB0_847 Depth=3
	or r9, r28, r18
.LBB0_864:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	and r22, r21, r1
	setlt.u r10, r7, r22
	.loc	1 944 19                        # parallel-rne.mlir:944:19
	bneq r10, zero, .LBB0_866
# %bb.865:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r21, 0
	.loc	1 950 19 is_stmt 1              # parallel-rne.mlir:950:19
	setlt.u r22, r14, r22
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	beq r22, zero, .LBB0_867
	j .LBB0_868
.LBB0_866:                              #   in Loop: Header=BB0_847 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r21, r18
	.loc	1 950 19 is_stmt 1              # parallel-rne.mlir:950:19
	setlt.u r22, r14, r22
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	bneq r22, zero, .LBB0_868
.LBB0_867:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r21, 16
	andi r10, r10, 1
	add.s r10, r21, r10
	add.s r10, r10, r3
	and r10, r10, r8
.LBB0_868:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	setlt.u r21, r14, r25
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	bneq r21, zero, .LBB0_870
# %bb.869:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r28, 16
	andi r9, r9, 1
	add.s r9, r28, r9
	add.s r9, r9, r3
	and r9, r9, r8
.LBB0_870:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	setlt.u r21, r14, r24
	load.d r[22:23], -280(r30)              # 8-byte Folded Reload
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	bneq r21, zero, .LBB0_872
# %bb.871:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r13, 16
	andi r12, r12, 1
	add.s r12, r13, r12
	add.s r12, r12, r3
	and r12, r12, r8
.LBB0_872:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	setlt.u r5, r14, r5
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	bneq r5, zero, .LBB0_846
# %bb.873:                              # %vector.body152
                                        #   in Loop: Header=BB0_847 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	add.s r2, r2, r3
	and r4, r2, r8
	j .LBB0_846
.LBB0_874:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r9
	.loc	1 912 7                         # parallel-rne.mlir:912:7
	mfence { sm }
	.loc	1 958 7                         # parallel-rne.mlir:958:7
	bneq r9, r5, .LBB0_926
.LBB0_875:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -384(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -388(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	storeli.w r2, -304(r30)                 # 4-byte Folded Spill
	addli r2, zero, 112
	.loc	1 958 7                         # parallel-rne.mlir:958:7
	xfence
	zext_int2long r[9:10], r2
	mfence { lm, sm, gm }
	j .LBB0_877
.LBB0_876:                              # %middle.block
                                        #   in Loop: Header=BB0_877 Depth=2
	.loc	1 965 9 is_stmt 1               # parallel-rne.mlir:965:9
	load.d r[4:5], -272(r30)                # 8-byte Folded Reload
	load.d r[9:10], -288(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r2, zero, .LBB0_925
.LBB0_877:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_898 Depth 3
                                        #       Child Loop BB0_881 Depth 3
	.loc	1 966 11                        # parallel-rne.mlir:966:11
	loadli.w r2,  -304(r30)                 # 4-byte Folded Reload
	sll.d r[19:20], r[9:10], r5
	store.d r[9:10], -288(r30)              # 8-byte Folded Spill
	beq r2, zero, .LBB0_896
# %bb.878:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_877 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[26:27], zero
	j .LBB0_881
.LBB0_879:                              # %scalar.ph
                                        #   in Loop: Header=BB0_881 Depth=3
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r3
	and r5, r4, r8
.LBB0_880:                              # %scalar.ph
                                        #   in Loop: Header=BB0_881 Depth=3
	.loc	1 966 11                        # parallel-rne.mlir:966:11
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	.loc	1 999 13 is_stmt 1              # parallel-rne.mlir:999:13
	add.s r2, r16, r2
	stores.w r5, 0(r2)
	.loc	1 966 11                        # parallel-rne.mlir:966:11
	setlt.ul r4, r[26:27], r[9:10]
	addli.d r[26:27], r[26:27], 1
	beq r4, zero, .LBB0_876
.LBB0_881:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_877 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 967 19                        # parallel-rne.mlir:967:19
	add.ul r[4:5], r[26:27], r[19:20]
	lui r9, 523264
	slli r2, r4, 2
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	add.s r4, r11, r2
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	add.s r5, r15, r2
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	loads.w r4, 0(r4)
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	loads.w r10, 0(r5)
	.loc	1 972 19                        # parallel-rne.mlir:972:19
	and r5, r4, r1
	lui r4, 523264
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	beq r5, r7, .LBB0_883
# %bb.882:                              # %scalar.ph
                                        #   in Loop: Header=BB0_881 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
.LBB0_883:                              # %scalar.ph
                                        #   in Loop: Header=BB0_881 Depth=3
	add.s r6, r17, r2
	loads.w r6, 0(r6)
	and r6, r6, r1
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	beq r6, zero, .LBB0_893
# %bb.884:                              # %scalar.ph
                                        #   in Loop: Header=BB0_881 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r10, 0
	lui r10, 523264
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	bneq r5, zero, .LBB0_894
.LBB0_885:                              # %scalar.ph
                                        #   in Loop: Header=BB0_881 Depth=3
	beq r6, r7, .LBB0_887
.LBB0_886:                              # %scalar.ph
                                        #   in Loop: Header=BB0_881 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
.LBB0_887:                              # %scalar.ph
                                        #   in Loop: Header=BB0_881 Depth=3
	setlt.u r9, r7, r5
	lui r5, 523264
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	bneq r9, zero, .LBB0_889
# %bb.888:                              # %scalar.ph
                                        #   in Loop: Header=BB0_881 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r10, 0
.LBB0_889:                              # %scalar.ph
                                        #   in Loop: Header=BB0_881 Depth=3
	setlt.u r6, r7, r6
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	bneq r6, zero, .LBB0_891
# %bb.890:                              # %scalar.ph
                                        #   in Loop: Header=BB0_881 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r5, 0
.LBB0_891:                              # %scalar.ph
                                        #   in Loop: Header=BB0_881 Depth=3
	.loc	1 987 19 is_stmt 1              # parallel-rne.mlir:987:19
	and r6, r4, r1
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	setlt.u r5, r7, r6
	.loc	1 990 19                        # parallel-rne.mlir:990:19
	bneq r5, zero, .LBB0_895
# %bb.892:                              # %scalar.ph
                                        #   in Loop: Header=BB0_881 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r4, 0
	.loc	1 996 19 is_stmt 1              # parallel-rne.mlir:996:19
	setlt.u r6, r14, r6
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	bneq r6, zero, .LBB0_880
	j .LBB0_879
.LBB0_893:                              # %scalar.ph
                                        #   in Loop: Header=BB0_881 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	lui r10, 523264
	.loc	1 986 19 is_stmt 1              # parallel-rne.mlir:986:19
	beq r5, zero, .LBB0_885
.LBB0_894:                              # %scalar.ph
                                        #   in Loop: Header=BB0_881 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r9, 0
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	bneq r6, r7, .LBB0_886
	j .LBB0_887
.LBB0_895:                              #   in Loop: Header=BB0_881 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r5, r4, r18
	.loc	1 996 19 is_stmt 1              # parallel-rne.mlir:996:19
	setlt.u r6, r14, r6
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	bneq r6, zero, .LBB0_880
	j .LBB0_879
.LBB0_896:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_877 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[26:27], zero
	j .LBB0_898
.LBB0_897:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 966 11 is_stmt 1              # parallel-rne.mlir:966:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 999 13                        # parallel-rne.mlir:999:13
	add.s r5, r16, r6
	.loc	1 966 11                        # parallel-rne.mlir:966:11
	seteq.d r2, r[26:27], r[22:23]
	.loc	1 999 13                        # parallel-rne.mlir:999:13
	stores.w r4, 12(r5)
	stores.w r12, 8(r5)
	stores.w r9, 4(r5)
	stores.w r10, 0(r5)
	.loc	1 966 11                        # parallel-rne.mlir:966:11
	bneq r2, zero, .LBB0_876
.LBB0_898:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_877 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 967 19                        # parallel-rne.mlir:967:19
	add.ul r[4:5], r[26:27], r[19:20]
	slli r6, r4, 2
	add.s r4, r17, r6
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	add.s r12, r11, r6
	.loc	1 967 19                        # parallel-rne.mlir:967:19
	loads.w r2, 0(r4)
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	loads.w r5, 0(r12)
	.loc	1 974 19                        # parallel-rne.mlir:974:19
	and r2, r2, r1
	.loc	1 972 19                        # parallel-rne.mlir:972:19
	and r5, r5, r1
	.loc	1 975 19                        # parallel-rne.mlir:975:19
	seteq r9, r2, r7
	.loc	1 979 19                        # parallel-rne.mlir:979:19
	seteq r21, r2, zero
	.loc	1 976 19                        # parallel-rne.mlir:976:19
	seteq r10, r5, zero
	.loc	1 978 19                        # parallel-rne.mlir:978:19
	seteq r13, r5, r7
	.loc	1 984 19                        # parallel-rne.mlir:984:19
	max.u r2, r2, r5
	setlt.u r2, r7, r2
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	and r5, r9, r10
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	and r9, r21, r13
	lui r21, 523264
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	or r9, r5, r9
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	add.s r5, r15, r6
	.loc	1 985 19                        # parallel-rne.mlir:985:19
	or r9, r2, r9
	lui r2, 523264
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	bneq r9, zero, .LBB0_900
# %bb.899:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r21, 0(r5)
.LBB0_900:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	loads.w r9, 4(r4)
	loads.w r10, 4(r12)
	lui r28, 523264
	and r9, r9, r1
	and r10, r10, r1
	seteq r13, r9, r7
	seteq r24, r9, zero
	seteq r22, r10, zero
	seteq r23, r10, r7
	max.u r9, r9, r10
	setlt.u r9, r7, r9
	and r10, r13, r22
	and r13, r24, r23
	or r10, r10, r13
	or r9, r9, r10
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	bneq r9, zero, .LBB0_902
# %bb.901:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 4(r5)
.LBB0_902:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	loads.w r9, 8(r4)
	loads.w r10, 8(r12)
	and r9, r9, r1
	and r10, r10, r1
	seteq r13, r9, r7
	seteq r24, r9, zero
	seteq r22, r10, zero
	seteq r23, r10, r7
	max.u r9, r9, r10
	setlt.u r9, r7, r9
	and r10, r13, r22
	and r13, r24, r23
	or r10, r10, r13
	lui r13, 523264
	or r9, r9, r10
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	bneq r9, zero, .LBB0_904
# %bb.903:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 8(r5)
.LBB0_904:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	loads.w r4, 12(r4)
	loads.w r9, 12(r12)
	and r4, r4, r1
	and r9, r9, r1
	seteq r10, r4, r7
	seteq r23, r4, zero
	seteq r12, r9, zero
	seteq r22, r9, r7
	max.u r4, r4, r9
	setlt.u r4, r7, r4
	and r9, r10, r12
	and r10, r23, r22
	or r9, r9, r10
	or r4, r4, r9
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	bneq r4, zero, .LBB0_906
# %bb.905:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r5)
.LBB0_906:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 987 19 is_stmt 1              # parallel-rne.mlir:987:19
	and r5, r2, r1
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	setlt.u r4, r7, r5
	.loc	1 990 19                        # parallel-rne.mlir:990:19
	bneq r4, zero, .LBB0_908
# %bb.907:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r2, 0
	j .LBB0_909
.LBB0_908:                              #   in Loop: Header=BB0_898 Depth=3
	or r4, r2, r18
.LBB0_909:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	and r24, r13, r1
	setlt.u r9, r7, r24
	.loc	1 990 19                        # parallel-rne.mlir:990:19
	bneq r9, zero, .LBB0_911
# %bb.910:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r13, 0
	j .LBB0_912
.LBB0_911:                              #   in Loop: Header=BB0_898 Depth=3
	or r12, r13, r18
.LBB0_912:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	and r25, r28, r1
	setlt.u r9, r7, r25
	.loc	1 990 19                        # parallel-rne.mlir:990:19
	bneq r9, zero, .LBB0_914
# %bb.913:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r28, 0
	j .LBB0_915
.LBB0_914:                              #   in Loop: Header=BB0_898 Depth=3
	or r9, r28, r18
.LBB0_915:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	and r22, r21, r1
	setlt.u r10, r7, r22
	.loc	1 990 19                        # parallel-rne.mlir:990:19
	bneq r10, zero, .LBB0_917
# %bb.916:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r21, 0
	.loc	1 996 19 is_stmt 1              # parallel-rne.mlir:996:19
	setlt.u r22, r14, r22
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	beq r22, zero, .LBB0_918
	j .LBB0_919
.LBB0_917:                              #   in Loop: Header=BB0_898 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r21, r18
	.loc	1 996 19 is_stmt 1              # parallel-rne.mlir:996:19
	setlt.u r22, r14, r22
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	bneq r22, zero, .LBB0_919
.LBB0_918:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r21, 16
	andi r10, r10, 1
	add.s r10, r21, r10
	add.s r10, r10, r3
	and r10, r10, r8
.LBB0_919:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	setlt.u r21, r14, r25
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	bneq r21, zero, .LBB0_921
# %bb.920:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r28, 16
	andi r9, r9, 1
	add.s r9, r28, r9
	add.s r9, r9, r3
	and r9, r9, r8
.LBB0_921:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	setlt.u r21, r14, r24
	load.d r[22:23], -280(r30)              # 8-byte Folded Reload
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	bneq r21, zero, .LBB0_923
# %bb.922:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r13, 16
	andi r12, r12, 1
	add.s r12, r13, r12
	add.s r12, r12, r3
	and r12, r12, r8
.LBB0_923:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	setlt.u r5, r14, r5
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	bneq r5, zero, .LBB0_897
# %bb.924:                              # %vector.body
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	add.s r2, r2, r3
	and r4, r2, r8
	j .LBB0_897
.LBB0_925:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r9
	.loc	1 958 7                         # parallel-rne.mlir:958:7
	mfence { sm }
.LBB0_926:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1004 7                        # parallel-rne.mlir:1004:7
	addli r2, zero, 255
	csr_set csr5, r2
	addli r2, zero, 3
	sync_core
	.loc	1 1005 7                        # parallel-rne.mlir:1005:7
	beq r9, r2, .LBB0_5
# %bb.927:                              # %.critedge17
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r15,  -404(r30)                # 4-byte Folded Reload
	addli r13, zero, 64
	.loc	1 1016 7 is_stmt 1              # parallel-rne.mlir:1016:7
	bneq r9, zero, .LBB0_6
# %bb.928:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -436(r30)                 # 4-byte Folded Reload
	load.d r[11:12], -352(r30)              # 8-byte Folded Reload
	.loc	1 1016 7                        # parallel-rne.mlir:1016:7
	load.d r[9:10], -432(r30)               # 8-byte Folded Reload
	load.d r[19:20], 24(r30)
	sext_int2long r[4:5], r2
	addli r2, zero, 19
	min.sl r[11:12], r[4:5], r[11:12]
	sll.d r[9:10], r[9:10], r2
	addli r2, zero, 15
	addli.d r[11:12], r[11:12], 128
	xwait r2, 0
	add.ul r[9:10], r[19:20], r[9:10]
	load.d r[19:20], -416(r30)              # 8-byte Folded Reload
	ori r2, r16, 64
	max.sl r[11:12], r[11:12], r[4:5]
	add.ul r[9:10], r[9:10], r[19:20]
	sub.sl r[4:5], r[11:12], r[4:5]
	addli r12, zero, 5
	addli r11, zero, 1
	lock zero, r12
	.loc	1 1012 13 is_stmt 1             # parallel-rne.mlir:1012:13
	min.sl r[4:5], r[4:5], r[22:23]
	.loc	1 1016 7                        # parallel-rne.mlir:1016:7
	dma_cfg r11, r11, zero, 0
	dma_cfg zero, r11, zero, 1
	dma_cfg r10, zero, zero, 2
	dma_cfg r9, r2, r13, 3
	addli r10, zero, 128
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r9
	load.d r[16:17], -424(r30)              # 8-byte Folded Reload
	.loc	1 1016 7                        # parallel-rne.mlir:1016:7
	addli r2, r16, 31
	slli r6, r16, 1
	srli r2, r2, 5
	dma_cfg r13, r10, r2, 4
	andi r2, r6, 62
	addli r6, zero, 512
	addli r10, zero, 4096
	dma_cfg r10, r6, r4, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	addli r2, zero, 16
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r2, 0
	j .LBB0_6
.LBB0_929:                              # %._crit_edge
	.loc	1 1018 5                        # parallel-rne.mlir:1018:5
	xsignal zero, 0
	bneq r9, zero, .LBB0_931
# %bb.930:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1018 5                        # parallel-rne.mlir:1018:5
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
.LBB0_931:
	.loc	1 1019 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1019:5
	addli sp, sp, 472
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
	.long	536                             # 0x218
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-yrb0kr85" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
