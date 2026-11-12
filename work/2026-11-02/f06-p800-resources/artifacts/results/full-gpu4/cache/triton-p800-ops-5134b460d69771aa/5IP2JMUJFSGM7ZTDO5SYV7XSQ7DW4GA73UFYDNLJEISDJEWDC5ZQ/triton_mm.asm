	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-f4mhlrke" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -456
	addli r1, zero, 1
.Ltmp0:
	.loc	1 32 5 prologue_end             # parallel-rne.mlir:32:5
	core_id r2
	addli r30, sp, 392
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
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
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	.loc	1 34 10 is_stmt 1               # parallel-rne.mlir:34:10
	load_param_i r3, 1
	loadli.w r4,  32(r30)
	lui r5, 1048575
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	load_param_i r6, 0
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -60(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -224(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -288(r30)
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
	storeli.w r3, -76(r30)
	storeli.w r3, -72(r30)
	storeli.w r3, -68(r30)
	storeli.w r3, -64(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	storeli.w r3, -240(r30)
	storeli.w r3, -236(r30)
	storeli.w r3, -232(r30)
	storeli.w r3, -228(r30)
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r3
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	mul.s r1, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	fmac.s r2, r2, r6
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	min.s r2, r2, r4
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	ble.s r2, r1, .LBB0_294
# %bb.4:                                # %.lr.ph
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	sext_int2long r[12:13], r1
	lui r1, 15
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[4:5], r2
	addli r18, zero, 64
	addli r19, zero, 4
	addli r27, zero, 7
	addli r15, zero, 17
	addli r21, zero, 1
	addli r26, zero, 16
	lui r22, 522240
	lui r7, 1048560
	addli r25, zero, 13
	addli r14, zero, 0
	storeli.w zero, -292(r30)               # 4-byte Folded Spill
	ori r2, r1, 4095
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	store.d r[4:5], -384(r30)               # 8-byte Folded Spill
	lui r1, 1048448
	store.d r[1:2], -392(r30)               # 8-byte Folded Spill
	lui r1, 127
	lui r2, 522239
	ori r1, r1, 4095
	ori r17, r2, 4095
	storeli.w r1, -324(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r5, r1, 4095
	lui r1, 7
	ori r6, r1, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 362 7 is_stmt 1               # parallel-rne.mlir:362:7
	addli r1, zero, 11
	addli r15, zero, 17
	addli r21, zero, 1
	xsignal r1, 0
	.loc	1 363 7                         # parallel-rne.mlir:363:7
	addli r1, zero, 12
	xsignal r1, 0
	load.d r[12:13], -344(r30)              # 8-byte Folded Reload
	loadli.w r14,  -348(r30)                # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	load.d r[1:2], -384(r30)                # 8-byte Folded Reload
	addli.d r[12:13], r[12:13], 1
	addli r26, zero, 16
	addli r25, zero, 13
	setlt.sl r1, r[12:13], r[1:2]
	beq r1, zero, .LBB0_294
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_30 Depth 3
                                        #     Child Loop BB0_73 Depth 2
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_76 Depth 3
                                        #     Child Loop BB0_43 Depth 2
                                        #       Child Loop BB0_52 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #     Child Loop BB0_104 Depth 2
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_107 Depth 3
                                        #     Child Loop BB0_170 Depth 2
                                        #       Child Loop BB0_179 Depth 3
                                        #       Child Loop BB0_173 Depth 3
                                        #     Child Loop BB0_201 Depth 2
                                        #       Child Loop BB0_210 Depth 3
                                        #       Child Loop BB0_204 Depth 3
                                        #     Child Loop BB0_140 Depth 2
                                        #       Child Loop BB0_149 Depth 3
                                        #       Child Loop BB0_143 Depth 3
                                        #     Child Loop BB0_262 Depth 2
                                        #       Child Loop BB0_271 Depth 3
                                        #       Child Loop BB0_265 Depth 3
                                        #     Child Loop BB0_232 Depth 2
                                        #       Child Loop BB0_241 Depth 3
                                        #       Child Loop BB0_235 Depth 3
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	bneq r3, r19, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  32(r30)
	loadli.w r2,  28(r30)
	addli r9, zero, 8
	addli r4, zero, 5
	.loc	1 98 15 is_stmt 1               # parallel-rne.mlir:98:15
	loadli.w r11,  -288(r30)
	addli r20, zero, 0
	store.d r[12:13], -344(r30)             # 8-byte Folded Spill
	mod.s r4, r14, r4
	addli r14, r14, 1
	div.s r1, r12, r1
	storeli.w r14, -348(r30)                # 4-byte Folded Spill
	slli r16, r4, 16
	lui r4, 80
	div.s r1, r1, r2
	add.s r14, r16, r4
	div.s r2, r1, r18
	slli r3, r2, 3
	slli r2, r2, 6
	sub.s r8, r19, r3
	sub.s r2, r1, r2
	min.s r8, r8, r9
	mod.s r1, r1, r8
	div.s r2, r2, r8
	add.s r1, r3, r1
	slli r3, r2, 7
	storeli.w r3, -376(r30)                 # 4-byte Folded Spill
	zext_int2long r[2:3], r2
	slli r4, r1, 7
	zext_int2long r[8:9], r1
	sll.d r[1:2], r[2:3], r27
	storeli.w r4, -372(r30)                 # 4-byte Folded Spill
	store.d r[8:9], -368(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[8:9], r15
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	sll.d r[3:4], r[1:2], r21
	load.d r[1:2], -392(r30)                # 8-byte Folded Reload
	addli r21, zero, 0
	store.d r[8:9], -312(r30)               # 8-byte Folded Spill
	store.d r[3:4], -360(r30)               # 8-byte Folded Spill
	and.d r[1:2], r[8:9], r[1:2]
	store.d r[1:2], -320(r30)               # 8-byte Folded Spill
	load.d r[1:2], 8(r30)
	add.ul r[1:2], r[1:2], r[3:4]
	store.d r[1:2], -336(r30)               # 8-byte Folded Spill
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r2, 160
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	lock zero, r19
	addli r9, zero, 2
	addli r10, zero, 256
	dma_cfg r1, r1, zero, 0
	ori r4, r2, 64
	dma_cfg zero, r13, zero, 2
	addli r2, zero, 2048
	add.s r3, r3, r4
	addli r4, zero, 5
	dma_cfg r3, r12, r18, 3
	addli r3, zero, 8
	dma_cfg r28, r18, r9, 4
	dma_cfg r10, r2, r24, 5
	addli r2, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	unlock r19
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r25, 10
	addli r25, zero, 13
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 17
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 18
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r3, 10
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
	dma_cfg r1, r1, zero, 0
	dma_cfg r1, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r23, zero, r18, 3
	dma_cfg r28, zero, r9, 4
	dma_cfg r10, zero, r24, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	xsignal r9, 0
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r3,  -224(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r4,  -60(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r3, r3, 1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r4, r4, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r3, -224(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r4, -60(r30)
.LBB0_12:                               # %.thread20
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r21, r21, 1
	beq r21, r26, .LBB0_33
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 123 15                        # parallel-rne.mlir:123:15
	addli r20, r20, 1
	addli r11, r8, 0
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_30 Depth 3
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	zext_int2long r[9:10], r21
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	addli r1, zero, 6
	load.d r[27:28], -320(r30)              # 8-byte Folded Reload
	sll.d r[3:4], r[9:10], r1
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	load.d r[1:2], -312(r30)                # 8-byte Folded Reload
	add.ul r[12:13], r[3:4], r[1:2]
	loadli.w r1,  -324(r30)                 # 4-byte Folded Reload
	zext_int2long r[3:4], r1
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	setlt.ul r3, r[3:4], r[12:13]
	.loc	1 88 15                         # parallel-rne.mlir:88:15
	bneq r3, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[27:28], zero
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	loadli.w r8,  -292(r30)                 # 4-byte Folded Reload
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	addli r1, zero, 24
	mod.s r3, r8, r1
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	addli r1, zero, 15
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r8, r8, 1
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	mod.s r4, r11, r1
	addli r1, zero, 384
	storeli.w r8, -292(r30)                 # 4-byte Folded Spill
	addli r8, r11, 1
	zext_int2long r[1:2], r1
	storeli.w r8, -288(r30)
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	store.d r[1:2], -304(r30)               # 8-byte Folded Spill
	slli r24, r3, 15
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	lui r1, 160
	slli r3, r4, 15
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r4
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	add.s r23, r3, r1
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r1, zero, 2
	beq r4, r1, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 1
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	bneq r4, r1, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r2, zero, 1024
	sub.sl r[9:10], r[12:13], r[27:28]
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	sll.d r[12:13], r[12:13], r1
	addli r15, zero, 13
	addli r25, zero, 3
	addli r27, zero, 7
	addli r28, zero, 128
	addli r26, zero, 14
	zext_int2long r[18:19], r2
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[9:10], r[9:10], r[18:19]
	load.d r[18:19], -304(r30)              # 8-byte Folded Reload
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	xwait r25, 0
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	min.sl r[18:19], r[9:10], r[18:19]
	sub.sl r[9:10], r[18:19], r[9:10]
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	load.d r[18:19], 0(r30)
	addli r24, r9, 128
	add.ul r[12:13], r[18:19], r[12:13]
	addli r18, zero, 64
	addli r19, zero, 4
	blt.s r26, r11, .LBB0_10
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r9, zero, 5
	addli r10, zero, 2
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r2, zero, 6
	addli r4, zero, 8
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 18
	dma_cfg zero, zero, r4, 10
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
	addli r2, zero, 256
	dma_cfg r1, r1, zero, 0
	dma_cfg r1, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r23, zero, r18, 3
	dma_cfg r28, zero, r10, 4
	dma_cfg r2, zero, r28, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	j .LBB0_10
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r1, zero, 2
	.loc	1 103 9 is_stmt 1               # parallel-rne.mlir:103:9
	addli r3, zero, 5
	addli r18, zero, 64
	addli r28, zero, 128
	addli r19, zero, 4
	addli r27, zero, 7
	xwait r1, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r1, zero, 0
	addli r1, zero, 3
	ds_cfg r18, zero, 1
	ds_cfg r18, zero, 14
	ds_cfg r28, zero, 13
	shuffle_batch r24, r23, r18, 1
	unlock zero
	xsignal r1, 0
	xsignal r19, 0
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r3,  -224(r30)
	addli r1, zero, 40
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r4,  -60(r30)
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r15
	addli r27, zero, 7
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r11, r3, r1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r1, zero, 14
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r3, r3, 1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	mod.s r12, r4, r1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r3, -224(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	lui r1, 280
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r13, r11, 15
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r11, r4, 1
	slli r3, r12, 15
	storeli.w r11, -60(r30)
	add.s r23, r3, r1
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	beq r15, r27, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r18, zero, 64
	addli r19, zero, 4
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r1, zero, 6
	addli r28, zero, 128
	bneq r15, r1, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r12, zero, 17
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	load.d r[1:2], -336(r30)                # 8-byte Folded Reload
	xwait r27, 0
	sll.d r[9:10], r[9:10], r12
	add.ul r[10:11], r[1:2], r[9:10]
	blt.s r25, r4, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r9, zero, 5
	addli r1, zero, 1
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r2, zero, 2
	addli r4, zero, 8
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 3
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 6
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 18
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r12, 10
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
	addli r2, zero, 512
	dma_cfg r1, r1, zero, 0
	dma_cfg r1, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r23, zero, r18, 3
	dma_cfg r28, zero, r19, 4
	dma_cfg r2, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r1, 280
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	lock zero, r19
	addli r9, zero, 512
	addli r2, zero, 2048
	ori r4, r1, 64
	addli r1, zero, 1
	add.s r3, r3, r4
	dma_cfg r1, r1, zero, 0
	addli r4, zero, 5
	dma_cfg zero, r11, zero, 2
	dma_cfg r3, r10, r18, 3
	addli r3, zero, 8
	dma_cfg r28, r18, r19, 4
	dma_cfg r9, r2, r18, 5
	addli r2, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	unlock r19
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 3
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 6
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r27, 10
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
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 15
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 18
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r12, 10
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
	dma_cfg r1, r1, zero, 0
	dma_cfg r1, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r23, zero, r18, 3
	dma_cfg r28, zero, r19, 4
	dma_cfg r9, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	xsignal r2, 0
	.loc	1 120 9 is_stmt 1               # parallel-rne.mlir:120:9
	j .LBB0_12
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 6
	addli r28, zero, 128
	addli r18, zero, 64
	addli r19, zero, 4
	addli r3, zero, 8
	xwait r1, 0
	addli r1, zero, 9
	xwait r1, 0
	addli r1, zero, 2
	lock zero, zero
	ds_cfg r1, zero, 0
	ds_cfg r28, zero, 1
	ds_cfg r18, zero, 14
	ds_cfg r28, zero, 13
	shuffle_coa r13, r23, r18, 2
	unlock zero
	xsignal r27, 0
	xsignal r3, 0
	j .LBB0_12
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r3
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	bneq r3, r19, .LBB0_32
# %bb.28:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 8
	xwait r19, 0
	addli r4, zero, 1
	addli r9, zero, 0
	xwait r3, 0
	addli r3, zero, 1
	beq r20, zero, .LBB0_30
.LBB0_29:                               # %.preheader30
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r10, r9, 14
	slli r9, r9, 8
	lock zero, r3
	mm_cfg r18, r18, r28, 0
	or r10, r10, r13
	or r9, r9, r14
	mm_cfg r19, r19, r3, 2
	mm_acc r9, r24, r10, 8
	andi r10, r4, 1
	addli r9, zero, 1
	addli r4, zero, 0
	unlock r3
	bneq r10, zero, .LBB0_29
	j .LBB0_31
.LBB0_30:                               # %.preheader29
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r10, r9, 14
	slli r9, r9, 8
	lock zero, r3
	mm_cfg r18, r18, r28, 0
	or r10, r10, r13
	or r9, r9, r14
	mm_cfg r19, r19, r3, 2
	mm r9, r24, r10, 8
	andi r10, r4, 1
	addli r9, zero, 1
	addli r4, zero, 0
	unlock r3
	bneq r10, zero, .LBB0_30
.LBB0_31:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r21, r21, 1
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	addli r3, zero, 5
	addli r1, zero, 9
	xsignal r3, 0
	xsignal r1, 0
	bneq r21, r26, .LBB0_13
	j .LBB0_34
.LBB0_32:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r21, r21, 1
	bneq r21, r26, .LBB0_13
	j .LBB0_35
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 126 7                         # parallel-rne.mlir:126:7
	core_id r1
	bneq r1, r19, .LBB0_35
.LBB0_34:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	storeli.w zero, -320(r30)               # 4-byte Folded Spill
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r3
	.loc	1 126 7                         # parallel-rne.mlir:126:7
	xsignal r1, 0
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	j .LBB0_38
.LBB0_35:                               # %.thread44
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r3
	addli r1, zero, 3
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	bneq r3, r1, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	storeli.w r1, -320(r30)                 # 4-byte Folded Spill
	xwait r25, 0
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -320(r30)               # 4-byte Folded Spill
.LBB0_38:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	addli r1, zero, 255
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	xfence
	zext_int2long r[25:26], r28
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	mfence { lm, sm, gm }
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	csr_set csr5, r1
	addli r1, zero, 127
	sync_core
	zext_int2long r[20:21], r1
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	beq r3, zero, .LBB0_71
# %bb.39:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	addli r1, zero, 2
	beq r3, r1, .LBB0_102
.LBB0_40:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 1
	bneq r3, r1, .LBB0_133
# %bb.41:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_43
.LBB0_42:                               # %middle.block105
                                        #   in Loop: Header=BB0_43 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 31
	load.d r[3:4], -312(r30)                # 8-byte Folded Reload
	addli r27, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 172 9 is_stmt 1               # parallel-rne.mlir:172:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_132
.LBB0_43:                               # %.preheader26
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_52 Depth 3
                                        #       Child Loop BB0_46 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[23:24], r[2:3], r27
	store.d r[2:3], -312(r30)               # 8-byte Folded Spill
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	bneq r16, r14, .LBB0_50
# %bb.44:                               # %scalar.ph99.preheader
                                        #   in Loop: Header=BB0_43 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_46
.LBB0_45:                               # %scalar.ph99
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	setlt.ul r8, r[3:4], r[20:21]
	.loc	1 188 13 is_stmt 1              # parallel-rne.mlir:188:13
	add.s r1, r16, r1
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r2, 0(r1)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	beq r8, zero, .LBB0_42
.LBB0_46:                               # %scalar.ph99
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[1:2], r[3:4], r[23:24]
	slli r1, r1, 2
	add.s r2, r14, r1
	loads.w r8, 0(r2)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r9, r8, r5
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r2, r22, r9
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r2, zero, .LBB0_48
# %bb.47:                               # %scalar.ph99
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r8, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r9, r17, r9
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r9, zero, .LBB0_45
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r8, r2
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r9, r17, r9
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r9, zero, .LBB0_45
.LBB0_49:                               # %scalar.ph99
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r6
	and r2, r2, r7
	j .LBB0_45
.LBB0_50:                               # %vector.body101.preheader
                                        #   in Loop: Header=BB0_43 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_52
.LBB0_51:                               # %vector.body101
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	add.s r2, r16, r8
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	seteq.d r1, r[27:28], r[25:26]
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r15, 12(r2)
	stores.w r3, 8(r2)
	stores.w r12, 4(r2)
	stores.w r19, 0(r2)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	bneq r1, zero, .LBB0_42
.LBB0_52:                               # %vector.body101
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[1:2], r[27:28], r[23:24]
	slli r8, r1, 2
	add.s r19, r14, r8
	loads.w r13, 12(r19)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r11, r13, r5
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r1, r22, r11
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r1, zero, .LBB0_54
# %bb.53:                               # %vector.body101
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r13, 0
	j .LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_52 Depth=3
	lui r1, 1024
	or r15, r13, r1
.LBB0_55:                               # %vector.body101
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r10, 8(r19)
	and r9, r10, r5
	setlt.u r1, r22, r9
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r1, zero, .LBB0_57
# %bb.56:                               # %vector.body101
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r10, 0
	j .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_52 Depth=3
	lui r1, 1024
	or r3, r10, r1
.LBB0_58:                               # %vector.body101
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r4, 4(r19)
	and r1, r4, r5
	setlt.u r2, r22, r1
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r2, zero, .LBB0_60
# %bb.59:                               # %vector.body101
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_61
.LBB0_60:                               #   in Loop: Header=BB0_52 Depth=3
	lui r2, 1024
	or r12, r4, r2
.LBB0_61:                               # %vector.body101
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r2, 0(r19)
	and r18, r2, r5
	setlt.u r19, r22, r18
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r19, zero, .LBB0_63
# %bb.62:                               # %vector.body101
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r2, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r18, r17, r18
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r18, zero, .LBB0_64
	j .LBB0_65
.LBB0_63:                               #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r2, r19
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r18, r17, r18
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r18, zero, .LBB0_65
.LBB0_64:                               # %vector.body101
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r2, 16
	andi r18, r18, 1
	add.s r2, r2, r18
	add.s r2, r2, r6
	and r19, r2, r7
.LBB0_65:                               # %vector.body101
                                        #   in Loop: Header=BB0_52 Depth=3
	setlt.u r1, r17, r1
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r1, zero, .LBB0_68
# %bb.66:                               # %vector.body101
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r9
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r1, zero, .LBB0_69
.LBB0_67:                               # %vector.body101
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r11
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_51
	j .LBB0_70
.LBB0_68:                               # %vector.body101
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r6
	and r12, r1, r7
	setlt.u r1, r17, r9
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_67
.LBB0_69:                               # %vector.body101
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r6
	and r3, r1, r7
	setlt.u r1, r17, r11
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_51
.LBB0_70:                               # %vector.body101
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r13, 16
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r6
	and r15, r1, r7
	j .LBB0_51
.LBB0_71:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 137 7 is_stmt 1               # parallel-rne.mlir:137:7
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_73
.LBB0_72:                               # %middle.block123
                                        #   in Loop: Header=BB0_73 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[3:4], -312(r30)                # 8-byte Folded Reload
	addli r27, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 144 9 is_stmt 1               # parallel-rne.mlir:144:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_101
.LBB0_73:                               # %.preheader28
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_76 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[23:24], r[2:3], r27
	store.d r[2:3], -312(r30)               # 8-byte Folded Spill
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	bneq r16, r14, .LBB0_80
# %bb.74:                               # %scalar.ph117.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_76
.LBB0_75:                               # %scalar.ph117
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	setlt.ul r8, r[3:4], r[20:21]
	.loc	1 160 13 is_stmt 1              # parallel-rne.mlir:160:13
	add.s r1, r16, r1
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	stores.w r2, 0(r1)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	beq r8, zero, .LBB0_72
.LBB0_76:                               # %scalar.ph117
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[1:2], r[3:4], r[23:24]
	slli r1, r1, 2
	add.s r2, r14, r1
	loads.w r8, 0(r2)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r9, r8, r5
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r2, r22, r9
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r2, zero, .LBB0_78
# %bb.77:                               # %scalar.ph117
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r8, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r9, r17, r9
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r9, zero, .LBB0_75
	j .LBB0_79
.LBB0_78:                               #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r8, r2
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r9, r17, r9
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r9, zero, .LBB0_75
.LBB0_79:                               # %scalar.ph117
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r6
	and r2, r2, r7
	j .LBB0_75
.LBB0_80:                               # %vector.body119.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_82
.LBB0_81:                               # %vector.body119
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	add.s r2, r16, r8
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	seteq.d r1, r[27:28], r[25:26]
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	stores.w r13, 12(r2)
	stores.w r10, 8(r2)
	stores.w r4, 4(r2)
	stores.w r19, 0(r2)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	bneq r1, zero, .LBB0_72
.LBB0_82:                               # %vector.body119
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[1:2], r[27:28], r[23:24]
	slli r8, r1, 2
	add.s r19, r14, r8
	loads.w r15, 12(r19)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r11, r15, r5
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r1, r22, r11
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r1, zero, .LBB0_84
# %bb.83:                               # %vector.body119
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r15, 0
	j .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_82 Depth=3
	lui r1, 1024
	or r13, r15, r1
.LBB0_85:                               # %vector.body119
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r3, 8(r19)
	and r9, r3, r5
	setlt.u r1, r22, r9
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r1, zero, .LBB0_87
# %bb.86:                               # %vector.body119
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r3, 0
	j .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_82 Depth=3
	lui r1, 1024
	or r10, r3, r1
.LBB0_88:                               # %vector.body119
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r12, 4(r19)
	and r1, r12, r5
	setlt.u r2, r22, r1
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r2, zero, .LBB0_90
# %bb.89:                               # %vector.body119
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r12, 0
	j .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_82 Depth=3
	lui r2, 1024
	or r4, r12, r2
.LBB0_91:                               # %vector.body119
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r2, 0(r19)
	and r18, r2, r5
	setlt.u r19, r22, r18
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r19, zero, .LBB0_93
# %bb.92:                               # %vector.body119
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r2, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r18, r17, r18
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r18, zero, .LBB0_94
	j .LBB0_95
.LBB0_93:                               #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r2, r19
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r18, r17, r18
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r18, zero, .LBB0_95
.LBB0_94:                               # %vector.body119
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r2, 16
	andi r18, r18, 1
	add.s r2, r2, r18
	add.s r2, r2, r6
	and r19, r2, r7
.LBB0_95:                               # %vector.body119
                                        #   in Loop: Header=BB0_82 Depth=3
	setlt.u r1, r17, r1
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r1, zero, .LBB0_98
# %bb.96:                               # %vector.body119
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r9
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r1, zero, .LBB0_99
.LBB0_97:                               # %vector.body119
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r11
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r1, zero, .LBB0_81
	j .LBB0_100
.LBB0_98:                               # %vector.body119
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r6
	and r4, r1, r7
	setlt.u r1, r17, r9
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r1, zero, .LBB0_97
.LBB0_99:                               # %vector.body119
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r6
	and r10, r1, r7
	setlt.u r1, r17, r11
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r1, zero, .LBB0_81
.LBB0_100:                              # %vector.body119
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r6
	and r13, r1, r7
	j .LBB0_81
.LBB0_101:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r3
	addli r18, zero, 64
	addli r19, zero, 4
	addli r28, zero, 128
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	mfence { sm }
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	addli r1, zero, 2
	bneq r3, r1, .LBB0_40
.LBB0_102:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 193 7 is_stmt 1               # parallel-rne.mlir:193:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_104
.LBB0_103:                              # %middle.block114
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[3:4], -312(r30)                # 8-byte Folded Reload
	addli r27, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 200 9 is_stmt 1               # parallel-rne.mlir:200:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_132
.LBB0_104:                              # %.preheader27
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_107 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[23:24], r[2:3], r27
	store.d r[2:3], -312(r30)               # 8-byte Folded Spill
	.loc	1 201 11 is_stmt 1              # parallel-rne.mlir:201:11
	bneq r16, r14, .LBB0_111
# %bb.105:                              # %scalar.ph108.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_107
.LBB0_106:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	setlt.ul r8, r[3:4], r[20:21]
	.loc	1 216 13 is_stmt 1              # parallel-rne.mlir:216:13
	add.s r1, r16, r1
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 216 13                        # parallel-rne.mlir:216:13
	stores.w r2, 0(r1)
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	beq r8, zero, .LBB0_103
.LBB0_107:                              # %scalar.ph108
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	add.ul r[1:2], r[3:4], r[23:24]
	slli r1, r1, 2
	add.s r2, r14, r1
	loads.w r8, 0(r2)
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	and r9, r8, r5
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	setlt.u r2, r22, r9
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r2, zero, .LBB0_109
# %bb.108:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r8, 0
	.loc	1 213 19 is_stmt 1              # parallel-rne.mlir:213:19
	setlt.u r9, r17, r9
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r9, zero, .LBB0_106
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r8, r2
	.loc	1 213 19 is_stmt 1              # parallel-rne.mlir:213:19
	setlt.u r9, r17, r9
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r9, zero, .LBB0_106
.LBB0_110:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r6
	and r2, r2, r7
	j .LBB0_106
.LBB0_111:                              # %vector.body110.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_113
.LBB0_112:                              # %vector.body110
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 201 11 is_stmt 1              # parallel-rne.mlir:201:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 216 13                        # parallel-rne.mlir:216:13
	add.s r2, r16, r8
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	seteq.d r1, r[27:28], r[25:26]
	.loc	1 216 13                        # parallel-rne.mlir:216:13
	stores.w r15, 12(r2)
	stores.w r3, 8(r2)
	stores.w r12, 4(r2)
	stores.w r19, 0(r2)
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	bneq r1, zero, .LBB0_103
.LBB0_113:                              # %vector.body110
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	add.ul r[1:2], r[27:28], r[23:24]
	slli r8, r1, 2
	add.s r19, r14, r8
	loads.w r13, 12(r19)
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	and r11, r13, r5
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	setlt.u r1, r22, r11
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r1, zero, .LBB0_115
# %bb.114:                              # %vector.body110
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r13, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_113 Depth=3
	lui r1, 1024
	or r15, r13, r1
.LBB0_116:                              # %vector.body110
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r10, 8(r19)
	and r9, r10, r5
	setlt.u r1, r22, r9
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r1, zero, .LBB0_118
# %bb.117:                              # %vector.body110
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r10, 0
	j .LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_113 Depth=3
	lui r1, 1024
	or r3, r10, r1
.LBB0_119:                              # %vector.body110
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r4, 4(r19)
	and r1, r4, r5
	setlt.u r2, r22, r1
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r2, zero, .LBB0_121
# %bb.120:                              # %vector.body110
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_122
.LBB0_121:                              #   in Loop: Header=BB0_113 Depth=3
	lui r2, 1024
	or r12, r4, r2
.LBB0_122:                              # %vector.body110
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r2, 0(r19)
	and r18, r2, r5
	setlt.u r19, r22, r18
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r19, zero, .LBB0_124
# %bb.123:                              # %vector.body110
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r2, 0
	.loc	1 213 19 is_stmt 1              # parallel-rne.mlir:213:19
	setlt.u r18, r17, r18
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	beq r18, zero, .LBB0_125
	j .LBB0_126
.LBB0_124:                              #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r2, r19
	.loc	1 213 19 is_stmt 1              # parallel-rne.mlir:213:19
	setlt.u r18, r17, r18
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r18, zero, .LBB0_126
.LBB0_125:                              # %vector.body110
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r2, 16
	andi r18, r18, 1
	add.s r2, r2, r18
	add.s r2, r2, r6
	and r19, r2, r7
.LBB0_126:                              # %vector.body110
                                        #   in Loop: Header=BB0_113 Depth=3
	setlt.u r1, r17, r1
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	beq r1, zero, .LBB0_129
# %bb.127:                              # %vector.body110
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r9
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	beq r1, zero, .LBB0_130
.LBB0_128:                              # %vector.body110
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r11
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_112
	j .LBB0_131
.LBB0_129:                              # %vector.body110
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r6
	and r12, r1, r7
	setlt.u r1, r17, r9
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_128
.LBB0_130:                              # %vector.body110
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r6
	and r3, r1, r7
	setlt.u r1, r17, r11
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_112
.LBB0_131:                              # %vector.body110
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r13, 16
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r6
	and r15, r1, r7
	j .LBB0_112
.LBB0_132:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r3
	addli r18, zero, 64
	addli r19, zero, 4
	addli r28, zero, 128
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_133:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 221 7 is_stmt 1               # parallel-rne.mlir:221:7
	loadli.w r1,  -320(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_168
# %bb.134:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 249 7                         # parallel-rne.mlir:249:7
	beq r3, r19, .LBB0_199
.LBB0_135:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 277 7                         # parallel-rne.mlir:277:7
	beq r3, r27, .LBB0_230
.LBB0_136:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 6
	beq r3, r1, .LBB0_260
# %bb.137:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 5
	bneq r3, r1, .LBB0_291
# %bb.138:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 80
	.loc	1 277 7                         # parallel-rne.mlir:277:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_140
.LBB0_139:                              # %middle.block
                                        #   in Loop: Header=BB0_140 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 95
	load.d r[3:4], -312(r30)                # 8-byte Folded Reload
	addli r27, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 284 9 is_stmt 1               # parallel-rne.mlir:284:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_290
.LBB0_140:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_149 Depth 3
                                        #       Child Loop BB0_143 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[23:24], r[2:3], r27
	store.d r[2:3], -312(r30)               # 8-byte Folded Spill
	.loc	1 285 11 is_stmt 1              # parallel-rne.mlir:285:11
	bneq r16, r14, .LBB0_147
# %bb.141:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_140 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_143
.LBB0_142:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	setlt.ul r8, r[3:4], r[20:21]
	.loc	1 300 13 is_stmt 1              # parallel-rne.mlir:300:13
	add.s r1, r16, r1
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 300 13                        # parallel-rne.mlir:300:13
	stores.w r2, 0(r1)
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	beq r8, zero, .LBB0_139
.LBB0_143:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	add.ul r[1:2], r[3:4], r[23:24]
	slli r1, r1, 2
	add.s r2, r14, r1
	loads.w r8, 0(r2)
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	and r9, r8, r5
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	setlt.u r2, r22, r9
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r2, zero, .LBB0_145
# %bb.144:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r8, 0
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r9, r17, r9
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r9, zero, .LBB0_142
	j .LBB0_146
.LBB0_145:                              #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r8, r2
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r9, r17, r9
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r9, zero, .LBB0_142
.LBB0_146:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r6
	and r2, r2, r7
	j .LBB0_142
.LBB0_147:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_140 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_149
.LBB0_148:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 285 11 is_stmt 1              # parallel-rne.mlir:285:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 300 13                        # parallel-rne.mlir:300:13
	add.s r2, r16, r8
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	seteq.d r1, r[27:28], r[25:26]
	.loc	1 300 13                        # parallel-rne.mlir:300:13
	stores.w r15, 12(r2)
	stores.w r3, 8(r2)
	stores.w r12, 4(r2)
	stores.w r19, 0(r2)
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	bneq r1, zero, .LBB0_139
.LBB0_149:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	add.ul r[1:2], r[27:28], r[23:24]
	slli r8, r1, 2
	add.s r19, r14, r8
	loads.w r13, 12(r19)
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	and r11, r13, r5
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	setlt.u r1, r22, r11
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r1, zero, .LBB0_151
# %bb.150:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r13, 0
	j .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_149 Depth=3
	lui r1, 1024
	or r15, r13, r1
.LBB0_152:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r10, 8(r19)
	and r9, r10, r5
	setlt.u r1, r22, r9
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r1, zero, .LBB0_154
# %bb.153:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r10, 0
	j .LBB0_155
.LBB0_154:                              #   in Loop: Header=BB0_149 Depth=3
	lui r1, 1024
	or r3, r10, r1
.LBB0_155:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r4, 4(r19)
	and r1, r4, r5
	setlt.u r2, r22, r1
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r2, zero, .LBB0_157
# %bb.156:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_158
.LBB0_157:                              #   in Loop: Header=BB0_149 Depth=3
	lui r2, 1024
	or r12, r4, r2
.LBB0_158:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r2, 0(r19)
	and r18, r2, r5
	setlt.u r19, r22, r18
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r19, zero, .LBB0_164
# %bb.159:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r2, 0
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r18, r17, r18
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r18, zero, .LBB0_161
.LBB0_160:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r2, 16
	andi r18, r18, 1
	add.s r2, r2, r18
	add.s r2, r2, r6
	and r19, r2, r7
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	setlt.u r1, r17, r1
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r1, zero, .LBB0_165
# %bb.162:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r9
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r1, zero, .LBB0_166
.LBB0_163:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r11
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r1, zero, .LBB0_148
	j .LBB0_167
.LBB0_164:                              #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r2, r19
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r18, r17, r18
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r18, zero, .LBB0_160
	j .LBB0_161
.LBB0_165:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r6
	and r12, r1, r7
	setlt.u r1, r17, r9
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r1, zero, .LBB0_163
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r6
	and r3, r1, r7
	setlt.u r1, r17, r11
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r1, zero, .LBB0_148
.LBB0_167:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r13, 16
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r6
	and r15, r1, r7
	j .LBB0_148
.LBB0_168:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 48
	.loc	1 221 7 is_stmt 1               # parallel-rne.mlir:221:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_170
.LBB0_169:                              # %middle.block96
                                        #   in Loop: Header=BB0_170 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 63
	load.d r[3:4], -312(r30)                # 8-byte Folded Reload
	addli r27, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 228 9 is_stmt 1               # parallel-rne.mlir:228:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_198
.LBB0_170:                              # %.preheader25
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_179 Depth 3
                                        #       Child Loop BB0_173 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[23:24], r[2:3], r27
	store.d r[2:3], -312(r30)               # 8-byte Folded Spill
	.loc	1 229 11 is_stmt 1              # parallel-rne.mlir:229:11
	bneq r16, r14, .LBB0_177
# %bb.171:                              # %scalar.ph90.preheader
                                        #   in Loop: Header=BB0_170 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_173
.LBB0_172:                              # %scalar.ph90
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	setlt.ul r8, r[3:4], r[20:21]
	.loc	1 244 13 is_stmt 1              # parallel-rne.mlir:244:13
	add.s r1, r16, r1
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 244 13                        # parallel-rne.mlir:244:13
	stores.w r2, 0(r1)
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	beq r8, zero, .LBB0_169
.LBB0_173:                              # %scalar.ph90
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	add.ul r[1:2], r[3:4], r[23:24]
	slli r1, r1, 2
	add.s r2, r14, r1
	loads.w r8, 0(r2)
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	and r9, r8, r5
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	setlt.u r2, r22, r9
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r2, zero, .LBB0_175
# %bb.174:                              # %scalar.ph90
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r8, 0
	.loc	1 241 19 is_stmt 1              # parallel-rne.mlir:241:19
	setlt.u r9, r17, r9
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r9, zero, .LBB0_172
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r8, r2
	.loc	1 241 19 is_stmt 1              # parallel-rne.mlir:241:19
	setlt.u r9, r17, r9
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r9, zero, .LBB0_172
.LBB0_176:                              # %scalar.ph90
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r6
	and r2, r2, r7
	j .LBB0_172
.LBB0_177:                              # %vector.body92.preheader
                                        #   in Loop: Header=BB0_170 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_179
.LBB0_178:                              # %vector.body92
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 229 11 is_stmt 1              # parallel-rne.mlir:229:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 244 13                        # parallel-rne.mlir:244:13
	add.s r2, r16, r8
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	seteq.d r1, r[27:28], r[25:26]
	.loc	1 244 13                        # parallel-rne.mlir:244:13
	stores.w r15, 12(r2)
	stores.w r3, 8(r2)
	stores.w r12, 4(r2)
	stores.w r19, 0(r2)
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	bneq r1, zero, .LBB0_169
.LBB0_179:                              # %vector.body92
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	add.ul r[1:2], r[27:28], r[23:24]
	slli r8, r1, 2
	add.s r19, r14, r8
	loads.w r13, 12(r19)
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	and r11, r13, r5
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	setlt.u r1, r22, r11
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r1, zero, .LBB0_181
# %bb.180:                              # %vector.body92
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r13, 0
	j .LBB0_182
.LBB0_181:                              #   in Loop: Header=BB0_179 Depth=3
	lui r1, 1024
	or r15, r13, r1
.LBB0_182:                              # %vector.body92
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r10, 8(r19)
	and r9, r10, r5
	setlt.u r1, r22, r9
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r1, zero, .LBB0_184
# %bb.183:                              # %vector.body92
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r10, 0
	j .LBB0_185
.LBB0_184:                              #   in Loop: Header=BB0_179 Depth=3
	lui r1, 1024
	or r3, r10, r1
.LBB0_185:                              # %vector.body92
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r4, 4(r19)
	and r1, r4, r5
	setlt.u r2, r22, r1
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r2, zero, .LBB0_187
# %bb.186:                              # %vector.body92
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_188
.LBB0_187:                              #   in Loop: Header=BB0_179 Depth=3
	lui r2, 1024
	or r12, r4, r2
.LBB0_188:                              # %vector.body92
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r2, 0(r19)
	and r18, r2, r5
	setlt.u r19, r22, r18
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r19, zero, .LBB0_194
# %bb.189:                              # %vector.body92
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r2, 0
	.loc	1 241 19 is_stmt 1              # parallel-rne.mlir:241:19
	setlt.u r18, r17, r18
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r18, zero, .LBB0_191
.LBB0_190:                              # %vector.body92
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r2, 16
	andi r18, r18, 1
	add.s r2, r2, r18
	add.s r2, r2, r6
	and r19, r2, r7
.LBB0_191:                              # %vector.body92
                                        #   in Loop: Header=BB0_179 Depth=3
	setlt.u r1, r17, r1
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	beq r1, zero, .LBB0_195
# %bb.192:                              # %vector.body92
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r9
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	beq r1, zero, .LBB0_196
.LBB0_193:                              # %vector.body92
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r11
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r1, zero, .LBB0_178
	j .LBB0_197
.LBB0_194:                              #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r2, r19
	.loc	1 241 19 is_stmt 1              # parallel-rne.mlir:241:19
	setlt.u r18, r17, r18
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	beq r18, zero, .LBB0_190
	j .LBB0_191
.LBB0_195:                              # %vector.body92
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r6
	and r12, r1, r7
	setlt.u r1, r17, r9
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r1, zero, .LBB0_193
.LBB0_196:                              # %vector.body92
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r6
	and r3, r1, r7
	setlt.u r1, r17, r11
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r1, zero, .LBB0_178
.LBB0_197:                              # %vector.body92
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r13, 16
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r6
	and r15, r1, r7
	j .LBB0_178
.LBB0_198:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r3
	addli r18, zero, 64
	addli r19, zero, 4
	addli r28, zero, 128
	.loc	1 221 7                         # parallel-rne.mlir:221:7
	mfence { sm }
	.loc	1 249 7                         # parallel-rne.mlir:249:7
	bneq r3, r19, .LBB0_135
.LBB0_199:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[2:3], r18
	mfence { lm, sm, gm }
	j .LBB0_201
.LBB0_200:                              # %middle.block87
                                        #   in Loop: Header=BB0_201 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 79
	load.d r[3:4], -312(r30)                # 8-byte Folded Reload
	addli r27, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 256 9 is_stmt 1               # parallel-rne.mlir:256:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_229
.LBB0_201:                              # %.preheader24
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_210 Depth 3
                                        #       Child Loop BB0_204 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[23:24], r[2:3], r27
	store.d r[2:3], -312(r30)               # 8-byte Folded Spill
	.loc	1 257 11 is_stmt 1              # parallel-rne.mlir:257:11
	bneq r16, r14, .LBB0_208
# %bb.202:                              # %scalar.ph81.preheader
                                        #   in Loop: Header=BB0_201 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_204
.LBB0_203:                              # %scalar.ph81
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	setlt.ul r8, r[3:4], r[20:21]
	.loc	1 272 13 is_stmt 1              # parallel-rne.mlir:272:13
	add.s r1, r16, r1
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 272 13                        # parallel-rne.mlir:272:13
	stores.w r2, 0(r1)
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	beq r8, zero, .LBB0_200
.LBB0_204:                              # %scalar.ph81
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	add.ul r[1:2], r[3:4], r[23:24]
	slli r1, r1, 2
	add.s r2, r14, r1
	loads.w r8, 0(r2)
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	and r9, r8, r5
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	setlt.u r2, r22, r9
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r2, zero, .LBB0_206
# %bb.205:                              # %scalar.ph81
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r8, 0
	.loc	1 269 19 is_stmt 1              # parallel-rne.mlir:269:19
	setlt.u r9, r17, r9
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r9, zero, .LBB0_203
	j .LBB0_207
.LBB0_206:                              #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r8, r2
	.loc	1 269 19 is_stmt 1              # parallel-rne.mlir:269:19
	setlt.u r9, r17, r9
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r9, zero, .LBB0_203
.LBB0_207:                              # %scalar.ph81
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r6
	and r2, r2, r7
	j .LBB0_203
.LBB0_208:                              # %vector.body83.preheader
                                        #   in Loop: Header=BB0_201 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_210
.LBB0_209:                              # %vector.body83
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 257 11 is_stmt 1              # parallel-rne.mlir:257:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 272 13                        # parallel-rne.mlir:272:13
	add.s r2, r16, r8
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	seteq.d r1, r[27:28], r[25:26]
	.loc	1 272 13                        # parallel-rne.mlir:272:13
	stores.w r15, 12(r2)
	stores.w r3, 8(r2)
	stores.w r12, 4(r2)
	stores.w r19, 0(r2)
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	bneq r1, zero, .LBB0_200
.LBB0_210:                              # %vector.body83
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	add.ul r[1:2], r[27:28], r[23:24]
	slli r8, r1, 2
	add.s r19, r14, r8
	loads.w r13, 12(r19)
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	and r11, r13, r5
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	setlt.u r1, r22, r11
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r1, zero, .LBB0_212
# %bb.211:                              # %vector.body83
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r13, 0
	j .LBB0_213
.LBB0_212:                              #   in Loop: Header=BB0_210 Depth=3
	lui r1, 1024
	or r15, r13, r1
.LBB0_213:                              # %vector.body83
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r10, 8(r19)
	and r9, r10, r5
	setlt.u r1, r22, r9
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r1, zero, .LBB0_215
# %bb.214:                              # %vector.body83
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r10, 0
	j .LBB0_216
.LBB0_215:                              #   in Loop: Header=BB0_210 Depth=3
	lui r1, 1024
	or r3, r10, r1
.LBB0_216:                              # %vector.body83
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r4, 4(r19)
	and r1, r4, r5
	setlt.u r2, r22, r1
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r2, zero, .LBB0_218
# %bb.217:                              # %vector.body83
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_219
.LBB0_218:                              #   in Loop: Header=BB0_210 Depth=3
	lui r2, 1024
	or r12, r4, r2
.LBB0_219:                              # %vector.body83
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r2, 0(r19)
	and r18, r2, r5
	setlt.u r19, r22, r18
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r19, zero, .LBB0_225
# %bb.220:                              # %vector.body83
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r2, 0
	.loc	1 269 19 is_stmt 1              # parallel-rne.mlir:269:19
	setlt.u r18, r17, r18
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r18, zero, .LBB0_222
.LBB0_221:                              # %vector.body83
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r2, 16
	andi r18, r18, 1
	add.s r2, r2, r18
	add.s r2, r2, r6
	and r19, r2, r7
.LBB0_222:                              # %vector.body83
                                        #   in Loop: Header=BB0_210 Depth=3
	setlt.u r1, r17, r1
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	beq r1, zero, .LBB0_226
# %bb.223:                              # %vector.body83
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r9
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	beq r1, zero, .LBB0_227
.LBB0_224:                              # %vector.body83
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r11
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r1, zero, .LBB0_209
	j .LBB0_228
.LBB0_225:                              #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r2, r19
	.loc	1 269 19 is_stmt 1              # parallel-rne.mlir:269:19
	setlt.u r18, r17, r18
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	beq r18, zero, .LBB0_221
	j .LBB0_222
.LBB0_226:                              # %vector.body83
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r6
	and r12, r1, r7
	setlt.u r1, r17, r9
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r1, zero, .LBB0_224
.LBB0_227:                              # %vector.body83
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r6
	and r3, r1, r7
	setlt.u r1, r17, r11
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r1, zero, .LBB0_209
.LBB0_228:                              # %vector.body83
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r13, 16
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r6
	and r15, r1, r7
	j .LBB0_209
.LBB0_229:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r3
	addli r18, zero, 64
	addli r19, zero, 4
	addli r28, zero, 128
	.loc	1 249 7                         # parallel-rne.mlir:249:7
	mfence { sm }
	.loc	1 277 7                         # parallel-rne.mlir:277:7
	bneq r3, r27, .LBB0_136
.LBB0_230:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 112
	.loc	1 333 7 is_stmt 1               # parallel-rne.mlir:333:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_232
.LBB0_231:                              # %middle.block78
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[2:3], -312(r30)                # 8-byte Folded Reload
	addli r27, zero, 7
	.loc	1 340 9 is_stmt 1               # parallel-rne.mlir:340:9
	setlt.ul r1, r[2:3], r[20:21]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_290
.LBB0_232:                              # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_241 Depth 3
                                        #       Child Loop BB0_235 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[23:24], r[2:3], r27
	store.d r[2:3], -312(r30)               # 8-byte Folded Spill
	.loc	1 341 11 is_stmt 1              # parallel-rne.mlir:341:11
	bneq r16, r14, .LBB0_239
# %bb.233:                              # %scalar.ph72.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_235
.LBB0_234:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	setlt.ul r8, r[3:4], r[20:21]
	.loc	1 356 13 is_stmt 1              # parallel-rne.mlir:356:13
	add.s r1, r16, r1
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	stores.w r2, 0(r1)
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	beq r8, zero, .LBB0_231
.LBB0_235:                              # %scalar.ph72
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	add.ul r[1:2], r[3:4], r[23:24]
	slli r1, r1, 2
	add.s r2, r14, r1
	loads.w r8, 0(r2)
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	and r9, r8, r5
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	setlt.u r2, r22, r9
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r2, zero, .LBB0_237
# %bb.236:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r8, 0
	.loc	1 353 19 is_stmt 1              # parallel-rne.mlir:353:19
	setlt.u r9, r17, r9
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r9, zero, .LBB0_234
	j .LBB0_238
.LBB0_237:                              #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r8, r2
	.loc	1 353 19 is_stmt 1              # parallel-rne.mlir:353:19
	setlt.u r9, r17, r9
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r9, zero, .LBB0_234
.LBB0_238:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r6
	and r2, r2, r7
	j .LBB0_234
.LBB0_239:                              # %vector.body74.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_241
.LBB0_240:                              # %vector.body74
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 341 11 is_stmt 1              # parallel-rne.mlir:341:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	add.s r2, r16, r8
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	seteq.d r1, r[27:28], r[25:26]
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	stores.w r15, 12(r2)
	stores.w r3, 8(r2)
	stores.w r12, 4(r2)
	stores.w r19, 0(r2)
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	bneq r1, zero, .LBB0_231
.LBB0_241:                              # %vector.body74
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	add.ul r[1:2], r[27:28], r[23:24]
	slli r8, r1, 2
	add.s r19, r14, r8
	loads.w r13, 12(r19)
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	and r11, r13, r5
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	setlt.u r1, r22, r11
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r1, zero, .LBB0_243
# %bb.242:                              # %vector.body74
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r13, 0
	j .LBB0_244
.LBB0_243:                              #   in Loop: Header=BB0_241 Depth=3
	lui r1, 1024
	or r15, r13, r1
.LBB0_244:                              # %vector.body74
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r10, 8(r19)
	and r9, r10, r5
	setlt.u r1, r22, r9
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r1, zero, .LBB0_246
# %bb.245:                              # %vector.body74
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r10, 0
	j .LBB0_247
.LBB0_246:                              #   in Loop: Header=BB0_241 Depth=3
	lui r1, 1024
	or r3, r10, r1
.LBB0_247:                              # %vector.body74
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r4, 4(r19)
	and r1, r4, r5
	setlt.u r2, r22, r1
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r2, zero, .LBB0_249
# %bb.248:                              # %vector.body74
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_250
.LBB0_249:                              #   in Loop: Header=BB0_241 Depth=3
	lui r2, 1024
	or r12, r4, r2
.LBB0_250:                              # %vector.body74
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r2, 0(r19)
	and r18, r2, r5
	setlt.u r19, r22, r18
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r19, zero, .LBB0_252
# %bb.251:                              # %vector.body74
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r2, 0
	.loc	1 353 19 is_stmt 1              # parallel-rne.mlir:353:19
	setlt.u r18, r17, r18
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	beq r18, zero, .LBB0_253
	j .LBB0_254
.LBB0_252:                              #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r2, r19
	.loc	1 353 19 is_stmt 1              # parallel-rne.mlir:353:19
	setlt.u r18, r17, r18
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r18, zero, .LBB0_254
.LBB0_253:                              # %vector.body74
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r2, 16
	andi r18, r18, 1
	add.s r2, r2, r18
	add.s r2, r2, r6
	and r19, r2, r7
.LBB0_254:                              # %vector.body74
                                        #   in Loop: Header=BB0_241 Depth=3
	setlt.u r1, r17, r1
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	beq r1, zero, .LBB0_257
# %bb.255:                              # %vector.body74
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r9
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	beq r1, zero, .LBB0_258
.LBB0_256:                              # %vector.body74
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r11
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r1, zero, .LBB0_240
	j .LBB0_259
.LBB0_257:                              # %vector.body74
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r6
	and r12, r1, r7
	setlt.u r1, r17, r9
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r1, zero, .LBB0_256
.LBB0_258:                              # %vector.body74
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r6
	and r3, r1, r7
	setlt.u r1, r17, r11
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r1, zero, .LBB0_240
.LBB0_259:                              # %vector.body74
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r13, 16
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r6
	and r15, r1, r7
	j .LBB0_240
.LBB0_260:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 96
	.loc	1 305 7 is_stmt 1               # parallel-rne.mlir:305:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_262
.LBB0_261:                              # %middle.block69
                                        #   in Loop: Header=BB0_262 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 111
	load.d r[3:4], -312(r30)                # 8-byte Folded Reload
	addli r27, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 312 9 is_stmt 1               # parallel-rne.mlir:312:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_290
.LBB0_262:                              # %.preheader23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_271 Depth 3
                                        #       Child Loop BB0_265 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[23:24], r[2:3], r27
	store.d r[2:3], -312(r30)               # 8-byte Folded Spill
	.loc	1 313 11 is_stmt 1              # parallel-rne.mlir:313:11
	bneq r16, r14, .LBB0_269
# %bb.263:                              # %scalar.ph63.preheader
                                        #   in Loop: Header=BB0_262 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_265
.LBB0_264:                              # %scalar.ph63
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	setlt.ul r8, r[3:4], r[20:21]
	.loc	1 328 13 is_stmt 1              # parallel-rne.mlir:328:13
	add.s r1, r16, r1
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 328 13                        # parallel-rne.mlir:328:13
	stores.w r2, 0(r1)
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	beq r8, zero, .LBB0_261
.LBB0_265:                              # %scalar.ph63
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_262 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	add.ul r[1:2], r[3:4], r[23:24]
	slli r1, r1, 2
	add.s r2, r14, r1
	loads.w r8, 0(r2)
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	and r9, r8, r5
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	setlt.u r2, r22, r9
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r2, zero, .LBB0_267
# %bb.266:                              # %scalar.ph63
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r8, 0
	.loc	1 325 19 is_stmt 1              # parallel-rne.mlir:325:19
	setlt.u r9, r17, r9
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r9, zero, .LBB0_264
	j .LBB0_268
.LBB0_267:                              #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r8, r2
	.loc	1 325 19 is_stmt 1              # parallel-rne.mlir:325:19
	setlt.u r9, r17, r9
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r9, zero, .LBB0_264
.LBB0_268:                              # %scalar.ph63
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r6
	and r2, r2, r7
	j .LBB0_264
.LBB0_269:                              # %vector.body65.preheader
                                        #   in Loop: Header=BB0_262 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_271
.LBB0_270:                              # %vector.body65
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 313 11 is_stmt 1              # parallel-rne.mlir:313:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 328 13                        # parallel-rne.mlir:328:13
	add.s r2, r16, r8
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	seteq.d r1, r[27:28], r[25:26]
	.loc	1 328 13                        # parallel-rne.mlir:328:13
	stores.w r15, 12(r2)
	stores.w r3, 8(r2)
	stores.w r12, 4(r2)
	stores.w r19, 0(r2)
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	bneq r1, zero, .LBB0_261
.LBB0_271:                              # %vector.body65
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_262 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	add.ul r[1:2], r[27:28], r[23:24]
	slli r8, r1, 2
	add.s r19, r14, r8
	loads.w r13, 12(r19)
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	and r11, r13, r5
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	setlt.u r1, r22, r11
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r1, zero, .LBB0_273
# %bb.272:                              # %vector.body65
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r13, 0
	j .LBB0_274
.LBB0_273:                              #   in Loop: Header=BB0_271 Depth=3
	lui r1, 1024
	or r15, r13, r1
.LBB0_274:                              # %vector.body65
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r10, 8(r19)
	and r9, r10, r5
	setlt.u r1, r22, r9
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r1, zero, .LBB0_276
# %bb.275:                              # %vector.body65
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r10, 0
	j .LBB0_277
.LBB0_276:                              #   in Loop: Header=BB0_271 Depth=3
	lui r1, 1024
	or r3, r10, r1
.LBB0_277:                              # %vector.body65
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r4, 4(r19)
	and r1, r4, r5
	setlt.u r2, r22, r1
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r2, zero, .LBB0_279
# %bb.278:                              # %vector.body65
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_280
.LBB0_279:                              #   in Loop: Header=BB0_271 Depth=3
	lui r2, 1024
	or r12, r4, r2
.LBB0_280:                              # %vector.body65
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r2, 0(r19)
	and r18, r2, r5
	setlt.u r19, r22, r18
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r19, zero, .LBB0_282
# %bb.281:                              # %vector.body65
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r2, 0
	.loc	1 325 19 is_stmt 1              # parallel-rne.mlir:325:19
	setlt.u r18, r17, r18
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	beq r18, zero, .LBB0_283
	j .LBB0_284
.LBB0_282:                              #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r2, r19
	.loc	1 325 19 is_stmt 1              # parallel-rne.mlir:325:19
	setlt.u r18, r17, r18
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r18, zero, .LBB0_284
.LBB0_283:                              # %vector.body65
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r2, 16
	andi r18, r18, 1
	add.s r2, r2, r18
	add.s r2, r2, r6
	and r19, r2, r7
.LBB0_284:                              # %vector.body65
                                        #   in Loop: Header=BB0_271 Depth=3
	setlt.u r1, r17, r1
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	beq r1, zero, .LBB0_287
# %bb.285:                              # %vector.body65
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r9
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	beq r1, zero, .LBB0_288
.LBB0_286:                              # %vector.body65
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r11
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r1, zero, .LBB0_270
	j .LBB0_289
.LBB0_287:                              # %vector.body65
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r6
	and r12, r1, r7
	setlt.u r1, r17, r9
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r1, zero, .LBB0_286
.LBB0_288:                              # %vector.body65
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r6
	and r3, r1, r7
	setlt.u r1, r17, r11
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r1, zero, .LBB0_270
.LBB0_289:                              # %vector.body65
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r13, 16
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r6
	and r15, r1, r7
	j .LBB0_270
.LBB0_290:                              # %.sink.split54
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r3
	addli r18, zero, 64
	addli r19, zero, 4
	addli r28, zero, 128
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_291:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 361 7 is_stmt 1               # parallel-rne.mlir:361:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	loadli.w r1,  -320(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.292:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[12:13], -344(r30)              # 8-byte Folded Reload
	loadli.w r14,  -348(r30)                # 4-byte Folded Reload
	addli r15, zero, 17
	addli r21, zero, 1
	.loc	1 379 7 is_stmt 1               # parallel-rne.mlir:379:7
	bneq r3, zero, .LBB0_6
# %bb.293:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	loadli.w r1,  -376(r30)                 # 4-byte Folded Reload
	addli r3, zero, 896
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	loadli.w r8,  -372(r30)                 # 4-byte Folded Reload
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	load.d r[23:24], -368(r30)              # 8-byte Folded Reload
	addli r10, zero, 18
	zext_int2long r[3:4], r3
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	zext_int2long r[1:2], r1
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	sext_int2long r[8:9], r8
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	sll.d r[10:11], r[23:24], r10
	load.d r[23:24], 16(r30)
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	min.ul r[3:4], r[1:2], r[3:4]
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	add.ul r[10:11], r[23:24], r[10:11]
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	addli.d r[3:4], r[3:4], 128
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	max.ul r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	load.d r[3:4], -304(r30)                # 8-byte Folded Reload
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	min.ul r[1:2], r[1:2], r[25:26]
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	min.sl r[3:4], r[8:9], r[3:4]
	addli.d r[3:4], r[3:4], 128
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	max.sl r[3:4], r[3:4], r[8:9]
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	sub.sl r[3:4], r[3:4], r[8:9]
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	load.d r[8:9], -360(r30)                # 8-byte Folded Reload
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	min.sl r[3:4], r[3:4], r[25:26]
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	add.ul r[8:9], r[10:11], r[8:9]
	addli r10, zero, 12
	addli r11, zero, 5
	xwait r10, 0
	lock zero, r11
	ori r10, r16, 64
	dma_cfg r21, r21, zero, 0
	dma_cfg zero, r21, zero, 1
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r10, r18, 3
	addli r8, r1, 31
	slli r1, r1, 1
	addli r2, zero, 512
	srli r8, r8, 5
	andi r1, r1, 62
	dma_cfg r18, r28, r8, 4
	addli r8, zero, 2048
	dma_cfg r8, r2, r3, 5
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r3
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r21, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r1, 0
	j .LBB0_6
.LBB0_294:                              # %._crit_edge
	.loc	1 381 5                         # parallel-rne.mlir:381:5
	xsignal zero, 0
	bneq r3, zero, .LBB0_296
# %bb.295:
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
.LBB0_296:
	.loc	1 382 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:382:5
	addli sp, sp, 392
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
	.long	456                             # 0x1c8
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-f4mhlrke" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
