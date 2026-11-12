	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-n965hwlf" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -480
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r20
	addli r30, sp, 416
	xsignal_mode_cfg r1
	beq r20, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 30 5                          # parallel-rne.mlir:30:5
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
	.loc	1 32 10 is_stmt 1               # parallel-rne.mlir:32:10
	load_param_i r3, 1
	loadli.w r4,  32(r30)
	.loc	1 31 10                         # parallel-rne.mlir:31:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w zero, -76(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -240(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -320(r30)
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	mul.s r1, r2, r1
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r4, r1, r4
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r2, -1
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 43 11                         # parallel-rne.mlir:43:11
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
	.loc	1 44 11                         # parallel-rne.mlir:44:11
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r1, r2, r6
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	fmac.s r2, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	min.s r2, r2, r4
	.loc	1 49 5                          # parallel-rne.mlir:49:5
	ble.s r2, r1, .LBB0_279
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	addli r22, zero, 0
	addli r15, zero, 128
	addli r19, zero, 7
	addli r21, zero, 4
	lui r7, 522240
	lui r8, 1048560
	addli r11, zero, 0
	.loc	1 41 11 is_stmt 1               # parallel-rne.mlir:41:11
	store.d r[2:3], -408(r30)               # 8-byte Folded Spill
	sext_int2long r[3:4], r1
	lui r1, 31
	ori r2, r1, 4095
	lui r1, 1047552
	store.d r[1:2], -416(r30)               # 8-byte Folded Spill
	lui r1, 1023
	lui r2, 522239
	ori r1, r1, 4095
	ori r18, r2, 4095
	storeli.w r1, -340(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r5, r1, 4095
	lui r1, 7
	ori r6, r1, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 360 7                         # parallel-rne.mlir:360:7
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[3:4], -368(r30)                # 8-byte Folded Reload
	.loc	1 49 5 is_stmt 1                # parallel-rne.mlir:49:5
	load.d r[1:2], -408(r30)                # 8-byte Folded Reload
	loadli.w r11,  -372(r30)                # 4-byte Folded Reload
	addli.d r[3:4], r[3:4], 1
	setlt.sl r1, r[3:4], r[1:2]
	beq r1, zero, .LBB0_279
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_31 Depth 3
                                        #     Child Loop BB0_72 Depth 2
                                        #       Child Loop BB0_79 Depth 3
                                        #       Child Loop BB0_74 Depth 3
                                        #     Child Loop BB0_44 Depth 2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #     Child Loop BB0_101 Depth 2
                                        #       Child Loop BB0_108 Depth 3
                                        #       Child Loop BB0_103 Depth 3
                                        #     Child Loop BB0_163 Depth 2
                                        #       Child Loop BB0_170 Depth 3
                                        #       Child Loop BB0_165 Depth 3
                                        #     Child Loop BB0_192 Depth 2
                                        #       Child Loop BB0_199 Depth 3
                                        #       Child Loop BB0_194 Depth 3
                                        #     Child Loop BB0_135 Depth 2
                                        #       Child Loop BB0_142 Depth 3
                                        #       Child Loop BB0_137 Depth 3
                                        #     Child Loop BB0_249 Depth 2
                                        #       Child Loop BB0_256 Depth 3
                                        #       Child Loop BB0_251 Depth 3
                                        #     Child Loop BB0_221 Depth 2
                                        #       Child Loop BB0_228 Depth 3
                                        #       Child Loop BB0_223 Depth 3
	.loc	1 76 7                          # parallel-rne.mlir:76:7
	bneq r20, r21, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  32(r30)
	loadli.w r2,  28(r30)
	store.d r[3:4], -368(r30)               # 8-byte Folded Spill
	addli r9, zero, 16
	addli r10, zero, 8
	addli r16, zero, 0
	addli r17, zero, 0
	div.s r1, r3, r1
	addli r4, zero, 3
	mod.s r4, r11, r4
	addli r11, r11, 1
	storeli.w r11, -372(r30)                # 4-byte Folded Spill
	div.s r1, r1, r2
	div.s r2, r1, r15
	slli r3, r2, 3
	slli r2, r2, 7
	sub.s r9, r9, r3
	sub.s r2, r1, r2
	min.s r9, r9, r10
	slli r10, r4, 16
	lui r4, 48
	mod.s r1, r1, r9
	div.s r2, r2, r9
	add.s r11, r10, r4
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	loadli.w r9,  -320(r30)
	add.s r1, r3, r1
	slli r3, r2, 7
	storeli.w r3, -400(r30)                 # 4-byte Folded Spill
	zext_int2long r[2:3], r2
	slli r4, r1, 7
	zext_int2long r[12:13], r1
	sll.d r[1:2], r[2:3], r19
	addli r3, zero, 18
	storeli.w r4, -396(r30)                 # 4-byte Folded Spill
	store.d r[12:13], -392(r30)             # 8-byte Folded Spill
	sll.d r[24:25], r[12:13], r3
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r3, zero, 1
	sll.d r[3:4], r[1:2], r3
	load.d r[1:2], -416(r30)                # 8-byte Folded Reload
	store.d r[3:4], -384(r30)               # 8-byte Folded Spill
	and.d r[1:2], r[24:25], r[1:2]
	store.d r[1:2], -336(r30)               # 8-byte Folded Spill
	load.d r[1:2], 8(r30)
	add.ul r[1:2], r[1:2], r[3:4]
	store.d r[1:2], -352(r30)               # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r3, 96
	addli r23, zero, 64
	addli r9, zero, 2
	ori r3, r3, 64
	.loc	1 100 9 is_stmt 1               # parallel-rne.mlir:100:9
	add.s r2, r2, r3
	addli r3, zero, 4
	lock zero, r3
	dma_cfg r26, r26, zero, 0
	dma_cfg zero, r13, zero, 2
	dma_cfg r2, r12, r23, 3
	addli r2, zero, 128
	addli r13, zero, 256
	addli r12, zero, 5
	dma_cfg r2, r23, r9, 4
	addli r2, zero, 4096
	dma_cfg r13, r2, r1, 5
	addli r2, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r4, 10
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
	addli r2, zero, 17
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 19
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 128
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
	dma_cfg r26, r26, zero, 0
	dma_cfg r26, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r21, zero, r23, 3
	addli r21, zero, 4
	dma_cfg r15, zero, r9, 4
	dma_cfg r13, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r9, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r1,  -240(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r2,  -76(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r1, r1, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r2, r2, 1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	storeli.w r1, -240(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r2, -76(r30)
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r17, r17, 1
	addli r1, zero, 32
	beq r17, r1, .LBB0_34
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 121 15                        # parallel-rne.mlir:121:15
	addli r16, r16, 1
	addli r9, r19, 0
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_31 Depth 3
	.loc	1 78 15                         # parallel-rne.mlir:78:15
	zext_int2long r[12:13], r17
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	addli r1, zero, 6
	load.d r[14:15], -336(r30)              # 8-byte Folded Reload
	addli r28, zero, 4
	addli r23, zero, 128
	sll.d r[1:2], r[12:13], r1
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	add.ul r[3:4], r[1:2], r[24:25]
	loadli.w r1,  -340(r30)                 # 4-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	setlt.ul r1, r[1:2], r[3:4]
	.loc	1 86 15                         # parallel-rne.mlir:86:15
	bneq r1, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[14:15], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	addli r2, zero, 19
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	addli r1, zero, 24
	addli r19, zero, 1920
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	lui r21, 96
	mod.s r2, r9, r2
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	mod.s r1, r22, r1
	zext_int2long r[26:27], r19
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r19, r9, 1
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	addli r22, r22, 1
	store.d r[26:27], -328(r30)             # 8-byte Folded Spill
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r26, zero, 2
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	storeli.w r19, -320(r30)
	slli r2, r2, 15
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	slli r1, r1, 15
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	add.s r21, r2, r21
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	beq r20, r26, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r26, zero, 1
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	bneq r20, r26, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r1, zero, 2048
	sub.sl r[12:13], r[3:4], r[14:15]
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	sll.d r[3:4], r[3:4], r26
	zext_int2long r[14:15], r1
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[12:13], r[12:13], r[14:15]
	load.d r[14:15], -328(r30)              # 8-byte Folded Reload
	min.sl r[14:15], r[12:13], r[14:15]
	sub.sl r[14:15], r[14:15], r[12:13]
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	load.d r[12:13], 0(r30)
	addli r1, r14, 128
	addli r14, zero, 3
	addli r15, zero, 18
	add.ul r[12:13], r[12:13], r[3:4]
	addli r4, zero, 7
	xwait r14, 0
	blt.s r15, r9, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r23, zero, 5
	addli r9, zero, 2
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r3, zero, 6
	lock zero, r23
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r23, 10
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
	dma_cfg zero, zero, r15, 10
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
	addli r3, zero, 64
	dma_cfg r26, r26, zero, 0
	dma_cfg r26, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r21, zero, r3, 3
	addli r3, zero, 128
	dma_cfg r3, zero, r9, 4
	addli r9, zero, 256
	dma_cfg r9, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	unlock r23
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r2, zero, 2
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	addli r3, zero, 5
	addli r15, zero, 128
	addli r4, zero, 7
	xwait r2, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 64
	ds_cfg r2, zero, 0
	addli r2, zero, 128
	ds_cfg r3, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r2, zero, 13
	shuffle_batch r1, r21, r3, 1
	addli r21, zero, 4
	addli r1, zero, 3
	unlock zero
	xsignal r1, 0
	xsignal r21, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r2,  -240(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r3,  -76(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r4, zero, 40
	addli r14, zero, 18
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	lui r15, 248
	mod.s r9, r3, r14
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	mod.s r4, r2, r4
	addli r2, r2, 1
	storeli.w r2, -240(r30)
	slli r2, r4, 15
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r9, r9, 15
	addli r4, r3, 1
	storeli.w r4, -76(r30)
	add.s r21, r9, r15
	addli r4, zero, 7
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	beq r20, r4, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r15, zero, 6
	bneq r20, r15, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	sll.d r[1:2], r[12:13], r14
	load.d r[12:13], -352(r30)              # 8-byte Folded Reload
	addli r15, zero, 1
	addli r28, zero, 17
	xwait r4, 0
	add.ul r[1:2], r[12:13], r[1:2]
	addli r12, zero, 3
	blt.s r28, r3, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r26, zero, 5
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r3, zero, 2
	addli r13, zero, 4
	lock zero, r26
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 6
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r26, 10
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
	addli r3, zero, 13
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 15
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 16
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 19
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r14, 10
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
	addli r3, zero, 64
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r21, zero, r3, 3
	dma_cfg r23, zero, r13, 4
	addli r13, zero, 512
	dma_cfg r13, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r26
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r3, 248
	addli r13, zero, 64
	addli r23, zero, 512
	ori r3, r3, 64
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	add.s r3, r9, r3
	addli r9, zero, 4
	lock zero, r9
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r3, r1, r13, 3
	addli r1, zero, 128
	addli r3, zero, 5
	addli r2, zero, 6
	dma_cfg r1, r13, r9, 4
	addli r1, zero, 4096
	dma_cfg r23, r1, r13, 5
	addli r1, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	lock zero, r3
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r4, 10
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
	addli r1, zero, 19
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r14, 10
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
	addli r1, zero, 1
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	addli r15, zero, 128
	dma_cfg zero, zero, zero, 2
	dma_cfg r21, zero, r13, 3
	addli r21, zero, 4
	dma_cfg r15, zero, r21, 4
	dma_cfg r23, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	xsignal r2, 0
	.loc	1 118 9 is_stmt 1               # parallel-rne.mlir:118:9
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	addli r1, zero, 6
	addli r3, zero, 64
	addli r15, zero, 128
	xwait r1, 0
	addli r1, zero, 9
	xwait r1, 0
	addli r1, zero, 2
	lock zero, zero
	ds_cfg r1, zero, 0
	addli r1, zero, 128
	ds_cfg r1, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r1, zero, 13
	addli r1, zero, 8
	shuffle_coa r2, r21, r3, 2
	addli r21, zero, 4
	unlock zero
	xsignal r4, 0
	xsignal r1, 0
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r21, zero, 4
	.loc	1 120 9 is_stmt 1               # parallel-rne.mlir:120:9
	bneq r20, r21, .LBB0_33
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	addli r3, zero, 8
	xwait r21, 0
	addli r15, zero, 128
	addli r4, zero, 1
	addli r9, zero, 0
	addli r13, zero, 64
	xwait r3, 0
	addli r3, zero, 1
	beq r16, zero, .LBB0_31
.LBB0_30:                               # %.preheader30
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r9, 14
	slli r9, r9, 8
	lock zero, r3
	mm_cfg r13, r13, r15, 0
	or r12, r12, r2
	or r9, r9, r11
	mm_cfg r21, r21, r3, 2
	mm_acc r9, r1, r12, 8
	andi r12, r4, 1
	addli r9, zero, 1
	addli r4, zero, 0
	unlock r3
	bneq r12, zero, .LBB0_30
	j .LBB0_32
.LBB0_31:                               # %.preheader29
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r9, 14
	slli r9, r9, 8
	lock zero, r3
	mm_cfg r13, r13, r15, 0
	or r12, r12, r2
	or r9, r9, r11
	mm_cfg r21, r21, r3, 2
	mm r9, r1, r12, 8
	andi r12, r4, 1
	addli r9, zero, 1
	addli r4, zero, 0
	unlock r3
	bneq r12, zero, .LBB0_31
.LBB0_32:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r1, zero, 5
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r17, r17, 1
	addli r4, zero, 7
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r1, zero, 32
	bneq r17, r1, .LBB0_14
	j .LBB0_35
.LBB0_33:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r17, r17, 1
	addli r15, zero, 128
	addli r1, zero, 32
	bneq r17, r1, .LBB0_14
	j .LBB0_36
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 124 7                         # parallel-rne.mlir:124:7
	bneq r20, r21, .LBB0_36
.LBB0_35:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	storeli.w zero, -356(r30)               # 4-byte Folded Spill
	xsignal r1, 0
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	j .LBB0_39
.LBB0_36:                               # %.thread44
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 3
	bneq r20, r1, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	storeli.w r1, -356(r30)                 # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -356(r30)               # 4-byte Folded Spill
.LBB0_39:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 134 7 is_stmt 1               # parallel-rne.mlir:134:7
	addli r1, zero, 255
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	xfence
	zext_int2long r[16:17], r15
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	mfence { lm, sm, gm }
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	csr_set csr5, r1
	addli r1, zero, 127
	sync_core
	storeli.w r22, -352(r30)                # 4-byte Folded Spill
	zext_int2long r[24:25], r1
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	beq r20, zero, .LBB0_70
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	addli r1, zero, 2
	beq r20, r1, .LBB0_99
.LBB0_41:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 1
	bneq r20, r1, .LBB0_128
# %bb.42:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_44
.LBB0_43:                               # %middle.block105
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 31
	load.d r[3:4], -336(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 170 9 is_stmt 1               # parallel-rne.mlir:170:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	addli r4, zero, 7
	beq r1, zero, .LBB0_127
.LBB0_44:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_46 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[2:3], -336(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[2:3], r4
	zext_int2long r[1:2], zero
	.loc	1 171 11 is_stmt 1              # parallel-rne.mlir:171:11
	beq r10, r11, .LBB0_46
	j .LBB0_51
.LBB0_45:                               # %scalar.ph99
                                        #   in Loop: Header=BB0_46 Depth=3
	setlt.ul r9, r[1:2], r[24:25]
	.loc	1 186 13                        # parallel-rne.mlir:186:13
	add.s r3, r10, r3
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 186 13                        # parallel-rne.mlir:186:13
	stores.w r4, 0(r3)
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	beq r9, zero, .LBB0_43
.LBB0_46:                               # %scalar.ph99
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.ul r[3:4], r[1:2], r[21:22]
	slli r3, r3, 2
	add.s r4, r11, r3
	loads.w r9, 0(r4)
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	and r12, r9, r5
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	setlt.u r4, r7, r12
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r4, zero, .LBB0_48
# %bb.47:                               # %scalar.ph99
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r9, 0
	.loc	1 183 19 is_stmt 1              # parallel-rne.mlir:183:19
	setlt.u r12, r18, r12
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r12, zero, .LBB0_45
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r9, r4
	.loc	1 183 19 is_stmt 1              # parallel-rne.mlir:183:19
	setlt.u r12, r18, r12
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r12, zero, .LBB0_45
.LBB0_49:                               # %scalar.ph99
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r6
	and r4, r4, r8
	j .LBB0_45
.LBB0_50:                               # %vector.body101
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 171 11 is_stmt 1              # parallel-rne.mlir:171:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 186 13                        # parallel-rne.mlir:186:13
	add.s r4, r10, r19
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	seteq.d r3, r[1:2], r[16:17]
	.loc	1 186 13                        # parallel-rne.mlir:186:13
	stores.w r13, 12(r4)
	stores.w r28, 8(r4)
	stores.w r12, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	bneq r3, zero, .LBB0_43
.LBB0_51:                               # %vector.body101
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.ul r[3:4], r[1:2], r[21:22]
	slli r19, r3, 2
	add.s r20, r11, r19
	loads.w r14, 12(r20)
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	and r9, r14, r5
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	setlt.u r3, r7, r9
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r3, zero, .LBB0_53
# %bb.52:                               # %vector.body101
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_51 Depth=3
	lui r3, 1024
	or r13, r14, r3
.LBB0_54:                               # %vector.body101
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r15, 8(r20)
	and r3, r15, r5
	setlt.u r4, r7, r3
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r4, zero, .LBB0_56
# %bb.55:                               # %vector.body101
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r15, 0
	j .LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_51 Depth=3
	lui r4, 1024
	or r28, r15, r4
.LBB0_57:                               # %vector.body101
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r4, 4(r20)
	and r26, r4, r5
	setlt.u r12, r7, r26
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r12, zero, .LBB0_59
# %bb.58:                               # %vector.body101
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_51 Depth=3
	lui r12, 1024
	or r12, r4, r12
.LBB0_60:                               # %vector.body101
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r27, 0(r20)
	and r23, r27, r5
	setlt.u r20, r7, r23
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r20, zero, .LBB0_62
# %bb.61:                               # %vector.body101
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r27, 0
	.loc	1 183 19 is_stmt 1              # parallel-rne.mlir:183:19
	setlt.u r23, r18, r23
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	beq r23, zero, .LBB0_63
	j .LBB0_64
.LBB0_62:                               #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r27, r20
	.loc	1 183 19 is_stmt 1              # parallel-rne.mlir:183:19
	setlt.u r23, r18, r23
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r23, zero, .LBB0_64
.LBB0_63:                               # %vector.body101
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r27, 16
	andi r20, r20, 1
	add.s r20, r27, r20
	add.s r20, r20, r6
	and r20, r20, r8
.LBB0_64:                               # %vector.body101
                                        #   in Loop: Header=BB0_51 Depth=3
	setlt.u r23, r18, r26
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	beq r23, zero, .LBB0_67
# %bb.65:                               # %vector.body101
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r18, r3
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	beq r3, zero, .LBB0_68
.LBB0_66:                               # %vector.body101
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r18, r9
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r3, zero, .LBB0_50
	j .LBB0_69
.LBB0_67:                               # %vector.body101
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r8
	setlt.u r3, r18, r3
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r3, zero, .LBB0_66
.LBB0_68:                               # %vector.body101
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r15, 16
	andi r3, r3, 1
	add.s r3, r15, r3
	add.s r3, r3, r6
	and r28, r3, r8
	setlt.u r3, r18, r9
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r3, zero, .LBB0_50
.LBB0_69:                               # %vector.body101
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r14, 16
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r6
	and r13, r3, r8
	j .LBB0_50
.LBB0_70:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_72
.LBB0_71:                               # %middle.block123
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[3:4], -336(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 142 9 is_stmt 1               # parallel-rne.mlir:142:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	addli r4, zero, 7
	beq r1, zero, .LBB0_98
.LBB0_72:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_79 Depth 3
                                        #       Child Loop BB0_74 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[2:3], -336(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[2:3], r4
	zext_int2long r[1:2], zero
	.loc	1 143 11 is_stmt 1              # parallel-rne.mlir:143:11
	beq r10, r11, .LBB0_74
	j .LBB0_79
.LBB0_73:                               # %scalar.ph117
                                        #   in Loop: Header=BB0_74 Depth=3
	setlt.ul r9, r[1:2], r[24:25]
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	add.s r3, r10, r3
	.loc	1 143 11                        # parallel-rne.mlir:143:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	stores.w r4, 0(r3)
	.loc	1 143 11                        # parallel-rne.mlir:143:11
	beq r9, zero, .LBB0_71
.LBB0_74:                               # %scalar.ph117
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 144 19                        # parallel-rne.mlir:144:19
	add.ul r[3:4], r[1:2], r[21:22]
	slli r3, r3, 2
	add.s r4, r11, r3
	loads.w r9, 0(r4)
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	and r12, r9, r5
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	setlt.u r4, r7, r12
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r4, zero, .LBB0_76
# %bb.75:                               # %scalar.ph117
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r9, 0
	.loc	1 155 19 is_stmt 1              # parallel-rne.mlir:155:19
	setlt.u r12, r18, r12
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r12, zero, .LBB0_73
	j .LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r9, r4
	.loc	1 155 19 is_stmt 1              # parallel-rne.mlir:155:19
	setlt.u r12, r18, r12
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r12, zero, .LBB0_73
.LBB0_77:                               # %scalar.ph117
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r6
	and r4, r4, r8
	j .LBB0_73
.LBB0_78:                               # %vector.body119
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 143 11 is_stmt 1              # parallel-rne.mlir:143:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	add.s r9, r10, r19
	.loc	1 143 11                        # parallel-rne.mlir:143:11
	seteq.d r3, r[1:2], r[16:17]
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	stores.w r13, 12(r9)
	stores.w r15, 8(r9)
	stores.w r4, 4(r9)
	stores.w r20, 0(r9)
	.loc	1 143 11                        # parallel-rne.mlir:143:11
	bneq r3, zero, .LBB0_71
.LBB0_79:                               # %vector.body119
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 144 19                        # parallel-rne.mlir:144:19
	add.ul r[3:4], r[1:2], r[21:22]
	slli r19, r3, 2
	add.s r20, r11, r19
	loads.w r14, 12(r20)
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	and r9, r14, r5
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	setlt.u r3, r7, r9
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r3, zero, .LBB0_81
# %bb.80:                               # %vector.body119
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_82
.LBB0_81:                               #   in Loop: Header=BB0_79 Depth=3
	lui r3, 1024
	or r13, r14, r3
.LBB0_82:                               # %vector.body119
                                        #   in Loop: Header=BB0_79 Depth=3
	loads.w r28, 8(r20)
	and r3, r28, r5
	setlt.u r4, r7, r3
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r4, zero, .LBB0_84
# %bb.83:                               # %vector.body119
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r28, 0
	j .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_79 Depth=3
	lui r4, 1024
	or r15, r28, r4
.LBB0_85:                               # %vector.body119
                                        #   in Loop: Header=BB0_79 Depth=3
	loads.w r12, 4(r20)
	and r26, r12, r5
	setlt.u r4, r7, r26
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r4, zero, .LBB0_87
# %bb.86:                               # %vector.body119
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r12, 0
	j .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_79 Depth=3
	lui r4, 1024
	or r4, r12, r4
.LBB0_88:                               # %vector.body119
                                        #   in Loop: Header=BB0_79 Depth=3
	loads.w r27, 0(r20)
	and r23, r27, r5
	setlt.u r20, r7, r23
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r20, zero, .LBB0_90
# %bb.89:                               # %vector.body119
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r27, 0
	.loc	1 155 19 is_stmt 1              # parallel-rne.mlir:155:19
	setlt.u r23, r18, r23
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	beq r23, zero, .LBB0_91
	j .LBB0_92
.LBB0_90:                               #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r27, r20
	.loc	1 155 19 is_stmt 1              # parallel-rne.mlir:155:19
	setlt.u r23, r18, r23
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r23, zero, .LBB0_92
.LBB0_91:                               # %vector.body119
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r27, 16
	andi r20, r20, 1
	add.s r20, r27, r20
	add.s r20, r20, r6
	and r20, r20, r8
.LBB0_92:                               # %vector.body119
                                        #   in Loop: Header=BB0_79 Depth=3
	setlt.u r23, r18, r26
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	beq r23, zero, .LBB0_95
# %bb.93:                               # %vector.body119
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r18, r3
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	beq r3, zero, .LBB0_96
.LBB0_94:                               # %vector.body119
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r18, r9
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r3, zero, .LBB0_78
	j .LBB0_97
.LBB0_95:                               # %vector.body119
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r6
	and r4, r4, r8
	setlt.u r3, r18, r3
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r3, zero, .LBB0_94
.LBB0_96:                               # %vector.body119
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r28, 16
	andi r3, r3, 1
	add.s r3, r28, r3
	add.s r3, r3, r6
	and r15, r3, r8
	setlt.u r3, r18, r9
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r3, zero, .LBB0_78
.LBB0_97:                               # %vector.body119
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r14, 16
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r6
	and r13, r3, r8
	j .LBB0_78
.LBB0_98:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r20
	addli r15, zero, 128
	addli r21, zero, 4
	loadli.w r22,  -352(r30)                # 4-byte Folded Reload
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	addli r1, zero, 2
	bneq r20, r1, .LBB0_41
.LBB0_99:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 191 7 is_stmt 1               # parallel-rne.mlir:191:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_101
.LBB0_100:                              # %middle.block114
                                        #   in Loop: Header=BB0_101 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[3:4], -336(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 198 9 is_stmt 1               # parallel-rne.mlir:198:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	addli r4, zero, 7
	beq r1, zero, .LBB0_127
.LBB0_101:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_108 Depth 3
                                        #       Child Loop BB0_103 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[2:3], -336(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[2:3], r4
	zext_int2long r[1:2], zero
	.loc	1 199 11 is_stmt 1              # parallel-rne.mlir:199:11
	beq r10, r11, .LBB0_103
	j .LBB0_108
.LBB0_102:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_103 Depth=3
	setlt.ul r9, r[1:2], r[24:25]
	.loc	1 214 13                        # parallel-rne.mlir:214:13
	add.s r3, r10, r3
	.loc	1 199 11                        # parallel-rne.mlir:199:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 214 13                        # parallel-rne.mlir:214:13
	stores.w r4, 0(r3)
	.loc	1 199 11                        # parallel-rne.mlir:199:11
	beq r9, zero, .LBB0_100
.LBB0_103:                              # %scalar.ph108
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_101 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	add.ul r[3:4], r[1:2], r[21:22]
	slli r3, r3, 2
	add.s r4, r11, r3
	loads.w r9, 0(r4)
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	and r12, r9, r5
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	setlt.u r4, r7, r12
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r4, zero, .LBB0_105
# %bb.104:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r9, 0
	.loc	1 211 19 is_stmt 1              # parallel-rne.mlir:211:19
	setlt.u r12, r18, r12
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r12, zero, .LBB0_102
	j .LBB0_106
.LBB0_105:                              #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r9, r4
	.loc	1 211 19 is_stmt 1              # parallel-rne.mlir:211:19
	setlt.u r12, r18, r12
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r12, zero, .LBB0_102
.LBB0_106:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r6
	and r4, r4, r8
	j .LBB0_102
.LBB0_107:                              # %vector.body110
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 199 11 is_stmt 1              # parallel-rne.mlir:199:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 214 13                        # parallel-rne.mlir:214:13
	add.s r4, r10, r19
	.loc	1 199 11                        # parallel-rne.mlir:199:11
	seteq.d r3, r[1:2], r[16:17]
	.loc	1 214 13                        # parallel-rne.mlir:214:13
	stores.w r13, 12(r4)
	stores.w r28, 8(r4)
	stores.w r12, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 199 11                        # parallel-rne.mlir:199:11
	bneq r3, zero, .LBB0_100
.LBB0_108:                              # %vector.body110
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_101 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	add.ul r[3:4], r[1:2], r[21:22]
	slli r19, r3, 2
	add.s r20, r11, r19
	loads.w r14, 12(r20)
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	and r9, r14, r5
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	setlt.u r3, r7, r9
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r3, zero, .LBB0_110
# %bb.109:                              # %vector.body110
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_108 Depth=3
	lui r3, 1024
	or r13, r14, r3
.LBB0_111:                              # %vector.body110
                                        #   in Loop: Header=BB0_108 Depth=3
	loads.w r15, 8(r20)
	and r3, r15, r5
	setlt.u r4, r7, r3
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r4, zero, .LBB0_113
# %bb.112:                              # %vector.body110
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r15, 0
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_108 Depth=3
	lui r4, 1024
	or r28, r15, r4
.LBB0_114:                              # %vector.body110
                                        #   in Loop: Header=BB0_108 Depth=3
	loads.w r4, 4(r20)
	and r26, r4, r5
	setlt.u r12, r7, r26
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r12, zero, .LBB0_116
# %bb.115:                              # %vector.body110
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_108 Depth=3
	lui r12, 1024
	or r12, r4, r12
.LBB0_117:                              # %vector.body110
                                        #   in Loop: Header=BB0_108 Depth=3
	loads.w r27, 0(r20)
	and r23, r27, r5
	setlt.u r20, r7, r23
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r20, zero, .LBB0_119
# %bb.118:                              # %vector.body110
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r27, 0
	.loc	1 211 19 is_stmt 1              # parallel-rne.mlir:211:19
	setlt.u r23, r18, r23
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	beq r23, zero, .LBB0_120
	j .LBB0_121
.LBB0_119:                              #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r27, r20
	.loc	1 211 19 is_stmt 1              # parallel-rne.mlir:211:19
	setlt.u r23, r18, r23
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r23, zero, .LBB0_121
.LBB0_120:                              # %vector.body110
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r27, 16
	andi r20, r20, 1
	add.s r20, r27, r20
	add.s r20, r20, r6
	and r20, r20, r8
.LBB0_121:                              # %vector.body110
                                        #   in Loop: Header=BB0_108 Depth=3
	setlt.u r23, r18, r26
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	beq r23, zero, .LBB0_124
# %bb.122:                              # %vector.body110
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r18, r3
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	beq r3, zero, .LBB0_125
.LBB0_123:                              # %vector.body110
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r18, r9
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r3, zero, .LBB0_107
	j .LBB0_126
.LBB0_124:                              # %vector.body110
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r8
	setlt.u r3, r18, r3
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r3, zero, .LBB0_123
.LBB0_125:                              # %vector.body110
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r15, 16
	andi r3, r3, 1
	add.s r3, r15, r3
	add.s r3, r3, r6
	and r28, r3, r8
	setlt.u r3, r18, r9
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r3, zero, .LBB0_107
.LBB0_126:                              # %vector.body110
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r14, 16
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r6
	and r13, r3, r8
	j .LBB0_107
.LBB0_127:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	mfence { sm }
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r20
	addli r15, zero, 128
	addli r21, zero, 4
	loadli.w r22,  -352(r30)                # 4-byte Folded Reload
.LBB0_128:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 219 7                         # parallel-rne.mlir:219:7
	loadli.w r1,  -356(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_161
# %bb.129:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 247 7                         # parallel-rne.mlir:247:7
	beq r20, r21, .LBB0_190
.LBB0_130:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 275 7                         # parallel-rne.mlir:275:7
	beq r20, r4, .LBB0_219
.LBB0_131:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 6
	beq r20, r1, .LBB0_247
# %bb.132:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 5
	bneq r20, r1, .LBB0_276
# %bb.133:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 80
	.loc	1 275 7                         # parallel-rne.mlir:275:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_135
.LBB0_134:                              # %middle.block
                                        #   in Loop: Header=BB0_135 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 95
	load.d r[3:4], -336(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 282 9 is_stmt 1               # parallel-rne.mlir:282:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	addli r4, zero, 7
	beq r1, zero, .LBB0_275
.LBB0_135:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_142 Depth 3
                                        #       Child Loop BB0_137 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[2:3], -336(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[2:3], r4
	zext_int2long r[1:2], zero
	.loc	1 283 11 is_stmt 1              # parallel-rne.mlir:283:11
	beq r10, r11, .LBB0_137
	j .LBB0_142
.LBB0_136:                              # %scalar.ph
                                        #   in Loop: Header=BB0_137 Depth=3
	setlt.ul r9, r[1:2], r[24:25]
	.loc	1 298 13                        # parallel-rne.mlir:298:13
	add.s r3, r10, r3
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 298 13                        # parallel-rne.mlir:298:13
	stores.w r4, 0(r3)
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	beq r9, zero, .LBB0_134
.LBB0_137:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_135 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	add.ul r[3:4], r[1:2], r[21:22]
	slli r3, r3, 2
	add.s r4, r11, r3
	loads.w r9, 0(r4)
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	and r12, r9, r5
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	setlt.u r4, r7, r12
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r4, zero, .LBB0_139
# %bb.138:                              # %scalar.ph
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r9, 0
	.loc	1 295 19 is_stmt 1              # parallel-rne.mlir:295:19
	setlt.u r12, r18, r12
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r12, zero, .LBB0_136
	j .LBB0_140
.LBB0_139:                              #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r9, r4
	.loc	1 295 19 is_stmt 1              # parallel-rne.mlir:295:19
	setlt.u r12, r18, r12
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r12, zero, .LBB0_136
.LBB0_140:                              # %scalar.ph
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r6
	and r4, r4, r8
	j .LBB0_136
.LBB0_141:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 283 11 is_stmt 1              # parallel-rne.mlir:283:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 298 13                        # parallel-rne.mlir:298:13
	add.s r4, r10, r19
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	seteq.d r3, r[1:2], r[16:17]
	.loc	1 298 13                        # parallel-rne.mlir:298:13
	stores.w r13, 12(r4)
	stores.w r28, 8(r4)
	stores.w r12, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	bneq r3, zero, .LBB0_134
.LBB0_142:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_135 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	add.ul r[3:4], r[1:2], r[21:22]
	slli r19, r3, 2
	add.s r20, r11, r19
	loads.w r14, 12(r20)
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	and r9, r14, r5
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	setlt.u r3, r7, r9
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r3, zero, .LBB0_144
# %bb.143:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_145
.LBB0_144:                              #   in Loop: Header=BB0_142 Depth=3
	lui r3, 1024
	or r13, r14, r3
.LBB0_145:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	loads.w r15, 8(r20)
	and r3, r15, r5
	setlt.u r4, r7, r3
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r4, zero, .LBB0_147
# %bb.146:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r15, 0
	j .LBB0_148
.LBB0_147:                              #   in Loop: Header=BB0_142 Depth=3
	lui r4, 1024
	or r28, r15, r4
.LBB0_148:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	loads.w r4, 4(r20)
	and r26, r4, r5
	setlt.u r12, r7, r26
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r12, zero, .LBB0_150
# %bb.149:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_142 Depth=3
	lui r12, 1024
	or r12, r4, r12
.LBB0_151:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	loads.w r27, 0(r20)
	and r23, r27, r5
	setlt.u r20, r7, r23
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r20, zero, .LBB0_157
# %bb.152:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r27, 0
	.loc	1 295 19 is_stmt 1              # parallel-rne.mlir:295:19
	setlt.u r23, r18, r23
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r23, zero, .LBB0_154
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r27, 16
	andi r20, r20, 1
	add.s r20, r27, r20
	add.s r20, r20, r6
	and r20, r20, r8
.LBB0_154:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	setlt.u r23, r18, r26
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	beq r23, zero, .LBB0_158
# %bb.155:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r18, r3
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	beq r3, zero, .LBB0_159
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r18, r9
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r3, zero, .LBB0_141
	j .LBB0_160
.LBB0_157:                              #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r27, r20
	.loc	1 295 19 is_stmt 1              # parallel-rne.mlir:295:19
	setlt.u r23, r18, r23
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	beq r23, zero, .LBB0_153
	j .LBB0_154
.LBB0_158:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r8
	setlt.u r3, r18, r3
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r3, zero, .LBB0_156
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r15, 16
	andi r3, r3, 1
	add.s r3, r15, r3
	add.s r3, r3, r6
	and r28, r3, r8
	setlt.u r3, r18, r9
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r3, zero, .LBB0_141
.LBB0_160:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r14, 16
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r6
	and r13, r3, r8
	j .LBB0_141
.LBB0_161:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 48
	.loc	1 219 7 is_stmt 1               # parallel-rne.mlir:219:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_163
.LBB0_162:                              # %middle.block96
                                        #   in Loop: Header=BB0_163 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 63
	load.d r[3:4], -336(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 226 9 is_stmt 1               # parallel-rne.mlir:226:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	addli r4, zero, 7
	beq r1, zero, .LBB0_189
.LBB0_163:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_170 Depth 3
                                        #       Child Loop BB0_165 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[2:3], -336(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[2:3], r4
	zext_int2long r[1:2], zero
	.loc	1 227 11 is_stmt 1              # parallel-rne.mlir:227:11
	beq r10, r11, .LBB0_165
	j .LBB0_170
.LBB0_164:                              # %scalar.ph90
                                        #   in Loop: Header=BB0_165 Depth=3
	setlt.ul r9, r[1:2], r[24:25]
	.loc	1 242 13                        # parallel-rne.mlir:242:13
	add.s r3, r10, r3
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 242 13                        # parallel-rne.mlir:242:13
	stores.w r4, 0(r3)
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	beq r9, zero, .LBB0_162
.LBB0_165:                              # %scalar.ph90
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_163 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	add.ul r[3:4], r[1:2], r[21:22]
	slli r3, r3, 2
	add.s r4, r11, r3
	loads.w r9, 0(r4)
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	and r12, r9, r5
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	setlt.u r4, r7, r12
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r4, zero, .LBB0_167
# %bb.166:                              # %scalar.ph90
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r9, 0
	.loc	1 239 19 is_stmt 1              # parallel-rne.mlir:239:19
	setlt.u r12, r18, r12
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r12, zero, .LBB0_164
	j .LBB0_168
.LBB0_167:                              #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r9, r4
	.loc	1 239 19 is_stmt 1              # parallel-rne.mlir:239:19
	setlt.u r12, r18, r12
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r12, zero, .LBB0_164
.LBB0_168:                              # %scalar.ph90
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r6
	and r4, r4, r8
	j .LBB0_164
.LBB0_169:                              # %vector.body92
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 227 11 is_stmt 1              # parallel-rne.mlir:227:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 242 13                        # parallel-rne.mlir:242:13
	add.s r4, r10, r19
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	seteq.d r3, r[1:2], r[16:17]
	.loc	1 242 13                        # parallel-rne.mlir:242:13
	stores.w r13, 12(r4)
	stores.w r28, 8(r4)
	stores.w r12, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	bneq r3, zero, .LBB0_162
.LBB0_170:                              # %vector.body92
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_163 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	add.ul r[3:4], r[1:2], r[21:22]
	slli r19, r3, 2
	add.s r20, r11, r19
	loads.w r14, 12(r20)
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	and r9, r14, r5
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	setlt.u r3, r7, r9
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r3, zero, .LBB0_172
# %bb.171:                              # %vector.body92
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_173
.LBB0_172:                              #   in Loop: Header=BB0_170 Depth=3
	lui r3, 1024
	or r13, r14, r3
.LBB0_173:                              # %vector.body92
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r15, 8(r20)
	and r3, r15, r5
	setlt.u r4, r7, r3
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r4, zero, .LBB0_175
# %bb.174:                              # %vector.body92
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r15, 0
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_170 Depth=3
	lui r4, 1024
	or r28, r15, r4
.LBB0_176:                              # %vector.body92
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r4, 4(r20)
	and r26, r4, r5
	setlt.u r12, r7, r26
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r12, zero, .LBB0_178
# %bb.177:                              # %vector.body92
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_179
.LBB0_178:                              #   in Loop: Header=BB0_170 Depth=3
	lui r12, 1024
	or r12, r4, r12
.LBB0_179:                              # %vector.body92
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r27, 0(r20)
	and r23, r27, r5
	setlt.u r20, r7, r23
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r20, zero, .LBB0_185
# %bb.180:                              # %vector.body92
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r27, 0
	.loc	1 239 19 is_stmt 1              # parallel-rne.mlir:239:19
	setlt.u r23, r18, r23
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r23, zero, .LBB0_182
.LBB0_181:                              # %vector.body92
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r27, 16
	andi r20, r20, 1
	add.s r20, r27, r20
	add.s r20, r20, r6
	and r20, r20, r8
.LBB0_182:                              # %vector.body92
                                        #   in Loop: Header=BB0_170 Depth=3
	setlt.u r23, r18, r26
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	beq r23, zero, .LBB0_186
# %bb.183:                              # %vector.body92
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r18, r3
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	beq r3, zero, .LBB0_187
.LBB0_184:                              # %vector.body92
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r18, r9
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r3, zero, .LBB0_169
	j .LBB0_188
.LBB0_185:                              #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r27, r20
	.loc	1 239 19 is_stmt 1              # parallel-rne.mlir:239:19
	setlt.u r23, r18, r23
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	beq r23, zero, .LBB0_181
	j .LBB0_182
.LBB0_186:                              # %vector.body92
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r8
	setlt.u r3, r18, r3
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r3, zero, .LBB0_184
.LBB0_187:                              # %vector.body92
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r15, 16
	andi r3, r3, 1
	add.s r3, r15, r3
	add.s r3, r3, r6
	and r28, r3, r8
	setlt.u r3, r18, r9
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r3, zero, .LBB0_169
.LBB0_188:                              # %vector.body92
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r14, 16
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r6
	and r13, r3, r8
	j .LBB0_169
.LBB0_189:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 219 7 is_stmt 1               # parallel-rne.mlir:219:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r20
	addli r15, zero, 128
	addli r21, zero, 4
	loadli.w r22,  -352(r30)                # 4-byte Folded Reload
	.loc	1 247 7                         # parallel-rne.mlir:247:7
	bneq r20, r21, .LBB0_130
.LBB0_190:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 64
	.loc	1 247 7                         # parallel-rne.mlir:247:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_192
.LBB0_191:                              # %middle.block87
                                        #   in Loop: Header=BB0_192 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 79
	load.d r[3:4], -336(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 254 9 is_stmt 1               # parallel-rne.mlir:254:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	addli r4, zero, 7
	beq r1, zero, .LBB0_218
.LBB0_192:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_199 Depth 3
                                        #       Child Loop BB0_194 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[2:3], -336(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[2:3], r4
	zext_int2long r[1:2], zero
	.loc	1 255 11 is_stmt 1              # parallel-rne.mlir:255:11
	beq r10, r11, .LBB0_194
	j .LBB0_199
.LBB0_193:                              # %scalar.ph81
                                        #   in Loop: Header=BB0_194 Depth=3
	setlt.ul r9, r[1:2], r[24:25]
	.loc	1 270 13                        # parallel-rne.mlir:270:13
	add.s r3, r10, r3
	.loc	1 255 11                        # parallel-rne.mlir:255:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 270 13                        # parallel-rne.mlir:270:13
	stores.w r4, 0(r3)
	.loc	1 255 11                        # parallel-rne.mlir:255:11
	beq r9, zero, .LBB0_191
.LBB0_194:                              # %scalar.ph81
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_192 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	add.ul r[3:4], r[1:2], r[21:22]
	slli r3, r3, 2
	add.s r4, r11, r3
	loads.w r9, 0(r4)
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	and r12, r9, r5
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	setlt.u r4, r7, r12
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r4, zero, .LBB0_196
# %bb.195:                              # %scalar.ph81
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r9, 0
	.loc	1 267 19 is_stmt 1              # parallel-rne.mlir:267:19
	setlt.u r12, r18, r12
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r12, zero, .LBB0_193
	j .LBB0_197
.LBB0_196:                              #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r9, r4
	.loc	1 267 19 is_stmt 1              # parallel-rne.mlir:267:19
	setlt.u r12, r18, r12
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r12, zero, .LBB0_193
.LBB0_197:                              # %scalar.ph81
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r6
	and r4, r4, r8
	j .LBB0_193
.LBB0_198:                              # %vector.body83
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 255 11 is_stmt 1              # parallel-rne.mlir:255:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 270 13                        # parallel-rne.mlir:270:13
	add.s r4, r10, r19
	.loc	1 255 11                        # parallel-rne.mlir:255:11
	seteq.d r3, r[1:2], r[16:17]
	.loc	1 270 13                        # parallel-rne.mlir:270:13
	stores.w r13, 12(r4)
	stores.w r28, 8(r4)
	stores.w r12, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 255 11                        # parallel-rne.mlir:255:11
	bneq r3, zero, .LBB0_191
.LBB0_199:                              # %vector.body83
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_192 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	add.ul r[3:4], r[1:2], r[21:22]
	slli r19, r3, 2
	add.s r20, r11, r19
	loads.w r14, 12(r20)
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	and r9, r14, r5
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	setlt.u r3, r7, r9
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r3, zero, .LBB0_201
# %bb.200:                              # %vector.body83
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_202
.LBB0_201:                              #   in Loop: Header=BB0_199 Depth=3
	lui r3, 1024
	or r13, r14, r3
.LBB0_202:                              # %vector.body83
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r15, 8(r20)
	and r3, r15, r5
	setlt.u r4, r7, r3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r4, zero, .LBB0_204
# %bb.203:                              # %vector.body83
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r15, 0
	j .LBB0_205
.LBB0_204:                              #   in Loop: Header=BB0_199 Depth=3
	lui r4, 1024
	or r28, r15, r4
.LBB0_205:                              # %vector.body83
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r4, 4(r20)
	and r26, r4, r5
	setlt.u r12, r7, r26
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r12, zero, .LBB0_207
# %bb.206:                              # %vector.body83
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_199 Depth=3
	lui r12, 1024
	or r12, r4, r12
.LBB0_208:                              # %vector.body83
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r27, 0(r20)
	and r23, r27, r5
	setlt.u r20, r7, r23
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r20, zero, .LBB0_214
# %bb.209:                              # %vector.body83
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r27, 0
	.loc	1 267 19 is_stmt 1              # parallel-rne.mlir:267:19
	setlt.u r23, r18, r23
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r23, zero, .LBB0_211
.LBB0_210:                              # %vector.body83
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r27, 16
	andi r20, r20, 1
	add.s r20, r27, r20
	add.s r20, r20, r6
	and r20, r20, r8
.LBB0_211:                              # %vector.body83
                                        #   in Loop: Header=BB0_199 Depth=3
	setlt.u r23, r18, r26
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	beq r23, zero, .LBB0_215
# %bb.212:                              # %vector.body83
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r18, r3
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	beq r3, zero, .LBB0_216
.LBB0_213:                              # %vector.body83
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r18, r9
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r3, zero, .LBB0_198
	j .LBB0_217
.LBB0_214:                              #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r27, r20
	.loc	1 267 19 is_stmt 1              # parallel-rne.mlir:267:19
	setlt.u r23, r18, r23
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	beq r23, zero, .LBB0_210
	j .LBB0_211
.LBB0_215:                              # %vector.body83
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r8
	setlt.u r3, r18, r3
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r3, zero, .LBB0_213
.LBB0_216:                              # %vector.body83
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r15, 16
	andi r3, r3, 1
	add.s r3, r15, r3
	add.s r3, r3, r6
	and r28, r3, r8
	setlt.u r3, r18, r9
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r3, zero, .LBB0_198
.LBB0_217:                              # %vector.body83
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r14, 16
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r6
	and r13, r3, r8
	j .LBB0_198
.LBB0_218:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 247 7 is_stmt 1               # parallel-rne.mlir:247:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r20
	addli r15, zero, 128
	addli r21, zero, 4
	loadli.w r22,  -352(r30)                # 4-byte Folded Reload
	.loc	1 275 7                         # parallel-rne.mlir:275:7
	bneq r20, r4, .LBB0_131
.LBB0_219:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 112
	.loc	1 331 7 is_stmt 1               # parallel-rne.mlir:331:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_221
.LBB0_220:                              # %middle.block78
                                        #   in Loop: Header=BB0_221 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[2:3], -336(r30)                # 8-byte Folded Reload
	addli r4, zero, 7
	.loc	1 338 9 is_stmt 1               # parallel-rne.mlir:338:9
	setlt.ul r1, r[2:3], r[24:25]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_275
.LBB0_221:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_228 Depth 3
                                        #       Child Loop BB0_223 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[2:3], -336(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[2:3], r4
	zext_int2long r[1:2], zero
	.loc	1 339 11 is_stmt 1              # parallel-rne.mlir:339:11
	beq r10, r11, .LBB0_223
	j .LBB0_228
.LBB0_222:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_223 Depth=3
	setlt.ul r9, r[1:2], r[24:25]
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	add.s r3, r10, r3
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	stores.w r4, 0(r3)
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	beq r9, zero, .LBB0_220
.LBB0_223:                              # %scalar.ph72
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_221 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	add.ul r[3:4], r[1:2], r[21:22]
	slli r3, r3, 2
	add.s r4, r11, r3
	loads.w r9, 0(r4)
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	and r12, r9, r5
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	setlt.u r4, r7, r12
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r4, zero, .LBB0_225
# %bb.224:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r9, 0
	.loc	1 351 19 is_stmt 1              # parallel-rne.mlir:351:19
	setlt.u r12, r18, r12
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r12, zero, .LBB0_222
	j .LBB0_226
.LBB0_225:                              #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r9, r4
	.loc	1 351 19 is_stmt 1              # parallel-rne.mlir:351:19
	setlt.u r12, r18, r12
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r12, zero, .LBB0_222
.LBB0_226:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r6
	and r4, r4, r8
	j .LBB0_222
.LBB0_227:                              # %vector.body74
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 339 11 is_stmt 1              # parallel-rne.mlir:339:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	add.s r4, r10, r19
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	seteq.d r3, r[1:2], r[16:17]
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	stores.w r13, 12(r4)
	stores.w r28, 8(r4)
	stores.w r12, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	bneq r3, zero, .LBB0_220
.LBB0_228:                              # %vector.body74
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_221 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	add.ul r[3:4], r[1:2], r[21:22]
	slli r19, r3, 2
	add.s r20, r11, r19
	loads.w r14, 12(r20)
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	and r9, r14, r5
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	setlt.u r3, r7, r9
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r3, zero, .LBB0_230
# %bb.229:                              # %vector.body74
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_231
.LBB0_230:                              #   in Loop: Header=BB0_228 Depth=3
	lui r3, 1024
	or r13, r14, r3
.LBB0_231:                              # %vector.body74
                                        #   in Loop: Header=BB0_228 Depth=3
	loads.w r15, 8(r20)
	and r3, r15, r5
	setlt.u r4, r7, r3
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r4, zero, .LBB0_233
# %bb.232:                              # %vector.body74
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r15, 0
	j .LBB0_234
.LBB0_233:                              #   in Loop: Header=BB0_228 Depth=3
	lui r4, 1024
	or r28, r15, r4
.LBB0_234:                              # %vector.body74
                                        #   in Loop: Header=BB0_228 Depth=3
	loads.w r4, 4(r20)
	and r26, r4, r5
	setlt.u r12, r7, r26
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r12, zero, .LBB0_236
# %bb.235:                              # %vector.body74
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_237
.LBB0_236:                              #   in Loop: Header=BB0_228 Depth=3
	lui r12, 1024
	or r12, r4, r12
.LBB0_237:                              # %vector.body74
                                        #   in Loop: Header=BB0_228 Depth=3
	loads.w r27, 0(r20)
	and r23, r27, r5
	setlt.u r20, r7, r23
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r20, zero, .LBB0_239
# %bb.238:                              # %vector.body74
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r27, 0
	.loc	1 351 19 is_stmt 1              # parallel-rne.mlir:351:19
	setlt.u r23, r18, r23
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r23, zero, .LBB0_240
	j .LBB0_241
.LBB0_239:                              #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r27, r20
	.loc	1 351 19 is_stmt 1              # parallel-rne.mlir:351:19
	setlt.u r23, r18, r23
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r23, zero, .LBB0_241
.LBB0_240:                              # %vector.body74
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r27, 16
	andi r20, r20, 1
	add.s r20, r27, r20
	add.s r20, r20, r6
	and r20, r20, r8
.LBB0_241:                              # %vector.body74
                                        #   in Loop: Header=BB0_228 Depth=3
	setlt.u r23, r18, r26
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r23, zero, .LBB0_244
# %bb.242:                              # %vector.body74
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r18, r3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r3, zero, .LBB0_245
.LBB0_243:                              # %vector.body74
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r18, r9
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r3, zero, .LBB0_227
	j .LBB0_246
.LBB0_244:                              # %vector.body74
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r8
	setlt.u r3, r18, r3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r3, zero, .LBB0_243
.LBB0_245:                              # %vector.body74
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r15, 16
	andi r3, r3, 1
	add.s r3, r15, r3
	add.s r3, r3, r6
	and r28, r3, r8
	setlt.u r3, r18, r9
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r3, zero, .LBB0_227
.LBB0_246:                              # %vector.body74
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r14, 16
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r6
	and r13, r3, r8
	j .LBB0_227
.LBB0_247:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 96
	.loc	1 303 7 is_stmt 1               # parallel-rne.mlir:303:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_249
.LBB0_248:                              # %middle.block69
                                        #   in Loop: Header=BB0_249 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 111
	load.d r[3:4], -336(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 310 9 is_stmt 1               # parallel-rne.mlir:310:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	addli r4, zero, 7
	beq r1, zero, .LBB0_275
.LBB0_249:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_256 Depth 3
                                        #       Child Loop BB0_251 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[2:3], -336(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[2:3], r4
	zext_int2long r[1:2], zero
	.loc	1 311 11 is_stmt 1              # parallel-rne.mlir:311:11
	beq r10, r11, .LBB0_251
	j .LBB0_256
.LBB0_250:                              # %scalar.ph63
                                        #   in Loop: Header=BB0_251 Depth=3
	setlt.ul r9, r[1:2], r[24:25]
	.loc	1 326 13                        # parallel-rne.mlir:326:13
	add.s r3, r10, r3
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 326 13                        # parallel-rne.mlir:326:13
	stores.w r4, 0(r3)
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	beq r9, zero, .LBB0_248
.LBB0_251:                              # %scalar.ph63
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_249 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	add.ul r[3:4], r[1:2], r[21:22]
	slli r3, r3, 2
	add.s r4, r11, r3
	loads.w r9, 0(r4)
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	and r12, r9, r5
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	setlt.u r4, r7, r12
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r4, zero, .LBB0_253
# %bb.252:                              # %scalar.ph63
                                        #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r9, 0
	.loc	1 323 19 is_stmt 1              # parallel-rne.mlir:323:19
	setlt.u r12, r18, r12
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r12, zero, .LBB0_250
	j .LBB0_254
.LBB0_253:                              #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r9, r4
	.loc	1 323 19 is_stmt 1              # parallel-rne.mlir:323:19
	setlt.u r12, r18, r12
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r12, zero, .LBB0_250
.LBB0_254:                              # %scalar.ph63
                                        #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r6
	and r4, r4, r8
	j .LBB0_250
.LBB0_255:                              # %vector.body65
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 311 11 is_stmt 1              # parallel-rne.mlir:311:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 326 13                        # parallel-rne.mlir:326:13
	add.s r4, r10, r19
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	seteq.d r3, r[1:2], r[16:17]
	.loc	1 326 13                        # parallel-rne.mlir:326:13
	stores.w r13, 12(r4)
	stores.w r28, 8(r4)
	stores.w r12, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	bneq r3, zero, .LBB0_248
.LBB0_256:                              # %vector.body65
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_249 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	add.ul r[3:4], r[1:2], r[21:22]
	slli r19, r3, 2
	add.s r20, r11, r19
	loads.w r14, 12(r20)
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	and r9, r14, r5
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	setlt.u r3, r7, r9
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r3, zero, .LBB0_258
# %bb.257:                              # %vector.body65
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_259
.LBB0_258:                              #   in Loop: Header=BB0_256 Depth=3
	lui r3, 1024
	or r13, r14, r3
.LBB0_259:                              # %vector.body65
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r15, 8(r20)
	and r3, r15, r5
	setlt.u r4, r7, r3
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r4, zero, .LBB0_261
# %bb.260:                              # %vector.body65
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r15, 0
	j .LBB0_262
.LBB0_261:                              #   in Loop: Header=BB0_256 Depth=3
	lui r4, 1024
	or r28, r15, r4
.LBB0_262:                              # %vector.body65
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r4, 4(r20)
	and r26, r4, r5
	setlt.u r12, r7, r26
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r12, zero, .LBB0_264
# %bb.263:                              # %vector.body65
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_265
.LBB0_264:                              #   in Loop: Header=BB0_256 Depth=3
	lui r12, 1024
	or r12, r4, r12
.LBB0_265:                              # %vector.body65
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r27, 0(r20)
	and r23, r27, r5
	setlt.u r20, r7, r23
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r20, zero, .LBB0_267
# %bb.266:                              # %vector.body65
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r27, 0
	.loc	1 323 19 is_stmt 1              # parallel-rne.mlir:323:19
	setlt.u r23, r18, r23
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	beq r23, zero, .LBB0_268
	j .LBB0_269
.LBB0_267:                              #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r27, r20
	.loc	1 323 19 is_stmt 1              # parallel-rne.mlir:323:19
	setlt.u r23, r18, r23
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r23, zero, .LBB0_269
.LBB0_268:                              # %vector.body65
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r27, 16
	andi r20, r20, 1
	add.s r20, r27, r20
	add.s r20, r20, r6
	and r20, r20, r8
.LBB0_269:                              # %vector.body65
                                        #   in Loop: Header=BB0_256 Depth=3
	setlt.u r23, r18, r26
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	beq r23, zero, .LBB0_272
# %bb.270:                              # %vector.body65
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r18, r3
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	beq r3, zero, .LBB0_273
.LBB0_271:                              # %vector.body65
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r18, r9
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r3, zero, .LBB0_255
	j .LBB0_274
.LBB0_272:                              # %vector.body65
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r8
	setlt.u r3, r18, r3
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r3, zero, .LBB0_271
.LBB0_273:                              # %vector.body65
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r15, 16
	andi r3, r3, 1
	add.s r3, r15, r3
	add.s r3, r3, r6
	and r28, r3, r8
	setlt.u r3, r18, r9
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r3, zero, .LBB0_255
.LBB0_274:                              # %vector.body65
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r14, 16
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r6
	and r13, r3, r8
	j .LBB0_255
.LBB0_275:                              # %.sink.split54
                                        #   in Loop: Header=BB0_8 Depth=1
	mfence { sm }
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r20
	addli r15, zero, 128
	addli r21, zero, 4
	loadli.w r22,  -352(r30)                # 4-byte Folded Reload
.LBB0_276:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 359 7                         # parallel-rne.mlir:359:7
	addli r1, zero, 255
	addli r19, zero, 7
	csr_set csr5, r1
	sync_core
	.loc	1 360 7                         # parallel-rne.mlir:360:7
	loadli.w r1,  -356(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.277:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r23, zero, 64
	.loc	1 377 7 is_stmt 1               # parallel-rne.mlir:377:7
	bneq r20, zero, .LBB0_7
# %bb.278:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	loadli.w r1,  -400(r30)                 # 4-byte Folded Reload
	load.d r[13:14], -328(r30)              # 8-byte Folded Reload
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	loadli.w r9,  -396(r30)                 # 4-byte Folded Reload
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	load.d r[24:25], 16(r30)
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	zext_int2long r[1:2], r1
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	sext_int2long r[11:12], r9
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	addli r9, zero, 19
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	min.ul r[3:4], r[1:2], r[13:14]
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	min.sl r[13:14], r[11:12], r[13:14]
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	addli.d r[3:4], r[3:4], 128
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	max.ul r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	addli.d r[3:4], r[13:14], 128
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	load.d r[13:14], -392(r30)              # 8-byte Folded Reload
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	max.sl r[3:4], r[3:4], r[11:12]
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.ul r[1:2], r[1:2], r[16:17]
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	sll.d r[13:14], r[13:14], r9
	addli r9, zero, 12
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	sub.sl r[3:4], r[3:4], r[11:12]
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	load.d r[11:12], -384(r30)              # 8-byte Folded Reload
	add.ul r[13:14], r[24:25], r[13:14]
	xwait r9, 0
	ori r9, r10, 64
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	min.sl r[3:4], r[3:4], r[16:17]
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	add.ul r[11:12], r[13:14], r[11:12]
	addli r14, zero, 5
	addli r13, zero, 1
	lock zero, r14
	dma_cfg r13, r13, zero, 0
	dma_cfg zero, r13, zero, 1
	dma_cfg r12, zero, zero, 2
	dma_cfg r11, r9, r23, 3
	addli r9, r1, 31
	slli r1, r1, 1
	addli r2, zero, 512
	srli r9, r9, 5
	andi r1, r1, 62
	dma_cfg r23, r15, r9, 4
	addli r9, zero, 4096
	dma_cfg r9, r2, r3, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r14
	j .LBB0_6
.LBB0_279:                              # %._crit_edge
	.loc	1 379 5                         # parallel-rne.mlir:379:5
	xsignal zero, 0
	bneq r20, zero, .LBB0_281
# %bb.280:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 379 5                         # parallel-rne.mlir:379:5
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
.LBB0_281:
	.loc	1 380 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:380:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-n965hwlf" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
