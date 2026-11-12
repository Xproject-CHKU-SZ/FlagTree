	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/division-rey8yq97" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -456
	addli r1, zero, 1
.Ltmp0:
	.loc	1 31 5 prologue_end             # parallel-rne.mlir:31:5
	core_id r10
	addli r30, sp, 392
	xsignal_mode_cfg r1
	beq r10, zero, .LBB0_2
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
	.loc	1 33 10 is_stmt 1               # parallel-rne.mlir:33:10
	load_param_i r3, 1
	loadli.w r4,  32(r30)
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -76(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -240(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -320(r30)
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r1, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	fmac.s r2, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	min.s r2, r2, r4
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	ble.s r2, r1, .LBB0_293
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 42 11 is_stmt 1               # parallel-rne.mlir:42:11
	sext_int2long r[6:7], r1
	lui r1, 524287
	addli r12, zero, 0
	addli r8, zero, 3
	lui r28, 522240
	addli r9, zero, 0
	store.d r[2:3], -392(r30)               # 8-byte Folded Spill
	ori r26, r1, 4095
	lui r1, 7
	lui r2, 522239
	lui r3, 1048560
	ori r1, r1, 4095
	ori r14, r2, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	addli r2, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], -352(r30)                # 8-byte Folded Reload
	.loc	1 50 5 is_stmt 1                # parallel-rne.mlir:50:5
	load.d r[4:5], -392(r30)                # 8-byte Folded Reload
	loadli.w r9,  -356(r30)                 # 4-byte Folded Reload
	addli r8, zero, 3
	addli.d r[6:7], r[6:7], 1
	setlt.sl r2, r[6:7], r[4:5]
	beq r2, zero, .LBB0_293
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_28 Depth 3
                                        #       Child Loop BB0_29 Depth 3
                                        #     Child Loop BB0_72 Depth 2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_75 Depth 3
                                        #     Child Loop BB0_42 Depth 2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_45 Depth 3
                                        #     Child Loop BB0_103 Depth 2
                                        #       Child Loop BB0_112 Depth 3
                                        #       Child Loop BB0_106 Depth 3
                                        #     Child Loop BB0_169 Depth 2
                                        #       Child Loop BB0_178 Depth 3
                                        #       Child Loop BB0_172 Depth 3
                                        #     Child Loop BB0_200 Depth 2
                                        #       Child Loop BB0_209 Depth 3
                                        #       Child Loop BB0_203 Depth 3
                                        #     Child Loop BB0_139 Depth 2
                                        #       Child Loop BB0_148 Depth 3
                                        #       Child Loop BB0_142 Depth 3
                                        #     Child Loop BB0_261 Depth 2
                                        #       Child Loop BB0_270 Depth 3
                                        #       Child Loop BB0_264 Depth 3
                                        #     Child Loop BB0_231 Depth 2
                                        #       Child Loop BB0_240 Depth 3
                                        #       Child Loop BB0_234 Depth 3
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r17, zero, 17
	addli r27, zero, 18
	.loc	1 77 7 is_stmt 1                # parallel-rne.mlir:77:7
	addli r2, zero, 4
	bneq r10, r2, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	loadli.w r4,  28(r30)
	store.d r[6:7], -352(r30)               # 8-byte Folded Spill
	addli r20, zero, 1
	.loc	1 78 7 is_stmt 1                # parallel-rne.mlir:78:7
	load.d r[15:16], 8(r30)
	addli r5, zero, 0
	addli r22, zero, 3
	div.s r2, r6, r2
	mod.s r6, r9, r8
	addli r9, r9, 1
	addli r8, zero, 1
	storeli.w r9, -356(r30)                 # 4-byte Folded Spill
	addli r9, zero, 8
	div.s r2, r2, r4
	addli r4, zero, 64
	slli r25, r6, 16
	lui r6, 48
	div.s r4, r2, r4
	slli r7, r4, 3
	slli r4, r4, 6
	sub.s r8, r8, r7
	sub.s r4, r2, r4
	min.s r8, r8, r9
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	loadli.w r9,  -320(r30)
	mod.s r2, r2, r8
	div.s r4, r4, r8
	add.s r8, r25, r6
	add.s r2, r7, r2
	slli r6, r4, 7
	storeli.w r6, -384(r30)                 # 4-byte Folded Spill
	zext_int2long r[6:7], r4
	slli r4, r2, 7
	zext_int2long r[10:11], r2
	addli r2, zero, 15
	storeli.w r4, -380(r30)                 # 4-byte Folded Spill
	addli r4, zero, 7
	store.d r[10:11], -376(r30)             # 8-byte Folded Spill
	sll.d r[10:11], r[10:11], r2
	sll.d r[6:7], r[6:7], r4
	addli r4, zero, 0
	store.d r[6:7], -368(r30)               # 8-byte Folded Spill
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	sll.d r[6:7], r[6:7], r20
	add.ul r[6:7], r[15:16], r[6:7]
	store.d r[6:7], -336(r30)               # 8-byte Folded Spill
	load.d r[6:7], 0(r30)
	add.ul r[6:7], r[6:7], r[10:11]
	store.d r[6:7], -328(r30)               # 8-byte Folded Spill
	addli r6, zero, 21
	j .LBB0_13
.LBB0_11:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r4, 96
	addli r9, zero, 4
	addli r23, zero, 128
	addli r7, zero, 256
	addli r22, zero, 3
	addli r27, zero, 18
	ori r4, r4, 64
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	lock zero, r9
	add.s r2, r2, r4
	addli r4, zero, 1
	dma_cfg r4, r4, zero, 0
	dma_cfg zero, r11, zero, 2
	dma_cfg r2, r10, r12, 3
	addli r10, zero, 2
	addli r11, zero, 5
	addli r2, zero, 6
	dma_cfg r23, r12, r10, 4
	dma_cfg r7, r7, r23, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 19
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 20
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 22
	dma_cfg zero, zero, r6, 10
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
	dma_cfg r4, r4, zero, 0
	dma_cfg r4, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r18, zero, r12, 3
	addli r12, r21, 0
	dma_cfg r23, zero, r10, 4
	dma_cfg r7, zero, r23, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r10, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r2,  -240(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r4,  -76(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r2, r2, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r4, r4, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r2, -240(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r4, -76(r30)
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	andi r2, r20, 1
	bneq r2, zero, .LBB0_25
	j .LBB0_32
.LBB0_13:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_28 Depth 3
                                        #       Child Loop BB0_29 Depth 3
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	addli r2, zero, 24
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r10, zero, 19
	addli r24, r9, 1
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r13, zero, 2
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	mod.s r2, r12, r2
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	mod.s r11, r9, r10
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	addli r12, r12, 1
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	storeli.w r24, -320(r30)
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	slli r10, r2, 15
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	slli r2, r11, 15
	lui r11, 96
	add.s r18, r2, r11
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r11
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	beq r11, r13, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r21, r12, 0
	zext_int2long r[12:13], r4
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r19
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r4, zero, 1
	bneq r19, r4, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r19, zero, 7
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r15
	addli r16, zero, 18
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	sll.d r[10:11], r[12:13], r19
	load.d r[12:13], -328(r30)              # 8-byte Folded Reload
	add.ul r[10:11], r[12:13], r[10:11]
	addli r13, zero, 3
	addli r12, zero, 64
	xwait r13, 0
	blt.s r16, r9, .LBB0_11
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r23, zero, 5
	addli r4, zero, 1
	addli r22, zero, 2
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r9, zero, 4
	addli r7, zero, 20
	lock zero, r23
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 6
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 8
	dma_cfg zero, zero, r19, 10
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
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 22
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r6, 10
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
	dma_cfg r4, r4, zero, 0
	dma_cfg r4, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r18, zero, r12, 3
	dma_cfg r9, zero, r22, 4
	addli r22, zero, 256
	dma_cfg r22, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r23
	j .LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r2, zero, 2
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	addli r4, zero, 5
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r15
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	xwait r2, 0
	xwait r4, 0
	lock zero, zero
	addli r4, zero, 128
	ds_cfg r2, zero, 0
	addli r2, zero, 64
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r4, zero, 13
	shuffle_batch r10, r18, r2, 1
	addli r2, zero, 4
	unlock zero
	xsignal r22, 0
	xsignal r2, 0
	j .LBB0_12
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r4,  -76(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r2,  -240(r30)
	addli r7, zero, 40
	mod.s r9, r2, r7
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r15, r4, r27
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r2, r2, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	lui r7, 248
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r2, -240(r30)
	slli r11, r9, 15
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r2, r15, 15
	addli r9, r4, 1
	storeli.w r9, -76(r30)
	add.s r18, r2, r7
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r9, zero, 7
	beq r19, r9, .LBB0_23
# %bb.19:                               #   in Loop: Header=BB0_13 Depth=2
	addli r9, zero, 6
	bneq r19, r9, .LBB0_26
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r6, zero, 17
	addli r17, zero, 21
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r15
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	sll.d r[9:10], r[12:13], r6
	load.d r[11:12], -336(r30)              # 8-byte Folded Reload
	add.ul r[10:11], r[11:12], r[9:10]
	addli r12, zero, 7
	addli r9, zero, 64
	xwait r12, 0
	blt.s r6, r4, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r23, zero, 5
	addli r4, zero, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r13, zero, 2
	addli r16, zero, 6
	addli r19, zero, 10
	addli r7, zero, 20
	lock zero, r23
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 4
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 9
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 8
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 7
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 13
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 11
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 12
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 15
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 14
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 16
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 19
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 22
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 24
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 512
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 23
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 25
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 128
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 26
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 27
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 28
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 29
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 30
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 31
	dma_cfg zero, zero, r16, 10
	dma_cfg r4, r4, zero, 0
	dma_cfg r4, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r18, zero, r9, 3
	dma_cfg r19, zero, r13, 4
	dma_cfg r7, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r23
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r4, 248
	addli r13, zero, 4
	addli r7, zero, 512
	addli r16, zero, 6
	addli r17, zero, 17
	ori r4, r4, 64
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	lock zero, r13
	add.s r2, r2, r4
	addli r4, zero, 1
	dma_cfg r4, r4, zero, 0
	dma_cfg zero, r11, zero, 2
	dma_cfg r2, r10, r9, 3
	addli r11, zero, 128
	addli r2, zero, 2048
	addli r10, zero, 5
	dma_cfg r11, r9, r13, 4
	dma_cfg r7, r2, r9, 5
	addli r2, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r16, 10
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
	addli r2, zero, 13
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 19
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 21
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 20
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 22
	dma_cfg zero, zero, r6, 10
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
	dma_cfg r4, r4, zero, 0
	dma_cfg r4, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r18, zero, r9, 3
	dma_cfg r11, zero, r13, 4
	dma_cfg r7, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r16, 0
	j .LBB0_24
.LBB0_23:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 119 9 is_stmt 1               # parallel-rne.mlir:119:9
	addli r2, zero, 6
	addli r4, zero, 128
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r15
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	xwait r2, 0
	addli r2, zero, 9
	xwait r2, 0
	addli r2, zero, 2
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 64
	ds_cfg r4, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r4, zero, 13
	shuffle_coa r11, r18, r2, 2
	addli r2, zero, 7
	unlock zero
	xsignal r2, 0
	addli r2, zero, 8
	xsignal r2, 0
.LBB0_24:                               # %.thread20
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r12, r21, 0
	.loc	1 78 7 is_stmt 1                # parallel-rne.mlir:78:7
	andi r2, r20, 1
	beq r2, zero, .LBB0_32
.LBB0_25:                               # %.backedge
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r20, zero, 0
	.loc	1 122 15 is_stmt 1              # parallel-rne.mlir:122:15
	addli r5, r5, 1
	addli r4, zero, 1
	addli r9, r24, 0
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	j .LBB0_13
.LBB0_26:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	andi r2, r20, 1
	addli r4, zero, 4
	.loc	1 121 9 is_stmt 1               # parallel-rne.mlir:121:9
	bneq r19, r4, .LBB0_31
# %bb.27:                               #   in Loop: Header=BB0_13 Depth=2
	xwait r4, 0
	addli r4, zero, 8
	addli r9, zero, 1
	addli r12, zero, 0
	addli r15, zero, 64
	addli r18, zero, 4
	addli r19, zero, 128
	xwait r4, 0
	addli r4, zero, 1
	beq r5, zero, .LBB0_29
.LBB0_28:                               # %.preheader30
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r13, r12, 14
	slli r12, r12, 8
	lock zero, r4
	mm_cfg r15, r15, r19, 0
	or r13, r13, r11
	or r12, r12, r8
	mm_cfg r18, r18, r4, 2
	mm_acc r12, r10, r13, 8
	andi r13, r9, 1
	addli r12, zero, 1
	addli r9, zero, 0
	unlock r4
	bneq r13, zero, .LBB0_28
	j .LBB0_30
.LBB0_29:                               # %.preheader29
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r13, r12, 14
	slli r12, r12, 8
	lock zero, r4
	mm_cfg r15, r15, r19, 0
	or r13, r13, r11
	or r12, r12, r8
	mm_cfg r18, r18, r4, 2
	mm r12, r10, r13, 8
	andi r13, r9, 1
	addli r12, zero, 1
	addli r9, zero, 0
	unlock r4
	bneq r13, zero, .LBB0_29
.LBB0_30:                               # %.thread20.thread43
                                        #   in Loop: Header=BB0_13 Depth=2
	addli r4, zero, 5
	addli r12, r21, 0
	xsignal r4, 0
	addli r4, zero, 9
	xsignal r4, 0
	bneq r2, zero, .LBB0_25
	j .LBB0_33
.LBB0_31:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r12, r21, 0
	bneq r2, zero, .LBB0_25
	j .LBB0_34
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 125 7 is_stmt 1               # parallel-rne.mlir:125:7
	addli r2, zero, 4
	bneq r15, r2, .LBB0_34
.LBB0_33:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	storeli.w zero, -344(r30)               # 4-byte Folded Spill
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r10
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	xsignal r2, 0
	j .LBB0_37
.LBB0_34:                               # %.thread42
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r10
	addli r2, zero, 3
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	bneq r10, r2, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	storeli.w r2, -344(r30)                 # 4-byte Folded Spill
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -344(r30)               # 4-byte Folded Spill
.LBB0_37:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 128
	.loc	1 133 7 is_stmt 1               # parallel-rne.mlir:133:7
	xfence
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	addli r4, zero, 255
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	mfence { lm, sm, gm }
	zext_int2long r[16:17], r2
	addli r2, zero, 127
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	csr_set csr5, r4
	sync_core
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	storeli.w r12, -340(r30)                # 4-byte Folded Spill
	zext_int2long r[5:6], r2
	beq r10, zero, .LBB0_70
# %bb.38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r2, zero, 2
	beq r10, r2, .LBB0_101
.LBB0_39:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 1
	bneq r10, r2, .LBB0_132
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[9:10], zero
	addli r2, zero, 16
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	store.d r[9:10], -336(r30)              # 8-byte Folded Spill
	zext_int2long r[9:10], r2
	xfence
	mfence { lm, sm, gm }
	j .LBB0_42
.LBB0_41:                               # %middle.block104
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 31
	load.d r[11:12], -328(r30)              # 8-byte Folded Reload
	zext_int2long r[9:10], r2
	.loc	1 171 9 is_stmt 1               # parallel-rne.mlir:171:9
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_131
.LBB0_42:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_45 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[9:10], -328(r30)              # 8-byte Folded Spill
	sll.d r[18:19], r[9:10], r2
	.loc	1 172 11 is_stmt 1              # parallel-rne.mlir:172:11
	bneq r25, r8, .LBB0_49
# %bb.43:                               # %scalar.ph98.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_45
.LBB0_44:                               # %scalar.ph98
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	setlt.ul r7, r[9:10], r[5:6]
	.loc	1 187 13 is_stmt 1              # parallel-rne.mlir:187:13
	add.s r2, r25, r2
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	stores.w r4, 0(r2)
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	beq r7, zero, .LBB0_41
.LBB0_45:                               # %scalar.ph98
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.ul r[11:12], r[9:10], r[18:19]
	slli r2, r11, 2
	add.s r4, r8, r2
	loads.w r7, 0(r4)
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r11, r7, r26
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	setlt.u r4, r28, r11
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r4, zero, .LBB0_47
# %bb.46:                               # %scalar.ph98
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r7, 0
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r11, r14, r11
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r11, zero, .LBB0_44
	j .LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r7, r4
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r11, r14, r11
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r11, zero, .LBB0_44
.LBB0_48:                               # %scalar.ph98
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r7, 16
	andi r4, r4, 1
	add.s r4, r7, r4
	add.s r4, r4, r1
	and r4, r4, r3
	j .LBB0_44
.LBB0_49:                               # %vector.body100.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	load.d r[10:11], -336(r30)              # 8-byte Folded Reload
	j .LBB0_51
.LBB0_50:                               # %vector.body100
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 172 11 is_stmt 1              # parallel-rne.mlir:172:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	add.s r4, r25, r7
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	seteq.d r2, r[10:11], r[16:17]
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	stores.w r24, 12(r4)
	stores.w r15, 8(r4)
	stores.w r13, 4(r4)
	stores.w r12, 0(r4)
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	bneq r2, zero, .LBB0_41
.LBB0_51:                               # %vector.body100
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.ul r[12:13], r[10:11], r[18:19]
	slli r7, r12, 2
	add.s r12, r8, r7
	loads.w r22, 12(r12)
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r2, r22, r26
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	setlt.u r4, r28, r2
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r4, zero, .LBB0_53
# %bb.52:                               # %vector.body100
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r24, r22, 0
	j .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_51 Depth=3
	lui r4, 1024
	or r24, r22, r4
.LBB0_54:                               # %vector.body100
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r23, 8(r12)
	and r9, r23, r26
	setlt.u r4, r28, r9
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r4, zero, .LBB0_56
# %bb.55:                               # %vector.body100
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r23, 0
	j .LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_51 Depth=3
	lui r4, 1024
	or r15, r23, r4
.LBB0_57:                               # %vector.body100
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r4, 4(r12)
	and r20, r4, r26
	setlt.u r13, r28, r20
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r13, zero, .LBB0_59
# %bb.58:                               # %vector.body100
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r4, 0
	j .LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_51 Depth=3
	lui r13, 1024
	or r13, r4, r13
.LBB0_60:                               # %vector.body100
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r21, 0(r12)
	and r27, r21, r26
	setlt.u r12, r28, r27
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r12, zero, .LBB0_62
# %bb.61:                               # %vector.body100
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r21, 0
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r27, r14, r27
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r27, zero, .LBB0_63
	j .LBB0_64
.LBB0_62:                               #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r21, r12
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r27, r14, r27
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r27, zero, .LBB0_64
.LBB0_63:                               # %vector.body100
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r21, 16
	andi r12, r12, 1
	add.s r12, r21, r12
	add.s r12, r12, r1
	and r12, r12, r3
.LBB0_64:                               # %vector.body100
                                        #   in Loop: Header=BB0_51 Depth=3
	setlt.u r20, r14, r20
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r20, zero, .LBB0_67
# %bb.65:                               # %vector.body100
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r9
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r4, zero, .LBB0_68
.LBB0_66:                               # %vector.body100
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r14, r2
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r2, zero, .LBB0_50
	j .LBB0_69
.LBB0_67:                               # %vector.body100
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r4, 16
	andi r13, r13, 1
	add.s r4, r4, r13
	add.s r4, r4, r1
	and r13, r4, r3
	setlt.u r4, r14, r9
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r4, zero, .LBB0_66
.LBB0_68:                               # %vector.body100
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r1
	and r15, r4, r3
	setlt.u r2, r14, r2
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r2, zero, .LBB0_50
.LBB0_69:                               # %vector.body100
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r1
	and r24, r2, r3
	j .LBB0_50
.LBB0_70:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	xfence
	zext_int2long r[9:10], zero
	mfence { lm, sm, gm }
	j .LBB0_72
.LBB0_71:                               # %middle.block122
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 15
	load.d r[11:12], -328(r30)              # 8-byte Folded Reload
	zext_int2long r[9:10], r2
	.loc	1 143 9 is_stmt 1               # parallel-rne.mlir:143:9
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_100
.LBB0_72:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_75 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[9:10], -328(r30)              # 8-byte Folded Spill
	sll.d r[20:21], r[9:10], r2
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	bneq r25, r8, .LBB0_79
# %bb.73:                               # %scalar.ph116.preheader
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_75
.LBB0_74:                               # %scalar.ph116
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	setlt.ul r7, r[9:10], r[5:6]
	.loc	1 159 13 is_stmt 1              # parallel-rne.mlir:159:13
	add.s r2, r25, r2
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r4, 0(r2)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	beq r7, zero, .LBB0_71
.LBB0_75:                               # %scalar.ph116
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[11:12], r[9:10], r[20:21]
	slli r2, r11, 2
	add.s r4, r8, r2
	loads.w r7, 0(r4)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r11, r7, r26
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r4, r28, r11
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r4, zero, .LBB0_77
# %bb.76:                               # %scalar.ph116
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r7, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r11, r14, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r11, zero, .LBB0_74
	j .LBB0_78
.LBB0_77:                               #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r7, r4
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r11, r14, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r11, zero, .LBB0_74
.LBB0_78:                               # %scalar.ph116
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r7, 16
	andi r4, r4, 1
	add.s r4, r7, r4
	add.s r4, r4, r1
	and r4, r4, r3
	j .LBB0_74
.LBB0_79:                               # %vector.body118.preheader
                                        #   in Loop: Header=BB0_72 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_81
.LBB0_80:                               # %vector.body118
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r7, r25, r7
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	seteq.d r2, r[10:11], r[16:17]
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r22, 12(r7)
	stores.w r23, 8(r7)
	stores.w r4, 4(r7)
	stores.w r12, 0(r7)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	bneq r2, zero, .LBB0_71
.LBB0_81:                               # %vector.body118
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[12:13], r[10:11], r[20:21]
	slli r7, r12, 2
	add.s r12, r8, r7
	loads.w r24, 12(r12)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r2, r24, r26
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r4, r28, r2
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r4, zero, .LBB0_83
# %bb.82:                               # %vector.body118
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r22, r24, 0
	j .LBB0_84
.LBB0_83:                               #   in Loop: Header=BB0_81 Depth=3
	lui r4, 1024
	or r22, r24, r4
.LBB0_84:                               # %vector.body118
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r15, 8(r12)
	and r9, r15, r26
	setlt.u r4, r28, r9
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r4, zero, .LBB0_86
# %bb.85:                               # %vector.body118
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r15, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_81 Depth=3
	lui r4, 1024
	or r23, r15, r4
.LBB0_87:                               # %vector.body118
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r13, 4(r12)
	and r18, r13, r26
	setlt.u r4, r28, r18
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r4, zero, .LBB0_89
# %bb.88:                               # %vector.body118
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r13, 0
	j .LBB0_90
.LBB0_89:                               #   in Loop: Header=BB0_81 Depth=3
	lui r4, 1024
	or r4, r13, r4
.LBB0_90:                               # %vector.body118
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r19, 0(r12)
	and r27, r19, r26
	setlt.u r12, r28, r27
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r12, zero, .LBB0_92
# %bb.91:                               # %vector.body118
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r19, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r27, r14, r27
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r27, zero, .LBB0_93
	j .LBB0_94
.LBB0_92:                               #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r19, r12
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r27, r14, r27
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r27, zero, .LBB0_94
.LBB0_93:                               # %vector.body118
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r19, 16
	andi r12, r12, 1
	add.s r12, r19, r12
	add.s r12, r12, r1
	and r12, r12, r3
.LBB0_94:                               # %vector.body118
                                        #   in Loop: Header=BB0_81 Depth=3
	setlt.u r18, r14, r18
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r18, zero, .LBB0_97
# %bb.95:                               # %vector.body118
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r14, r9
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r9, zero, .LBB0_98
.LBB0_96:                               # %vector.body118
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r14, r2
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r2, zero, .LBB0_80
	j .LBB0_99
.LBB0_97:                               # %vector.body118
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r1
	and r4, r4, r3
	setlt.u r9, r14, r9
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r9, zero, .LBB0_96
.LBB0_98:                               # %vector.body118
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r15, 16
	andi r9, r9, 1
	add.s r9, r15, r9
	add.s r9, r9, r1
	and r23, r9, r3
	setlt.u r2, r14, r2
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r2, zero, .LBB0_80
.LBB0_99:                               # %vector.body118
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r24, 16
	andi r2, r2, 1
	add.s r2, r24, r2
	add.s r2, r2, r1
	and r22, r2, r3
	j .LBB0_80
.LBB0_100:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	mfence { sm }
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r10
	loadli.w r12,  -340(r30)                # 4-byte Folded Reload
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r2, zero, 2
	bneq r10, r2, .LBB0_39
.LBB0_101:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 192 7 is_stmt 1               # parallel-rne.mlir:192:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_103
.LBB0_102:                              # %middle.block113
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 47
	load.d r[11:12], -328(r30)              # 8-byte Folded Reload
	zext_int2long r[9:10], r2
	.loc	1 199 9 is_stmt 1               # parallel-rne.mlir:199:9
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_131
.LBB0_103:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_112 Depth 3
                                        #       Child Loop BB0_106 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[9:10], -328(r30)              # 8-byte Folded Spill
	sll.d r[20:21], r[9:10], r2
	.loc	1 200 11 is_stmt 1              # parallel-rne.mlir:200:11
	bneq r25, r8, .LBB0_110
# %bb.104:                              # %scalar.ph107.preheader
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_106
.LBB0_105:                              # %scalar.ph107
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	setlt.ul r7, r[9:10], r[5:6]
	.loc	1 215 13 is_stmt 1              # parallel-rne.mlir:215:13
	add.s r2, r25, r2
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	stores.w r4, 0(r2)
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	beq r7, zero, .LBB0_102
.LBB0_106:                              # %scalar.ph107
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	add.ul r[11:12], r[9:10], r[20:21]
	slli r2, r11, 2
	add.s r4, r8, r2
	loads.w r7, 0(r4)
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	and r11, r7, r26
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	setlt.u r4, r28, r11
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r4, zero, .LBB0_108
# %bb.107:                              # %scalar.ph107
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r7, 0
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r11, r14, r11
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r11, zero, .LBB0_105
	j .LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r7, r4
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r11, r14, r11
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r11, zero, .LBB0_105
.LBB0_109:                              # %scalar.ph107
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r7, 16
	andi r4, r4, 1
	add.s r4, r7, r4
	add.s r4, r4, r1
	and r4, r4, r3
	j .LBB0_105
.LBB0_110:                              # %vector.body109.preheader
                                        #   in Loop: Header=BB0_103 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_112
.LBB0_111:                              # %vector.body109
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 200 11 is_stmt 1              # parallel-rne.mlir:200:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	add.s r4, r25, r7
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	seteq.d r2, r[10:11], r[16:17]
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	stores.w r24, 12(r4)
	stores.w r15, 8(r4)
	stores.w r13, 4(r4)
	stores.w r12, 0(r4)
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	bneq r2, zero, .LBB0_102
.LBB0_112:                              # %vector.body109
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	add.ul r[12:13], r[10:11], r[20:21]
	slli r7, r12, 2
	add.s r12, r8, r7
	loads.w r22, 12(r12)
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	and r2, r22, r26
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	setlt.u r4, r28, r2
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r4, zero, .LBB0_114
# %bb.113:                              # %vector.body109
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r24, r22, 0
	j .LBB0_115
.LBB0_114:                              #   in Loop: Header=BB0_112 Depth=3
	lui r4, 1024
	or r24, r22, r4
.LBB0_115:                              # %vector.body109
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r23, 8(r12)
	and r9, r23, r26
	setlt.u r4, r28, r9
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r4, zero, .LBB0_117
# %bb.116:                              # %vector.body109
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r23, 0
	j .LBB0_118
.LBB0_117:                              #   in Loop: Header=BB0_112 Depth=3
	lui r4, 1024
	or r15, r23, r4
.LBB0_118:                              # %vector.body109
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r4, 4(r12)
	and r18, r4, r26
	setlt.u r13, r28, r18
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r13, zero, .LBB0_120
# %bb.119:                              # %vector.body109
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r4, 0
	j .LBB0_121
.LBB0_120:                              #   in Loop: Header=BB0_112 Depth=3
	lui r13, 1024
	or r13, r4, r13
.LBB0_121:                              # %vector.body109
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r19, 0(r12)
	and r27, r19, r26
	setlt.u r12, r28, r27
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r12, zero, .LBB0_123
# %bb.122:                              # %vector.body109
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r19, 0
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r27, r14, r27
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r27, zero, .LBB0_124
	j .LBB0_125
.LBB0_123:                              #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r19, r12
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r27, r14, r27
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r27, zero, .LBB0_125
.LBB0_124:                              # %vector.body109
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r19, 16
	andi r12, r12, 1
	add.s r12, r19, r12
	add.s r12, r12, r1
	and r12, r12, r3
.LBB0_125:                              # %vector.body109
                                        #   in Loop: Header=BB0_112 Depth=3
	setlt.u r18, r14, r18
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r18, zero, .LBB0_128
# %bb.126:                              # %vector.body109
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r9
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r4, zero, .LBB0_129
.LBB0_127:                              # %vector.body109
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r14, r2
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r2, zero, .LBB0_111
	j .LBB0_130
.LBB0_128:                              # %vector.body109
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r4, 16
	andi r13, r13, 1
	add.s r4, r4, r13
	add.s r4, r4, r1
	and r13, r4, r3
	setlt.u r4, r14, r9
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r4, zero, .LBB0_127
.LBB0_129:                              # %vector.body109
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r1
	and r15, r4, r3
	setlt.u r2, r14, r2
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r2, zero, .LBB0_111
.LBB0_130:                              # %vector.body109
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r1
	and r24, r2, r3
	j .LBB0_111
.LBB0_131:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	mfence { sm }
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r10
	loadli.w r12,  -340(r30)                # 4-byte Folded Reload
.LBB0_132:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 220 7                         # parallel-rne.mlir:220:7
	loadli.w r2,  -344(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_167
# %bb.133:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	addli r2, zero, 4
	beq r10, r2, .LBB0_198
.LBB0_134:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	addli r2, zero, 7
	beq r10, r2, .LBB0_229
.LBB0_135:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 6
	beq r10, r2, .LBB0_259
# %bb.136:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 5
	bneq r10, r2, .LBB0_290
# %bb.137:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_139
.LBB0_138:                              # %middle.block
                                        #   in Loop: Header=BB0_139 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 95
	load.d r[11:12], -328(r30)              # 8-byte Folded Reload
	zext_int2long r[9:10], r2
	.loc	1 283 9 is_stmt 1               # parallel-rne.mlir:283:9
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_289
.LBB0_139:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_148 Depth 3
                                        #       Child Loop BB0_142 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[9:10], -328(r30)              # 8-byte Folded Spill
	sll.d r[20:21], r[9:10], r2
	.loc	1 284 11 is_stmt 1              # parallel-rne.mlir:284:11
	bneq r25, r8, .LBB0_146
# %bb.140:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_139 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_142
.LBB0_141:                              # %scalar.ph
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	setlt.ul r7, r[9:10], r[5:6]
	.loc	1 299 13 is_stmt 1              # parallel-rne.mlir:299:13
	add.s r2, r25, r2
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	stores.w r4, 0(r2)
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	beq r7, zero, .LBB0_138
.LBB0_142:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_139 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.ul r[11:12], r[9:10], r[20:21]
	slli r2, r11, 2
	add.s r4, r8, r2
	loads.w r7, 0(r4)
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	and r11, r7, r26
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	setlt.u r4, r28, r11
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r4, zero, .LBB0_144
# %bb.143:                              # %scalar.ph
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r7, 0
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r11, r14, r11
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r11, zero, .LBB0_141
	j .LBB0_145
.LBB0_144:                              #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r7, r4
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r11, r14, r11
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r11, zero, .LBB0_141
.LBB0_145:                              # %scalar.ph
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r7, 16
	andi r4, r4, 1
	add.s r4, r7, r4
	add.s r4, r4, r1
	and r4, r4, r3
	j .LBB0_141
.LBB0_146:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_139 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_148
.LBB0_147:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 284 11 is_stmt 1              # parallel-rne.mlir:284:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	add.s r4, r25, r7
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	seteq.d r2, r[10:11], r[16:17]
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	stores.w r24, 12(r4)
	stores.w r15, 8(r4)
	stores.w r13, 4(r4)
	stores.w r12, 0(r4)
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	bneq r2, zero, .LBB0_138
.LBB0_148:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_139 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.ul r[12:13], r[10:11], r[20:21]
	slli r7, r12, 2
	add.s r12, r8, r7
	loads.w r22, 12(r12)
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	and r2, r22, r26
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	setlt.u r4, r28, r2
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r4, zero, .LBB0_150
# %bb.149:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r24, r22, 0
	j .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_148 Depth=3
	lui r4, 1024
	or r24, r22, r4
.LBB0_151:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r23, 8(r12)
	and r9, r23, r26
	setlt.u r4, r28, r9
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r4, zero, .LBB0_153
# %bb.152:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r23, 0
	j .LBB0_154
.LBB0_153:                              #   in Loop: Header=BB0_148 Depth=3
	lui r4, 1024
	or r15, r23, r4
.LBB0_154:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r4, 4(r12)
	and r18, r4, r26
	setlt.u r13, r28, r18
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r13, zero, .LBB0_156
# %bb.155:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r4, 0
	j .LBB0_157
.LBB0_156:                              #   in Loop: Header=BB0_148 Depth=3
	lui r13, 1024
	or r13, r4, r13
.LBB0_157:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r19, 0(r12)
	and r27, r19, r26
	setlt.u r12, r28, r27
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r12, zero, .LBB0_163
# %bb.158:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r19, 0
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r27, r14, r27
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r27, zero, .LBB0_160
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r19, 16
	andi r12, r12, 1
	add.s r12, r19, r12
	add.s r12, r12, r1
	and r12, r12, r3
.LBB0_160:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	setlt.u r18, r14, r18
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r18, zero, .LBB0_164
# %bb.161:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r9
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r4, zero, .LBB0_165
.LBB0_162:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r14, r2
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r2, zero, .LBB0_147
	j .LBB0_166
.LBB0_163:                              #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r19, r12
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r27, r14, r27
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r27, zero, .LBB0_159
	j .LBB0_160
.LBB0_164:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r4, 16
	andi r13, r13, 1
	add.s r4, r4, r13
	add.s r4, r4, r1
	and r13, r4, r3
	setlt.u r4, r14, r9
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r4, zero, .LBB0_162
.LBB0_165:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r1
	and r15, r4, r3
	setlt.u r2, r14, r2
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r2, zero, .LBB0_147
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r1
	and r24, r2, r3
	j .LBB0_147
.LBB0_167:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 48
	.loc	1 220 7 is_stmt 1               # parallel-rne.mlir:220:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_169
.LBB0_168:                              # %middle.block95
                                        #   in Loop: Header=BB0_169 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 63
	load.d r[11:12], -328(r30)              # 8-byte Folded Reload
	zext_int2long r[9:10], r2
	.loc	1 227 9 is_stmt 1               # parallel-rne.mlir:227:9
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_197
.LBB0_169:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_178 Depth 3
                                        #       Child Loop BB0_172 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[9:10], -328(r30)              # 8-byte Folded Spill
	sll.d r[20:21], r[9:10], r2
	.loc	1 228 11 is_stmt 1              # parallel-rne.mlir:228:11
	bneq r25, r8, .LBB0_176
# %bb.170:                              # %scalar.ph89.preheader
                                        #   in Loop: Header=BB0_169 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_172
.LBB0_171:                              # %scalar.ph89
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	setlt.ul r7, r[9:10], r[5:6]
	.loc	1 243 13 is_stmt 1              # parallel-rne.mlir:243:13
	add.s r2, r25, r2
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	stores.w r4, 0(r2)
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	beq r7, zero, .LBB0_168
.LBB0_172:                              # %scalar.ph89
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_169 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.ul r[11:12], r[9:10], r[20:21]
	slli r2, r11, 2
	add.s r4, r8, r2
	loads.w r7, 0(r4)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	and r11, r7, r26
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	setlt.u r4, r28, r11
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r4, zero, .LBB0_174
# %bb.173:                              # %scalar.ph89
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r7, 0
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r11, r14, r11
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r11, zero, .LBB0_171
	j .LBB0_175
.LBB0_174:                              #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r7, r4
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r11, r14, r11
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r11, zero, .LBB0_171
.LBB0_175:                              # %scalar.ph89
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r7, 16
	andi r4, r4, 1
	add.s r4, r7, r4
	add.s r4, r4, r1
	and r4, r4, r3
	j .LBB0_171
.LBB0_176:                              # %vector.body91.preheader
                                        #   in Loop: Header=BB0_169 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_178
.LBB0_177:                              # %vector.body91
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 228 11 is_stmt 1              # parallel-rne.mlir:228:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	add.s r4, r25, r7
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	seteq.d r2, r[10:11], r[16:17]
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	stores.w r24, 12(r4)
	stores.w r15, 8(r4)
	stores.w r13, 4(r4)
	stores.w r12, 0(r4)
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	bneq r2, zero, .LBB0_168
.LBB0_178:                              # %vector.body91
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_169 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.ul r[12:13], r[10:11], r[20:21]
	slli r7, r12, 2
	add.s r12, r8, r7
	loads.w r22, 12(r12)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	and r2, r22, r26
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	setlt.u r4, r28, r2
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r4, zero, .LBB0_180
# %bb.179:                              # %vector.body91
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r24, r22, 0
	j .LBB0_181
.LBB0_180:                              #   in Loop: Header=BB0_178 Depth=3
	lui r4, 1024
	or r24, r22, r4
.LBB0_181:                              # %vector.body91
                                        #   in Loop: Header=BB0_178 Depth=3
	loads.w r23, 8(r12)
	and r9, r23, r26
	setlt.u r4, r28, r9
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r4, zero, .LBB0_183
# %bb.182:                              # %vector.body91
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r23, 0
	j .LBB0_184
.LBB0_183:                              #   in Loop: Header=BB0_178 Depth=3
	lui r4, 1024
	or r15, r23, r4
.LBB0_184:                              # %vector.body91
                                        #   in Loop: Header=BB0_178 Depth=3
	loads.w r4, 4(r12)
	and r18, r4, r26
	setlt.u r13, r28, r18
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r13, zero, .LBB0_186
# %bb.185:                              # %vector.body91
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r4, 0
	j .LBB0_187
.LBB0_186:                              #   in Loop: Header=BB0_178 Depth=3
	lui r13, 1024
	or r13, r4, r13
.LBB0_187:                              # %vector.body91
                                        #   in Loop: Header=BB0_178 Depth=3
	loads.w r19, 0(r12)
	and r27, r19, r26
	setlt.u r12, r28, r27
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r12, zero, .LBB0_193
# %bb.188:                              # %vector.body91
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r19, 0
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r27, r14, r27
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r27, zero, .LBB0_190
.LBB0_189:                              # %vector.body91
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r19, 16
	andi r12, r12, 1
	add.s r12, r19, r12
	add.s r12, r12, r1
	and r12, r12, r3
.LBB0_190:                              # %vector.body91
                                        #   in Loop: Header=BB0_178 Depth=3
	setlt.u r18, r14, r18
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r18, zero, .LBB0_194
# %bb.191:                              # %vector.body91
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r9
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r4, zero, .LBB0_195
.LBB0_192:                              # %vector.body91
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r14, r2
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r2, zero, .LBB0_177
	j .LBB0_196
.LBB0_193:                              #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r19, r12
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r27, r14, r27
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r27, zero, .LBB0_189
	j .LBB0_190
.LBB0_194:                              # %vector.body91
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r4, 16
	andi r13, r13, 1
	add.s r4, r4, r13
	add.s r4, r4, r1
	and r13, r4, r3
	setlt.u r4, r14, r9
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r4, zero, .LBB0_192
.LBB0_195:                              # %vector.body91
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r1
	and r15, r4, r3
	setlt.u r2, r14, r2
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r2, zero, .LBB0_177
.LBB0_196:                              # %vector.body91
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r1
	and r24, r2, r3
	j .LBB0_177
.LBB0_197:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 220 7 is_stmt 1               # parallel-rne.mlir:220:7
	mfence { sm }
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r10
	loadli.w r12,  -340(r30)                # 4-byte Folded Reload
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	addli r2, zero, 4
	bneq r10, r2, .LBB0_134
.LBB0_198:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_200
.LBB0_199:                              # %middle.block86
                                        #   in Loop: Header=BB0_200 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 79
	load.d r[11:12], -328(r30)              # 8-byte Folded Reload
	zext_int2long r[9:10], r2
	.loc	1 255 9 is_stmt 1               # parallel-rne.mlir:255:9
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_228
.LBB0_200:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_209 Depth 3
                                        #       Child Loop BB0_203 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[9:10], -328(r30)              # 8-byte Folded Spill
	sll.d r[20:21], r[9:10], r2
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	bneq r25, r8, .LBB0_207
# %bb.201:                              # %scalar.ph80.preheader
                                        #   in Loop: Header=BB0_200 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_203
.LBB0_202:                              # %scalar.ph80
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	setlt.ul r7, r[9:10], r[5:6]
	.loc	1 271 13 is_stmt 1              # parallel-rne.mlir:271:13
	add.s r2, r25, r2
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	stores.w r4, 0(r2)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	beq r7, zero, .LBB0_199
.LBB0_203:                              # %scalar.ph80
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_200 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.ul r[11:12], r[9:10], r[20:21]
	slli r2, r11, 2
	add.s r4, r8, r2
	loads.w r7, 0(r4)
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	and r11, r7, r26
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	setlt.u r4, r28, r11
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r4, zero, .LBB0_205
# %bb.204:                              # %scalar.ph80
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r7, 0
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r11, r14, r11
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r11, zero, .LBB0_202
	j .LBB0_206
.LBB0_205:                              #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r7, r4
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r11, r14, r11
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r11, zero, .LBB0_202
.LBB0_206:                              # %scalar.ph80
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r7, 16
	andi r4, r4, 1
	add.s r4, r7, r4
	add.s r4, r4, r1
	and r4, r4, r3
	j .LBB0_202
.LBB0_207:                              # %vector.body82.preheader
                                        #   in Loop: Header=BB0_200 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_209
.LBB0_208:                              # %vector.body82
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	add.s r4, r25, r7
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	seteq.d r2, r[10:11], r[16:17]
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	stores.w r24, 12(r4)
	stores.w r15, 8(r4)
	stores.w r13, 4(r4)
	stores.w r12, 0(r4)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	bneq r2, zero, .LBB0_199
.LBB0_209:                              # %vector.body82
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_200 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.ul r[12:13], r[10:11], r[20:21]
	slli r7, r12, 2
	add.s r12, r8, r7
	loads.w r22, 12(r12)
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	and r2, r22, r26
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	setlt.u r4, r28, r2
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r4, zero, .LBB0_211
# %bb.210:                              # %vector.body82
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r24, r22, 0
	j .LBB0_212
.LBB0_211:                              #   in Loop: Header=BB0_209 Depth=3
	lui r4, 1024
	or r24, r22, r4
.LBB0_212:                              # %vector.body82
                                        #   in Loop: Header=BB0_209 Depth=3
	loads.w r23, 8(r12)
	and r9, r23, r26
	setlt.u r4, r28, r9
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r4, zero, .LBB0_214
# %bb.213:                              # %vector.body82
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r23, 0
	j .LBB0_215
.LBB0_214:                              #   in Loop: Header=BB0_209 Depth=3
	lui r4, 1024
	or r15, r23, r4
.LBB0_215:                              # %vector.body82
                                        #   in Loop: Header=BB0_209 Depth=3
	loads.w r4, 4(r12)
	and r18, r4, r26
	setlt.u r13, r28, r18
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r13, zero, .LBB0_217
# %bb.216:                              # %vector.body82
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r4, 0
	j .LBB0_218
.LBB0_217:                              #   in Loop: Header=BB0_209 Depth=3
	lui r13, 1024
	or r13, r4, r13
.LBB0_218:                              # %vector.body82
                                        #   in Loop: Header=BB0_209 Depth=3
	loads.w r19, 0(r12)
	and r27, r19, r26
	setlt.u r12, r28, r27
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r12, zero, .LBB0_224
# %bb.219:                              # %vector.body82
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r19, 0
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r27, r14, r27
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r27, zero, .LBB0_221
.LBB0_220:                              # %vector.body82
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r19, 16
	andi r12, r12, 1
	add.s r12, r19, r12
	add.s r12, r12, r1
	and r12, r12, r3
.LBB0_221:                              # %vector.body82
                                        #   in Loop: Header=BB0_209 Depth=3
	setlt.u r18, r14, r18
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r18, zero, .LBB0_225
# %bb.222:                              # %vector.body82
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r9
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r4, zero, .LBB0_226
.LBB0_223:                              # %vector.body82
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r14, r2
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r2, zero, .LBB0_208
	j .LBB0_227
.LBB0_224:                              #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r19, r12
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r27, r14, r27
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r27, zero, .LBB0_220
	j .LBB0_221
.LBB0_225:                              # %vector.body82
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r4, 16
	andi r13, r13, 1
	add.s r4, r4, r13
	add.s r4, r4, r1
	and r13, r4, r3
	setlt.u r4, r14, r9
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r4, zero, .LBB0_223
.LBB0_226:                              # %vector.body82
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r1
	and r15, r4, r3
	setlt.u r2, r14, r2
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r2, zero, .LBB0_208
.LBB0_227:                              # %vector.body82
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r1
	and r24, r2, r3
	j .LBB0_208
.LBB0_228:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 248 7 is_stmt 1               # parallel-rne.mlir:248:7
	mfence { sm }
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r10
	loadli.w r12,  -340(r30)                # 4-byte Folded Reload
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	addli r2, zero, 7
	bneq r10, r2, .LBB0_135
.LBB0_229:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 332 7 is_stmt 1               # parallel-rne.mlir:332:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_231
.LBB0_230:                              # %middle.block77
                                        #   in Loop: Header=BB0_231 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[9:10], -328(r30)               # 8-byte Folded Reload
	.loc	1 339 9 is_stmt 1               # parallel-rne.mlir:339:9
	setlt.ul r2, r[9:10], r[5:6]
	addli.d r[9:10], r[9:10], 1
	beq r2, zero, .LBB0_289
.LBB0_231:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_240 Depth 3
                                        #       Child Loop BB0_234 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[9:10], -328(r30)              # 8-byte Folded Spill
	sll.d r[20:21], r[9:10], r2
	.loc	1 340 11 is_stmt 1              # parallel-rne.mlir:340:11
	bneq r25, r8, .LBB0_238
# %bb.232:                              # %scalar.ph71.preheader
                                        #   in Loop: Header=BB0_231 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_234
.LBB0_233:                              # %scalar.ph71
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	setlt.ul r7, r[9:10], r[5:6]
	.loc	1 355 13 is_stmt 1              # parallel-rne.mlir:355:13
	add.s r2, r25, r2
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	stores.w r4, 0(r2)
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	beq r7, zero, .LBB0_230
.LBB0_234:                              # %scalar.ph71
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_231 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	add.ul r[11:12], r[9:10], r[20:21]
	slli r2, r11, 2
	add.s r4, r8, r2
	loads.w r7, 0(r4)
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r11, r7, r26
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	setlt.u r4, r28, r11
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r4, zero, .LBB0_236
# %bb.235:                              # %scalar.ph71
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r7, 0
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r11, r14, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r11, zero, .LBB0_233
	j .LBB0_237
.LBB0_236:                              #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r7, r4
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r11, r14, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r11, zero, .LBB0_233
.LBB0_237:                              # %scalar.ph71
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r7, 16
	andi r4, r4, 1
	add.s r4, r7, r4
	add.s r4, r4, r1
	and r4, r4, r3
	j .LBB0_233
.LBB0_238:                              # %vector.body73.preheader
                                        #   in Loop: Header=BB0_231 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_240
.LBB0_239:                              # %vector.body73
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 340 11 is_stmt 1              # parallel-rne.mlir:340:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	add.s r4, r25, r7
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	seteq.d r2, r[10:11], r[16:17]
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	stores.w r24, 12(r4)
	stores.w r15, 8(r4)
	stores.w r13, 4(r4)
	stores.w r12, 0(r4)
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	bneq r2, zero, .LBB0_230
.LBB0_240:                              # %vector.body73
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_231 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	add.ul r[12:13], r[10:11], r[20:21]
	slli r7, r12, 2
	add.s r12, r8, r7
	loads.w r22, 12(r12)
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r2, r22, r26
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	setlt.u r4, r28, r2
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r4, zero, .LBB0_242
# %bb.241:                              # %vector.body73
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r24, r22, 0
	j .LBB0_243
.LBB0_242:                              #   in Loop: Header=BB0_240 Depth=3
	lui r4, 1024
	or r24, r22, r4
.LBB0_243:                              # %vector.body73
                                        #   in Loop: Header=BB0_240 Depth=3
	loads.w r23, 8(r12)
	and r9, r23, r26
	setlt.u r4, r28, r9
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r4, zero, .LBB0_245
# %bb.244:                              # %vector.body73
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r23, 0
	j .LBB0_246
.LBB0_245:                              #   in Loop: Header=BB0_240 Depth=3
	lui r4, 1024
	or r15, r23, r4
.LBB0_246:                              # %vector.body73
                                        #   in Loop: Header=BB0_240 Depth=3
	loads.w r4, 4(r12)
	and r18, r4, r26
	setlt.u r13, r28, r18
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r13, zero, .LBB0_248
# %bb.247:                              # %vector.body73
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r4, 0
	j .LBB0_249
.LBB0_248:                              #   in Loop: Header=BB0_240 Depth=3
	lui r13, 1024
	or r13, r4, r13
.LBB0_249:                              # %vector.body73
                                        #   in Loop: Header=BB0_240 Depth=3
	loads.w r19, 0(r12)
	and r27, r19, r26
	setlt.u r12, r28, r27
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r12, zero, .LBB0_251
# %bb.250:                              # %vector.body73
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r19, 0
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r27, r14, r27
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r27, zero, .LBB0_252
	j .LBB0_253
.LBB0_251:                              #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r19, r12
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r27, r14, r27
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r27, zero, .LBB0_253
.LBB0_252:                              # %vector.body73
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r19, 16
	andi r12, r12, 1
	add.s r12, r19, r12
	add.s r12, r12, r1
	and r12, r12, r3
.LBB0_253:                              # %vector.body73
                                        #   in Loop: Header=BB0_240 Depth=3
	setlt.u r18, r14, r18
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r18, zero, .LBB0_256
# %bb.254:                              # %vector.body73
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r9
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r4, zero, .LBB0_257
.LBB0_255:                              # %vector.body73
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r14, r2
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r2, zero, .LBB0_239
	j .LBB0_258
.LBB0_256:                              # %vector.body73
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r4, 16
	andi r13, r13, 1
	add.s r4, r4, r13
	add.s r4, r4, r1
	and r13, r4, r3
	setlt.u r4, r14, r9
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r4, zero, .LBB0_255
.LBB0_257:                              # %vector.body73
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r1
	and r15, r4, r3
	setlt.u r2, r14, r2
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r2, zero, .LBB0_239
.LBB0_258:                              # %vector.body73
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r1
	and r24, r2, r3
	j .LBB0_239
.LBB0_259:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 96
	.loc	1 304 7 is_stmt 1               # parallel-rne.mlir:304:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_261
.LBB0_260:                              # %middle.block68
                                        #   in Loop: Header=BB0_261 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 111
	load.d r[11:12], -328(r30)              # 8-byte Folded Reload
	zext_int2long r[9:10], r2
	.loc	1 311 9 is_stmt 1               # parallel-rne.mlir:311:9
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_289
.LBB0_261:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_270 Depth 3
                                        #       Child Loop BB0_264 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[9:10], -328(r30)              # 8-byte Folded Spill
	sll.d r[20:21], r[9:10], r2
	.loc	1 312 11 is_stmt 1              # parallel-rne.mlir:312:11
	bneq r25, r8, .LBB0_268
# %bb.262:                              # %scalar.ph62.preheader
                                        #   in Loop: Header=BB0_261 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_264
.LBB0_263:                              # %scalar.ph62
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	setlt.ul r7, r[9:10], r[5:6]
	.loc	1 327 13 is_stmt 1              # parallel-rne.mlir:327:13
	add.s r2, r25, r2
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	stores.w r4, 0(r2)
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	beq r7, zero, .LBB0_260
.LBB0_264:                              # %scalar.ph62
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_261 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	add.ul r[11:12], r[9:10], r[20:21]
	slli r2, r11, 2
	add.s r4, r8, r2
	loads.w r7, 0(r4)
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r11, r7, r26
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	setlt.u r4, r28, r11
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r4, zero, .LBB0_266
# %bb.265:                              # %scalar.ph62
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r7, 0
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r11, r14, r11
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r11, zero, .LBB0_263
	j .LBB0_267
.LBB0_266:                              #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r7, r4
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r11, r14, r11
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r11, zero, .LBB0_263
.LBB0_267:                              # %scalar.ph62
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r7, 16
	andi r4, r4, 1
	add.s r4, r7, r4
	add.s r4, r4, r1
	and r4, r4, r3
	j .LBB0_263
.LBB0_268:                              # %vector.body64.preheader
                                        #   in Loop: Header=BB0_261 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_270
.LBB0_269:                              # %vector.body64
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 312 11 is_stmt 1              # parallel-rne.mlir:312:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	add.s r4, r25, r7
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	seteq.d r2, r[10:11], r[16:17]
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	stores.w r24, 12(r4)
	stores.w r15, 8(r4)
	stores.w r13, 4(r4)
	stores.w r12, 0(r4)
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	bneq r2, zero, .LBB0_260
.LBB0_270:                              # %vector.body64
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_261 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	add.ul r[12:13], r[10:11], r[20:21]
	slli r7, r12, 2
	add.s r12, r8, r7
	loads.w r22, 12(r12)
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r2, r22, r26
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	setlt.u r4, r28, r2
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r4, zero, .LBB0_272
# %bb.271:                              # %vector.body64
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r24, r22, 0
	j .LBB0_273
.LBB0_272:                              #   in Loop: Header=BB0_270 Depth=3
	lui r4, 1024
	or r24, r22, r4
.LBB0_273:                              # %vector.body64
                                        #   in Loop: Header=BB0_270 Depth=3
	loads.w r23, 8(r12)
	and r9, r23, r26
	setlt.u r4, r28, r9
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r4, zero, .LBB0_275
# %bb.274:                              # %vector.body64
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r23, 0
	j .LBB0_276
.LBB0_275:                              #   in Loop: Header=BB0_270 Depth=3
	lui r4, 1024
	or r15, r23, r4
.LBB0_276:                              # %vector.body64
                                        #   in Loop: Header=BB0_270 Depth=3
	loads.w r4, 4(r12)
	and r18, r4, r26
	setlt.u r13, r28, r18
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r13, zero, .LBB0_278
# %bb.277:                              # %vector.body64
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r4, 0
	j .LBB0_279
.LBB0_278:                              #   in Loop: Header=BB0_270 Depth=3
	lui r13, 1024
	or r13, r4, r13
.LBB0_279:                              # %vector.body64
                                        #   in Loop: Header=BB0_270 Depth=3
	loads.w r19, 0(r12)
	and r27, r19, r26
	setlt.u r12, r28, r27
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r12, zero, .LBB0_281
# %bb.280:                              # %vector.body64
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r19, 0
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r27, r14, r27
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r27, zero, .LBB0_282
	j .LBB0_283
.LBB0_281:                              #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r19, r12
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r27, r14, r27
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r27, zero, .LBB0_283
.LBB0_282:                              # %vector.body64
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r19, 16
	andi r12, r12, 1
	add.s r12, r19, r12
	add.s r12, r12, r1
	and r12, r12, r3
.LBB0_283:                              # %vector.body64
                                        #   in Loop: Header=BB0_270 Depth=3
	setlt.u r18, r14, r18
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r18, zero, .LBB0_286
# %bb.284:                              # %vector.body64
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r14, r9
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r4, zero, .LBB0_287
.LBB0_285:                              # %vector.body64
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r14, r2
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r2, zero, .LBB0_269
	j .LBB0_288
.LBB0_286:                              # %vector.body64
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r4, 16
	andi r13, r13, 1
	add.s r4, r4, r13
	add.s r4, r4, r1
	and r13, r4, r3
	setlt.u r4, r14, r9
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r4, zero, .LBB0_285
.LBB0_287:                              # %vector.body64
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r1
	and r15, r4, r3
	setlt.u r2, r14, r2
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r2, zero, .LBB0_269
.LBB0_288:                              # %vector.body64
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r1
	and r24, r2, r3
	j .LBB0_269
.LBB0_289:                              # %.sink.split51
                                        #   in Loop: Header=BB0_8 Depth=1
	mfence { sm }
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r10
	loadli.w r12,  -340(r30)                # 4-byte Folded Reload
.LBB0_290:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 360 7                         # parallel-rne.mlir:360:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	loadli.w r2,  -344(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_5
# %bb.291:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	bneq r10, zero, .LBB0_7
# %bb.292:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	loadli.w r2,  -384(r30)                 # 4-byte Folded Reload
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	loadli.w r8,  -380(r30)                 # 4-byte Folded Reload
	zext_int2long r[10:11], zero
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	load.d r[18:19], 16(r30)
	addli r15, zero, 1
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	zext_int2long r[4:5], r2
	addli r2, zero, 896
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	sext_int2long r[8:9], r8
	zext_int2long r[6:7], r2
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	min.sl r[10:11], r[8:9], r[10:11]
	addli r2, zero, 18
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	min.ul r[6:7], r[4:5], r[6:7]
	addli.d r[6:7], r[6:7], 128
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	max.ul r[6:7], r[6:7], r[4:5]
	sub.sl r[4:5], r[6:7], r[4:5]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	addli.d r[6:7], r[10:11], 128
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	load.d r[10:11], -376(r30)              # 8-byte Folded Reload
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	max.sl r[6:7], r[6:7], r[8:9]
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	min.ul r[4:5], r[4:5], r[16:17]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	sll.d r[10:11], r[10:11], r2
	addli r2, r12, 0
	load.d r[12:13], -368(r30)              # 8-byte Folded Reload
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	sub.sl r[6:7], r[6:7], r[8:9]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	add.ul r[10:11], r[18:19], r[10:11]
	sll.d r[12:13], r[12:13], r15
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.sl r[6:7], r[6:7], r[16:17]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	add.ul r[8:9], r[10:11], r[12:13]
	addli r12, r2, 0
	addli r2, zero, 12
	addli r13, zero, 5
	addli r11, zero, 64
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r10
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	xwait r2, 0
	lock zero, r13
	ori r2, r25, 64
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r15, zero, 1
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r2, r11, 3
	addli r2, r4, 31
	slli r4, r4, 1
	addli r5, zero, 128
	srli r2, r2, 5
	dma_cfg r11, r5, r2, 4
	andi r2, r4, 62
	addli r4, zero, 512
	addli r5, zero, 2048
	dma_cfg r5, r4, r6, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	addli r2, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r13
	j .LBB0_6
.LBB0_293:                              # %._crit_edge
	.loc	1 380 5                         # parallel-rne.mlir:380:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_295
# %bb.294:
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
.LBB0_295:
	.loc	1 381 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:381:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/division-rey8yq97" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
