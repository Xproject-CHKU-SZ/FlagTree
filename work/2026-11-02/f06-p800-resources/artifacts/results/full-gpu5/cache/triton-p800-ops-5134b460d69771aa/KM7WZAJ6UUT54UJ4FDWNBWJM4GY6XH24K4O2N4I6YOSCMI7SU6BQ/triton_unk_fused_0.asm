	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-6mq4_a4u" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -512
	addli r1, zero, 1
.Ltmp0:
	.loc	1 31 5 prologue_end             # parallel-rne.mlir:31:5
	core_id r19
	addli r30, sp, 448
	xsignal_mode_cfg r1
	beq r19, zero, .LBB0_2
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
	addli r1, zero, 14
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 3
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 9
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
	addli r1, zero, 7
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 19
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
	addli r1, zero, 17
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  32(r30)
	loadli.w r2,  36(r30)
	.loc	1 33 10 is_stmt 1               # parallel-rne.mlir:33:10
	load_param_i r3, 1
	loadli.w r4,  40(r30)
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -24(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -48(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -108(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -272(r30)
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r1, r2, r1
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	mul.s r4, r1, r4
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	addli r2, r2, -1
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w r3, -20(r30)
	storeli.w r3, -16(r30)
	storeli.w r3, -12(r30)
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r3, -44(r30)
	storeli.w r3, -40(r30)
	storeli.w r3, -36(r30)
	storeli.w r3, -32(r30)
	storeli.w r3, -28(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r3, -104(r30)
	storeli.w r3, -100(r30)
	storeli.w r3, -96(r30)
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	storeli.w r3, -84(r30)
	storeli.w r3, -80(r30)
	storeli.w r3, -76(r30)
	storeli.w r3, -72(r30)
	storeli.w r3, -68(r30)
	storeli.w r3, -64(r30)
	storeli.w r3, -60(r30)
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r3, -268(r30)
	storeli.w r3, -264(r30)
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
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r1, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	fmac.s r2, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	min.s r2, r2, r4
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	ble.s r2, r1, .LBB0_454
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 42 11 is_stmt 1               # parallel-rne.mlir:42:11
	sext_int2long r[9:10], r1
	lui r1, 31
	addli r20, zero, 0
	addli r25, zero, 128
	addli r22, zero, 5
	addli r28, zero, 6
	lui r7, 1024
	lui r8, 522240
	lui r5, 1048560
	addli r12, zero, 0
	storeli.w zero, -276(r30)               # 4-byte Folded Spill
	store.d r[2:3], -440(r30)               # 8-byte Folded Spill
	ori r2, r1, 4095
	addli r3, zero, 4
	lui r1, 1047552
	store.d r[1:2], -448(r30)               # 8-byte Folded Spill
	lui r1, 1023
	lui r2, 522239
	ori r1, r1, 4095
	ori r18, r2, 4095
	storeli.w r1, -348(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r6, r1, 4095
	lui r1, 7
	ori r17, r1, 4095
	j .LBB0_7
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 613 7                         # parallel-rne.mlir:613:7
	addli r1, zero, 12
	addli r2, zero, 2
	xwait r1, 0
	addli r1, zero, 1
	lock zero, r2
	ew_cfg r1, zero, zero, 10
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 4095
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 4
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, zero, 19
	dsmadd r16, r16, r16, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r2
	xsignal r13, 0
.LBB0_6:                                # %.thread39
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[9:10], -392(r30)               # 8-byte Folded Reload
	.loc	1 51 5 is_stmt 1                # parallel-rne.mlir:51:5
	load.d r[1:2], -440(r30)                # 8-byte Folded Reload
	loadli.w r20,  -380(r30)                # 4-byte Folded Reload
	loadli.w r12,  -396(r30)                # 4-byte Folded Reload
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r19
	addli r22, zero, 5
	addli r3, zero, 4
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	addli.d r[9:10], r[9:10], 1
	setlt.sl r1, r[9:10], r[1:2]
	beq r1, zero, .LBB0_454
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_30 Depth 3
                                        #     Child Loop BB0_40 Depth 2
                                        #       Child Loop BB0_42 Depth 3
                                        #     Child Loop BB0_65 Depth 2
                                        #       Child Loop BB0_67 Depth 3
                                        #     Child Loop BB0_90 Depth 2
                                        #       Child Loop BB0_92 Depth 3
                                        #     Child Loop BB0_115 Depth 2
                                        #       Child Loop BB0_117 Depth 3
                                        #     Child Loop BB0_140 Depth 2
                                        #       Child Loop BB0_142 Depth 3
                                        #     Child Loop BB0_165 Depth 2
                                        #       Child Loop BB0_167 Depth 3
                                        #     Child Loop BB0_190 Depth 2
                                        #       Child Loop BB0_192 Depth 3
                                        #     Child Loop BB0_215 Depth 2
                                        #       Child Loop BB0_217 Depth 3
                                        #     Child Loop BB0_245 Depth 2
                                        #     Child Loop BB0_252 Depth 2
                                        #       Child Loop BB0_254 Depth 3
                                        #     Child Loop BB0_276 Depth 2
                                        #       Child Loop BB0_278 Depth 3
                                        #     Child Loop BB0_301 Depth 2
                                        #       Child Loop BB0_303 Depth 3
                                        #     Child Loop BB0_326 Depth 2
                                        #       Child Loop BB0_328 Depth 3
                                        #     Child Loop BB0_351 Depth 2
                                        #       Child Loop BB0_353 Depth 3
                                        #     Child Loop BB0_378 Depth 2
                                        #       Child Loop BB0_380 Depth 3
                                        #     Child Loop BB0_402 Depth 2
                                        #       Child Loop BB0_404 Depth 3
                                        #     Child Loop BB0_426 Depth 2
                                        #       Child Loop BB0_428 Depth 3
	.loc	1 76 7                          # parallel-rne.mlir:76:7
	bneq r19, r3, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 14
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  40(r30)
	loadli.w r4,  36(r30)
	store.d r[9:10], -392(r30)              # 8-byte Folded Spill
	addli r11, zero, 8
	addli r14, zero, 64
	addli r21, zero, 4
	addli r1, zero, 0
	addli r2, zero, 0
	div.s r3, r9, r3
	addli r10, zero, 16
	div.s r3, r3, r4
	div.s r4, r3, r25
	slli r9, r4, 3
	slli r4, r4, 7
	sub.s r10, r10, r9
	min.s r10, r10, r11
	mod.s r11, r3, r10
	sub.s r3, r3, r4
	mod.s r4, r12, r22
	addli r12, r12, 1
	div.s r3, r3, r10
	storeli.w r12, -396(r30)                # 4-byte Folded Spill
	add.s r9, r9, r11
	slli r16, r4, 16
	zext_int2long r[10:11], r3
	slli r3, r3, 7
	zext_int2long r[12:13], r9
	storeli.w r3, -408(r30)                 # 4-byte Folded Spill
	slli r3, r9, 7
	addli r9, zero, 18
	store.d r[12:13], -424(r30)             # 8-byte Folded Spill
	storeli.w r3, -428(r30)                 # 4-byte Folded Spill
	addli r3, zero, 7
	sll.d r[3:4], r[10:11], r3
	.loc	1 77 7 is_stmt 1                # parallel-rne.mlir:77:7
	addli r11, zero, 1
	sll.d r[9:10], r[12:13], r9
	sll.d r[11:12], r[3:4], r11
	load.d r[3:4], -448(r30)                # 8-byte Folded Reload
	store.d r[11:12], -416(r30)             # 8-byte Folded Spill
	and.d r[3:4], r[9:10], r[3:4]
	store.d r[3:4], -296(r30)               # 8-byte Folded Spill
	load.d r[3:4], 8(r30)
	add.ul r[3:4], r[3:4], r[11:12]
	store.d r[3:4], -304(r30)               # 8-byte Folded Spill
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r4, 80
	addli r12, zero, 4
	addli r14, zero, 64
	addli r19, zero, 256
	ori r4, r4, 64
	.loc	1 100 9 is_stmt 1               # parallel-rne.mlir:100:9
	lock zero, r12
	addli r12, zero, 64
	dma_cfg r13, r13, zero, 0
	add.s r4, r15, r4
	dma_cfg zero, r23, zero, 2
	addli r15, zero, 2
	dma_cfg r4, r22, r12, 3
	addli r4, zero, 4096
	addli r12, zero, 4
	addli r22, zero, 5
	dma_cfg r25, r14, r15, 4
	dma_cfg r19, r4, r11, 5
	addli r4, zero, 7
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r22
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 12
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 16
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
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
	dma_cfg r13, r13, zero, 0
	dma_cfg r13, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r14, 3
	dma_cfg r25, zero, r15, 4
	dma_cfg r19, zero, r11, 5
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r19
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r22
	xsignal r15, 0
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r3,  -272(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r4,  -108(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r3, r3, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r4, r4, 1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	storeli.w r3, -272(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r4, -108(r30)
.LBB0_12:                               # %.thread34
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r2, r2, 1
	addli r3, zero, 32
	beq r2, r3, .LBB0_33
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r14, zero, 64
	addli r21, zero, 4
	.loc	1 121 15 is_stmt 1              # parallel-rne.mlir:121:15
	addli r1, r1, 1
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_30 Depth 3
	.loc	1 78 15                         # parallel-rne.mlir:78:15
	zext_int2long r[23:24], r2
	loadli.w r3,  -348(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -276(r30)                 # 4-byte Folded Reload
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	sll.d r[11:12], r[23:24], r28
	load.d r[27:28], -296(r30)              # 8-byte Folded Reload
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	add.ul r[25:26], r[11:12], r[9:10]
	zext_int2long r[11:12], r3
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	setlt.ul r3, r[11:12], r[25:26]
	.loc	1 86 15                         # parallel-rne.mlir:86:15
	bneq r3, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[27:28], zero
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	addli r3, zero, 14
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	addli r11, zero, 24
	addli r12, zero, 1920
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	mod.s r3, r4, r3
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	mod.s r11, r20, r11
	zext_int2long r[12:13], r12
	addli r20, r20, 1
	store.d r[12:13], -288(r30)             # 8-byte Folded Spill
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r12, r4, 1
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	storeli.w r12, -276(r30)                # 4-byte Folded Spill
	addli r12, zero, 2
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r15, r3, 15
	lui r3, 80
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	slli r11, r11, 15
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	add.s r3, r15, r3
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	beq r19, r12, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r19
	addli r13, zero, 1
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	bneq r19, r13, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r19, zero, 2048
	sub.sl r[11:12], r[25:26], r[27:28]
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	sll.d r[24:25], r[25:26], r13
	addli r26, zero, 13
	addli r28, zero, 6
	zext_int2long r[22:23], r19
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[11:12], r[11:12], r[22:23]
	load.d r[22:23], -288(r30)              # 8-byte Folded Reload
	min.sl r[22:23], r[11:12], r[22:23]
	sub.sl r[11:12], r[22:23], r[11:12]
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	load.d r[22:23], 0(r30)
	addli r11, r11, 128
	add.ul r[22:23], r[22:23], r[24:25]
	addli r24, zero, 3
	addli r25, zero, 128
	xwait r24, 0
	blt.s r26, r4, .LBB0_10
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r12, zero, 5
	addli r19, zero, 2
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r4, zero, 7
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 12
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 16
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
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
	addli r4, zero, 256
	dma_cfg r13, r13, zero, 0
	dma_cfg r13, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r14, 3
	dma_cfg r25, zero, r19, 4
	dma_cfg r4, zero, r25, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	j .LBB0_10
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r4, zero, 2
	addli r25, zero, 128
	addli r12, zero, 4
	addli r28, zero, 6
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	xwait r4, 0
	xwait r22, 0
	lock zero, zero
	ds_cfg r4, zero, 0
	addli r4, zero, 64
	ds_cfg r4, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r25, zero, 13
	shuffle_batch r11, r3, r4, 1
	addli r3, zero, 3
	unlock zero
	xsignal r3, 0
	xsignal r12, 0
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r3,  -272(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r4,  -108(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r12, zero, 40
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r15, zero, 14
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	mod.s r12, r3, r12
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r15, r4, r15
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r3, r3, 1
	storeli.w r3, -272(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	lui r3, 192
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	slli r22, r12, 15
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r15, r15, 15
	addli r12, r4, 1
	storeli.w r12, -108(r30)
	add.s r3, r15, r3
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r12, zero, 7
	beq r19, r12, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r25, zero, 128
	addli r28, zero, 6
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	bneq r19, r28, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r21, zero, 18
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	load.d r[13:14], -304(r30)              # 8-byte Folded Reload
	sll.d r[11:12], r[23:24], r21
	add.ul r[22:23], r[13:14], r[11:12]
	addli r11, zero, 7
	addli r14, zero, 13
	xwait r11, 0
	blt.s r14, r4, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r12, zero, 5
	addli r13, zero, 1
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r4, zero, 2
	addli r19, zero, 4
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 3
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 12
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 512
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 16
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 19
	dma_cfg zero, zero, r21, 10
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
	dma_cfg r13, r13, zero, 0
	dma_cfg r13, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r4, 3
	dma_cfg r25, zero, r19, 4
	dma_cfg r14, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r4, 192
	addli r12, zero, 4
	addli r13, zero, 1
	addli r14, zero, 64
	addli r19, zero, 512
	ori r4, r4, 64
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	lock zero, r12
	addli r12, zero, 64
	dma_cfg r13, r13, zero, 0
	add.s r4, r15, r4
	dma_cfg zero, r23, zero, 2
	addli r15, zero, 13
	dma_cfg r4, r22, r12, 3
	addli r12, zero, 4
	addli r4, zero, 4096
	addli r22, zero, 5
	dma_cfg r25, r14, r12, 4
	dma_cfg r19, r4, r14, 5
	addli r4, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r22
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 3
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 12
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 16
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 19
	dma_cfg zero, zero, r21, 10
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
	dma_cfg r13, r13, zero, 0
	dma_cfg r13, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r14, 3
	dma_cfg r25, zero, r12, 4
	dma_cfg r19, zero, r14, 5
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r19
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r22
	xsignal r28, 0
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	j .LBB0_12
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r28, zero, 6
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r4, zero, 9
	addli r25, zero, 128
	addli r12, zero, 4
	xwait r28, 0
	xwait r4, 0
	addli r4, zero, 2
	lock zero, zero
	ds_cfg r4, zero, 0
	addli r4, zero, 64
	ds_cfg r25, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r25, zero, 13
	shuffle_coa r22, r3, r4, 2
	addli r3, zero, 7
	addli r22, zero, 5
	unlock zero
	xsignal r3, 0
	addli r3, zero, 8
	xsignal r3, 0
	j .LBB0_12
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r21, zero, 4
	.loc	1 120 9 is_stmt 1               # parallel-rne.mlir:120:9
	bneq r19, r21, .LBB0_32
# %bb.28:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 8
	xwait r21, 0
	addli r13, zero, 64
	addli r4, zero, 1
	addli r12, zero, 0
	xwait r3, 0
	addli r3, zero, 1
	beq r1, zero, .LBB0_30
.LBB0_29:                               # %.preheader57
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r15, r12, 14
	slli r12, r12, 8
	lock zero, r3
	mm_cfg r13, r13, r25, 0
	or r15, r15, r22
	or r12, r12, r16
	mm_cfg r21, r21, r3, 2
	mm_acc r12, r11, r15, 8
	andi r15, r4, 1
	addli r12, zero, 1
	addli r4, zero, 0
	unlock r3
	bneq r15, zero, .LBB0_29
	j .LBB0_31
.LBB0_30:                               # %.preheader56
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r15, r12, 14
	slli r12, r12, 8
	lock zero, r3
	mm_cfg r13, r13, r25, 0
	or r15, r15, r22
	or r12, r12, r16
	mm_cfg r21, r21, r3, 2
	mm r12, r11, r15, 8
	andi r15, r4, 1
	addli r12, zero, 1
	addli r4, zero, 0
	unlock r3
	bneq r15, zero, .LBB0_30
.LBB0_31:                               # %.thread34.thread81
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r22, zero, 5
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	addli r3, zero, 9
	.loc	1 77 7 is_stmt 1                # parallel-rne.mlir:77:7
	addli r2, r2, 1
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r19
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	xsignal r22, 0
	xsignal r3, 0
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r3, zero, 32
	bneq r2, r3, .LBB0_13
	j .LBB0_34
.LBB0_32:                               # %.thread34.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r2, r2, 1
	addli r22, zero, 5
	addli r3, zero, 32
	bneq r2, r3, .LBB0_13
	j .LBB0_35
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 124 7                         # parallel-rne.mlir:124:7
	bneq r19, r12, .LBB0_35
.LBB0_34:                               # %.thread83
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_35:                               # %.thread80
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 138 13                        # parallel-rne.mlir:138:13
	loadli.w r14,  -48(r30)
	.loc	1 141 13                        # parallel-rne.mlir:141:13
	loadli.w r1,  -24(r30)
	storeli.w r20, -380(r30)                # 4-byte Folded Spill
	.loc	1 138 13                        # parallel-rne.mlir:138:13
	addli r2, r14, 1
	.loc	1 141 13                        # parallel-rne.mlir:141:13
	addli r3, r1, 1
	.loc	1 138 13                        # parallel-rne.mlir:138:13
	storeli.w r2, -48(r30)
	.loc	1 143 7                         # parallel-rne.mlir:143:7
	addli r2, zero, 3
	.loc	1 141 13                        # parallel-rne.mlir:141:13
	storeli.w r3, -24(r30)
	.loc	1 143 7                         # parallel-rne.mlir:143:7
	bneq r19, r2, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	.loc	1 144 7                         # parallel-rne.mlir:144:7
	addli r2, zero, 17
	xwait r2, 0
.LBB0_37:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	mod.s r1, r1, r22
	lui r2, 304
	.loc	1 148 7 is_stmt 1               # parallel-rne.mlir:148:7
	addli r3, zero, 255
	.loc	1 146 7                         # parallel-rne.mlir:146:7
	xfence
	zext_int2long r[22:23], r25
	addli r10, zero, 7
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	mfence { lm, sm, gm }
	ori r2, r2, 2560
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	csr_set csr5, r3
	slli r1, r1, 16
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r1, r1, r2
	addli r2, zero, 15
	zext_int2long r[2:3], r2
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	store.d r[2:3], -368(r30)               # 8-byte Folded Spill
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r2
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	sync_core
	storeli.w r14, -376(r30)                # 4-byte Folded Spill
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	bneq r2, zero, .LBB0_62
# %bb.38:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[2:3], zero
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	xfence
	mfence { lm, sm, gm }
	store.d r[2:3], -304(r30)               # 8-byte Folded Spill
	addli.d r[3:4], r[2:3], 0
	j .LBB0_40
.LBB0_39:                               # %middle.block233
                                        #   in Loop: Header=BB0_40 Depth=2
	.loc	1 156 9 is_stmt 1               # parallel-rne.mlir:156:9
	load.d r[2:3], -368(r30)                # 8-byte Folded Reload
	load.d r[11:12], -296(r30)              # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[2:3]
	addli.d r[3:4], r[11:12], 1
	beq r2, zero, .LBB0_61
.LBB0_40:                               # %.preheader55
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_42 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	load.d r[20:21], -304(r30)              # 8-byte Folded Reload
	sll.d r[13:14], r[3:4], r10
	store.d r[3:4], -296(r30)               # 8-byte Folded Spill
	j .LBB0_42
.LBB0_41:                               # %vector.body229
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 157 11 is_stmt 1              # parallel-rne.mlir:157:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 172 13                        # parallel-rne.mlir:172:13
	add.s r4, r1, r11
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	setneq.d r3, r[20:21], r[22:23]
	.loc	1 172 13                        # parallel-rne.mlir:172:13
	stores.w r25, 12(r4)
	stores.w r15, 8(r4)
	stores.w r27, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	beq r3, zero, .LBB0_39
.LBB0_42:                               # %vector.body229
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	add.ul r[2:3], r[20:21], r[13:14]
	slli r11, r2, 2
	add.s r2, r16, r11
	loads.w r24, 12(r2)
	loads.w r4, 0(r2)
	loads.w r19, 4(r2)
	loads.w r28, 8(r2)
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	and r26, r24, r6
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	setlt.u r2, r8, r26
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r2, zero, .LBB0_44
# %bb.43:                               # %vector.body229
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r24, 0
	j .LBB0_45
.LBB0_44:                               #   in Loop: Header=BB0_42 Depth=3
	or r25, r24, r7
.LBB0_45:                               # %vector.body229
                                        #   in Loop: Header=BB0_42 Depth=3
	and r12, r28, r6
	setlt.u r2, r8, r12
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r2, zero, .LBB0_47
# %bb.46:                               # %vector.body229
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r28, 0
	j .LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_42 Depth=3
	or r15, r28, r7
.LBB0_48:                               # %vector.body229
                                        #   in Loop: Header=BB0_42 Depth=3
	and r3, r19, r6
	setlt.u r2, r8, r3
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r2, zero, .LBB0_50
# %bb.49:                               # %vector.body229
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r19, 0
	j .LBB0_51
.LBB0_50:                               #   in Loop: Header=BB0_42 Depth=3
	or r27, r19, r7
.LBB0_51:                               # %vector.body229
                                        #   in Loop: Header=BB0_42 Depth=3
	and r9, r4, r6
	setlt.u r2, r8, r9
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r2, zero, .LBB0_53
# %bb.52:                               # %vector.body229
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r4, 0
	.loc	1 169 19 is_stmt 1              # parallel-rne.mlir:169:19
	setlt.u r9, r18, r9
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	beq r9, zero, .LBB0_54
	j .LBB0_55
.LBB0_53:                               #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r4, r7
	.loc	1 169 19 is_stmt 1              # parallel-rne.mlir:169:19
	setlt.u r9, r18, r9
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r9, zero, .LBB0_55
.LBB0_54:                               # %vector.body229
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r4, 16
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r17
	and r2, r2, r5
.LBB0_55:                               # %vector.body229
                                        #   in Loop: Header=BB0_42 Depth=3
	setlt.u r3, r18, r3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	beq r3, zero, .LBB0_58
# %bb.56:                               # %vector.body229
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r18, r12
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	beq r3, zero, .LBB0_59
.LBB0_57:                               # %vector.body229
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r18, r26
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r3, zero, .LBB0_41
	j .LBB0_60
.LBB0_58:                               # %vector.body229
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r17
	and r27, r3, r5
	setlt.u r3, r18, r12
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r3, zero, .LBB0_57
.LBB0_59:                               # %vector.body229
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r28, 16
	andi r3, r3, 1
	add.s r3, r28, r3
	add.s r3, r3, r17
	and r15, r3, r5
	setlt.u r3, r18, r26
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r3, zero, .LBB0_41
.LBB0_60:                               # %vector.body229
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r24, 16
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r17
	and r25, r3, r5
	j .LBB0_41
.LBB0_61:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 149 7 is_stmt 1               # parallel-rne.mlir:149:7
	mfence { sm }
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r2
	addli r25, zero, 128
	addli r28, zero, 6
	loadli.w r14,  -376(r30)                # 4-byte Folded Reload
.LBB0_62:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r3, zero, 31
	zext_int2long r[3:4], r3
	.loc	1 177 7 is_stmt 1               # parallel-rne.mlir:177:7
	store.d r[3:4], -296(r30)               # 8-byte Folded Spill
	addli r3, zero, 1
	bneq r2, r3, .LBB0_87
# %bb.63:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_65
.LBB0_64:                               # %middle.block224
                                        #   in Loop: Header=BB0_65 Depth=2
	.loc	1 184 9 is_stmt 1               # parallel-rne.mlir:184:9
	load.d r[2:3], -296(r30)                # 8-byte Folded Reload
	load.d r[9:10], -304(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[2:3]
	addli.d r[3:4], r[9:10], 1
	addli r10, zero, 7
	beq r2, zero, .LBB0_86
.LBB0_65:                               # %.preheader54
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_67 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[13:14], zero
	store.d r[3:4], -304(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[3:4], r2
	j .LBB0_67
.LBB0_66:                               # %vector.body220
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 185 11 is_stmt 1              # parallel-rne.mlir:185:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 200 13                        # parallel-rne.mlir:200:13
	add.s r3, r1, r11
	.loc	1 185 11                        # parallel-rne.mlir:185:11
	setneq.d r2, r[13:14], r[22:23]
	.loc	1 200 13                        # parallel-rne.mlir:200:13
	stores.w r21, 12(r3)
	stores.w r15, 8(r3)
	stores.w r19, 4(r3)
	stores.w r4, 0(r3)
	.loc	1 185 11                        # parallel-rne.mlir:185:11
	beq r2, zero, .LBB0_64
.LBB0_67:                               # %vector.body220
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	add.ul r[2:3], r[13:14], r[9:10]
	slli r11, r2, 2
	add.s r2, r16, r11
	loads.w r20, 12(r2)
	loads.w r27, 0(r2)
	loads.w r26, 4(r2)
	loads.w r25, 8(r2)
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	and r24, r20, r6
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	setlt.u r2, r8, r24
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r2, zero, .LBB0_69
# %bb.68:                               # %vector.body220
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r20, 0
	j .LBB0_70
.LBB0_69:                               #   in Loop: Header=BB0_67 Depth=3
	or r21, r20, r7
.LBB0_70:                               # %vector.body220
                                        #   in Loop: Header=BB0_67 Depth=3
	and r12, r25, r6
	setlt.u r2, r8, r12
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r2, zero, .LBB0_72
# %bb.71:                               # %vector.body220
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r25, 0
	j .LBB0_73
.LBB0_72:                               #   in Loop: Header=BB0_67 Depth=3
	or r15, r25, r7
.LBB0_73:                               # %vector.body220
                                        #   in Loop: Header=BB0_67 Depth=3
	and r28, r26, r6
	setlt.u r2, r8, r28
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r2, zero, .LBB0_75
# %bb.74:                               # %vector.body220
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r26, 0
	j .LBB0_76
.LBB0_75:                               #   in Loop: Header=BB0_67 Depth=3
	or r19, r26, r7
.LBB0_76:                               # %vector.body220
                                        #   in Loop: Header=BB0_67 Depth=3
	and r2, r27, r6
	setlt.u r3, r8, r2
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r3, zero, .LBB0_78
# %bb.77:                               # %vector.body220
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 197 19 is_stmt 1              # parallel-rne.mlir:197:19
	setlt.u r2, r18, r2
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	beq r2, zero, .LBB0_79
	j .LBB0_80
.LBB0_78:                               #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r7
	.loc	1 197 19 is_stmt 1              # parallel-rne.mlir:197:19
	setlt.u r2, r18, r2
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r2, zero, .LBB0_80
.LBB0_79:                               # %vector.body220
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r27, 16
	andi r2, r2, 1
	add.s r2, r27, r2
	add.s r2, r2, r17
	and r4, r2, r5
.LBB0_80:                               # %vector.body220
                                        #   in Loop: Header=BB0_67 Depth=3
	setlt.u r2, r18, r28
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	beq r2, zero, .LBB0_83
# %bb.81:                               # %vector.body220
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r18, r12
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	beq r2, zero, .LBB0_84
.LBB0_82:                               # %vector.body220
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r18, r24
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r2, zero, .LBB0_66
	j .LBB0_85
.LBB0_83:                               # %vector.body220
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r26, 16
	andi r2, r2, 1
	add.s r2, r26, r2
	add.s r2, r2, r17
	and r19, r2, r5
	setlt.u r2, r18, r12
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r2, zero, .LBB0_82
.LBB0_84:                               # %vector.body220
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r25, 16
	andi r2, r2, 1
	add.s r2, r25, r2
	add.s r2, r2, r17
	and r15, r2, r5
	setlt.u r2, r18, r24
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r2, zero, .LBB0_66
.LBB0_85:                               # %vector.body220
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r20, 16
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r17
	and r21, r2, r5
	j .LBB0_66
.LBB0_86:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 177 7 is_stmt 1               # parallel-rne.mlir:177:7
	mfence { sm }
	addli r25, zero, 128
	addli r28, zero, 6
	loadli.w r14,  -376(r30)                # 4-byte Folded Reload
.LBB0_87:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 47
	zext_int2long r[2:3], r2
	.loc	1 205 7 is_stmt 1               # parallel-rne.mlir:205:7
	store.d r[2:3], -304(r30)               # 8-byte Folded Spill
	core_id r2
	addli r3, zero, 2
	bneq r2, r3, .LBB0_112
# %bb.88:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 205 7                         # parallel-rne.mlir:205:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_90
.LBB0_89:                               # %middle.block215
                                        #   in Loop: Header=BB0_90 Depth=2
	.loc	1 212 9 is_stmt 1               # parallel-rne.mlir:212:9
	load.d r[2:3], -304(r30)                # 8-byte Folded Reload
	load.d r[9:10], -312(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[2:3]
	addli.d r[3:4], r[9:10], 1
	addli r10, zero, 7
	beq r2, zero, .LBB0_111
.LBB0_90:                               # %.preheader53
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_92 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[13:14], zero
	store.d r[3:4], -312(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[3:4], r2
	j .LBB0_92
.LBB0_91:                               # %vector.body211
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 213 11 is_stmt 1              # parallel-rne.mlir:213:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 228 13                        # parallel-rne.mlir:228:13
	add.s r3, r1, r11
	.loc	1 213 11                        # parallel-rne.mlir:213:11
	setneq.d r2, r[13:14], r[22:23]
	.loc	1 228 13                        # parallel-rne.mlir:228:13
	stores.w r21, 12(r3)
	stores.w r15, 8(r3)
	stores.w r19, 4(r3)
	stores.w r4, 0(r3)
	.loc	1 213 11                        # parallel-rne.mlir:213:11
	beq r2, zero, .LBB0_89
.LBB0_92:                               # %vector.body211
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_90 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	add.ul r[2:3], r[13:14], r[9:10]
	slli r11, r2, 2
	add.s r2, r16, r11
	loads.w r20, 12(r2)
	loads.w r27, 0(r2)
	loads.w r26, 4(r2)
	loads.w r25, 8(r2)
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	and r24, r20, r6
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	setlt.u r2, r8, r24
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r2, zero, .LBB0_94
# %bb.93:                               # %vector.body211
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r20, 0
	j .LBB0_95
.LBB0_94:                               #   in Loop: Header=BB0_92 Depth=3
	or r21, r20, r7
.LBB0_95:                               # %vector.body211
                                        #   in Loop: Header=BB0_92 Depth=3
	and r12, r25, r6
	setlt.u r2, r8, r12
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r2, zero, .LBB0_97
# %bb.96:                               # %vector.body211
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r25, 0
	j .LBB0_98
.LBB0_97:                               #   in Loop: Header=BB0_92 Depth=3
	or r15, r25, r7
.LBB0_98:                               # %vector.body211
                                        #   in Loop: Header=BB0_92 Depth=3
	and r28, r26, r6
	setlt.u r2, r8, r28
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r2, zero, .LBB0_100
# %bb.99:                               # %vector.body211
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r26, 0
	j .LBB0_101
.LBB0_100:                              #   in Loop: Header=BB0_92 Depth=3
	or r19, r26, r7
.LBB0_101:                              # %vector.body211
                                        #   in Loop: Header=BB0_92 Depth=3
	and r2, r27, r6
	setlt.u r3, r8, r2
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r3, zero, .LBB0_103
# %bb.102:                              # %vector.body211
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 225 19 is_stmt 1              # parallel-rne.mlir:225:19
	setlt.u r2, r18, r2
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	beq r2, zero, .LBB0_104
	j .LBB0_105
.LBB0_103:                              #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r7
	.loc	1 225 19 is_stmt 1              # parallel-rne.mlir:225:19
	setlt.u r2, r18, r2
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r2, zero, .LBB0_105
.LBB0_104:                              # %vector.body211
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r27, 16
	andi r2, r2, 1
	add.s r2, r27, r2
	add.s r2, r2, r17
	and r4, r2, r5
.LBB0_105:                              # %vector.body211
                                        #   in Loop: Header=BB0_92 Depth=3
	setlt.u r2, r18, r28
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	beq r2, zero, .LBB0_108
# %bb.106:                              # %vector.body211
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r18, r12
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	beq r2, zero, .LBB0_109
.LBB0_107:                              # %vector.body211
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r18, r24
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r2, zero, .LBB0_91
	j .LBB0_110
.LBB0_108:                              # %vector.body211
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r26, 16
	andi r2, r2, 1
	add.s r2, r26, r2
	add.s r2, r2, r17
	and r19, r2, r5
	setlt.u r2, r18, r12
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r2, zero, .LBB0_107
.LBB0_109:                              # %vector.body211
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r25, 16
	andi r2, r2, 1
	add.s r2, r25, r2
	add.s r2, r2, r17
	and r15, r2, r5
	setlt.u r2, r18, r24
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r2, zero, .LBB0_91
.LBB0_110:                              # %vector.body211
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r20, 16
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r17
	and r21, r2, r5
	j .LBB0_91
.LBB0_111:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 205 7 is_stmt 1               # parallel-rne.mlir:205:7
	mfence { sm }
	addli r25, zero, 128
	addli r28, zero, 6
	loadli.w r14,  -376(r30)                # 4-byte Folded Reload
.LBB0_112:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 63
	zext_int2long r[2:3], r2
	.loc	1 233 7 is_stmt 1               # parallel-rne.mlir:233:7
	store.d r[2:3], -312(r30)               # 8-byte Folded Spill
	core_id r2
	addli r3, zero, 3
	bneq r2, r3, .LBB0_137
# %bb.113:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 233 7                         # parallel-rne.mlir:233:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_115
.LBB0_114:                              # %middle.block206
                                        #   in Loop: Header=BB0_115 Depth=2
	.loc	1 240 9 is_stmt 1               # parallel-rne.mlir:240:9
	load.d r[2:3], -312(r30)                # 8-byte Folded Reload
	load.d r[9:10], -320(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[2:3]
	addli.d r[3:4], r[9:10], 1
	addli r10, zero, 7
	beq r2, zero, .LBB0_136
.LBB0_115:                              # %.preheader52
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_117 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[13:14], zero
	store.d r[3:4], -320(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[3:4], r2
	j .LBB0_117
.LBB0_116:                              # %vector.body202
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 241 11 is_stmt 1              # parallel-rne.mlir:241:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 256 13                        # parallel-rne.mlir:256:13
	add.s r3, r1, r11
	.loc	1 241 11                        # parallel-rne.mlir:241:11
	setneq.d r2, r[13:14], r[22:23]
	.loc	1 256 13                        # parallel-rne.mlir:256:13
	stores.w r21, 12(r3)
	stores.w r15, 8(r3)
	stores.w r19, 4(r3)
	stores.w r4, 0(r3)
	.loc	1 241 11                        # parallel-rne.mlir:241:11
	beq r2, zero, .LBB0_114
.LBB0_117:                              # %vector.body202
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_115 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	add.ul r[2:3], r[13:14], r[9:10]
	slli r11, r2, 2
	add.s r2, r16, r11
	loads.w r20, 12(r2)
	loads.w r27, 0(r2)
	loads.w r26, 4(r2)
	loads.w r25, 8(r2)
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	and r24, r20, r6
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	setlt.u r2, r8, r24
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r2, zero, .LBB0_119
# %bb.118:                              # %vector.body202
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r20, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_117 Depth=3
	or r21, r20, r7
.LBB0_120:                              # %vector.body202
                                        #   in Loop: Header=BB0_117 Depth=3
	and r12, r25, r6
	setlt.u r2, r8, r12
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r2, zero, .LBB0_122
# %bb.121:                              # %vector.body202
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r25, 0
	j .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_117 Depth=3
	or r15, r25, r7
.LBB0_123:                              # %vector.body202
                                        #   in Loop: Header=BB0_117 Depth=3
	and r28, r26, r6
	setlt.u r2, r8, r28
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r2, zero, .LBB0_125
# %bb.124:                              # %vector.body202
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r26, 0
	j .LBB0_126
.LBB0_125:                              #   in Loop: Header=BB0_117 Depth=3
	or r19, r26, r7
.LBB0_126:                              # %vector.body202
                                        #   in Loop: Header=BB0_117 Depth=3
	and r2, r27, r6
	setlt.u r3, r8, r2
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r3, zero, .LBB0_128
# %bb.127:                              # %vector.body202
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 253 19 is_stmt 1              # parallel-rne.mlir:253:19
	setlt.u r2, r18, r2
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	beq r2, zero, .LBB0_129
	j .LBB0_130
.LBB0_128:                              #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r7
	.loc	1 253 19 is_stmt 1              # parallel-rne.mlir:253:19
	setlt.u r2, r18, r2
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	bneq r2, zero, .LBB0_130
.LBB0_129:                              # %vector.body202
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r27, 16
	andi r2, r2, 1
	add.s r2, r27, r2
	add.s r2, r2, r17
	and r4, r2, r5
.LBB0_130:                              # %vector.body202
                                        #   in Loop: Header=BB0_117 Depth=3
	setlt.u r2, r18, r28
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	beq r2, zero, .LBB0_133
# %bb.131:                              # %vector.body202
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r18, r12
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	beq r2, zero, .LBB0_134
.LBB0_132:                              # %vector.body202
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r18, r24
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	bneq r2, zero, .LBB0_116
	j .LBB0_135
.LBB0_133:                              # %vector.body202
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r26, 16
	andi r2, r2, 1
	add.s r2, r26, r2
	add.s r2, r2, r17
	and r19, r2, r5
	setlt.u r2, r18, r12
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	bneq r2, zero, .LBB0_132
.LBB0_134:                              # %vector.body202
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r25, 16
	andi r2, r2, 1
	add.s r2, r25, r2
	add.s r2, r2, r17
	and r15, r2, r5
	setlt.u r2, r18, r24
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	bneq r2, zero, .LBB0_116
.LBB0_135:                              # %vector.body202
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r20, 16
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r17
	and r21, r2, r5
	j .LBB0_116
.LBB0_136:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 233 7 is_stmt 1               # parallel-rne.mlir:233:7
	mfence { sm }
	addli r25, zero, 128
	addli r28, zero, 6
	loadli.w r14,  -376(r30)                # 4-byte Folded Reload
.LBB0_137:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 79
	zext_int2long r[2:3], r2
	.loc	1 261 7 is_stmt 1               # parallel-rne.mlir:261:7
	store.d r[2:3], -320(r30)               # 8-byte Folded Spill
	core_id r2
	addli r3, zero, 4
	bneq r2, r3, .LBB0_162
# %bb.138:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 261 7                         # parallel-rne.mlir:261:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_140
.LBB0_139:                              # %middle.block197
                                        #   in Loop: Header=BB0_140 Depth=2
	.loc	1 268 9 is_stmt 1               # parallel-rne.mlir:268:9
	load.d r[2:3], -320(r30)                # 8-byte Folded Reload
	load.d r[9:10], -328(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[2:3]
	addli.d r[3:4], r[9:10], 1
	addli r10, zero, 7
	beq r2, zero, .LBB0_161
.LBB0_140:                              # %.preheader51
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_142 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -328(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r10
	zext_int2long r[13:14], zero
	j .LBB0_142
.LBB0_141:                              # %vector.body193
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 269 11 is_stmt 1              # parallel-rne.mlir:269:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 284 13                        # parallel-rne.mlir:284:13
	add.s r10, r1, r11
	.loc	1 269 11                        # parallel-rne.mlir:269:11
	setneq.d r9, r[13:14], r[22:23]
	.loc	1 284 13                        # parallel-rne.mlir:284:13
	stores.w r21, 12(r10)
	stores.w r15, 8(r10)
	stores.w r19, 4(r10)
	stores.w r4, 0(r10)
	.loc	1 269 11                        # parallel-rne.mlir:269:11
	beq r9, zero, .LBB0_139
.LBB0_142:                              # %vector.body193
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	add.ul r[9:10], r[13:14], r[2:3]
	slli r11, r9, 2
	add.s r4, r16, r11
	loads.w r20, 12(r4)
	loads.w r27, 0(r4)
	loads.w r26, 4(r4)
	loads.w r25, 8(r4)
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	and r24, r20, r6
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	setlt.u r4, r8, r24
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r4, zero, .LBB0_144
# %bb.143:                              # %vector.body193
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r20, 0
	j .LBB0_145
.LBB0_144:                              #   in Loop: Header=BB0_142 Depth=3
	or r21, r20, r7
.LBB0_145:                              # %vector.body193
                                        #   in Loop: Header=BB0_142 Depth=3
	and r12, r25, r6
	setlt.u r4, r8, r12
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r4, zero, .LBB0_147
# %bb.146:                              # %vector.body193
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r25, 0
	j .LBB0_148
.LBB0_147:                              #   in Loop: Header=BB0_142 Depth=3
	or r15, r25, r7
.LBB0_148:                              # %vector.body193
                                        #   in Loop: Header=BB0_142 Depth=3
	and r28, r26, r6
	setlt.u r4, r8, r28
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r4, zero, .LBB0_150
# %bb.149:                              # %vector.body193
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r26, 0
	j .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_142 Depth=3
	or r19, r26, r7
.LBB0_151:                              # %vector.body193
                                        #   in Loop: Header=BB0_142 Depth=3
	and r9, r27, r6
	setlt.u r4, r8, r9
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r4, zero, .LBB0_153
# %bb.152:                              # %vector.body193
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 281 19 is_stmt 1              # parallel-rne.mlir:281:19
	setlt.u r9, r18, r9
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	beq r9, zero, .LBB0_154
	j .LBB0_155
.LBB0_153:                              #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r7
	.loc	1 281 19 is_stmt 1              # parallel-rne.mlir:281:19
	setlt.u r9, r18, r9
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	bneq r9, zero, .LBB0_155
.LBB0_154:                              # %vector.body193
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r27, 16
	andi r4, r4, 1
	add.s r4, r27, r4
	add.s r4, r4, r17
	and r4, r4, r5
.LBB0_155:                              # %vector.body193
                                        #   in Loop: Header=BB0_142 Depth=3
	setlt.u r9, r18, r28
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	beq r9, zero, .LBB0_158
# %bb.156:                              # %vector.body193
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r18, r12
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	beq r9, zero, .LBB0_159
.LBB0_157:                              # %vector.body193
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r18, r24
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	bneq r9, zero, .LBB0_141
	j .LBB0_160
.LBB0_158:                              # %vector.body193
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r26, 16
	andi r9, r9, 1
	add.s r9, r26, r9
	add.s r9, r9, r17
	and r19, r9, r5
	setlt.u r9, r18, r12
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	bneq r9, zero, .LBB0_157
.LBB0_159:                              # %vector.body193
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r17
	and r15, r9, r5
	setlt.u r9, r18, r24
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	bneq r9, zero, .LBB0_141
.LBB0_160:                              # %vector.body193
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r20, 16
	andi r9, r9, 1
	add.s r9, r20, r9
	add.s r9, r9, r17
	and r21, r9, r5
	j .LBB0_141
.LBB0_161:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 261 7 is_stmt 1               # parallel-rne.mlir:261:7
	mfence { sm }
	addli r25, zero, 128
	addli r28, zero, 6
	loadli.w r14,  -376(r30)                # 4-byte Folded Reload
.LBB0_162:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 95
	zext_int2long r[2:3], r2
	.loc	1 289 7 is_stmt 1               # parallel-rne.mlir:289:7
	store.d r[2:3], -328(r30)               # 8-byte Folded Spill
	core_id r2
	addli r3, zero, 5
	bneq r2, r3, .LBB0_187
# %bb.163:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 289 7                         # parallel-rne.mlir:289:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_165
.LBB0_164:                              # %middle.block188
                                        #   in Loop: Header=BB0_165 Depth=2
	.loc	1 296 9 is_stmt 1               # parallel-rne.mlir:296:9
	load.d r[2:3], -328(r30)                # 8-byte Folded Reload
	load.d r[9:10], -336(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[2:3]
	addli.d r[3:4], r[9:10], 1
	addli r10, zero, 7
	beq r2, zero, .LBB0_186
.LBB0_165:                              # %.preheader50
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_167 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -336(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r10
	zext_int2long r[13:14], zero
	j .LBB0_167
.LBB0_166:                              # %vector.body184
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 297 11 is_stmt 1              # parallel-rne.mlir:297:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 312 13                        # parallel-rne.mlir:312:13
	add.s r10, r1, r11
	.loc	1 297 11                        # parallel-rne.mlir:297:11
	setneq.d r9, r[13:14], r[22:23]
	.loc	1 312 13                        # parallel-rne.mlir:312:13
	stores.w r21, 12(r10)
	stores.w r15, 8(r10)
	stores.w r19, 4(r10)
	stores.w r4, 0(r10)
	.loc	1 297 11                        # parallel-rne.mlir:297:11
	beq r9, zero, .LBB0_164
.LBB0_167:                              # %vector.body184
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_165 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	add.ul r[9:10], r[13:14], r[2:3]
	slli r11, r9, 2
	add.s r4, r16, r11
	loads.w r20, 12(r4)
	loads.w r27, 0(r4)
	loads.w r26, 4(r4)
	loads.w r25, 8(r4)
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	and r24, r20, r6
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	setlt.u r4, r8, r24
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r4, zero, .LBB0_169
# %bb.168:                              # %vector.body184
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r20, 0
	j .LBB0_170
.LBB0_169:                              #   in Loop: Header=BB0_167 Depth=3
	or r21, r20, r7
.LBB0_170:                              # %vector.body184
                                        #   in Loop: Header=BB0_167 Depth=3
	and r12, r25, r6
	setlt.u r4, r8, r12
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r4, zero, .LBB0_172
# %bb.171:                              # %vector.body184
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r25, 0
	j .LBB0_173
.LBB0_172:                              #   in Loop: Header=BB0_167 Depth=3
	or r15, r25, r7
.LBB0_173:                              # %vector.body184
                                        #   in Loop: Header=BB0_167 Depth=3
	and r28, r26, r6
	setlt.u r4, r8, r28
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r4, zero, .LBB0_175
# %bb.174:                              # %vector.body184
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r26, 0
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_167 Depth=3
	or r19, r26, r7
.LBB0_176:                              # %vector.body184
                                        #   in Loop: Header=BB0_167 Depth=3
	and r9, r27, r6
	setlt.u r4, r8, r9
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r4, zero, .LBB0_178
# %bb.177:                              # %vector.body184
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 309 19 is_stmt 1              # parallel-rne.mlir:309:19
	setlt.u r9, r18, r9
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	beq r9, zero, .LBB0_179
	j .LBB0_180
.LBB0_178:                              #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r7
	.loc	1 309 19 is_stmt 1              # parallel-rne.mlir:309:19
	setlt.u r9, r18, r9
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r9, zero, .LBB0_180
.LBB0_179:                              # %vector.body184
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r27, 16
	andi r4, r4, 1
	add.s r4, r27, r4
	add.s r4, r4, r17
	and r4, r4, r5
.LBB0_180:                              # %vector.body184
                                        #   in Loop: Header=BB0_167 Depth=3
	setlt.u r9, r18, r28
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	beq r9, zero, .LBB0_183
# %bb.181:                              # %vector.body184
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r18, r12
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	beq r9, zero, .LBB0_184
.LBB0_182:                              # %vector.body184
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r18, r24
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r9, zero, .LBB0_166
	j .LBB0_185
.LBB0_183:                              # %vector.body184
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r26, 16
	andi r9, r9, 1
	add.s r9, r26, r9
	add.s r9, r9, r17
	and r19, r9, r5
	setlt.u r9, r18, r12
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r9, zero, .LBB0_182
.LBB0_184:                              # %vector.body184
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r17
	and r15, r9, r5
	setlt.u r9, r18, r24
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r9, zero, .LBB0_166
.LBB0_185:                              # %vector.body184
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r20, 16
	andi r9, r9, 1
	add.s r9, r20, r9
	add.s r9, r9, r17
	and r21, r9, r5
	j .LBB0_166
.LBB0_186:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 289 7 is_stmt 1               # parallel-rne.mlir:289:7
	mfence { sm }
	addli r25, zero, 128
	addli r28, zero, 6
	loadli.w r14,  -376(r30)                # 4-byte Folded Reload
.LBB0_187:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 111
	zext_int2long r[2:3], r2
	.loc	1 317 7 is_stmt 1               # parallel-rne.mlir:317:7
	store.d r[2:3], -336(r30)               # 8-byte Folded Spill
	core_id r2
	bneq r2, r28, .LBB0_212
# %bb.188:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 317 7                         # parallel-rne.mlir:317:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_190
.LBB0_189:                              # %middle.block179
                                        #   in Loop: Header=BB0_190 Depth=2
	.loc	1 324 9 is_stmt 1               # parallel-rne.mlir:324:9
	load.d r[2:3], -336(r30)                # 8-byte Folded Reload
	load.d r[9:10], -344(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[2:3]
	addli.d r[3:4], r[9:10], 1
	addli r10, zero, 7
	beq r2, zero, .LBB0_211
.LBB0_190:                              # %.preheader49
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_192 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -344(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r10
	zext_int2long r[13:14], zero
	j .LBB0_192
.LBB0_191:                              # %vector.body175
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 325 11 is_stmt 1              # parallel-rne.mlir:325:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 340 13                        # parallel-rne.mlir:340:13
	add.s r10, r1, r11
	.loc	1 325 11                        # parallel-rne.mlir:325:11
	setneq.d r9, r[13:14], r[22:23]
	.loc	1 340 13                        # parallel-rne.mlir:340:13
	stores.w r21, 12(r10)
	stores.w r15, 8(r10)
	stores.w r19, 4(r10)
	stores.w r4, 0(r10)
	.loc	1 325 11                        # parallel-rne.mlir:325:11
	beq r9, zero, .LBB0_189
.LBB0_192:                              # %vector.body175
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_190 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	add.ul r[9:10], r[13:14], r[2:3]
	slli r11, r9, 2
	add.s r4, r16, r11
	loads.w r20, 12(r4)
	loads.w r27, 0(r4)
	loads.w r26, 4(r4)
	loads.w r25, 8(r4)
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	and r24, r20, r6
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	setlt.u r4, r8, r24
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r4, zero, .LBB0_194
# %bb.193:                              # %vector.body175
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r20, 0
	j .LBB0_195
.LBB0_194:                              #   in Loop: Header=BB0_192 Depth=3
	or r21, r20, r7
.LBB0_195:                              # %vector.body175
                                        #   in Loop: Header=BB0_192 Depth=3
	and r12, r25, r6
	setlt.u r4, r8, r12
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r4, zero, .LBB0_197
# %bb.196:                              # %vector.body175
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r25, 0
	j .LBB0_198
.LBB0_197:                              #   in Loop: Header=BB0_192 Depth=3
	or r15, r25, r7
.LBB0_198:                              # %vector.body175
                                        #   in Loop: Header=BB0_192 Depth=3
	and r28, r26, r6
	setlt.u r4, r8, r28
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r4, zero, .LBB0_200
# %bb.199:                              # %vector.body175
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r26, 0
	j .LBB0_201
.LBB0_200:                              #   in Loop: Header=BB0_192 Depth=3
	or r19, r26, r7
.LBB0_201:                              # %vector.body175
                                        #   in Loop: Header=BB0_192 Depth=3
	and r9, r27, r6
	setlt.u r4, r8, r9
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r4, zero, .LBB0_203
# %bb.202:                              # %vector.body175
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 337 19 is_stmt 1              # parallel-rne.mlir:337:19
	setlt.u r9, r18, r9
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	beq r9, zero, .LBB0_204
	j .LBB0_205
.LBB0_203:                              #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r7
	.loc	1 337 19 is_stmt 1              # parallel-rne.mlir:337:19
	setlt.u r9, r18, r9
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r9, zero, .LBB0_205
.LBB0_204:                              # %vector.body175
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r27, 16
	andi r4, r4, 1
	add.s r4, r27, r4
	add.s r4, r4, r17
	and r4, r4, r5
.LBB0_205:                              # %vector.body175
                                        #   in Loop: Header=BB0_192 Depth=3
	setlt.u r9, r18, r28
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	beq r9, zero, .LBB0_208
# %bb.206:                              # %vector.body175
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r18, r12
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	beq r9, zero, .LBB0_209
.LBB0_207:                              # %vector.body175
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r18, r24
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r9, zero, .LBB0_191
	j .LBB0_210
.LBB0_208:                              # %vector.body175
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r26, 16
	andi r9, r9, 1
	add.s r9, r26, r9
	add.s r9, r9, r17
	and r19, r9, r5
	setlt.u r9, r18, r12
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r9, zero, .LBB0_207
.LBB0_209:                              # %vector.body175
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r17
	and r15, r9, r5
	setlt.u r9, r18, r24
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r9, zero, .LBB0_191
.LBB0_210:                              # %vector.body175
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r20, 16
	andi r9, r9, 1
	add.s r9, r20, r9
	add.s r9, r9, r17
	and r21, r9, r5
	j .LBB0_191
.LBB0_211:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 317 7 is_stmt 1               # parallel-rne.mlir:317:7
	mfence { sm }
	addli r25, zero, 128
	addli r28, zero, 6
	loadli.w r14,  -376(r30)                # 4-byte Folded Reload
.LBB0_212:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 127
	zext_int2long r[2:3], r2
	.loc	1 345 7 is_stmt 1               # parallel-rne.mlir:345:7
	store.d r[2:3], -344(r30)               # 8-byte Folded Spill
	core_id r2
	bneq r2, r10, .LBB0_237
# %bb.213:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 345 7                         # parallel-rne.mlir:345:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_215
.LBB0_214:                              # %middle.block170
                                        #   in Loop: Header=BB0_215 Depth=2
	.loc	1 352 9 is_stmt 1               # parallel-rne.mlir:352:9
	load.d r[2:3], -344(r30)                # 8-byte Folded Reload
	load.d r[9:10], -360(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[2:3]
	addli.d r[3:4], r[9:10], 1
	addli r10, zero, 7
	beq r2, zero, .LBB0_236
.LBB0_215:                              # %.preheader48
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_217 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -360(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r10
	zext_int2long r[13:14], zero
	j .LBB0_217
.LBB0_216:                              # %vector.body166
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 353 11 is_stmt 1              # parallel-rne.mlir:353:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	add.s r11, r1, r11
	.loc	1 353 11                        # parallel-rne.mlir:353:11
	setneq.d r9, r[13:14], r[22:23]
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	stores.w r21, 12(r11)
	stores.w r15, 8(r11)
	stores.w r10, 4(r11)
	stores.w r4, 0(r11)
	.loc	1 353 11                        # parallel-rne.mlir:353:11
	beq r9, zero, .LBB0_214
.LBB0_217:                              # %vector.body166
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_215 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	add.ul r[9:10], r[13:14], r[2:3]
	slli r11, r9, 2
	add.s r4, r16, r11
	loads.w r20, 12(r4)
	loads.w r27, 0(r4)
	loads.w r19, 4(r4)
	loads.w r9, 8(r4)
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	and r26, r20, r6
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	setlt.u r4, r8, r26
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	bneq r4, zero, .LBB0_219
# %bb.218:                              # %vector.body166
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r20, 0
	j .LBB0_220
.LBB0_219:                              #   in Loop: Header=BB0_217 Depth=3
	or r21, r20, r7
.LBB0_220:                              # %vector.body166
                                        #   in Loop: Header=BB0_217 Depth=3
	and r12, r9, r6
	setlt.u r4, r8, r12
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	bneq r4, zero, .LBB0_222
# %bb.221:                              # %vector.body166
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	j .LBB0_223
.LBB0_222:                              #   in Loop: Header=BB0_217 Depth=3
	or r15, r9, r7
.LBB0_223:                              # %vector.body166
                                        #   in Loop: Header=BB0_217 Depth=3
	and r28, r19, r6
	setlt.u r4, r8, r28
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	bneq r4, zero, .LBB0_225
# %bb.224:                              # %vector.body166
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r19, 0
	j .LBB0_226
.LBB0_225:                              #   in Loop: Header=BB0_217 Depth=3
	or r10, r19, r7
.LBB0_226:                              # %vector.body166
                                        #   in Loop: Header=BB0_217 Depth=3
	and r24, r27, r6
	setlt.u r4, r8, r24
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	bneq r4, zero, .LBB0_228
# %bb.227:                              # %vector.body166
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 365 19 is_stmt 1              # parallel-rne.mlir:365:19
	setlt.u r24, r18, r24
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	beq r24, zero, .LBB0_229
	j .LBB0_230
.LBB0_228:                              #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r7
	.loc	1 365 19 is_stmt 1              # parallel-rne.mlir:365:19
	setlt.u r24, r18, r24
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	bneq r24, zero, .LBB0_230
.LBB0_229:                              # %vector.body166
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r27, 16
	andi r4, r4, 1
	add.s r4, r27, r4
	add.s r4, r4, r17
	and r4, r4, r5
.LBB0_230:                              # %vector.body166
                                        #   in Loop: Header=BB0_217 Depth=3
	setlt.u r24, r18, r28
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	beq r24, zero, .LBB0_233
# %bb.231:                              # %vector.body166
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r18, r12
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	beq r12, zero, .LBB0_234
.LBB0_232:                              # %vector.body166
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r18, r26
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	bneq r9, zero, .LBB0_216
	j .LBB0_235
.LBB0_233:                              # %vector.body166
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r19, 16
	andi r10, r10, 1
	add.s r10, r19, r10
	add.s r10, r10, r17
	and r10, r10, r5
	setlt.u r12, r18, r12
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	bneq r12, zero, .LBB0_232
.LBB0_234:                              # %vector.body166
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r9, 16
	andi r12, r12, 1
	add.s r9, r9, r12
	add.s r9, r9, r17
	and r15, r9, r5
	setlt.u r9, r18, r26
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	bneq r9, zero, .LBB0_216
.LBB0_235:                              # %vector.body166
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r20, 16
	andi r9, r9, 1
	add.s r9, r20, r9
	add.s r9, r9, r17
	and r21, r9, r5
	j .LBB0_216
.LBB0_236:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 345 7 is_stmt 1               # parallel-rne.mlir:345:7
	mfence { sm }
	addli r28, zero, 6
	loadli.w r14,  -376(r30)                # 4-byte Folded Reload
.LBB0_237:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	load.d r[9:10], -288(r30)               # 8-byte Folded Reload
	addli r4, zero, 7
	addli r13, zero, 13
	zext_int2long r[2:3], r2
	min.ul r[9:10], r[2:3], r[9:10]
	addli.d r[9:10], r[9:10], 128
	max.ul r[9:10], r[9:10], r[2:3]
	sub.sl r[2:3], r[9:10], r[2:3]
	min.ul r[2:3], r[2:3], r[22:23]
	.loc	1 373 7 is_stmt 1               # parallel-rne.mlir:373:7
	store.d r[2:3], -408(r30)               # 8-byte Folded Spill
	addli r2, zero, 255
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r3
	.loc	1 373 7                         # parallel-rne.mlir:373:7
	csr_set csr5, r2
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	addli r2, zero, 3
	.loc	1 373 7                         # parallel-rne.mlir:373:7
	sync_core
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	bneq r3, r2, .LBB0_239
# %bb.238:                              # %.thread36.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 11
	.loc	1 375 7 is_stmt 1               # parallel-rne.mlir:375:7
	addli r2, zero, 15
	addli r9, zero, 7
	addli r10, zero, 1
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	xsignal r3, 0
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	xsignal r2, 0
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	addli r2, zero, 16
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	xwait r3, 0
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	xwait r2, 0
	j .LBB0_248
.LBB0_239:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, zero, 5
	lui r10, 304
	mod.s r2, r14, r9
	slli r2, r2, 9
	add.s r11, r2, r10
	addli r10, zero, 1
	.loc	1 377 7 is_stmt 1               # parallel-rne.mlir:377:7
	bneq r3, r10, .LBB0_243
# %bb.240:                              #   in Loop: Header=BB0_7 Depth=1
	load.d r[9:10], 16(r30)
	load.d r[12:13], -416(r30)              # 8-byte Folded Reload
	addli r20, zero, 19
	addli r19, zero, 13
	xwait r20, 0
	add.ul r[9:10], r[9:10], r[12:13]
	addli r13, zero, 4
	blt.s r13, r14, .LBB0_242
# %bb.241:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r12, zero, 5
	addli r14, zero, 1
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	addli r15, zero, 2
	addli r3, zero, 6
	addli r28, zero, 6
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 3
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r4, 10
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
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 15
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 16
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 17
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 18
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 20
	dma_cfg zero, zero, r20, 10
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
	dma_cfg r14, r14, zero, 0
	dma_cfg r14, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r11, zero, r3, 3
	addli r3, zero, 512
	dma_cfg r25, zero, r13, 4
	dma_cfg r3, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
.LBB0_242:                              # %.thread36.thread40
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r12, zero, 1
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	lock zero, r13
	lui r3, 304
	addli r14, zero, 64
	addli r15, zero, 512
	addli r4, zero, 256
	dma_cfg r12, r12, zero, 0
	ori r3, r3, 64
	dma_cfg zero, r10, zero, 2
	load.d r[26:27], -408(r30)              # 8-byte Folded Reload
	add.s r2, r2, r3
	dma_cfg r2, r9, r14, 3
	addli r10, zero, 5
	addli r9, zero, 7
	addli r3, r26, 31
	srli r2, r3, 5
	slli r3, r26, 1
	dma_cfg r25, r14, r2, 4
	andi r3, r3, 62
	dma_cfg r15, r4, r12, 5
	addli r4, zero, 2
	dma_cfg zero, zero, r3, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 3
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 20
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r9, 10
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
	addli r4, zero, 18
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 21
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 22
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 23
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 24
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 25
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 26
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 27
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 28
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 29
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 30
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 31
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 13
	dma_cfg r12, r12, zero, 0
	dma_cfg r12, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r11, zero, r14, 3
	dma_cfg r25, zero, r2, 4
	dma_cfg r15, zero, r12, 5
	dma_cfg zero, zero, r3, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	addli r10, zero, 1
	xsignal r4, 0
	.loc	1 380 7 is_stmt 1               # parallel-rne.mlir:380:7
	j .LBB0_248
.LBB0_243:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	bneq r3, r9, .LBB0_247
# %bb.244:                              #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 15
	addli r2, zero, 0
	addli r9, zero, 7
	lui r4, 16
	xwait r3, 0
	addli r3, zero, 18
	xwait r3, 0
	addli r3, zero, 2
	lock zero, r3
	lui r3, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r3, r3, zero, 0
	addli r3, zero, 127
	ew_cfg zero, r3, zero, 2
	ew_cfg r10, zero, zero, 3
.LBB0_245:                              #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r3, r1, r2
	addli r2, r2, 512
	dsmadd r3, r3, r11, 0
	bneq r2, r4, .LBB0_245
# %bb.246:                              # %.thread36
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 2
	unlock r2
	addli r2, zero, 16
	xsignal r2, 0
	addli r2, zero, 19
	xsignal r2, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, zero, 7
.LBB0_248:                              # %.critedge6
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 385 7 is_stmt 1               # parallel-rne.mlir:385:7
	addli r2, zero, 255
	.loc	1 383 7                         # parallel-rne.mlir:383:7
	xfence
	.loc	1 384 7                         # parallel-rne.mlir:384:7
	mfence { lm, sm, gm }
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	csr_set csr5, r2
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r2
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	sync_core
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	beq r2, zero, .LBB0_250
# %bb.249:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 414 7                         # parallel-rne.mlir:414:7
	beq r2, r10, .LBB0_274
	j .LBB0_298
.LBB0_250:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[2:3], zero
	.loc	1 386 7 is_stmt 1               # parallel-rne.mlir:386:7
	xfence
	mfence { lm, sm, gm }
	store.d r[2:3], -376(r30)               # 8-byte Folded Spill
	addli.d r[3:4], r[2:3], 0
	j .LBB0_252
.LBB0_251:                              # %middle.block161
                                        #   in Loop: Header=BB0_252 Depth=2
	.loc	1 393 9                         # parallel-rne.mlir:393:9
	load.d r[2:3], -368(r30)                # 8-byte Folded Reload
	load.d r[9:10], -360(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[2:3]
	addli.d r[3:4], r[9:10], 1
	addli r9, zero, 7
	beq r2, zero, .LBB0_273
.LBB0_252:                              # %.preheader47
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_254 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -360(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[3:4], r9
	load.d r[2:3], -376(r30)                # 8-byte Folded Reload
	j .LBB0_254
.LBB0_253:                              # %vector.body157
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 394 11 is_stmt 1              # parallel-rne.mlir:394:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 409 13                        # parallel-rne.mlir:409:13
	add.s r10, r16, r11
	.loc	1 394 11                        # parallel-rne.mlir:394:11
	setneq.d r4, r[2:3], r[22:23]
	.loc	1 409 13                        # parallel-rne.mlir:409:13
	stores.w r28, 12(r10)
	stores.w r9, 8(r10)
	stores.w r19, 4(r10)
	stores.w r20, 0(r10)
	.loc	1 394 11                        # parallel-rne.mlir:394:11
	beq r4, zero, .LBB0_251
.LBB0_254:                              # %vector.body157
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_252 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	add.ul r[9:10], r[2:3], r[13:14]
	slli r11, r9, 2
	add.s r9, r1, r11
	loads.w r26, 12(r9)
	loads.w r4, 0(r9)
	loads.w r27, 4(r9)
	loads.w r10, 8(r9)
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	and r15, r26, r6
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	setlt.u r9, r8, r15
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	bneq r9, zero, .LBB0_256
# %bb.255:                              # %vector.body157
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r26, 0
	j .LBB0_257
.LBB0_256:                              #   in Loop: Header=BB0_254 Depth=3
	or r28, r26, r7
.LBB0_257:                              # %vector.body157
                                        #   in Loop: Header=BB0_254 Depth=3
	and r12, r10, r6
	setlt.u r9, r8, r12
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	bneq r9, zero, .LBB0_259
# %bb.258:                              # %vector.body157
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r10, 0
	j .LBB0_260
.LBB0_259:                              #   in Loop: Header=BB0_254 Depth=3
	or r9, r10, r7
.LBB0_260:                              # %vector.body157
                                        #   in Loop: Header=BB0_254 Depth=3
	and r21, r27, r6
	setlt.u r19, r8, r21
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	bneq r19, zero, .LBB0_262
# %bb.261:                              # %vector.body157
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r27, 0
	j .LBB0_263
.LBB0_262:                              #   in Loop: Header=BB0_254 Depth=3
	or r19, r27, r7
.LBB0_263:                              # %vector.body157
                                        #   in Loop: Header=BB0_254 Depth=3
	and r24, r4, r6
	setlt.u r20, r8, r24
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	bneq r20, zero, .LBB0_265
# %bb.264:                              # %vector.body157
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r4, 0
	.loc	1 406 19 is_stmt 1              # parallel-rne.mlir:406:19
	setlt.u r24, r18, r24
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	beq r24, zero, .LBB0_266
	j .LBB0_267
.LBB0_265:                              #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r4, r7
	.loc	1 406 19 is_stmt 1              # parallel-rne.mlir:406:19
	setlt.u r24, r18, r24
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	bneq r24, zero, .LBB0_267
.LBB0_266:                              # %vector.body157
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r4, 16
	andi r20, r20, 1
	add.s r4, r4, r20
	add.s r4, r4, r17
	and r20, r4, r5
.LBB0_267:                              # %vector.body157
                                        #   in Loop: Header=BB0_254 Depth=3
	setlt.u r4, r18, r21
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	beq r4, zero, .LBB0_270
# %bb.268:                              # %vector.body157
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r18, r12
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	beq r4, zero, .LBB0_271
.LBB0_269:                              # %vector.body157
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r18, r15
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	bneq r4, zero, .LBB0_253
	j .LBB0_272
.LBB0_270:                              # %vector.body157
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r27, 16
	andi r4, r4, 1
	add.s r4, r27, r4
	add.s r4, r4, r17
	and r19, r4, r5
	setlt.u r4, r18, r12
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	bneq r4, zero, .LBB0_269
.LBB0_271:                              # %vector.body157
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r17
	and r9, r4, r5
	setlt.u r4, r18, r15
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	bneq r4, zero, .LBB0_253
.LBB0_272:                              # %vector.body157
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r26, 16
	andi r4, r4, 1
	add.s r4, r26, r4
	add.s r4, r4, r17
	and r28, r4, r5
	j .LBB0_253
.LBB0_273:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r2
	addli r10, zero, 1
	addli r28, zero, 6
	addli r13, zero, 13
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	mfence { sm }
	.loc	1 414 7                         # parallel-rne.mlir:414:7
	bneq r2, r10, .LBB0_298
.LBB0_274:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 414 7                         # parallel-rne.mlir:414:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_276
.LBB0_275:                              # %middle.block152
                                        #   in Loop: Header=BB0_276 Depth=2
	.loc	1 421 9 is_stmt 1               # parallel-rne.mlir:421:9
	load.d r[2:3], -296(r30)                # 8-byte Folded Reload
	load.d r[9:10], -360(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[2:3]
	addli.d r[3:4], r[9:10], 1
	addli r9, zero, 7
	beq r2, zero, .LBB0_297
.LBB0_276:                              # %.preheader46
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_278 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -360(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r9
	zext_int2long r[13:14], zero
	j .LBB0_278
.LBB0_277:                              # %vector.body148
                                        #   in Loop: Header=BB0_278 Depth=3
	.loc	1 422 11 is_stmt 1              # parallel-rne.mlir:422:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 437 13                        # parallel-rne.mlir:437:13
	add.s r11, r16, r11
	.loc	1 422 11                        # parallel-rne.mlir:422:11
	setneq.d r10, r[13:14], r[22:23]
	.loc	1 437 13                        # parallel-rne.mlir:437:13
	stores.w r21, 12(r11)
	stores.w r9, 8(r11)
	stores.w r19, 4(r11)
	stores.w r4, 0(r11)
	.loc	1 422 11                        # parallel-rne.mlir:422:11
	beq r10, zero, .LBB0_275
.LBB0_278:                              # %vector.body148
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_276 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	add.ul r[9:10], r[13:14], r[2:3]
	slli r11, r9, 2
	add.s r4, r1, r11
	loads.w r20, 12(r4)
	loads.w r27, 0(r4)
	loads.w r26, 4(r4)
	loads.w r10, 8(r4)
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	and r15, r20, r6
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	setlt.u r4, r8, r15
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	bneq r4, zero, .LBB0_280
# %bb.279:                              # %vector.body148
                                        #   in Loop: Header=BB0_278 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r20, 0
	j .LBB0_281
.LBB0_280:                              #   in Loop: Header=BB0_278 Depth=3
	or r21, r20, r7
.LBB0_281:                              # %vector.body148
                                        #   in Loop: Header=BB0_278 Depth=3
	and r12, r10, r6
	setlt.u r4, r8, r12
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	bneq r4, zero, .LBB0_283
# %bb.282:                              # %vector.body148
                                        #   in Loop: Header=BB0_278 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r10, 0
	j .LBB0_284
.LBB0_283:                              #   in Loop: Header=BB0_278 Depth=3
	or r9, r10, r7
.LBB0_284:                              # %vector.body148
                                        #   in Loop: Header=BB0_278 Depth=3
	and r28, r26, r6
	setlt.u r4, r8, r28
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	bneq r4, zero, .LBB0_286
# %bb.285:                              # %vector.body148
                                        #   in Loop: Header=BB0_278 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r26, 0
	j .LBB0_287
.LBB0_286:                              #   in Loop: Header=BB0_278 Depth=3
	or r19, r26, r7
.LBB0_287:                              # %vector.body148
                                        #   in Loop: Header=BB0_278 Depth=3
	and r24, r27, r6
	setlt.u r4, r8, r24
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	bneq r4, zero, .LBB0_289
# %bb.288:                              # %vector.body148
                                        #   in Loop: Header=BB0_278 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 434 19 is_stmt 1              # parallel-rne.mlir:434:19
	setlt.u r24, r18, r24
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	beq r24, zero, .LBB0_290
	j .LBB0_291
.LBB0_289:                              #   in Loop: Header=BB0_278 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r7
	.loc	1 434 19 is_stmt 1              # parallel-rne.mlir:434:19
	setlt.u r24, r18, r24
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	bneq r24, zero, .LBB0_291
.LBB0_290:                              # %vector.body148
                                        #   in Loop: Header=BB0_278 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r27, 16
	andi r4, r4, 1
	add.s r4, r27, r4
	add.s r4, r4, r17
	and r4, r4, r5
.LBB0_291:                              # %vector.body148
                                        #   in Loop: Header=BB0_278 Depth=3
	setlt.u r24, r18, r28
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	beq r24, zero, .LBB0_294
# %bb.292:                              # %vector.body148
                                        #   in Loop: Header=BB0_278 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r18, r12
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	beq r12, zero, .LBB0_295
.LBB0_293:                              # %vector.body148
                                        #   in Loop: Header=BB0_278 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r18, r15
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	bneq r10, zero, .LBB0_277
	j .LBB0_296
.LBB0_294:                              # %vector.body148
                                        #   in Loop: Header=BB0_278 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r19, r26, 16
	andi r19, r19, 1
	add.s r19, r26, r19
	add.s r19, r19, r17
	and r19, r19, r5
	setlt.u r12, r18, r12
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	bneq r12, zero, .LBB0_293
.LBB0_295:                              # %vector.body148
                                        #   in Loop: Header=BB0_278 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r17
	and r9, r9, r5
	setlt.u r10, r18, r15
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	bneq r10, zero, .LBB0_277
.LBB0_296:                              # %vector.body148
                                        #   in Loop: Header=BB0_278 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r20, 16
	andi r10, r10, 1
	add.s r10, r20, r10
	add.s r10, r10, r17
	and r21, r10, r5
	j .LBB0_277
.LBB0_297:                              #   in Loop: Header=BB0_7 Depth=1
	addli r28, zero, 6
	addli r13, zero, 13
	.loc	1 414 7 is_stmt 1               # parallel-rne.mlir:414:7
	mfence { sm }
.LBB0_298:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 442 7                         # parallel-rne.mlir:442:7
	core_id r2
	addli r3, zero, 2
	bneq r2, r3, .LBB0_323
# %bb.299:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 442 7                         # parallel-rne.mlir:442:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_301
.LBB0_300:                              # %middle.block143
                                        #   in Loop: Header=BB0_301 Depth=2
	.loc	1 449 9 is_stmt 1               # parallel-rne.mlir:449:9
	load.d r[2:3], -304(r30)                # 8-byte Folded Reload
	load.d r[9:10], -296(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[2:3]
	addli.d r[3:4], r[9:10], 1
	addli r9, zero, 7
	beq r2, zero, .LBB0_322
.LBB0_301:                              # %.preheader45
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_303 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -296(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r9
	zext_int2long r[13:14], zero
	j .LBB0_303
.LBB0_302:                              # %vector.body139
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 450 11 is_stmt 1              # parallel-rne.mlir:450:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 465 13                        # parallel-rne.mlir:465:13
	add.s r11, r16, r11
	.loc	1 450 11                        # parallel-rne.mlir:450:11
	setneq.d r10, r[13:14], r[22:23]
	.loc	1 465 13                        # parallel-rne.mlir:465:13
	stores.w r21, 12(r11)
	stores.w r9, 8(r11)
	stores.w r19, 4(r11)
	stores.w r4, 0(r11)
	.loc	1 450 11                        # parallel-rne.mlir:450:11
	beq r10, zero, .LBB0_300
.LBB0_303:                              # %vector.body139
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_301 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	add.ul r[9:10], r[13:14], r[2:3]
	slli r11, r9, 2
	add.s r4, r1, r11
	loads.w r20, 12(r4)
	loads.w r27, 0(r4)
	loads.w r26, 4(r4)
	loads.w r10, 8(r4)
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	and r15, r20, r6
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	setlt.u r4, r8, r15
	.loc	1 456 19                        # parallel-rne.mlir:456:19
	bneq r4, zero, .LBB0_305
# %bb.304:                              # %vector.body139
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r20, 0
	j .LBB0_306
.LBB0_305:                              #   in Loop: Header=BB0_303 Depth=3
	or r21, r20, r7
.LBB0_306:                              # %vector.body139
                                        #   in Loop: Header=BB0_303 Depth=3
	and r12, r10, r6
	setlt.u r4, r8, r12
	.loc	1 456 19                        # parallel-rne.mlir:456:19
	bneq r4, zero, .LBB0_308
# %bb.307:                              # %vector.body139
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r10, 0
	j .LBB0_309
.LBB0_308:                              #   in Loop: Header=BB0_303 Depth=3
	or r9, r10, r7
.LBB0_309:                              # %vector.body139
                                        #   in Loop: Header=BB0_303 Depth=3
	and r28, r26, r6
	setlt.u r4, r8, r28
	.loc	1 456 19                        # parallel-rne.mlir:456:19
	bneq r4, zero, .LBB0_311
# %bb.310:                              # %vector.body139
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r26, 0
	j .LBB0_312
.LBB0_311:                              #   in Loop: Header=BB0_303 Depth=3
	or r19, r26, r7
.LBB0_312:                              # %vector.body139
                                        #   in Loop: Header=BB0_303 Depth=3
	and r24, r27, r6
	setlt.u r4, r8, r24
	.loc	1 456 19                        # parallel-rne.mlir:456:19
	bneq r4, zero, .LBB0_314
# %bb.313:                              # %vector.body139
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 462 19 is_stmt 1              # parallel-rne.mlir:462:19
	setlt.u r24, r18, r24
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	beq r24, zero, .LBB0_315
	j .LBB0_316
.LBB0_314:                              #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r7
	.loc	1 462 19 is_stmt 1              # parallel-rne.mlir:462:19
	setlt.u r24, r18, r24
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	bneq r24, zero, .LBB0_316
.LBB0_315:                              # %vector.body139
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r27, 16
	andi r4, r4, 1
	add.s r4, r27, r4
	add.s r4, r4, r17
	and r4, r4, r5
.LBB0_316:                              # %vector.body139
                                        #   in Loop: Header=BB0_303 Depth=3
	setlt.u r24, r18, r28
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	beq r24, zero, .LBB0_319
# %bb.317:                              # %vector.body139
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r18, r12
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	beq r12, zero, .LBB0_320
.LBB0_318:                              # %vector.body139
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r18, r15
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	bneq r10, zero, .LBB0_302
	j .LBB0_321
.LBB0_319:                              # %vector.body139
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r19, r26, 16
	andi r19, r19, 1
	add.s r19, r26, r19
	add.s r19, r19, r17
	and r19, r19, r5
	setlt.u r12, r18, r12
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	bneq r12, zero, .LBB0_318
.LBB0_320:                              # %vector.body139
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r17
	and r9, r9, r5
	setlt.u r10, r18, r15
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	bneq r10, zero, .LBB0_302
.LBB0_321:                              # %vector.body139
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r20, 16
	andi r10, r10, 1
	add.s r10, r20, r10
	add.s r10, r10, r17
	and r21, r10, r5
	j .LBB0_302
.LBB0_322:                              #   in Loop: Header=BB0_7 Depth=1
	addli r28, zero, 6
	addli r13, zero, 13
	.loc	1 442 7 is_stmt 1               # parallel-rne.mlir:442:7
	mfence { sm }
.LBB0_323:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 470 7                         # parallel-rne.mlir:470:7
	core_id r2
	addli r3, zero, 3
	bneq r2, r3, .LBB0_348
# %bb.324:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 470 7                         # parallel-rne.mlir:470:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_326
.LBB0_325:                              # %middle.block134
                                        #   in Loop: Header=BB0_326 Depth=2
	.loc	1 477 9 is_stmt 1               # parallel-rne.mlir:477:9
	load.d r[2:3], -312(r30)                # 8-byte Folded Reload
	load.d r[9:10], -296(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[2:3]
	addli.d r[3:4], r[9:10], 1
	addli r9, zero, 7
	beq r2, zero, .LBB0_347
.LBB0_326:                              # %.preheader44
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_328 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -296(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r9
	zext_int2long r[13:14], zero
	j .LBB0_328
.LBB0_327:                              # %vector.body130
                                        #   in Loop: Header=BB0_328 Depth=3
	.loc	1 478 11 is_stmt 1              # parallel-rne.mlir:478:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 493 13                        # parallel-rne.mlir:493:13
	add.s r11, r16, r11
	.loc	1 478 11                        # parallel-rne.mlir:478:11
	setneq.d r10, r[13:14], r[22:23]
	.loc	1 493 13                        # parallel-rne.mlir:493:13
	stores.w r21, 12(r11)
	stores.w r9, 8(r11)
	stores.w r19, 4(r11)
	stores.w r4, 0(r11)
	.loc	1 478 11                        # parallel-rne.mlir:478:11
	beq r10, zero, .LBB0_325
.LBB0_328:                              # %vector.body130
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_326 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	add.ul r[9:10], r[13:14], r[2:3]
	slli r11, r9, 2
	add.s r4, r1, r11
	loads.w r20, 12(r4)
	loads.w r27, 0(r4)
	loads.w r26, 4(r4)
	loads.w r10, 8(r4)
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	and r15, r20, r6
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	setlt.u r4, r8, r15
	.loc	1 484 19                        # parallel-rne.mlir:484:19
	bneq r4, zero, .LBB0_330
# %bb.329:                              # %vector.body130
                                        #   in Loop: Header=BB0_328 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r20, 0
	j .LBB0_331
.LBB0_330:                              #   in Loop: Header=BB0_328 Depth=3
	or r21, r20, r7
.LBB0_331:                              # %vector.body130
                                        #   in Loop: Header=BB0_328 Depth=3
	and r12, r10, r6
	setlt.u r4, r8, r12
	.loc	1 484 19                        # parallel-rne.mlir:484:19
	bneq r4, zero, .LBB0_333
# %bb.332:                              # %vector.body130
                                        #   in Loop: Header=BB0_328 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r10, 0
	j .LBB0_334
.LBB0_333:                              #   in Loop: Header=BB0_328 Depth=3
	or r9, r10, r7
.LBB0_334:                              # %vector.body130
                                        #   in Loop: Header=BB0_328 Depth=3
	and r28, r26, r6
	setlt.u r4, r8, r28
	.loc	1 484 19                        # parallel-rne.mlir:484:19
	bneq r4, zero, .LBB0_336
# %bb.335:                              # %vector.body130
                                        #   in Loop: Header=BB0_328 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r26, 0
	j .LBB0_337
.LBB0_336:                              #   in Loop: Header=BB0_328 Depth=3
	or r19, r26, r7
.LBB0_337:                              # %vector.body130
                                        #   in Loop: Header=BB0_328 Depth=3
	and r24, r27, r6
	setlt.u r4, r8, r24
	.loc	1 484 19                        # parallel-rne.mlir:484:19
	bneq r4, zero, .LBB0_339
# %bb.338:                              # %vector.body130
                                        #   in Loop: Header=BB0_328 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 490 19 is_stmt 1              # parallel-rne.mlir:490:19
	setlt.u r24, r18, r24
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	beq r24, zero, .LBB0_340
	j .LBB0_341
.LBB0_339:                              #   in Loop: Header=BB0_328 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r7
	.loc	1 490 19 is_stmt 1              # parallel-rne.mlir:490:19
	setlt.u r24, r18, r24
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	bneq r24, zero, .LBB0_341
.LBB0_340:                              # %vector.body130
                                        #   in Loop: Header=BB0_328 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r27, 16
	andi r4, r4, 1
	add.s r4, r27, r4
	add.s r4, r4, r17
	and r4, r4, r5
.LBB0_341:                              # %vector.body130
                                        #   in Loop: Header=BB0_328 Depth=3
	setlt.u r24, r18, r28
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	beq r24, zero, .LBB0_344
# %bb.342:                              # %vector.body130
                                        #   in Loop: Header=BB0_328 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r18, r12
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	beq r12, zero, .LBB0_345
.LBB0_343:                              # %vector.body130
                                        #   in Loop: Header=BB0_328 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r18, r15
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	bneq r10, zero, .LBB0_327
	j .LBB0_346
.LBB0_344:                              # %vector.body130
                                        #   in Loop: Header=BB0_328 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r19, r26, 16
	andi r19, r19, 1
	add.s r19, r26, r19
	add.s r19, r19, r17
	and r19, r19, r5
	setlt.u r12, r18, r12
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	bneq r12, zero, .LBB0_343
.LBB0_345:                              # %vector.body130
                                        #   in Loop: Header=BB0_328 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r17
	and r9, r9, r5
	setlt.u r10, r18, r15
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	bneq r10, zero, .LBB0_327
.LBB0_346:                              # %vector.body130
                                        #   in Loop: Header=BB0_328 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r20, 16
	andi r10, r10, 1
	add.s r10, r20, r10
	add.s r10, r10, r17
	and r21, r10, r5
	j .LBB0_327
.LBB0_347:                              #   in Loop: Header=BB0_7 Depth=1
	addli r28, zero, 6
	addli r13, zero, 13
	.loc	1 470 7 is_stmt 1               # parallel-rne.mlir:470:7
	mfence { sm }
.LBB0_348:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 498 7                         # parallel-rne.mlir:498:7
	core_id r2
	addli r3, zero, 4
	bneq r2, r3, .LBB0_373
# %bb.349:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 498 7                         # parallel-rne.mlir:498:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_351
.LBB0_350:                              # %middle.block125
                                        #   in Loop: Header=BB0_351 Depth=2
	.loc	1 505 9 is_stmt 1               # parallel-rne.mlir:505:9
	load.d r[2:3], -320(r30)                # 8-byte Folded Reload
	load.d r[9:10], -296(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[2:3]
	addli.d r[3:4], r[9:10], 1
	addli r9, zero, 7
	beq r2, zero, .LBB0_372
.LBB0_351:                              # %.preheader43
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_353 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -296(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r9
	zext_int2long r[13:14], zero
	j .LBB0_353
.LBB0_352:                              # %vector.body121
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 506 11 is_stmt 1              # parallel-rne.mlir:506:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 521 13                        # parallel-rne.mlir:521:13
	add.s r11, r16, r11
	.loc	1 506 11                        # parallel-rne.mlir:506:11
	setneq.d r10, r[13:14], r[22:23]
	.loc	1 521 13                        # parallel-rne.mlir:521:13
	stores.w r21, 12(r11)
	stores.w r9, 8(r11)
	stores.w r19, 4(r11)
	stores.w r4, 0(r11)
	.loc	1 506 11                        # parallel-rne.mlir:506:11
	beq r10, zero, .LBB0_350
.LBB0_353:                              # %vector.body121
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_351 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	add.ul r[9:10], r[13:14], r[2:3]
	slli r11, r9, 2
	add.s r4, r1, r11
	loads.w r20, 12(r4)
	loads.w r27, 0(r4)
	loads.w r26, 4(r4)
	loads.w r10, 8(r4)
	.loc	1 509 19                        # parallel-rne.mlir:509:19
	and r15, r20, r6
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	setlt.u r4, r8, r15
	.loc	1 512 19                        # parallel-rne.mlir:512:19
	bneq r4, zero, .LBB0_355
# %bb.354:                              # %vector.body121
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r20, 0
	j .LBB0_356
.LBB0_355:                              #   in Loop: Header=BB0_353 Depth=3
	or r21, r20, r7
.LBB0_356:                              # %vector.body121
                                        #   in Loop: Header=BB0_353 Depth=3
	and r12, r10, r6
	setlt.u r4, r8, r12
	.loc	1 512 19                        # parallel-rne.mlir:512:19
	bneq r4, zero, .LBB0_358
# %bb.357:                              # %vector.body121
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r10, 0
	j .LBB0_359
.LBB0_358:                              #   in Loop: Header=BB0_353 Depth=3
	or r9, r10, r7
.LBB0_359:                              # %vector.body121
                                        #   in Loop: Header=BB0_353 Depth=3
	and r28, r26, r6
	setlt.u r4, r8, r28
	.loc	1 512 19                        # parallel-rne.mlir:512:19
	bneq r4, zero, .LBB0_361
# %bb.360:                              # %vector.body121
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r26, 0
	j .LBB0_362
.LBB0_361:                              #   in Loop: Header=BB0_353 Depth=3
	or r19, r26, r7
.LBB0_362:                              # %vector.body121
                                        #   in Loop: Header=BB0_353 Depth=3
	and r24, r27, r6
	setlt.u r4, r8, r24
	.loc	1 512 19                        # parallel-rne.mlir:512:19
	bneq r4, zero, .LBB0_364
# %bb.363:                              # %vector.body121
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 518 19 is_stmt 1              # parallel-rne.mlir:518:19
	setlt.u r24, r18, r24
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	beq r24, zero, .LBB0_365
	j .LBB0_366
.LBB0_364:                              #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r7
	.loc	1 518 19 is_stmt 1              # parallel-rne.mlir:518:19
	setlt.u r24, r18, r24
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	bneq r24, zero, .LBB0_366
.LBB0_365:                              # %vector.body121
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r27, 16
	andi r4, r4, 1
	add.s r4, r27, r4
	add.s r4, r4, r17
	and r4, r4, r5
.LBB0_366:                              # %vector.body121
                                        #   in Loop: Header=BB0_353 Depth=3
	setlt.u r24, r18, r28
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	beq r24, zero, .LBB0_369
# %bb.367:                              # %vector.body121
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r18, r12
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	beq r12, zero, .LBB0_370
.LBB0_368:                              # %vector.body121
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r18, r15
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	bneq r10, zero, .LBB0_352
	j .LBB0_371
.LBB0_369:                              # %vector.body121
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r19, r26, 16
	andi r19, r19, 1
	add.s r19, r26, r19
	add.s r19, r19, r17
	and r19, r19, r5
	setlt.u r12, r18, r12
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	bneq r12, zero, .LBB0_368
.LBB0_370:                              # %vector.body121
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r17
	and r9, r9, r5
	setlt.u r10, r18, r15
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	bneq r10, zero, .LBB0_352
.LBB0_371:                              # %vector.body121
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r20, 16
	andi r10, r10, 1
	add.s r10, r20, r10
	add.s r10, r10, r17
	and r21, r10, r5
	j .LBB0_352
.LBB0_372:                              #   in Loop: Header=BB0_7 Depth=1
	addli r28, zero, 6
	addli r13, zero, 13
	.loc	1 498 7 is_stmt 1               # parallel-rne.mlir:498:7
	mfence { sm }
.LBB0_373:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 526 7                         # parallel-rne.mlir:526:7
	core_id r2
	addli r3, zero, 5
	beq r2, r3, .LBB0_376
# %bb.374:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	core_id r2
	beq r2, r28, .LBB0_400
.LBB0_375:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 582 7                         # parallel-rne.mlir:582:7
	core_id r2
	beq r2, r9, .LBB0_424
	j .LBB0_448
.LBB0_376:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 526 7 is_stmt 1               # parallel-rne.mlir:526:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_378
.LBB0_377:                              # %middle.block116
                                        #   in Loop: Header=BB0_378 Depth=2
	.loc	1 533 9                         # parallel-rne.mlir:533:9
	load.d r[2:3], -328(r30)                # 8-byte Folded Reload
	load.d r[9:10], -296(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[2:3]
	addli.d r[3:4], r[9:10], 1
	addli r9, zero, 7
	beq r2, zero, .LBB0_399
.LBB0_378:                              # %.preheader42
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_380 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[24:25], r[3:4], r9
	zext_int2long r[13:14], zero
	store.d r[3:4], -296(r30)               # 8-byte Folded Spill
	j .LBB0_380
.LBB0_379:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 534 11 is_stmt 1              # parallel-rne.mlir:534:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	add.s r3, r16, r11
	.loc	1 534 11                        # parallel-rne.mlir:534:11
	setneq.d r2, r[13:14], r[22:23]
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	stores.w r21, 12(r3)
	stores.w r9, 8(r3)
	stores.w r19, 4(r3)
	stores.w r4, 0(r3)
	.loc	1 534 11                        # parallel-rne.mlir:534:11
	beq r2, zero, .LBB0_377
.LBB0_380:                              # %vector.body112
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_378 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	add.ul r[2:3], r[13:14], r[24:25]
	slli r11, r2, 2
	add.s r2, r1, r11
	loads.w r20, 12(r2)
	loads.w r27, 0(r2)
	loads.w r26, 4(r2)
	loads.w r10, 8(r2)
	.loc	1 537 19                        # parallel-rne.mlir:537:19
	and r15, r20, r6
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	setlt.u r2, r8, r15
	.loc	1 540 19                        # parallel-rne.mlir:540:19
	bneq r2, zero, .LBB0_382
# %bb.381:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r20, 0
	j .LBB0_383
.LBB0_382:                              #   in Loop: Header=BB0_380 Depth=3
	or r21, r20, r7
.LBB0_383:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	and r12, r10, r6
	setlt.u r2, r8, r12
	.loc	1 540 19                        # parallel-rne.mlir:540:19
	bneq r2, zero, .LBB0_385
# %bb.384:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r10, 0
	j .LBB0_386
.LBB0_385:                              #   in Loop: Header=BB0_380 Depth=3
	or r9, r10, r7
.LBB0_386:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	and r28, r26, r6
	setlt.u r2, r8, r28
	.loc	1 540 19                        # parallel-rne.mlir:540:19
	bneq r2, zero, .LBB0_388
# %bb.387:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r26, 0
	j .LBB0_389
.LBB0_388:                              #   in Loop: Header=BB0_380 Depth=3
	or r19, r26, r7
.LBB0_389:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	and r2, r27, r6
	setlt.u r3, r8, r2
	.loc	1 540 19                        # parallel-rne.mlir:540:19
	bneq r3, zero, .LBB0_391
# %bb.390:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 546 19 is_stmt 1              # parallel-rne.mlir:546:19
	setlt.u r2, r18, r2
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	beq r2, zero, .LBB0_392
	j .LBB0_393
.LBB0_391:                              #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r7
	.loc	1 546 19 is_stmt 1              # parallel-rne.mlir:546:19
	setlt.u r2, r18, r2
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r2, zero, .LBB0_393
.LBB0_392:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r27, 16
	andi r2, r2, 1
	add.s r2, r27, r2
	add.s r2, r2, r17
	and r4, r2, r5
.LBB0_393:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	setlt.u r2, r18, r28
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	beq r2, zero, .LBB0_396
# %bb.394:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r18, r12
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	beq r2, zero, .LBB0_397
.LBB0_395:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r18, r15
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r2, zero, .LBB0_379
	j .LBB0_398
.LBB0_396:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r26, 16
	andi r2, r2, 1
	add.s r2, r26, r2
	add.s r2, r2, r17
	and r19, r2, r5
	setlt.u r2, r18, r12
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r2, zero, .LBB0_395
.LBB0_397:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r17
	and r9, r2, r5
	setlt.u r2, r18, r15
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r2, zero, .LBB0_379
.LBB0_398:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r20, 16
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r17
	and r21, r2, r5
	j .LBB0_379
.LBB0_399:                              #   in Loop: Header=BB0_7 Depth=1
	addli r25, zero, 128
	addli r28, zero, 6
	addli r13, zero, 13
	.loc	1 526 7 is_stmt 1               # parallel-rne.mlir:526:7
	mfence { sm }
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	core_id r2
	bneq r2, r28, .LBB0_375
.LBB0_400:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_402
.LBB0_401:                              # %middle.block107
                                        #   in Loop: Header=BB0_402 Depth=2
	.loc	1 561 9 is_stmt 1               # parallel-rne.mlir:561:9
	load.d r[2:3], -336(r30)                # 8-byte Folded Reload
	load.d r[9:10], -296(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[2:3]
	addli.d r[3:4], r[9:10], 1
	addli r9, zero, 7
	beq r2, zero, .LBB0_423
.LBB0_402:                              # %.preheader41
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_404 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[13:14], r[3:4], r9
	zext_int2long r[24:25], zero
	store.d r[3:4], -296(r30)               # 8-byte Folded Spill
	j .LBB0_404
.LBB0_403:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 562 11 is_stmt 1              # parallel-rne.mlir:562:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 577 13                        # parallel-rne.mlir:577:13
	add.s r3, r16, r11
	.loc	1 562 11                        # parallel-rne.mlir:562:11
	setneq.d r2, r[24:25], r[22:23]
	.loc	1 577 13                        # parallel-rne.mlir:577:13
	stores.w r21, 12(r3)
	stores.w r9, 8(r3)
	stores.w r19, 4(r3)
	stores.w r4, 0(r3)
	.loc	1 562 11                        # parallel-rne.mlir:562:11
	beq r2, zero, .LBB0_401
.LBB0_404:                              # %vector.body103
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_402 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	add.ul r[2:3], r[24:25], r[13:14]
	slli r11, r2, 2
	add.s r2, r1, r11
	loads.w r20, 12(r2)
	loads.w r27, 0(r2)
	loads.w r26, 4(r2)
	loads.w r10, 8(r2)
	.loc	1 565 19                        # parallel-rne.mlir:565:19
	and r15, r20, r6
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	setlt.u r2, r8, r15
	.loc	1 568 19                        # parallel-rne.mlir:568:19
	bneq r2, zero, .LBB0_406
# %bb.405:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r20, 0
	j .LBB0_407
.LBB0_406:                              #   in Loop: Header=BB0_404 Depth=3
	or r21, r20, r7
.LBB0_407:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	and r12, r10, r6
	setlt.u r2, r8, r12
	.loc	1 568 19                        # parallel-rne.mlir:568:19
	bneq r2, zero, .LBB0_409
# %bb.408:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r10, 0
	j .LBB0_410
.LBB0_409:                              #   in Loop: Header=BB0_404 Depth=3
	or r9, r10, r7
.LBB0_410:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	and r28, r26, r6
	setlt.u r2, r8, r28
	.loc	1 568 19                        # parallel-rne.mlir:568:19
	bneq r2, zero, .LBB0_412
# %bb.411:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r26, 0
	j .LBB0_413
.LBB0_412:                              #   in Loop: Header=BB0_404 Depth=3
	or r19, r26, r7
.LBB0_413:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	and r2, r27, r6
	setlt.u r3, r8, r2
	.loc	1 568 19                        # parallel-rne.mlir:568:19
	bneq r3, zero, .LBB0_415
# %bb.414:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 574 19 is_stmt 1              # parallel-rne.mlir:574:19
	setlt.u r2, r18, r2
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	beq r2, zero, .LBB0_416
	j .LBB0_417
.LBB0_415:                              #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r7
	.loc	1 574 19 is_stmt 1              # parallel-rne.mlir:574:19
	setlt.u r2, r18, r2
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	bneq r2, zero, .LBB0_417
.LBB0_416:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r27, 16
	andi r2, r2, 1
	add.s r2, r27, r2
	add.s r2, r2, r17
	and r4, r2, r5
.LBB0_417:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	setlt.u r2, r18, r28
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	beq r2, zero, .LBB0_420
# %bb.418:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r18, r12
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	beq r2, zero, .LBB0_421
.LBB0_419:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r18, r15
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	bneq r2, zero, .LBB0_403
	j .LBB0_422
.LBB0_420:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r26, 16
	andi r2, r2, 1
	add.s r2, r26, r2
	add.s r2, r2, r17
	and r19, r2, r5
	setlt.u r2, r18, r12
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	bneq r2, zero, .LBB0_419
.LBB0_421:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r17
	and r9, r2, r5
	setlt.u r2, r18, r15
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	bneq r2, zero, .LBB0_403
.LBB0_422:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r20, 16
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r17
	and r21, r2, r5
	j .LBB0_403
.LBB0_423:                              #   in Loop: Header=BB0_7 Depth=1
	addli r25, zero, 128
	addli r28, zero, 6
	addli r13, zero, 13
	.loc	1 554 7 is_stmt 1               # parallel-rne.mlir:554:7
	mfence { sm }
	.loc	1 582 7                         # parallel-rne.mlir:582:7
	core_id r2
	bneq r2, r9, .LBB0_448
.LBB0_424:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 582 7                         # parallel-rne.mlir:582:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_426
.LBB0_425:                              # %middle.block
                                        #   in Loop: Header=BB0_426 Depth=2
	.loc	1 589 9 is_stmt 1               # parallel-rne.mlir:589:9
	load.d r[2:3], -344(r30)                # 8-byte Folded Reload
	load.d r[9:10], -296(r30)               # 8-byte Folded Reload
	setlt.ul r2, r[9:10], r[2:3]
	addli.d r[3:4], r[9:10], 1
	addli r9, zero, 7
	beq r2, zero, .LBB0_447
.LBB0_426:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_428 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[13:14], r[3:4], r9
	zext_int2long r[20:21], zero
	store.d r[3:4], -296(r30)               # 8-byte Folded Spill
	j .LBB0_428
.LBB0_427:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 590 11 is_stmt 1              # parallel-rne.mlir:590:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 605 13                        # parallel-rne.mlir:605:13
	add.s r3, r16, r11
	.loc	1 590 11                        # parallel-rne.mlir:590:11
	setneq.d r2, r[20:21], r[22:23]
	.loc	1 605 13                        # parallel-rne.mlir:605:13
	stores.w r25, 12(r3)
	stores.w r9, 8(r3)
	stores.w r19, 4(r3)
	stores.w r4, 0(r3)
	.loc	1 590 11                        # parallel-rne.mlir:590:11
	beq r2, zero, .LBB0_425
.LBB0_428:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_426 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	add.ul r[2:3], r[20:21], r[13:14]
	slli r11, r2, 2
	add.s r2, r1, r11
	loads.w r24, 12(r2)
	loads.w r27, 0(r2)
	loads.w r26, 4(r2)
	loads.w r10, 8(r2)
	.loc	1 593 19                        # parallel-rne.mlir:593:19
	and r15, r24, r6
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	setlt.u r2, r8, r15
	.loc	1 596 19                        # parallel-rne.mlir:596:19
	bneq r2, zero, .LBB0_430
# %bb.429:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r24, 0
	j .LBB0_431
.LBB0_430:                              #   in Loop: Header=BB0_428 Depth=3
	or r25, r24, r7
.LBB0_431:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	and r12, r10, r6
	setlt.u r2, r8, r12
	.loc	1 596 19                        # parallel-rne.mlir:596:19
	bneq r2, zero, .LBB0_433
# %bb.432:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r10, 0
	j .LBB0_434
.LBB0_433:                              #   in Loop: Header=BB0_428 Depth=3
	or r9, r10, r7
.LBB0_434:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	and r28, r26, r6
	setlt.u r2, r8, r28
	.loc	1 596 19                        # parallel-rne.mlir:596:19
	bneq r2, zero, .LBB0_436
# %bb.435:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r26, 0
	j .LBB0_437
.LBB0_436:                              #   in Loop: Header=BB0_428 Depth=3
	or r19, r26, r7
.LBB0_437:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	and r2, r27, r6
	setlt.u r3, r8, r2
	.loc	1 596 19                        # parallel-rne.mlir:596:19
	bneq r3, zero, .LBB0_439
# %bb.438:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 602 19 is_stmt 1              # parallel-rne.mlir:602:19
	setlt.u r2, r18, r2
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	beq r2, zero, .LBB0_440
	j .LBB0_441
.LBB0_439:                              #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r7
	.loc	1 602 19 is_stmt 1              # parallel-rne.mlir:602:19
	setlt.u r2, r18, r2
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	bneq r2, zero, .LBB0_441
.LBB0_440:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r27, 16
	andi r2, r2, 1
	add.s r2, r27, r2
	add.s r2, r2, r17
	and r4, r2, r5
.LBB0_441:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	setlt.u r2, r18, r28
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	beq r2, zero, .LBB0_444
# %bb.442:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r18, r12
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	beq r2, zero, .LBB0_445
.LBB0_443:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r18, r15
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	bneq r2, zero, .LBB0_427
	j .LBB0_446
.LBB0_444:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r26, 16
	andi r2, r2, 1
	add.s r2, r26, r2
	add.s r2, r2, r17
	and r19, r2, r5
	setlt.u r2, r18, r12
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	bneq r2, zero, .LBB0_443
.LBB0_445:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r17
	and r9, r2, r5
	setlt.u r2, r18, r15
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	bneq r2, zero, .LBB0_427
.LBB0_446:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r24, 16
	andi r2, r2, 1
	add.s r2, r24, r2
	add.s r2, r2, r17
	and r25, r2, r5
	j .LBB0_427
.LBB0_447:                              #   in Loop: Header=BB0_7 Depth=1
	addli r25, zero, 128
	addli r28, zero, 6
	addli r13, zero, 13
	.loc	1 582 7 is_stmt 1               # parallel-rne.mlir:582:7
	mfence { sm }
.LBB0_448:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 610 7                         # parallel-rne.mlir:610:7
	addli r1, zero, 255
	addli r2, zero, 3
	csr_set csr5, r1
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r1
	.loc	1 610 7                         # parallel-rne.mlir:610:7
	sync_core
	.loc	1 611 7                         # parallel-rne.mlir:611:7
	bneq r1, r2, .LBB0_451
# %bb.449:                              # %.critedge8.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 12
	xsignal r1, 0
	.loc	1 612 7                         # parallel-rne.mlir:612:7
	addli r1, zero, 17
.LBB0_450:                              # %.thread39
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
	j .LBB0_6
.LBB0_451:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 613 7 is_stmt 1               # parallel-rne.mlir:613:7
	addli r2, zero, 5
	beq r1, r2, .LBB0_5
# %bb.452:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 621 7                         # parallel-rne.mlir:621:7
	bneq r1, zero, .LBB0_6
# %bb.453:                              #   in Loop: Header=BB0_7 Depth=1
	load.d r[9:10], -424(r30)               # 8-byte Folded Reload
	loadli.w r1,  -428(r30)                 # 4-byte Folded Reload
	addli r3, zero, 19
	load.d r[11:12], 24(r30)
	sll.d r[3:4], r[9:10], r3
	load.d r[9:10], -288(r30)               # 8-byte Folded Reload
	sext_int2long r[1:2], r1
	xwait r13, 0
	add.ul r[3:4], r[11:12], r[3:4]
	load.d r[11:12], -416(r30)              # 8-byte Folded Reload
	min.sl r[9:10], r[1:2], r[9:10]
	addli.d r[9:10], r[9:10], 128
	add.ul r[3:4], r[3:4], r[11:12]
	addli r11, zero, 1
	addli r12, zero, 64
	max.sl r[9:10], r[9:10], r[1:2]
	sub.sl r[1:2], r[9:10], r[1:2]
	addli r10, zero, 5
	ori r9, r16, 64
	lock zero, r10
	.loc	1 617 13                        # parallel-rne.mlir:617:13
	min.sl r[1:2], r[1:2], r[22:23]
	.loc	1 621 7                         # parallel-rne.mlir:621:7
	dma_cfg r11, r11, zero, 0
	dma_cfg zero, r11, zero, 1
	dma_cfg r4, zero, zero, 2
	dma_cfg r3, r9, r12, 3
	addli r9, zero, 4096
	load.d r[13:14], -408(r30)              # 8-byte Folded Reload
	addli r3, r13, 31
	slli r4, r13, 1
	srli r3, r3, 5
	dma_cfg r12, r25, r3, 4
	andi r3, r4, 62
	addli r4, zero, 512
	dma_cfg r9, r4, r1, 5
	addli r1, zero, 14
	dma_cfg zero, zero, r3, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	j .LBB0_450
.LBB0_454:                              # %._crit_edge
	.loc	1 623 5                         # parallel-rne.mlir:623:5
	xsignal zero, 0
	bneq r19, zero, .LBB0_456
# %bb.455:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 623 5                         # parallel-rne.mlir:623:5
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
.LBB0_456:
	.loc	1 624 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:624:5
	addli sp, sp, 448
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
	.long	512                             # 0x200
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-6mq4_a4u" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
