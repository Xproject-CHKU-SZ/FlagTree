	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-a6stxnwb" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -480
	addli r1, zero, 1
.Ltmp0:
	.loc	1 32 5 prologue_end             # parallel-rne.mlir:32:5
	core_id r2
	addli r30, sp, 416
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	uni_sram_cfg r1, r1
	lui r3, 1048575
	lock zero, r2
	ew_cfg r1, zero, zero, 16
	ori r1, r3, 4095
	unlock r2
	addli r2, zero, 11
	csr_set csr3, r1
	addli r1, zero, 13
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	.loc	1 34 10 is_stmt 1               # parallel-rne.mlir:34:10
	load_param_i r3, 1
	loadli.w r4,  32(r30)
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -76(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -240(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -320(r30)
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	mul.s r1, r2, r1
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	mul.s r4, r1, r4
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	addli r2, r2, -1
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r3, -72(r30)
	storeli.w r3, -68(r30)
	storeli.w r3, -64(r30)
	storeli.w r3, -60(r30)
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	storeli.w r3, -48(r30)
	storeli.w r3, -44(r30)
	storeli.w r3, -40(r30)
	storeli.w r3, -36(r30)
	storeli.w r3, -32(r30)
	storeli.w r3, -28(r30)
	storeli.w r3, -24(r30)
	storeli.w r3, -20(r30)
	storeli.w r3, -16(r30)
	storeli.w r3, -12(r30)
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	storeli.w r3, -100(r30)
	storeli.w r3, -96(r30)
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	storeli.w r3, -84(r30)
	storeli.w r3, -80(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r3, -316(r30)
	storeli.w r3, -312(r30)
	storeli.w r3, -308(r30)
	storeli.w r3, -304(r30)
	storeli.w r3, -300(r30)
	storeli.w r3, -296(r30)
	storeli.w r3, -292(r30)
	storeli.w r3, -288(r30)
	storeli.w r3, -284(r30)
	storeli.w r3, -280(r30)
	storeli.w r3, -276(r30)
	storeli.w r3, -272(r30)
	storeli.w r3, -268(r30)
	storeli.w r3, -264(r30)
	storeli.w r3, -260(r30)
	storeli.w r3, -256(r30)
	storeli.w r3, -252(r30)
	storeli.w r3, -248(r30)
	storeli.w r3, -244(r30)
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	mul.s r1, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	fmac.s r2, r2, r6
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	min.s r2, r2, r4
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r4
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	ble.s r2, r1, .LBB0_295
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 43 11 is_stmt 1               # parallel-rne.mlir:43:11
	sext_int2long r[8:9], r1
	lui r1, 15
	addli r10, zero, 64
	addli r14, zero, 4
	addli r15, zero, 1
	lui r22, 522240
	lui r7, 1048560
	addli r11, zero, 0
	storeli.w zero, -324(r30)               # 4-byte Folded Spill
	store.d r[2:3], -408(r30)               # 8-byte Folded Spill
	ori r2, r1, 4095
	lui r1, 1048448
	store.d r[1:2], -416(r30)               # 8-byte Folded Spill
	lui r1, 127
	lui r2, 522239
	ori r1, r1, 4095
	ori r17, r2, 4095
	storeli.w r1, -340(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r5, r1, 4095
	lui r1, 7
	ori r6, r1, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	addli r1, zero, 11
	addli r15, zero, 1
	xsignal r1, 0
	.loc	1 363 7                         # parallel-rne.mlir:363:7
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[8:9], -368(r30)                # 8-byte Folded Reload
	.loc	1 51 5 is_stmt 1                # parallel-rne.mlir:51:5
	load.d r[1:2], -408(r30)                # 8-byte Folded Reload
	loadli.w r11,  -372(r30)                # 4-byte Folded Reload
	addli.d r[8:9], r[8:9], 1
	setlt.sl r1, r[8:9], r[1:2]
	beq r1, zero, .LBB0_295
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_31 Depth 3
                                        #     Child Loop BB0_74 Depth 2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_78 Depth 3
                                        #     Child Loop BB0_44 Depth 2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_48 Depth 3
                                        #     Child Loop BB0_105 Depth 2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_109 Depth 3
                                        #     Child Loop BB0_137 Depth 2
                                        #       Child Loop BB0_146 Depth 3
                                        #       Child Loop BB0_141 Depth 3
                                        #     Child Loop BB0_168 Depth 2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_172 Depth 3
                                        #     Child Loop BB0_202 Depth 2
                                        #       Child Loop BB0_211 Depth 3
                                        #       Child Loop BB0_206 Depth 3
                                        #     Child Loop BB0_263 Depth 2
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_267 Depth 3
                                        #     Child Loop BB0_233 Depth 2
                                        #       Child Loop BB0_242 Depth 3
                                        #       Child Loop BB0_237 Depth 3
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	bneq r4, r14, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  32(r30)
	loadli.w r2,  28(r30)
	store.d r[8:9], -368(r30)               # 8-byte Folded Spill
	addli r4, zero, 3
	addli r23, zero, 0
	addli r18, zero, 4
	addli r26, zero, 0
	mod.s r4, r11, r4
	addli r11, r11, 1
	div.s r1, r8, r1
	addli r9, zero, 8
	storeli.w r11, -372(r30)                # 4-byte Folded Spill
	slli r11, r4, 16
	lui r4, 48
	div.s r1, r1, r2
	add.s r16, r11, r4
	div.s r2, r1, r10
	slli r3, r2, 3
	slli r2, r2, 6
	sub.s r8, r14, r3
	sub.s r2, r1, r2
	min.s r8, r8, r9
	mod.s r1, r1, r8
	div.s r2, r2, r8
	.loc	1 98 15 is_stmt 1               # parallel-rne.mlir:98:15
	loadli.w r8,  -320(r30)
	add.s r1, r3, r1
	slli r3, r2, 7
	storeli.w r3, -400(r30)                 # 4-byte Folded Spill
	slli r4, r1, 7
	zext_int2long r[9:10], r1
	zext_int2long r[2:3], r2
	addli r1, zero, 7
	sll.d r[1:2], r[2:3], r1
	addli r3, zero, 17
	storeli.w r4, -396(r30)                 # 4-byte Folded Spill
	store.d r[9:10], -392(r30)              # 8-byte Folded Spill
	sll.d r[24:25], r[9:10], r3
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	sll.d r[3:4], r[1:2], r15
	load.d r[1:2], -416(r30)                # 8-byte Folded Reload
	store.d r[3:4], -384(r30)               # 8-byte Folded Spill
	and.d r[20:21], r[24:25], r[1:2]
	load.d r[1:2], 8(r30)
	add.ul r[1:2], r[1:2], r[3:4]
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r4
	store.d r[1:2], -352(r30)               # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r4, 96
	addli r12, zero, 128
	addli r8, zero, 5
	ori r4, r4, 64
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	add.s r1, r1, r4
	addli r4, zero, 4
	lock zero, r4
	addli r4, zero, 2
	dma_cfg r19, r19, zero, 0
	dma_cfg zero, r15, zero, 2
	dma_cfg r1, r14, r10, 3
	addli r1, zero, 2048
	addli r15, zero, 256
	addli r14, zero, 4
	dma_cfg r12, r10, r4, 4
	dma_cfg r15, r1, r13, 5
	addli r1, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 7
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
	addli r1, zero, 19
	dma_cfg zero, zero, r27, 10
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
	dma_cfg r2, zero, r10, 3
	dma_cfg r12, zero, r4, 4
	dma_cfg r15, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	xsignal r4, 0
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r4
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r1,  -240(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r2,  -76(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r1, r1, 1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r2, r2, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r1, -240(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r2, -76(r30)
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r26, r26, 1
	addli r1, zero, 16
	beq r26, r1, .LBB0_34
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r18, zero, 4
	.loc	1 123 15 is_stmt 1              # parallel-rne.mlir:123:15
	addli r23, r23, 1
	addli r8, r3, 0
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_31 Depth 3
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	zext_int2long r[9:10], r26
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	addli r1, zero, 6
	addli.d r[27:28], r[20:21], 0
	sll.d r[1:2], r[9:10], r1
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	add.ul r[14:15], r[1:2], r[24:25]
	loadli.w r1,  -340(r30)                 # 4-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	setlt.ul r1, r[1:2], r[14:15]
	.loc	1 88 15                         # parallel-rne.mlir:88:15
	bneq r1, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[27:28], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	loadli.w r3,  -324(r30)                 # 4-byte Folded Reload
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	addli r1, zero, 24
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	addli r2, zero, 19
	addli r12, zero, 384
	mod.s r2, r8, r2
	zext_int2long r[12:13], r12
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	mod.s r1, r3, r1
	addli r3, r3, 1
	store.d r[12:13], -336(r30)             # 8-byte Folded Spill
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r12, zero, 2
	storeli.w r3, -324(r30)                 # 4-byte Folded Spill
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	addli r3, r8, 1
	storeli.w r3, -320(r30)
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r13, r1, 15
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	slli r1, r2, 15
	lui r2, 96
	add.s r2, r1, r2
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	beq r4, r12, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r19, zero, 1
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	bneq r4, r19, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r4, zero, 1024
	sub.sl r[9:10], r[14:15], r[27:28]
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	sll.d r[14:15], r[14:15], r19
	addli r27, zero, 18
	zext_int2long r[12:13], r4
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[9:10], r[9:10], r[12:13]
	load.d r[12:13], -336(r30)              # 8-byte Folded Reload
	min.sl r[12:13], r[9:10], r[12:13]
	sub.sl r[9:10], r[12:13], r[9:10]
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	load.d r[12:13], 0(r30)
	add.ul r[14:15], r[12:13], r[14:15]
	addli r13, r9, 128
	addli r9, zero, 3
	addli r10, zero, 64
	xwait r9, 0
	blt.s r27, r8, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r12, zero, 5
	addli r8, zero, 2
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r4, zero, 6
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 7
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
	dma_cfg zero, zero, r27, 10
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
	dma_cfg r2, zero, r10, 3
	dma_cfg r4, zero, r8, 4
	addli r8, zero, 256
	dma_cfg r8, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r1, zero, 2
	.loc	1 103 9 is_stmt 1               # parallel-rne.mlir:103:9
	addli r8, zero, 5
	addli r10, zero, 64
	addli r14, zero, 4
	xwait r1, 0
	xwait r8, 0
	lock zero, zero
	ds_cfg r1, zero, 0
	addli r1, zero, 128
	ds_cfg r10, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg r1, zero, 13
	addli r1, zero, 3
	shuffle_batch r13, r2, r10, 1
	unlock zero
	xsignal r1, 0
	xsignal r14, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r1,  -240(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r4,  -76(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r2, zero, 40
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r8, zero, 18
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r14
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r2, r1, r2
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	mod.s r12, r4, r8
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r1, r1, 1
	storeli.w r1, -240(r30)
	slli r8, r2, 15
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	slli r1, r12, 15
	lui r2, 248
	addli r12, r4, 1
	storeli.w r12, -76(r30)
	add.s r2, r1, r2
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r12, zero, 7
	beq r14, r12, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r12, zero, 6
	bneq r14, r12, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r15, zero, 17
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	load.d r[12:13], -352(r30)              # 8-byte Folded Reload
	addli r14, zero, 4
	sll.d r[8:9], r[9:10], r15
	addli r10, zero, 64
	add.ul r[12:13], r[12:13], r[8:9]
	addli r8, zero, 7
	addli r9, zero, 3
	xwait r8, 0
	blt.s r15, r4, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r19, zero, 5
	addli r18, zero, 1
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r4, zero, 2
	lock zero, r19
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 6
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r8, 10
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
	addli r4, zero, 18
	dma_cfg zero, zero, r15, 10
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
	addli r4, zero, 128
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r10, 3
	dma_cfg r4, zero, r14, 4
	addli r4, zero, 512
	dma_cfg r4, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r19
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r4, 248
	addli r15, zero, 1
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	lock zero, r14
	addli r18, zero, 512
	ori r4, r4, 64
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r13, zero, 2
	add.s r1, r1, r4
	addli r4, zero, 17
	dma_cfg r1, r12, r10, 3
	addli r13, zero, 128
	addli r1, zero, 2048
	addli r12, zero, 5
	dma_cfg r13, r10, r14, 4
	dma_cfg r18, r1, r10, 5
	addli r1, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 6
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
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
	addli r1, zero, 18
	dma_cfg zero, zero, r4, 10
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r4
	.loc	1 119 9                         # parallel-rne.mlir:119:9
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
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r10, 3
	dma_cfg r13, zero, r14, 4
	dma_cfg r18, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r9, 0
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	addli r1, zero, 6
	addli r10, zero, 64
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r4
	addli r14, zero, 4
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	xwait r1, 0
	addli r1, zero, 9
	xwait r1, 0
	addli r1, zero, 2
	lock zero, zero
	ds_cfg r1, zero, 0
	addli r1, zero, 128
	ds_cfg r1, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg r1, zero, 13
	addli r1, zero, 7
	shuffle_coa r8, r2, r10, 2
	unlock zero
	xsignal r1, 0
	addli r1, zero, 8
	xsignal r1, 0
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r4
	addli r14, zero, 4
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	bneq r4, r14, .LBB0_33
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	addli r1, zero, 8
	xwait r14, 0
	addli r10, zero, 64
	addli r2, zero, 1
	addli r4, zero, 0
	addli r12, zero, 128
	xwait r1, 0
	addli r1, zero, 1
	beq r23, zero, .LBB0_31
.LBB0_30:                               # %.preheader30
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r9, r4, 14
	slli r4, r4, 8
	lock zero, r1
	mm_cfg r10, r10, r12, 0
	or r9, r9, r8
	or r4, r4, r16
	mm_cfg r14, r14, r1, 2
	mm_acc r4, r13, r9, 8
	andi r9, r2, 1
	addli r4, zero, 1
	addli r2, zero, 0
	unlock r1
	bneq r9, zero, .LBB0_30
	j .LBB0_32
.LBB0_31:                               # %.preheader29
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r9, r4, 14
	slli r4, r4, 8
	lock zero, r1
	mm_cfg r10, r10, r12, 0
	or r9, r9, r8
	or r4, r4, r16
	mm_cfg r14, r14, r1, 2
	mm r4, r13, r9, 8
	andi r9, r2, 1
	addli r4, zero, 1
	addli r2, zero, 0
	unlock r1
	bneq r9, zero, .LBB0_31
.LBB0_32:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r1, zero, 5
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r26, r26, 1
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r4
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r1, zero, 16
	bneq r26, r1, .LBB0_14
	j .LBB0_35
.LBB0_33:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r26, r26, 1
	addli r10, zero, 64
	addli r1, zero, 16
	bneq r26, r1, .LBB0_14
	j .LBB0_36
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 126 7                         # parallel-rne.mlir:126:7
	bneq r4, r14, .LBB0_36
.LBB0_35:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	storeli.w zero, -356(r30)               # 4-byte Folded Spill
	xsignal r1, 0
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	j .LBB0_39
.LBB0_36:                               # %.thread44
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 3
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	bneq r4, r1, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 132 7 is_stmt 1               # parallel-rne.mlir:132:7
	storeli.w r1, -356(r30)                 # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -356(r30)               # 4-byte Folded Spill
.LBB0_39:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	addli r1, zero, 255
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	xfence
	addli r2, zero, 7
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	mfence { lm, sm, gm }
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	csr_set csr5, r1
	addli r1, zero, 128
	sync_core
	zext_int2long r[23:24], r1
	addli r1, zero, 127
	zext_int2long r[25:26], r1
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	beq r4, zero, .LBB0_72
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	addli r1, zero, 2
	beq r4, r1, .LBB0_103
.LBB0_41:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 1
	bneq r4, r1, .LBB0_134
# %bb.42:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r1
	j .LBB0_44
.LBB0_43:                               # %middle.block105
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 31
	load.d r[3:4], -352(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 172 9 is_stmt 1               # parallel-rne.mlir:172:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	addli.d r[3:4], r[2:3], 0
	addli r2, zero, 7
	beq r1, zero, .LBB0_133
.LBB0_44:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_48 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -352(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r2
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	bneq r11, r16, .LBB0_51
# %bb.45:                               # %scalar.ph99.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_48
.LBB0_46:                               # %scalar.ph99
                                        #   in Loop: Header=BB0_48 Depth=3
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r6
	and r4, r4, r7
.LBB0_47:                               # %scalar.ph99
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	setlt.ul r10, r[8:9], r[25:26]
	.loc	1 188 13 is_stmt 1              # parallel-rne.mlir:188:13
	add.s r1, r11, r1
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r4, 0(r1)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	beq r10, zero, .LBB0_43
.LBB0_48:                               # %scalar.ph99
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[12:13], r[8:9], r[2:3]
	slli r1, r12, 2
	add.s r4, r16, r1
	loads.w r10, 0(r4)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r12, r10, r5
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r4, r22, r12
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r4, zero, .LBB0_50
# %bb.49:                               # %scalar.ph99
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r12, r17, r12
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r12, zero, .LBB0_47
	j .LBB0_46
.LBB0_50:                               #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r10, r4
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r12, r17, r12
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r12, zero, .LBB0_47
	j .LBB0_46
.LBB0_51:                               # %vector.body101.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_53
.LBB0_52:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	add.s r8, r11, r8
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	seteq.d r4, r[13:14], r[23:24]
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r15, 12(r8)
	stores.w r1, 8(r8)
	stores.w r12, 4(r8)
	stores.w r19, 0(r8)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	bneq r4, zero, .LBB0_43
.LBB0_53:                               # %vector.body101
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[8:9], r[13:14], r[2:3]
	slli r8, r8, 2
	add.s r19, r16, r8
	loads.w r28, 12(r19)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r27, r28, r5
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r1, r22, r27
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r1, zero, .LBB0_55
# %bb.54:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r28, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_53 Depth=3
	lui r1, 1024
	or r15, r28, r1
.LBB0_56:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r10, 8(r19)
	and r9, r10, r5
	setlt.u r1, r22, r9
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r1, zero, .LBB0_58
# %bb.57:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r10, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_53 Depth=3
	lui r1, 1024
	or r1, r10, r1
.LBB0_59:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r4, 4(r19)
	and r20, r4, r5
	setlt.u r12, r22, r20
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r12, zero, .LBB0_61
# %bb.60:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_53 Depth=3
	lui r12, 1024
	or r12, r4, r12
.LBB0_62:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r21, 0(r19)
	and r18, r21, r5
	setlt.u r19, r22, r18
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r19, zero, .LBB0_64
# %bb.63:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r18, r17, r18
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r18, zero, .LBB0_65
	j .LBB0_66
.LBB0_64:                               #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r21, r19
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r18, r17, r18
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r18, zero, .LBB0_66
.LBB0_65:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r21, 16
	andi r18, r18, 1
	add.s r18, r21, r18
	add.s r18, r18, r6
	and r19, r18, r7
.LBB0_66:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	setlt.u r18, r17, r20
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r18, zero, .LBB0_69
# %bb.67:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r7
	setlt.u r4, r17, r9
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r4, zero, .LBB0_70
.LBB0_68:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r17, r27
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r4, zero, .LBB0_52
	j .LBB0_71
.LBB0_69:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r17, r9
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r4, zero, .LBB0_68
.LBB0_70:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r6
	and r1, r1, r7
	setlt.u r4, r17, r27
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r4, zero, .LBB0_52
.LBB0_71:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r28, 16
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r6
	and r15, r4, r7
	j .LBB0_52
.LBB0_72:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 137 7 is_stmt 1               # parallel-rne.mlir:137:7
	xfence
	zext_int2long r[3:4], zero
	mfence { lm, sm, gm }
	j .LBB0_74
.LBB0_73:                               # %middle.block123
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[3:4], -352(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 144 9 is_stmt 1               # parallel-rne.mlir:144:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	addli.d r[3:4], r[2:3], 0
	addli r2, zero, 7
	beq r1, zero, .LBB0_102
.LBB0_74:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_78 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -352(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r2
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	bneq r11, r16, .LBB0_81
# %bb.75:                               # %scalar.ph117.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_78
.LBB0_76:                               # %scalar.ph117
                                        #   in Loop: Header=BB0_78 Depth=3
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r6
	and r4, r4, r7
.LBB0_77:                               # %scalar.ph117
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	setlt.ul r10, r[8:9], r[25:26]
	.loc	1 160 13 is_stmt 1              # parallel-rne.mlir:160:13
	add.s r1, r11, r1
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	stores.w r4, 0(r1)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	beq r10, zero, .LBB0_73
.LBB0_78:                               # %scalar.ph117
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[12:13], r[8:9], r[2:3]
	slli r1, r12, 2
	add.s r4, r16, r1
	loads.w r10, 0(r4)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r12, r10, r5
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r4, r22, r12
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r4, zero, .LBB0_80
# %bb.79:                               # %scalar.ph117
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r12, r17, r12
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r12, zero, .LBB0_77
	j .LBB0_76
.LBB0_80:                               #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r10, r4
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r12, r17, r12
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r12, zero, .LBB0_77
	j .LBB0_76
.LBB0_81:                               # %vector.body119.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_83
.LBB0_82:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	add.s r8, r11, r8
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	seteq.d r1, r[13:14], r[23:24]
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	stores.w r28, 12(r8)
	stores.w r10, 8(r8)
	stores.w r4, 4(r8)
	stores.w r19, 0(r8)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	bneq r1, zero, .LBB0_73
.LBB0_83:                               # %vector.body119
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[8:9], r[13:14], r[2:3]
	slli r8, r8, 2
	add.s r19, r16, r8
	loads.w r15, 12(r19)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r27, r15, r5
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r1, r22, r27
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r1, zero, .LBB0_85
# %bb.84:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r15, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_83 Depth=3
	lui r1, 1024
	or r28, r15, r1
.LBB0_86:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r1, 8(r19)
	and r9, r1, r5
	setlt.u r4, r22, r9
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r4, zero, .LBB0_88
# %bb.87:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r1, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_83 Depth=3
	lui r4, 1024
	or r10, r1, r4
.LBB0_89:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r12, 4(r19)
	and r20, r12, r5
	setlt.u r4, r22, r20
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r4, zero, .LBB0_91
# %bb.90:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r12, 0
	j .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_83 Depth=3
	lui r4, 1024
	or r4, r12, r4
.LBB0_92:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r21, 0(r19)
	and r18, r21, r5
	setlt.u r19, r22, r18
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r19, zero, .LBB0_94
# %bb.93:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r18, r17, r18
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r18, zero, .LBB0_95
	j .LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r21, r19
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r18, r17, r18
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r18, zero, .LBB0_96
.LBB0_95:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r21, 16
	andi r18, r18, 1
	add.s r18, r21, r18
	add.s r18, r18, r6
	and r19, r18, r7
.LBB0_96:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	setlt.u r18, r17, r20
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r18, zero, .LBB0_99
# %bb.97:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r6
	and r4, r4, r7
	setlt.u r9, r17, r9
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r9, zero, .LBB0_100
.LBB0_98:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r27
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r1, zero, .LBB0_82
	j .LBB0_101
.LBB0_99:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r17, r9
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r9, zero, .LBB0_98
.LBB0_100:                              # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r1, 16
	andi r9, r9, 1
	add.s r1, r1, r9
	add.s r1, r1, r6
	and r10, r1, r7
	setlt.u r1, r17, r27
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r1, zero, .LBB0_82
.LBB0_101:                              # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r6
	and r28, r1, r7
	j .LBB0_82
.LBB0_102:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r4
	addli r10, zero, 64
	addli r14, zero, 4
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	mfence { sm }
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	addli r1, zero, 2
	bneq r4, r1, .LBB0_41
.LBB0_103:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 193 7 is_stmt 1               # parallel-rne.mlir:193:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r1
	j .LBB0_105
.LBB0_104:                              # %middle.block114
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[3:4], -352(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 200 9 is_stmt 1               # parallel-rne.mlir:200:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	addli.d r[3:4], r[2:3], 0
	addli r2, zero, 7
	beq r1, zero, .LBB0_133
.LBB0_105:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_109 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -352(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r2
	.loc	1 201 11 is_stmt 1              # parallel-rne.mlir:201:11
	bneq r11, r16, .LBB0_112
# %bb.106:                              # %scalar.ph108.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_109
.LBB0_107:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_109 Depth=3
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r6
	and r4, r4, r7
.LBB0_108:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	setlt.ul r10, r[8:9], r[25:26]
	.loc	1 216 13 is_stmt 1              # parallel-rne.mlir:216:13
	add.s r1, r11, r1
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 216 13                        # parallel-rne.mlir:216:13
	stores.w r4, 0(r1)
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	beq r10, zero, .LBB0_104
.LBB0_109:                              # %scalar.ph108
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	add.ul r[12:13], r[8:9], r[2:3]
	slli r1, r12, 2
	add.s r4, r16, r1
	loads.w r10, 0(r4)
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	and r12, r10, r5
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	setlt.u r4, r22, r12
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r4, zero, .LBB0_111
# %bb.110:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 213 19 is_stmt 1              # parallel-rne.mlir:213:19
	setlt.u r12, r17, r12
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r12, zero, .LBB0_108
	j .LBB0_107
.LBB0_111:                              #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r10, r4
	.loc	1 213 19 is_stmt 1              # parallel-rne.mlir:213:19
	setlt.u r12, r17, r12
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r12, zero, .LBB0_108
	j .LBB0_107
.LBB0_112:                              # %vector.body110.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_114
.LBB0_113:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 201 11 is_stmt 1              # parallel-rne.mlir:201:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 216 13                        # parallel-rne.mlir:216:13
	add.s r8, r11, r8
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	seteq.d r4, r[13:14], r[23:24]
	.loc	1 216 13                        # parallel-rne.mlir:216:13
	stores.w r15, 12(r8)
	stores.w r1, 8(r8)
	stores.w r12, 4(r8)
	stores.w r19, 0(r8)
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	bneq r4, zero, .LBB0_104
.LBB0_114:                              # %vector.body110
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	add.ul r[8:9], r[13:14], r[2:3]
	slli r8, r8, 2
	add.s r19, r16, r8
	loads.w r28, 12(r19)
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	and r27, r28, r5
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	setlt.u r1, r22, r27
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r1, zero, .LBB0_116
# %bb.115:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r28, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_114 Depth=3
	lui r1, 1024
	or r15, r28, r1
.LBB0_117:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r10, 8(r19)
	and r9, r10, r5
	setlt.u r1, r22, r9
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r1, zero, .LBB0_119
# %bb.118:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r10, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_114 Depth=3
	lui r1, 1024
	or r1, r10, r1
.LBB0_120:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r4, 4(r19)
	and r20, r4, r5
	setlt.u r12, r22, r20
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r12, zero, .LBB0_122
# %bb.121:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_114 Depth=3
	lui r12, 1024
	or r12, r4, r12
.LBB0_123:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r21, 0(r19)
	and r18, r21, r5
	setlt.u r19, r22, r18
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r19, zero, .LBB0_125
# %bb.124:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 213 19 is_stmt 1              # parallel-rne.mlir:213:19
	setlt.u r18, r17, r18
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	beq r18, zero, .LBB0_126
	j .LBB0_127
.LBB0_125:                              #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r21, r19
	.loc	1 213 19 is_stmt 1              # parallel-rne.mlir:213:19
	setlt.u r18, r17, r18
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r18, zero, .LBB0_127
.LBB0_126:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r21, 16
	andi r18, r18, 1
	add.s r18, r21, r18
	add.s r18, r18, r6
	and r19, r18, r7
.LBB0_127:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	setlt.u r18, r17, r20
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r18, zero, .LBB0_130
# %bb.128:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r7
	setlt.u r4, r17, r9
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	beq r4, zero, .LBB0_131
.LBB0_129:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r17, r27
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r4, zero, .LBB0_113
	j .LBB0_132
.LBB0_130:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r17, r9
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r4, zero, .LBB0_129
.LBB0_131:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r6
	and r1, r1, r7
	setlt.u r4, r17, r27
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r4, zero, .LBB0_113
.LBB0_132:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r28, 16
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r6
	and r15, r4, r7
	j .LBB0_113
.LBB0_133:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r4
	addli r10, zero, 64
	addli r14, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_134:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 221 7 is_stmt 1               # parallel-rne.mlir:221:7
	loadli.w r1,  -356(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_165
# %bb.135:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 48
	.loc	1 221 7                         # parallel-rne.mlir:221:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r1
	j .LBB0_137
.LBB0_136:                              # %middle.block96
                                        #   in Loop: Header=BB0_137 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 63
	load.d r[3:4], -352(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 228 9 is_stmt 1               # parallel-rne.mlir:228:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	addli.d r[3:4], r[2:3], 0
	addli r2, zero, 7
	beq r1, zero, .LBB0_196
.LBB0_137:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_146 Depth 3
                                        #       Child Loop BB0_141 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -352(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r2
	.loc	1 229 11 is_stmt 1              # parallel-rne.mlir:229:11
	bneq r11, r16, .LBB0_144
# %bb.138:                              # %scalar.ph90.preheader
                                        #   in Loop: Header=BB0_137 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_141
.LBB0_139:                              # %scalar.ph90
                                        #   in Loop: Header=BB0_141 Depth=3
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r6
	and r4, r4, r7
.LBB0_140:                              # %scalar.ph90
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	setlt.ul r10, r[8:9], r[25:26]
	.loc	1 244 13 is_stmt 1              # parallel-rne.mlir:244:13
	add.s r1, r11, r1
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 244 13                        # parallel-rne.mlir:244:13
	stores.w r4, 0(r1)
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	beq r10, zero, .LBB0_136
.LBB0_141:                              # %scalar.ph90
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_137 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	add.ul r[12:13], r[8:9], r[2:3]
	slli r1, r12, 2
	add.s r4, r16, r1
	loads.w r10, 0(r4)
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	and r12, r10, r5
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	setlt.u r4, r22, r12
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r4, zero, .LBB0_143
# %bb.142:                              # %scalar.ph90
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 241 19 is_stmt 1              # parallel-rne.mlir:241:19
	setlt.u r12, r17, r12
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r12, zero, .LBB0_140
	j .LBB0_139
.LBB0_143:                              #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r10, r4
	.loc	1 241 19 is_stmt 1              # parallel-rne.mlir:241:19
	setlt.u r12, r17, r12
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r12, zero, .LBB0_140
	j .LBB0_139
.LBB0_144:                              # %vector.body92.preheader
                                        #   in Loop: Header=BB0_137 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_146
.LBB0_145:                              # %vector.body92
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 229 11 is_stmt 1              # parallel-rne.mlir:229:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 244 13                        # parallel-rne.mlir:244:13
	add.s r8, r11, r8
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	seteq.d r4, r[13:14], r[23:24]
	.loc	1 244 13                        # parallel-rne.mlir:244:13
	stores.w r15, 12(r8)
	stores.w r1, 8(r8)
	stores.w r12, 4(r8)
	stores.w r19, 0(r8)
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	bneq r4, zero, .LBB0_136
.LBB0_146:                              # %vector.body92
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_137 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	add.ul r[8:9], r[13:14], r[2:3]
	slli r8, r8, 2
	add.s r19, r16, r8
	loads.w r28, 12(r19)
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	and r27, r28, r5
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	setlt.u r1, r22, r27
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r1, zero, .LBB0_148
# %bb.147:                              # %vector.body92
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r28, 0
	j .LBB0_149
.LBB0_148:                              #   in Loop: Header=BB0_146 Depth=3
	lui r1, 1024
	or r15, r28, r1
.LBB0_149:                              # %vector.body92
                                        #   in Loop: Header=BB0_146 Depth=3
	loads.w r10, 8(r19)
	and r9, r10, r5
	setlt.u r1, r22, r9
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r1, zero, .LBB0_151
# %bb.150:                              # %vector.body92
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r10, 0
	j .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_146 Depth=3
	lui r1, 1024
	or r1, r10, r1
.LBB0_152:                              # %vector.body92
                                        #   in Loop: Header=BB0_146 Depth=3
	loads.w r4, 4(r19)
	and r20, r4, r5
	setlt.u r12, r22, r20
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r12, zero, .LBB0_154
# %bb.153:                              # %vector.body92
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_155
.LBB0_154:                              #   in Loop: Header=BB0_146 Depth=3
	lui r12, 1024
	or r12, r4, r12
.LBB0_155:                              # %vector.body92
                                        #   in Loop: Header=BB0_146 Depth=3
	loads.w r21, 0(r19)
	and r18, r21, r5
	setlt.u r19, r22, r18
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r19, zero, .LBB0_164
# %bb.156:                              # %vector.body92
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 241 19 is_stmt 1              # parallel-rne.mlir:241:19
	setlt.u r18, r17, r18
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r18, zero, .LBB0_158
.LBB0_157:                              # %vector.body92
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r21, 16
	andi r18, r18, 1
	add.s r18, r21, r18
	add.s r18, r18, r6
	and r19, r18, r7
.LBB0_158:                              # %vector.body92
                                        #   in Loop: Header=BB0_146 Depth=3
	setlt.u r18, r17, r20
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r18, zero, .LBB0_161
# %bb.159:                              # %vector.body92
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r7
	setlt.u r4, r17, r9
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	beq r4, zero, .LBB0_162
.LBB0_160:                              # %vector.body92
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r17, r27
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r4, zero, .LBB0_145
	j .LBB0_163
.LBB0_161:                              # %vector.body92
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r17, r9
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r4, zero, .LBB0_160
.LBB0_162:                              # %vector.body92
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r6
	and r1, r1, r7
	setlt.u r4, r17, r27
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r4, zero, .LBB0_145
.LBB0_163:                              # %vector.body92
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r28, 16
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r6
	and r15, r4, r7
	j .LBB0_145
.LBB0_164:                              #   in Loop: Header=BB0_146 Depth=3
	lui r19, 1024
	or r19, r21, r19
	.loc	1 241 19 is_stmt 1              # parallel-rne.mlir:241:19
	setlt.u r18, r17, r18
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	beq r18, zero, .LBB0_157
	j .LBB0_158
.LBB0_165:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 249 7                         # parallel-rne.mlir:249:7
	bneq r4, r14, .LBB0_197
.LBB0_166:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[3:4], r10
	mfence { lm, sm, gm }
	j .LBB0_168
.LBB0_167:                              # %middle.block87
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 79
	load.d r[3:4], -352(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 256 9 is_stmt 1               # parallel-rne.mlir:256:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	addli.d r[3:4], r[2:3], 0
	addli r2, zero, 7
	beq r1, zero, .LBB0_230
.LBB0_168:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_172 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -352(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r2
	.loc	1 257 11 is_stmt 1              # parallel-rne.mlir:257:11
	bneq r11, r16, .LBB0_175
# %bb.169:                              # %scalar.ph81.preheader
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_172
.LBB0_170:                              # %scalar.ph81
                                        #   in Loop: Header=BB0_172 Depth=3
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r6
	and r4, r4, r7
.LBB0_171:                              # %scalar.ph81
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	setlt.ul r10, r[8:9], r[25:26]
	.loc	1 272 13 is_stmt 1              # parallel-rne.mlir:272:13
	add.s r1, r11, r1
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 272 13                        # parallel-rne.mlir:272:13
	stores.w r4, 0(r1)
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	beq r10, zero, .LBB0_167
.LBB0_172:                              # %scalar.ph81
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	add.ul r[12:13], r[8:9], r[2:3]
	slli r1, r12, 2
	add.s r4, r16, r1
	loads.w r10, 0(r4)
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	and r12, r10, r5
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	setlt.u r4, r22, r12
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r4, zero, .LBB0_174
# %bb.173:                              # %scalar.ph81
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 269 19 is_stmt 1              # parallel-rne.mlir:269:19
	setlt.u r12, r17, r12
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r12, zero, .LBB0_171
	j .LBB0_170
.LBB0_174:                              #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r10, r4
	.loc	1 269 19 is_stmt 1              # parallel-rne.mlir:269:19
	setlt.u r12, r17, r12
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r12, zero, .LBB0_171
	j .LBB0_170
.LBB0_175:                              # %vector.body83.preheader
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_177
.LBB0_176:                              # %vector.body83
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 257 11 is_stmt 1              # parallel-rne.mlir:257:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 272 13                        # parallel-rne.mlir:272:13
	add.s r8, r11, r8
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	seteq.d r4, r[13:14], r[23:24]
	.loc	1 272 13                        # parallel-rne.mlir:272:13
	stores.w r15, 12(r8)
	stores.w r1, 8(r8)
	stores.w r12, 4(r8)
	stores.w r19, 0(r8)
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	bneq r4, zero, .LBB0_167
.LBB0_177:                              # %vector.body83
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	add.ul r[8:9], r[13:14], r[2:3]
	slli r8, r8, 2
	add.s r19, r16, r8
	loads.w r28, 12(r19)
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	and r27, r28, r5
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	setlt.u r1, r22, r27
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r1, zero, .LBB0_179
# %bb.178:                              # %vector.body83
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r28, 0
	j .LBB0_180
.LBB0_179:                              #   in Loop: Header=BB0_177 Depth=3
	lui r1, 1024
	or r15, r28, r1
.LBB0_180:                              # %vector.body83
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r10, 8(r19)
	and r9, r10, r5
	setlt.u r1, r22, r9
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r1, zero, .LBB0_182
# %bb.181:                              # %vector.body83
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r10, 0
	j .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_177 Depth=3
	lui r1, 1024
	or r1, r10, r1
.LBB0_183:                              # %vector.body83
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r4, 4(r19)
	and r20, r4, r5
	setlt.u r12, r22, r20
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r12, zero, .LBB0_185
# %bb.184:                              # %vector.body83
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_177 Depth=3
	lui r12, 1024
	or r12, r4, r12
.LBB0_186:                              # %vector.body83
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r21, 0(r19)
	and r18, r21, r5
	setlt.u r19, r22, r18
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r19, zero, .LBB0_195
# %bb.187:                              # %vector.body83
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 269 19 is_stmt 1              # parallel-rne.mlir:269:19
	setlt.u r18, r17, r18
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r18, zero, .LBB0_189
.LBB0_188:                              # %vector.body83
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r21, 16
	andi r18, r18, 1
	add.s r18, r21, r18
	add.s r18, r18, r6
	and r19, r18, r7
.LBB0_189:                              # %vector.body83
                                        #   in Loop: Header=BB0_177 Depth=3
	setlt.u r18, r17, r20
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r18, zero, .LBB0_192
# %bb.190:                              # %vector.body83
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r7
	setlt.u r4, r17, r9
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	beq r4, zero, .LBB0_193
.LBB0_191:                              # %vector.body83
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r17, r27
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r4, zero, .LBB0_176
	j .LBB0_194
.LBB0_192:                              # %vector.body83
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r17, r9
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r4, zero, .LBB0_191
.LBB0_193:                              # %vector.body83
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r6
	and r1, r1, r7
	setlt.u r4, r17, r27
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r4, zero, .LBB0_176
.LBB0_194:                              # %vector.body83
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r28, 16
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r6
	and r15, r4, r7
	j .LBB0_176
.LBB0_195:                              #   in Loop: Header=BB0_177 Depth=3
	lui r19, 1024
	or r19, r21, r19
	.loc	1 269 19 is_stmt 1              # parallel-rne.mlir:269:19
	setlt.u r18, r17, r18
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	beq r18, zero, .LBB0_188
	j .LBB0_189
.LBB0_196:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r4
	addli r10, zero, 64
	addli r14, zero, 4
	.loc	1 221 7                         # parallel-rne.mlir:221:7
	mfence { sm }
	.loc	1 249 7                         # parallel-rne.mlir:249:7
	beq r4, r14, .LBB0_166
.LBB0_197:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 277 7                         # parallel-rne.mlir:277:7
	beq r4, r2, .LBB0_231
.LBB0_198:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 6
	beq r4, r1, .LBB0_261
# %bb.199:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 5
	bneq r4, r1, .LBB0_292
# %bb.200:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 80
	.loc	1 277 7                         # parallel-rne.mlir:277:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r1
	j .LBB0_202
.LBB0_201:                              # %middle.block
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 95
	load.d r[3:4], -352(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 284 9 is_stmt 1               # parallel-rne.mlir:284:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	addli.d r[3:4], r[2:3], 0
	addli r2, zero, 7
	beq r1, zero, .LBB0_291
.LBB0_202:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_211 Depth 3
                                        #       Child Loop BB0_206 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -352(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r2
	.loc	1 285 11 is_stmt 1              # parallel-rne.mlir:285:11
	bneq r11, r16, .LBB0_209
# %bb.203:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_206
.LBB0_204:                              # %scalar.ph
                                        #   in Loop: Header=BB0_206 Depth=3
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r6
	and r4, r4, r7
.LBB0_205:                              # %scalar.ph
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	setlt.ul r10, r[8:9], r[25:26]
	.loc	1 300 13 is_stmt 1              # parallel-rne.mlir:300:13
	add.s r1, r11, r1
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 300 13                        # parallel-rne.mlir:300:13
	stores.w r4, 0(r1)
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	beq r10, zero, .LBB0_201
.LBB0_206:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	add.ul r[12:13], r[8:9], r[2:3]
	slli r1, r12, 2
	add.s r4, r16, r1
	loads.w r10, 0(r4)
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	and r12, r10, r5
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	setlt.u r4, r22, r12
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r4, zero, .LBB0_208
# %bb.207:                              # %scalar.ph
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r12, r17, r12
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r12, zero, .LBB0_205
	j .LBB0_204
.LBB0_208:                              #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r10, r4
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r12, r17, r12
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r12, zero, .LBB0_205
	j .LBB0_204
.LBB0_209:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_211
.LBB0_210:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 285 11 is_stmt 1              # parallel-rne.mlir:285:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 300 13                        # parallel-rne.mlir:300:13
	add.s r8, r11, r8
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	seteq.d r4, r[13:14], r[23:24]
	.loc	1 300 13                        # parallel-rne.mlir:300:13
	stores.w r15, 12(r8)
	stores.w r1, 8(r8)
	stores.w r12, 4(r8)
	stores.w r19, 0(r8)
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	bneq r4, zero, .LBB0_201
.LBB0_211:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	add.ul r[8:9], r[13:14], r[2:3]
	slli r8, r8, 2
	add.s r19, r16, r8
	loads.w r28, 12(r19)
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	and r27, r28, r5
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	setlt.u r1, r22, r27
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r1, zero, .LBB0_213
# %bb.212:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r28, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_211 Depth=3
	lui r1, 1024
	or r15, r28, r1
.LBB0_214:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r10, 8(r19)
	and r9, r10, r5
	setlt.u r1, r22, r9
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r1, zero, .LBB0_216
# %bb.215:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r10, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_211 Depth=3
	lui r1, 1024
	or r1, r10, r1
.LBB0_217:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r4, 4(r19)
	and r20, r4, r5
	setlt.u r12, r22, r20
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r12, zero, .LBB0_219
# %bb.218:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_220
.LBB0_219:                              #   in Loop: Header=BB0_211 Depth=3
	lui r12, 1024
	or r12, r4, r12
.LBB0_220:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r21, 0(r19)
	and r18, r21, r5
	setlt.u r19, r22, r18
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r19, zero, .LBB0_229
# %bb.221:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r18, r17, r18
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r18, zero, .LBB0_223
.LBB0_222:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r21, 16
	andi r18, r18, 1
	add.s r18, r21, r18
	add.s r18, r18, r6
	and r19, r18, r7
.LBB0_223:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	setlt.u r18, r17, r20
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r18, zero, .LBB0_226
# %bb.224:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r7
	setlt.u r4, r17, r9
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r4, zero, .LBB0_227
.LBB0_225:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r17, r27
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r4, zero, .LBB0_210
	j .LBB0_228
.LBB0_226:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r17, r9
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r4, zero, .LBB0_225
.LBB0_227:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r6
	and r1, r1, r7
	setlt.u r4, r17, r27
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r4, zero, .LBB0_210
.LBB0_228:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r28, 16
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r6
	and r15, r4, r7
	j .LBB0_210
.LBB0_229:                              #   in Loop: Header=BB0_211 Depth=3
	lui r19, 1024
	or r19, r21, r19
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r18, r17, r18
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r18, zero, .LBB0_222
	j .LBB0_223
.LBB0_230:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r4
	addli r10, zero, 64
	addli r14, zero, 4
	.loc	1 249 7                         # parallel-rne.mlir:249:7
	mfence { sm }
	.loc	1 277 7                         # parallel-rne.mlir:277:7
	bneq r4, r2, .LBB0_198
.LBB0_231:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 112
	.loc	1 333 7 is_stmt 1               # parallel-rne.mlir:333:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r1
	j .LBB0_233
.LBB0_232:                              # %middle.block78
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[2:3], -352(r30)                # 8-byte Folded Reload
	.loc	1 340 9 is_stmt 1               # parallel-rne.mlir:340:9
	setlt.ul r1, r[2:3], r[25:26]
	addli.d r[2:3], r[2:3], 1
	addli.d r[3:4], r[2:3], 0
	addli r2, zero, 7
	beq r1, zero, .LBB0_291
.LBB0_233:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_242 Depth 3
                                        #       Child Loop BB0_237 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -352(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r2
	.loc	1 341 11 is_stmt 1              # parallel-rne.mlir:341:11
	bneq r11, r16, .LBB0_240
# %bb.234:                              # %scalar.ph72.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_237
.LBB0_235:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_237 Depth=3
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r6
	and r4, r4, r7
.LBB0_236:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	setlt.ul r10, r[8:9], r[25:26]
	.loc	1 356 13 is_stmt 1              # parallel-rne.mlir:356:13
	add.s r1, r11, r1
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	stores.w r4, 0(r1)
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	beq r10, zero, .LBB0_232
.LBB0_237:                              # %scalar.ph72
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	add.ul r[12:13], r[8:9], r[2:3]
	slli r1, r12, 2
	add.s r4, r16, r1
	loads.w r10, 0(r4)
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	and r12, r10, r5
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	setlt.u r4, r22, r12
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r4, zero, .LBB0_239
# %bb.238:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 353 19 is_stmt 1              # parallel-rne.mlir:353:19
	setlt.u r12, r17, r12
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r12, zero, .LBB0_236
	j .LBB0_235
.LBB0_239:                              #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r10, r4
	.loc	1 353 19 is_stmt 1              # parallel-rne.mlir:353:19
	setlt.u r12, r17, r12
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r12, zero, .LBB0_236
	j .LBB0_235
.LBB0_240:                              # %vector.body74.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_242
.LBB0_241:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 341 11 is_stmt 1              # parallel-rne.mlir:341:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	add.s r8, r11, r8
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	seteq.d r4, r[13:14], r[23:24]
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	stores.w r15, 12(r8)
	stores.w r1, 8(r8)
	stores.w r12, 4(r8)
	stores.w r19, 0(r8)
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	bneq r4, zero, .LBB0_232
.LBB0_242:                              # %vector.body74
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	add.ul r[8:9], r[13:14], r[2:3]
	slli r8, r8, 2
	add.s r19, r16, r8
	loads.w r28, 12(r19)
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	and r27, r28, r5
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	setlt.u r1, r22, r27
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r1, zero, .LBB0_244
# %bb.243:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r28, 0
	j .LBB0_245
.LBB0_244:                              #   in Loop: Header=BB0_242 Depth=3
	lui r1, 1024
	or r15, r28, r1
.LBB0_245:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r10, 8(r19)
	and r9, r10, r5
	setlt.u r1, r22, r9
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r1, zero, .LBB0_247
# %bb.246:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r10, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_242 Depth=3
	lui r1, 1024
	or r1, r10, r1
.LBB0_248:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r4, 4(r19)
	and r20, r4, r5
	setlt.u r12, r22, r20
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r12, zero, .LBB0_250
# %bb.249:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_251
.LBB0_250:                              #   in Loop: Header=BB0_242 Depth=3
	lui r12, 1024
	or r12, r4, r12
.LBB0_251:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r21, 0(r19)
	and r18, r21, r5
	setlt.u r19, r22, r18
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r19, zero, .LBB0_253
# %bb.252:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 353 19 is_stmt 1              # parallel-rne.mlir:353:19
	setlt.u r18, r17, r18
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	beq r18, zero, .LBB0_254
	j .LBB0_255
.LBB0_253:                              #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r21, r19
	.loc	1 353 19 is_stmt 1              # parallel-rne.mlir:353:19
	setlt.u r18, r17, r18
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r18, zero, .LBB0_255
.LBB0_254:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r21, 16
	andi r18, r18, 1
	add.s r18, r21, r18
	add.s r18, r18, r6
	and r19, r18, r7
.LBB0_255:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r18, r17, r20
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r18, zero, .LBB0_258
# %bb.256:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r7
	setlt.u r4, r17, r9
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	beq r4, zero, .LBB0_259
.LBB0_257:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r17, r27
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r4, zero, .LBB0_241
	j .LBB0_260
.LBB0_258:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r17, r9
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r4, zero, .LBB0_257
.LBB0_259:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r6
	and r1, r1, r7
	setlt.u r4, r17, r27
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r4, zero, .LBB0_241
.LBB0_260:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r28, 16
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r6
	and r15, r4, r7
	j .LBB0_241
.LBB0_261:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 96
	.loc	1 305 7 is_stmt 1               # parallel-rne.mlir:305:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r1
	j .LBB0_263
.LBB0_262:                              # %middle.block69
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 111
	load.d r[3:4], -352(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 312 9 is_stmt 1               # parallel-rne.mlir:312:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	addli.d r[3:4], r[2:3], 0
	addli r2, zero, 7
	beq r1, zero, .LBB0_291
.LBB0_263:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_267 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -352(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r2
	.loc	1 313 11 is_stmt 1              # parallel-rne.mlir:313:11
	bneq r11, r16, .LBB0_270
# %bb.264:                              # %scalar.ph63.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_267
.LBB0_265:                              # %scalar.ph63
                                        #   in Loop: Header=BB0_267 Depth=3
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r6
	and r4, r4, r7
.LBB0_266:                              # %scalar.ph63
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	setlt.ul r10, r[8:9], r[25:26]
	.loc	1 328 13 is_stmt 1              # parallel-rne.mlir:328:13
	add.s r1, r11, r1
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 328 13                        # parallel-rne.mlir:328:13
	stores.w r4, 0(r1)
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	beq r10, zero, .LBB0_262
.LBB0_267:                              # %scalar.ph63
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	add.ul r[12:13], r[8:9], r[2:3]
	slli r1, r12, 2
	add.s r4, r16, r1
	loads.w r10, 0(r4)
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	and r12, r10, r5
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	setlt.u r4, r22, r12
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r4, zero, .LBB0_269
# %bb.268:                              # %scalar.ph63
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 325 19 is_stmt 1              # parallel-rne.mlir:325:19
	setlt.u r12, r17, r12
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r12, zero, .LBB0_266
	j .LBB0_265
.LBB0_269:                              #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r10, r4
	.loc	1 325 19 is_stmt 1              # parallel-rne.mlir:325:19
	setlt.u r12, r17, r12
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r12, zero, .LBB0_266
	j .LBB0_265
.LBB0_270:                              # %vector.body65.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_272
.LBB0_271:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 313 11 is_stmt 1              # parallel-rne.mlir:313:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 328 13                        # parallel-rne.mlir:328:13
	add.s r8, r11, r8
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	seteq.d r4, r[13:14], r[23:24]
	.loc	1 328 13                        # parallel-rne.mlir:328:13
	stores.w r15, 12(r8)
	stores.w r1, 8(r8)
	stores.w r12, 4(r8)
	stores.w r19, 0(r8)
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	bneq r4, zero, .LBB0_262
.LBB0_272:                              # %vector.body65
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	add.ul r[8:9], r[13:14], r[2:3]
	slli r8, r8, 2
	add.s r19, r16, r8
	loads.w r28, 12(r19)
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	and r27, r28, r5
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	setlt.u r1, r22, r27
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r1, zero, .LBB0_274
# %bb.273:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r28, 0
	j .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_272 Depth=3
	lui r1, 1024
	or r15, r28, r1
.LBB0_275:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r10, 8(r19)
	and r9, r10, r5
	setlt.u r1, r22, r9
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r1, zero, .LBB0_277
# %bb.276:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r10, 0
	j .LBB0_278
.LBB0_277:                              #   in Loop: Header=BB0_272 Depth=3
	lui r1, 1024
	or r1, r10, r1
.LBB0_278:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r4, 4(r19)
	and r20, r4, r5
	setlt.u r12, r22, r20
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r12, zero, .LBB0_280
# %bb.279:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_281
.LBB0_280:                              #   in Loop: Header=BB0_272 Depth=3
	lui r12, 1024
	or r12, r4, r12
.LBB0_281:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r21, 0(r19)
	and r18, r21, r5
	setlt.u r19, r22, r18
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r19, zero, .LBB0_283
# %bb.282:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 325 19 is_stmt 1              # parallel-rne.mlir:325:19
	setlt.u r18, r17, r18
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	beq r18, zero, .LBB0_284
	j .LBB0_285
.LBB0_283:                              #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r21, r19
	.loc	1 325 19 is_stmt 1              # parallel-rne.mlir:325:19
	setlt.u r18, r17, r18
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r18, zero, .LBB0_285
.LBB0_284:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r21, 16
	andi r18, r18, 1
	add.s r18, r21, r18
	add.s r18, r18, r6
	and r19, r18, r7
.LBB0_285:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	setlt.u r18, r17, r20
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r18, zero, .LBB0_288
# %bb.286:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r7
	setlt.u r4, r17, r9
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	beq r4, zero, .LBB0_289
.LBB0_287:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r17, r27
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r4, zero, .LBB0_271
	j .LBB0_290
.LBB0_288:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r17, r9
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r4, zero, .LBB0_287
.LBB0_289:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r6
	and r1, r1, r7
	setlt.u r4, r17, r27
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r4, zero, .LBB0_271
.LBB0_290:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r28, 16
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r6
	and r15, r4, r7
	j .LBB0_271
.LBB0_291:                              # %.sink.split54
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r4
	addli r10, zero, 64
	addli r14, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_292:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 361 7 is_stmt 1               # parallel-rne.mlir:361:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	loadli.w r1,  -356(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.293:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r15, zero, 1
	addli r12, zero, 18
	.loc	1 379 7 is_stmt 1               # parallel-rne.mlir:379:7
	bneq r4, zero, .LBB0_7
# %bb.294:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	loadli.w r1,  -400(r30)                 # 4-byte Folded Reload
	addli r3, zero, 896
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	loadli.w r8,  -396(r30)                 # 4-byte Folded Reload
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	load.d r[18:19], -392(r30)              # 8-byte Folded Reload
	addli r10, zero, 12
	zext_int2long r[3:4], r3
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	zext_int2long r[1:2], r1
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	sext_int2long r[8:9], r8
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	sll.d r[12:13], r[18:19], r12
	load.d r[18:19], 16(r30)
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	min.ul r[3:4], r[1:2], r[3:4]
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	add.ul r[12:13], r[18:19], r[12:13]
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	addli.d r[3:4], r[3:4], 128
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	max.ul r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	load.d r[3:4], -336(r30)                # 8-byte Folded Reload
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	min.ul r[1:2], r[1:2], r[23:24]
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	min.sl r[3:4], r[8:9], r[3:4]
	addli.d r[3:4], r[3:4], 128
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	max.sl r[3:4], r[3:4], r[8:9]
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	sub.sl r[3:4], r[3:4], r[8:9]
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	load.d r[8:9], -384(r30)                # 8-byte Folded Reload
	xwait r10, 0
	ori r10, r11, 64
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	min.sl r[3:4], r[3:4], r[23:24]
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	add.ul r[8:9], r[12:13], r[8:9]
	addli r13, zero, 5
	addli r12, zero, 64
	lock zero, r13
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r15, zero, 1
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r10, r12, 3
	addli r8, r1, 31
	slli r1, r1, 1
	addli r10, zero, 64
	addli r2, zero, 128
	srli r8, r8, 5
	andi r1, r1, 62
	dma_cfg r10, r2, r8, 4
	addli r2, zero, 512
	addli r8, zero, 2048
	dma_cfg r8, r2, r3, 5
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r4
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r13
	j .LBB0_6
.LBB0_295:                              # %._crit_edge
	.loc	1 381 5                         # parallel-rne.mlir:381:5
	xsignal zero, 0
	bneq r4, zero, .LBB0_297
# %bb.296:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 381 5                         # parallel-rne.mlir:381:5
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
.LBB0_297:
	.loc	1 382 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:382:5
	addli sp, sp, 416
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
	.long	480                             # 0x1e0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-a6stxnwb" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
