	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-0bxbihub" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -520
	addli r1, zero, 1
.Ltmp0:
	.loc	1 31 5 prologue_end             # parallel-rne.mlir:31:5
	core_id r8
	addli r30, sp, 456
	xsignal_mode_cfg r1
	beq r8, zero, .LBB0_2
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
	mul.s r1, r2, r1
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	mul.s r3, r1, r3
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	addli r2, r2, -1
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	div.s r4, r2, r4
	ori r2, r5, 4095
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w r2, -88(r30)
	storeli.w r2, -84(r30)
	storeli.w r2, -80(r30)
	storeli.w r2, -76(r30)
	storeli.w r2, -72(r30)
	storeli.w r2, -68(r30)
	storeli.w r2, -64(r30)
	storeli.w r2, -60(r30)
	storeli.w r2, -56(r30)
	storeli.w r2, -52(r30)
	storeli.w r2, -48(r30)
	storeli.w r2, -44(r30)
	storeli.w r2, -40(r30)
	storeli.w r2, -36(r30)
	storeli.w r2, -32(r30)
	storeli.w r2, -28(r30)
	storeli.w r2, -24(r30)
	storeli.w r2, -20(r30)
	storeli.w r2, -16(r30)
	storeli.w r2, -12(r30)
	storeli.w r2, -8(r30)
	storeli.w r2, -4(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r2, -252(r30)
	storeli.w r2, -248(r30)
	storeli.w r2, -244(r30)
	storeli.w r2, -240(r30)
	storeli.w r2, -236(r30)
	storeli.w r2, -232(r30)
	storeli.w r2, -228(r30)
	storeli.w r2, -224(r30)
	storeli.w r2, -220(r30)
	storeli.w r2, -216(r30)
	storeli.w r2, -212(r30)
	storeli.w r2, -208(r30)
	storeli.w r2, -204(r30)
	storeli.w r2, -200(r30)
	storeli.w r2, -196(r30)
	storeli.w r2, -192(r30)
	storeli.w r2, -188(r30)
	storeli.w r2, -184(r30)
	storeli.w r2, -180(r30)
	storeli.w r2, -176(r30)
	storeli.w r2, -172(r30)
	storeli.w r2, -168(r30)
	storeli.w r2, -164(r30)
	storeli.w r2, -160(r30)
	storeli.w r2, -156(r30)
	storeli.w r2, -152(r30)
	storeli.w r2, -148(r30)
	storeli.w r2, -144(r30)
	storeli.w r2, -140(r30)
	storeli.w r2, -136(r30)
	storeli.w r2, -132(r30)
	storeli.w r2, -128(r30)
	storeli.w r2, -124(r30)
	storeli.w r2, -120(r30)
	storeli.w r2, -116(r30)
	storeli.w r2, -112(r30)
	storeli.w r2, -108(r30)
	storeli.w r2, -104(r30)
	storeli.w r2, -100(r30)
	storeli.w r2, -96(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r2, -344(r30)
	storeli.w r2, -340(r30)
	storeli.w r2, -336(r30)
	storeli.w r2, -332(r30)
	storeli.w r2, -328(r30)
	storeli.w r2, -324(r30)
	storeli.w r2, -320(r30)
	storeli.w r2, -316(r30)
	storeli.w r2, -312(r30)
	storeli.w r2, -308(r30)
	storeli.w r2, -304(r30)
	storeli.w r2, -300(r30)
	storeli.w r2, -296(r30)
	storeli.w r2, -292(r30)
	storeli.w r2, -288(r30)
	storeli.w r2, -284(r30)
	storeli.w r2, -280(r30)
	storeli.w r2, -276(r30)
	storeli.w r2, -272(r30)
	storeli.w r2, -268(r30)
	storeli.w r2, -264(r30)
	storeli.w r2, -260(r30)
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r1, r4, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	fmac.s r4, r4, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	min.s r3, r4, r3
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	ble.s r3, r1, .LBB0_282
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[3:4], r3
	.loc	1 42 11 is_stmt 1               # parallel-rne.mlir:42:11
	sext_int2long r[5:6], r1
	lui r1, 15
	addli r21, zero, 0
	addli r7, zero, 4
	lui r17, 522240
	lui r18, 1048560
	addli r2, zero, 0
	store.d r[3:4], -448(r30)               # 8-byte Folded Spill
	ori r4, r1, 4095
	lui r1, 1023
	lui r3, 1047552
	ori r1, r1, 4095
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	lui r3, 522239
	storeli.w r1, -388(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r4, r3, 4095
	ori r13, r1, 4095
	lui r1, 7
	ori r9, r1, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[5:6], -408(r30)                # 8-byte Folded Reload
	.loc	1 50 5 is_stmt 1                # parallel-rne.mlir:50:5
	load.d r[1:2], -448(r30)                # 8-byte Folded Reload
	addli r7, zero, 4
	addli.d r[5:6], r[5:6], 1
	setlt.sl r1, r[5:6], r[1:2]
	loadli.w r2,  -364(r30)                 # 4-byte Folded Reload
	addli r21, r2, 1
	loadli.w r2,  -412(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_282
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_75 Depth 2
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_77 Depth 3
                                        #     Child Loop BB0_47 Depth 2
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_49 Depth 3
                                        #     Child Loop BB0_104 Depth 2
                                        #       Child Loop BB0_111 Depth 3
                                        #       Child Loop BB0_106 Depth 3
                                        #     Child Loop BB0_166 Depth 2
                                        #       Child Loop BB0_173 Depth 3
                                        #       Child Loop BB0_168 Depth 3
                                        #     Child Loop BB0_195 Depth 2
                                        #       Child Loop BB0_202 Depth 3
                                        #       Child Loop BB0_197 Depth 3
                                        #     Child Loop BB0_138 Depth 2
                                        #       Child Loop BB0_145 Depth 3
                                        #       Child Loop BB0_140 Depth 3
                                        #     Child Loop BB0_252 Depth 2
                                        #       Child Loop BB0_259 Depth 3
                                        #       Child Loop BB0_254 Depth 3
                                        #     Child Loop BB0_224 Depth 2
                                        #       Child Loop BB0_231 Depth 3
                                        #       Child Loop BB0_226 Depth 3
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	bneq r8, r7, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  32(r30)
	store.d r[5:6], -408(r30)               # 8-byte Folded Spill
	addli r8, zero, 32
	addli r10, zero, 8
	.loc	1 97 15 is_stmt 1               # parallel-rne.mlir:97:15
	loadli.w r25,  -348(r30)
	loadli.w r24,  -256(r30)
	loadli.w r26,  -92(r30)
	addli r3, zero, 0
	div.s r1, r5, r1
	loadli.w r5,  28(r30)
	addli r6, zero, 5
	mod.s r6, r2, r6
	addli r2, r2, 1
	storeli.w r2, -412(r30)                 # 4-byte Folded Spill
	div.s r1, r1, r5
	addli r5, zero, 256
	slli r15, r6, 14
	lui r6, 20
	add.s r23, r15, r6
	div.s r5, r1, r5
	slli r7, r5, 3
	slli r5, r5, 8
	sub.s r8, r8, r7
	sub.s r5, r1, r5
	min.s r8, r8, r10
	mod.s r1, r1, r8
	div.s r5, r5, r8
	add.s r1, r7, r1
	slli r2, r5, 6
	zext_int2long r[5:6], r5
	storeli.w r2, -440(r30)                 # 4-byte Folded Spill
	slli r2, r1, 6
	zext_int2long r[7:8], r1
	addli r1, zero, 6
	sll.d r[5:6], r[5:6], r1
	addli r1, zero, 17
	store.d r[7:8], -432(r30)               # 8-byte Folded Spill
	storeli.w r2, -436(r30)                 # 4-byte Folded Spill
	sll.d r[7:8], r[7:8], r1
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r1, zero, 1
	sll.d r[1:2], r[5:6], r1
	load.d r[5:6], -456(r30)                # 8-byte Folded Reload
	store.d r[7:8], -376(r30)               # 8-byte Folded Spill
	store.d r[1:2], -424(r30)               # 8-byte Folded Spill
	and.d r[5:6], r[7:8], r[5:6]
	addli r7, zero, 0
	store.d r[5:6], -384(r30)               # 8-byte Folded Spill
	load.d r[5:6], 8(r30)
	add.ul r[1:2], r[5:6], r[1:2]
	store.d r[1:2], -400(r30)               # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r5, 40
	addli r10, zero, 4
	addli r14, zero, 64
	addli r6, zero, 5
	addli r11, zero, 2
	ori r5, r5, 64
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	lock zero, r10
	dma_cfg r19, r19, zero, 0
	add.s r5, r12, r5
	dma_cfg zero, r28, zero, 2
	addli r12, zero, 128
	dma_cfg r5, r27, r14, 3
	addli r5, zero, 4096
	addli r27, zero, 512
	dma_cfg r12, r14, r10, 4
	dma_cfg r27, r5, r8, 5
	addli r5, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 7
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 8
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 9
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 11
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 12
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 13
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 14
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 15
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 16
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 17
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 18
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 19
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 20
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 22
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 25
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 23
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 24
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 31
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
	dma_cfg zero, zero, r5, 10
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r14, 3
	dma_cfg r12, zero, r10, 4
	dma_cfg r27, zero, r8, 5
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r8
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	xsignal r11, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r24, r24, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r1, r26, 1
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r7, r7, 1
	addli r5, zero, 16
	beq r7, r5, .LBB0_36
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 122 15                        # parallel-rne.mlir:122:15
	addli r3, r3, 1
	addli r26, r1, 0
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	addli r1, zero, 7
	.loc	1 79 15 is_stmt 1               # parallel-rne.mlir:79:15
	zext_int2long r[10:11], r7
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	sll.d r[5:6], r[10:11], r1
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	load.d r[1:2], -376(r30)                # 8-byte Folded Reload
	add.ul r[27:28], r[5:6], r[1:2]
	loadli.w r1,  -388(r30)                 # 4-byte Folded Reload
	zext_int2long r[5:6], r1
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	setlt.ul r1, r[5:6], r[27:28]
	load.d r[5:6], -384(r30)                # 8-byte Folded Reload
	.loc	1 87 15                         # parallel-rne.mlir:87:15
	bneq r1, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[5:6], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	add.s r16, r25, r3
	.loc	1 97 15 is_stmt 1               # parallel-rne.mlir:97:15
	addli r1, zero, 22
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r2, r21, r3
	.loc	1 95 15 is_stmt 1               # parallel-rne.mlir:95:15
	addli r8, zero, 24
	addli r12, zero, 1984
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	mod.s r1, r16, r1
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	mod.s r8, r2, r8
	zext_int2long r[19:20], r12
	storeli.w r2, -364(r30)                 # 4-byte Folded Spill
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	store.d r[19:20], -360(r30)             # 8-byte Folded Spill
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r19, zero, 2
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	slli r12, r1, 15
	lui r1, 40
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	slli r14, r8, 15
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r8
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	add.s r1, r12, r1
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	beq r8, r19, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r22
	addli r19, zero, 1
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	bneq r22, r19, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r8, zero, 2048
	sub.sl r[5:6], r[27:28], r[5:6]
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	sll.d r[27:28], r[27:28], r19
	addli r22, zero, 3
	addli r2, zero, 21
	zext_int2long r[10:11], r8
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[5:6], r[5:6], r[10:11]
	load.d r[10:11], -360(r30)              # 8-byte Folded Reload
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	xwait r22, 0
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	min.sl r[10:11], r[5:6], r[10:11]
	sub.sl r[5:6], r[10:11], r[5:6]
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	load.d r[10:11], 0(r30)
	addli r8, r5, 64
	add.ul r[27:28], r[10:11], r[27:28]
	blt.s r2, r16, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r6, zero, 5
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r5, zero, 2
	addli r10, zero, 4
	addli r11, zero, 64
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 6
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 7
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 8
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 9
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 11
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 12
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 13
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 14
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 15
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 16
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 17
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 18
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 19
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 20
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 22
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 23
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 24
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 25
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 26
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 27
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 28
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 29
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 30
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 31
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 128
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r11, 3
	dma_cfg r5, zero, r10, 4
	addli r5, zero, 512
	dma_cfg r5, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r6, zero, 2
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	addli r5, zero, 5
	xwait r6, 0
	xwait r5, 0
	lock zero, zero
	addli r5, zero, 128
	ds_cfg r6, zero, 0
	addli r6, zero, 64
	ds_cfg r5, zero, 1
	ds_cfg r5, zero, 14
	ds_cfg r6, zero, 13
	shuffle_batch r14, r1, r5, 1
	addli r1, zero, 3
	unlock zero
	xsignal r1, 0
	addli r1, zero, 4
	xsignal r1, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r1, zero, 22
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r5, zero, 40
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r1, r26, r1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	mod.s r5, r24, r5
	addli r24, r24, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r8, r1, 15
	lui r1, 216
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	slli r19, r5, 15
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r5, zero, 7
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	add.s r12, r8, r1
	addli r1, r26, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	beq r22, r5, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r5, zero, 6
	bneq r22, r5, .LBB0_29
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r20, zero, 19
	addli r14, zero, 7
	addli r2, zero, 21
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	sll.d r[5:6], r[10:11], r20
	load.d r[10:11], -400(r30)              # 8-byte Folded Reload
	xwait r14, 0
	add.ul r[27:28], r[10:11], r[5:6]
	blt.s r2, r26, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r6, zero, 5
	addli r10, zero, 1
	addli r11, zero, 2
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r5, zero, 3
	addli r19, zero, 128
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 4
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 6
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 8
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 9
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 11
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 12
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 13
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 14
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 15
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 16
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 17
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 18
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 20
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 22
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 23
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 24
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 25
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 26
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 27
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 28
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 29
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 30
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 31
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 64
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r5, 3
	addli r5, zero, 256
	dma_cfg r19, zero, r11, 4
	dma_cfg r5, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r5, 216
	addli r6, zero, 4
	addli r11, zero, 1
	addli r26, zero, 64
	addli r19, zero, 2
	addli r22, zero, 128
	addli r10, zero, 5
	ori r5, r5, 64
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	lock zero, r6
	dma_cfg r11, r11, zero, 0
	add.s r5, r8, r5
	dma_cfg zero, r28, zero, 2
	addli r8, zero, 4096
	dma_cfg r5, r27, r26, 3
	addli r5, zero, 256
	dma_cfg r22, r26, r19, 4
	dma_cfg r5, r8, r22, 5
	addli r8, zero, 3
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 6
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 8
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 9
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 11
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 12
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 13
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 14
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 15
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 16
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 17
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 18
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 20
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 22
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 25
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 23
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 24
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 31
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
	dma_cfg zero, zero, r6, 10
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r26, 3
	dma_cfg r22, zero, r19, 4
	dma_cfg r5, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r8, 0
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	j .LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r5, zero, 6
	addli r2, zero, 9
	addli r6, zero, 64
	xwait r5, 0
	addli r5, zero, 2
	xwait r2, 0
	lock zero, zero
	ds_cfg r5, zero, 0
	addli r5, zero, 128
	ds_cfg r6, zero, 1
	ds_cfg r5, zero, 14
	ds_cfg r6, zero, 13
	shuffle_coa r19, r12, r5, 2
	addli r5, zero, 7
	unlock zero
	xsignal r5, 0
	addli r5, zero, 8
	xsignal r5, 0
.LBB0_28:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r8
	j .LBB0_13
.LBB0_29:                               #   in Loop: Header=BB0_15 Depth=2
	core_id r8
	addli r5, zero, 4
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	bneq r8, r5, .LBB0_32
# %bb.30:                               #   in Loop: Header=BB0_15 Depth=2
	xwait r5, 0
	addli r5, zero, 8
	addli r6, zero, 1
	addli r10, zero, 128
	addli r11, zero, 64
	xwait r5, 0
	lock zero, r6
	mm_cfg r11, r10, r11, 0
	addli r10, zero, 2
	mm_cfg r5, r10, r6, 2
	beq r3, zero, .LBB0_33
# %bb.31:                               # %.preheader30
                                        #   in Loop: Header=BB0_15 Depth=2
	mm_acc r23, r14, r19, 8
	j .LBB0_34
.LBB0_32:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r7, r7, 1
	addli r5, zero, 16
	bneq r7, r5, .LBB0_14
	j .LBB0_38
.LBB0_33:                               # %.preheader29
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	mm r23, r14, r19, 8
.LBB0_34:                               # %.thread20.thread44
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r5, zero, 1
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r7, r7, 1
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	addli r2, zero, 9
	unlock r5
	addli r5, zero, 5
	xsignal r5, 0
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r5, zero, 16
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	xsignal r2, 0
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	bneq r7, r5, .LBB0_14
# %bb.35:                               # %.thread21.loopexit
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r2, r16, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r24, -256(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r1, -92(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	storeli.w r2, -348(r30)
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, r16, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r1, -92(r30)
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	addli r1, zero, 4
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r24, -256(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	storeli.w r2, -348(r30)
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	bneq r8, r1, .LBB0_39
.LBB0_37:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	storeli.w zero, -384(r30)               # 4-byte Folded Spill
	xsignal r1, 0
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	j .LBB0_42
.LBB0_38:                               # %.thread43.loopexit
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r2, r16, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r24, -256(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r1, -92(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	storeli.w r2, -348(r30)
.LBB0_39:                               # %.thread43
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	addli r1, zero, 3
	bneq r8, r1, .LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 130 7 is_stmt 1               # parallel-rne.mlir:130:7
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	storeli.w r1, -384(r30)                 # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -384(r30)               # 4-byte Folded Spill
.LBB0_42:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	addli r1, zero, 255
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	xfence
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	mfence { lm, sm, gm }
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	csr_set csr5, r1
	addli r1, zero, 64
	sync_core
	zext_int2long r[24:25], r1
	addli r1, zero, 63
	zext_int2long r[2:3], r1
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	beq r8, zero, .LBB0_73
# %bb.43:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r1, zero, 2
	beq r8, r1, .LBB0_102
.LBB0_44:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 1
	bneq r8, r1, .LBB0_131
# %bb.45:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_47
.LBB0_46:                               # %middle.block102
                                        #   in Loop: Header=BB0_47 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[7:8], -376(r30)                # 8-byte Folded Reload
	zext_int2long r[5:6], r1
	.loc	1 171 9 is_stmt 1               # parallel-rne.mlir:171:9
	setlt.ul r1, r[7:8], r[5:6]
	addli.d r[5:6], r[7:8], 1
	beq r1, zero, .LBB0_130
.LBB0_47:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_49 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	zext_int2long r[7:8], zero
	.loc	1 172 11 is_stmt 1              # parallel-rne.mlir:172:11
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[5:6], r1
	beq r15, r23, .LBB0_49
	j .LBB0_54
.LBB0_48:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_49 Depth=3
	setlt.ul r6, r[7:8], r[2:3]
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	add.s r1, r15, r1
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	stores.w r5, 0(r1)
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	beq r6, zero, .LBB0_46
.LBB0_49:                               # %scalar.ph96
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.ul r[5:6], r[7:8], r[20:21]
	slli r1, r5, 2
	add.s r5, r23, r1
	loads.w r6, 0(r5)
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r10, r6, r13
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	setlt.u r5, r17, r10
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r5, zero, .LBB0_51
# %bb.50:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r10, r4, r10
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r10, zero, .LBB0_48
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r6, r5
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r10, r4, r10
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r10, zero, .LBB0_48
.LBB0_52:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r9
	and r5, r5, r18
	j .LBB0_48
.LBB0_53:                               # %vector.body98
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 172 11 is_stmt 1              # parallel-rne.mlir:172:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	add.s r1, r15, r1
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	seteq.d r5, r[7:8], r[24:25]
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	stores.w r12, 12(r1)
	stores.w r28, 8(r1)
	stores.w r14, 4(r1)
	stores.w r11, 0(r1)
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	bneq r5, zero, .LBB0_46
.LBB0_54:                               # %vector.body98
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.ul r[5:6], r[7:8], r[20:21]
	slli r1, r5, 2
	add.s r11, r23, r1
	loads.w r16, 12(r11)
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r26, r16, r13
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	setlt.u r5, r17, r26
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r5, zero, .LBB0_56
# %bb.55:                               # %vector.body98
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r16, 0
	j .LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_54 Depth=3
	lui r5, 1024
	or r12, r16, r5
.LBB0_57:                               # %vector.body98
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r27, 8(r11)
	and r10, r27, r13
	setlt.u r5, r17, r10
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r5, zero, .LBB0_59
# %bb.58:                               # %vector.body98
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r27, 0
	j .LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_54 Depth=3
	lui r5, 1024
	or r28, r27, r5
.LBB0_60:                               # %vector.body98
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r19, 4(r11)
	and r5, r19, r13
	setlt.u r6, r17, r5
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r6, zero, .LBB0_62
# %bb.61:                               # %vector.body98
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_63
.LBB0_62:                               #   in Loop: Header=BB0_54 Depth=3
	lui r6, 1024
	or r14, r19, r6
.LBB0_63:                               # %vector.body98
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r6, 0(r11)
	and r22, r6, r13
	setlt.u r11, r17, r22
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r11, zero, .LBB0_65
# %bb.64:                               # %vector.body98
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r6, 0
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r22, r4, r22
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r22, zero, .LBB0_66
	j .LBB0_67
.LBB0_65:                               #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r6, r11
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r22, r4, r22
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r22, zero, .LBB0_67
.LBB0_66:                               # %vector.body98
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r6, 16
	andi r11, r11, 1
	add.s r6, r6, r11
	add.s r6, r6, r9
	and r11, r6, r18
.LBB0_67:                               # %vector.body98
                                        #   in Loop: Header=BB0_54 Depth=3
	setlt.u r5, r4, r5
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r5, zero, .LBB0_70
# %bb.68:                               # %vector.body98
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r4, r10
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r5, zero, .LBB0_71
.LBB0_69:                               # %vector.body98
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r4, r26
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r5, zero, .LBB0_53
	j .LBB0_72
.LBB0_70:                               # %vector.body98
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r19, 16
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r9
	and r14, r5, r18
	setlt.u r5, r4, r10
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r5, zero, .LBB0_69
.LBB0_71:                               # %vector.body98
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r9
	and r28, r5, r18
	setlt.u r5, r4, r26
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r5, zero, .LBB0_53
.LBB0_72:                               # %vector.body98
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r16, 16
	andi r5, r5, 1
	add.s r5, r16, r5
	add.s r5, r5, r9
	and r12, r5, r18
	j .LBB0_53
.LBB0_73:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	xfence
	zext_int2long r[5:6], zero
	mfence { lm, sm, gm }
	j .LBB0_75
.LBB0_74:                               # %middle.block120
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 7
	load.d r[7:8], -376(r30)                # 8-byte Folded Reload
	zext_int2long r[5:6], r1
	.loc	1 143 9 is_stmt 1               # parallel-rne.mlir:143:9
	setlt.ul r1, r[7:8], r[5:6]
	addli.d r[5:6], r[7:8], 1
	beq r1, zero, .LBB0_101
.LBB0_75:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_77 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	zext_int2long r[7:8], zero
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[5:6], r1
	beq r15, r23, .LBB0_77
	j .LBB0_82
.LBB0_76:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_77 Depth=3
	setlt.ul r6, r[7:8], r[2:3]
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r1, r15, r1
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r5, 0(r1)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	beq r6, zero, .LBB0_74
.LBB0_77:                               # %scalar.ph114
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[5:6], r[7:8], r[20:21]
	slli r1, r5, 2
	add.s r5, r23, r1
	loads.w r6, 0(r5)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r10, r6, r13
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r5, r17, r10
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r5, zero, .LBB0_79
# %bb.78:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r10, r4, r10
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r10, zero, .LBB0_76
	j .LBB0_80
.LBB0_79:                               #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r6, r5
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r10, r4, r10
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r10, zero, .LBB0_76
.LBB0_80:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r9
	and r5, r5, r18
	j .LBB0_76
.LBB0_81:                               # %vector.body116
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r1, r15, r1
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	seteq.d r5, r[7:8], r[24:25]
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r12, 12(r1)
	stores.w r27, 8(r1)
	stores.w r19, 4(r1)
	stores.w r11, 0(r1)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	bneq r5, zero, .LBB0_74
.LBB0_82:                               # %vector.body116
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[5:6], r[7:8], r[20:21]
	slli r1, r5, 2
	add.s r11, r23, r1
	loads.w r16, 12(r11)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r26, r16, r13
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r5, r17, r26
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r5, zero, .LBB0_84
# %bb.83:                               # %vector.body116
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r16, 0
	j .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_82 Depth=3
	lui r5, 1024
	or r12, r16, r5
.LBB0_85:                               # %vector.body116
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r28, 8(r11)
	and r10, r28, r13
	setlt.u r5, r17, r10
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r5, zero, .LBB0_87
# %bb.86:                               # %vector.body116
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r28, 0
	j .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_82 Depth=3
	lui r5, 1024
	or r27, r28, r5
.LBB0_88:                               # %vector.body116
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r14, 4(r11)
	and r5, r14, r13
	setlt.u r6, r17, r5
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r6, zero, .LBB0_90
# %bb.89:                               # %vector.body116
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r14, 0
	j .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_82 Depth=3
	lui r6, 1024
	or r19, r14, r6
.LBB0_91:                               # %vector.body116
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r6, 0(r11)
	and r22, r6, r13
	setlt.u r11, r17, r22
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r11, zero, .LBB0_93
# %bb.92:                               # %vector.body116
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r6, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r22, r4, r22
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r22, zero, .LBB0_94
	j .LBB0_95
.LBB0_93:                               #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r6, r11
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r22, r4, r22
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r22, zero, .LBB0_95
.LBB0_94:                               # %vector.body116
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r6, 16
	andi r11, r11, 1
	add.s r6, r6, r11
	add.s r6, r6, r9
	and r11, r6, r18
.LBB0_95:                               # %vector.body116
                                        #   in Loop: Header=BB0_82 Depth=3
	setlt.u r5, r4, r5
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r5, zero, .LBB0_98
# %bb.96:                               # %vector.body116
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r4, r10
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r5, zero, .LBB0_99
.LBB0_97:                               # %vector.body116
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r4, r26
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r5, zero, .LBB0_81
	j .LBB0_100
.LBB0_98:                               # %vector.body116
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r14, 16
	andi r5, r5, 1
	add.s r5, r14, r5
	add.s r5, r5, r9
	and r19, r5, r18
	setlt.u r5, r4, r10
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r5, zero, .LBB0_97
.LBB0_99:                               # %vector.body116
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r28, 16
	andi r5, r5, 1
	add.s r5, r28, r5
	add.s r5, r5, r9
	and r27, r5, r18
	setlt.u r5, r4, r26
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r5, zero, .LBB0_81
.LBB0_100:                              # %vector.body116
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r16, 16
	andi r5, r5, 1
	add.s r5, r16, r5
	add.s r5, r5, r9
	and r12, r5, r18
	j .LBB0_81
.LBB0_101:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r8
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	mfence { sm }
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r1, zero, 2
	bneq r8, r1, .LBB0_44
.LBB0_102:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 192 7 is_stmt 1               # parallel-rne.mlir:192:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_104
.LBB0_103:                              # %middle.block111
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[7:8], -376(r30)                # 8-byte Folded Reload
	zext_int2long r[5:6], r1
	.loc	1 199 9 is_stmt 1               # parallel-rne.mlir:199:9
	setlt.ul r1, r[7:8], r[5:6]
	addli.d r[5:6], r[7:8], 1
	beq r1, zero, .LBB0_130
.LBB0_104:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_111 Depth 3
                                        #       Child Loop BB0_106 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	zext_int2long r[7:8], zero
	.loc	1 200 11 is_stmt 1              # parallel-rne.mlir:200:11
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[5:6], r1
	beq r15, r23, .LBB0_106
	j .LBB0_111
.LBB0_105:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_106 Depth=3
	setlt.ul r6, r[7:8], r[2:3]
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	add.s r1, r15, r1
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	stores.w r5, 0(r1)
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	beq r6, zero, .LBB0_103
.LBB0_106:                              # %scalar.ph105
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	add.ul r[5:6], r[7:8], r[20:21]
	slli r1, r5, 2
	add.s r5, r23, r1
	loads.w r6, 0(r5)
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	and r10, r6, r13
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	setlt.u r5, r17, r10
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r5, zero, .LBB0_108
# %bb.107:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r10, r4, r10
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r10, zero, .LBB0_105
	j .LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r6, r5
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r10, r4, r10
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r10, zero, .LBB0_105
.LBB0_109:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r9
	and r5, r5, r18
	j .LBB0_105
.LBB0_110:                              # %vector.body107
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 200 11 is_stmt 1              # parallel-rne.mlir:200:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	add.s r1, r15, r1
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	seteq.d r5, r[7:8], r[24:25]
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	stores.w r12, 12(r1)
	stores.w r28, 8(r1)
	stores.w r14, 4(r1)
	stores.w r11, 0(r1)
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	bneq r5, zero, .LBB0_103
.LBB0_111:                              # %vector.body107
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	add.ul r[5:6], r[7:8], r[20:21]
	slli r1, r5, 2
	add.s r11, r23, r1
	loads.w r16, 12(r11)
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	and r26, r16, r13
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	setlt.u r5, r17, r26
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r5, zero, .LBB0_113
# %bb.112:                              # %vector.body107
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r16, 0
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_111 Depth=3
	lui r5, 1024
	or r12, r16, r5
.LBB0_114:                              # %vector.body107
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r27, 8(r11)
	and r10, r27, r13
	setlt.u r5, r17, r10
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r5, zero, .LBB0_116
# %bb.115:                              # %vector.body107
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r27, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_111 Depth=3
	lui r5, 1024
	or r28, r27, r5
.LBB0_117:                              # %vector.body107
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r19, 4(r11)
	and r5, r19, r13
	setlt.u r6, r17, r5
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r6, zero, .LBB0_119
# %bb.118:                              # %vector.body107
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_111 Depth=3
	lui r6, 1024
	or r14, r19, r6
.LBB0_120:                              # %vector.body107
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r6, 0(r11)
	and r22, r6, r13
	setlt.u r11, r17, r22
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r11, zero, .LBB0_122
# %bb.121:                              # %vector.body107
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r6, 0
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r22, r4, r22
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r22, zero, .LBB0_123
	j .LBB0_124
.LBB0_122:                              #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r6, r11
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r22, r4, r22
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r22, zero, .LBB0_124
.LBB0_123:                              # %vector.body107
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r6, 16
	andi r11, r11, 1
	add.s r6, r6, r11
	add.s r6, r6, r9
	and r11, r6, r18
.LBB0_124:                              # %vector.body107
                                        #   in Loop: Header=BB0_111 Depth=3
	setlt.u r5, r4, r5
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r5, zero, .LBB0_127
# %bb.125:                              # %vector.body107
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r4, r10
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r5, zero, .LBB0_128
.LBB0_126:                              # %vector.body107
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r4, r26
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r5, zero, .LBB0_110
	j .LBB0_129
.LBB0_127:                              # %vector.body107
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r19, 16
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r9
	and r14, r5, r18
	setlt.u r5, r4, r10
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r5, zero, .LBB0_126
.LBB0_128:                              # %vector.body107
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r9
	and r28, r5, r18
	setlt.u r5, r4, r26
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r5, zero, .LBB0_110
.LBB0_129:                              # %vector.body107
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r16, 16
	andi r5, r5, 1
	add.s r5, r16, r5
	add.s r5, r5, r9
	and r12, r5, r18
	j .LBB0_110
.LBB0_130:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r8
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_131:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 220 7 is_stmt 1               # parallel-rne.mlir:220:7
	loadli.w r1,  -384(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_164
# %bb.132:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	addli r1, zero, 4
	beq r8, r1, .LBB0_193
.LBB0_133:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	addli r1, zero, 7
	beq r8, r1, .LBB0_222
.LBB0_134:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 6
	beq r8, r1, .LBB0_250
# %bb.135:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 5
	bneq r8, r1, .LBB0_279
# %bb.136:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_138
.LBB0_137:                              # %middle.block
                                        #   in Loop: Header=BB0_138 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[7:8], -376(r30)                # 8-byte Folded Reload
	zext_int2long r[5:6], r1
	.loc	1 283 9 is_stmt 1               # parallel-rne.mlir:283:9
	setlt.ul r1, r[7:8], r[5:6]
	addli.d r[5:6], r[7:8], 1
	beq r1, zero, .LBB0_278
.LBB0_138:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_145 Depth 3
                                        #       Child Loop BB0_140 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	zext_int2long r[7:8], zero
	.loc	1 284 11 is_stmt 1              # parallel-rne.mlir:284:11
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[5:6], r1
	beq r15, r23, .LBB0_140
	j .LBB0_145
.LBB0_139:                              # %scalar.ph
                                        #   in Loop: Header=BB0_140 Depth=3
	setlt.ul r6, r[7:8], r[2:3]
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	add.s r1, r15, r1
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	stores.w r5, 0(r1)
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	beq r6, zero, .LBB0_137
.LBB0_140:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_138 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.ul r[5:6], r[7:8], r[20:21]
	slli r1, r5, 2
	add.s r5, r23, r1
	loads.w r6, 0(r5)
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	and r10, r6, r13
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	setlt.u r5, r17, r10
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r5, zero, .LBB0_142
# %bb.141:                              # %scalar.ph
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r10, r4, r10
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r10, zero, .LBB0_139
	j .LBB0_143
.LBB0_142:                              #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r6, r5
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r10, r4, r10
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r10, zero, .LBB0_139
.LBB0_143:                              # %scalar.ph
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r9
	and r5, r5, r18
	j .LBB0_139
.LBB0_144:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 284 11 is_stmt 1              # parallel-rne.mlir:284:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	add.s r1, r15, r1
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	seteq.d r5, r[7:8], r[24:25]
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	stores.w r12, 12(r1)
	stores.w r28, 8(r1)
	stores.w r14, 4(r1)
	stores.w r11, 0(r1)
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	bneq r5, zero, .LBB0_137
.LBB0_145:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_138 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.ul r[5:6], r[7:8], r[20:21]
	slli r1, r5, 2
	add.s r11, r23, r1
	loads.w r16, 12(r11)
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	and r26, r16, r13
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	setlt.u r5, r17, r26
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r5, zero, .LBB0_147
# %bb.146:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r16, 0
	j .LBB0_148
.LBB0_147:                              #   in Loop: Header=BB0_145 Depth=3
	lui r5, 1024
	or r12, r16, r5
.LBB0_148:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	loads.w r27, 8(r11)
	and r10, r27, r13
	setlt.u r5, r17, r10
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r5, zero, .LBB0_150
# %bb.149:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r27, 0
	j .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_145 Depth=3
	lui r5, 1024
	or r28, r27, r5
.LBB0_151:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	loads.w r19, 4(r11)
	and r5, r19, r13
	setlt.u r6, r17, r5
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r6, zero, .LBB0_153
# %bb.152:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_154
.LBB0_153:                              #   in Loop: Header=BB0_145 Depth=3
	lui r6, 1024
	or r14, r19, r6
.LBB0_154:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	loads.w r6, 0(r11)
	and r22, r6, r13
	setlt.u r11, r17, r22
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r11, zero, .LBB0_160
# %bb.155:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r6, 0
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r22, r4, r22
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r22, zero, .LBB0_157
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r6, 16
	andi r11, r11, 1
	add.s r6, r6, r11
	add.s r6, r6, r9
	and r11, r6, r18
.LBB0_157:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	setlt.u r5, r4, r5
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r5, zero, .LBB0_161
# %bb.158:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r4, r10
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r5, zero, .LBB0_162
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r4, r26
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r5, zero, .LBB0_144
	j .LBB0_163
.LBB0_160:                              #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r6, r11
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r22, r4, r22
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r22, zero, .LBB0_156
	j .LBB0_157
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r19, 16
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r9
	and r14, r5, r18
	setlt.u r5, r4, r10
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r5, zero, .LBB0_159
.LBB0_162:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r9
	and r28, r5, r18
	setlt.u r5, r4, r26
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r5, zero, .LBB0_144
.LBB0_163:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r16, 16
	andi r5, r5, 1
	add.s r5, r16, r5
	add.s r5, r5, r9
	and r12, r5, r18
	j .LBB0_144
.LBB0_164:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 24
	.loc	1 220 7 is_stmt 1               # parallel-rne.mlir:220:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_166
.LBB0_165:                              # %middle.block93
                                        #   in Loop: Header=BB0_166 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 31
	load.d r[7:8], -376(r30)                # 8-byte Folded Reload
	zext_int2long r[5:6], r1
	.loc	1 227 9 is_stmt 1               # parallel-rne.mlir:227:9
	setlt.ul r1, r[7:8], r[5:6]
	addli.d r[5:6], r[7:8], 1
	beq r1, zero, .LBB0_192
.LBB0_166:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_173 Depth 3
                                        #       Child Loop BB0_168 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	zext_int2long r[7:8], zero
	.loc	1 228 11 is_stmt 1              # parallel-rne.mlir:228:11
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[5:6], r1
	beq r15, r23, .LBB0_168
	j .LBB0_173
.LBB0_167:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_168 Depth=3
	setlt.ul r6, r[7:8], r[2:3]
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	add.s r1, r15, r1
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	stores.w r5, 0(r1)
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	beq r6, zero, .LBB0_165
.LBB0_168:                              # %scalar.ph87
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_166 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.ul r[5:6], r[7:8], r[20:21]
	slli r1, r5, 2
	add.s r5, r23, r1
	loads.w r6, 0(r5)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	and r10, r6, r13
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	setlt.u r5, r17, r10
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r5, zero, .LBB0_170
# %bb.169:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r10, r4, r10
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r10, zero, .LBB0_167
	j .LBB0_171
.LBB0_170:                              #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r6, r5
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r10, r4, r10
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r10, zero, .LBB0_167
.LBB0_171:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r9
	and r5, r5, r18
	j .LBB0_167
.LBB0_172:                              # %vector.body89
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 228 11 is_stmt 1              # parallel-rne.mlir:228:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	add.s r1, r15, r1
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	seteq.d r5, r[7:8], r[24:25]
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	stores.w r12, 12(r1)
	stores.w r28, 8(r1)
	stores.w r14, 4(r1)
	stores.w r11, 0(r1)
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	bneq r5, zero, .LBB0_165
.LBB0_173:                              # %vector.body89
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_166 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.ul r[5:6], r[7:8], r[20:21]
	slli r1, r5, 2
	add.s r11, r23, r1
	loads.w r16, 12(r11)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	and r26, r16, r13
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	setlt.u r5, r17, r26
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r5, zero, .LBB0_175
# %bb.174:                              # %vector.body89
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r16, 0
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_173 Depth=3
	lui r5, 1024
	or r12, r16, r5
.LBB0_176:                              # %vector.body89
                                        #   in Loop: Header=BB0_173 Depth=3
	loads.w r27, 8(r11)
	and r10, r27, r13
	setlt.u r5, r17, r10
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r5, zero, .LBB0_178
# %bb.177:                              # %vector.body89
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r27, 0
	j .LBB0_179
.LBB0_178:                              #   in Loop: Header=BB0_173 Depth=3
	lui r5, 1024
	or r28, r27, r5
.LBB0_179:                              # %vector.body89
                                        #   in Loop: Header=BB0_173 Depth=3
	loads.w r19, 4(r11)
	and r5, r19, r13
	setlt.u r6, r17, r5
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r6, zero, .LBB0_181
# %bb.180:                              # %vector.body89
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_182
.LBB0_181:                              #   in Loop: Header=BB0_173 Depth=3
	lui r6, 1024
	or r14, r19, r6
.LBB0_182:                              # %vector.body89
                                        #   in Loop: Header=BB0_173 Depth=3
	loads.w r6, 0(r11)
	and r22, r6, r13
	setlt.u r11, r17, r22
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r11, zero, .LBB0_188
# %bb.183:                              # %vector.body89
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r6, 0
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r22, r4, r22
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r22, zero, .LBB0_185
.LBB0_184:                              # %vector.body89
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r6, 16
	andi r11, r11, 1
	add.s r6, r6, r11
	add.s r6, r6, r9
	and r11, r6, r18
.LBB0_185:                              # %vector.body89
                                        #   in Loop: Header=BB0_173 Depth=3
	setlt.u r5, r4, r5
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r5, zero, .LBB0_189
# %bb.186:                              # %vector.body89
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r4, r10
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r5, zero, .LBB0_190
.LBB0_187:                              # %vector.body89
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r4, r26
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r5, zero, .LBB0_172
	j .LBB0_191
.LBB0_188:                              #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r6, r11
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r22, r4, r22
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r22, zero, .LBB0_184
	j .LBB0_185
.LBB0_189:                              # %vector.body89
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r19, 16
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r9
	and r14, r5, r18
	setlt.u r5, r4, r10
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r5, zero, .LBB0_187
.LBB0_190:                              # %vector.body89
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r9
	and r28, r5, r18
	setlt.u r5, r4, r26
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r5, zero, .LBB0_172
.LBB0_191:                              # %vector.body89
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r16, 16
	andi r5, r5, 1
	add.s r5, r16, r5
	add.s r5, r5, r9
	and r12, r5, r18
	j .LBB0_172
.LBB0_192:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r8
	.loc	1 220 7                         # parallel-rne.mlir:220:7
	mfence { sm }
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	addli r1, zero, 4
	bneq r8, r1, .LBB0_133
.LBB0_193:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_195
.LBB0_194:                              # %middle.block84
                                        #   in Loop: Header=BB0_195 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 39
	load.d r[7:8], -376(r30)                # 8-byte Folded Reload
	zext_int2long r[5:6], r1
	.loc	1 255 9 is_stmt 1               # parallel-rne.mlir:255:9
	setlt.ul r1, r[7:8], r[5:6]
	addli.d r[5:6], r[7:8], 1
	beq r1, zero, .LBB0_221
.LBB0_195:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_202 Depth 3
                                        #       Child Loop BB0_197 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	zext_int2long r[7:8], zero
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[5:6], r1
	beq r15, r23, .LBB0_197
	j .LBB0_202
.LBB0_196:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_197 Depth=3
	setlt.ul r6, r[7:8], r[2:3]
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	add.s r1, r15, r1
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	stores.w r5, 0(r1)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	beq r6, zero, .LBB0_194
.LBB0_197:                              # %scalar.ph78
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_195 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.ul r[5:6], r[7:8], r[20:21]
	slli r1, r5, 2
	add.s r5, r23, r1
	loads.w r6, 0(r5)
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	and r10, r6, r13
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	setlt.u r5, r17, r10
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r5, zero, .LBB0_199
# %bb.198:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_197 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r10, r4, r10
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r10, zero, .LBB0_196
	j .LBB0_200
.LBB0_199:                              #   in Loop: Header=BB0_197 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r6, r5
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r10, r4, r10
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r10, zero, .LBB0_196
.LBB0_200:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_197 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r9
	and r5, r5, r18
	j .LBB0_196
.LBB0_201:                              # %vector.body80
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	add.s r1, r15, r1
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	seteq.d r5, r[7:8], r[24:25]
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	stores.w r12, 12(r1)
	stores.w r28, 8(r1)
	stores.w r14, 4(r1)
	stores.w r11, 0(r1)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	bneq r5, zero, .LBB0_194
.LBB0_202:                              # %vector.body80
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_195 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.ul r[5:6], r[7:8], r[20:21]
	slli r1, r5, 2
	add.s r11, r23, r1
	loads.w r16, 12(r11)
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	and r26, r16, r13
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	setlt.u r5, r17, r26
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r5, zero, .LBB0_204
# %bb.203:                              # %vector.body80
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r16, 0
	j .LBB0_205
.LBB0_204:                              #   in Loop: Header=BB0_202 Depth=3
	lui r5, 1024
	or r12, r16, r5
.LBB0_205:                              # %vector.body80
                                        #   in Loop: Header=BB0_202 Depth=3
	loads.w r27, 8(r11)
	and r10, r27, r13
	setlt.u r5, r17, r10
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r5, zero, .LBB0_207
# %bb.206:                              # %vector.body80
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r27, 0
	j .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_202 Depth=3
	lui r5, 1024
	or r28, r27, r5
.LBB0_208:                              # %vector.body80
                                        #   in Loop: Header=BB0_202 Depth=3
	loads.w r19, 4(r11)
	and r5, r19, r13
	setlt.u r6, r17, r5
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r6, zero, .LBB0_210
# %bb.209:                              # %vector.body80
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_211
.LBB0_210:                              #   in Loop: Header=BB0_202 Depth=3
	lui r6, 1024
	or r14, r19, r6
.LBB0_211:                              # %vector.body80
                                        #   in Loop: Header=BB0_202 Depth=3
	loads.w r6, 0(r11)
	and r22, r6, r13
	setlt.u r11, r17, r22
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r11, zero, .LBB0_217
# %bb.212:                              # %vector.body80
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r6, 0
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r22, r4, r22
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r22, zero, .LBB0_214
.LBB0_213:                              # %vector.body80
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r6, 16
	andi r11, r11, 1
	add.s r6, r6, r11
	add.s r6, r6, r9
	and r11, r6, r18
.LBB0_214:                              # %vector.body80
                                        #   in Loop: Header=BB0_202 Depth=3
	setlt.u r5, r4, r5
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r5, zero, .LBB0_218
# %bb.215:                              # %vector.body80
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r4, r10
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r5, zero, .LBB0_219
.LBB0_216:                              # %vector.body80
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r4, r26
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r5, zero, .LBB0_201
	j .LBB0_220
.LBB0_217:                              #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r6, r11
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r22, r4, r22
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r22, zero, .LBB0_213
	j .LBB0_214
.LBB0_218:                              # %vector.body80
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r19, 16
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r9
	and r14, r5, r18
	setlt.u r5, r4, r10
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r5, zero, .LBB0_216
.LBB0_219:                              # %vector.body80
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r9
	and r28, r5, r18
	setlt.u r5, r4, r26
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r5, zero, .LBB0_201
.LBB0_220:                              # %vector.body80
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r16, 16
	andi r5, r5, 1
	add.s r5, r16, r5
	add.s r5, r5, r9
	and r12, r5, r18
	j .LBB0_201
.LBB0_221:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r8
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	mfence { sm }
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	addli r1, zero, 7
	bneq r8, r1, .LBB0_134
.LBB0_222:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 332 7 is_stmt 1               # parallel-rne.mlir:332:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_224
.LBB0_223:                              # %middle.block75
                                        #   in Loop: Header=BB0_224 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[5:6], -376(r30)                # 8-byte Folded Reload
	.loc	1 339 9 is_stmt 1               # parallel-rne.mlir:339:9
	setlt.ul r1, r[5:6], r[2:3]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_278
.LBB0_224:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_231 Depth 3
                                        #       Child Loop BB0_226 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	zext_int2long r[7:8], zero
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[5:6], r1
	.loc	1 340 11 is_stmt 1              # parallel-rne.mlir:340:11
	beq r15, r23, .LBB0_226
	j .LBB0_231
.LBB0_225:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_226 Depth=3
	setlt.ul r6, r[7:8], r[2:3]
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	add.s r1, r15, r1
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	stores.w r5, 0(r1)
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	beq r6, zero, .LBB0_223
.LBB0_226:                              # %scalar.ph69
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_224 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	add.ul r[5:6], r[7:8], r[20:21]
	slli r1, r5, 2
	add.s r5, r23, r1
	loads.w r6, 0(r5)
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r10, r6, r13
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	setlt.u r5, r17, r10
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r5, zero, .LBB0_228
# %bb.227:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r10, r4, r10
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r10, zero, .LBB0_225
	j .LBB0_229
.LBB0_228:                              #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r6, r5
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r10, r4, r10
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r10, zero, .LBB0_225
.LBB0_229:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r9
	and r5, r5, r18
	j .LBB0_225
.LBB0_230:                              # %vector.body71
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 340 11 is_stmt 1              # parallel-rne.mlir:340:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	add.s r1, r15, r1
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	seteq.d r5, r[7:8], r[24:25]
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	stores.w r12, 12(r1)
	stores.w r28, 8(r1)
	stores.w r14, 4(r1)
	stores.w r11, 0(r1)
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	bneq r5, zero, .LBB0_223
.LBB0_231:                              # %vector.body71
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_224 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	add.ul r[5:6], r[7:8], r[20:21]
	slli r1, r5, 2
	add.s r11, r23, r1
	loads.w r16, 12(r11)
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r26, r16, r13
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	setlt.u r5, r17, r26
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r5, zero, .LBB0_233
# %bb.232:                              # %vector.body71
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r16, 0
	j .LBB0_234
.LBB0_233:                              #   in Loop: Header=BB0_231 Depth=3
	lui r5, 1024
	or r12, r16, r5
.LBB0_234:                              # %vector.body71
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r27, 8(r11)
	and r10, r27, r13
	setlt.u r5, r17, r10
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r5, zero, .LBB0_236
# %bb.235:                              # %vector.body71
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r27, 0
	j .LBB0_237
.LBB0_236:                              #   in Loop: Header=BB0_231 Depth=3
	lui r5, 1024
	or r28, r27, r5
.LBB0_237:                              # %vector.body71
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r19, 4(r11)
	and r5, r19, r13
	setlt.u r6, r17, r5
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r6, zero, .LBB0_239
# %bb.238:                              # %vector.body71
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_240
.LBB0_239:                              #   in Loop: Header=BB0_231 Depth=3
	lui r6, 1024
	or r14, r19, r6
.LBB0_240:                              # %vector.body71
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r6, 0(r11)
	and r22, r6, r13
	setlt.u r11, r17, r22
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r11, zero, .LBB0_242
# %bb.241:                              # %vector.body71
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r6, 0
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r22, r4, r22
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r22, zero, .LBB0_243
	j .LBB0_244
.LBB0_242:                              #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r6, r11
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r22, r4, r22
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r22, zero, .LBB0_244
.LBB0_243:                              # %vector.body71
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r6, 16
	andi r11, r11, 1
	add.s r6, r6, r11
	add.s r6, r6, r9
	and r11, r6, r18
.LBB0_244:                              # %vector.body71
                                        #   in Loop: Header=BB0_231 Depth=3
	setlt.u r5, r4, r5
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r5, zero, .LBB0_247
# %bb.245:                              # %vector.body71
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r4, r10
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r5, zero, .LBB0_248
.LBB0_246:                              # %vector.body71
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r4, r26
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r5, zero, .LBB0_230
	j .LBB0_249
.LBB0_247:                              # %vector.body71
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r19, 16
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r9
	and r14, r5, r18
	setlt.u r5, r4, r10
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r5, zero, .LBB0_246
.LBB0_248:                              # %vector.body71
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r9
	and r28, r5, r18
	setlt.u r5, r4, r26
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r5, zero, .LBB0_230
.LBB0_249:                              # %vector.body71
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r16, 16
	andi r5, r5, 1
	add.s r5, r16, r5
	add.s r5, r5, r9
	and r12, r5, r18
	j .LBB0_230
.LBB0_250:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 48
	.loc	1 304 7 is_stmt 1               # parallel-rne.mlir:304:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_252
.LBB0_251:                              # %middle.block66
                                        #   in Loop: Header=BB0_252 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 55
	load.d r[7:8], -376(r30)                # 8-byte Folded Reload
	zext_int2long r[5:6], r1
	.loc	1 311 9 is_stmt 1               # parallel-rne.mlir:311:9
	setlt.ul r1, r[7:8], r[5:6]
	addli.d r[5:6], r[7:8], 1
	beq r1, zero, .LBB0_278
.LBB0_252:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_259 Depth 3
                                        #       Child Loop BB0_254 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	zext_int2long r[7:8], zero
	.loc	1 312 11 is_stmt 1              # parallel-rne.mlir:312:11
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[5:6], r1
	beq r15, r23, .LBB0_254
	j .LBB0_259
.LBB0_253:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_254 Depth=3
	setlt.ul r6, r[7:8], r[2:3]
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	add.s r1, r15, r1
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	stores.w r5, 0(r1)
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	beq r6, zero, .LBB0_251
.LBB0_254:                              # %scalar.ph60
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_252 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	add.ul r[5:6], r[7:8], r[20:21]
	slli r1, r5, 2
	add.s r5, r23, r1
	loads.w r6, 0(r5)
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r10, r6, r13
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	setlt.u r5, r17, r10
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r5, zero, .LBB0_256
# %bb.255:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r10, r4, r10
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r10, zero, .LBB0_253
	j .LBB0_257
.LBB0_256:                              #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r6, r5
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r10, r4, r10
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r10, zero, .LBB0_253
.LBB0_257:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r9
	and r5, r5, r18
	j .LBB0_253
.LBB0_258:                              # %vector.body62
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 312 11 is_stmt 1              # parallel-rne.mlir:312:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	add.s r1, r15, r1
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	seteq.d r5, r[7:8], r[24:25]
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	stores.w r12, 12(r1)
	stores.w r28, 8(r1)
	stores.w r14, 4(r1)
	stores.w r11, 0(r1)
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	bneq r5, zero, .LBB0_251
.LBB0_259:                              # %vector.body62
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_252 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	add.ul r[5:6], r[7:8], r[20:21]
	slli r1, r5, 2
	add.s r11, r23, r1
	loads.w r16, 12(r11)
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r26, r16, r13
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	setlt.u r5, r17, r26
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r5, zero, .LBB0_261
# %bb.260:                              # %vector.body62
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r16, 0
	j .LBB0_262
.LBB0_261:                              #   in Loop: Header=BB0_259 Depth=3
	lui r5, 1024
	or r12, r16, r5
.LBB0_262:                              # %vector.body62
                                        #   in Loop: Header=BB0_259 Depth=3
	loads.w r27, 8(r11)
	and r10, r27, r13
	setlt.u r5, r17, r10
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r5, zero, .LBB0_264
# %bb.263:                              # %vector.body62
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r27, 0
	j .LBB0_265
.LBB0_264:                              #   in Loop: Header=BB0_259 Depth=3
	lui r5, 1024
	or r28, r27, r5
.LBB0_265:                              # %vector.body62
                                        #   in Loop: Header=BB0_259 Depth=3
	loads.w r19, 4(r11)
	and r5, r19, r13
	setlt.u r6, r17, r5
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r6, zero, .LBB0_267
# %bb.266:                              # %vector.body62
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_268
.LBB0_267:                              #   in Loop: Header=BB0_259 Depth=3
	lui r6, 1024
	or r14, r19, r6
.LBB0_268:                              # %vector.body62
                                        #   in Loop: Header=BB0_259 Depth=3
	loads.w r6, 0(r11)
	and r22, r6, r13
	setlt.u r11, r17, r22
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r11, zero, .LBB0_270
# %bb.269:                              # %vector.body62
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r6, 0
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r22, r4, r22
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r22, zero, .LBB0_271
	j .LBB0_272
.LBB0_270:                              #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r6, r11
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r22, r4, r22
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r22, zero, .LBB0_272
.LBB0_271:                              # %vector.body62
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r6, 16
	andi r11, r11, 1
	add.s r6, r6, r11
	add.s r6, r6, r9
	and r11, r6, r18
.LBB0_272:                              # %vector.body62
                                        #   in Loop: Header=BB0_259 Depth=3
	setlt.u r5, r4, r5
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r5, zero, .LBB0_275
# %bb.273:                              # %vector.body62
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r4, r10
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r5, zero, .LBB0_276
.LBB0_274:                              # %vector.body62
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r4, r26
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r5, zero, .LBB0_258
	j .LBB0_277
.LBB0_275:                              # %vector.body62
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r19, 16
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r9
	and r14, r5, r18
	setlt.u r5, r4, r10
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r5, zero, .LBB0_274
.LBB0_276:                              # %vector.body62
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r9
	and r28, r5, r18
	setlt.u r5, r4, r26
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r5, zero, .LBB0_258
.LBB0_277:                              # %vector.body62
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r16, 16
	andi r5, r5, 1
	add.s r5, r16, r5
	add.s r5, r5, r9
	and r12, r5, r18
	j .LBB0_258
.LBB0_278:                              # %.sink.split52
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r8
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_279:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 360 7 is_stmt 1               # parallel-rne.mlir:360:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	loadli.w r1,  -384(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.280:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r12, zero, 1
	.loc	1 378 7 is_stmt 1               # parallel-rne.mlir:378:7
	bneq r8, zero, .LBB0_7
# %bb.281:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	loadli.w r1,  -440(r30)                 # 4-byte Folded Reload
	load.d r[10:11], -360(r30)              # 8-byte Folded Reload
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	loadli.w r3,  -436(r30)                 # 4-byte Folded Reload
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	load.d r[19:20], 16(r30)
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	zext_int2long r[1:2], r1
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	sext_int2long r[7:8], r3
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	addli r3, zero, 18
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	min.ul r[5:6], r[1:2], r[10:11]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	min.sl r[10:11], r[7:8], r[10:11]
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	addli.d r[5:6], r[5:6], 64
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	max.ul r[5:6], r[5:6], r[1:2]
	sub.sl r[1:2], r[5:6], r[1:2]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	addli.d r[5:6], r[10:11], 64
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	load.d r[10:11], -432(r30)              # 8-byte Folded Reload
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	max.sl r[5:6], r[5:6], r[7:8]
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	min.ul r[1:2], r[1:2], r[24:25]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	sll.d r[10:11], r[10:11], r3
	addli r3, zero, 12
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	sub.sl r[5:6], r[5:6], r[7:8]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	load.d r[7:8], -424(r30)                # 8-byte Folded Reload
	add.ul r[10:11], r[19:20], r[10:11]
	xwait r3, 0
	ori r3, r15, 64
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.sl r[5:6], r[5:6], r[24:25]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	add.ul r[7:8], r[10:11], r[7:8]
	addli r10, zero, 5
	addli r11, zero, 64
	lock zero, r10
	dma_cfg r12, r12, zero, 0
	dma_cfg zero, r12, zero, 1
	dma_cfg r8, zero, zero, 2
	dma_cfg r7, r3, r11, 3
	addli r3, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r8
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	srli r3, r3, 5
	andi r1, r1, 62
	dma_cfg r11, r2, r3, 4
	addli r2, zero, 256
	addli r3, zero, 4096
	dma_cfg r3, r2, r5, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r10
	j .LBB0_6
.LBB0_282:                              # %._crit_edge
	.loc	1 380 5                         # parallel-rne.mlir:380:5
	xsignal zero, 0
	bneq r8, zero, .LBB0_284
# %bb.283:
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
.LBB0_284:
	.loc	1 381 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:381:5
	addli sp, sp, 456
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
	.long	520                             # 0x208
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-0bxbihub" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
