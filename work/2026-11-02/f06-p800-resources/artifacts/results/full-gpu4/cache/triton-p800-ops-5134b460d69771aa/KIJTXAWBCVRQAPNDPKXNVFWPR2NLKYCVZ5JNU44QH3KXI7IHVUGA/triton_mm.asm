	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-m6f17d7k" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -432
	addli r1, zero, 1
.Ltmp0:
	.loc	1 31 5 prologue_end             # parallel-rne.mlir:31:5
	core_id r11
	addli r30, sp, 368
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
	.loc	1 33 10 is_stmt 1               # parallel-rne.mlir:33:10
	load_param_i r3, 1
	loadli.w r4,  32(r30)
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -60(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -224(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -288(r30)
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r1, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	fmac.s r2, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	min.s r2, r2, r4
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	ble.s r2, r1, .LBB0_292
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 42 11 is_stmt 1               # parallel-rne.mlir:42:11
	sext_int2long r[8:9], r1
	lui r1, 524287
	addli r17, zero, 64
	addli r4, zero, 4
	lui r27, 522240
	addli r10, zero, 0
	storeli.w zero, -292(r30)               # 4-byte Folded Spill
	store.d r[2:3], -368(r30)               # 8-byte Folded Spill
	ori r25, r1, 4095
	lui r1, 7
	lui r2, 522239
	ori r28, r1, 4095
	lui r1, 1048560
	ori r3, r2, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	addli r2, zero, 11
	addli r17, zero, 64
	xsignal r2, 0
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	addli r2, zero, 12
	xsignal r2, 0
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[8:9], -328(r30)                # 8-byte Folded Reload
	.loc	1 50 5 is_stmt 1                # parallel-rne.mlir:50:5
	load.d r[4:5], -368(r30)                # 8-byte Folded Reload
	loadli.w r10,  -332(r30)                # 4-byte Folded Reload
	addli.d r[8:9], r[8:9], 1
	setlt.sl r2, r[8:9], r[4:5]
	addli r4, zero, 4
	beq r2, zero, .LBB0_292
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_28 Depth 3
                                        #     Child Loop BB0_71 Depth 2
                                        #       Child Loop BB0_80 Depth 3
                                        #       Child Loop BB0_74 Depth 3
                                        #     Child Loop BB0_41 Depth 2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_44 Depth 3
                                        #     Child Loop BB0_102 Depth 2
                                        #       Child Loop BB0_111 Depth 3
                                        #       Child Loop BB0_105 Depth 3
                                        #     Child Loop BB0_168 Depth 2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_171 Depth 3
                                        #     Child Loop BB0_199 Depth 2
                                        #       Child Loop BB0_208 Depth 3
                                        #       Child Loop BB0_202 Depth 3
                                        #     Child Loop BB0_138 Depth 2
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_141 Depth 3
                                        #     Child Loop BB0_260 Depth 2
                                        #       Child Loop BB0_269 Depth 3
                                        #       Child Loop BB0_263 Depth 3
                                        #     Child Loop BB0_230 Depth 2
                                        #       Child Loop BB0_239 Depth 3
                                        #       Child Loop BB0_233 Depth 3
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r24, zero, 17
	addli r22, zero, 14
	addli r20, zero, 13
	addli r16, zero, 7
	.loc	1 77 7 is_stmt 1                # parallel-rne.mlir:77:7
	bneq r11, r4, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	loadli.w r4,  28(r30)
	addli r5, zero, 5
	store.d r[8:9], -328(r30)               # 8-byte Folded Spill
	.loc	1 78 7 is_stmt 1                # parallel-rne.mlir:78:7
	load.d r[14:15], 8(r30)
	addli r7, zero, 0
	mod.s r6, r10, r5
	addli r5, zero, 1
	addli r10, r10, 1
	div.s r2, r8, r2
	addli r9, zero, 8
	storeli.w r10, -332(r30)                # 4-byte Folded Spill
	lui r10, 80
	slli r6, r6, 16
	div.s r2, r2, r4
	add.s r23, r6, r10
	div.s r4, r2, r17
	slli r8, r4, 3
	slli r4, r4, 6
	sub.s r5, r5, r8
	sub.s r4, r2, r4
	min.s r5, r5, r9
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	loadli.w r9,  -288(r30)
	div.s r4, r4, r5
	mod.s r2, r2, r5
	addli r5, zero, 1
	zext_int2long r[10:11], r4
	add.s r2, r8, r2
	slli r8, r4, 7
	sll.d r[10:11], r[10:11], r16
	slli r4, r2, 7
	zext_int2long r[12:13], r2
	addli r2, zero, 15
	storeli.w r8, -360(r30)                 # 4-byte Folded Spill
	store.d r[10:11], -344(r30)             # 8-byte Folded Spill
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	sll.d r[10:11], r[10:11], r5
	store.d r[12:13], -352(r30)             # 8-byte Folded Spill
	sll.d r[12:13], r[12:13], r2
	storeli.w r4, -356(r30)                 # 4-byte Folded Spill
	addli r4, zero, 0
	add.ul r[10:11], r[14:15], r[10:11]
	store.d r[10:11], -304(r30)             # 8-byte Folded Spill
	load.d r[10:11], 0(r30)
	add.ul r[18:19], r[10:11], r[12:13]
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r11
	j .LBB0_12
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r4, 160
	addli r14, zero, 4
	addli r9, zero, 1
	addli r15, zero, 128
	addli r21, zero, 256
	addli r22, zero, 14
	ori r4, r4, 64
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	lock zero, r14
	dma_cfg r9, r9, zero, 0
	add.s r2, r2, r4
	addli r4, zero, 64
	dma_cfg zero, r11, zero, 2
	dma_cfg r2, r10, r4, 3
	addli r11, zero, 2
	addli r10, zero, 5
	addli r2, zero, 6
	dma_cfg r15, r4, r11, 4
	dma_cfg r21, r21, r15, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 7
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 18
	dma_cfg zero, zero, r24, 10
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
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r13, zero, r4, 3
	dma_cfg r15, zero, r11, 4
	dma_cfg r21, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r11, 0
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r11
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r2,  -224(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r4,  -60(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r2, r2, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r4, r4, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r2, -224(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r4, -60(r30)
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	andi r2, r5, 1
	bneq r2, zero, .LBB0_24
	j .LBB0_31
.LBB0_12:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_28 Depth 3
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r10,  -292(r30)                # 4-byte Folded Reload
	.loc	1 95 15 is_stmt 1               # parallel-rne.mlir:95:15
	addli r2, zero, 24
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r8, zero, 15
	lui r12, 160
	mod.s r8, r9, r8
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	mod.s r2, r10, r2
	addli r10, r10, 1
	storeli.w r10, -292(r30)                # 4-byte Folded Spill
	slli r10, r2, 15
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	slli r2, r8, 15
	addli r8, r9, 1
	add.s r13, r2, r12
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r12, zero, 2
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	storeli.w r8, -288(r30)
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	beq r11, r12, .LBB0_16
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[14:15], r4
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r12
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r4, zero, 1
	bneq r12, r4, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r12, zero, 7
	addli r16, zero, 3
	addli r17, zero, 14
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	sll.d r[10:11], r[14:15], r12
	xwait r16, 0
	add.ul r[10:11], r[18:19], r[10:11]
	blt.s r17, r9, .LBB0_10
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r14, zero, 5
	addli r9, zero, 1
	addli r15, zero, 2
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r4, zero, 4
	lock zero, r14
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 6
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 12
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 16
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 18
	dma_cfg zero, zero, r24, 10
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
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r13, zero, r4, 3
	addli r4, zero, 128
	dma_cfg r4, zero, r15, 4
	addli r15, zero, 256
	dma_cfg r15, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	j .LBB0_10
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r4, zero, 2
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	addli r2, zero, 5
	xwait r4, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 64
	ds_cfg r4, zero, 0
	addli r4, zero, 128
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r4, zero, 13
	shuffle_batch r10, r13, r2, 1
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	addli r2, zero, 4
	xsignal r2, 0
	j .LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r4,  -60(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r2,  -224(r30)
	addli r9, zero, 40
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	lui r13, 280
	mod.s r11, r4, r22
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	mod.s r9, r2, r9
	addli r2, r2, 1
	storeli.w r2, -224(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r11, r11, 15
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	slli r2, r9, 15
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r9, r4, 1
	add.s r13, r11, r13
	storeli.w r9, -60(r30)
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	beq r12, r16, .LBB0_22
# %bb.18:                               #   in Loop: Header=BB0_12 Depth=2
	addli r9, zero, 6
	bneq r12, r9, .LBB0_25
# %bb.19:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r26, zero, 17
	addli r17, zero, 13
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	sll.d r[9:10], r[14:15], r26
	load.d r[14:15], -304(r30)              # 8-byte Folded Reload
	add.ul r[14:15], r[14:15], r[9:10]
	addli r10, zero, 7
	xwait r10, 0
	blt.s r17, r4, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r9, zero, 5
	addli r4, zero, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r2, zero, 2
	addli r12, zero, 4
	addli r16, zero, 128
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 3
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 6
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 18
	dma_cfg zero, zero, r26, 10
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
	dma_cfg r4, r4, zero, 0
	dma_cfg r4, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r13, zero, r2, 3
	dma_cfg r16, zero, r12, 4
	addli r12, zero, 512
	dma_cfg r12, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
.LBB0_21:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r2, 280
	addli r12, zero, 4
	addli r9, zero, 1
	addli r4, zero, 64
	addli r21, zero, 6
	addli r16, zero, 7
	addli r20, zero, 13
	addli r24, zero, 17
	ori r2, r2, 64
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	lock zero, r12
	dma_cfg r9, r9, zero, 0
	add.s r2, r11, r2
	dma_cfg zero, r15, zero, 2
	addli r11, zero, 5
	dma_cfg r2, r14, r4, 3
	addli r14, zero, 128
	addli r15, zero, 512
	addli r2, zero, 2048
	dma_cfg r14, r4, r12, 4
	dma_cfg r15, r2, r4, 5
	addli r2, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 3
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 18
	dma_cfg zero, zero, r26, 10
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
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r13, zero, r4, 3
	dma_cfg r14, zero, r12, 4
	dma_cfg r15, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r21, 0
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	j .LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r4, zero, 6
	addli r9, zero, 128
	xwait r4, 0
	addli r4, zero, 9
	xwait r4, 0
	addli r4, zero, 2
	lock zero, zero
	ds_cfg r4, zero, 0
	addli r4, zero, 64
	ds_cfg r9, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r9, zero, 13
	shuffle_coa r2, r13, r4, 2
	addli r2, zero, 8
	unlock zero
	xsignal r16, 0
	xsignal r2, 0
.LBB0_23:                               # %.thread20
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r11
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	andi r2, r5, 1
	beq r2, zero, .LBB0_31
.LBB0_24:                               # %.backedge
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 0
	.loc	1 122 15 is_stmt 1              # parallel-rne.mlir:122:15
	addli r7, r7, 1
	addli r4, zero, 1
	addli r9, r8, 0
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	j .LBB0_12
.LBB0_25:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	andi r5, r5, 1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r11
	addli r4, zero, 4
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	bneq r11, r4, .LBB0_30
# %bb.26:                               #   in Loop: Header=BB0_12 Depth=2
	xwait r4, 0
	addli r4, zero, 8
	addli r9, zero, 1
	addli r11, zero, 0
	addli r13, zero, 64
	addli r14, zero, 4
	addli r15, zero, 128
	xwait r4, 0
	addli r4, zero, 1
	beq r7, zero, .LBB0_28
.LBB0_27:                               # %.preheader30
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r11, 14
	slli r11, r11, 8
	lock zero, r4
	mm_cfg r13, r13, r15, 0
	or r12, r12, r2
	or r11, r11, r23
	mm_cfg r14, r14, r4, 2
	mm_acc r11, r10, r12, 8
	andi r12, r9, 1
	addli r11, zero, 1
	addli r9, zero, 0
	unlock r4
	bneq r12, zero, .LBB0_27
	j .LBB0_29
.LBB0_28:                               # %.preheader29
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r11, 14
	slli r11, r11, 8
	lock zero, r4
	mm_cfg r13, r13, r15, 0
	or r12, r12, r2
	or r11, r11, r23
	mm_cfg r14, r14, r4, 2
	mm r11, r10, r12, 8
	andi r12, r9, 1
	addli r11, zero, 1
	addli r9, zero, 0
	unlock r4
	bneq r12, zero, .LBB0_28
.LBB0_29:                               # %.thread20.thread43
                                        #   in Loop: Header=BB0_12 Depth=2
	addli r2, zero, 5
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r11
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	bneq r5, zero, .LBB0_24
	j .LBB0_32
.LBB0_30:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	bneq r5, zero, .LBB0_24
	j .LBB0_33
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 125 7 is_stmt 1               # parallel-rne.mlir:125:7
	addli r2, zero, 4
	bneq r11, r2, .LBB0_33
.LBB0_32:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	storeli.w zero, -316(r30)               # 4-byte Folded Spill
	xsignal r2, 0
	j .LBB0_36
.LBB0_33:                               # %.thread42
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 3
	.loc	1 130 7 is_stmt 1               # parallel-rne.mlir:130:7
	bneq r11, r2, .LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	storeli.w r2, -316(r30)                 # 4-byte Folded Spill
	xwait r20, 0
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -316(r30)               # 4-byte Folded Spill
.LBB0_36:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	addli r2, zero, 255
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	xfence
	addli r4, zero, 7
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	mfence { lm, sm, gm }
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	csr_set csr5, r2
	addli r2, zero, 128
	sync_core
	zext_int2long r[7:8], r2
	addli r2, zero, 127
	zext_int2long r[18:19], r2
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	beq r11, zero, .LBB0_69
# %bb.37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r2, zero, 2
	beq r11, r2, .LBB0_100
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 1
	bneq r11, r2, .LBB0_131
# %bb.39:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[9:10], zero
	addli r2, zero, 16
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	store.d r[9:10], -312(r30)              # 8-byte Folded Spill
	zext_int2long r[9:10], r2
	xfence
	mfence { lm, sm, gm }
	j .LBB0_41
.LBB0_40:                               # %middle.block104
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 31
	load.d r[9:10], -304(r30)               # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 171 9 is_stmt 1               # parallel-rne.mlir:171:9
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r4, zero, 7
	beq r2, zero, .LBB0_130
.LBB0_41:                               # %.preheader26
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_44 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[16:17], r[9:10], r4
	store.d r[9:10], -304(r30)              # 8-byte Folded Spill
	.loc	1 172 11 is_stmt 1              # parallel-rne.mlir:172:11
	bneq r6, r23, .LBB0_48
# %bb.42:                               # %scalar.ph98.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_44
.LBB0_43:                               # %scalar.ph98
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	setlt.ul r10, r[4:5], r[18:19]
	.loc	1 187 13 is_stmt 1              # parallel-rne.mlir:187:13
	add.s r2, r6, r2
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	stores.w r9, 0(r2)
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	beq r10, zero, .LBB0_40
.LBB0_44:                               # %scalar.ph98
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.ul r[9:10], r[4:5], r[16:17]
	slli r2, r9, 2
	add.s r9, r23, r2
	loads.w r10, 0(r9)
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r11, r10, r25
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	setlt.u r9, r27, r11
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r9, zero, .LBB0_46
# %bb.45:                               # %scalar.ph98
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r11, r3, r11
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r11, zero, .LBB0_43
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r11, r3, r11
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r11, zero, .LBB0_43
.LBB0_47:                               # %scalar.ph98
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r28
	and r9, r9, r1
	j .LBB0_43
.LBB0_48:                               # %vector.body100.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	load.d r[10:11], -312(r30)              # 8-byte Folded Reload
	j .LBB0_50
.LBB0_49:                               # %vector.body100
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 172 11 is_stmt 1              # parallel-rne.mlir:172:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	add.s r5, r6, r5
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	seteq.d r4, r[10:11], r[7:8]
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	stores.w r2, 12(r5)
	stores.w r15, 8(r5)
	stores.w r24, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	bneq r4, zero, .LBB0_40
.LBB0_50:                               # %vector.body100
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.ul r[4:5], r[10:11], r[16:17]
	slli r5, r4, 2
	add.s r12, r23, r5
	loads.w r22, 12(r12)
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r20, r22, r25
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	setlt.u r2, r27, r20
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r2, zero, .LBB0_52
# %bb.51:                               # %vector.body100
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r22, 0
	j .LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_50 Depth=3
	lui r2, 1024
	or r2, r22, r2
.LBB0_53:                               # %vector.body100
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r21, 8(r12)
	and r9, r21, r25
	setlt.u r4, r27, r9
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r4, zero, .LBB0_55
# %bb.54:                               # %vector.body100
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r21, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_50 Depth=3
	lui r4, 1024
	or r15, r21, r4
.LBB0_56:                               # %vector.body100
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r4, 4(r12)
	and r13, r4, r25
	setlt.u r14, r27, r13
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r14, zero, .LBB0_58
# %bb.57:                               # %vector.body100
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_50 Depth=3
	lui r14, 1024
	or r24, r4, r14
.LBB0_59:                               # %vector.body100
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r14, 0(r12)
	and r26, r14, r25
	setlt.u r12, r27, r26
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r12, zero, .LBB0_61
# %bb.60:                               # %vector.body100
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r14, 0
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r26, r3, r26
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r26, zero, .LBB0_62
	j .LBB0_63
.LBB0_61:                               #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r14, r12
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r26, r3, r26
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r26, zero, .LBB0_63
.LBB0_62:                               # %vector.body100
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r14, 16
	andi r12, r12, 1
	add.s r12, r14, r12
	add.s r12, r12, r28
	and r12, r12, r1
.LBB0_63:                               # %vector.body100
                                        #   in Loop: Header=BB0_50 Depth=3
	setlt.u r13, r3, r13
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r13, zero, .LBB0_66
# %bb.64:                               # %vector.body100
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r4, zero, .LBB0_67
.LBB0_65:                               # %vector.body100
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r20
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r4, zero, .LBB0_49
	j .LBB0_68
.LBB0_66:                               # %vector.body100
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r4, 16
	andi r13, r13, 1
	add.s r4, r4, r13
	add.s r4, r4, r28
	and r24, r4, r1
	setlt.u r4, r3, r9
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r4, zero, .LBB0_65
.LBB0_67:                               # %vector.body100
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r28
	and r15, r4, r1
	setlt.u r4, r3, r20
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r4, zero, .LBB0_49
.LBB0_68:                               # %vector.body100
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r28
	and r2, r2, r1
	j .LBB0_49
.LBB0_69:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	xfence
	zext_int2long r[9:10], zero
	mfence { lm, sm, gm }
	j .LBB0_71
.LBB0_70:                               # %middle.block122
                                        #   in Loop: Header=BB0_71 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 15
	load.d r[9:10], -304(r30)               # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 143 9 is_stmt 1               # parallel-rne.mlir:143:9
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r4, zero, 7
	beq r2, zero, .LBB0_99
.LBB0_71:                               # %.preheader28
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_80 Depth 3
                                        #       Child Loop BB0_74 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[13:14], r[9:10], r4
	store.d r[9:10], -304(r30)              # 8-byte Folded Spill
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	bneq r6, r23, .LBB0_78
# %bb.72:                               # %scalar.ph116.preheader
                                        #   in Loop: Header=BB0_71 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_74
.LBB0_73:                               # %scalar.ph116
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	setlt.ul r10, r[4:5], r[18:19]
	.loc	1 159 13 is_stmt 1              # parallel-rne.mlir:159:13
	add.s r2, r6, r2
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r9, 0(r2)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	beq r10, zero, .LBB0_70
.LBB0_74:                               # %scalar.ph116
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[9:10], r[4:5], r[13:14]
	slli r2, r9, 2
	add.s r9, r23, r2
	loads.w r10, 0(r9)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r11, r10, r25
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r9, r27, r11
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r9, zero, .LBB0_76
# %bb.75:                               # %scalar.ph116
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r11, r3, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r11, zero, .LBB0_73
	j .LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r11, r3, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r11, zero, .LBB0_73
.LBB0_77:                               # %scalar.ph116
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r28
	and r9, r9, r1
	j .LBB0_73
.LBB0_78:                               # %vector.body118.preheader
                                        #   in Loop: Header=BB0_71 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_80
.LBB0_79:                               # %vector.body118
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r5, r6, r5
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	seteq.d r2, r[10:11], r[7:8]
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r22, 12(r5)
	stores.w r21, 8(r5)
	stores.w r4, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	bneq r2, zero, .LBB0_70
.LBB0_80:                               # %vector.body118
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[4:5], r[10:11], r[13:14]
	slli r5, r4, 2
	add.s r12, r23, r5
	loads.w r2, 12(r12)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r20, r2, r25
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r4, r27, r20
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r4, zero, .LBB0_82
# %bb.81:                               # %vector.body118
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r22, r2, 0
	j .LBB0_83
.LBB0_82:                               #   in Loop: Header=BB0_80 Depth=3
	lui r4, 1024
	or r22, r2, r4
.LBB0_83:                               # %vector.body118
                                        #   in Loop: Header=BB0_80 Depth=3
	loads.w r15, 8(r12)
	and r9, r15, r25
	setlt.u r4, r27, r9
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r4, zero, .LBB0_85
# %bb.84:                               # %vector.body118
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r15, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_80 Depth=3
	lui r4, 1024
	or r21, r15, r4
.LBB0_86:                               # %vector.body118
                                        #   in Loop: Header=BB0_80 Depth=3
	loads.w r24, 4(r12)
	and r16, r24, r25
	setlt.u r4, r27, r16
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r4, zero, .LBB0_88
# %bb.87:                               # %vector.body118
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r24, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_80 Depth=3
	lui r4, 1024
	or r4, r24, r4
.LBB0_89:                               # %vector.body118
                                        #   in Loop: Header=BB0_80 Depth=3
	loads.w r17, 0(r12)
	and r26, r17, r25
	setlt.u r12, r27, r26
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r12, zero, .LBB0_91
# %bb.90:                               # %vector.body118
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r17, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r26, r3, r26
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r26, zero, .LBB0_92
	j .LBB0_93
.LBB0_91:                               #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r17, r12
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r26, r3, r26
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r26, zero, .LBB0_93
.LBB0_92:                               # %vector.body118
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r17, 16
	andi r12, r12, 1
	add.s r12, r17, r12
	add.s r12, r12, r28
	and r12, r12, r1
.LBB0_93:                               # %vector.body118
                                        #   in Loop: Header=BB0_80 Depth=3
	setlt.u r16, r3, r16
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r16, zero, .LBB0_96
# %bb.94:                               # %vector.body118
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r9
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r9, zero, .LBB0_97
.LBB0_95:                               # %vector.body118
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r20
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r9, zero, .LBB0_79
	j .LBB0_98
.LBB0_96:                               # %vector.body118
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r28
	and r4, r4, r1
	setlt.u r9, r3, r9
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r9, zero, .LBB0_95
.LBB0_97:                               # %vector.body118
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r15, 16
	andi r9, r9, 1
	add.s r9, r15, r9
	add.s r9, r9, r28
	and r21, r9, r1
	setlt.u r9, r3, r20
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r9, zero, .LBB0_79
.LBB0_98:                               # %vector.body118
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r2, 16
	andi r9, r9, 1
	add.s r2, r2, r9
	add.s r2, r2, r28
	and r22, r2, r1
	j .LBB0_79
.LBB0_99:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r11
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	mfence { sm }
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r2, zero, 2
	bneq r11, r2, .LBB0_38
.LBB0_100:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 192 7 is_stmt 1               # parallel-rne.mlir:192:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_102
.LBB0_101:                              # %middle.block113
                                        #   in Loop: Header=BB0_102 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 47
	load.d r[9:10], -304(r30)               # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 199 9 is_stmt 1               # parallel-rne.mlir:199:9
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r4, zero, 7
	beq r2, zero, .LBB0_130
.LBB0_102:                              # %.preheader27
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_111 Depth 3
                                        #       Child Loop BB0_105 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[13:14], r[9:10], r4
	store.d r[9:10], -304(r30)              # 8-byte Folded Spill
	.loc	1 200 11 is_stmt 1              # parallel-rne.mlir:200:11
	bneq r6, r23, .LBB0_109
# %bb.103:                              # %scalar.ph107.preheader
                                        #   in Loop: Header=BB0_102 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_105
.LBB0_104:                              # %scalar.ph107
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	setlt.ul r10, r[4:5], r[18:19]
	.loc	1 215 13 is_stmt 1              # parallel-rne.mlir:215:13
	add.s r2, r6, r2
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	stores.w r9, 0(r2)
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	beq r10, zero, .LBB0_101
.LBB0_105:                              # %scalar.ph107
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	add.ul r[9:10], r[4:5], r[13:14]
	slli r2, r9, 2
	add.s r9, r23, r2
	loads.w r10, 0(r9)
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	and r11, r10, r25
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	setlt.u r9, r27, r11
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r9, zero, .LBB0_107
# %bb.106:                              # %scalar.ph107
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r11, r3, r11
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r11, zero, .LBB0_104
	j .LBB0_108
.LBB0_107:                              #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r11, r3, r11
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r11, zero, .LBB0_104
.LBB0_108:                              # %scalar.ph107
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r28
	and r9, r9, r1
	j .LBB0_104
.LBB0_109:                              # %vector.body109.preheader
                                        #   in Loop: Header=BB0_102 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_111
.LBB0_110:                              # %vector.body109
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 200 11 is_stmt 1              # parallel-rne.mlir:200:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	add.s r5, r6, r5
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	seteq.d r4, r[10:11], r[7:8]
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	stores.w r2, 12(r5)
	stores.w r15, 8(r5)
	stores.w r24, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	bneq r4, zero, .LBB0_101
.LBB0_111:                              # %vector.body109
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	add.ul r[4:5], r[10:11], r[13:14]
	slli r5, r4, 2
	add.s r12, r23, r5
	loads.w r22, 12(r12)
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	and r20, r22, r25
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	setlt.u r2, r27, r20
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r2, zero, .LBB0_113
# %bb.112:                              # %vector.body109
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r22, 0
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_111 Depth=3
	lui r2, 1024
	or r2, r22, r2
.LBB0_114:                              # %vector.body109
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r21, 8(r12)
	and r9, r21, r25
	setlt.u r4, r27, r9
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r4, zero, .LBB0_116
# %bb.115:                              # %vector.body109
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r21, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_111 Depth=3
	lui r4, 1024
	or r15, r21, r4
.LBB0_117:                              # %vector.body109
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r4, 4(r12)
	and r16, r4, r25
	setlt.u r17, r27, r16
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r17, zero, .LBB0_119
# %bb.118:                              # %vector.body109
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_111 Depth=3
	lui r17, 1024
	or r24, r4, r17
.LBB0_120:                              # %vector.body109
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r17, 0(r12)
	and r26, r17, r25
	setlt.u r12, r27, r26
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r12, zero, .LBB0_122
# %bb.121:                              # %vector.body109
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r17, 0
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r26, r3, r26
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r26, zero, .LBB0_123
	j .LBB0_124
.LBB0_122:                              #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r17, r12
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r26, r3, r26
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r26, zero, .LBB0_124
.LBB0_123:                              # %vector.body109
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r17, 16
	andi r12, r12, 1
	add.s r12, r17, r12
	add.s r12, r12, r28
	and r12, r12, r1
.LBB0_124:                              # %vector.body109
                                        #   in Loop: Header=BB0_111 Depth=3
	setlt.u r16, r3, r16
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r16, zero, .LBB0_127
# %bb.125:                              # %vector.body109
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r4, zero, .LBB0_128
.LBB0_126:                              # %vector.body109
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r20
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r4, zero, .LBB0_110
	j .LBB0_129
.LBB0_127:                              # %vector.body109
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r4, 16
	andi r16, r16, 1
	add.s r4, r4, r16
	add.s r4, r4, r28
	and r24, r4, r1
	setlt.u r4, r3, r9
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r4, zero, .LBB0_126
.LBB0_128:                              # %vector.body109
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r28
	and r15, r4, r1
	setlt.u r4, r3, r20
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r4, zero, .LBB0_110
.LBB0_129:                              # %vector.body109
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r28
	and r2, r2, r1
	j .LBB0_110
.LBB0_130:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r11
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_131:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 220 7 is_stmt 1               # parallel-rne.mlir:220:7
	loadli.w r2,  -316(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_166
# %bb.132:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	addli r2, zero, 4
	beq r11, r2, .LBB0_197
.LBB0_133:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	beq r11, r4, .LBB0_228
.LBB0_134:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 6
	beq r11, r2, .LBB0_258
# %bb.135:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 5
	bneq r11, r2, .LBB0_289
# %bb.136:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_138
.LBB0_137:                              # %middle.block
                                        #   in Loop: Header=BB0_138 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 95
	load.d r[9:10], -304(r30)               # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 283 9 is_stmt 1               # parallel-rne.mlir:283:9
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r4, zero, 7
	beq r2, zero, .LBB0_288
.LBB0_138:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_141 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[13:14], r[9:10], r4
	store.d r[9:10], -304(r30)              # 8-byte Folded Spill
	.loc	1 284 11 is_stmt 1              # parallel-rne.mlir:284:11
	bneq r6, r23, .LBB0_145
# %bb.139:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_138 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_141
.LBB0_140:                              # %scalar.ph
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	setlt.ul r10, r[4:5], r[18:19]
	.loc	1 299 13 is_stmt 1              # parallel-rne.mlir:299:13
	add.s r2, r6, r2
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	stores.w r9, 0(r2)
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	beq r10, zero, .LBB0_137
.LBB0_141:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_138 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.ul r[9:10], r[4:5], r[13:14]
	slli r2, r9, 2
	add.s r9, r23, r2
	loads.w r10, 0(r9)
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	and r11, r10, r25
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	setlt.u r9, r27, r11
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r9, zero, .LBB0_143
# %bb.142:                              # %scalar.ph
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r11, r3, r11
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r11, zero, .LBB0_140
	j .LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r11, r3, r11
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r11, zero, .LBB0_140
.LBB0_144:                              # %scalar.ph
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r28
	and r9, r9, r1
	j .LBB0_140
.LBB0_145:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_138 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_147
.LBB0_146:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 284 11 is_stmt 1              # parallel-rne.mlir:284:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	add.s r5, r6, r5
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	seteq.d r4, r[10:11], r[7:8]
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	stores.w r2, 12(r5)
	stores.w r15, 8(r5)
	stores.w r24, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	bneq r4, zero, .LBB0_137
.LBB0_147:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_138 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.ul r[4:5], r[10:11], r[13:14]
	slli r5, r4, 2
	add.s r12, r23, r5
	loads.w r22, 12(r12)
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	and r20, r22, r25
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	setlt.u r2, r27, r20
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r2, zero, .LBB0_149
# %bb.148:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r22, 0
	j .LBB0_150
.LBB0_149:                              #   in Loop: Header=BB0_147 Depth=3
	lui r2, 1024
	or r2, r22, r2
.LBB0_150:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	loads.w r21, 8(r12)
	and r9, r21, r25
	setlt.u r4, r27, r9
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r4, zero, .LBB0_152
# %bb.151:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r21, 0
	j .LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_147 Depth=3
	lui r4, 1024
	or r15, r21, r4
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	loads.w r4, 4(r12)
	and r16, r4, r25
	setlt.u r17, r27, r16
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r17, zero, .LBB0_155
# %bb.154:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_156
.LBB0_155:                              #   in Loop: Header=BB0_147 Depth=3
	lui r17, 1024
	or r24, r4, r17
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	loads.w r17, 0(r12)
	and r26, r17, r25
	setlt.u r12, r27, r26
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r12, zero, .LBB0_162
# %bb.157:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r17, 0
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r26, r3, r26
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r26, zero, .LBB0_159
.LBB0_158:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r17, 16
	andi r12, r12, 1
	add.s r12, r17, r12
	add.s r12, r12, r28
	and r12, r12, r1
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	setlt.u r16, r3, r16
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r16, zero, .LBB0_163
# %bb.160:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r4, zero, .LBB0_164
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r20
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r4, zero, .LBB0_146
	j .LBB0_165
.LBB0_162:                              #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r17, r12
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r26, r3, r26
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r26, zero, .LBB0_158
	j .LBB0_159
.LBB0_163:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r4, 16
	andi r16, r16, 1
	add.s r4, r4, r16
	add.s r4, r4, r28
	and r24, r4, r1
	setlt.u r4, r3, r9
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r4, zero, .LBB0_161
.LBB0_164:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r28
	and r15, r4, r1
	setlt.u r4, r3, r20
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r4, zero, .LBB0_146
.LBB0_165:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r28
	and r2, r2, r1
	j .LBB0_146
.LBB0_166:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 48
	.loc	1 220 7 is_stmt 1               # parallel-rne.mlir:220:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_168
.LBB0_167:                              # %middle.block95
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 63
	load.d r[9:10], -304(r30)               # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 227 9 is_stmt 1               # parallel-rne.mlir:227:9
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r4, zero, 7
	beq r2, zero, .LBB0_196
.LBB0_168:                              # %.preheader25
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_171 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[13:14], r[9:10], r4
	store.d r[9:10], -304(r30)              # 8-byte Folded Spill
	.loc	1 228 11 is_stmt 1              # parallel-rne.mlir:228:11
	bneq r6, r23, .LBB0_175
# %bb.169:                              # %scalar.ph89.preheader
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_171
.LBB0_170:                              # %scalar.ph89
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	setlt.ul r10, r[4:5], r[18:19]
	.loc	1 243 13 is_stmt 1              # parallel-rne.mlir:243:13
	add.s r2, r6, r2
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	stores.w r9, 0(r2)
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	beq r10, zero, .LBB0_167
.LBB0_171:                              # %scalar.ph89
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.ul r[9:10], r[4:5], r[13:14]
	slli r2, r9, 2
	add.s r9, r23, r2
	loads.w r10, 0(r9)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	and r11, r10, r25
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	setlt.u r9, r27, r11
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r9, zero, .LBB0_173
# %bb.172:                              # %scalar.ph89
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r11, r3, r11
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r11, zero, .LBB0_170
	j .LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r11, r3, r11
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r11, zero, .LBB0_170
.LBB0_174:                              # %scalar.ph89
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r28
	and r9, r9, r1
	j .LBB0_170
.LBB0_175:                              # %vector.body91.preheader
                                        #   in Loop: Header=BB0_168 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_177
.LBB0_176:                              # %vector.body91
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 228 11 is_stmt 1              # parallel-rne.mlir:228:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	add.s r5, r6, r5
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	seteq.d r4, r[10:11], r[7:8]
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	stores.w r2, 12(r5)
	stores.w r15, 8(r5)
	stores.w r24, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	bneq r4, zero, .LBB0_167
.LBB0_177:                              # %vector.body91
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.ul r[4:5], r[10:11], r[13:14]
	slli r5, r4, 2
	add.s r12, r23, r5
	loads.w r22, 12(r12)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	and r20, r22, r25
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	setlt.u r2, r27, r20
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r2, zero, .LBB0_179
# %bb.178:                              # %vector.body91
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r22, 0
	j .LBB0_180
.LBB0_179:                              #   in Loop: Header=BB0_177 Depth=3
	lui r2, 1024
	or r2, r22, r2
.LBB0_180:                              # %vector.body91
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r21, 8(r12)
	and r9, r21, r25
	setlt.u r4, r27, r9
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r4, zero, .LBB0_182
# %bb.181:                              # %vector.body91
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r21, 0
	j .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_177 Depth=3
	lui r4, 1024
	or r15, r21, r4
.LBB0_183:                              # %vector.body91
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r4, 4(r12)
	and r16, r4, r25
	setlt.u r17, r27, r16
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r17, zero, .LBB0_185
# %bb.184:                              # %vector.body91
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_177 Depth=3
	lui r17, 1024
	or r24, r4, r17
.LBB0_186:                              # %vector.body91
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r17, 0(r12)
	and r26, r17, r25
	setlt.u r12, r27, r26
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r12, zero, .LBB0_192
# %bb.187:                              # %vector.body91
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r17, 0
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r26, r3, r26
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r26, zero, .LBB0_189
.LBB0_188:                              # %vector.body91
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r17, 16
	andi r12, r12, 1
	add.s r12, r17, r12
	add.s r12, r12, r28
	and r12, r12, r1
.LBB0_189:                              # %vector.body91
                                        #   in Loop: Header=BB0_177 Depth=3
	setlt.u r16, r3, r16
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r16, zero, .LBB0_193
# %bb.190:                              # %vector.body91
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r4, zero, .LBB0_194
.LBB0_191:                              # %vector.body91
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r20
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r4, zero, .LBB0_176
	j .LBB0_195
.LBB0_192:                              #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r17, r12
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r26, r3, r26
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r26, zero, .LBB0_188
	j .LBB0_189
.LBB0_193:                              # %vector.body91
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r4, 16
	andi r16, r16, 1
	add.s r4, r4, r16
	add.s r4, r4, r28
	and r24, r4, r1
	setlt.u r4, r3, r9
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r4, zero, .LBB0_191
.LBB0_194:                              # %vector.body91
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r28
	and r15, r4, r1
	setlt.u r4, r3, r20
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r4, zero, .LBB0_176
.LBB0_195:                              # %vector.body91
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r28
	and r2, r2, r1
	j .LBB0_176
.LBB0_196:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r11
	.loc	1 220 7                         # parallel-rne.mlir:220:7
	mfence { sm }
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	addli r2, zero, 4
	bneq r11, r2, .LBB0_133
.LBB0_197:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_199
.LBB0_198:                              # %middle.block86
                                        #   in Loop: Header=BB0_199 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 79
	load.d r[9:10], -304(r30)               # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 255 9 is_stmt 1               # parallel-rne.mlir:255:9
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r4, zero, 7
	beq r2, zero, .LBB0_227
.LBB0_199:                              # %.preheader24
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_208 Depth 3
                                        #       Child Loop BB0_202 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[13:14], r[9:10], r4
	store.d r[9:10], -304(r30)              # 8-byte Folded Spill
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	bneq r6, r23, .LBB0_206
# %bb.200:                              # %scalar.ph80.preheader
                                        #   in Loop: Header=BB0_199 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_202
.LBB0_201:                              # %scalar.ph80
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	setlt.ul r10, r[4:5], r[18:19]
	.loc	1 271 13 is_stmt 1              # parallel-rne.mlir:271:13
	add.s r2, r6, r2
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	stores.w r9, 0(r2)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	beq r10, zero, .LBB0_198
.LBB0_202:                              # %scalar.ph80
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_199 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.ul r[9:10], r[4:5], r[13:14]
	slli r2, r9, 2
	add.s r9, r23, r2
	loads.w r10, 0(r9)
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	and r11, r10, r25
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	setlt.u r9, r27, r11
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r9, zero, .LBB0_204
# %bb.203:                              # %scalar.ph80
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r11, r3, r11
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r11, zero, .LBB0_201
	j .LBB0_205
.LBB0_204:                              #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r11, r3, r11
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r11, zero, .LBB0_201
.LBB0_205:                              # %scalar.ph80
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r28
	and r9, r9, r1
	j .LBB0_201
.LBB0_206:                              # %vector.body82.preheader
                                        #   in Loop: Header=BB0_199 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_208
.LBB0_207:                              # %vector.body82
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	add.s r5, r6, r5
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	seteq.d r4, r[10:11], r[7:8]
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	stores.w r2, 12(r5)
	stores.w r15, 8(r5)
	stores.w r24, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	bneq r4, zero, .LBB0_198
.LBB0_208:                              # %vector.body82
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_199 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.ul r[4:5], r[10:11], r[13:14]
	slli r5, r4, 2
	add.s r12, r23, r5
	loads.w r22, 12(r12)
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	and r20, r22, r25
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	setlt.u r2, r27, r20
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r2, zero, .LBB0_210
# %bb.209:                              # %vector.body82
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r22, 0
	j .LBB0_211
.LBB0_210:                              #   in Loop: Header=BB0_208 Depth=3
	lui r2, 1024
	or r2, r22, r2
.LBB0_211:                              # %vector.body82
                                        #   in Loop: Header=BB0_208 Depth=3
	loads.w r21, 8(r12)
	and r9, r21, r25
	setlt.u r4, r27, r9
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r4, zero, .LBB0_213
# %bb.212:                              # %vector.body82
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r21, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_208 Depth=3
	lui r4, 1024
	or r15, r21, r4
.LBB0_214:                              # %vector.body82
                                        #   in Loop: Header=BB0_208 Depth=3
	loads.w r4, 4(r12)
	and r16, r4, r25
	setlt.u r17, r27, r16
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r17, zero, .LBB0_216
# %bb.215:                              # %vector.body82
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_208 Depth=3
	lui r17, 1024
	or r24, r4, r17
.LBB0_217:                              # %vector.body82
                                        #   in Loop: Header=BB0_208 Depth=3
	loads.w r17, 0(r12)
	and r26, r17, r25
	setlt.u r12, r27, r26
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r12, zero, .LBB0_223
# %bb.218:                              # %vector.body82
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r17, 0
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r26, r3, r26
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r26, zero, .LBB0_220
.LBB0_219:                              # %vector.body82
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r17, 16
	andi r12, r12, 1
	add.s r12, r17, r12
	add.s r12, r12, r28
	and r12, r12, r1
.LBB0_220:                              # %vector.body82
                                        #   in Loop: Header=BB0_208 Depth=3
	setlt.u r16, r3, r16
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r16, zero, .LBB0_224
# %bb.221:                              # %vector.body82
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r4, zero, .LBB0_225
.LBB0_222:                              # %vector.body82
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r20
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r4, zero, .LBB0_207
	j .LBB0_226
.LBB0_223:                              #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r17, r12
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r26, r3, r26
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r26, zero, .LBB0_219
	j .LBB0_220
.LBB0_224:                              # %vector.body82
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r4, 16
	andi r16, r16, 1
	add.s r4, r4, r16
	add.s r4, r4, r28
	and r24, r4, r1
	setlt.u r4, r3, r9
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r4, zero, .LBB0_222
.LBB0_225:                              # %vector.body82
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r28
	and r15, r4, r1
	setlt.u r4, r3, r20
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r4, zero, .LBB0_207
.LBB0_226:                              # %vector.body82
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r28
	and r2, r2, r1
	j .LBB0_207
.LBB0_227:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r11
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	mfence { sm }
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	bneq r11, r4, .LBB0_134
.LBB0_228:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 332 7 is_stmt 1               # parallel-rne.mlir:332:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_230
.LBB0_229:                              # %middle.block77
                                        #   in Loop: Header=BB0_230 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[4:5], -304(r30)                # 8-byte Folded Reload
	.loc	1 339 9 is_stmt 1               # parallel-rne.mlir:339:9
	setlt.ul r2, r[4:5], r[18:19]
	addli.d r[4:5], r[4:5], 1
	addli.d r[9:10], r[4:5], 0
	addli r4, zero, 7
	beq r2, zero, .LBB0_288
.LBB0_230:                              # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_239 Depth 3
                                        #       Child Loop BB0_233 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[16:17], r[9:10], r4
	store.d r[9:10], -304(r30)              # 8-byte Folded Spill
	.loc	1 340 11 is_stmt 1              # parallel-rne.mlir:340:11
	bneq r6, r23, .LBB0_237
# %bb.231:                              # %scalar.ph71.preheader
                                        #   in Loop: Header=BB0_230 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_233
.LBB0_232:                              # %scalar.ph71
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	setlt.ul r10, r[4:5], r[18:19]
	.loc	1 355 13 is_stmt 1              # parallel-rne.mlir:355:13
	add.s r2, r6, r2
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	stores.w r9, 0(r2)
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	beq r10, zero, .LBB0_229
.LBB0_233:                              # %scalar.ph71
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_230 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	add.ul r[9:10], r[4:5], r[16:17]
	slli r2, r9, 2
	add.s r9, r23, r2
	loads.w r10, 0(r9)
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r11, r10, r25
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	setlt.u r9, r27, r11
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r9, zero, .LBB0_235
# %bb.234:                              # %scalar.ph71
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r11, r3, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r11, zero, .LBB0_232
	j .LBB0_236
.LBB0_235:                              #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r11, r3, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r11, zero, .LBB0_232
.LBB0_236:                              # %scalar.ph71
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r28
	and r9, r9, r1
	j .LBB0_232
.LBB0_237:                              # %vector.body73.preheader
                                        #   in Loop: Header=BB0_230 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_239
.LBB0_238:                              # %vector.body73
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 340 11 is_stmt 1              # parallel-rne.mlir:340:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	add.s r5, r6, r5
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	seteq.d r4, r[10:11], r[7:8]
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	stores.w r2, 12(r5)
	stores.w r15, 8(r5)
	stores.w r24, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	bneq r4, zero, .LBB0_229
.LBB0_239:                              # %vector.body73
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_230 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	add.ul r[4:5], r[10:11], r[16:17]
	slli r5, r4, 2
	add.s r12, r23, r5
	loads.w r22, 12(r12)
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r20, r22, r25
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	setlt.u r2, r27, r20
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r2, zero, .LBB0_241
# %bb.240:                              # %vector.body73
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r22, 0
	j .LBB0_242
.LBB0_241:                              #   in Loop: Header=BB0_239 Depth=3
	lui r2, 1024
	or r2, r22, r2
.LBB0_242:                              # %vector.body73
                                        #   in Loop: Header=BB0_239 Depth=3
	loads.w r21, 8(r12)
	and r9, r21, r25
	setlt.u r4, r27, r9
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r4, zero, .LBB0_244
# %bb.243:                              # %vector.body73
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r21, 0
	j .LBB0_245
.LBB0_244:                              #   in Loop: Header=BB0_239 Depth=3
	lui r4, 1024
	or r15, r21, r4
.LBB0_245:                              # %vector.body73
                                        #   in Loop: Header=BB0_239 Depth=3
	loads.w r4, 4(r12)
	and r13, r4, r25
	setlt.u r14, r27, r13
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r14, zero, .LBB0_247
# %bb.246:                              # %vector.body73
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_239 Depth=3
	lui r14, 1024
	or r24, r4, r14
.LBB0_248:                              # %vector.body73
                                        #   in Loop: Header=BB0_239 Depth=3
	loads.w r14, 0(r12)
	and r26, r14, r25
	setlt.u r12, r27, r26
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r12, zero, .LBB0_250
# %bb.249:                              # %vector.body73
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r14, 0
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r26, r3, r26
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r26, zero, .LBB0_251
	j .LBB0_252
.LBB0_250:                              #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r14, r12
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r26, r3, r26
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r26, zero, .LBB0_252
.LBB0_251:                              # %vector.body73
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r14, 16
	andi r12, r12, 1
	add.s r12, r14, r12
	add.s r12, r12, r28
	and r12, r12, r1
.LBB0_252:                              # %vector.body73
                                        #   in Loop: Header=BB0_239 Depth=3
	setlt.u r13, r3, r13
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r13, zero, .LBB0_255
# %bb.253:                              # %vector.body73
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r4, zero, .LBB0_256
.LBB0_254:                              # %vector.body73
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r20
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r4, zero, .LBB0_238
	j .LBB0_257
.LBB0_255:                              # %vector.body73
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r4, 16
	andi r13, r13, 1
	add.s r4, r4, r13
	add.s r4, r4, r28
	and r24, r4, r1
	setlt.u r4, r3, r9
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r4, zero, .LBB0_254
.LBB0_256:                              # %vector.body73
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r28
	and r15, r4, r1
	setlt.u r4, r3, r20
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r4, zero, .LBB0_238
.LBB0_257:                              # %vector.body73
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r28
	and r2, r2, r1
	j .LBB0_238
.LBB0_258:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 96
	.loc	1 304 7 is_stmt 1               # parallel-rne.mlir:304:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_260
.LBB0_259:                              # %middle.block68
                                        #   in Loop: Header=BB0_260 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 111
	load.d r[9:10], -304(r30)               # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 311 9 is_stmt 1               # parallel-rne.mlir:311:9
	setlt.ul r2, r[9:10], r[4:5]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r4, zero, 7
	beq r2, zero, .LBB0_288
.LBB0_260:                              # %.preheader23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_269 Depth 3
                                        #       Child Loop BB0_263 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[13:14], r[9:10], r4
	store.d r[9:10], -304(r30)              # 8-byte Folded Spill
	.loc	1 312 11 is_stmt 1              # parallel-rne.mlir:312:11
	bneq r6, r23, .LBB0_267
# %bb.261:                              # %scalar.ph62.preheader
                                        #   in Loop: Header=BB0_260 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_263
.LBB0_262:                              # %scalar.ph62
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	setlt.ul r10, r[4:5], r[18:19]
	.loc	1 327 13 is_stmt 1              # parallel-rne.mlir:327:13
	add.s r2, r6, r2
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	stores.w r9, 0(r2)
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	beq r10, zero, .LBB0_259
.LBB0_263:                              # %scalar.ph62
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_260 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	add.ul r[9:10], r[4:5], r[13:14]
	slli r2, r9, 2
	add.s r9, r23, r2
	loads.w r10, 0(r9)
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r11, r10, r25
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	setlt.u r9, r27, r11
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r9, zero, .LBB0_265
# %bb.264:                              # %scalar.ph62
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r11, r3, r11
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r11, zero, .LBB0_262
	j .LBB0_266
.LBB0_265:                              #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r11, r3, r11
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r11, zero, .LBB0_262
.LBB0_266:                              # %scalar.ph62
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r28
	and r9, r9, r1
	j .LBB0_262
.LBB0_267:                              # %vector.body64.preheader
                                        #   in Loop: Header=BB0_260 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_269
.LBB0_268:                              # %vector.body64
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 312 11 is_stmt 1              # parallel-rne.mlir:312:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	add.s r5, r6, r5
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	seteq.d r4, r[10:11], r[7:8]
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	stores.w r2, 12(r5)
	stores.w r15, 8(r5)
	stores.w r24, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	bneq r4, zero, .LBB0_259
.LBB0_269:                              # %vector.body64
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_260 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	add.ul r[4:5], r[10:11], r[13:14]
	slli r5, r4, 2
	add.s r12, r23, r5
	loads.w r22, 12(r12)
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r20, r22, r25
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	setlt.u r2, r27, r20
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r2, zero, .LBB0_271
# %bb.270:                              # %vector.body64
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r22, 0
	j .LBB0_272
.LBB0_271:                              #   in Loop: Header=BB0_269 Depth=3
	lui r2, 1024
	or r2, r22, r2
.LBB0_272:                              # %vector.body64
                                        #   in Loop: Header=BB0_269 Depth=3
	loads.w r21, 8(r12)
	and r9, r21, r25
	setlt.u r4, r27, r9
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r4, zero, .LBB0_274
# %bb.273:                              # %vector.body64
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r21, 0
	j .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_269 Depth=3
	lui r4, 1024
	or r15, r21, r4
.LBB0_275:                              # %vector.body64
                                        #   in Loop: Header=BB0_269 Depth=3
	loads.w r4, 4(r12)
	and r16, r4, r25
	setlt.u r17, r27, r16
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r17, zero, .LBB0_277
# %bb.276:                              # %vector.body64
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_278
.LBB0_277:                              #   in Loop: Header=BB0_269 Depth=3
	lui r17, 1024
	or r24, r4, r17
.LBB0_278:                              # %vector.body64
                                        #   in Loop: Header=BB0_269 Depth=3
	loads.w r17, 0(r12)
	and r26, r17, r25
	setlt.u r12, r27, r26
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r12, zero, .LBB0_280
# %bb.279:                              # %vector.body64
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r17, 0
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r26, r3, r26
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r26, zero, .LBB0_281
	j .LBB0_282
.LBB0_280:                              #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r17, r12
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r26, r3, r26
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r26, zero, .LBB0_282
.LBB0_281:                              # %vector.body64
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r17, 16
	andi r12, r12, 1
	add.s r12, r17, r12
	add.s r12, r12, r28
	and r12, r12, r1
.LBB0_282:                              # %vector.body64
                                        #   in Loop: Header=BB0_269 Depth=3
	setlt.u r16, r3, r16
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r16, zero, .LBB0_285
# %bb.283:                              # %vector.body64
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r4, zero, .LBB0_286
.LBB0_284:                              # %vector.body64
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r20
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r4, zero, .LBB0_268
	j .LBB0_287
.LBB0_285:                              # %vector.body64
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r4, 16
	andi r16, r16, 1
	add.s r4, r4, r16
	add.s r4, r4, r28
	and r24, r4, r1
	setlt.u r4, r3, r9
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r4, zero, .LBB0_284
.LBB0_286:                              # %vector.body64
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r28
	and r15, r4, r1
	setlt.u r4, r3, r20
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r4, zero, .LBB0_268
.LBB0_287:                              # %vector.body64
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r28
	and r2, r2, r1
	j .LBB0_268
.LBB0_288:                              # %.sink.split51
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r11
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_289:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 360 7 is_stmt 1               # parallel-rne.mlir:360:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	loadli.w r2,  -316(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_5
# %bb.290:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r17, zero, 64
	addli r19, zero, 13
	.loc	1 378 7 is_stmt 1               # parallel-rne.mlir:378:7
	bneq r11, zero, .LBB0_6
# %bb.291:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	loadli.w r2,  -360(r30)                 # 4-byte Folded Reload
	zext_int2long r[13:14], zero
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	load.d r[15:16], 16(r30)
	addli r18, zero, 1
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	zext_int2long r[4:5], r2
	addli r2, zero, 896
	zext_int2long r[9:10], r2
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	loadli.w r2,  -356(r30)                 # 4-byte Folded Reload
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	min.ul r[9:10], r[4:5], r[9:10]
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	sext_int2long r[11:12], r2
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	addli r2, zero, 18
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	addli.d r[9:10], r[9:10], 128
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	min.sl r[13:14], r[11:12], r[13:14]
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	max.ul r[9:10], r[9:10], r[4:5]
	sub.sl r[4:5], r[9:10], r[4:5]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	addli.d r[9:10], r[13:14], 128
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	load.d r[13:14], -352(r30)              # 8-byte Folded Reload
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	max.sl r[9:10], r[9:10], r[11:12]
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	min.ul r[4:5], r[4:5], r[7:8]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	sll.d r[13:14], r[13:14], r2
	addli r2, zero, 12
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	sub.sl r[9:10], r[9:10], r[11:12]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	add.ul r[13:14], r[15:16], r[13:14]
	load.d r[15:16], -344(r30)              # 8-byte Folded Reload
	xwait r2, 0
	ori r2, r6, 64
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.sl r[6:7], r[9:10], r[7:8]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	sll.d r[15:16], r[15:16], r18
	add.ul r[11:12], r[13:14], r[15:16]
	addli r13, zero, 5
	lock zero, r13
	dma_cfg r18, r18, zero, 0
	dma_cfg zero, r18, zero, 1
	dma_cfg r12, zero, zero, 2
	dma_cfg r11, r2, r17, 3
	addli r2, r4, 31
	slli r4, r4, 1
	addli r5, zero, 128
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r11
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	srli r2, r2, 5
	dma_cfg r17, r5, r2, 4
	andi r2, r4, 62
	addli r4, zero, 512
	addli r5, zero, 2048
	dma_cfg r5, r4, r6, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	xsignal r19, 0
	j .LBB0_6
.LBB0_292:                              # %._crit_edge
	.loc	1 380 5                         # parallel-rne.mlir:380:5
	xsignal zero, 0
	bneq r11, zero, .LBB0_294
# %bb.293:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 380 5                         # parallel-rne.mlir:380:5
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
	.loc	1 381 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:381:5
	addli sp, sp, 368
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
	.long	432                             # 0x1b0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-m6f17d7k" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
