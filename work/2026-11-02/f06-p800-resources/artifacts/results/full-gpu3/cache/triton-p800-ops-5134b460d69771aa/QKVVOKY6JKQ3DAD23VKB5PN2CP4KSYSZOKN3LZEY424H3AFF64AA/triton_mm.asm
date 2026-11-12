	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-lqg7_su2" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -512
	addli r1, zero, 1
.Ltmp0:
	.loc	1 31 5 prologue_end             # parallel-rne.mlir:31:5
	core_id r13
	addli r30, sp, 448
	xsignal_mode_cfg r1
	beq r13, zero, .LBB0_2
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	.loc	1 33 10 is_stmt 1               # parallel-rne.mlir:33:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -92(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -256(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -348(r30)
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r2, r2, r1
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r1, r4, 0
	fmac.s r1, r2, r3
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	mul.s r3, r2, r3
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	addli r1, r1, -1
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	div.s r4, r1, r4
	ori r1, r5, 4095
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w r1, -88(r30)
	storeli.w r1, -84(r30)
	storeli.w r1, -80(r30)
	storeli.w r1, -76(r30)
	storeli.w r1, -72(r30)
	storeli.w r1, -68(r30)
	storeli.w r1, -64(r30)
	storeli.w r1, -60(r30)
	storeli.w r1, -56(r30)
	storeli.w r1, -52(r30)
	storeli.w r1, -48(r30)
	storeli.w r1, -44(r30)
	storeli.w r1, -40(r30)
	storeli.w r1, -36(r30)
	storeli.w r1, -32(r30)
	storeli.w r1, -28(r30)
	storeli.w r1, -24(r30)
	storeli.w r1, -20(r30)
	storeli.w r1, -16(r30)
	storeli.w r1, -12(r30)
	storeli.w r1, -8(r30)
	storeli.w r1, -4(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r1, -252(r30)
	storeli.w r1, -248(r30)
	storeli.w r1, -244(r30)
	storeli.w r1, -240(r30)
	storeli.w r1, -236(r30)
	storeli.w r1, -232(r30)
	storeli.w r1, -228(r30)
	storeli.w r1, -224(r30)
	storeli.w r1, -220(r30)
	storeli.w r1, -216(r30)
	storeli.w r1, -212(r30)
	storeli.w r1, -208(r30)
	storeli.w r1, -204(r30)
	storeli.w r1, -200(r30)
	storeli.w r1, -196(r30)
	storeli.w r1, -192(r30)
	storeli.w r1, -188(r30)
	storeli.w r1, -184(r30)
	storeli.w r1, -180(r30)
	storeli.w r1, -176(r30)
	storeli.w r1, -172(r30)
	storeli.w r1, -168(r30)
	storeli.w r1, -164(r30)
	storeli.w r1, -160(r30)
	storeli.w r1, -156(r30)
	storeli.w r1, -152(r30)
	storeli.w r1, -148(r30)
	storeli.w r1, -144(r30)
	storeli.w r1, -140(r30)
	storeli.w r1, -136(r30)
	storeli.w r1, -132(r30)
	storeli.w r1, -128(r30)
	storeli.w r1, -124(r30)
	storeli.w r1, -120(r30)
	storeli.w r1, -116(r30)
	storeli.w r1, -112(r30)
	storeli.w r1, -108(r30)
	storeli.w r1, -104(r30)
	storeli.w r1, -100(r30)
	storeli.w r1, -96(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r1, -344(r30)
	storeli.w r1, -340(r30)
	storeli.w r1, -336(r30)
	storeli.w r1, -332(r30)
	storeli.w r1, -328(r30)
	storeli.w r1, -324(r30)
	storeli.w r1, -320(r30)
	storeli.w r1, -316(r30)
	storeli.w r1, -312(r30)
	storeli.w r1, -308(r30)
	storeli.w r1, -304(r30)
	storeli.w r1, -300(r30)
	storeli.w r1, -296(r30)
	storeli.w r1, -292(r30)
	storeli.w r1, -288(r30)
	storeli.w r1, -284(r30)
	storeli.w r1, -280(r30)
	storeli.w r1, -276(r30)
	storeli.w r1, -272(r30)
	storeli.w r1, -268(r30)
	storeli.w r1, -264(r30)
	storeli.w r1, -260(r30)
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r2, r4, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	fmac.s r4, r4, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	min.s r3, r4, r3
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	ble.s r3, r2, .LBB0_297
# %bb.4:                                # %.lr.ph
	.loc	1 42 11                         # parallel-rne.mlir:42:11
	sext_int2long r[6:7], r2
	lui r2, 7
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[3:4], r3
	addli r1, zero, 0
	addli r18, zero, 4
	addli r22, zero, 7
	lui r5, 522240
	addli r8, zero, 0
	ori r17, r2, 4095
	lui r2, 127
	.loc	1 42 11                         # parallel-rne.mlir:42:11
	store.d r[3:4], -448(r30)               # 8-byte Folded Spill
	lui r16, 1048448
	ori r2, r2, 4095
	storeli.w r2, -388(r30)                 # 4-byte Folded Spill
	lui r2, 524287
	ori r12, r2, 4095
	lui r2, 522239
	ori r4, r2, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 361 7 is_stmt 1               # parallel-rne.mlir:361:7
	addli r1, zero, 11
	addli r18, zero, 4
	addli r22, zero, 7
	xsignal r1, 0
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], -408(r30)                # 8-byte Folded Reload
	.loc	1 50 5 is_stmt 1                # parallel-rne.mlir:50:5
	load.d r[1:2], -448(r30)                # 8-byte Folded Reload
	loadli.w r8,  -412(r30)                 # 4-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	setlt.sl r2, r[6:7], r[1:2]
	loadli.w r1,  -364(r30)                 # 4-byte Folded Reload
	addli r1, r1, 1
	beq r2, zero, .LBB0_297
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_76 Depth 2
                                        #       Child Loop BB0_85 Depth 3
                                        #       Child Loop BB0_80 Depth 3
                                        #     Child Loop BB0_46 Depth 2
                                        #       Child Loop BB0_55 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #     Child Loop BB0_107 Depth 2
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_111 Depth 3
                                        #     Child Loop BB0_139 Depth 2
                                        #       Child Loop BB0_148 Depth 3
                                        #       Child Loop BB0_143 Depth 3
                                        #     Child Loop BB0_170 Depth 2
                                        #       Child Loop BB0_179 Depth 3
                                        #       Child Loop BB0_174 Depth 3
                                        #     Child Loop BB0_204 Depth 2
                                        #       Child Loop BB0_213 Depth 3
                                        #       Child Loop BB0_208 Depth 3
                                        #     Child Loop BB0_265 Depth 2
                                        #       Child Loop BB0_274 Depth 3
                                        #       Child Loop BB0_269 Depth 3
                                        #     Child Loop BB0_235 Depth 2
                                        #       Child Loop BB0_244 Depth 3
                                        #       Child Loop BB0_239 Depth 3
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	bneq r13, r18, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  32(r30)
	store.d r[6:7], -408(r30)               # 8-byte Folded Spill
	addli r10, zero, 8
	.loc	1 97 15 is_stmt 1               # parallel-rne.mlir:97:15
	loadli.w r28,  -348(r30)
	loadli.w r20,  -256(r30)
	addli r2, zero, 0
	addli r25, zero, 0
	div.s r3, r6, r3
	loadli.w r6,  28(r30)
	addli r7, zero, 5
	mod.s r7, r8, r7
	addli r8, r8, 1
	storeli.w r8, -412(r30)                 # 4-byte Folded Spill
	div.s r3, r3, r6
	addli r6, zero, 128
	slli r15, r7, 14
	div.s r6, r3, r6
	slli r8, r6, 3
	slli r6, r6, 7
	sub.s r9, r10, r8
	sub.s r6, r3, r6
	min.s r9, r9, r10
	mod.s r3, r3, r9
	div.s r10, r6, r9
	lui r6, 20
	loadli.w r9,  -92(r30)
	add.s r6, r15, r6
	slli r7, r10, 6
	add.s r3, r8, r3
	storeli.w r7, -440(r30)                 # 4-byte Folded Spill
	zext_int2long r[7:8], r10
	slli r10, r3, 6
	storeli.w r10, -436(r30)                # 4-byte Folded Spill
	zext_int2long r[10:11], r3
	addli r3, zero, 6
	sll.d r[7:8], r[7:8], r3
	addli r3, zero, 16
	store.d r[10:11], -432(r30)             # 8-byte Folded Spill
	sll.d r[18:19], r[10:11], r3
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r3, zero, 1
	sll.d r[10:11], r[7:8], r3
	and.d r[7:8], r[18:19], r[16:17]
	store.d r[18:19], -376(r30)             # 8-byte Folded Spill
	store.d r[7:8], -384(r30)               # 8-byte Folded Spill
	load.d r[7:8], 8(r30)
	store.d r[10:11], -424(r30)             # 8-byte Folded Spill
	add.ul r[7:8], r[7:8], r[10:11]
	store.d r[7:8], -400(r30)               # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r3, 40
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	lock zero, r19
	addli r21, zero, 64
	addli r10, zero, 2
	dma_cfg r18, r18, zero, 0
	ori r3, r3, 64
	dma_cfg zero, r8, zero, 2
	add.s r3, r23, r3
	addli r23, zero, 512
	dma_cfg r3, r7, r21, 3
	addli r3, zero, 128
	addli r7, zero, 2048
	addli r8, zero, 5
	dma_cfg r3, r21, r19, 4
	dma_cfg r23, r7, r13, 5
	addli r7, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r19
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 8
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 9
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 11
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 12
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 13
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 14
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 15
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 16
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 17
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 18
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 19
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 20
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 22
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 23
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 24
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 25
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 26
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 27
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 28
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 29
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 30
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 31
	dma_cfg zero, zero, r7, 10
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r14, zero, r21, 3
	dma_cfg r3, zero, r19, 4
	dma_cfg r23, zero, r13, 5
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r13
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	xsignal r10, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r20, r20, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r14, r9, 1
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r25, r25, 1
	addli r3, zero, 8
	beq r25, r3, .LBB0_35
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 122 15                        # parallel-rne.mlir:122:15
	addli r2, r2, 1
	addli r9, r14, 0
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	zext_int2long r[7:8], r25
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	load.d r[18:19], -376(r30)              # 8-byte Folded Reload
	loadli.w r3,  -388(r30)                 # 4-byte Folded Reload
	load.d r[26:27], -384(r30)              # 8-byte Folded Reload
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	sll.d r[10:11], r[7:8], r22
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	add.ul r[18:19], r[10:11], r[18:19]
	zext_int2long r[10:11], r3
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	setlt.ul r3, r[10:11], r[18:19]
	.loc	1 87 15                         # parallel-rne.mlir:87:15
	bneq r3, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[26:27], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	add.s r11, r28, r2
	.loc	1 97 15 is_stmt 1               # parallel-rne.mlir:97:15
	addli r3, zero, 22
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r21, r1, r2
	.loc	1 95 15 is_stmt 1               # parallel-rne.mlir:95:15
	addli r10, zero, 24
	addli r14, zero, 448
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	mod.s r3, r11, r3
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	mod.s r10, r21, r10
	zext_int2long r[22:23], r14
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	storeli.w r21, -364(r30)                # 4-byte Folded Spill
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	store.d r[22:23], -360(r30)             # 8-byte Folded Spill
	slli r23, r3, 15
	lui r3, 40
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	slli r10, r10, 15
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	add.s r14, r23, r3
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r3, zero, 2
	beq r13, r3, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r21
	addli r3, zero, 1
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	bneq r21, r3, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r10, zero, 1024
	sub.sl r[7:8], r[18:19], r[26:27]
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	sll.d r[18:19], r[18:19], r3
	addli r24, zero, 3
	addli r26, zero, 21
	zext_int2long r[21:22], r10
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[7:8], r[7:8], r[21:22]
	load.d r[21:22], -360(r30)              # 8-byte Folded Reload
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	xwait r24, 0
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	min.sl r[21:22], r[7:8], r[21:22]
	sub.sl r[21:22], r[21:22], r[7:8]
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	load.d r[7:8], 0(r30)
	addli r13, r21, 64
	addli r22, zero, 7
	add.ul r[7:8], r[7:8], r[18:19]
	addli r18, zero, 1
	addli r19, zero, 4
	blt.s r26, r11, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r10, zero, 5
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r3, zero, 2
	addli r21, zero, 64
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 6
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r22, 10
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
	addli r3, zero, 22
	dma_cfg zero, zero, r26, 10
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
	addli r3, zero, 128
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r14, zero, r21, 3
	dma_cfg r3, zero, r19, 4
	addli r3, zero, 512
	dma_cfg r3, zero, r21, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r7, zero, 2
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	addli r3, zero, 5
	addli r24, zero, 3
	addli r19, zero, 4
	addli r22, zero, 7
	xwait r7, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 128
	ds_cfg r7, zero, 0
	addli r7, zero, 64
	ds_cfg r3, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r7, zero, 13
	shuffle_batch r10, r14, r3, 1
	unlock zero
	xsignal r24, 0
	xsignal r19, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r3, zero, 22
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r13, zero, 40
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r14, r9, 1
	addli r22, zero, 7
	mod.s r3, r9, r3
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	mod.s r13, r20, r13
	addli r20, r20, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r23, r3, 15
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	slli r3, r13, 15
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	lui r13, 216
	add.s r13, r23, r13
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	beq r21, r22, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r18, zero, 6
	addli r19, zero, 4
	addli r24, zero, 3
	bneq r21, r18, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r21, zero, 18
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	load.d r[26:27], -400(r30)              # 8-byte Folded Reload
	xwait r22, 0
	sll.d r[7:8], r[7:8], r21
	add.ul r[7:8], r[26:27], r[7:8]
	addli r26, zero, 21
	blt.s r26, r9, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r9, zero, 5
	addli r10, zero, 1
	addli r18, zero, 2
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r3, zero, 6
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r22, 10
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
	addli r3, zero, 19
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 20
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 22
	dma_cfg zero, zero, r26, 10
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
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r13, zero, r3, 3
	addli r3, zero, 128
	dma_cfg r3, zero, r18, 4
	addli r18, zero, 256
	dma_cfg r18, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r3, 216
	addli r10, zero, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	lock zero, r19
	addli r21, zero, 64
	addli r18, zero, 2
	addli r9, zero, 5
	addli r27, zero, 18
	ori r3, r3, 64
	dma_cfg r10, r10, zero, 0
	dma_cfg zero, r8, zero, 2
	add.s r3, r23, r3
	addli r23, zero, 256
	dma_cfg r3, r7, r21, 3
	addli r3, zero, 128
	addli r7, zero, 2048
	addli r8, zero, 6
	dma_cfg r3, r21, r18, 4
	dma_cfg r23, r7, r3, 5
	addli r7, zero, 8
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r19
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 9
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 11
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 12
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 13
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 14
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 15
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 16
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 17
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 19
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 20
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 22
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 23
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 24
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 25
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 26
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 27
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 28
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 29
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 30
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 31
	dma_cfg zero, zero, r7, 10
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r13, zero, r21, 3
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r13
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	dma_cfg r3, zero, r18, 4
	dma_cfg r23, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r8, 0
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	addli r7, zero, 6
	addli r8, zero, 64
	addli r19, zero, 4
	addli r24, zero, 3
	xwait r7, 0
	addli r7, zero, 9
	xwait r7, 0
	addli r7, zero, 2
	lock zero, zero
	ds_cfg r7, zero, 0
	addli r7, zero, 128
	ds_cfg r8, zero, 1
	ds_cfg r7, zero, 14
	ds_cfg r8, zero, 13
	shuffle_coa r3, r13, r7, 2
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r13
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r3, zero, 8
	unlock zero
	xsignal r22, 0
	xsignal r3, 0
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r13
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	bneq r13, r19, .LBB0_31
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r8, zero, 8
	addli r9, zero, 1
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	addli r7, zero, 128
	addli r18, zero, 64
	xwait r19, 0
	xwait r8, 0
	lock zero, r9
	mm_cfg r18, r7, r18, 0
	addli r7, zero, 2
	mm_cfg r8, r7, r9, 2
	beq r2, zero, .LBB0_32
# %bb.30:                               # %.preheader30
                                        #   in Loop: Header=BB0_15 Depth=2
	mm_acc r6, r10, r3, 8
	j .LBB0_33
.LBB0_31:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 78 7 is_stmt 1                # parallel-rne.mlir:78:7
	addli r25, r25, 1
	addli r3, zero, 8
	bneq r25, r3, .LBB0_14
	j .LBB0_37
.LBB0_32:                               # %.preheader29
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	mm r6, r10, r3, 8
.LBB0_33:                               # %.thread20.thread44
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r3, zero, 1
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r25, r25, 1
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	unlock r3
	addli r3, zero, 5
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r3, zero, 8
	bneq r25, r3, .LBB0_14
# %bb.34:                               # %.thread21.loopexit
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r1, r11, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r20, -256(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r14, -92(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	storeli.w r1, -348(r30)
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, r11, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r20, -256(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r14, -92(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	storeli.w r1, -348(r30)
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	bneq r13, r19, .LBB0_38
.LBB0_36:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	storeli.w zero, -384(r30)               # 4-byte Folded Spill
	xsignal r1, 0
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	j .LBB0_41
.LBB0_37:                               # %.thread43.loopexit
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r1, r11, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r20, -256(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r14, -92(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	storeli.w r1, -348(r30)
.LBB0_38:                               # %.thread43
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	bneq r13, r24, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 130 7 is_stmt 1               # parallel-rne.mlir:130:7
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	storeli.w r1, -384(r30)                 # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -384(r30)               # 4-byte Folded Spill
.LBB0_41:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	addli r1, zero, 255
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	xfence
	addli r3, zero, 63
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	mfence { lm, sm, gm }
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	csr_set csr5, r1
	addli r1, zero, 64
	zext_int2long r[27:28], r3
	sync_core
	zext_int2long r[1:2], r1
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	beq r13, zero, .LBB0_74
# %bb.42:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r3, zero, 2
	beq r13, r3, .LBB0_105
.LBB0_43:                               #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 1
	bneq r13, r3, .LBB0_136
# %bb.44:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 8
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r3
	j .LBB0_46
.LBB0_45:                               # %middle.block102
                                        #   in Loop: Header=BB0_46 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 15
	load.d r[9:10], -376(r30)               # 8-byte Folded Reload
	zext_int2long r[7:8], r3
	.loc	1 171 9 is_stmt 1               # parallel-rne.mlir:171:9
	setlt.ul r3, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	beq r3, zero, .LBB0_135
.LBB0_46:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_55 Depth 3
                                        #       Child Loop BB0_50 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 6
	store.d r[7:8], -376(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[7:8], r3
	.loc	1 172 11 is_stmt 1              # parallel-rne.mlir:172:11
	bneq r15, r6, .LBB0_53
# %bb.47:                               # %scalar.ph96.preheader
                                        #   in Loop: Header=BB0_46 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_50
.LBB0_48:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_50 Depth=3
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	lui r10, 1048560
	add.s r9, r9, r17
	and r9, r9, r10
.LBB0_49:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	setlt.ul r10, r[7:8], r[27:28]
	.loc	1 187 13 is_stmt 1              # parallel-rne.mlir:187:13
	add.s r3, r15, r3
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	stores.w r9, 0(r3)
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	beq r10, zero, .LBB0_45
.LBB0_50:                               # %scalar.ph96
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.ul r[9:10], r[7:8], r[19:20]
	slli r3, r9, 2
	add.s r9, r6, r3
	loads.w r10, 0(r9)
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r11, r10, r12
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	setlt.u r9, r5, r11
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r9, zero, .LBB0_52
# %bb.51:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r11, r4, r11
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r11, zero, .LBB0_49
	j .LBB0_48
.LBB0_52:                               #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r11, r4, r11
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r11, zero, .LBB0_49
	j .LBB0_48
.LBB0_53:                               # %vector.body98.preheader
                                        #   in Loop: Header=BB0_46 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_55
.LBB0_54:                               # %vector.body98
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 172 11 is_stmt 1              # parallel-rne.mlir:172:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	add.s r8, r15, r9
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	seteq.d r3, r[13:14], r[1:2]
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	stores.w r11, 12(r8)
	stores.w r24, 8(r8)
	stores.w r7, 4(r8)
	stores.w r22, 0(r8)
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	bneq r3, zero, .LBB0_45
.LBB0_55:                               # %vector.body98
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.ul r[7:8], r[13:14], r[19:20]
	slli r9, r7, 2
	add.s r8, r6, r9
	loads.w r25, 12(r8)
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r23, r25, r12
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	setlt.u r3, r5, r23
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r3, zero, .LBB0_57
# %bb.56:                               # %vector.body98
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r25, 0
	j .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_55 Depth=3
	lui r3, 1024
	or r11, r25, r3
.LBB0_58:                               # %vector.body98
                                        #   in Loop: Header=BB0_55 Depth=3
	loads.w r10, 8(r8)
	and r18, r10, r12
	setlt.u r3, r5, r18
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r3, zero, .LBB0_60
# %bb.59:                               # %vector.body98
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r10, 0
	j .LBB0_61
.LBB0_60:                               #   in Loop: Header=BB0_55 Depth=3
	lui r3, 1024
	or r24, r10, r3
.LBB0_61:                               # %vector.body98
                                        #   in Loop: Header=BB0_55 Depth=3
	loads.w r26, 4(r8)
	and r3, r26, r12
	setlt.u r7, r5, r3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r7, zero, .LBB0_63
# %bb.62:                               # %vector.body98
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r26, 0
	j .LBB0_64
.LBB0_63:                               #   in Loop: Header=BB0_55 Depth=3
	lui r7, 1024
	or r7, r26, r7
.LBB0_64:                               # %vector.body98
                                        #   in Loop: Header=BB0_55 Depth=3
	loads.w r8, 0(r8)
	and r21, r8, r12
	setlt.u r22, r5, r21
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r22, zero, .LBB0_66
# %bb.65:                               # %vector.body98
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r8, 0
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r21, r4, r21
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r21, zero, .LBB0_67
	j .LBB0_68
.LBB0_66:                               #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r22, 1024
	or r22, r8, r22
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r21, r4, r21
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r21, zero, .LBB0_68
.LBB0_67:                               # %vector.body98
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r21, r8, 16
	andi r21, r21, 1
	add.s r8, r8, r21
	lui r21, 1048560
	add.s r8, r8, r17
	and r22, r8, r21
.LBB0_68:                               # %vector.body98
                                        #   in Loop: Header=BB0_55 Depth=3
	setlt.u r3, r4, r3
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r3, zero, .LBB0_71
# %bb.69:                               # %vector.body98
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r26, 16
	lui r7, 1048560
	andi r3, r3, 1
	add.s r3, r26, r3
	add.s r3, r3, r17
	and r7, r3, r7
	setlt.u r3, r4, r18
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r3, zero, .LBB0_72
.LBB0_70:                               # %vector.body98
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r4, r23
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r3, zero, .LBB0_54
	j .LBB0_73
.LBB0_71:                               # %vector.body98
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r4, r18
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r3, zero, .LBB0_70
.LBB0_72:                               # %vector.body98
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	lui r8, 1048560
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r17
	and r24, r3, r8
	setlt.u r3, r4, r23
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r3, zero, .LBB0_54
.LBB0_73:                               # %vector.body98
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r25, 16
	lui r8, 1048560
	andi r3, r3, 1
	add.s r3, r25, r3
	add.s r3, r3, r17
	and r11, r3, r8
	j .LBB0_54
.LBB0_74:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	xfence
	zext_int2long r[7:8], zero
	mfence { lm, sm, gm }
	j .LBB0_76
.LBB0_75:                               # %middle.block120
                                        #   in Loop: Header=BB0_76 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 7
	load.d r[9:10], -376(r30)               # 8-byte Folded Reload
	zext_int2long r[7:8], r3
	.loc	1 143 9 is_stmt 1               # parallel-rne.mlir:143:9
	setlt.ul r3, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	beq r3, zero, .LBB0_104
.LBB0_76:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_85 Depth 3
                                        #       Child Loop BB0_80 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 6
	store.d r[7:8], -376(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[7:8], r3
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	bneq r15, r6, .LBB0_83
# %bb.77:                               # %scalar.ph114.preheader
                                        #   in Loop: Header=BB0_76 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_80
.LBB0_78:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_80 Depth=3
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	lui r10, 1048560
	add.s r9, r9, r17
	and r9, r9, r10
.LBB0_79:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	setlt.ul r10, r[7:8], r[27:28]
	.loc	1 159 13 is_stmt 1              # parallel-rne.mlir:159:13
	add.s r3, r15, r3
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r9, 0(r3)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	beq r10, zero, .LBB0_75
.LBB0_80:                               # %scalar.ph114
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[9:10], r[7:8], r[19:20]
	slli r3, r9, 2
	add.s r9, r6, r3
	loads.w r10, 0(r9)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r11, r10, r12
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r9, r5, r11
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r9, zero, .LBB0_82
# %bb.81:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r11, r4, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r11, zero, .LBB0_79
	j .LBB0_78
.LBB0_82:                               #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r11, r4, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r11, zero, .LBB0_79
	j .LBB0_78
.LBB0_83:                               # %vector.body116.preheader
                                        #   in Loop: Header=BB0_76 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_85
.LBB0_84:                               # %vector.body116
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r8, r15, r9
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	seteq.d r3, r[13:14], r[1:2]
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r11, 12(r8)
	stores.w r10, 8(r8)
	stores.w r7, 4(r8)
	stores.w r22, 0(r8)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	bneq r3, zero, .LBB0_75
.LBB0_85:                               # %vector.body116
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[7:8], r[13:14], r[19:20]
	slli r9, r7, 2
	add.s r8, r6, r9
	loads.w r25, 12(r8)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r23, r25, r12
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r3, r5, r23
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r3, zero, .LBB0_87
# %bb.86:                               # %vector.body116
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r25, 0
	j .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_85 Depth=3
	lui r3, 1024
	or r11, r25, r3
.LBB0_88:                               # %vector.body116
                                        #   in Loop: Header=BB0_85 Depth=3
	loads.w r24, 8(r8)
	and r18, r24, r12
	setlt.u r3, r5, r18
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r3, zero, .LBB0_90
# %bb.89:                               # %vector.body116
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r24, 0
	j .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_85 Depth=3
	lui r3, 1024
	or r10, r24, r3
.LBB0_91:                               # %vector.body116
                                        #   in Loop: Header=BB0_85 Depth=3
	loads.w r26, 4(r8)
	and r3, r26, r12
	setlt.u r7, r5, r3
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r7, zero, .LBB0_93
# %bb.92:                               # %vector.body116
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r26, 0
	j .LBB0_94
.LBB0_93:                               #   in Loop: Header=BB0_85 Depth=3
	lui r7, 1024
	or r7, r26, r7
.LBB0_94:                               # %vector.body116
                                        #   in Loop: Header=BB0_85 Depth=3
	loads.w r8, 0(r8)
	and r21, r8, r12
	setlt.u r22, r5, r21
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r22, zero, .LBB0_96
# %bb.95:                               # %vector.body116
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r8, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r21, r4, r21
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r21, zero, .LBB0_97
	j .LBB0_98
.LBB0_96:                               #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r22, 1024
	or r22, r8, r22
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r21, r4, r21
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r21, zero, .LBB0_98
.LBB0_97:                               # %vector.body116
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r21, r8, 16
	andi r21, r21, 1
	add.s r8, r8, r21
	lui r21, 1048560
	add.s r8, r8, r17
	and r22, r8, r21
.LBB0_98:                               # %vector.body116
                                        #   in Loop: Header=BB0_85 Depth=3
	setlt.u r3, r4, r3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r3, zero, .LBB0_101
# %bb.99:                               # %vector.body116
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r26, 16
	lui r7, 1048560
	andi r3, r3, 1
	add.s r3, r26, r3
	add.s r3, r3, r17
	and r7, r3, r7
	setlt.u r3, r4, r18
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r3, zero, .LBB0_102
.LBB0_100:                              # %vector.body116
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r4, r23
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r3, zero, .LBB0_84
	j .LBB0_103
.LBB0_101:                              # %vector.body116
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r4, r18
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r3, zero, .LBB0_100
.LBB0_102:                              # %vector.body116
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r24, 16
	lui r8, 1048560
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r17
	and r10, r3, r8
	setlt.u r3, r4, r23
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r3, zero, .LBB0_84
.LBB0_103:                              # %vector.body116
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r25, 16
	lui r8, 1048560
	andi r3, r3, 1
	add.s r3, r25, r3
	add.s r3, r3, r17
	and r11, r3, r8
	j .LBB0_84
.LBB0_104:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r13
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	mfence { sm }
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r3, zero, 2
	bneq r13, r3, .LBB0_43
.LBB0_105:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 16
	.loc	1 192 7 is_stmt 1               # parallel-rne.mlir:192:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r3
	j .LBB0_107
.LBB0_106:                              # %middle.block111
                                        #   in Loop: Header=BB0_107 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 23
	load.d r[9:10], -376(r30)               # 8-byte Folded Reload
	zext_int2long r[7:8], r3
	.loc	1 199 9 is_stmt 1               # parallel-rne.mlir:199:9
	setlt.ul r3, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	beq r3, zero, .LBB0_135
.LBB0_107:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_111 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 6
	store.d r[7:8], -376(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[7:8], r3
	.loc	1 200 11 is_stmt 1              # parallel-rne.mlir:200:11
	bneq r15, r6, .LBB0_114
# %bb.108:                              # %scalar.ph105.preheader
                                        #   in Loop: Header=BB0_107 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_111
.LBB0_109:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_111 Depth=3
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	lui r10, 1048560
	add.s r9, r9, r17
	and r9, r9, r10
.LBB0_110:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	setlt.ul r10, r[7:8], r[27:28]
	.loc	1 215 13 is_stmt 1              # parallel-rne.mlir:215:13
	add.s r3, r15, r3
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	stores.w r9, 0(r3)
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	beq r10, zero, .LBB0_106
.LBB0_111:                              # %scalar.ph105
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_107 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	add.ul r[9:10], r[7:8], r[19:20]
	slli r3, r9, 2
	add.s r9, r6, r3
	loads.w r10, 0(r9)
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	and r11, r10, r12
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	setlt.u r9, r5, r11
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r9, zero, .LBB0_113
# %bb.112:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r11, r4, r11
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r11, zero, .LBB0_110
	j .LBB0_109
.LBB0_113:                              #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r11, r4, r11
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r11, zero, .LBB0_110
	j .LBB0_109
.LBB0_114:                              # %vector.body107.preheader
                                        #   in Loop: Header=BB0_107 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_116
.LBB0_115:                              # %vector.body107
                                        #   in Loop: Header=BB0_116 Depth=3
	.loc	1 200 11 is_stmt 1              # parallel-rne.mlir:200:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	add.s r8, r15, r9
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	seteq.d r3, r[13:14], r[1:2]
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	stores.w r11, 12(r8)
	stores.w r24, 8(r8)
	stores.w r7, 4(r8)
	stores.w r22, 0(r8)
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	bneq r3, zero, .LBB0_106
.LBB0_116:                              # %vector.body107
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_107 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	add.ul r[7:8], r[13:14], r[19:20]
	slli r9, r7, 2
	add.s r8, r6, r9
	loads.w r25, 12(r8)
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	and r23, r25, r12
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	setlt.u r3, r5, r23
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r3, zero, .LBB0_118
# %bb.117:                              # %vector.body107
                                        #   in Loop: Header=BB0_116 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r25, 0
	j .LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_116 Depth=3
	lui r3, 1024
	or r11, r25, r3
.LBB0_119:                              # %vector.body107
                                        #   in Loop: Header=BB0_116 Depth=3
	loads.w r10, 8(r8)
	and r18, r10, r12
	setlt.u r3, r5, r18
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r3, zero, .LBB0_121
# %bb.120:                              # %vector.body107
                                        #   in Loop: Header=BB0_116 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r10, 0
	j .LBB0_122
.LBB0_121:                              #   in Loop: Header=BB0_116 Depth=3
	lui r3, 1024
	or r24, r10, r3
.LBB0_122:                              # %vector.body107
                                        #   in Loop: Header=BB0_116 Depth=3
	loads.w r26, 4(r8)
	and r3, r26, r12
	setlt.u r7, r5, r3
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r7, zero, .LBB0_124
# %bb.123:                              # %vector.body107
                                        #   in Loop: Header=BB0_116 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r26, 0
	j .LBB0_125
.LBB0_124:                              #   in Loop: Header=BB0_116 Depth=3
	lui r7, 1024
	or r7, r26, r7
.LBB0_125:                              # %vector.body107
                                        #   in Loop: Header=BB0_116 Depth=3
	loads.w r8, 0(r8)
	and r21, r8, r12
	setlt.u r22, r5, r21
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r22, zero, .LBB0_127
# %bb.126:                              # %vector.body107
                                        #   in Loop: Header=BB0_116 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r8, 0
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r21, r4, r21
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r21, zero, .LBB0_128
	j .LBB0_129
.LBB0_127:                              #   in Loop: Header=BB0_116 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r22, 1024
	or r22, r8, r22
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r21, r4, r21
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r21, zero, .LBB0_129
.LBB0_128:                              # %vector.body107
                                        #   in Loop: Header=BB0_116 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r21, r8, 16
	andi r21, r21, 1
	add.s r8, r8, r21
	lui r21, 1048560
	add.s r8, r8, r17
	and r22, r8, r21
.LBB0_129:                              # %vector.body107
                                        #   in Loop: Header=BB0_116 Depth=3
	setlt.u r3, r4, r3
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r3, zero, .LBB0_132
# %bb.130:                              # %vector.body107
                                        #   in Loop: Header=BB0_116 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r26, 16
	lui r7, 1048560
	andi r3, r3, 1
	add.s r3, r26, r3
	add.s r3, r3, r17
	and r7, r3, r7
	setlt.u r3, r4, r18
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r3, zero, .LBB0_133
.LBB0_131:                              # %vector.body107
                                        #   in Loop: Header=BB0_116 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r4, r23
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r3, zero, .LBB0_115
	j .LBB0_134
.LBB0_132:                              # %vector.body107
                                        #   in Loop: Header=BB0_116 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r4, r18
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r3, zero, .LBB0_131
.LBB0_133:                              # %vector.body107
                                        #   in Loop: Header=BB0_116 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	lui r8, 1048560
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r17
	and r24, r3, r8
	setlt.u r3, r4, r23
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r3, zero, .LBB0_115
.LBB0_134:                              # %vector.body107
                                        #   in Loop: Header=BB0_116 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r25, 16
	lui r8, 1048560
	andi r3, r3, 1
	add.s r3, r25, r3
	add.s r3, r3, r17
	and r11, r3, r8
	j .LBB0_115
.LBB0_135:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r13
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_136:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 220 7 is_stmt 1               # parallel-rne.mlir:220:7
	loadli.w r3,  -384(r30)                 # 4-byte Folded Reload
	beq r3, zero, .LBB0_167
# %bb.137:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 24
	.loc	1 220 7                         # parallel-rne.mlir:220:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r3
	j .LBB0_139
.LBB0_138:                              # %middle.block93
                                        #   in Loop: Header=BB0_139 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 31
	load.d r[9:10], -376(r30)               # 8-byte Folded Reload
	zext_int2long r[7:8], r3
	.loc	1 227 9 is_stmt 1               # parallel-rne.mlir:227:9
	setlt.ul r3, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	beq r3, zero, .LBB0_198
.LBB0_139:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_148 Depth 3
                                        #       Child Loop BB0_143 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 6
	store.d r[7:8], -376(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[7:8], r3
	.loc	1 228 11 is_stmt 1              # parallel-rne.mlir:228:11
	bneq r15, r6, .LBB0_146
# %bb.140:                              # %scalar.ph87.preheader
                                        #   in Loop: Header=BB0_139 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_143
.LBB0_141:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_143 Depth=3
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	lui r10, 1048560
	add.s r9, r9, r17
	and r9, r9, r10
.LBB0_142:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	setlt.ul r10, r[7:8], r[27:28]
	.loc	1 243 13 is_stmt 1              # parallel-rne.mlir:243:13
	add.s r3, r15, r3
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	stores.w r9, 0(r3)
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	beq r10, zero, .LBB0_138
.LBB0_143:                              # %scalar.ph87
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_139 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.ul r[9:10], r[7:8], r[19:20]
	slli r3, r9, 2
	add.s r9, r6, r3
	loads.w r10, 0(r9)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	and r11, r10, r12
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	setlt.u r9, r5, r11
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r9, zero, .LBB0_145
# %bb.144:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r11, r4, r11
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r11, zero, .LBB0_142
	j .LBB0_141
.LBB0_145:                              #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r11, r4, r11
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r11, zero, .LBB0_142
	j .LBB0_141
.LBB0_146:                              # %vector.body89.preheader
                                        #   in Loop: Header=BB0_139 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_148
.LBB0_147:                              # %vector.body89
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 228 11 is_stmt 1              # parallel-rne.mlir:228:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	add.s r8, r15, r9
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	seteq.d r3, r[13:14], r[1:2]
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	stores.w r11, 12(r8)
	stores.w r24, 8(r8)
	stores.w r7, 4(r8)
	stores.w r22, 0(r8)
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	bneq r3, zero, .LBB0_138
.LBB0_148:                              # %vector.body89
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_139 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.ul r[7:8], r[13:14], r[19:20]
	slli r9, r7, 2
	add.s r8, r6, r9
	loads.w r25, 12(r8)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	and r23, r25, r12
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	setlt.u r3, r5, r23
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r3, zero, .LBB0_150
# %bb.149:                              # %vector.body89
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r25, 0
	j .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_148 Depth=3
	lui r3, 1024
	or r11, r25, r3
.LBB0_151:                              # %vector.body89
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r10, 8(r8)
	and r18, r10, r12
	setlt.u r3, r5, r18
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r3, zero, .LBB0_153
# %bb.152:                              # %vector.body89
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r10, 0
	j .LBB0_154
.LBB0_153:                              #   in Loop: Header=BB0_148 Depth=3
	lui r3, 1024
	or r24, r10, r3
.LBB0_154:                              # %vector.body89
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r26, 4(r8)
	and r3, r26, r12
	setlt.u r7, r5, r3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r7, zero, .LBB0_156
# %bb.155:                              # %vector.body89
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r26, 0
	j .LBB0_157
.LBB0_156:                              #   in Loop: Header=BB0_148 Depth=3
	lui r7, 1024
	or r7, r26, r7
.LBB0_157:                              # %vector.body89
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r8, 0(r8)
	and r21, r8, r12
	setlt.u r22, r5, r21
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r22, zero, .LBB0_166
# %bb.158:                              # %vector.body89
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r8, 0
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r21, r4, r21
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r21, zero, .LBB0_160
.LBB0_159:                              # %vector.body89
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r21, r8, 16
	andi r21, r21, 1
	add.s r8, r8, r21
	lui r21, 1048560
	add.s r8, r8, r17
	and r22, r8, r21
.LBB0_160:                              # %vector.body89
                                        #   in Loop: Header=BB0_148 Depth=3
	setlt.u r3, r4, r3
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r3, zero, .LBB0_163
# %bb.161:                              # %vector.body89
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r26, 16
	lui r7, 1048560
	andi r3, r3, 1
	add.s r3, r26, r3
	add.s r3, r3, r17
	and r7, r3, r7
	setlt.u r3, r4, r18
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r3, zero, .LBB0_164
.LBB0_162:                              # %vector.body89
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r4, r23
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r3, zero, .LBB0_147
	j .LBB0_165
.LBB0_163:                              # %vector.body89
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r4, r18
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r3, zero, .LBB0_162
.LBB0_164:                              # %vector.body89
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	lui r8, 1048560
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r17
	and r24, r3, r8
	setlt.u r3, r4, r23
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r3, zero, .LBB0_147
.LBB0_165:                              # %vector.body89
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r25, 16
	lui r8, 1048560
	andi r3, r3, 1
	add.s r3, r25, r3
	add.s r3, r3, r17
	and r11, r3, r8
	j .LBB0_147
.LBB0_166:                              #   in Loop: Header=BB0_148 Depth=3
	lui r22, 1024
	or r22, r8, r22
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r21, r4, r21
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r21, zero, .LBB0_159
	j .LBB0_160
.LBB0_167:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	addli r3, zero, 4
	bneq r13, r3, .LBB0_199
.LBB0_168:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 32
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r3
	j .LBB0_170
.LBB0_169:                              # %middle.block84
                                        #   in Loop: Header=BB0_170 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 39
	load.d r[9:10], -376(r30)               # 8-byte Folded Reload
	zext_int2long r[7:8], r3
	.loc	1 255 9 is_stmt 1               # parallel-rne.mlir:255:9
	setlt.ul r3, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	beq r3, zero, .LBB0_232
.LBB0_170:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_179 Depth 3
                                        #       Child Loop BB0_174 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 6
	store.d r[7:8], -376(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[7:8], r3
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	bneq r15, r6, .LBB0_177
# %bb.171:                              # %scalar.ph78.preheader
                                        #   in Loop: Header=BB0_170 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_174
.LBB0_172:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_174 Depth=3
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	lui r10, 1048560
	add.s r9, r9, r17
	and r9, r9, r10
.LBB0_173:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	setlt.ul r10, r[7:8], r[27:28]
	.loc	1 271 13 is_stmt 1              # parallel-rne.mlir:271:13
	add.s r3, r15, r3
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	stores.w r9, 0(r3)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	beq r10, zero, .LBB0_169
.LBB0_174:                              # %scalar.ph78
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.ul r[9:10], r[7:8], r[19:20]
	slli r3, r9, 2
	add.s r9, r6, r3
	loads.w r10, 0(r9)
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	and r11, r10, r12
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	setlt.u r9, r5, r11
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r9, zero, .LBB0_176
# %bb.175:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r11, r4, r11
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r11, zero, .LBB0_173
	j .LBB0_172
.LBB0_176:                              #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r11, r4, r11
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r11, zero, .LBB0_173
	j .LBB0_172
.LBB0_177:                              # %vector.body80.preheader
                                        #   in Loop: Header=BB0_170 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_179
.LBB0_178:                              # %vector.body80
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	add.s r8, r15, r9
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	seteq.d r3, r[13:14], r[1:2]
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	stores.w r11, 12(r8)
	stores.w r24, 8(r8)
	stores.w r7, 4(r8)
	stores.w r22, 0(r8)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	bneq r3, zero, .LBB0_169
.LBB0_179:                              # %vector.body80
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.ul r[7:8], r[13:14], r[19:20]
	slli r9, r7, 2
	add.s r8, r6, r9
	loads.w r25, 12(r8)
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	and r23, r25, r12
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	setlt.u r3, r5, r23
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r3, zero, .LBB0_181
# %bb.180:                              # %vector.body80
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r25, 0
	j .LBB0_182
.LBB0_181:                              #   in Loop: Header=BB0_179 Depth=3
	lui r3, 1024
	or r11, r25, r3
.LBB0_182:                              # %vector.body80
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r10, 8(r8)
	and r18, r10, r12
	setlt.u r3, r5, r18
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r3, zero, .LBB0_184
# %bb.183:                              # %vector.body80
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r10, 0
	j .LBB0_185
.LBB0_184:                              #   in Loop: Header=BB0_179 Depth=3
	lui r3, 1024
	or r24, r10, r3
.LBB0_185:                              # %vector.body80
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r26, 4(r8)
	and r3, r26, r12
	setlt.u r7, r5, r3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r7, zero, .LBB0_187
# %bb.186:                              # %vector.body80
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r26, 0
	j .LBB0_188
.LBB0_187:                              #   in Loop: Header=BB0_179 Depth=3
	lui r7, 1024
	or r7, r26, r7
.LBB0_188:                              # %vector.body80
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r8, 0(r8)
	and r21, r8, r12
	setlt.u r22, r5, r21
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r22, zero, .LBB0_197
# %bb.189:                              # %vector.body80
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r8, 0
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r21, r4, r21
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r21, zero, .LBB0_191
.LBB0_190:                              # %vector.body80
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r21, r8, 16
	andi r21, r21, 1
	add.s r8, r8, r21
	lui r21, 1048560
	add.s r8, r8, r17
	and r22, r8, r21
.LBB0_191:                              # %vector.body80
                                        #   in Loop: Header=BB0_179 Depth=3
	setlt.u r3, r4, r3
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r3, zero, .LBB0_194
# %bb.192:                              # %vector.body80
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r26, 16
	lui r7, 1048560
	andi r3, r3, 1
	add.s r3, r26, r3
	add.s r3, r3, r17
	and r7, r3, r7
	setlt.u r3, r4, r18
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r3, zero, .LBB0_195
.LBB0_193:                              # %vector.body80
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r4, r23
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r3, zero, .LBB0_178
	j .LBB0_196
.LBB0_194:                              # %vector.body80
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r4, r18
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r3, zero, .LBB0_193
.LBB0_195:                              # %vector.body80
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	lui r8, 1048560
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r17
	and r24, r3, r8
	setlt.u r3, r4, r23
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r3, zero, .LBB0_178
.LBB0_196:                              # %vector.body80
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r25, 16
	lui r8, 1048560
	andi r3, r3, 1
	add.s r3, r25, r3
	add.s r3, r3, r17
	and r11, r3, r8
	j .LBB0_178
.LBB0_197:                              #   in Loop: Header=BB0_179 Depth=3
	lui r22, 1024
	or r22, r8, r22
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r21, r4, r21
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r21, zero, .LBB0_190
	j .LBB0_191
.LBB0_198:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r13
	.loc	1 220 7                         # parallel-rne.mlir:220:7
	mfence { sm }
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	addli r3, zero, 4
	beq r13, r3, .LBB0_168
.LBB0_199:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	addli r3, zero, 7
	beq r13, r3, .LBB0_233
.LBB0_200:                              #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 6
	beq r13, r3, .LBB0_263
# %bb.201:                              #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 5
	bneq r13, r3, .LBB0_294
# %bb.202:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 40
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r3
	j .LBB0_204
.LBB0_203:                              # %middle.block
                                        #   in Loop: Header=BB0_204 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 47
	load.d r[9:10], -376(r30)               # 8-byte Folded Reload
	zext_int2long r[7:8], r3
	.loc	1 283 9 is_stmt 1               # parallel-rne.mlir:283:9
	setlt.ul r3, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	beq r3, zero, .LBB0_293
.LBB0_204:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_213 Depth 3
                                        #       Child Loop BB0_208 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 6
	store.d r[7:8], -376(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[7:8], r3
	.loc	1 284 11 is_stmt 1              # parallel-rne.mlir:284:11
	bneq r15, r6, .LBB0_211
# %bb.205:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_204 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_208
.LBB0_206:                              # %scalar.ph
                                        #   in Loop: Header=BB0_208 Depth=3
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	lui r10, 1048560
	add.s r9, r9, r17
	and r9, r9, r10
.LBB0_207:                              # %scalar.ph
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	setlt.ul r10, r[7:8], r[27:28]
	.loc	1 299 13 is_stmt 1              # parallel-rne.mlir:299:13
	add.s r3, r15, r3
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	stores.w r9, 0(r3)
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	beq r10, zero, .LBB0_203
.LBB0_208:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_204 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.ul r[9:10], r[7:8], r[19:20]
	slli r3, r9, 2
	add.s r9, r6, r3
	loads.w r10, 0(r9)
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	and r11, r10, r12
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	setlt.u r9, r5, r11
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r9, zero, .LBB0_210
# %bb.209:                              # %scalar.ph
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r11, r4, r11
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r11, zero, .LBB0_207
	j .LBB0_206
.LBB0_210:                              #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r11, r4, r11
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r11, zero, .LBB0_207
	j .LBB0_206
.LBB0_211:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_204 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_213
.LBB0_212:                              # %vector.body
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 284 11 is_stmt 1              # parallel-rne.mlir:284:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	add.s r8, r15, r9
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	seteq.d r3, r[13:14], r[1:2]
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	stores.w r11, 12(r8)
	stores.w r24, 8(r8)
	stores.w r7, 4(r8)
	stores.w r22, 0(r8)
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	bneq r3, zero, .LBB0_203
.LBB0_213:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_204 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.ul r[7:8], r[13:14], r[19:20]
	slli r9, r7, 2
	add.s r8, r6, r9
	loads.w r25, 12(r8)
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	and r23, r25, r12
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	setlt.u r3, r5, r23
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r3, zero, .LBB0_215
# %bb.214:                              # %vector.body
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r25, 0
	j .LBB0_216
.LBB0_215:                              #   in Loop: Header=BB0_213 Depth=3
	lui r3, 1024
	or r11, r25, r3
.LBB0_216:                              # %vector.body
                                        #   in Loop: Header=BB0_213 Depth=3
	loads.w r10, 8(r8)
	and r18, r10, r12
	setlt.u r3, r5, r18
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r3, zero, .LBB0_218
# %bb.217:                              # %vector.body
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r10, 0
	j .LBB0_219
.LBB0_218:                              #   in Loop: Header=BB0_213 Depth=3
	lui r3, 1024
	or r24, r10, r3
.LBB0_219:                              # %vector.body
                                        #   in Loop: Header=BB0_213 Depth=3
	loads.w r26, 4(r8)
	and r3, r26, r12
	setlt.u r7, r5, r3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r7, zero, .LBB0_221
# %bb.220:                              # %vector.body
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r26, 0
	j .LBB0_222
.LBB0_221:                              #   in Loop: Header=BB0_213 Depth=3
	lui r7, 1024
	or r7, r26, r7
.LBB0_222:                              # %vector.body
                                        #   in Loop: Header=BB0_213 Depth=3
	loads.w r8, 0(r8)
	and r21, r8, r12
	setlt.u r22, r5, r21
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r22, zero, .LBB0_231
# %bb.223:                              # %vector.body
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r8, 0
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r21, r4, r21
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r21, zero, .LBB0_225
.LBB0_224:                              # %vector.body
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r21, r8, 16
	andi r21, r21, 1
	add.s r8, r8, r21
	lui r21, 1048560
	add.s r8, r8, r17
	and r22, r8, r21
.LBB0_225:                              # %vector.body
                                        #   in Loop: Header=BB0_213 Depth=3
	setlt.u r3, r4, r3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r3, zero, .LBB0_228
# %bb.226:                              # %vector.body
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r26, 16
	lui r7, 1048560
	andi r3, r3, 1
	add.s r3, r26, r3
	add.s r3, r3, r17
	and r7, r3, r7
	setlt.u r3, r4, r18
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r3, zero, .LBB0_229
.LBB0_227:                              # %vector.body
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r4, r23
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r3, zero, .LBB0_212
	j .LBB0_230
.LBB0_228:                              # %vector.body
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r4, r18
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r3, zero, .LBB0_227
.LBB0_229:                              # %vector.body
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	lui r8, 1048560
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r17
	and r24, r3, r8
	setlt.u r3, r4, r23
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r3, zero, .LBB0_212
.LBB0_230:                              # %vector.body
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r25, 16
	lui r8, 1048560
	andi r3, r3, 1
	add.s r3, r25, r3
	add.s r3, r3, r17
	and r11, r3, r8
	j .LBB0_212
.LBB0_231:                              #   in Loop: Header=BB0_213 Depth=3
	lui r22, 1024
	or r22, r8, r22
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r21, r4, r21
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r21, zero, .LBB0_224
	j .LBB0_225
.LBB0_232:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r13
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	mfence { sm }
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	addli r3, zero, 7
	bneq r13, r3, .LBB0_200
.LBB0_233:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 56
	.loc	1 332 7 is_stmt 1               # parallel-rne.mlir:332:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r3
	j .LBB0_235
.LBB0_234:                              # %middle.block75
                                        #   in Loop: Header=BB0_235 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[7:8], -376(r30)                # 8-byte Folded Reload
	.loc	1 339 9 is_stmt 1               # parallel-rne.mlir:339:9
	setlt.ul r3, r[7:8], r[27:28]
	addli.d r[7:8], r[7:8], 1
	beq r3, zero, .LBB0_293
.LBB0_235:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_244 Depth 3
                                        #       Child Loop BB0_239 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 6
	store.d r[7:8], -376(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[7:8], r3
	.loc	1 340 11 is_stmt 1              # parallel-rne.mlir:340:11
	bneq r15, r6, .LBB0_242
# %bb.236:                              # %scalar.ph69.preheader
                                        #   in Loop: Header=BB0_235 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_239
.LBB0_237:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_239 Depth=3
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	lui r10, 1048560
	add.s r9, r9, r17
	and r9, r9, r10
.LBB0_238:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	setlt.ul r10, r[7:8], r[27:28]
	.loc	1 355 13 is_stmt 1              # parallel-rne.mlir:355:13
	add.s r3, r15, r3
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	stores.w r9, 0(r3)
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	beq r10, zero, .LBB0_234
.LBB0_239:                              # %scalar.ph69
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_235 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	add.ul r[9:10], r[7:8], r[19:20]
	slli r3, r9, 2
	add.s r9, r6, r3
	loads.w r10, 0(r9)
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r11, r10, r12
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	setlt.u r9, r5, r11
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r9, zero, .LBB0_241
# %bb.240:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r11, r4, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r11, zero, .LBB0_238
	j .LBB0_237
.LBB0_241:                              #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r11, r4, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r11, zero, .LBB0_238
	j .LBB0_237
.LBB0_242:                              # %vector.body71.preheader
                                        #   in Loop: Header=BB0_235 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_244
.LBB0_243:                              # %vector.body71
                                        #   in Loop: Header=BB0_244 Depth=3
	.loc	1 340 11 is_stmt 1              # parallel-rne.mlir:340:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	add.s r8, r15, r9
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	seteq.d r3, r[13:14], r[1:2]
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	stores.w r11, 12(r8)
	stores.w r24, 8(r8)
	stores.w r7, 4(r8)
	stores.w r22, 0(r8)
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	bneq r3, zero, .LBB0_234
.LBB0_244:                              # %vector.body71
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_235 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	add.ul r[7:8], r[13:14], r[19:20]
	slli r9, r7, 2
	add.s r8, r6, r9
	loads.w r25, 12(r8)
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r23, r25, r12
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	setlt.u r3, r5, r23
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r3, zero, .LBB0_246
# %bb.245:                              # %vector.body71
                                        #   in Loop: Header=BB0_244 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r25, 0
	j .LBB0_247
.LBB0_246:                              #   in Loop: Header=BB0_244 Depth=3
	lui r3, 1024
	or r11, r25, r3
.LBB0_247:                              # %vector.body71
                                        #   in Loop: Header=BB0_244 Depth=3
	loads.w r10, 8(r8)
	and r18, r10, r12
	setlt.u r3, r5, r18
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r3, zero, .LBB0_249
# %bb.248:                              # %vector.body71
                                        #   in Loop: Header=BB0_244 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r10, 0
	j .LBB0_250
.LBB0_249:                              #   in Loop: Header=BB0_244 Depth=3
	lui r3, 1024
	or r24, r10, r3
.LBB0_250:                              # %vector.body71
                                        #   in Loop: Header=BB0_244 Depth=3
	loads.w r26, 4(r8)
	and r3, r26, r12
	setlt.u r7, r5, r3
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r7, zero, .LBB0_252
# %bb.251:                              # %vector.body71
                                        #   in Loop: Header=BB0_244 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r26, 0
	j .LBB0_253
.LBB0_252:                              #   in Loop: Header=BB0_244 Depth=3
	lui r7, 1024
	or r7, r26, r7
.LBB0_253:                              # %vector.body71
                                        #   in Loop: Header=BB0_244 Depth=3
	loads.w r8, 0(r8)
	and r21, r8, r12
	setlt.u r22, r5, r21
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r22, zero, .LBB0_255
# %bb.254:                              # %vector.body71
                                        #   in Loop: Header=BB0_244 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r8, 0
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r21, r4, r21
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r21, zero, .LBB0_256
	j .LBB0_257
.LBB0_255:                              #   in Loop: Header=BB0_244 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r22, 1024
	or r22, r8, r22
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r21, r4, r21
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r21, zero, .LBB0_257
.LBB0_256:                              # %vector.body71
                                        #   in Loop: Header=BB0_244 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r21, r8, 16
	andi r21, r21, 1
	add.s r8, r8, r21
	lui r21, 1048560
	add.s r8, r8, r17
	and r22, r8, r21
.LBB0_257:                              # %vector.body71
                                        #   in Loop: Header=BB0_244 Depth=3
	setlt.u r3, r4, r3
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r3, zero, .LBB0_260
# %bb.258:                              # %vector.body71
                                        #   in Loop: Header=BB0_244 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r26, 16
	lui r7, 1048560
	andi r3, r3, 1
	add.s r3, r26, r3
	add.s r3, r3, r17
	and r7, r3, r7
	setlt.u r3, r4, r18
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r3, zero, .LBB0_261
.LBB0_259:                              # %vector.body71
                                        #   in Loop: Header=BB0_244 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r4, r23
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r3, zero, .LBB0_243
	j .LBB0_262
.LBB0_260:                              # %vector.body71
                                        #   in Loop: Header=BB0_244 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r4, r18
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r3, zero, .LBB0_259
.LBB0_261:                              # %vector.body71
                                        #   in Loop: Header=BB0_244 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	lui r8, 1048560
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r17
	and r24, r3, r8
	setlt.u r3, r4, r23
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r3, zero, .LBB0_243
.LBB0_262:                              # %vector.body71
                                        #   in Loop: Header=BB0_244 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r25, 16
	lui r8, 1048560
	andi r3, r3, 1
	add.s r3, r25, r3
	add.s r3, r3, r17
	and r11, r3, r8
	j .LBB0_243
.LBB0_263:                              #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 48
	.loc	1 304 7 is_stmt 1               # parallel-rne.mlir:304:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r3
	j .LBB0_265
.LBB0_264:                              # %middle.block66
                                        #   in Loop: Header=BB0_265 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 55
	load.d r[9:10], -376(r30)               # 8-byte Folded Reload
	zext_int2long r[7:8], r3
	.loc	1 311 9 is_stmt 1               # parallel-rne.mlir:311:9
	setlt.ul r3, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	beq r3, zero, .LBB0_293
.LBB0_265:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_274 Depth 3
                                        #       Child Loop BB0_269 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 6
	store.d r[7:8], -376(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[7:8], r3
	.loc	1 312 11 is_stmt 1              # parallel-rne.mlir:312:11
	bneq r15, r6, .LBB0_272
# %bb.266:                              # %scalar.ph60.preheader
                                        #   in Loop: Header=BB0_265 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_269
.LBB0_267:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_269 Depth=3
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	lui r10, 1048560
	add.s r9, r9, r17
	and r9, r9, r10
.LBB0_268:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	setlt.ul r10, r[7:8], r[27:28]
	.loc	1 327 13 is_stmt 1              # parallel-rne.mlir:327:13
	add.s r3, r15, r3
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	stores.w r9, 0(r3)
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	beq r10, zero, .LBB0_264
.LBB0_269:                              # %scalar.ph60
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_265 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	add.ul r[9:10], r[7:8], r[19:20]
	slli r3, r9, 2
	add.s r9, r6, r3
	loads.w r10, 0(r9)
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r11, r10, r12
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	setlt.u r9, r5, r11
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r9, zero, .LBB0_271
# %bb.270:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r11, r4, r11
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r11, zero, .LBB0_268
	j .LBB0_267
.LBB0_271:                              #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r11, r4, r11
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r11, zero, .LBB0_268
	j .LBB0_267
.LBB0_272:                              # %vector.body62.preheader
                                        #   in Loop: Header=BB0_265 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_274
.LBB0_273:                              # %vector.body62
                                        #   in Loop: Header=BB0_274 Depth=3
	.loc	1 312 11 is_stmt 1              # parallel-rne.mlir:312:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	add.s r8, r15, r9
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	seteq.d r3, r[13:14], r[1:2]
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	stores.w r11, 12(r8)
	stores.w r24, 8(r8)
	stores.w r7, 4(r8)
	stores.w r22, 0(r8)
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	bneq r3, zero, .LBB0_264
.LBB0_274:                              # %vector.body62
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_265 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	add.ul r[7:8], r[13:14], r[19:20]
	slli r9, r7, 2
	add.s r8, r6, r9
	loads.w r25, 12(r8)
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r23, r25, r12
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	setlt.u r3, r5, r23
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r3, zero, .LBB0_276
# %bb.275:                              # %vector.body62
                                        #   in Loop: Header=BB0_274 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r25, 0
	j .LBB0_277
.LBB0_276:                              #   in Loop: Header=BB0_274 Depth=3
	lui r3, 1024
	or r11, r25, r3
.LBB0_277:                              # %vector.body62
                                        #   in Loop: Header=BB0_274 Depth=3
	loads.w r10, 8(r8)
	and r18, r10, r12
	setlt.u r3, r5, r18
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r3, zero, .LBB0_279
# %bb.278:                              # %vector.body62
                                        #   in Loop: Header=BB0_274 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r10, 0
	j .LBB0_280
.LBB0_279:                              #   in Loop: Header=BB0_274 Depth=3
	lui r3, 1024
	or r24, r10, r3
.LBB0_280:                              # %vector.body62
                                        #   in Loop: Header=BB0_274 Depth=3
	loads.w r26, 4(r8)
	and r3, r26, r12
	setlt.u r7, r5, r3
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r7, zero, .LBB0_282
# %bb.281:                              # %vector.body62
                                        #   in Loop: Header=BB0_274 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r26, 0
	j .LBB0_283
.LBB0_282:                              #   in Loop: Header=BB0_274 Depth=3
	lui r7, 1024
	or r7, r26, r7
.LBB0_283:                              # %vector.body62
                                        #   in Loop: Header=BB0_274 Depth=3
	loads.w r8, 0(r8)
	and r21, r8, r12
	setlt.u r22, r5, r21
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r22, zero, .LBB0_285
# %bb.284:                              # %vector.body62
                                        #   in Loop: Header=BB0_274 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r8, 0
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r21, r4, r21
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r21, zero, .LBB0_286
	j .LBB0_287
.LBB0_285:                              #   in Loop: Header=BB0_274 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r22, 1024
	or r22, r8, r22
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r21, r4, r21
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r21, zero, .LBB0_287
.LBB0_286:                              # %vector.body62
                                        #   in Loop: Header=BB0_274 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r21, r8, 16
	andi r21, r21, 1
	add.s r8, r8, r21
	lui r21, 1048560
	add.s r8, r8, r17
	and r22, r8, r21
.LBB0_287:                              # %vector.body62
                                        #   in Loop: Header=BB0_274 Depth=3
	setlt.u r3, r4, r3
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r3, zero, .LBB0_290
# %bb.288:                              # %vector.body62
                                        #   in Loop: Header=BB0_274 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r26, 16
	lui r7, 1048560
	andi r3, r3, 1
	add.s r3, r26, r3
	add.s r3, r3, r17
	and r7, r3, r7
	setlt.u r3, r4, r18
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r3, zero, .LBB0_291
.LBB0_289:                              # %vector.body62
                                        #   in Loop: Header=BB0_274 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r4, r23
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r3, zero, .LBB0_273
	j .LBB0_292
.LBB0_290:                              # %vector.body62
                                        #   in Loop: Header=BB0_274 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r4, r18
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r3, zero, .LBB0_289
.LBB0_291:                              # %vector.body62
                                        #   in Loop: Header=BB0_274 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	lui r8, 1048560
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r17
	and r24, r3, r8
	setlt.u r3, r4, r23
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r3, zero, .LBB0_273
.LBB0_292:                              # %vector.body62
                                        #   in Loop: Header=BB0_274 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r25, 16
	lui r8, 1048560
	andi r3, r3, 1
	add.s r3, r25, r3
	add.s r3, r3, r17
	and r11, r3, r8
	j .LBB0_273
.LBB0_293:                              # %.sink.split52
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r13
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_294:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 360 7 is_stmt 1               # parallel-rne.mlir:360:7
	addli r3, zero, 255
	csr_set csr5, r3
	sync_core
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	loadli.w r3,  -384(r30)                 # 4-byte Folded Reload
	bneq r3, zero, .LBB0_5
# %bb.295:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r18, zero, 4
	addli r22, zero, 7
	.loc	1 378 7 is_stmt 1               # parallel-rne.mlir:378:7
	bneq r13, zero, .LBB0_7
# %bb.296:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	loadli.w r3,  -440(r30)                 # 4-byte Folded Reload
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	load.d r[13:14], -432(r30)              # 8-byte Folded Reload
	load.d r[19:20], 16(r30)
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	zext_int2long r[6:7], r3
	addli r3, zero, 960
	zext_int2long r[8:9], r3
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	loadli.w r3,  -436(r30)                 # 4-byte Folded Reload
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	min.ul r[8:9], r[6:7], r[8:9]
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	sext_int2long r[10:11], r3
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	addli r3, zero, 17
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	addli.d r[8:9], r[8:9], 64
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	sll.d r[13:14], r[13:14], r3
	addli r3, zero, 12
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	max.ul r[8:9], r[8:9], r[6:7]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	add.ul r[13:14], r[19:20], r[13:14]
	addli r19, zero, 1
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	sub.sl r[6:7], r[8:9], r[6:7]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	load.d r[8:9], -360(r30)                # 8-byte Folded Reload
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	min.ul r[6:7], r[6:7], r[1:2]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	min.sl r[8:9], r[10:11], r[8:9]
	addli.d r[8:9], r[8:9], 64
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	max.sl r[8:9], r[8:9], r[10:11]
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	sub.sl r[8:9], r[8:9], r[10:11]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	load.d r[10:11], -424(r30)              # 8-byte Folded Reload
	xwait r3, 0
	ori r3, r15, 64
	addli r15, zero, 64
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.sl r[1:2], r[8:9], r[1:2]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	add.ul r[10:11], r[13:14], r[10:11]
	addli r14, zero, 5
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r13
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	lock zero, r14
	dma_cfg r19, r19, zero, 0
	dma_cfg zero, r19, zero, 1
	dma_cfg r11, zero, zero, 2
	dma_cfg r10, r3, r15, 3
	addli r3, r6, 31
	slli r6, r6, 1
	addli r7, zero, 128
	srli r3, r3, 5
	dma_cfg r15, r7, r3, 4
	andi r3, r6, 62
	addli r6, zero, 256
	addli r7, zero, 2048
	dma_cfg r7, r6, r1, 5
	addli r1, zero, 13
	dma_cfg zero, zero, r3, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	j .LBB0_6
.LBB0_297:                              # %._crit_edge
	.loc	1 380 5                         # parallel-rne.mlir:380:5
	xsignal zero, 0
	bneq r13, zero, .LBB0_299
# %bb.298:
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
.LBB0_299:
	.loc	1 381 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:381:5
	addli sp, sp, 448
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
	.long	512                             # 0x200
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-lqg7_su2" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
